program PdxConvert;

{$mode objfpc}{$H+}

uses {$IFDEF UNIX} {$IFDEF UseCThreads}
  cthreads, {$ENDIF} {$ENDIF}
  Classes,
  SysUtils,
  CustApp,
  Paradox,
  sqlite3conn,
  sqldb,
  Db,
  FileUtil,
  dateutils;

type

  { TPdxConvert }

  TPdxConvert = class(TCustomApplication)
  protected
    pdx: TParadox;
    SQLite3Con: TSQLite3Connection;
    SQLTransact: TSQLTransaction;
    sqlqMedia, sqlqFolders, sqlqFiles : TSQLQuery;
    sourceDir, destDir: string;
    procedure DoRun; override;
  public
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
    procedure WriteHelp; virtual;
    function HasOption(Const C : Char; Const S : String) : Boolean;
    function GetOptionValue(Const C: Char; Const S : String) : String;
    procedure createSQLiteDBs;
    procedure insertMediaDataset(Const MediaID : Integer; Const strLabel : String; Const Read : TDateTime; Const Size : Double; Const Note : String);
    procedure insertFoldersDataset(Const Folder : String; Const MediaID : Integer; Const FolderID : Integer; Const Level : Integer; Const HasSubFolders : Integer; Const Note : String);
    procedure insertFilesDataset(Const MediaID : Integer; Const FolderID : Integer; Const FileID : Integer; Const FileName : String; Const EntryKind : Integer; Const Changed : TDateTime; Const Attr : Integer; Const Size : Double; Const Note : String; Const TKind : Integer; Const BKind : Integer; Const TextPreview : String; Const BinPreview : TBytes);
    function PrintBytes(const bytes: TBytes): string;
    procedure exitAndClose;
  end;

  { TPdxConvert }

  procedure TPdxConvert.DoRun;
  var
    ErrorMsg: string;
    I : Integer;
  begin
      {
      DllHandle := LoadLibrary('pxlib.dll');
      if DllHandle = 0 then
        WriteLn(SysErrorMessage(GetLastOSError))
      else
        WriteLn('Successfully loaded');
      }
  pdx := TParadox.Create(self);
  SQLite3Con := TSQLite3Connection.Create(self);
  SQLTransact := TSQLTransaction.Create(self);
  sqlqMedia := TSQLQuery.Create(self);
  sqlqFolders := TSQLQuery.Create(self);
  sqlqFiles := TSQLQuery.Create(self);


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
       exitAndClose;
  end;

  if HasOption('d', 'destination') then begin
      destDir := GetOptionValue('d', 'destination');
      if not DirectoryExistsUTF8(destDir + PathDelim) then begin
          ErrorMsg := 'New database folder does not exist.';
          WriteLn(ErrorMsg);
          exitAndClose;
      end;
  end
  else
  begin
       WriteHelp;
       exitAndClose;
  end;

  if FileExists(sourceDir + PathDelim + 'disks.DB') AND
     FileExists(sourceDir + PathDelim + 'disks.MB') AND
     FileExists(sourceDir + PathDelim + 'disks.DB') AND
     FileExists(sourceDir + PathDelim + 'disks.XG0') AND
     FileExists(sourceDir + PathDelim + 'disks.YG0') AND
     FileExists(sourceDir + PathDelim + 'disks.YG0') AND
     FileExists(sourceDir + PathDelim + 'files.DB') AND
     FileExists(sourceDir + PathDelim + 'files.MB') AND
     FileExists(sourceDir + PathDelim + 'files.PX') AND
     FileExists(sourceDir + PathDelim + 'folders.DB') AND
     FileExists(sourceDir + PathDelim + 'folders.MB') AND
     FileExists(sourceDir + PathDelim + 'folders.PX') then begin
         pdx.Close;

         pdx.FileName := sourceDir + PathDelim + 'disks.DB';
         pdx.Open;
         createSQLiteDBs;
         while NOT pdx.EOF do begin
             insertMediaDataset(pdx.Fields[0].AsInteger, pdx.Fields[1].AsString, pdx.Fields[2].AsDateTime, pdx.Fields[3].AsInteger, pdx.Fields[4].AsString);
             pdx.Next;
         end;
         pdx.Close;

         pdx.FileName := sourceDir + PathDelim + 'folders.DB';
         pdx.open;
         while NOT pdx.EOF do begin
               insertFoldersDataset(pdx.Fields[0].AsString, pdx.Fields[1].AsInteger, pdx.Fields[2].AsInteger, pdx.Fields[3].AsInteger, pdx.Fields[4].AsInteger, pdx.Fields[5].AsString);
               pdx.Next;
         end;
         pdx.Close;

         pdx.FileName := sourceDir + PathDelim + 'files.DB';
         pdx.open;
         {
         pdx.Filter := '';
         pdx.TargetEncoding:='UTF-8';
         pdx.Filtered:=false;}
         WriteLn(pdx.BlobFileName);
         while NOT pdx.EOF do begin
             insertFilesDataset(pdx.Fields[0].AsInteger, pdx.Fields[1].AsInteger, pdx.Fields[2].AsInteger, pdx.Fields[3].AsString, pdx.Fields[4].AsInteger, pdx.Fields[5].AsDateTime, pdx.Fields[6].AsInteger, pdx.Fields[7].AsFloat, pdx.Fields[8].AsString, pdx.Fields[9].AsInteger, pdx.Fields[10].AsInteger, pdx.Fields[11].AsString, pdx.Fields[12].AsBytes);
             PrintBytes(pdx.Fields[3].AsBytes);
             ReadLn;
             pdx.next;
         end;
         pdx.Close;
     end else begin
         ErrorMsg := 'Files missing for conversion.';
         WriteLn(ErrorMsg);
         exitAndClose;
     end;

  // parse parameters
  if HasOption('h','help') then begin
    WriteHelp;
    exitAndClose;
  end;

    // stop program loop
    exitAndClose;
  end;

  constructor TPdxConvert.Create(TheOwner: TComponent);
  begin
    inherited Create(TheOwner);
    StopOnException := True;
  end;

  destructor TPdxConvert.Destroy;
  begin
    inherited Destroy;
  end;

  procedure TPdxConvert.exitAndClose;
  begin
    if NOT (pdx = nil) then begin
       pdx.Close;
       pdx.Free;
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
    Terminate;
    Exit;
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

