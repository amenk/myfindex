program PdxConvert;

{$mode objfpc}{$H+}

uses {$IFDEF UNIX} {$IFDEF UseCThreads}
  cthreads, {$ENDIF} {$ENDIF}
  Classes,
  SysUtils,
  CustApp,
  sqlite3conn,
  sqldb,
  Db,
  FileUtil,
  dateutils,
  process;

const
  {$IFDEF Windows}
  PXCSVDUMP = 'pxcsvdump.exe';
  {$ELSE}
  PXCSVDUMP = 'pxcsvdump';
  {$ENDIF}

type

  { TPdxConvert }

  TPdxConvert = class(TCustomApplication)
  protected
    SQLite3Con: TSQLite3Connection;
    SQLTransact: TSQLTransaction;
    sqlqMedia, sqlqFolders, sqlqFiles : TSQLQuery;
    sourceDir, destDir: string;
    csvFilename : String;
    csvDelimiter : char;
    currentRow : integer;
    delimitedText : TStrings;
    fileStream : TFileStream;
    procedure DoRun; override;
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
    procedure WriteHelp; virtual;
    function HasOption(Const C : Char; Const S : String) : Boolean;
    function GetOptionValue(Const C: Char; Const S : String) : String;
    procedure createSQLiteDBs;
    procedure insertMediaDataset(const MediaID : string; const strLabel : string; const read : string; const size : string; const note : string);
    procedure insertFoldersDataset(const folder : string; const mediaID : string; const folderID : string; const level : string; const hasSubFolders : string; const note : string);
    procedure insertFilesDataset(const mediaID : string; const folderID : string; const fileID : string; const fileName : string; const entryKind : string; const changed : string; const attr : string; const size : string; const note : string; const tKind : string; const bKind : string; const textPreview : string; const binPreview : string);
    procedure exitAndClose(msg : string);
    function extractCSV(sourceDB, sourceMB, strCsvFilename : string) : boolean;
    function readLine( var Stream: TFileStream; var Line: string): boolean;
    function readInsertMediaCsv(sourceDB, sourceMB : string) : boolean;
    function readInsertFoldersCsv(sourceDB, sourceMB : string) : boolean;
    function readInsertFilesCsv(sourceDB, sourceMB : string) : boolean;
    function explode(const Separator, S: string; Limit: Integer = 0): TStringList;
    procedure unquote(var str : string; quote : ansichar);
    function datestringToUnix(datestr : string) : integer;
  end;

  { TPdxConvert }

  procedure TPdxConvert.DoRun;
  var
    ErrorMsg: string;
    I : Integer;
    mediaID, strLabel, read, size, note : string;
    folder, folderID, level, hasSubFolders : string;
    fileID, fileName, entryKind, changed, attr, tKind, bKind, textPreview, binPreview : string;
    sourceDB, sourceMB : string;
    testint : integer;
    debug : string;
  begin
  if HasOption('s', 'source') then begin
     sourceDir := GetOptionValue('s', 'source');
     if not DirectoryExistsUTF8(sourceDir) then begin
        ErrorMsg := 'Old database folder does not exist.';
        WriteLn(ErrorMsg);
        Terminate;
        Exit;
     end;
  end
  else
  begin
       exitAndClose('');
  end;

  if HasOption('d', 'destination') then begin
      destDir := GetOptionValue('d', 'destination');
      if not DirectoryExistsUTF8(destDir + PathDelim) then begin
          exitAndClose('New database folder does not exist.');
      end;
  end
  else
  begin
       WriteHelp;
       exitAndClose('');
  end;

  if NOT FileExistsUTF8(PXCSVDUMP) then
    exitAndClose('Executable ' + PXCSVDUMP + ' is missing - can not continue conversion process.');

  if FileExists(sourceDir + PathDelim + 'disks.DB') AND
     FileExists(sourceDir + PathDelim + 'disks.MB') AND
     FileExists(sourceDir + PathDelim + 'files.DB') AND
     FileExists(sourceDir + PathDelim + 'files.MB') AND
     FileExists(sourceDir + PathDelim + 'folders.DB') AND
     FileExists(sourceDir + PathDelim + 'folders.MB') then begin
         createSQLiteDBs;

         sourceDB := sourceDir + PathDelim + 'disks.DB';
         sourceMB := sourceDir + PathDelim + 'disks.MB';
         csvFilename := SysUtils.GetTempDir + 'disks.csv';
         if NOT readInsertMediaCsv(sourceDB, sourceMB) then
           exitAndClose('Could not extract database data.');
         DeleteFileUTF8(csvFilename);

         sourceDB := sourceDir + PathDelim + 'folders.DB';
         sourceMB := sourceDir + PathDelim + 'folders.MB';
         csvFilename := SysUtils.GetTempDir + 'folders.csv';
         if NOT readInsertMediaCsv(sourceDB, sourceMB) then
            exitAndClose('Could not extract database data.');
         DeleteFileUTF8(csvFilename);

         sourceDB := sourceDir + PathDelim + 'files.DB';
         sourceMB := sourceDir + PathDelim + 'files.MB';
         csvFilename := SysUtils.GetTempDir + 'files.csv';
         if NOT readInsertMediaCsv(sourceDB, sourceMB) then
            exitAndClose('Could not extract database data.');
         DeleteFileUTF8(csvFilename);

     end else begin
         exitAndClose('Files missing for conversion.');
     end;

  // parse parameters
  if HasOption('h','help') then begin
    WriteHelp;
    exitAndClose('');
  end;

    // stop program loop
    exitAndClose('');
  end;

  constructor TPdxConvert.Create(TheOwner: TComponent);
  begin
    inherited Create(TheOwner);
    StopOnException := True;
    SQLite3Con := TSQLite3Connection.Create(self);
    SQLTransact := TSQLTransaction.Create(self);
    sqlqMedia := TSQLQuery.Create(self);
    sqlqFolders := TSQLQuery.Create(self);
    sqlqFiles := TSQLQuery.Create(self);
    csvDelimiter := #9;
    delimitedText := TStrings.Create;
  end;

  destructor TPdxConvert.Destroy;
  begin
    inherited Destroy;
  end;

  procedure TPdxConvert.exitAndClose(msg : string);
  begin
    WriteLn(msg);
    DeleteFileUTF8(csvFilename);
    if NOT (delimitedText = nil) then begin
       delimitedText.Free;
    end;
    if NOT (fileStream = nil) then begin
       fileStream.Free;
    end;
    if NOT (sqlqMedia = nil) then begin
       sqlqMedia.Close;
       sqlqMedia.Free;
    end;
    if NOT (sqlqFolders = nil) then begin
       sqlqFolders.Close;
       sqlqFolders.Free;
    end;
    if NOT (sqlqFiles = nil) then begin
       sqlqFiles.Close;
       sqlqFiles.Free;
    end;
    if NOT (SQLTransact = nil) then begin
       SQLTransact.CloseDataSets;
       SQLTransact.Free;
    end;
    if NOT (SQLite3Con = nil) then begin
       SQLite3Con.Close;
       SQLite3Con.Free;
    end;
    Halt(0)
  end;

  procedure TPdxConvert.WriteHelp;
  begin
    writeln('Usage: ', ExeName, ' [OPTION]');
    writeln();
    writeln('OPTIONS');
    writeln('-s=directory, --source=directory');
    writeln('     The source directory of the MyFiles/MyFindex Paradox database files.');
    writeln('-d=directory, --destination=directory');
    writeln('     The destination directory of the MyFindex SQLite database files.');
    writeln('-h, --help');
    writeln('     This help.');
  end;

