unit myf_search;

interface

uses myf_main, myf_lists, DataModule,
     SysUtils, Classes, UsefulPrcs, RegExpr, ComCtrls, CommCtrl, Windows;

type
  { Wird für jedes gef. Element aufgerufen;
    Rückgabe: True -> weitersuchen, False -> stop
  }
  TMyItemEvent = procedure(Sender: TObject; Item:TMyItem; var stop: boolean) of object;

  TMySearchString = class(TObject)
  private
    FMode : ShortInt;
    FLev : ShortInt;
    FORs, FANDs, FNOTs : TStringList;
    FString : string;
//    FValue : string;
    FRegEx : TRegExpr;
    function GetValue:string;
    procedure SetValue(Value:string);
    procedure SetString(s:string);
  public
    constructor Create(Value:string);
    destructor Destory;
    property Value : string read GetValue Write SetValue;
    property ANDs : TStringList read FANDs;
    property NOTs : TStringList read FNOTs;
    property ORs : TStringList read FORs;
    property SearchString : String read FString Write SetString;
    property Mode : ShortInt read FMode Write FMode;
    property Lev : ShortInt read FLev write FLev;
    function Match(s:string):Boolean;
  end;

  TMySearch = class(TObject)
  private
    FAbort,FListMode : Boolean;
    { Suchbegriffe: Namen }
    FNameString : TMySearchString;
    FNotes : TStringList;
    { Datum, Größe }
    FMinDate, FMaxDate : TDateTime;
    FMinSize, FMaxSize : Int64;

    FLimit : Integer;

    { Suchen in }
    FInList : TMyList;  // Verfahren: Listen kombinieren, in schleife Items checken
    FSearchIn : TStringList;
    { Notizen / Vorschau }
    FAttrSet, FAttrUSet : Integer;
    FOnProgress : TNotifyEvent;
    FOnItem : TMyItemEvent;
    FSCount : integer;
    function MatchName(Item: TMyItem):Boolean;
    function MatchMinDate(Item:TMyItem):Boolean;
    function MatchMaxDate(Item:TMyItem):Boolean;
    function MatchMinSize(Item:TMyItem):Boolean;
    function MatchMaxSize(Item:TMyItem):Boolean;
    function MatchAttr(Item:TMyItem):Boolean;
    function MatchLocation(Item:TMyItem):Boolean;
    function MatchNote(Item:TMyItem):Boolean;
    function GetText:string;
  public
    constructor Create(Value:string);
    destructor Destroy; override;
    function Execute(lvLists:TListView):Boolean;
    procedure Abort;
    property NameStr: TMySearchString read FNameString;
    property SearchIn: TStringList read FSearchIn;
    property Notes : TStringList read FNotes;
    property MinSize : Int64 read FMinSize write FMinSize;
    property MaxSize : Int64 read FMaxSize write FMaxSize;
    property MinDate : TDateTime read FMinDate write FMinDate;
    property MaxDate : TDateTime read FMaxDate write FMaxDate;
    property AttrSet : Integer read FAttrSet write FAttrSet;
    property AttrUSet : Integer read FAttrUset write FAttrUSet;
    property OnProgress: TNotifyEvent read FOnProgress write FOnProgress;
    property OnItem: TMyItemEvent read FOnItem write FOnItem;
    property AsText: string read GetText; // write SetText;
    property InList: TMyList read FInList;
    property ListMode: Boolean read FListMode Write FListMode;
    property Limit : Integer read FLimit Write FLimit;
    property SCount : integer read FSCount write FSCount;
  end;

implementation

function TolerantMatch(str,pattern:string;level:shortint):Boolean;
var
  tresh,i : integer;
begin
  case level of
    0 : begin
          Result := Pos(pattern,str) > 0;
          Exit;
        end;
    1 : tresh := Length(pattern) div 4;
    2 : tresh := Length(pattern) div 3;
    3 : tresh := Length(pattern) div 2;
    else raise Exception.Create('Toleranzlevel ungültig');
  end;

  Result := False;
  with TStringList.Create do
  try
    CommaText := changefileext(str,''); // StringReplace(str, '.', ' ', [rfReplaceAll]);
    for i := 0 to Count - 1 do
      if LevenshteinDistance(str, pattern) <= tresh then
      begin
        Result := True;
        Exit;
      end;
  finally
    Free;
  end;
end;

