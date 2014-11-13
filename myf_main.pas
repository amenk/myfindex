{$MODE OBJFPC}{$H+}
unit myf_main;

interface

uses SysUtils, Classes,
  ComCtrls, CommCtrl, Windows, { für Listview }
  UsefulPrcs, SysIconCache, Registry;

{ Elementart in files.db (Ordner, Datei) }
const
  ek_File = 1;
  ek_Folder = 2;
  ek_disk = 8;

type
  TEks = ek_File .. ek_Folder;

  TProgressProc = procedure;

{ MyFiles ID, Eindeutiger Index in files.db }
  TMyID = record
            DiskID:Smallint;
            FolderID,
            FileID: Integer;
          end;

{ MyFiles Element / in files.db }
  TMyItem = record
           Typ : byte;
           Name: string;
           Changed: TDateTime;
           Attr: Smallint;
           Size : Int64;
           Note, TextPreview : string;
           ID : TMyID;
         end;
  PMyItem = ^TMyItem;

{ Exception classes }
  EMyIDError = class(Exception);
  EMyColumnsError = class(Exception);

type
  TMyColumns = class(TObject)
  private
    FColumns : TStringList;
    FOrder : array of Integer;
    FSizeFactor : ShortInt;
    FStrFormat : integer;
    function GetColumnAsText(Item: TMyItem; Index: Integer): string;
    function GetString:string;
    procedure SetString(Value: string);
    function GetDID(Index: Integer):string; { DataID lesen }
    procedure SetDID(Index: Integer; Value:string);
    function GetWidth(Index: Integer):integer;
    procedure SetWidth(Index: Integer; Value:integer);
    function GetCount:Integer;
  public
    property SizeFactor : ShortInt read FSizeFactor write FSizeFactor;
    property AsString: string read GetString write SetString;
    property DID[Index: Integer]: string read GetDID Write SetDID;
    property Width[Index: Integer]: Integer read GetWidth Write SetWidth;
    property Columns[Item: TMyItem; Index: Integer] : string read GetColumnAsText; default;
    property Count:integer read GetCount;
    property StringFormat : integer read FStrFormat Write FStrFormat;
    constructor Create;
    destructor Destroy; override;
    procedure ReorderAndSizeListview(lv: TListView); { Ordnet die Spalten eines Listview entsprechend der Col-Reihenfolge an }
    procedure GetOrderAndWidthFromListview(lv: TListView);
    procedure ReorderStringList(sl: TStringList); { Sortiert Elemente einer Stringlist entsprechend um }
    procedure Add(DID:string);
    procedure Delete(Index : Integer);
    function IndexOf(DID:string): Integer;
  end;

{ Functions }

function MyID(fDiskID,fFolderID,fFileID: Integer): TMyID;
function MyIDToStr(ID: TMyID):string;
function MyCompareItems(DID:string;i1,i2 : TMyItem):integer;
function MyCompareItemsEx(DID:string;i1,i2 : TMyItem;ansi:boolean):integer;
procedure RegMe(s:string);
procedure checkreg;
function MyItemToStr(Item:TMyItem; DID:string; SF:ShortInt):string;
function ExtractProp(tx,prop:string):string;
function GetLineProp(tx:string):string;

var
  ICache : TIconCache;
  isreg  : Boolean;
  regname: string;

implementation

uses DataModule,  {Datenbankschnittstelle}
     myf_consts;

{ kleine Helper Function um einen TMyID record zu erzeugen }
function MyID(fDiskID,fFolderID,fFileID: Integer):TMyID;
begin
  with Result do
  begin
    DiskID := fDiskID;
    FolderID := fFolderID;
    FileID := fFileID;
  end;
end;

{ MyID -> String z.B. zum vergleichen }
function MyIDToStr(ID: TMyID):string;
begin
  with ID do
    Result := Format('%.2x%.4x%.4x',[DiskID,FolderID,FileID]);
end;

function GetTypName(fn:string):string;
begin
  with ICache do
  begin
    FileName := fn;
    Result := Typ;
  end;