function TPdxConvert.HasOption(Const C : Char; Const S : String) : Boolean;
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

function TPdxConvert.GetOptionValue(Const C: Char; Const S : String) : String;
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

procedure TPdxConvert.insertFilesDataset(Const MediaID : Integer; Const FolderID : Integer; Const FileID : Integer; Const FileName : String; Const EntryKind : Integer; Const Changed : TDateTime; Const Attr : Integer; Const Size : Double; Const Note : String; Const TKind : Integer; Const BKind : Integer; Const TextPreview : String; Const BinPreview : TBytes);
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
   sqlqFiles.FieldByName('MediaID').AsInteger := MediaID;
   sqlqFiles.FieldByName('FolderID').AsInteger := FolderID;
   sqlqFiles.FieldByName('FileName').AsString := FileName;
   sqlqFiles.FieldByName('EntryKind').AsInteger := EntryKind;
   sqlqFiles.FieldByName('Changed').AsInteger := DateTimeToUnix(Changed);
   sqlqFiles.FieldByName('Attr').AsInteger := Attr;
   sqlqFiles.FieldByName('Size').AsFloat := Size;
   sqlqFiles.FieldByName('Note').AsString := Note;
   sqlqFiles.FieldByName('TKind').AsInteger := TKind;
   sqlqFiles.FieldByName('BKind').AsInteger := BKind;
   sqlqFiles.FieldByName('TextPreview').AsString := TextPreview;
   sqlqFiles.FieldByName('BinPreview').AsBytes := BinPreview;

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

procedure TPdxConvert.insertMediaDataset(Const MediaID : Integer; Const strLabel : String; Const Read : TDateTime; Const Size : Double; Const Note : String);
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
   sqlqMedia.FieldByName('MediaID').AsInteger := MediaID;
   sqlqMedia.FieldByName('Label').AsString := strLabel;
   sqlqMedia.FieldByName('Read').AsInteger := DateTimeToUnix(Read);
   sqlqMedia.FieldByName('Size').AsFloat := Size;
   sqlqMedia.FieldByName('Note').AsString := Note;

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

procedure TPdxConvert.insertFoldersDataset(Const Folder : String; Const MediaID : Integer; Const FolderID : Integer; Const Level : Integer; Const HasSubFolders : Integer; Const Note : String);
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
   sqlqFolders.FieldByName('FolderID').AsInteger := FolderID;
   sqlqFolders.FieldByName('Folder').AsString := Folder;
   sqlqFolders.FieldByName('Level').AsInteger := Level;
   sqlqFolders.FieldByName('HasSubFolders').AsInteger := HasSubFolders;
   sqlqFolders.FieldByName('Note').AsString := Note;
   sqlqFolders.FieldByName('MediaID').AsInteger := MediaID;

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
     quotedstr('Attr') + ' INTEGER,'+
     quotedstr('Size') + ' REAL,'+
     quotedstr('Note') + ' TEXT,'+
     quotedstr('TKind') + ' INTEGER,'+
     quotedstr('BKind') + ' INTEGER,'+
     quotedstr('TextPreview') + ' TEXT,'+
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

function TPdxConvert.PrintBytes(const bytes: TBytes): string;
var
  i : integer;
begin
  for i := 0 to length(bytes) - 1 do begin
    WriteLn(IntToStr(bytes[i]));
  end;
end;

var
  Application: TPdxConvert;
begin
  Application := TPdxConvert.Create(nil);
  Application.Run;
  Application.Free;
end.