constructor TMySearchString.Create(Value:string);
begin
  FANDs := nil;
  FNOTs := nil;
  FORs := nil;
  FRegEx := nil;
  SetValue(Value);
end;

procedure TMySearchString.SetValue(Value:string);
var
  sl : TStringList;
  i  : integer;
begin
  if Assigned(FANDs) then FreeAndNil(FANDs);
  if Assigned(FORs) then FreeAndNil(FORs);
  if Assigned(FNOTs) then FreeAndNil(FNOTs);
  if Assigned(FRegEx) then FreeAndNil(FRegEx);

  FMode := -1;
  if Length(Value) > 1 then
  begin               // Switches gesetzt
    if Pos('|',Value) = Length(Value)-1 then
      FMode := Pos(upcase(Value[Length(Value)]),'BWR0123');
    if FMode <> -1 then Value := Copy(Value,1,Length(Value)-2);
  end;
  if FMode = -1 then
    if (Pos('*',Value) <> 0) or (Pos('*',Value) <> 0) then FMode := 2 else
      FMode := 1;
  FLev := 0;
  if FMode > 3 then
  begin
    flev := FMode - 4;
    FMode := 1;
  end;
  case FMode of
    1 :
    begin
      sl := TStringList.Create;
      FANDs := TStringList.Create;
      FNOTs := TStringList.Create;
      FORs := TStringList.Create;
      FANDs.Sorted := True;
      FNOTs.Sorted := True;
      FORs.Sorted := True;
      try
        sl.Duplicates := dupIgnore;
        sl.CommaText := Value;
        for i := 0 to sl.Count - 1 do
          if Copy(sl[i],1,1) = '+' then FANDs.Add(lowercase(Copy(sl[i],2,maxInt)));
        for i := 0 to sl.Count - 1 do
          if Copy(sl[i],1,1) = '-' then FNOTs.Add(lowercase(Copy(sl[i],2,maxInt)));
        for i := 0 to sl.Count - 1 do
          if (Copy(sl[i],1,1) <> '+') and (Copy(sl[i],1,1) <> '-') then FORs.Add(lowercase(sl[i]));
      finally
        sl.Free;
      end;
    end;
    2,3 : SetString(Value);
  end;
end;

procedure TMySearchString.SetString(s:string);
begin
  case FMode of
    1 : raise Exception.Create('Create benutzen');
    2 : FString := s;
    3 : begin
          if s = '' then raise Exception.Create('Regulärer Ausdruck darf nicht leer sein.');
          FString := s;
          if not Assigned(FRegEx) then
          begin
            FRegEx := TRegExpr.Create;
            FRegEx.ModifierI := True; { Groß/Kleinschreibung ignorieren }
          end;
          FRegEx.Expression := s;
          FRegEx.Compile;
        end;
  end;
end;

function TMySearchString.GetValue:string;
var
  sl : TStringList;
  i : integer;
begin
  case FMode of
    1 :
    begin
      sl := TStringList.Create;
      try
        sl.Duplicates := dupIgnore;
        sl.Sorted := True;
        sl.AddStrings(FORs);
        with FANDs do
          for i := 0 to Count - 1 do
            sl.Add('+'+Strings[i]);
        with FNOTs do
          for i := 0 to Count - 1 do
            sl.Add('-'+Strings[i]);
        if FLev > 0 then
          Result := getspacetext(sl) + '|'+IntToStr(FLev) else
            Result := getspacetext(sl) + '|b';
      finally
        sl.Free;
      end;
    end;
    2 : Result := FString + '|w';
    3 : Result := FString + '|r';
  end;
end;
destructor TMySearchString.destory;
begin
  if Assigned(FANDs) then FANDs.Free;
  if Assigned(FORs) then FORs.Free;
  if Assigned(FNOTs) then FNOTs.Free;
  if Assigned(FRegEx) then FreeAndNil(FRegEx);
end;

function TMySearchString.Match(s:string):Boolean;
var
  i : integer;
