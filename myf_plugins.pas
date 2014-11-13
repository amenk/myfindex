{$MODE OBJFPC}
unit myf_plugins;

interface

uses Classes, Dialogs, SysUtils, Windows;

type
  TMyPlugin_getInterfaceVersion =  function : Integer; stdcall;
  TMyPlugin_Load = function (IniFile:PChar) : PChar; stdcall;
  TMyPlugin_UnLoad = function : integer; stdcall;
  TMyPlugin_getSupportedTypes = function : PChar; stdcall;
  TMyPlugin_getFields = function (ext: PChar) : PChar; stdcall;
  TMyPlugin_Config = function : Integer; stdcall;
  TMyPlugin_About = function : Integer; stdcall;
  TMyPlugin_Execute = function (ext,FileName, Buffer:PChar;BufSize:integer) : Integer; stdcall;

type
  EMyPluginError = class(Exception);

type
  TMyPlugin = class(TObject)
  private
    FfgetInterfaceVersion : TMyPlugin_getInterfaceVersion;
    FfLoad : TMyPlugin_Load;
    FfUnLoad : TMyPlugin_UnLoad;
    FfgetSupportedTypes : TMyPlugin_getSupportedTypes;
    FfgetFields : TMyPlugin_getFields;
    FfConfig : TMyPlugin_Config;
    FfAbout : TMyPlugin_About;
    FfExecute : TMyPlugin_Execute;
    FDLLHandle : THandle;
    FCaption,FID : string;
    FCanConfig, FCanAbout : Boolean;
    FTypes : TStringList;
    FFileName : string;
    procedure Init(const inifn:string);
    function GetFields(ByType : string): TStringList;
  public
    { Properties }
    property Caption: string read FCaption;
    property ID: string read FID;
    property FileName: string read FFileName;
    property CanConfig: Boolean read FCanConfig;
    property CanAbout: Boolean read FCanAbout;
    property Types: TStringList read FTypes;
    property Fields[ByType : string]:TStringList read GetFields;
    { Methods }
    constructor Create(const dll:string;const inifn:string);
    destructor Destroy; override;
    function Execute(const fn:string):string;
    procedure About;
    procedure Config;
    procedure AddAllFieldsTo(sl:TStringList);
  end;

type
  TMyPlugIns = class(TObject)
  private
    FPlugIns : TStringList;
    FAllProps : TStringList;
    function GetCount:integer;
    function GetItem(Index:Integer): TMyPlugin;
    function GetItemByID(PlugInName: string): TMyPlugin;
  public
    { Properties }
    property Items[Index: Integer]:TMyPlugin read GetItem; default;
    property Count:integer read GetCount;
    property AllProps: TStringList read FAllProps;
    property ByID[PlugInName:string]: TMyPlugin read GetItemByID;
    { Methods }
    constructor Create;
    destructor Destroy; override;
    procedure Add(PlugIn: TMyPlugIn);
    procedure Clear;
  end;

implementation

uses UsefulPrcs;

constructor TMyPlugins.Create;
begin
  FPlugIns := TStringList.Create;
  FAllProps := TStringList.Create;
  FAllProps.Sorted := True;
  FAllProps.Duplicates := dupIgnore;
end;

destructor TMyPlugins.Destroy;
begin
  Clear;
  FPlugIns.Free;
  FAllProps.Free;
end;

procedure TMyPlugins.Add(PlugIn: TMyPlugIn);
begin
  FPlugIns.AddObject(PlugIn.ID, PlugIn);
  PlugIn.AddAllFieldsTo(FAllProps);
end;

procedure TMyPlugins.Clear;
var
  i : integer;
begin
  for i := 0 to FPlugIns.Count-1 do
    try
      TObject(FPlugIns[i]).Free;
    except
    end;
  FPlugIns.Clear;
  FAllProps.Clear;
end;

function TMyPlugins.GetCount:integer;
begin
  Result := FPlugIns.Count;
end;

function TMyPlugins.GetItem(Index: Integer):TMyPlugin;
begin
  Result := TMyPlugin(FPlugIns.Objects[Index]);
end;

function TMyPlugins.GetItemByID(PlugInName : string):TMyPlugin;
var
  Index : Integer;
begin
  Index := FPlugIns.IndexOf(PlugInName);
  if Index = -1 then
    raise EMyPluginError.Create(Format('PlugIn-ID ''%s'' ist ungültig',[PlugInName]));
  Result := GetItem(Index);
end;