end;

function ExtractProp(tx,prop:string):string;
var
  idx,idx2 : integer;
begin
  idx := Pos(prop+': ',tx);
  if idx = 0 then
  begin
    Result := '';
    Exit;
  end;
  System.Delete(tx,1,idx+Length(prop)+1);
  idx2 := Pos(#13#10,tx);
  if idx2 = 0 then idx2 := maxInt;
  Result := Copy(tx,1,idx2-1);
end;

function GetLineProp(tx:string):string;
begin
  Result := copy(tx, 1, pos(':',tx)-1);
end;

function MyItemToStr(Item:TMyItem; DID:string; SF:ShortInt):string;
var
  prop : string;
begin
  Result := '';
  if (DID = cl_filename) or ((DID = cl_label) and (item.typ = ek_disk)) then
    Result := Item.Name
  else if DID = cl_size then
    Result := SizeToStr(Item.Size, SF, true)
  else if DID = cl_typ then
  begin
    if Item.Typ = ek_disk then
      Result := 'Datenträger' else
      if Item.Typ = ek_folder then
        Result := GetTypName(icDir) else
          Result := GetTypName(Item.Name)
  end
  else if (DID = cl_changed) or (DID = cl_read) then
  begin
    if Item.Changed = 0 then Result := '' else
      Result := FormatDateTime(ShortDateFormat+ ' ' + ShortTimeFormat,Item.Changed) //DateTimeToStr(Item.Changed)
  end
  else if DID = cl_note then
    Result := Item.Note
  else if DID = cl_attr then
    Result := AttrToString(Item.Attr)
  else if (DID = cl_disk) and (item.typ <> ek_disk) then
    Result := MyGetDisk(Item.ID)
  else if (DID = cl_pfad) and (item.typ <> ek_disk) then
    Result := MyGetPath(Item.ID)
  else if (DID = cl_dskpfad) and (item.typ <> ek_disk) then
    Result := Format('<%s>%s',[MyGetDisk(Item.ID), MyGetPath(Item.ID)])
  else if DID = cl_prev then
    Result := Item.TextPreview
  else if DID = cl_text then  // Notiz oder Text
  begin
    if Item.Note = '' then Result := Item.TextPreview else Result := Item.Note;
  end else
  begin
    if Pos(cl_pnote,DID) = 1 then  { Notiz - Eigenschaft }
      Result := ExtractProp(Item.Note,Copy(DID,Length(cl_pnote)+1,maxInt))
    else
    if Pos(cl_pprev,DID) = 1 then { Vorschau - Eigenschaft }
      Result := ExtractProp(Item.TextPreview,Copy(DID,Length(cl_pprev)+1,maxInt)) else
    if Pos(cl_ptext,DID) = 1 then { Text - Eigenschaft }
    begin
      prop := Copy(DID,Length(cl_ptext)+1,maxInt);
      if Pos(prop+': ',Item.Note) = 0 then
        Result := ExtractProp(Item.TextPreview,prop)
      else
        Result := ExtractProp(Item.Note,prop);
    end;
  end;
end;

{ Vergleich }


function MyCompareText(s1,s2:string;ansi:boolean):integer;
begin
  if ansi then Result := AnsiCompareText(s1,s2) else
  begin
    if s1 = s2 then Result := 0 else
      if s1 < s2 then Result := -1 else Result := 1;
  end;
end;

function MyCompareItemsEx(DID:string;i1,i2 : TMyItem;ansi:boolean):integer;
begin
  if i1.typ = 4 then i1.typ := ek_folder;
  if i2.typ = 4 then i2.typ := ek_folder;
  if DID = cl_size then
  begin
    if I1.Size = I2.Size then Result := 0 else
      if I1.Size < I2.Size then Result := -1 else Result := 1;
  end
  else if DID = cl_typ then
  begin
    if I1.Typ = I2.Typ then
    begin
     if I1.Typ <> ek_file then Result := 0 else
     begin
       if lowercase(ExtractFileExt(I1.Name)) = lowercase(ExtractFileExt(I2.Name))then
         Result := 0 else
       begin
         Result := MyCompareText(GetTypName(I1.Name),GetTypName(I2.Name),ansi);
       end;
     end;
    end else
      if I1.Typ < I2.Typ then Result := 1 else Result := -1;
  end
  else if (DID = cl_changed) or (DID = cl_read) then
  begin
    if I1.Changed = I2.Changed then Result := 0 else
      if I1.Changed < I2.Changed then Result := -1 else Result := 1;
  end
  else
    Result := MyCompareText(MyItemToStr(I1,DID,0),MyItemToStr(I2,DID,0),ansi);
end;

function MyCompareItems(DID:string;i1,i2 : TMyItem):integer;
begin
  Result := MyCompareItemsEx(DID,i1,i2,True);
end;


{ TMyColumns }
{ Objekt zur Verwaltung Spalten (Listview, StringList für Export) }

constructor TMyColumns.Create;
begin
  FColumns := TStringList.Create;
end;

destructor TMyColumns.Destroy;
begin
  FColumns.Free;
end;

function TMyColumns.GetDID(Index: Integer):string; { DataID lesen }
begin
  Result := FColumns[Index];
end;

procedure TMyColumns.SetDID(Index: Integer;Value:string);
begin
  FColumns[Index] := Value;
end;

procedure TMyColumns.Delete(Index : Integer);
var
  i,idx : integer;
begin
  FColumns.Delete(Index);
  idx := -1;
  for i := 0 to Length(FOrder)-1 do
    if FOrder[i] = Index then idx := i else
      if FOrder[i] > Index then Dec(FOrder[i],1);
  Assert(idx > -1, 'TMyColumns.Delete');
  for i := idx to Length(FOrder)-2 do
    FOrder[i] := FOrder[i+1];
  SetLength(FOrder,Length(FOrder)-1);
end;

function TMyColumns.GetWidth(Index: Integer):integer;
begin
  Result := Integer(FColumns.Objects[Index]);
end;

procedure TMyColumns.SetWidth(Index: Integer; Value: Integer);
begin
  FColumns.Objects[Index] := TObject(Value);
end;

function TMyColumns.GetColumnAsText(Item: TMyItem; Index: Integer): string;
begin
  Result := MyFormatStr( MyItemToStr(Item, GetDID(Index), FSizeFactor), FStrFormat);
end;

{ Ein/Ausgabe der Komponentendaten als String }
{ "OrderStringlist","WidthStringList",WidthFactor,Items }
function TMyColumns.GetString:string;
var
  i : integer;
  order, widths : string;
begin
  with TStringList.Create do
  try
    for i := 0 to High(FOrder) do
      Add(IntToStr(FOrder[i]));
    order := CommaText;
  finally
    Free;
  end;

  with TStringList.Create do
  try
    for i := 0 to FColumns.Count - 1 do
      Add(IntToStr(GetWidth(i)));
    Widths := CommaText;
  finally
    Free;
  end;

  FColumns.Insert(0,Order);
  FColumns.Insert(1,Widths);
  FColumns.Insert(2,IntToStr(FSizeFactor));
  Result := FColumns.CommaText;

  FColumns.Delete(0);
  FColumns.Delete(0);
  FColumns.Delete(0);
end;

procedure TMyColumns.SetString(Value:string);
var
  sorder, swidth : string;
  i : integer;

begin
  FColumns.CommaText := Value;
  if FColumns.Count < 3 then
    raise EMyColumnsError.Create('Ungültiges MyColumns Stringformat (Header)');
  sorder := FColumns[0];
  swidth := FColumns[1];
  FSizeFactor := StrToInt(FColumns[2]);
  FColumns.Delete(0);
  FColumns.Delete(0);
  FColumns.Delete(0);

  with TStringList.Create do { FOrder füllen }
  try
    CommaText := sorder;
    SetLength(FOrder, Count);
    for i := 0 to Count - 1 do
      FOrder[i] := StrToInt(Strings[i]);
  finally
    Free;
  end;

  with TStringList.Create do { FOrder füllen }
  try
    CommaText := swidth;
    if Count <> FColumns.Count then
      EMyColumnsError.Create('Ungültige MyColumns Stringformat (Breiten)');
    for i := 0 to FColumns.Count - 1 do
      SetWidth(i, StrToInt(Strings[i]));
  finally
    Free;
  end;

end;

procedure TMyColumns.ReorderAndSizeListview(lv: TListView);
var
  i : integer;
begin
//  LockWindowUpdate(lv.handle);
  lv.columns.beginupdate;
  try
    lv.Columns.Clear;
    for i := 0 to FColumns.Count - 1 do
      with lv.Columns.Add do
      begin
        Tag := i;
        Caption := GetDID(i);
        Width := GetWidth(i);
        if FColumns[i] = cl_Size then
          Alignment := taRightJustify;
      end;
    ListView_SetColumnOrderArray(lv.Handle,Length(FOrder),PInteger(FOrder));
  finally
    lv.columns.endupdate;
//    LockWindowUpdate(0);
  end;
end;

procedure TMyColumns.GetOrderAndWidthFromListview(lv: TListView);
var
  i : integer;
  NormOrder : array of integer;
begin
  if lv.Columns.Count <> FColumns.Count then
    raise EMyColumnsError.Create('ListView hat ungültige Anzahl an Spalten');
  SetLength(FOrder, FColumns.Count);
  ListView_GetColumnOrderArray(lv.Handle, FColumns.Count, PInteger(FOrder));

  SetLength(NormOrder, FColumns.Count);
  for i := 0 to High(NormOrder) do NormOrder[i] := i;
  ListView_SetColumnOrderArray(lv.Handle,Length(NormOrder),PInteger(NormOrder));

  for i := 0 to FColumns.Count-1 do
    SetWidth(i, lv.Columns[i].Width);
  ListView_SetColumnOrderArray(lv.Handle,Length(FOrder),PInteger(FOrder));
end;

procedure TMyColumns.ReorderStringList(sl: TStringList); { Sortiert Elemente einer Stringlist entsprechend um }
var
  temporder : array of Integer;
  i         : Integer;
begin
  SetLength(TempOrder, Length(FOrder));
  for i := 0 to Length(FOrder)-1 do
    TempOrder[i] := FOrder[i];
  for i := 0 to Length(temporder)-2 do
    if temporder[i] <> i then  // Austausch nötig
    begin
      sl.Exchange(i,i+1);
      temporder[i+1] := temporder[i];
      // temporder[i] juckt nun eh keinen mehr
    end;
  SetLength(TempOrder, 0);
end;

procedure TMyColumns.Add(DID:string);
begin
  FColumns.AddObject(DID, TObject(100));
end;

function TMyColumns.IndexOf(DID:string):integer;
begin
  Result := FColumns.IndexOf(DID);
end;

function TMyColumns.GetCount:Integer;
begin
  Result := FColumns.Count;
end;

{ Registrierung }

const
  Alpha:String = 'Aa1Bb2Cc3Dd4Ee5Ff6Gg7Hh8Ii9Jj0KkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';

function c(i:integer):String;
Begin
//    Result := Alpha[Trunc(i/62) mod 62 + 1] + Alpha[(i-1) mod 62 + 1];
  Result := Alpha[i mod Length(Alpha) + 1] +
    Alpha[Random(Length(Alpha))+1]
    + Alpha[(i div Length(Alpha)) mod Length(Alpha) + 1]
end;

function checkall(s:string):Boolean;
var
  csum : string;
  c5 : integer;
  l,p : integer;
  i : integer;
// 222111ccc444333

begin
  l := (Length(s) div 5);
  p := l * 2 + 1;
  csum := Copy(s,p,l);
  c5 := 0;

  if 2 * l > Length(s) then
  begin
    Result := False;
    Exit;
  end;

  for i := 1 to 2 * l do
    inc(c5,pos(s[i],Alpha));
  for i := p+l to Length(s) do
    inc(c5,pos(s[i],Alpha));
  Result := Copy(csum,1,1) + Copy(csum,3,1) = c(c5)[1] +c(c5)[3];
end;

function check(s,k:string):Boolean;
var
  l, i, {c1,}c2,{c3,}c4 : integer;
begin
  Result := True;
  l := (Length(k) div 5);

  // c1 prüfen
{  c1 := 0;
  For i := 1 to length(s) do
    case s[i] of
      'a','e','i','o','u', 'A': inc(c1,pos(s[i],Alpha));
    end;
  s2 := c(c1);
  if Copy(k,(l * 1) + 1,1) <> Copy(s2,1,1) then raise EAbort.Create('Harddisk full');
  if Copy(k,(l * 1) + 3,1) <> Copy(s2,3,1) then raise EAbort.Create('BDE error');
}

  c2 := 0;
  For i := 1 to length(s) do
    case s[i] of
      'M','B','e','n','i','k': inc(c2,pos(s[i],Alpha));
    end;
  if Copy(k,(l * 0) + 1,1) <> Copy(c(c2),1,1) then raise EAbort.Create('wrong DiskID');
  if Copy(k,(l * 0) + 3,1) <> Copy(c(c2),3,1) then raise EAbort.Create('');

{
  c3 := 0;
  For i := 1 to 5 do
    inc(c3,pos(s[i],Alpha));

  if Copy(k,(l * 4) + 1,1) <> Copy(c(c3),1,1) then raise EAbort.Create('Filestream error');
  if Copy(k,(l * 4) + 3,1) <> Copy(c(c3),3,1) then raise EAbort.Create('division by zero');
}
  c4 := 0;
  For i := 1 to length(s) do
    If (i mod 2 = 0) then inc(c4,pos(s[i],Alpha));

  if Copy(k,(l * 3) + 1,1) <> Copy(c(c4),1,1) then raise EAbort.Create('unkown error');
{  if Copy(k,(l * 3) + 3,1) <> Copy(c(c4),3,1) then raise EAbort.Create('bogus error'); }
end;

procedure checkreg;
var
  s, key : string;
begin
  isreg := True;
  regname := tx_unreg;
  try
    with TRegistry.Create do
    try
      access := KEY_READ;
      if not OpenKey('Software\self-soft\MyFiles', false) then raise Exception.Create('no key');
      s := ReadString('RegName');
      key := ReadString('Key');
      if not checkall(key) then raise Exception.Create('error');
      check(s,key);
    finally
      Free;
    end;
  except
    isreg := False;
  end;
  if isreg then regname := s;
end;

procedure RegMe(s:string);
var
  Name, Key : string;
begin
  if messagebox(0,'Registriercode übernehmen?', 'Registrierung', mb_yesno or mb_iconquestion) =
    idYes then
  begin
    Delete(s,1,1);
    Name := URLDecode(StringReplace(Copy(s,1,Pos('$',s)-1),'/','%',[rfReplaceAll, rfIgnoreCase]));
    Delete(s,1,Pos('$',s));
    key := Copy(s,1,Pos('$',s)-1);
    if not checkall(key) then
    begin
      messagebox(0,'Der Eingegebene Registriercode ist ungültig.'#13#10+
                   'Bitte stelle sicher, dass bei manueller Eingabe keine'#13#10+
                   'Tippfehler gemacht wurden.', 'Fehler', mb_ok or mb_iconerror);
      Exit;
    end;
    with TRegistry.Create do
    try
      Access := KEY_ALL_ACCESS;
      OpenKey('Software\self-soft\MyFiles', True);
      writestring('RegName', Name);
      writeString('Key', Key);
    finally
      Free;
    end;
    messagebox(0,pchar('Der Registriercode für '''+Name+''' wurde übernommen.'#13#10+
       'Um MyFindex registriert zu nutzen, musst du MyFindex neu starten.'), 'Registrierung', mb_ok or mb_iconinformation);
  end;

end;


initialization
  ICache := TIconCache.Create;

finalization
  ICache.Free;

end.
