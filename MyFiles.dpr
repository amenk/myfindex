program MyFiles;

{%ToDo 'MyFiles.todo'}

uses
  Forms,
  IniFiles,
  SysUtils,
  Windows,
  ShellApi,
  ClipBrd,
  Registry,
  Unit1 in 'Unit1.pas' {MyFiles3Form},
  DataModule in 'DataModule.pas' {dm: TDataModule},
  ReadDiskUnit in 'ReadDiskUnit.pas' {frmReadDisk},
  UsefulPrcs in 'UsefulPrcs.pas',
  NewCollectionUnit in 'NewCollectionUnit.pas' {frmSammlung},
  NewListUnit in 'NewListUnit.pas' {frmNewList},
  ExportOptUnit in 'ExportOptUnit.pas' {frmListExport},
  ListCompareOptUnit in 'ListCompareOptUnit.pas' {frmListCompareOpt},
  myf_consts in 'myf_consts.pas',
  SetupUnit in 'SetupUnit.pas' {frmConfig},
  selfMP3Header in '..\..\Units\selfMP3Header.pas',
  ListviewConfig in 'ListviewConfig.pas' {frmListViewConfig},
  RepairUnit in 'RepairUnit.pas' {frmRepair},
  myf_lists in 'myf_lists.pas',
  SplashFUnit in 'SplashFUnit.pas' {frmSplash},
  myf_main in 'myf_main.pas',
  ExtSelectUnit in 'ExtSelectUnit.pas' {frmExtSelect},
  WaitForDiskUnit in 'WaitForDiskUnit.pas' {frmWaitForDisk},
  SysIconCache in 'SysIconCache.pas',
  NoRegUnit in 'NoRegUnit.pas' {NoRegForm},
  StringEditUnit in 'StringEditUnit.pas' {frmStringEdit},
  StringListEditUnit in 'StringListEditUnit.pas' {frmBegriffe},
  myf_search in 'myf_search.pas',
  myf_plugins in 'myf_plugins.pas',
  CopyToDisksUnit in 'CopyToDisksUnit.pas' {frmCopyDisksUsed};

//  NetUnit in 'NetUnit.pas' {NetForm};

{$R *.RES}

{TODO 2 -cFeature : eigenschaften bei mehreren Dateien
- es wäre wünschenswert, die eigenschaften von mehreren Selektierten Dateien gleichzeitig bearbeiten zu können}
{TODO 3 -cBug? : datenträger aktualisieren}
{TODO 4 -cBug : - im Props Scrollbox: Reihenfolge der Elemente verändert sich bei sichtbar / unsichtbar machen}
{TODO 4 -cFeature : kategorien in datenträgeransicht}
{TODO 4 -cSemiBug : listenexport, kombinierung, laden von großen dateilisten etc. abbrechbar machen}
{TODO 4 -cBug? : **** listenexport: (myfiles layout) hidden funzt nicht}
{TODO 4 : layout des vorschau-fensters speichern (sichtbare elemente)}
{TODO 5 -cRedesign : MyFiles 5 -> neues DBFormat}

var
  i : integer;
  s : string;
begin
  Randomize;

  Application.Initialize;

  for i := 1 to paramcount do // Parameter zusammenfügen
    s := s + ParamStr(i) + ' ';
  if Pos('//',s) = 1 then
    Delete(s, 1, 2);
  if Pos('myfiles:', lowercase(s)) = 1 then Delete(s, 1, 8);
  s := trim(s);
  if Copy(s,1,1) = '$' then
  begin
    regme(s);
    Exit;
  end;
  checkreg;


  Application.Title := 'MyFindex';
  Application.HintHidePause := 9000;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TMyFiles3Form, MyFiles3Form);
  Application.Run;
end.