// Läd die PlugIn-DLL
constructor TMyPlugin.Create(const dll,inifn:string);
begin
  FFileName := dll;
  FDLLHandle := LoadLibrary(PChar(dll));
  if FDLLHandle < 32 then
    raise EMyPluginError.Create('Kann PlugIn-DLL ('+dll+') nicht laden.');
  FfgetInterfaceVersion := GetProcAddress(FDLLHandle, 'MyPlugin_getInterfaceVersion');
  FfLoad := GetProcAddress(FDLLHandle, 'MyPlugin_Load');
  FfUnLoad := GetProcAddress(FDLLHandle, 'MyPlugin_UnLoad');
  FfgetSupportedTypes := GetProcAddress(FDLLHandle, 'MyPlugin_getSupportedTypes');
  FfgetFields := GetProcAddress(FDLLHandle, 'MyPlugin_getFields');
  FfConfig := GetProcAddress(FDLLHandle, 'MyPlugin_Config');
  FfAbout := GetProcAddress(FDLLHandle, 'MyPlugin_About');
  FfExecute := GetProcAddress(FDLLHandle, 'MyPlugin_Execute');
  FTypes := TStringList.Create;
  Init(inifn);
end;

destructor TMyPlugin.Destroy;
var
  i : integer;
begin
  if Assigned(FTypes) then
  begin
    with FTypes do
      for i := 0 to Count-1 do
        Objects[i].Free;
    FTypes.Free;
  end;
  if Assigned(FfUnLoad) then
    FfUnLoad;
  if FDLLHandle > 31 then
    FreeLibrary(FDLLHandle);
end;

procedure TMyPlugin.Init(const inifn:string);
var
  infostr : string;
  i       : integer;
begin
  if not (Assigned(FfExecute) and Assigned(FfgetSupportedTypes) and Assigned(FfgetFields)) then
    EMyPluginError.Create('Execute, getSupportedTypes oder getFields nicht gefunden. Kein gültiges PlugIn.');
  if Assigned(FfLoad) then
    infostr := StrPas(FfLoad(PChar(inifn)))
  else raise EMyPluginError.Create('GetInfo nicht gefunden. Kein gültiges PlugIn.');
  if Length(infostr) < 7 then
    EMyPluginError.Create('GetInfo lieferte ungültigte Rückgabe.');
  FCanConfig := infostr[1] = 'C';
  FCanAbout := infostr[2] = 'A';
  FID := lowercase(Copy(infostr,3,5));
  FCaption := Copy(infostr,8,MaxInt);
  PCharToList(FfgetSupportedTypes,FTypes);
  with FTypes do
    for i := 0 to FTypes.Count-1 do
    begin
      Objects[i] := TStringList.Create;
      PCharToList(FfgetFields(PChar(Strings[i])),Objects[i] as TStringList);
    end;
end;

procedure TMyPlugin.About;
begin
  if FCanAbout and Assigned(FfAbout) then
    FfAbout
  else raise EMyPluginError.Create('About nicht verfügbar.');
end;

procedure TMyPlugin.Config;
begin
  if FCanConfig and Assigned(FfConfig) then
    FfConfig
  else raise EMyPluginError.Create('Config nicht verfügbar.');
end;

// Gibt die vom Plugin gelieferten Felder für den Dateityp "ByType" bzw.
function TMyPlugin.GetFields(ByType : string): TStringList;
var
  idx : Integer;
begin
  Idx := FTypes.IndexOf(ByType);
  if Idx = -1 then Result := nil else
    Result := FTypes.Objects[Idx] as TStringList;
//  raise EMyPluginError.Create(
//    Format('Dateityp ''%s'' wird von ''%s'' nicht unterstützt.',[ByType, FID]));
end;

procedure TMyPlugin.AddAllFieldsTo(sl:TStringList);
var
  i : Integer;
begin
  sl.Sorted := True;
  sl.Duplicates := dupIgnore;
  for i := 0 to FTypes.Count-1 do
    sl.AddStrings(TStringList(FTypes.Objects[i]));
end;

function TMyPlugin.Execute(const fn:string):string;
var
  sl : TStringList;
  ext : string;
  i : integer;
  Fields : TStringList;
  Buffer : array[0..1024] of char;
begin
  ext := lowercase(extractfileext(fn));
  sl := TStringList.Create;
  with sl do
  try
    Fields := GetFields(ext);
    if Assigned(Fields) then
    begin
      FfExecute(PChar(ext),PChar(fn),PChar(@Buffer[0]),SizeOf(Buffer));
      PCharToList(PChar(@Buffer),sl);
      with Fields do
        for i := 0 to Count - 1 do
          if i < sl.Count then sl[i] := Strings[i]+'='+sl[i] else break;
    end;
    Result := CommaText;
  finally
    sl.Free;
  end;
end;

end.
