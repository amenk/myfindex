unit DataModule;

{$MODE Delphi}

interface

uses
  {Windows, }Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, myf_main, UsefulPrcs, sqlite3conn, sqldb, Variants;

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
begin
  try
     SQLite3Con.DatabaseName := 'media.sqlite';
     SQLTransact.DataBase := SQLite3Con;
     sqlqMedia.Transaction := SQLTransact;
     sqlqFiles.Transaction := SQLTransact;
     sqlqFolders.Transaction := SQLTransact;

     sqlqMedia.SQL.Text :=
       'CREATE TABLE IF NOT EXISTS `tblMedia` ('+
       '`MediaID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,'+
       '`Label`	TEXT,'+
       '`Read`	INTEGER,'+
       '`Size`	REAL,'+
       '`Note`	TEXT'+#59;
     sqlqMedia.ExecSQL;
     SQLTransact.Commit;

     sqlqFiles.SQL.Text:=
       'CREATE TABLE IF NOT EXISTS `tblFiles` ('+
       '`FileID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,'+
       '`DiskID`	INTEGER,'+
       '`FolderID`	INTEGER,'+
       '`FileName`	TEXT,'+
       '`EntryKind`	INTEGER,'+
       '`Changed`	INTEGER,'+
       '`Attr`	INTEGER,'+
       '`Size`	REAL,'+
       '`Note`	NUMERIC,'+
       '`TKind`	INTEGER,'+
       '`BKind`	INTEGER,'+
       '`TextPreview`	TEXT,'+
       '`BinPreview`	BLOB'+#59;
     sqlqFiles.ExecSQL;
     SQLTransact.Commit;

     sqlqFolders.SQL.Text :=
       'CREATE TABLE IF NOT EXISTS `tblFolders` ('+
       '`FolderID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,'+
       '`Folder`	TEXT,'+
       '`Level`	INTEGER,'+
       '`HasSubFolders`	INTEGER,'+
       '`Note` TEXT,'+
       '`MediaID` INTEGER'+#59;
     sqlqFolders.ExecSQL;
     SQLTransact.Commit;

     sqlqMedia.SQL.Text :=
       'select if ('+
       '  exists('+
       '    select distinct index_name from information_schema.statistics'+
       '    where table_schema = `schema_db_name`'+
       '    and table_name = `tblMedia` and index_name like `IdxLabel`'+
       ')'+
       ',`select ``index IdxLabel exists`` _______;`'+
       ',`create index IdxLabel on tblMedia(column_name_names)`) into @a;'+
       'PREPARE stmt1 FROM @a;'+
       'EXECUTE stmt1;'+
       'DEALLOCATE PREPARE stmt1;';
     sqlqMedia.ExecSQL;
     SQLTransact.Commit;

     sqlqMedia.close;
     sqlqMedia.SQL.Text := 'SELECT * FROM tblMedia';
     sqlqMedia.open;

     sqlqFiles.close;
     sqlqFiles.SQL.Text := 'SELECT * FROM tblFiles';
     sqlqFiles.Open;

     sqlqFolders.close;
     sqlqFolders.SQL.Text := 'SELECT * FROM tblFolders';
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