function TPdxConvert.HasOption(const C : Char; const S : String) : Boolean;
var
  option : String;
  i, j : integer;
begin
    result := false;
    for i := 1 to ParamCount do begin
       if (Length(ParamStr(i)) >= 2) then begin
          if (ParamStr(i)[1] = '-') AND (ParamStr(i)[2] = C) then
             result := true;
       end;
       if (Length(ParamStr(i)) >= 3) then begin
         if (ParamStr(i)[1] = '-') AND (ParamStr(i)[2] = '-') then begin
           for j :=  3 to Length(ParamStr(i)) do begin
               option := option + ParamStr(i)[j];
           end;
         end;
         if option = S then result := true;
       end;
    end;
end;

function TPdxConvert.GetOptionValue(const C: Char; const S : String) : String;
var
  option : String;
  optionValue : String;
  i, j : integer;
begin
    result := '';
    for i := 1 to ParamCount do begin
       if (Length(ParamStr(i)) >= 4) then begin
          if (ParamStr(i)[1] = '-') AND (ParamStr(i)[2] = C) AND (ParamStr(i)[3] = '=') then begin
             for j :=  4 to Length(ParamStr(i)) do begin
               optionValue := optionValue + ParamStr(i)[j];
             end;
          end;
       end;
       if (Length(ParamStr(i)) >= 5) then begin
         if (ParamStr(i)[1] = '-') AND (ParamStr(i)[2] = '-') then begin
           for j :=  3 to Length(ParamStr(i)) do begin
              if (option = S) then begin
                if NOT ( ParamStr(i)[j] = '=' ) then
                   optionValue := optionValue + ParamStr(i)[j];
              end
              else
              begin
                if NOT (ParamStr(i)[j] = '=') then
                  option := option + ParamStr(i)[j];
              end;
           end;
         end;
       end;
    end;
    result := optionValue;
