unit SetupUnit;

{$MODE Delphi}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, JvSpin, Buttons, ComCtrls, myf_consts, Registry, ActiveX, ComObj,
  ShlObj, UseFulPrcs, CheckLst,
  myf_plugins, Mask, ExtCtrls, JvMaskEdit;


type
  TfrmConfig = class(TForm)
    btnOk: TSpeedButton;
    btnAbort: TSpeedButton;
    btnReset: TSpeedButton;
    tv: TTreeView;
    gb12: TGroupBox;
    ckProt: TCheckBox;
    ckStartMen: TCheckBox;
    gb1: TGroupBox;
    ckHist: TCheckBox;
    seHist: TSpinEdit;
    Label7: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    cbDefCol: TComboBox;
    gb11: TGroupBox;
    ckSplash: TCheckBox;
    lblHinweis: TLabel;
    Label15: TLabel;
    ckToolbarShowCaptions: TCheckBox;
    gb211: TGroupBox;
    Label13: TLabel;
    Label2: TLabel;
    seWidth: TSpinEdit;
    Label1: TLabel;
    seHeight: TSpinEdit;
    tbQual: TTrackBar;
    Label9: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    gb212: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    seDur: TSpinEdit;
    cbQual: TComboBox;
    edtParam: TEdit;
    Label10: TLabel;
    gb22: TGroupBox;
    clbPlugIns: TCheckListBox;
    fbAboutPlugin: TSpeedButton;
    fbConfigPlugin: TSpeedButton;
    lblNotLoad: TLabel;
    ckOfficeXP: TCheckBox;
    ckToolbarPicture: TCheckBox;
    ckOfficeXPGrad: TCheckBox;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Edit1: TEdit;
    Label18: TLabel;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    pnlColAv: TPanel;
    pnlColGray: TPanel;
    pnlColCache: TPanel;
    ColorDialog: TColorDialog;
    GroupBox3: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    sePrevWidth: TSpinEdit;
    sePrevHeight: TSpinEdit;
    Label23: TLabel;
    Label24: TLabel;
    GroupBox4: TGroupBox;
    cedtDisk: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    cedtFolder: TEdit;
    Label27: TLabel;
    cedtFile: TEdit;
    Label29: TLabel;
    ckFastSwitch: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure ckProtEnter(Sender: TObject);
    procedure ckProtClick(Sender: TObject);
    procedure tvChange(Sender: TObject; Node: TTreeNode);
    procedure fbAboutPluginClick(Sender: TObject);
    procedure clbPlugInsClick(Sender: TObject);
    procedure fbConfigPluginClick(Sender: TObject);
    procedure ckOfficeXPClick(Sender: TObject);
    procedure ColorPanelClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    procedure readini;
    procedure writeini;
    { Public-Deklarationen }
  end;

var
  frmConfig: TfrmConfig;

implementation

uses Unit1, myf_main, StringListEditUnit;

{$R *.lfm}

const
  IID_IPersistFile: TGUID = (D1: $0000010B; D2: $0000; D3: $0000; D4: ($C0, $00, $00, $00, $00, $00, $00, $46));

function CreateLink(lpszPathObj, lpszPathLink, lpszDesc: string): Boolean;
var psl: IShellLink;
  ppf: IPersistFile;
begin
  Result := false;
  if SUCCEEDED(CoCreateInstance(CLSID_ShellLink, nil, CLSCTX_INPROC_SERVER, IID_IShellLinkA, psl)) then begin
    psl.SetPath(PChar(lpszPathObj));
    psl.SetDescription(PChar(lpszDesc));
    if SUCCEEDED(psl.QueryInterface(IID_IPersistFile, ppf)) then begin
      ppf.Save(StringToOLEStr(lpszPathLink), TRUE);
      Result := true;
    end;
  end;
end; {CreateLink}

 // ---

procedure TfrmConfig.readini;
var
  sl: TStringList;
  i : integer;
begin
  with MyFiles3Form.ini do
  begin
    // myfiles: / startmen aus Registry lesen!
    with cbDefCol do
    begin
      sl := TStringList.Create;
      try
        ReadSection(ini_collections, sl);
        Items.assign(sl);
        Items.Insert(0, inival_def);
      finally
        sl.Free;
      end;
    end;
    with cbDefCol do
    begin
      ItemIndex := Items.indexOf(ReadString(ini_config, ini_startcol, inival_def));
      if ItemIndex = -1 then ItemIndex := 0;
    end;

    if isreg then
    begin
      ckSplash.Checked := ReadBool(ini_gui, ini_splash, true);
