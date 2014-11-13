unit myf_lists;

interface

uses Classes, SysUtils, DataModule, myf_main, Graphics, IniFiles, usefulprcs, myf_consts;


{ EXPORT TEMPLATES }
{ never localized }

const
  vSCT1 = '{GROUPS} {User} {Collection.Name} {Collection.ShortName} {List.Name} {Timestamp} {Sum.Files} {Sum.Size}';
  vSCT2 = '{FILES} {Sum.Files} {Sum.Size} {GroupedCols} {ColHeader} {Num.Group}';
  vSCT3 = '{COLUMNS} {Path} {Name} {Num.File} {All.Num.File} {Num.Group}';
  vSCT4 = '{Width} {Text}';


const
  nSCT = 'Sections';
  nSCT1 = 'All';
  nSCT2 = 'All.Group';
  nSCT3Head = 'All.Group.Header';
  nSCT3 = 'All.Group.File';
  nSCT4 = 'All.Group.File.Column';


type EMyListError = class(Exception);

{ Procedure-Types }
     TMyListSortCompare = function (Item1, Item2: Pointer; IdxSpcs:TStringList; ansi:boolean): Integer;

type
  TMyList = class(TObject)
  private
    FList    : TStringList;
    FListName: string;
    FCaption : string;
    FChanged : Boolean;
    FColor   : TColor;
    function Get(Index: Integer): TMyItem;
    function GetItemP(Index: Integer):PMyItem;
    function GetID(Index: Integer): TMyID;
    function GetCount: integer;
    procedure SetColor(Col:TColor);
    procedure SetCaption(const Capt:string);
  public
    constructor Create;
    destructor Destroy; override;
    function Add(const ID: TMyID; const Item: TMyItem): Boolean;
    function AddID(const ID: TMyID): Boolean;
    function IsCached(const Index: Integer): Boolean;
    procedure Invalidate(const Index: Integer);
    procedure Delete(const Index: Integer);
    procedure Clear;
    function IndexOf(const ID: TMyID): integer;
    procedure SaveToFile(const DirName: string);
    procedure LoadFromFile(const FileName: string);
    property Items[Index: Integer]: TMyItem read Get; default;
    property IDs[Index: Integer]: TMyID read GetID;
    property Count:integer read GetCount;
    property ListName: string read FListName write FListName;
    property Caption: string read FCaption write SetCaption;
    property Color: TColor read FColor write SetColor;
    property ItemP[Index: Integer]: PMyItem read GetItemP;  // Pointer auf das Element, nur für Index etc.
    procedure AddItems(List: TMyList);
    procedure AddDoubleItems(FirstList: TMyList; IndexSpec:string; StepWait: TNotifyEvent);
    procedure AddCombinedItems(FirstList, SecondList: TMyList; IndexSpec:string; ANDMode:Boolean; StepWait: TNotifyEvent);
  end;

type
  TMyListIdx = class(TObject)
  private
    FIdx     : TList;
    FIdxSpcs : TStringList;
    FAnsi    : Boolean;
    FOnProgress : TNotifyEvent;
    function GetItem(Index: Integer):TMyItem;
    function GetCount: Integer;
    procedure CalcIndex(IdxSpecs: string);
    function GetSpecs:string;
    procedure QuickSort(L, R: Integer; SCompare: TMyListSortCompare);
  public
    constructor Create(TheList: TMyList; IdxSpecs:string; Ansi: Boolean; ProgressProc:TNotifyEvent);
    destructor Destroy; override;
    function IndexOfItem(Item:TMyItem):integer;
    property Items[Index: Integer]: TMyItem read GetItem; default;
    property IndexSpecs: string read GetSpecs Write CalcIndex;
    property Count:integer read GetCount;
    property OnProgress: TNotifyEvent read FOnProgress write FOnProgress;
  end;

{ ExportIni }
const
  ini_prop = 'Properties';
//  spcodes = 'NSECBADPO';

type
  TColOrder = array[0..8] of ShortInt;
  TColWidth = array[-1..7] of Integer;