end;

procedure TPdxConvert.insertFilesDataset(const mediaID : string; const folderID : string; const fileID : string; const fileName : string; const entryKind : string; const changed : string; const attr : string; const size : string; const note : string; const tKind : string; const bKind : string; const textPreview : string; const binPreview : string);
var
  debug : string;
begin
try
   if FileExistsUTF8(destDir + PathDelim + 'media.sqlite') then
   begin
   SQLite3Con.DatabaseName := destDir + PathDelim + 'media.sqlite';

   SQLTransact.DataBase := SQLite3Con;
   sqlqFiles.Transaction := SQLTransact;

   sqlqFiles.SQL.Text := 'select * from tblFiles';
   sqlqFiles.Open;
   sqlqFiles.Append;
   // sqlqFiles.FieldByName('FileID').AsInteger := FileID;   // IDs are not unique!!!
   sqlqFiles.FieldByName('MediaID').AsString := mediaID;
   sqlqFiles.FieldByName('FolderID').AsString := folderID;
   sqlqFiles.FieldByName('FileName').AsString := fileName;
   sqlqFiles.FieldByName('EntryKind').AsString := entryKind;
   sqlqFiles.FieldByName('Changed').AsString := changed; //DateTimeToUnix(changed);
   sqlqFiles.FieldByName('Attr').AsString := attr;
   sqlqFiles.FieldByName('Size').AsString := size;
   sqlqFiles.FieldByName('Note').AsString := note;
   sqlqFiles.FieldByName('TKind').AsString := tKind;
   sqlqFiles.FieldByName('BKind').AsString := bKind;
   sqlqFiles.FieldByName('TextPreview').AsString := textPreview;
   //sqlqFiles.FieldByName('BinPreview').AsBytes := binPreview;

   sqlqFiles.Post;
   sqlqFiles.UpdateMode := upWhereAll;
   sqlqFiles.ApplyUpdates;
   SQLTransact.Commit;
   end;
except
  on E: EDatabaseError do
  begin
    WriteLn('Ein Datenbankfehler ist aufgetreten. Technische Fehlermeldung: ' + E.Message);
    if FileExistsUTF8(destDir + PathDelim + 'media.sqlite') then
       DeleteFileUTF8(destDir + PathDelim + 'media.sqlite');
    Terminate;
    Exit;
  end;
end;
end;

procedure TPdxConvert.insertMediaDataset(const MediaID : string; const strLabel : string; const read : string; const size : string; const note : string);
var
  debug : string;
