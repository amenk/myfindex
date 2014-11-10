unit UsefulPrcs;

{$MODE Delphi}

interface

uses Windows, Sysutils, ActiveX, ComObj,
  ShlObj, Mapchar, classes, FileUtil;
type CharSet = set of char;


const
  LabelForbiddenChars :
    CharSet=['?','*','<','>','|','"',':','\','/'];

const
  attrs : array[0..3] of integer = (faArchive, faHidden, SysUtils.faReadOnly, faSysFile);
  attrs_str = 'ahrs';

function killzeros(const s:string):string;
function Filter(s:string;Forbidden:CharSet):string;
function VolumeSN(DriveChar: char): string; { Seriennummer (HEX) }
function VolumeID(DriveChar: char): string; { Label oder Seriennummer, falls ungelabelt }
function GetTempDir: string;
function IntPower(Base: Extended; Exponent: Integer): Extended;
function lowercase(s: string): string;
function GetFileSize(const FileName: string): Int64;
function SizeToStr(Size: Int64; fmt : ShortInt; explorerlike:Boolean): string;
function AttrToString(a: integer): string;
function StrToOem(const AnsiStr: string): string;
function OemToAnsiStr(const OemStr: string): string;
function DirectoryExists(const Name: string): Boolean;
function SpecialDirectory(ID: integer): string;
function Decrypt(const S: string; Key: Word): string;
function Like(const AString, APattern: string): Boolean;
procedure EjectDrive(drive: char);
function UrlEncode(s: string): string;
function UrlEncodeQuote(s: string): string;
function UrlDecode(s: string): string;
procedure LevenshteinPQR(p, q, r: integer);
function LevenshteinDistance(const sString, sPattern: string): Integer;
function WordsLevenshteinDistance(const sString, sPattern: string): Integer;
function min(i,j:integer):integer;
function MyFormatStr(s:string;FStrFormat:integer):string;
function GetSpaceText(sl:TStrings): string;
procedure PCharToList(str:PChar;list:TStringList);
procedure CreateDirRecursiv(s:string);

implementation

procedure PCharToList(str:PChar;list:TStringList);
var
  s : string;
  idx : integer;
begin
  s := StrPas(str);
  idx := Pos(#13#10,s);
  while idx <> 0 do
  begin
    list.Add(Copy(s,1,idx-1));
    Delete(s,1,idx+1);
    idx := Pos(#13#10,s);
  end;
  list.Add(s);
end;

function killzeros(const s:string):string;
begin
  Result := s;
  while Pos(#0,Result) > 0 do
    Result[Pos(#0,Result)] := ' ';
end;

function GetSpaceText(sl:TStrings): string;
var
  S: string;
  P: PChar;
  I, Count: Integer;
begin
  Count := sl.Count;
  if (Count = 1) and (sl[0] = '') then
    Result := '""'
  else
  begin
    Result := '';
    for I := 0 to Count - 1 do
    begin
      S := sl[I];
      P := PChar(S);
      while not (P^ in [#0..' ','"',',']) do P := CharNext(P);
      if (P^ <> #0) then S := AnsiQuotedStr(S, '"');
      Result := Result + S + ' ';
    end;
    System.Delete(Result, Length(Result), 1);
  end;
end;

function MyFormatStr(s:string;FStrFormat:integer):string;
begin
  case FStrFormat of
    0 : Result := StringReplace(s, #13#10, ' ', [rfReplaceAll]);
    1 : ;
    2 : Result := StrToOem(s);
    3 : Result := StringReplace(ansi2xml(s), #13#10, '<br>', [rfReplaceAll]);
  end;
end;

function min(i,j:integer):integer;
begin
  if i<j then Result := i else Result := j;
end;

function Filter(s:string;Forbidden:CharSet):string;
var
  i : integer;
begin
  Result := '';
  for i := 1 to Length(s) do
    if not (s[i] in Forbidden) then Result := Result + s[i];
  Result := Copy(Result,1,50);
end;

function UrlEncode(s: string): string;
var
  i: integer;
begin
  Result := '';
  for i := 1 to Length(s) do
    case s[i] of
      'A'..'Z', 'a'..'z', '0'..'9', '.': Result := Result + s[i];
      ' ': Result := Result + '+';
    else
      Result := Result + '%' + IntToHex(Ord(s[i]), 2);
    end;
end;

function UrlEncodeQuote(s: string): string;
var
  i: integer;
begin
  Result := '';
  for i := 1 to Length(s) do
    if s[i] in ['"', '+', '%', '[', ']', '=', #13, #10] then
      Result := Result + '%' + IntToHex(Ord(s[i]), 2)
    else
      Result := Result + s[i];
end;

function UrlDecode(s: string): string;
var
  i: integer;
begin
  Result := '';
  i := 0;
  while i < Length(s) do
  begin
    Inc(i);
    case s[i] of
      '+': Result := Result + ' ';
      '%': begin
          Result := Result + chr(StrToInt('$' + Copy(s, i + 1, 2)));
          Inc(i, 2);
        end;
    else Result := Result + s[i];
    end;
  end;
end;


const
  VWin32_DIOC_DOS_IoCtl = 1; // Interrupt 21h

// WICHTIG: Im Zusammenhang mit DeviceIoControl
// IMMER PACKED-Records verwenden !!!!

type
  TDevIoCtl_Reg = packed record
    Reg_EBX: DWord;
    Reg_EDX: DWord;
    Reg_ECX: DWord;
    Reg_EAX: DWord;
    Reg_EDI: DWord;
    Reg_ESI: DWord;
    Reg_Flags: DWord;
  end;

function IsWindowsNT: boolean;
var
  OsVinfo: TOSVERSIONINFO;
begin
  ZeroMemory(@OsVinfo, sizeOf(OsVinfo));
  OsVinfo.dwOSVersionInfoSize := sizeof(TOSVERSIONINFO);
  if GetVersionEx(OsVinfo) then
    Result := OsVinfo.dwPlatformId = VER_PLATFORM_WIN32_NT
  else
    Result := false;
end; {IsWindowsNT}

procedure EjectDrive98(drive: char);
var
  DevIoHandle: THandle;
  BytesReturned: DWord;
  Reg: TDevIoCtl_Reg;
begin

  with Reg do
  begin
    Reg_EAX := $440D;
    Reg_EBX := Ord(drive) - Ord('A') + 1;

    Reg_ECX := $0849; //  08 = Laufwerkskategorie
                         //  49 = Eject
  end;

  // Handle für DeviceIoControl besorgen.
  DevIoHandle := FileCreate('\\.\vwin32'); { *Converted from CreateFile* }
  // Mit DeviceIoControl die Disk auswerfen.
  if DevIoHandle <> Invalid_Handle_Value then
  begin
    DeviceIoControl(DevIoHandle,
      VWin32_DIOC_DOS_IoCtl,
      @Reg,
      SizeOf(Reg),
      @Reg,
      SizeOf(Reg),
      BytesReturned,
      nil);
    // Handle wieder freigeben.
    FileClose(DevIoHandle); { *Converted from CloseHandle* }
  end;
end;

procedure EjectDrive(drive: char);
var
  hDevice: integer;
  cb: DWORD;
  s: string;
const
  IOCTL_STORAGE_EJECT_MEDIA = $2D4808;
begin
  if not IsWindowsNT then EjectDrive98(drive) else
  begin
    s := '\\.\' + drive + ':';
    hDevice := FileCreate(pchar(s)); { *Converted from CreateFile* }

//    if (hDevice = 0) then Result := False;

    DeviceIoControl(hDevice,
      IOCTL_STORAGE_EJECT_MEDIA, nil, 0,
      nil, 0, cb, nil);

    FileClose(hDevice); { *Converted from CloseHandle* }
  end;
end;


{ Like prüft die Übereinstimmung eines Strings mit einem Muster.
  So liefert Like('Delphi', 'D*p?i') true.
  Der Vergleich berücksichtigt Klein- und Großschreibung.
  Ist das nicht gewünscht, muss statt dessen
  Like(AnsiUpperCase(AString), AnsiUpperCase(APattern)) benutzt werden: }

function Like(const AString, APattern: string): Boolean;
var
  StringPtr, PatternPtr: PChar;
  StringRes, PatternRes: PChar;
begin
  Result := false;
  StringPtr := PChar(AString);
  PatternPtr := PChar(APattern);
  StringRes := nil;
  PatternRes := nil;
  repeat
    repeat // ohne vorangegangenes "*"
      case PatternPtr^ of
        #0: begin
            Result := StringPtr^ = #0;
            if Result or (StringRes = nil) or (PatternRes = nil) then
              Exit;
            StringPtr := StringRes;
            PatternPtr := PatternRes;
            Break;
          end;
        '*': begin
            inc(PatternPtr);
            PatternRes := PatternPtr;
            Break;
          end;
        '?': begin
            if StringPtr^ = #0 then
              Exit;
            inc(StringPtr);
            inc(PatternPtr);
          end;
      else begin
          if StringPtr^ = #0 then
            Exit;
          if StringPtr^ <> PatternPtr^ then begin
            if (StringRes = nil) or (PatternRes = nil) then
              Exit;
            StringPtr := StringRes;
            PatternPtr := PatternRes;
            Break;
          end
          else begin
            inc(StringPtr);
            inc(PatternPtr);
          end;
        end;
      end;
    until false;
    repeat // mit vorangegangenem "*"
      case PatternPtr^ of
        #0: begin
            Result := true;
            Exit;
          end;
        '*': begin
            inc(PatternPtr);
            PatternRes := PatternPtr;
          end;
        '?': begin
            if StringPtr^ = #0 then
              Exit;
            inc(StringPtr);
            inc(PatternPtr);
          end;
      else
        begin
          repeat
            if StringPtr^ = #0 then
              Exit;
            if StringPtr^ = PatternPtr^ then
              Break;
            inc(StringPtr);
          until false;
          inc(StringPtr);
          StringRes := StringPtr;
          inc(PatternPtr);
          Break;
        end;
      end;
    until false;
  until false;
end; {Michael Winter}

function SpecialDirectory(ID: integer): string;
var pidl: PItemIDList;
  Path: PChar;
begin
  if SUCCEEDED(SHGetSpecialFolderLocation(0, ID, pidl)) then begin
    Path := StrAlloc(max_path);
    SHGetPathFromIDList(pidl, Path);
    Result := string(Path);
    if Result[length(Result)] <> '\' then
      Result := Result + '\';
  end;
end; {SpecialDirectory}

function DirectoryExists(const Name: string): Boolean;
var
  Code: Dword;
begin
  Code := GetFileAttributes(PChar(Name));
  Result := (Code <> dword(-1)) and (FILE_ATTRIBUTE_DIRECTORY and Code <> 0);
end;

function StrToOem(const AnsiStr: string): string;
begin
  SetLength(Result, Length(AnsiStr));
  if Length(Result) > 0 then
{$IFDEF WIN32}
    CharToOemBuff(PChar(AnsiStr), PChar(Result), Length(Result));
{$ELSE}
    AnsiToOemBuff(@AnsiStr[1], @Result[1], Length(Result));
{$ENDIF}
end;

function OemToAnsiStr(const OemStr: string): string;
begin
  SetLength(Result, Length(OemStr));
  if Length(Result) > 0 then
{$IFDEF WIN32}
    OemToCharBuff(PChar(OemStr), PChar(Result), Length(Result));
{$ELSE}
    OemToAnsiBuff(@OemStr[1], @Result[1], Length(Result));
{$ENDIF}
end;

function AttrToString(a: integer): string;
var
  i : integer;
begin
  Result := attrs_str;
  for i := 0 to 3 do
    if not bool(a and attrs[i]) then Result[i+1] := '-';
//  if (a or faArchive) <> a then Result[1] := '-';
//  if (a or faHidden) <> a then Result[2] := '-';
//  if (a or faReadOnly) <> a then Result[3] := '-';
//  if (a or faSysFile) <> a then Result[4] := '-';
end;

function SizeToStr(Size: Int64; fmt : ShortInt; explorerlike:boolean): string;
var
  z: Extended;
  s: string;
begin
  if abs(fmt) > 5 then raise Exception.Create('Ungültiges Dateigrößen Format');
  if (abs(fmt) = 1) or ((fmt = 0) and (Size < 1000)) then
  begin
    s := 'Byte';
    z := Size;
    if fmt < 0 then
      Result := Format('%.0n', [z * 1.0]) else
      Result := Format('%.0n %s', [z * 1.0, s]);
    Exit;
  end else
    if (abs(fmt) = 2) or ((fmt = 0) and (Size < 1000 * 1000)) then
    begin
      s := 'KB';
      z := Size / 1024;
    end else
      if (abs(fmt) = 3) or ((fmt = 0) and (Size < 1000 * 1000 * 1000)) then
      begin
        s := 'MB';
        z := Size / 1024 / 1024;
      end else
        if (abs(fmt) = 4) or ((fmt = 0) and (Size < 1000000000000)) then
        begin
          s := 'GB';
          z := Size / 1024 / 1024 / 1024;
        end else
        begin
          s := 'TB';
          z := Size / 1024 / 1024 / 1024 / 1024;
        end;
  if explorerlike then
  begin
    if z <> 0 then z := z+1;
    Result := Format('%.0n %s', [z,s]);
  end else
  begin
  if fmt < 0 then
    Result := Format('%f', [z]) else
    Result := Format('%f %s', [z, s]);
  end;
end;

function GetFileSize(const FileName: string): Int64;
var
  srecResult: TSearchRec;
  FindData: TWin32FindData;
begin
  if FindFirst(FileName, faAnyFile, srecResult) = 0 then
  begin
    Result := srecResult.Size;
    FindClose(srecResult);
  end
  else
  begin
    Result := -1;
  end;
end;

function lowercase(s: string): string;
var
  buf: PChar;
begin
  GetMem(buf, Length(s) + 1);
  StrPCopy(buf, s);
  result := StrPas(charlower(buf));
  FreeMem(buf);
end;

function IntPower(Base: Extended; Exponent: Integer): Extended;
asm
        mov     ecx, eax
        cdq
        fld1                      { Result := 1 }
        xor     eax, edx
        sub     eax, edx          { eax := Abs(Exponent) }
        jz      @@3
        fld     Base
        jmp     @@2
@@1:    fmul    ST, ST            { X := Base * Base }
@@2:    shr     eax,1
        jnc     @@1
        fmul    ST(1),ST          { Result := Result * X }
        jnz     @@1
        fstp    st                { pop X from FPU stack }
        cmp     ecx, 0
        jge     @@3
        fld1
        fdivrp                    { Result := 1 / Result }
@@3:
        fwait
end;

function VolumeSN(DriveChar: char): string;
var
  OldErrorMode: Integer;
  Sernum, Unused, VolFlags: DWORD;
  Buf: array[0..MAX_PATH] of Char;
begin
  OldErrorMode := SetErrorMode(SEM_FAILCRITICALERRORS);
  try
    if GetVolumeInformation(PChar(DriveChar + ':\'), Buf,
      sizeof(Buf), @Sernum, Unused, VolFlags,
      nil, 0) then
      Result := IntToHex(sernum, 8)
    else Result := '*';
  finally
    SetErrorMode(OldErrorMode);
  end;
end;

function VolumeID(DriveChar: char): string;
var
  OldErrorMode: Integer;
  Sernum, Unused, VolFlags: DWORD;
  Buf: array[0..MAX_PATH] of Char;
begin
  OldErrorMode := SetErrorMode(SEM_FAILCRITICALERRORS);
  try
    if GetVolumeInformation(PChar(DriveChar + ':\'), Buf,
      sizeof(Buf), @Sernum, Unused, VolFlags,
      nil, 0) then
    begin
      if buf = '' then Result := 'SN: ' + IntToHex(sernum, 8) else
        Result := Buf;
    end else Result := '*';
  finally
    SetErrorMode(OldErrorMode);
  end;
end;

function GetTempDir: string;
var
  Buf: array[0..MAX_PATH] of Char;
begin
  GetTempPath(MAX_PATH, Buf);
  Result := Buf;
  if Result[Length(Result)] <> '\' then Result := Result + '\';
end;


var
  FiR0: integer;
  FiP0: integer;
  FiQ0: integer;

function MinL(X, Y, Z: Integer): Integer;
begin
  if (X < Y) then Result := X else Result := Y;
  if (Result > Z) then Result := Z;
end;

procedure LevenshteinPQR(p, q, r: integer);
begin
  FiP0 := p;
  FiQ0 := q;
  FiR0 := r;
end;

function WordsLevenshteinDistance(const sString, sPattern: string): Integer;
const
  sep = [' ', ',', '.'];
var
  w: string;
  i, MinDistance, Distance: integer;
begin
  MinDistance := maxInt;
  w := '';
  for i := 1 to Length(sString) do
  begin
    if (sString[i] in sep) then
    begin
      Distance := LevenshteinDistance(w, sPattern);
      if Distance < MinDistance then MinDistance := Distance;
      w := '';
    end else w := w + sString[i];
  end;
  Result := MinDistance;
end;

function LevenshteinDistance(const sString, sPattern: string): Integer;
const
  MAX_SIZE = 50;
var
  aiDistance: array[0..MAX_SIZE, 0..MAX_SIZE] of Integer;
  i, j, iStringLength, iPatternLength, iMaxI, iMaxJ: Integer;
  chChar: Char;
  iP, iQ, iR, iPP: Integer;
begin
  iStringLength := length(sString);
  if (iStringLength > MAX_SIZE) then iMaxI := MAX_SIZE else
    iMaxI := iStringLength;
  iPatternLength := length(sPattern);
  if (iPatternLength > MAX_SIZE) then iMaxJ := MAX_SIZE else
    iMaxJ := iPatternLength;

  aiDistance[0, 0] := 0;
  for i := 1 to iMaxI do aiDistance[i, 0] := aiDistance[i - 1, 0] + FiR0;

  for j := 1 to iMaxJ do begin
    chChar := sPattern[j];
    if ((chChar = '*') or (chChar = '?')) then iP := 0 else iP := FiP0;
    if (chChar = '*') then iQ := 0 else iQ := FiQ0;
    if (chChar = '*') then iR := 0 else iR := FiR0;

    aiDistance[0, j] := aiDistance[0, j - 1] + iQ;

    for i := 1 to iMaxI do begin
      if (sString[i] = sPattern[j]) then iPP := 0 else iPP := iP;
   {*** aiDistance[i,j] := Minimum of 3 values ***}
      aiDistance[i, j] := MinL(aiDistance[i - 1, j - 1] + iPP,
        aiDistance[i, j - 1] + iQ,
        aiDistance[i - 1, j] + iR);
    end;
  end;
  Result := aiDistance[iMaxI, iMaxJ];
end;

{$R-,Q-}
function Decrypt(const S: String; Key: Word): String;
var                               // Aus Borlands techinfo
  I: byte;                        // Angepasst: SetLength
const
C1 = 52845;
C2 = 22719;

begin
  SetLength(Result,Length(s));
  for I := 1 to Length(S) do
    begin
      Result[I] := char(byte(S[I]) xor (Key shr 8));
      Key := (byte(S[I]) + Key) * C1 + C2;
    end;
end;

procedure CreateDirRecursiv(s:string);
var
  d : string;
  i : integer;
begin
  d := '';
  if Copy(s,Length(s),1) <> '\' then s := s + '\';
  for i := 1 to length(s) do
    begin
    d:=d+s[i];
    if s[i] = '\' then
      CreateDirectory(pchar(d),nil);
    end;
end;

initialization
  LevenshteinPQR(1, 1, 1);


end.
