unit DataModule;

{$MODE Delphi}

interface

uses
  {$ifdef WINDOWS}Windows, {$else}{$endif}Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, myf_main, UsefulPrcs, sqlite3conn, sqldb, Variants, FileUtil;

type

  { Tdm }

  Tdm = class(TDataModule)
    dsFiles: TDataSource;
    dsFolders: TDataSource;
    dsDisks: TDataSource;
    SQLite3Con: TSQLite3Connection;
    sqlqMedia: TSQLQuery;
    sqlqFiles: TSQLQuery;
    sqlqFolders: TSQLQuery;
    SQLTransact: TSQLTransaction;
    tblDisksDISKID: TIntegerField;
    tblDisksRead: TDateTimeField;
    tblDisksSize: TFloatField;
    tblFoldersFOLDERID: TIntegerField;
    tblFoldersFolder: TStringField;
    tblFoldersLevel: TSmallintField;
    tblFilesFOLDERID: TIntegerField;
    tblFilesChanged: TDateTimeField;
    tblFilesAttr: TSmallintField;
    tblFilesSize: TFloatField;
    tblFoldersHasSubFolders: TBooleanField;
    tblDisksNote: TBlobField;
    tblDisksLabel: TStringField;
    tblFilesFILEID: TIntegerField;
    tblFilesFileName: TMemoField;
    tblFilesNote: TBlobField;
    tblFilesTKind: TSmallintField;
    tblFilesBKind: TSmallintField;
    tblFilesTextPreview: TBlobField;
    tblFilesBinPreview: TBlobField;
    tblFoldersNote: TBlobField;
    tblFilesDISKID: TSmallintField;
    tblFilesEntryKind: TSmallintField;
    tblFoldersDISKID: TSmallintField;
    {//ToBeConverted database: TDatabase;}
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure SQLite3ConAfterConnect(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    procedure SaveChanges;
  end;

var
  dm: Tdm;

function MyGetItem(ID: TMyID): TMyItem;
function MyGetDisk(ID : TMyID):string;
function MyGetPath(ID : TMyID):string;
function dbCurrentID: TMyID;
function dbCurrentItem: TMyItem;
function dbCurrentDisk: TMyItem;
procedure dbSeekDisk(diskid:Integer; thelabel : string);

implementation

{$R *.lfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
var
  debug : string;
begin
  try
     CreateDirUTF8(GetAppConfigDir(false));
     SQLite3Con.DatabaseName := GetAppConfigDir(false) + 'media.sqlite';
     SQLTransact.DataBase := SQLite3Con;
     sqlqMedia.Transaction := SQLTransact;
     sqlqFiles.Transaction := SQLTransact;
     sqlqFolders.Transaction := SQLTransact;

     if not FileExistsUTF8(GetAppConfigDir(false) + 'media.sqlite') then
     begin
     sqlqMedia.SQL.Text :=
       'CREATE TABLE IF NOT EXISTS '+quotedstr('tblMedia')+' ('+
       quotedstr('MediaID') + ' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,'+
       quotedstr('Label')+ ' TEXT,'+
       quotedstr('Read') + ' INTEGER,'+
       quotedstr('Size') + ' INTEGER,'+
       quotedstr('Note') + ' TEXT)';
     debug := sqlqMedia.SQL.Text;
     sqlqMedia.ExecSQL;
     SQLTransact.Commit;

     sqlqFiles.SQL.Text:=
       'CREATE TABLE IF NOT EXISTS '+quotedstr('tblFiles') + ' ('+
       quotedstr('FileID') + ' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,'+
       quotedstr('DiskID') + ' INTEGER,'+
       quotedstr('FolderID') + ' INTEGER,'+
       quotedstr('FileName') + ' TEXT,'+
       quotedstr('EntryKind') + ' INTEGER,'+
       quotedstr('Changed') + ' INTEGER,'+
       quotedstr('Attr') + ' INTEGER,'+
       quotedstr('Size') + ' INTEGER,'+
       quotedstr('Note') + ' NUMERIC,'+
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
     end;
     sqlqMedia.close;
     sqlqMedia.PacketRecords := -1;
     sqlqMedia.SQL.Text := 'SELECT * FROM tblMedia';
     sqlqMedia.ExecSQL;
     SQLTransact.Commit;
     sqlqMedia.open;

     sqlqFiles.close;
     sqlqFiles.PacketRecords := -1;
     sqlqFiles.SQL.Text := 'SELECT * FROM tblFiles';
     sqlqFiles.ExecSQL;
     SQLTransact.Commit;
     sqlqFiles.Open;

     sqlqFolders.close;
     sqlqFolders.PacketRecords := -1;
     sqlqFolders.SQL.Text := 'SELECT * FROM tblFolders';
     sqlqFolders.ExecSQL;
     SQLTransact.Commit;
     sqlqFolders.Open;
  except
    on E: EDatabaseError do
    begin
      MessageDlg('Fehler', 'Ein Datenbankfehler ist aufgetreten. Technische Fehlermeldung: ' +
        E.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure Tdm.DataModuleDestroy(Sender: TObject);
begin
  sqlqMedia.Close;
  sqlqFiles.Close;
  sqlqFolders.Close;
  SQLite3Con.Close();
end;

procedure Tdm.SQLite3ConAfterConnect(Sender: TObject);
begin

end;

procedure Tdm.SaveChanges;
begin
  try
  if sqlqMedia.Active then
     sqlqMedia.ApplyUpdates;
  if sqlqFiles.Active then
     sqlqFiles.ApplyUpdates;
  if sqlqFolders.Active then
     sqlqFolders.ApplyUpdates;
  except
    on E: EDatabaseError do
    begin
      MessageDlg('Fehler', 'Ein Datenbankfehler ist aufgetreten. Technische Fehlermeldung: ' +
        E.Message, mtError, [mbOK], 0);
    end;
  end;
end;


{******** SCHNITTSTELLE ZUR DATENBANK ********}

function dbCurrentID: TMyID;
begin
    with Result, dm do
    begin
      diskid := tblFilesDISKID.Value;
      folderid := tblFilesFOLDERID.Value;
      fileid := tblFilesFILEID.Value;
    end;
end;

function dbCurrentItem: TMyItem;
begin
  try
    with dm, Result do
    begin
      Typ := tblFilesEntryKind.Value;
      Name := killzeros(tblFilesFileName.Value);
      Changed := tblFilesChanged.Value;
      Attr := tblFilesAttr.Value;
      try
        TextPreview := killzeros(tblFilesTextPreview.Value);
      except
        TextPreview := '';
      end;
      try
        Note := killzeros(tblFilesNote.Value);
      except
        Note := '';
      end;
      Size := trunc(tblFilesSize.AsFloat);
      ID := dbCurrentID;
    end;
  except
    Result.Name:='#### Datenbank Eintrag defekt ####';
    Result.Size := -1;
//    raise Exception.Create(Format('(dbCurrentItem) Dateieintrag defekt. Name (falls intakt): %s',[Result.Name]));
  end;
end;

function dbCurrentDisk: TMyItem;
begin
  with dm, Result do
  begin
    Typ := ek_disk;
    Name := tblDisksLabel.Value;
    Changed := tblDisksRead.Value;
    Attr := 0;
    TextPreview := '';
    Note := tblDisksNote.Value;
    Size := trunc(tblDisksSize.AsFloat);
    ID := MyID(tblDisksDISKID.Value,-1,-1);
  end;
end;

procedure dbSeekDisk(diskid:Integer; thelabel : string);
begin
  try
    if diskid = -1 then dm.sqlqMedia.IndexName := 'IdxLabel' else dm.sqlqMedia.IndexName := '';
    if diskid <> -1 then dm.sqlqMedia.Fields.FieldByName('tblDisksDISKID').AsInteger := diskid else //tblDisksDISKID.AsInteger := diskid else
      dm.sqlqMedia.Fields.FieldByName('tblDisksLabel').AsString := thelabel;
    if not dm.sqlqMedia.Locate('tblDisksDISKID;tblDisksLabel', VarArrayOf([diskid, thelabel]), []) then
      raise Exception.Create('dbSeekDisk: Datenträger nicht gefunden');
  except
    on E: EDatabaseError do
    begin
      MessageDlg('Fehler', 'Ein Datenbankfehler ist aufgetreten. Technische Fehlermeldung: ' +
        E.Message, mtError, [mbOK], 0);
    end;
  end;
end;
{ Sucht die entspr. ID in der tblFiles und füllt den Item-Datensatz }

function MyGetItem(ID: TMyID): TMyItem;
begin
  try
    if MyIDToStr(ID) <> MyIDToStr(dbCurrentID) then
    begin
      if not dm.sqlqFiles.Locate('tblFilesDISKID;tblFilesFOLDERID;tblFilesFILEID', VarArrayOf([ID.diskid, ID.folderid, ID.fileid]), []) then
        raise EMyIDError.Create('MyID ungültig');
    end;
    Result := dbCurrentItem;
  except
    on E: EDatabaseError do
    begin
      MessageDlg('Fehler', 'Ein Datenbankfehler ist aufgetreten. Technische Fehlermeldung: ' +
        E.Message, mtError, [mbOK], 0);
    end;
    on E:EMyIDError do raise
      else
        raise Exception.Create(Format('Dateieintrag defekt. Fehler bei ID(%d,%d,%d)',[ID.diskid,ID.folderid,ID.fileid]));
  end;
end;

function MyGetDisk(ID : TMyID):string;
begin
  if id.diskid = -1 then
  begin
    Result := '';
    Exit;
  end;
  dbSeekDisk(id.diskid, '');
  Result := dbCurrentDisk.Name;
end;

function MyGetPath(ID : TMyID):string;
begin
  try
    Result := dm.sqlqFolders.Lookup('FOLDERID', ID.folderid, 'Folder'); //tblFolders.LookUp('FOLDERID', ID.folderid, 'Folder');
  except
    raise Exception.Create(Format('Datenbank inkonsistent. Fehler bei ID(%d,%d,%d)',[ID.diskid,ID.folderid,ID.fileid]));
  end;
end;


end.