begin
  s := lowercase(s);
  case FMode of
  1:begin { Begriffsstutzig, äh -Suche}
      Result := False;
      with FANDs do
        for i := 0 to Count-1 do
          if not TolerantMatch(s,strings[i],FLev) then
            Exit;
      with FNOTs do
        for i := 0 to Count-1 do
          if TolerantMatch(s,strings[i],FLev) then
            Exit;
      if FORs.Count = 0 then Result := True
      else
        with FORs do
          for i := 0 to Count-1 do
            if TolerantMatch(s,strings[i],FLev) then
            begin
              Result := True;
              Break;
            end;
      if Result = False then Exit;
    end;
  2:begin { Wildcard }
      Result := Like(s,FString);
    end;
  3:begin { RegExp }
      Result := FRegEx.Exec(s);
    end;
  else
    raise Exception.Create('mode ungültig');
  end;
end;

{ ********* }
{ Compare Functions }

function TMySearch.MatchMinDate(Item:TMyItem):Boolean;
begin
  Result := not (Item.Changed < FMinDate);
end;

function TMySearch.MatchMaxDate(Item:TMyItem):Boolean;
begin
  Result := not (Item.Changed > FMaxDate);
end;

function TMySearch.MatchMinSize(Item:TMyItem):Boolean;
begin
  Result := not (Item.Size < FMinSize);
end;

function TMySearch.MatchMaxSize(Item:TMyItem):Boolean;
begin
  Result := not (Item.Size > FMaxSize);
end;

function TMySearch.MatchAttr(Item:TMyItem):Boolean;
begin
  Result := (Item.Attr and FAttrSet = FAttrSet) and
            (Item.Attr and FAttrUSet = 0);
end;

function TMySearch.MatchName(Item:TMyItem):Boolean;
begin
  Result := FNameString.Match(Item.Name);
end;

function TMySearch.MatchLocation(Item:TMyItem):Boolean;
var
  disk,path : string;
  i         : integer;
begin
  result := True;
  path := '*';
  disk := '*';
  for i := FSearchIn.Count-1 downto 0 do
  begin
    if Pos('<',FSearchIn[i]) = 1 then
    begin
      if path = '*' then path := MyGetPath(Item.ID);
      if disk = '*' then disk := MyGetDisk(Item.ID);
      if Pos(FSearchIn[i],'<'+disk+'>'+path) = 1 then
        Exit;
    end else
    begin
      if path = '*' then path := MyGetPath(Item.ID);
      if Pos(FSearchIn[i],path) = 1 then
        Exit;
    end;
  end;
  result := False; // nicht gefunden
end;

function TMySearch.MatchNote(Item:TMyItem):Boolean;
var
  i : integer;
begin
  Result := False;
  with FNotes do
    for i := 0 to FNotes.Count-1 do
    begin
      if Strings[i] = '*' then
      begin
        if TMySearchString(Objects[i]).Match(lowercase(Item.Note)) = False then Exit
      end else
      begin
        if (Pos(Strings[i],lowercase(Item.Note)) = 0) and
           (Pos(Strings[i],lowercase(Item.TextPreview)) = 0) then Exit;
        if (TMySearchString(Objects[i]).Match(ExtractProp(lowercase(Item.Note),Strings[i])) = False) and
           (TMySearchString(Objects[i]).Match(ExtractProp(lowercase(Item.TextPreview),Strings[i])) = False) then Exit;
      end;
    end;
  Result := True;
end;
{ ********* }

function StringToSize(Text:string):Int64;
var
  factor : Int64;
begin
  Text := stringreplace(trim(Text), 'Byte', 'B', [rfReplaceAll, rfIgnoreCase]);
  while Pos('.',Text) > 0 do
    Delete(Text,Pos('.',Text),1);
  if Text = '' then Text := '0';
  if upcase(Text[Length(Text)]) = 'B' then Delete(Text,Length(Text),1);
  factor := 1;
  case upcase(Text[Length(Text)]) of
    'K' : factor := 1024;
    'M' : factor := 1024 * 1024;
    'G' : factor := 1024 * 1024 * 1024;
    'T' : begin factor := 1024 * 1024 * 1024; factor := factor * 1024; end;
  end;
  if factor <> 1 then
    Delete(Text,Length(Text),1);
  Result := trunc(StrToFloat(trim(Text)) * factor);
end;

function attr2(a:integer):string;
var
  i : integer;
begin
  Result := '';
  for i := 0 to 3 do
    if bool(a and attrs[i]) then Result := Result + attrs_str[i+1];
end;

function strtoattr(s:string):integer;
var
  i : integer;
begin
  Result := 0;
  for i := 1 to 4 do
    if Pos(attrs_str[i],s) > 0 then
      Inc(Result, attrs[i-1]);
end;