type
  TMyListExport = class(TObject)
  private
    FSortedList : TMyListIdx;
    FSettings   : TMemIniFile;
    FLines      : TStringList;
    FOnProgress : TNotifyEvent;
    FSizeFmt    : ShortInt;
    FColumns    : TMyColumns;
    FGColumns   : TMyColumns;
    Fgrouping   : Boolean;
    infoListName : string;
    FNumFile, FAllNumFile, FNumGroup : integer;
    FSumSize, FAllSumSize : int64;
    function GenAll: string; { Section 1 }
    function GenGroups: string;
    function GenFile(item: TMyItem;Cols:TMyColumns;tpl:string): string;
    function GenCols(coltexts:TStringList;Cols:TMyColumns):string;
    function GenHeader(Cols:TMyColumns):string;
    function isNewGroup(gitem,item : TMyItem):Boolean;
    function GetColFormat:string;
    procedure SetColFormat(Value:string);
  public
    infoUser, infoColName, infoShortColName : string;
    property ColumnsFormat : string read GetColFormat Write SetColFormat;
    property SizeFmt : shortint read FSizeFmt write FSizeFmt;
    constructor Create(TheList: TMyList; Settings : TMemIniFile; ProgressProc:TNotifyEvent);
    destructor Destroy; override;
    procedure Execute;
    property Lines:TStringList read FLines;
    property OnProgress: TNotifyEvent read FOnProgress write FOnProgress;
end;

implementation
//uses Unit1;

(*
function OptIdxSpecs(IdxSpecs:string):string;
var
  p : integer;
begin
  p := Pos('NE',IdxSpecs);
  if p <> 0 then
  begin
    Delete(IdxSpecs,p+1,1);
    IdxSpecs[p] := 'F';
  end;
  p := Pos('ne',IdxSpecs);
  if p <> 0 then
  begin
    Delete(IdxSpecs,p+1,1);
    IdxSpecs[p] := 'f';
  end;
  Result := IdxSpecs;
end;
*)

// IdxSpecs:
// 'N' nach Name  'E' nach .ext  'C' nach Changed  'S' nach Größe
// kleine Schreibweise -> absteigend (zum kleinen hin)

function CompareFunc(Item1, Item2: Pointer; IdxSpcs:TStringList; Ansi:boolean): Integer;
var
  I1, I2 : TMyItem;
  i : integer;
begin
  I1 := PMyItem(Item1)^; I2 := PMyItem(Item2)^;
  Result := 0;
  with IdxSpcs do
    for i := 0 to IdxSpcs.Count - 1 do
    begin
      if Copy(IdxSpcs[i],1,1) = '-' then
        Result := -MyCompareItemsEx(Copy(IdxSpcs[i],2,maxInt), I1, I2, ansi)
      else
        Result := MyCompareItemsEx(IdxSpcs[i], I1, I2, ansi);
      if Result <> 0 then break;
    end;
end;

procedure TMyListIdx.QuickSort(L, R: Integer; SCompare: TMyListSortCompare);
var
  I, J: Integer;
  P, T: Pointer;
begin
  repeat
    I := L;
    J := R;
    P := FIdx[(L + R) shr 1];
    repeat
      while SCompare(FIdx[I], P, FIdxSpcs, FAnsi) < 0 do
        Inc(I);
      while SCompare(FIdx[J], P, FIdxSpcs, FAnsi) > 0 do
        Dec(J);
      if I <= J then
      begin
        T := FIdx[I];
        FIdx[I] := FIdx[J];
        FIdx[J] := T;
        Inc(I);
        Dec(J);
      end;
    until I > J;
    if L < J then
      QuickSort(L, J, SCompare);
    L := I;
  until I >= R;
end;

constructor TMyListIdx.Create(TheList: TMyList; IdxSpecs:string; Ansi: Boolean; ProgressProc:TNotifyEvent);
var
  i : integer;
begin
  FIdx := TList.Create;
  FIdxSpcs := TStringList.Create;
  FAnsi := Ansi;
  for i := 0 to TheList.Count - 1 do
  begin
    FIdx.Add(TheList.ItemP[i]);
    FOnProgress := ProgressProc;
    if Assigned(FOnProgress) then FOnProgress(Self);
  end;
  CalcIndex(IdxSpecs);
end;

destructor TMyListIdx.Destroy;
begin
  FIdxSpcs.Free;
  FIdx.Free;
end;

procedure TMyListIdx.CalcIndex(IdxSpecs:string);
begin
  FIdxSpcs.CommaText := IdxSpecs;
  QuickSort(0, Count - 1, CompareFunc);