begin
try
   if FileExistsUTF8(destDir + PathDelim + 'media.sqlite') then
   begin
   SQLite3Con.DatabaseName := destDir + PathDelim + 'media.sqlite';

   SQLTransact.DataBase := SQLite3Con;
   sqlqMedia.Transaction := SQLTransact;

   sqlqMedia.SQL.Text := 'select * from tblMedia';
   sqlqMedia.Open;
   sqlqMedia.Append;
   sqlqMedia.FieldByName('MediaID').AsString := mediaID;
   sqlqMedia.FieldByName('Label').AsString := strLabel;
   sqlqMedia.FieldByName('Read').AsInteger := datestringToUnix(read);
   sqlqMedia.FieldByName('Size').AsString := size;
   sqlqMedia.FieldByName('Note').AsString := note;

   sqlqMedia.Post;
   sqlqMedia.UpdateMode := upWhereAll;
   sqlqMedia.ApplyUpdates;
   SQLTransact.Commit;
   end;
except
  on E: EDatabaseError do
  begin
    WriteLn('Ein Datenbankfehler ist aufgetreten. Technische Fehlermeldung: ' + E.Message);
    if FileExistsUTF8(destDir + PathDelim + 'media.sqlite') then
       DeleteFileUTF8(destDir + PathDelim + 'media.sqlite');
    Terminate;
    Exit;
  end;
end;
end;

procedure TPdxConvert.insertFoldersDataset(const folder : string; const mediaID : string; const folderID : string; const level : string; const hasSubFolders : string; const note : string);
var
  debug : string;
begin
try
   if FileExistsUTF8(destDir + PathDelim + 'media.sqlite') then
   begin
   SQLite3Con.DatabaseName := destDir + PathDelim + 'media.sqlite';

   SQLTransact.DataBase := SQLite3Con;
   sqlqFolders.Transaction := SQLTransact;

   sqlqFolders.SQL.Text := 'select * from tblFolders';
   sqlqFolders.Open;
   sqlqFolders.Append;
   sqlqFolders.FieldByName('FolderID').AsString := folderID;
   sqlqFolders.FieldByName('Folder').AsString := folder;
   sqlqFolders.FieldByName('Level').AsString := level;
   sqlqFolders.FieldByName('HasSubFolders').AsString := hasSubFolders;
   sqlqFolders.FieldByName('Note').AsString := note;
   sqlqFolders.FieldByName('MediaID').AsString := mediaID;

   sqlqFolders.Post;
   sqlqFolders.UpdateMode := upWhereAll;
   sqlqFolders.ApplyUpdates;
   SQLTransact.Commit;
   end;
except
  on E: EDatabaseError do
  begin
    WriteLn('Ein Datenbankfehler ist aufgetreten. Technische Fehlermeldung: ' + E.Message);
    if FileExistsUTF8(destDir + PathDelim + 'media.sqlite') then
       DeleteFileUTF8(destDir + PathDelim + 'media.sqlite');
    Terminate;
    Exit;
  end;
end;
end;

procedure TPdxConvert.createSQLiteDBs;
var
  debug : string;