constructor TMySearch.Create(Value:string);
var
  s : string;
  idx : integer;
begin
  FMinDate := -1; FMaxDate := -1;
  FMinSize := -1; FMaxSize := -1;
  FAttrSet := 0;
  FAttrUSet := 0;
  FLimit := maxInt;
  FSearchIn := TStringList.Create;
  FSearchIn.Sorted := True;
  FNotes := TStringList.Create;
  FInList := TMyList.Create;
  FListMode := False;
  with TStringList.Create do
  try
    CommaText := Value;
    if Count > 0 then  // Erstes Element = SearchString
      if Pos('/',Strings[0]) = 0 then
      begin
        FNameString := TMySearchString.Create(Strings[0]);
        Delete(0);
      end else FNameString := TMySearchString.Create('') else
        FNameString := TMySearchString.Create('');
    idx := 0;
    while idx < Count do
    begin
      if lowercase(Strings[idx]) = '/in' then { Suche in }
      begin
        Inc(idx);
        try
          FSearchIn.Add( Strings[idx] );
        except
          on EStringListError do;
        end;
      end else
      if lowercase(Strings[idx]) = '/text' then { Text }
      begin
        Inc(idx);
        try
         s := Strings[idx];
         idx := Pos(': ',s);
         FNotes.AddObject(Copy(s,1,idx-1), TMySearchString.Create(Copy(s,idx+2,maxInt)) );
        except
          on EStringListError do;
        end;
      end else
      if (lowercase(Strings[idx]) = '/mindate') then  { Datum }
      begin
        Inc(idx,1);
        try
          FMinDate := StrToDate(Strings[idx]);
          if idx < Count then
            if Copy(Strings[idx+1],1,1) <> '/' then
            begin
              Inc(idx);
              FMinDate := FMinDate + StrToTime(Strings[idx]);
            end;
        except
          on EStringListError do;
        end;
      end else
      if (lowercase(Strings[idx]) = '/maxdate') then
      begin
        Inc(idx,1);
        try
          FMaxDate := StrToDate(Strings[idx]);
          if idx < Count then
            if Copy(Strings[idx+1],1,1) <> '/' then
            begin
              Inc(idx);
              FMaxDate := FMaxDate + StrToTime(Strings[idx]);
            end;
        except
          on EStringListError do;
        end;
      end else
      if lowercase(Strings[idx]) = '/minsize' then { Größe }
      begin
        Inc(idx);
        try
          FMinSize := StringToSize(Strings[idx]);
        except
          on EStringListError do;
        end;
      end else
      if lowercase(Strings[idx]) = '/maxsize' then { Größe }
      begin
        Inc(idx);
        try
          FMaxSize := StringToSize(Strings[idx]);
        except
          on EStringListError do;
        end;
      end else
      if lowercase(Strings[idx]) = '/attrset' then { Attrs }
      begin
        Inc(idx);
        try
          FAttrSet := strtoattr(Strings[idx]);
        except
          on EStringListError do;
        end;
      end else
      if lowercase(Strings[idx]) = '/attrnotset' then
      begin
        Inc(idx);
        try
          FAttrUSet := strtoattr(Strings[idx]);
        except
          on EStringListError do;
        end;
      end else
      if lowercase(Strings[idx]) = '/limit' then
      begin
        Inc(idx);
        try
          FLimit := strtoint(Strings[idx]);
        except
          on EStringListError do;
        end;
      end else
        Inc(idx);
    end;
    if BOOL(FAttrUSet and FAttrSet) then
      raise Exception.Create('Die angegebenen Attribute sind widersprüchlich.');
  finally
    Free;
  end;
end;

function TMySearch.GetText:string;
var
  i : integer;
  sl : TStringList;