end;

function TMyListIdx.GetSpecs;
begin
  Result := FIdxSpcs.CommaText;
end;

function TMyListIDx.GetCount: Integer;
begin
  Result := FIdx.Count;
end;

function TMyListIdx.GetItem(Index: Integer):TMyItem;
begin
   Result := PMyItem(FIdx[Index])^;
end;

constructor TMyList.Create;
begin
  FChanged := True;
  FList := TStringList.Create;
  with FList do
  begin
    Duplicates := dupError;
    Sorted := True;
  end;
end;

destructor TMyList.Destroy;
begin
  Clear;
  FList.Free;
end;

function TMyList.GetItemP(Index: Integer):PMyItem;
begin
  Result := PMyItem(FList.Objects[Index]);
  if not Assigned(Result) then
  begin
    new(Result);
    Result^ := MyGetItem(GetID(Index));
    FList.Objects[Index] := TObject(Result);
  end;
end;

function TMyList.Get(Index: integer):TMyItem;
var
  PItem : PMyItem;
begin
  PItem := GetItemP(Index);
  Result := PItem^;
end;

function TMyList.IsCached(const Index: integer):Boolean;
begin
  Result := Assigned(FList.Objects[Index]);
end;

function TMyList.GetID(Index: integer):TMyID;
var
  s : string;
begin
  s := FList[Index];
  with Result do
  begin
    DiskID := StrToInt('$'+Copy(s,1,2));
    FolderID := StrToInt('$'+Copy(s,3,4));
    FileID := StrToInt('$'+Copy(s,7,4));
  end;
end;

function TMyList.GetCount: integer;
begin
  Result := FList.Count;
end;

function TMyList.Add(const ID: TMyID; const Item:TMyItem): Boolean;
var
  ItemP : PMyItem;
begin
  Result := True;
  try
    new(ItemP);
    ItemP^ := Item;
    FList.AddObject(MyIDToStr(ID), TObject(ItemP));
  except { Duplikat? }
    on EStringListError do Result := False;
  end;
  if Result then FChanged := True;
end;

function TMyList.AddID(const ID: TMyID): Boolean;
begin
  Result := True;
  try
    FList.Add(MyIDToStr(ID));
  except { Duplikat? }
    on EStringListError do Result := False;
  end;
  if Result then FChanged := True;
end;

procedure TMyList.Invalidate(const Index: integer);
begin
  with FList do
    if Assigned(Objects[Index]) then
    begin
      Dispose(PMyItem(Objects[Index]));
      Objects[Index] := nil;
    end;
end;

procedure TMyList.Delete(const Index: integer);
begin
  Invalidate(Index);
  FList.Delete(Index);
  FChanged := True;
end;

procedure TMyList.Clear;
var
  i: Integer;
begin
  for i := 0 to FList.Count-1 do
    Delete(FList.Count-1);
end;

function TMyList.IndexOf(const ID: TMyID):integer;
begin
  Result := FList.IndexOf(MyIDToStr(ID));
end;

procedure TMyList.SaveToFile(const DirName: string);
begin
  if FChanged then
  with FList do
  begin
    Sorted := False;
    Insert(0,FCaption);    { Zusatzfelder hinzufüg. }
    Insert(1,IntToStr(Color));
    SaveToFile(DirName + ListName + '.myl');
    { Restaurieren }
    Sorted := True;
    Delete(0); Delete(0);
  end;
  FChanged := False;
end;

procedure TMyList.LoadFromFile(const FileName: string);
begin
  Clear;
  with FList do
  begin
    Sorted := False;
    LoadFromFile(FileName);
    if Count < 2 then raise EMyListError.Create('Listenheader fehlt');
    try
      FCaption := Strings[0];
      FColor := StrToInt(Strings[1]);
    except
      raise EMyListError.Create('Listenheader ungültig');
    end;
    { Rekonstruieren }
    Delete(0); Delete(0);
    Sorted := True;
  end;
  FListName := ChangeFileExt(ExtractFileName(FileName),'');
  FChanged := False;
end;

procedure TMyList.SetColor(Col:TColor);
begin
  FColor := Col;
  FChanged := True;
end;

procedure TMyList.SetCaption(const Capt:string);
begin
  FCaption := Capt;
  FChanged := True;
end;

procedure TMyList.AddItems(List: TMyList);
var
  i: integer;