//      ckAds.Checked := ReadBool(ini_gui, ini_ads, false);
    end;

    with MyFiles3Form do
    begin
      pnlColAv.Font.Color := colAv;
      pnlColCache.Font.Color := colCache;
      pnlColGray.Font.Color := colGray;
    end;

    ckToolbarShowCaptions.Checked := ReadBool(ini_gui, ini_tbcaptions, True);
    ckOfficeXP.Checked := ReadBool(ini_gui, ini_xpmen, True);
    ckOfficeXPGrad.Checked := ReadBool(ini_gui, ini_xpgrad, false);
    ckToolbarPicture.Checked := ReadBool(ini_gui, ini_toolbg, false);
    ckOfficeXPGrad.Enabled := ckOfficeXP.Checked;

    seDur.Value := ReadInteger(ini_config, ini_ph_duration, 3);
    with cbQual do ItemIndex := Items.IndexOf(ReadString(ini_config, ini_ph_qual, '16kbps'));
    edtParam.Text := ReadString(ini_config, ini_ph_param, '--mp3input -m mono -a -b %0:s -o %1:s %2:s');
    seWidth.Value := ReadInteger(ini_config, ini_pb_width, 63);
    seHeight.Value := ReadInteger(ini_config, ini_pb_height, 63);
    sePrevWidth.Value := ReadInteger(ini_guilv, 'ThumbWidth', 64);
    sePrevHeight.Value := ReadInteger(ini_guilv, 'ThumbHeight', 64);

    cedtDisk.Text := ReadString(ini_props, 'Disk', 'Lagerort,Verliehen');
    cedtFolder.Text := ReadString(ini_props, 'Folder', '');
    cedtFile.Text := ReadString(ini_props, 'File', '');

    tbQual.Position := ReadInteger(ini_config, ini_pb_qual, 39);
    seHist.Value := ReadInteger(ini_config, ini_histlen, 27);
    ckHist.Checked := ReadBool(ini_config, ini_hperm, true);
    ckFastSwitch.Checked := ReadBool(ini_config, 'FastSwitch', false);

    { PlugIns }
    with MyFiles3Form.Plugins do
      for i := 0 to Count - 1 do
      begin
        clbPlugIns.Items.AddObject( TMyPlugIn(Items[i]).Caption , Items[i] );
        clbPlugIns.Checked[clbPlugIns.Items.Count-1] := True;
      end;
    sl := TStringList.Create;
    try
      sl.CommaText := ReadString(ini_plugins, ini_pidisabled, '');
      clbPlugIns.Items.AddStrings( sl );
    finally
      sl.Free;
    end;
  end;

  { Protocol }
  with TRegistry.Create do
  try
    RootKey := HKEY_CLASSES_ROOT;
    ckProt.Checked := KeyExists('\' + txt_protocol);
  finally
    Free;
  end;
  { Link }
  ckStartMen.Checked := FileExistsUTF8(SpecialDirectory(CSIDL_Startmenu) + txt_startm); { *Converted from FileExists* }
end;

procedure TfrmConfig.writeini;
var
  sl : TStringList;
  i  : integer;
begin
  with MyFiles3Form, ini do
  begin
    colAv := pnlColAv.Font.Color;
    colCache := pnlColCache.Font.Color;
    colGray := pnlColGray.Font.Color;

    WriteInteger(ini_colors,'OnDisk',colAv);
    WriteInteger(ini_colors,'Cached',colCache);
    WriteInteger(ini_colors,'Gray',colGray);

    if cbDefCol.ItemIndex = 0 then
      WriteString(ini_config, ini_startcol, inival_def) else
        WriteString(ini_config, ini_startcol, cbDefCol.Text);

    WriteBool(ini_gui, ini_splash, ckSplash.Checked );

    WriteBool(ini_gui, ini_xpmen, ckOfficeXP.Checked);
    WriteBool(ini_gui, ini_xpgrad, ckOfficeXPGrad.Checked);
    WriteBool(ini_gui, ini_toolbg, ckToolbarPicture.Checked);

//    WriteBool(ini_gui, ini_ads, ckAds.Checked);
    WriteBool(ini_gui, ini_tbcaptions, ckToolbarShowCaptions.Checked);
    WriteInteger(ini_config, ini_ph_duration, trunc(seDur.Value));
    WriteString(ini_config, ini_ph_qual, cbQual.Text);
    WriteString(ini_config, ini_ph_param, edtParam.Text);
    WriteInteger(ini_config, ini_pb_width, trunc(seWidth.Value));
    WriteInteger(ini_config, ini_pb_height, trunc(seHeight.Value));
    WriteInteger(ini_guilv, 'ThumbWidth', trunc(sePrevWidth.Value));
    WriteInteger(ini_guilv, 'ThumbHeight', trunc(sePrevHeight.Value));

    WriteString(ini_props, 'Disk', cedtDisk.Text);
    WriteString(ini_props, 'Folder', cedtFolder.Text);
    WriteString(ini_props, 'File', cedtFile.Text);

    WriteInteger(ini_config, ini_pb_qual, tbQual.Position);
    verlauf := trunc(seHist.Value);
    cbAdresse.Dropdowncount := verlauf;
    WriteInteger(ini_config, ini_histlen, verlauf);
    WriteBool(ini_config, ini_hperm, ckHist.Checked);
    WriteBool(ini_config, 'FastSwitch',  ckFastSwitch.Checked);    

    { Deaktivierte PlugIns }
    sl := TStringList.Create;
    try
      for i := 0 to clbPlugIns.Items.Count - 1 do
        if not clbPlugIns.Checked[i] then
        begin
          if Assigned(clbPlugins.Items.Objects[i]) then
            sl.Add( ExtractFileName( TMyPlugin( clbPlugins.Items.Objects[i] ).FileName) )
          else
            sl.Add( clbPlugins.Items[i] );
        end;
      sl.sort;
      WriteString(ini_plugins, ini_pidisabled, sl.CommaText);
    finally
      sl.Free;
    end;


  end;
 //else
//    begin { deinstallieren }
//      DeleteKey(txt_protocol);
//    end;
  if ckStartMen.Checked then
  begin
    if not FileExistsUTF8(SpecialDirectory(CSIDL_Startmenu) + txt_startm) { *Converted from FileExists* } then
      CreateLink(application.exename,
        SpecialDirectory(CSIDL_Startmenu) + txt_startm, 'MyFiles');
  end else
    DeleteFileUTF8(SpecialDirectory(CSIDL_Startmenu) + txt_startm); { *Converted from DeleteFile* }
end;

procedure TfrmConfig.FormCreate(Sender: TObject);
begin
  //
  tv.selected := tv.Items[0];
  readini;
  tv.FullExpand;
  ckSplash.Enabled := isreg;
//  ckAds.Enabled := isreg;
  lblHinweis.Visible := not isreg;
end;

procedure TfrmConfig.btnResetClick(Sender: TObject);
begin
  if Application.MessageBox(PChar(str_optreset), PChar(str_question),
    mb_iconquestion or mb_yesno or mb_defbutton2)
    <> idyes then Exit;
  MyFiles3Form.ini.EraseSection(ini_config);
  readini;
end;

procedure TfrmConfig.btnOkClick(Sender: TObject);
begin
  writeini;
end;

procedure TfrmConfig.ckProtEnter(Sender: TObject);
begin
  MyFiles3Form.quickinfo(9210);
end;

procedure TfrmConfig.ckProtClick(Sender: TObject);
begin
  ckProt.State := cbGrayed;
end;

procedure TfrmConfig.tvChange(Sender: TObject; Node: TTreeNode);
var
  i : integer;
begin
  for i := 0 to ControlCount-1 do
    if Controls[i] is TGroupBox then
      TGroupBox(Controls[i]).Visible := TGroupBox(Controls[i]).Tag = Node.StateIndex;
end;

procedure TfrmConfig.fbAboutPluginClick(Sender: TObject);
begin
  with clbPlugins do
    TMyPlugin(Items.Objects[ItemIndex]).About;
end;

procedure TfrmConfig.clbPlugInsClick(Sender: TObject);
var
  sel : TMyPlugin;
begin
  sel := TMyPlugin( clbPlugins.Items.Objects[clbPlugins.ItemIndex] );
  if Assigned(sel) then
  begin
    fbAboutPlugin.Enabled := sel.CanAbout;
    fbAboutPlugin.Visible := True;
    fbConfigPlugin.Enabled := sel.CanConfig;
    fbConfigPlugin.Visible := True;
    lblNotLoad.Hide;
  end else
  begin
    fbAboutPlugin.Visible := False;
    fbConfigPlugin.Visible := False;
    lblNotLoad.Show;
  end;
end;

procedure TfrmConfig.fbConfigPluginClick(Sender: TObject);
begin
  with clbPlugins do
    TMyPlugin(Items.Objects[ItemIndex]).Config;
end;

procedure TfrmConfig.ckOfficeXPClick(Sender: TObject);
begin
  ckOfficeXPGrad.Enabled := ckOfficeXP.Checked;
end;

procedure TfrmConfig.ColorPanelClick(Sender: TObject);
begin
  with Sender as TPanel do
  begin
    ColorDialog.Color := Font.Color;
    if ColorDialog.Execute then
      Font.Color := ColorDialog.Color;
  end;
end;
{//ToBeConverted
procedure TfrmConfig.cedtDiskButtonClick(Sender: TObject);
var
  MousePos : TPoint;
begin
  with TfrmBegriffe.Create(Self) do
  try
    GetCursorPos(MousePos);
    Left := MousePos.x - 5;
    Top := MousePos.y - 5;
    lbList.Items.CommaText := (Sender as TComboEdit).Text;
    pnlHead.Caption := 'Eigenschaften';
    if ShowModal = mrOK then
      (Sender as TComboEdit).Text := getspacetext(lbList.Items);
  finally
    Free;
  end;
end;
}
end.