begin
try
   if not FileExistsUTF8(destDir + PathDelim + 'media.sqlite') then
   begin
   SQLite3Con.DatabaseName := destDir + PathDelim + 'media.sqlite';

   SQLTransact.DataBase := SQLite3Con;
   sqlqMedia.Transaction := SQLTransact;
   sqlqFiles.Transaction := SQLTransact;
   sqlqFolders.Transaction := SQLTransact;
   sqlqMedia.SQL.Text :=
     'CREATE TABLE IF NOT EXISTS '+quotedstr('tblMedia')+' ('+
     quotedstr('MediaID') + ' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,'+
     quotedstr('Label')+ ' TEXT,'+
     quotedstr('Read') + ' INTEGER,'+
     quotedstr('Size') + ' REAL,'+
     quotedstr('Note') + ' TEXT)';
   debug := sqlqMedia.SQL.Text;
   sqlqMedia.ExecSQL;
   SQLTransact.Commit;

   sqlqFiles.SQL.Text:=
     'CREATE TABLE IF NOT EXISTS '+quotedstr('tblFiles') + ' ('+
     quotedstr('FileID') + ' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,'+
     quotedstr('MediaID') + ' INTEGER,'+
     quotedstr('FolderID') + ' INTEGER,'+
     quotedstr('FileName') + ' TEXT,'+
     quotedstr('EntryKind') + ' INTEGER,'+
     quotedstr('Changed') + ' INTEGER,'+
     quotedstr('TKind') + ' INTEGER,'+
     quotedstr('BKind') + ' INTEGER,'+
     quotedstr('TextPreview') + ' TEXT,'+
     quotedstr('Attr') + ' INTEGER,'+
     quotedstr('Size') + ' REAL,'+
     quotedstr('Note') + ' TEXT,'+
     quotedstr('BinPreview') + ' BLOB)';
   debug := sqlqFiles.SQL.Text;
   sqlqFiles.ExecSQL;
   SQLTransact.Commit;

   sqlqFolders.SQL.Text :=
     'CREATE TABLE IF NOT EXISTS '+quotedstr('tblFolders') + ' ('+
     quotedstr('FolderID') + ' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,'+
     quotedstr('Folder') + ' TEXT,'+
     quotedstr('Level') + ' INTEGER,'+
     quotedstr('HasSubFolders') + ' INTEGER,'+
     quotedstr('Note') + ' TEXT,'+
     quotedstr('MediaID') + ' INTEGER)';
   debug := sqlqFolders.SQL.Text;
   sqlqFolders.ExecSQL;
   SQLTransact.Commit;

   sqlqMedia.SQL.Text :=
   'CREATE INDEX Idx_Label ON tblMedia (' + quotedstr('Label') + ')';
     {'select if ('+
     '  exists('+
     '    select distinct index_name from information_schema.statistics'+
     '    where table_schema = '+quotedstr('schema_db_name')+
     '    and table_name = '+quotedstr('tblMedia') + ' and index_name like '+quotedstr('IdxLabel')+
     ')'+
     ','+quotedstr('select ' + quotedstr(quotedstr('index IdxLabel exists')) + ' _______;')+
     ','+quotedstr('create index IdxLabel on tblMedia(column_name_names)') + ') into @a;'+
     'PREPARE stmt1 FROM @a;'+
     'EXECUTE stmt1;'+
     'DEALLOCATE PREPARE stmt1;'; }
   debug := sqlqMedia.SQL.Text;
   sqlqMedia.ExecSQL;
   SQLTransact.Commit;
   sqlqMedia.close;
   sqlqFolders.close;
   sqlqFiles.close;
   end;
except
  on E: EDatabaseError do
  begin
    WriteLn('Ein Datenbankfehler ist aufgetreten. Technische Fehlermeldung: ' + E.Message);
    if FileExistsUTF8(destDir + PathDelim + 'media.sqlite') then
       DeleteFileUTF8(destDir + PathDelim + 'media.sqlite');
    Terminate;
    Exit;
  end;
end;
end;

function TPdxConvert.extractCSV(sourceDB, sourceMB, strCsvFilename : string) : boolean;
var
  aProcess : TProcess;
  output : TStringList;
  str : string;
begin
 try
    aProcess := TProcess.Create(nil);
    aProcess.CommandLine := PXCSVDUMP + ' -f ' + sourceDB + ' -b ' + sourceMB; // + ' --delimiter=,';
    aProcess.ShowWindow := swoHIDE;
    aProcess.Options := [poWaitOnExit, poUsePipes];
    aProcess.Execute;
    output := TStringList.Create;
    output.LoadFromStream(aProcess.Output);
    DeleteFileUTF8(strCsvFilename);
    output.SaveToFile(strCsvFilename);
    aProcess.Free;
    output.Free;
 finally
   if FileExistsUTF8(strCsvFilename) then
      result := true
   else
     result := false;
 end;