begin
  with List do
    for i := 0 to Count-1 do
      if IsCached(i) then
        Self.Add(IDs[i],Items[i])
      else
        Self.AddId(IDs[i]);
end;

// Vergleicht die durch Specs angegeben Felder der My-Items I1 und I2
// Rückgabe: True - I1 = I2, False - I1 <> I2

function ItemsEqual(I1,I2:TMyItem;Specs:string):Boolean;
var
  i : integer;
begin
  Result := True;
  for i := 1 to Length(Specs) do
  begin
    case Specs[i] of
      'F','f' : Result := AnsiCompareText(I1.Name,I2.Name) = 0; // File
      'N','n' : Result := AnsiCompareText(ChangeFileExt(I1.Name,''),ChangeFileExt(I2.Name,'')) = 0;
      'E','e' : Result := AnsiCompareText(ExtractFileExt(I1.Name),ExtractFileExt(I2.Name)) = 0;
      'C','c' : Result := I1.Changed = I2.Changed;
      'S','s' : Result := I1.Size = I2.Size;
    end;
    if Result = False then break;
  end;
end;

procedure TMyList.AddDoubleItems(FirstList: TMyList; IndexSpec:string; StepWait: TNotifyEvent);
var
  i : integer;
begin
  with TMyListIdx.Create(FirstList, IndexSpec, True, StepWait) do
  try
    for i := 1 to Count-1 do
    begin
      if ItemsEqual(Items[i],Items[i-1], IndexSpec) then
      begin
        Self.Add(Items[i].ID, Items[i]);
        Self.Add(Items[i-1].ID, Items[i-1]);
      end;
      if Assigned(StepWait) then StepWait(Self);
    end;
  finally
    Free;
  end;
end;

function TMyListIdx.IndexOfItem(Item:TMyItem):integer;
var
  min,max,cur,c : integer;
  Item2 : PMyItem;
begin
  Result := -1;
  min := 0;
  max := FIdx.Count+1;
  if max = 1 then Exit;
  while max-min <> 1 do
  begin
    cur := (max+min) div 2;
    Item2 := FIdx[cur-1];
    c := CompareFunc(@Item, Item2, FIdxSpcs, FAnsi);
    if c > 0 then min := cur else
      if c < 0 then max := cur else
        begin
        Result := cur-1;
        Exit;
        end;
  end;
end;

procedure TMyList.AddCombinedItems(FirstList, SecondList: TMyList; IndexSpec:string; ANDMode:Boolean; StepWait: TNotifyEvent);
var
  i : integer;
begin
  if IndexSpec = '=' then
  begin
    with FirstList do
      for i := 0 to Count - 1 do
        if (SecondList.IndexOf(IDs[i]) <> -1) = ANDMode then
          if IsCached(i) then Self.Add(Items[i].ID, Items[i])
            else Self.AddID(IDs[i]);
  end else
  begin
    with TMyListIdx.Create(SecondList, IndexSpec, True, StepWait) do
    try
      with FirstList do
        for i := 0 to Count-1 do
        begin             // TMyListIdx.IndexOfItem
          if (IndexOfItem(Items[i]) <> -1) = ANDMode then
            Self.Add(Items[i].ID, Items[i]);
          if Assigned(StepWait) then StepWait(Self);
        end;
    finally
      Free;
    end;
  end;
end;


constructor TMyListExport.Create(TheList: TMyList; Settings : TMemIniFile; ProgressProc:TNotifyEvent);
begin
  FSizeFmt := 0;
  FSettings := Settings;
  FSortedList := TMyListIdx.Create(TheList, Settings.ReadString('Columns', 'SortOrder', ''),
    Settings.ReadBool('Columns', 'SortANSI', true), ProgressProc);
  FOnProgress := ProgressProc;
  FLines := TStringList.Create;
  FColumns := TMyColumns.Create;
  FGColumns := TMyColumns.Create;
  infoListName := TheList.Caption;
end;

destructor TMyListExport.Destroy;
begin
  FGColumns.Free;
  FColumns.Free;
  FLines.Free;
  FSortedList.Free;
end;

{ Gibt True zurück, falls die Group-Kriterien in gitem nicht mehr mit item übereinstimmen }
function TMyListExport.isNewGroup(gitem,item : TMyItem):Boolean;
var
  i : integer;
