unit DataModule;

{$MODE Delphi}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Bde, myf_main, UsefulPrcs;

type
  Tdm = class(TDataModule)
    tblDisks: TTable;
    dsDisks: TDataSource;
    tblFolders: TTable;
    dsFiles: TDataSource;
    dsFolders: TDataSource;
    tblFiles: TTable;
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
  tblDisks.Active := False;
  tblFolders.Active := False;
  tblFiles.Active := False;
end;

procedure Tdm.SaveChanges;
begin
  dbiSaveChanges(tblFiles.Handle);
  dbiSaveChanges(tblFolders.Handle);
  dbiSaveChanges(tblDisks.Handle);
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
begin try
  with dm, tblDisks do
  begin
    if diskid = -1 then IndexName := 'IdxLabel' else IndexName := '';
    SetKey;
    if diskid <> -1 then tblDisksDISKID.AsInteger := diskid else
      tblDisksLabel.AsString := thelabel;
    if not GotoKey then
      raise Exception.Create('dbSeekDisk: Datenträger nicht gefunden');
  end;                                     except end;
end;
{ Sucht die entspr. ID in der tblFiles und füllt den Item-Datensatz }

function MyGetItem(ID: TMyID): TMyItem;
begin
  try
    with dm, tblFiles do
    begin
      if MyIDToStr(ID) <> MyIDToStr(dbCurrentID) then
      begin
        SetKey;
        with ID do
        begin
          tblFilesDISKID.Value := diskid;
          tblFilesFOLDERID.Value := folderid;
          tblFilesFILEID.Value := fileid;
        end;
        if not GotoKey then
          raise EMyIDError.Create('MyID ungültig');
      end;
      Result := dbCurrentItem;
    end;
  except
    on EMyIDError do raise
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
    Result := dm.tblFolders.LookUp('FOLDERID', ID.folderid, 'Folder');
  except
    raise Exception.Create(Format('Datenbank inkonsistent. Fehler bei ID(%d,%d,%d)',[ID.diskid,ID.folderid,ID.fileid]));
  end;
end;


end.