end;

function TPdxConvert.readLine( var Stream: TFileStream; var Line: string): boolean;
var
  RawLine: UTF8String;
  ch: AnsiChar;
begin
result := False;
ch := #0;
while (Stream.Read( ch, 1) = 1) and (ch <> #13) do
  begin
  result := True;
  RawLine := RawLine + ch
  end;
Line := RawLine;
if ch = #13 then
  begin
  result := True;
  if (Stream.Read( ch, 1) = 1) and (ch <> #10) then
    Stream.Seek(-1, soCurrent) // unread it if not LF character.
  end
end;

function TPdxConvert.readInsertMediaCsv(sourceDB, sourceMB : string) : boolean;
var
  line : string;
  debug : string;
  str : string;
begin
     result := false;
     if NOT extractCSV(sourceDB, sourceMB, csvFilename) then
        exitAndClose('Could not extract database data.');
     fileStream := TFileStream.Create(csvFilename, fmOpenRead+fmShareDenyWrite);

     while readLine(fileStream, line) do begin
           delimitedText := explode(csvDelimiter, line, 0);
           if NOT delimitedText.Count = 4 then
              exitAndClose('Could not extract database data.');
           str := delimitedText[0];
           str := delimitedText[1];
           unquote(str, '"'); // Remove string quote
           str := delimitedText[2];
           unquote(str, #39); // Remove date quote
           str := delimitedText[3];
           insertMediaDataset(delimitedText[0], delimitedText[1], delimitedText[2], delimitedText[3], ''); // Note wird nicht gelesen? Eigentlich 5 Parameter
           result := true;
     end;

     delimitedText.Clear;
end;

function TPdxConvert.readInsertFoldersCsv(sourceDB, sourceMB : string) : boolean;
var
  line : string;
  debug : string;
  str : string;
begin
{     quotedstr('FolderID') + ' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,'+
     quotedstr('Folder') + ' TEXT,'+
     quotedstr('Level') + ' INTEGER,'+
     quotedstr('HasSubFolders') + ' INTEGER,'+
     quotedstr('Note') + ' TEXT,'+
     quotedstr('MediaID') + ' INTEGER)';}
     result := false;
     if NOT extractCSV(sourceDB, sourceMB, csvFilename) then
        exitAndClose('Could not extract database data.');
     fileStream := TFileStream.Create(csvFilename, fmOpenRead+fmShareDenyWrite);

     while readLine(fileStream, line) do begin
           delimitedText := explode(csvDelimiter, line, 0);
           if NOT delimitedText.Count = 6 then
              exitAndClose('Could not extract database data.');
           str := delimitedText[0];
           str := delimitedText[1];
           //unquote(str, '"'); // Remove string quote
           str := delimitedText[2];
           //unquote(str, #39); // Remove date quote
           str := delimitedText[3];
           str := delimitedText[4];
           str := delimitedText[5];
           insertFoldersDataset(delimitedText[0], delimitedText[1], delimitedText[2], delimitedText[3], delimitedText[4], delimitedText[5]);
           result := true;
     end;

     delimitedText.Clear;
end;

function TPdxConvert.readInsertFilesCsv(sourceDB, sourceMB : string) : boolean;
var
  line : string;
  debug : string;
  str : string;
begin
{     quotedstr('FileID') + ' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,'+
     quotedstr('MediaID') + ' INTEGER,'+
     quotedstr('FolderID') + ' INTEGER,'+
     quotedstr('FileName') + ' TEXT,'+
     quotedstr('EntryKind') + ' INTEGER,'+
     quotedstr('Changed') + ' INTEGER,'+
     quotedstr('TKind') + ' INTEGER,'+
     quotedstr('BKind') + ' INTEGER,'+
     quotedstr('TextPreview') + ' TEXT,'+
     quotedstr('Attr') + ' INTEGER,'+
     quotedstr('Size') + ' REAL,'+
     quotedstr('Note') + ' TEXT,'+
     quotedstr('BinPreview') + ' BLOB)'; }
     result := false;
     if NOT extractCSV(sourceDB, sourceMB, csvFilename) then
        exitAndClose('Could not extract database data.');
     fileStream := TFileStream.Create(csvFilename, fmOpenRead+fmShareDenyWrite);

     while readLine(fileStream, line) do begin
           delimitedText := explode(csvDelimiter, line, 0);
           if NOT delimitedText.Count = 4 then
              exitAndClose('Could not extract database data.');
           str := delimitedText[0];
           str := delimitedText[1];
           //unquote(str, '"'); // Remove string quote
           str := delimitedText[2];
           //unquote(str, #39); // Remove date quote
           str := delimitedText[3];
           str := delimitedText[4];
           str := delimitedText[5];
           str := delimitedText[6];
           str := delimitedText[7];
           str := delimitedText[8];
           str := delimitedText[9];
           str := delimitedText[10];
           str := delimitedText[11];
           str := delimitedText[12];
           insertFilesDataset(delimitedText[0], delimitedText[1], delimitedText[2], delimitedText[3], delimitedText[4], delimitedText[5], delimitedText[6], delimitedText[7], delimitedText[8], delimitedText[9], delimitedText[10],delimitedText[11], delimitedText[12]);
           result := true;
     end;

     delimitedText.Clear;
end;

function TPdxConvert.explode(const Separator, S: string; Limit: Integer = 0): TStringList;
var
  SepLen: Integer;
  F, P: PChar;
  Index: Integer;
begin
  result := TStringList.Create;
  if (S = '') or (Limit < 0) then Exit;
  if Separator = '' then
  begin
    Result.add(S);
    Exit;
  end;
  SepLen := Length(Separator);

  Index := 0;
  P := PChar(S);
  while P^ <> #0 do
  begin
    F := P;
    P := AnsiStrPos(P, PChar(Separator));
    if (P = nil) or ((Limit > 0) and (Index = Limit - 1)) then
      P := StrEnd(F);
    result.Add(copy(AnsiString(F),0,P-F));
    inc(index,1);
    if P^ <> #0 then Inc(P, SepLen);
  end;
end;

procedure TPdxConvert.unquote(var str : string; quote : ansichar);
begin
  if length(str) >= 2 then
  begin
    if str[1] = quote then
      delete(str, 1 ,1);
    if str[length(str)] = quote then
      delete(str, length(str), 1);
  end;
end;

function TPdxConvert.datestringToUnix(datestr : string) : integer;
var
  datetime : TDateTime;
  separatedFullStringList : TStringList;
  separatedDateStringList : TStringList;
  separatedTimeStringList : TStringList;
  year, month, day, hour, minute, second : integer;
begin
     separatedFullStringList := explode(datestr, ' ', 0);
     separatedDateStringList := explode(separatedFullStringList[0], '-', 0);
     separatedTimeStringList := explode(separatedFullStringList[0], ':', 0);
     if NOT (separatedDateStringList.Count = 3) OR (separatedTimeStringList.Count = 3) then
       exitAndClose('Corrupted DateTime value in database, can not continue.');
     year := StrToInt(separatedDateStringList[0]);
     month := StrToInt(separatedDateStringList[1]);
     day := StrToInt(separatedDateStringList[2]);
     hour := StrToInt(separatedTimeStringList[0]);
     minute := StrToInt(separatedTimeStringList[1]);
     second := StrToInt(separatedTimeStringList[2]);
     datetime := EncodeDateTime( year, month, day, hour, minute, second, 0);
     separatedFullStringList.Free;
     separatedDateStringList.Free;
     separatedTimeStringList.Free;
////DateTimeToUnix(read);
// 09/02/2000 at 05:06:07.008 (.008 milli-seconds)
//   myDate := EncodeDateTime(2000, 2, 9, 5, 6, 7, 8);
end;

var
  Application: TPdxConvert;
begin
  Application := TPdxConvert.Create(nil);
  Application.Run;
  Application.Free;
end.