begin
  Result := False;
  if not Fgrouping then Exit;
  for i := 0 to FGColumns.Count - 1 do
    if MyCompareItems(FGColumns.DID[i],gitem,item) <> 0 then
    begin
      Result := True;
      Exit;
    end;
end;

function TMyListExport.GenCols(coltexts:TStringList;Cols:TMyColumns):string;
var
  defaulttemplate,s,
  repl     : string;
  idx,i   : integer;
  sl,tpls : TStringList;
// vSCT4 = '{Column.Width} {Column.Text}';
begin
  Result := '';
  defaulttemplate := FSettings.ReadString(nSCT, nSCT4, ''); // Template Laden
  Cols.ReorderStringList(coltexts);
  tpls := TStringList.Create;
  sl := TStringList.Create;
  try
    for idx := 0 to coltexts.Count - 1 do
      tpls.Add(FSettings.ReadString(nSCT, nSCT4 + '.' + Cols.DID[idx], defaulttemplate));
    Cols.ReorderStringList(tpls);
    sl.CommaText := vSCT4;
    for idx := 0 to coltexts.Count - 1 do
    begin
      { Spaltenspez. templates }
      s := URLDecode(tpls[idx]);
      for i := 0 to sl.Count-1 do
        if Pos(uppercase(sl[i]),uppercase(s)) > 0 then
        begin
          case i of
            0 : repl := IntToStr(Cols.Width[idx]);
            1 : repl := coltexts[idx];
          end;
          s := StringReplace(s, sl[i], repl, [rfReplaceAll, rfIgnoreCase]);
        end;
      Result := Result + s;
    end;
  finally
    sl.Free;
    tpls.Free;
  end;
end;

function TMyListExport.GenHeader(Cols:TMyColumns):string;
var
  spalten : TStringList;
  i       : integer;
begin
  spalten := TStringList.Create;
  try
    for i := 0 to Cols.Count - 1 do  { Überschriften generieren }
      spalten.Add( MyFormatStr(Cols.DID[i], FColumns.StringFormat) );
    Result := GenCols(Spalten,Cols);
  finally
    Spalten.Free;
  end;
end;

function TMyListExport.GenFile(item:TMyItem;Cols:TMyColumns;tpl:string):string;
var
  spalten : TStringList;
  repl     : string;
  i,j      : integer;
  sl : TStringList;

begin
  Result := tpl;
  sl := TStringList.Create;
  try
    sl.CommaText := vSCT3;
    for i := 0 to sl.Count-1 do
      if Pos(uppercase(sl[i]),uppercase(Result)) > 0 then
      begin
        case i of
          0 :
          begin   { Spalten erzeugen }
            spalten := TStringList.Create;
            try
              for j := 0 to Cols.Count - 1 do
                spalten.Add(Cols[item,j]);
              repl := GenCols(Spalten,Cols);
            finally
              Spalten.Free;
            end;
          end;
          1 : repl := MyGetPath(item.id);
          2 : repl := item.Name;
          3 : repl := IntToStr(FNumFile);
          4 : repl := IntToStr(FAllNumFile);
          5 : repl := IntToStr(FNumGroup);          
        end;
        Result := StringReplace(Result, sl[i], repl, [rfReplaceAll, rfIgnoreCase]);
      end;
  finally
    sl.Free;
  end;
end;
// genspalten:
// breite lesen, anordnung verändern

function TMyListExport.GenGroups:string;
var
  sl   : TStringList;
  template, files,
  repl,s : string;
  f, i : integer;
  curitem,
  groupitem : TMyItem;