begin
  Result := '';
  sl := TStringList.Create;
  with sl do
  try
    Add(FNameString.Value);
    for i := 0 to FSearchIn.Count - 1 do
    begin
      Add('/in');
      Add(FSearchIn[i]);
    end;
    for i := 0 to FNotes.Count - 1 do
    begin
      Add('/text');
      Add(FNotes[i] + ': ' + TMySearchString(FNotes.Objects[i]).Value);
    end;
    if FMinSize <> -1 then
    begin
      Add('/minsize');
      Add(Format('%.0n',[FMinSize * 1.0]));
    end;
    if FMaxSize <> -1 then
    begin
      Add('/maxsize');
      Add(Format('%.0n',[FMaxSize * 1.0]));
    end;
    if FMinDate <> -1 then
    begin
      Add('/mindate');
      Add(datetostr(FMinDate));
      Add(timetostr(FMinDate));
    end;
    if FMaxDate <> -1 then
    begin
      Add('/maxdate');
      Add(datetostr(FMaxDate));
      Add(timetostr(FMaxDate));
    end;
    if FAttrSet <> 0 then
    begin
      Add('/attrset');
      Add(attr2(FAttrSet));
    end;
    if FAttrUSet <> 0 then
    begin
      Add('/attrnotset');
      Add(attr2(FAttrUSet));
    end;
    if FLimit <> maxInt then
    begin
      Add('/limit');
      Add(IntToStr(FLimit));
    end;
    Result := GetSpaceText(sl);
  finally
    sl.Free;
  end;
end;

destructor TMySearch.Destroy;
var
  i : integer;
begin
  FNameString.Free;
  FSearchIn.Free;
   for i := 0 to FNotes.Count-1 do
     FNotes.Objects[i].Free;
  FNotes.Free;
  FInList.Free;
end;

procedure TMySearch.Abort;
begin
  FAbort := True;
end;

function TMySearch.Execute(lvLists:TListView):Boolean;
var
  SC   : string;
  i,j,SCLen, FoundCount: Integer;
  s : string;
  ct : string;

  procedure DoMatch(item:TMyItem);
  var
    i : integer;
    matched : Boolean;
  begin
    Inc(FSCount);
    matched := True;
    for i := 1 to SCLen do
    begin
      case SC[i] of
        's' : matched := MatchMinSize(Item);
        'S' : matched := MatchMaxSize(Item);
        'c' : matched := MatchMinDate(Item);
        'C' : matched := MatchMaxDate(Item);
        'A' : matched := MatchAttr(Item);
        'N' : matched := MatchName(Item);
        'L' : matched := MatchLocation(Item);
        'T' : matched := MatchNote(Item);
      end;
      if not matched then break;
    end;
    if matched then
    begin
      if Assigned(FOnItem) then FOnItem(Self, Item, FAbort);
      Inc(FoundCount);
    end;
    if Assigned(FOnProgress) then FOnProgress(Self);
  end;

begin
  FSCount := 0;
  ct := FSearchIn.CommaText;
  FInList.Clear;
  for i := FSearchIn.Count - 1 downto 0 do
  begin
    s := FSearchIn[i];
   { Suchen in ... }
    if Pos('List:',s) = 1 then  // Liste
    begin
      FListMode := True;
      with lvLists do
        for j := 0 to Items.Count - 1 do
          if TMyList(Items[j].Data).ListName = Copy(s,6,maxInt) then
          begin
            FInList.AddItems( TMyList(Items[j].Data) );
            break;
          end;
      FSearchIn.Delete(i);
    end;
  end;
  try
    FAbort := False;
    FoundCount := 0;
    SC := '';
    if FMinSize <> -1 then SC := SC + 's';
    if FMaxSize <> -1 then SC := SC + 'S';
    if FMinDate <> -1 then SC := SC + 'c';
    if FMaxDate <> -1 then SC := SC + 'C';
    if (FAttrSet <> 0) or (FAttrUSet <> 0) then SC := SC + 'A';
    SC := SC + 'N';  // (TODO) gucken ob überhaupt Stringsuche gemacht wird
    if FSearchIn.Count > 0 then SC := SC + 'L';
    if FNotes.Count > 0 then SC := SC + 'T';

    for i := 0 to FNotes.Count-1 do
      FNotes[i] := lowercase(FNotes[i]);

    SCLen := Length(SC);
    if FListMode then
    begin { nur Liste }
      with FInList do
        for i := 0 to Count-1 do
          if FoundCount > FLimit then break
            else DoMatch(Items[i]);
    end else { kpl. Datenbank }
    begin
      with dm do
        begin
          tblFiles.Filtered := False;
          tblDisks.Filtered := False;
          tblFolders.Filtered := False;
          tblFiles.First;
        end;
      while (not dm.tblFiles.Eof) and (not FAbort) and (FoundCount < FLimit) do
      begin
        DoMatch(dbCurrentItem);
        dm.tblFiles.Next;
      end;
    end;
    Result := not FAbort;
  finally
    FSearchIn.CommaText := ct;
  end;
end;

end.

