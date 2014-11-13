{$MODE OBJFPC}
unit SysIconCache;

{ Copyright (C) 2001 by Alexander Menk, sw@alexander-menk.de }
{ SysIconCache }

interface

uses SysUtils, Classes, ShellApi, Windows, FileUtil;

const
  nocache = '\.exe\.ico\.lnk\.cur\.ani\';
  icDir = '<DIR>';


type
  EIconCacheError = class(Exception);

type
   TIconCache = class(TObject)
   private
     FList : TStringList;
     FTyp : string;
     FIconIndex : integer;
     FFileName : string;
     procedure SetFileName(Value:string);
     function GetIconIdx : integer;
     function GetTyp : string;
     procedure AskWindows(fname:string; cacheable:Boolean);     
   public
     property FileName:string read FFileName Write SetFileName;
     property IconIdx:integer read GetIconIdx;
     property Typ:string read GetTyp;
     constructor Create;
     destructor Destroy; override;
   end;


implementation

type
  TCacheItem = record
    IconIndex : Integer;
    Typ       : string;
  end;
  PCacheItem = ^TCacheItem;

{ Iconcache }

constructor TIconCache.Create;
begin
  FList := TStringList.Create;
end;

destructor TIconCache.Destroy;
var
  i : integer;
begin
  for i := 0 to FList.Count - 1 do
    Dispose(PCacheItem(FList.Objects[i]));
end;

function TIconCache.GetIconIdx:integer;
begin
  if FFileName <> '' then Result := FIconIndex else
    raise EIconCacheError.Create('kein FileName gesetzt.');
end;

function TIconCache.GetTyp:string;
begin
  if FFileName <> '' then Result := FTyp else
    raise EIconCacheError.Create('kein FileName gesetzt.');
end;

procedure TIconCache.SetFileName(Value:string);
var
  ext : string;
  idx : integer;
  cache : Boolean;
begin
  FFileName := Value;
  if Value <> icDir then
    ext := lowercase(ExtractFileExt(Value)) else ext := icDir;
  cache := Pos('\'+ext+'\',nocache) = 0;
  if (not cache) then
    if not FileExists(Value) then cache := True;

  if cache then
  begin
    idx := FList.IndexOf(ext);
    if idx = -1 then AskWindows(ext,true) else
    begin
      FIconIndex := PCacheItem(FList.Objects[idx])^.IconIndex;
      FTyp := PCacheItem(FList.Objects[idx])^.Typ;
    end;
  end else
  AskWindows(Value,False)
end;

procedure TIconCache.AskWindows(fname:string; cacheable:Boolean);
var
  Info: TSHFileInfo;
  Item: PCacheItem;
begin
  if not cacheable then { datei existiert }
  begin
    SHGetFileInfo(PChar(fname), 0, Info, SizeOf(TSHFileInfo), SHGFI_SYSIconIndex or SHGFI_TYPENAME);
    if Info.szTypeName = '' then
      FTyp := Copy( AnsiUppercase(extractfileext(fname)), 2, maxInt) + '-Datei' else
      FTyp := Info.szTypeName;
    FIconIndex := Info.iIcon;
  end
  else
  begin
    if fname = icDir then
      SHGetFileInfo(PChar(ParamStr(0)), FILE_ATTRIBUTE_DIRECTORY, Info, SizeOf(TSHFileInfo), SHGFI_USEFILEATTRIBUTES or SHGFI_SYSIconIndex or SHGFI_TYPENAME)
    else
      SHGetFileInfo(PChar('file'+fname), FILE_ATTRIBUTE_NORMAL, Info, SizeOf(TSHFileInfo), SHGFI_USEFILEATTRIBUTES or SHGFI_SYSIconIndex or SHGFI_TYPENAME);
    if Info.szTypeName = '' then
      FTyp := Copy( AnsiUppercase(extractfileext(fname)), 2, maxInt) + '-Datei' else
      FTyp := Info.szTypeName;
    FIconIndex := Info.iIcon;
    New(Item);
    item^.IconIndex := FIconIndex;
    item^.Typ := FTyp;
    FList.AddObject(fname, TObject(Item) );
  end;
end;


end.