// {Group.FILES} {Group.Sum.Files} {Group.Sum.Size} {Group.GroupedCols} {Group.ColHeader}
begin
  Fgrouping := FSettings.ReadInteger(ini_prop,'Typ',0) = 1;
  template := URLDecode(FSettings.ReadString(nSCT, nSCT2, ''));
  Result := '';
  if FSortedList.Count > 0 then
    groupitem := FSortedList[0];
  files := '';
  sl := TStringList.Create;
  try
    sl.CommaText := vSCT2;
    for f := 0 to FSortedList.Count do
    begin
      if f < FSortedList.Count then
      begin
        curitem := FSortedList[f];
        if Assigned(FOnProgress) then FOnProgress(Self);
      end;

      if (f = FSortedList.Count) or (isNewGroup(groupitem, curitem)) then
      begin
        { Neue Gruppe }
        s := template;
        for i := 0 to sl.Count-1 do
          if Pos(uppercase(sl[i]),uppercase(template)) > 0 then
          begin
            case i of
              0 : repl := files;
              1 : repl := Format('%.0n',[FNumFile*1.0]);
              2 : repl := MyFormatStr( MyItemToStr(groupitem, cl_size, FColumns.SizeFactor), FColumns.StringFormat);
              3 : { Gruppierungseintrag } repl := GenFile(groupitem,FGColumns,URLDecode(FSettings.ReadString(nSCT, nSCT3Head, '')));
              4 : repl := GenHeader(FColumns);
              5 : repl := IntToStr(FNumGroup);
            end;
            s := StringReplace(s, sl[i], repl, [rfReplaceAll, rfIgnoreCase]);
          end;
        Result := Result + s;
        Inc(FNumGroup);
        FNumFile := 0;
        FSumSize := 0;
        groupitem := curitem;
        files := '';
      end;
      if f < FSortedList.Count then
      begin
        Inc(FAllNumFile);
        Inc(FNumFile);
        Inc(FSumSize,curitem.Size);
        groupitem.Size := FSumSize;
        Inc(FAllSumSize,curitem.Size);
        if Pos(uppercase(sl[0]),uppercase(template)) > 0 then
          files := files + GenFile(curitem, FColumns,URLDecode(FSettings.ReadString(nSCT, nSCT3, '')));
      end;
    end;
  finally
    sl.Free;
  end;
end;

function TMyListExport.GenAll:string;
var
  sl : TStringList;
  repl : string;
  i : integer;
  tempitem : TMyItem;

begin
  Result := URLDecode(FSettings.ReadString(nSCT, nSCT1, ''));
  FNumFile := 0;
  FNumGroup := 1;
  FSumSize := 0;
  FAllSumSize := 0;
  FColumns.StringFormat := FSettings.ReadInteger(ini_prop,'Charset',0)+1;
  sl := TStringList.Create;
  try
    sl.CommaText := vSCT1;
    for i := 0 to sl.Count-1 do
      if Pos(uppercase(sl[i]),uppercase(result)) > 0 then
      begin
        case i of
          0 : repl := GenGroups;
          1 : repl := infoUser;
          2 : repl := infoColName;
          3 : repl := infoShortColName;
          4 : repl := infoListName;
          5 : repl := DateTimeToStr(now);
          6 : repl := Format('%.0n',[FSortedList.Count*1.0]);
          7 :
          begin
            tempitem.Size := FAllSumSize;
            repl := MyFormatStr( MyItemToStr(tempitem, cl_size, FColumns.SizeFactor), FColumns.StringFormat);
          end;
        end;
        Result := StringReplace(result, sl[i], repl, [rfReplaceAll, rfIgnoreCase]);
      end;
  finally
    sl.Free;
  end;
end;

procedure TMyListExport.Execute;
begin
  FColumns.StringFormat := FSettings.ReadInteger(ini_prop,'Charset',0)+1;
  Lines.Text := GenAll;
end;

procedure TMyListExport.SetColFormat(Value:string);
var
  i : integer;
  Breite : integer;
begin
  Breite := 0;
  FColumns.AsString := Value;
  for i := FColumns.Count-1 downto 0 do
    if FSettings.ReadBool('Column.'+FColumns.DID[i],'Hide',False) then
      FColumns.Delete(i) else Inc(Breite,FColumns.Width[i]);
  with FColumns do
    for i := 0 to Count-1 do
      Width[i] := Width[i] * 100 div Breite;

  if FSettings.ReadInteger(ini_prop,'Typ',0) = 1 then
  begin
    Breite := 0;
    FGColumns.AsString := Value;
    for i := FGColumns.Count-1 downto 0 do
     if not FSettings.ReadBool('Column.'+FGColumns.DID[i],'Group',False) then
       FGColumns.Delete(i) else Inc(Breite,FGColumns.Width[i]);
    with FGColumns do
      for i := 0 to Count-1 do
        Width[i] := Width[i] * 100 div Breite;
  end;
end;

function TMyListExport.GetColFormat;
begin
  Result := FColumns.AsString;
end;

end.

