{$MODE OBJFPC}{$H+}
unit ExportOptUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls,
  CheckLst, IniFiles, ToolWin, FileUtil;

type
  TfrmListExport = class(TForm)
    btnOk: TSpeedButton;
    btnAbort: TSpeedButton;
    Shape1: TShape;
    Label8: TLabel;
    Image2: TImage;
    gb1: TGroupBox;
    cbList: TComboBox;
    PageControl1: TPageControl;
    tsSort: TTabSheet;
    tsFile: TTabSheet;
    TabSheet4: TTabSheet;
    rgFormat: TRadioGroup;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    imgGroup: TImage;
    imgCSV: TImage;
    imgList: TImage;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    Label9: TLabel;
    cbSection: TComboBox;
    mDef: TMemo;
    Label12: TLabel;
    edtDefaultExt: TEdit;
    cbDefFunctions: TComboBox;
    Label14: TLabel;
    cbCharset: TComboBox;
    gbCol1: TGroupBox;
    cbGroupCol: TCheckBox;
    cbHideCol: TCheckBox;
    GroupBox5: TGroupBox;
    fsbUp: TSpeedButton;
    fsbDown: TSpeedButton;
    Label15: TLabel;
    Label17: TLabel;
    gbCol2: TGroupBox;
    clbCols: TCheckListBox;
    Label10: TLabel;
    Label11: TLabel;
    cbExportTyp: TComboBox;
    chkDontOpen: TCheckBox;
    edtFileDesc: TEdit;
    GroupBox3: TGroupBox;
    ToolBar1: TToolBar;
    tbOpen: TToolButton;
    tbSave: TToolButton;
    sd: TSaveDialog;
    od: TOpenDialog;
    tsDesc: TTabSheet;
    mDesc: TMemo;
    chkReverse: TCheckBox;
    GroupBox1: TGroupBox;
    cbExpLayout: TComboBox;
    Label1: TLabel;
    lblPreset: TLabel;
    cbANSI: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure rgFormatClick(Sender: TObject);
    procedure mDefGenEnter(Sender: TObject);
    procedure mDefGenExit(Sender: TObject);
    procedure cbDefFunctionsChange(Sender: TObject);
    procedure clbColsClick(Sender: TObject);
    procedure fsbExcGenClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbHideColClick(Sender: TObject);
    procedure cbGroupColClick(Sender: TObject);
    procedure cbSortDescClick(Sender: TObject);
    procedure mDefChange(Sender: TObject);
    procedure cbSectionChange(Sender: TObject);
    procedure edtDefaultExtChange(Sender: TObject);
    procedure cbCharsetChange(Sender: TObject);
    procedure cbExportTypChange(Sender: TObject);
    procedure chkDontOpenClick(Sender: TObject);
    procedure edtFileDescChange(Sender: TObject);
    procedure tbSaveClick(Sender: TObject);
    procedure tbOpenClick(Sender: TObject);
    procedure mDescChange(Sender: TObject);
    procedure cbListChange(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure cbANSIChange(Sender: TObject);
  private
    FCurSet : TMemIniFile;
    iniCurCol : string;
    iniCurSct : string;
    procedure SetClbCols(order:string);
    procedure LoadTemplate(fn:string);
    { Private-Deklarationen }
  public
    property Settings: TMemIniFile read FCurSet;
    { Public-Deklarationen }
  end;

var
  frmListExport: TfrmListExport;

implementation

uses Unit1, myf_consts, myf_lists, UseFulPrcs;

{$R *.lfm}

procedure TfrmListExport.FormCreate(Sender: TObject);
var
  i : integer;
  dir : string;
begin
  FCurSet := TMemIniFile.Create('');
  cbDefFunctions.ItemIndex := 0;
  rgFormat.ItemIndex := 0;
  // Liste d. Spalten (Sortierungs Tab) laden
  SetClbCols('');
  dir := dir_templ;
  od.InitialDir := dir;
  sd.InitialDir := dir;
  LoadTemplate( dir + 'default.myt' );
  if not FileExistsUTF8(dir + 'default.myt' ) { *Converted from FileExists* } then
    tbOpenClick(nil);
  with MyFiles3Form.lvLists.Items do
    for i:=0 to Count-1 do
      cbList.Items.Add(TMyList(Item[i].Data).Caption);
end;

procedure TfrmListExport.LoadTemplate(fn:string);
begin
  FCurSet.Rename(fn,True);
  edtDefaultExt.Text := FCurSet.ReadString(ini_prop,'DefaultExt','.txt');
  edtFileDesc.Text := FCurSet.ReadString(ini_prop,'FileDesc','Text-Datei');
  cbCharset.ItemIndex := FCurSet.ReadInteger(ini_prop,'Charset',0);
  cbExportTyp.ItemIndex := FCurSet.ReadInteger(ini_prop,'ExportTyp',0);
  chkDontOpen.Checked := FCurSet.ReadBool(ini_prop,'DontOpen',false);
  rgFormat.ItemIndex := FCurSet.ReadInteger(ini_prop,'Typ',0);
  mDesc.Text := URLDecode(FCurSet.ReadString(ini_prop,'Desc',''));
  if mDesc.Text <> '' then ShowMessage(mDesc.Text);
  SetClbCols(FCurSet.ReadString('Columns', 'SortOrder', cl_filename));
  if FCurSet.ReadBool('Columns', 'SortANSI', True) then
    cbANSI.ItemIndex := 0 else cbANSI.ItemIndex := 1;
  cbSection.ItemIndex := -1;
  mDef.Lines.Clear;
  sd.FileName := fn;
  od.FileName := fn;
  lblPreset.Caption := ExtractFileName(ChangeFileExt(fn,''));  
  with cbSection.Items do
  begin
    Clear;
    Add(nSCT1); Add(nSCT2); Add(nSCT3Head); Add(nSCT3); Add(nSCT4);
    Add(nSCT4+'.'+cl_filename);
    Add(nSCT4+'.'+cl_size);
    Add(nSCT4+'.'+cl_typ);
    Add(nSCT4+'.'+cl_changed);
    Add(nSCT4+'.'+cl_note);
    Add(nSCT4+'.'+cl_prev);
    Add(nSCT4+'.'+cl_text);
    Add(nSCT4+'.'+cl_attr);
    Add(nSCT4+'.'+cl_disk);
    Add(nSCT4+'.'+cl_pfad);
  end;
end;

procedure TfrmListExport.SetClbCols(order:string);
var
  i : integer;
begin
  clbCols.Items.Clear;

  with clbCols do
  begin
    Items.CommaText := order;
    for i := 0 to Items.Count - 1 do
      Checked[i] := True;
    with Items do
      begin
      Add(cl_filename);
      Add(cl_size);
      Add(cl_typ);
      Add(cl_changed);
      Add(cl_note);
      Add(cl_prev);
      Add(cl_text);
      Add(cl_attr);
      Add(cl_disk);
      Add(cl_pfad);
      for i := 0 to MyFiles3Form.PlugIns.AllProps.Count - 1 do
        Add(cl_ptext+MyFiles3Form.PlugIns.AllProps[i]);
      end;
    { Duplikate beseitigen }
    for i := Items.Count - 1 downto 0 do
      if (Items.IndexOf(Items[i]) <> i) {or (Items.IndexOf('-'+Items[i]) <> -1)} then
        Items.Delete(i);
    clbColsClick(nil);
    end;

  FCurSet.WriteString('Columns', 'SortOrder', order);
end;

procedure TfrmListExport.rgFormatClick(Sender: TObject);
begin
  case rgFormat.ItemIndex of
    0 : // MyFiles-Liste (ungruppiert)
    begin
      imgList.Show;
      imgGroup.Hide;
      imgCSV.Hide;
      cbGroupCol.Enabled := False;
      SetClbCols(cl_filename);
    end;
    1 : // Gruppierte List (wie DIR)
    begin
      imgList.Hide;
      imgGroup.Show;
      imgCSV.Hide;
      cbGroupCol.Enabled := True;
      SetClbCols(cl_disk+','+cl_pfad+','+cl_filename);
    end;
    2 : // CSV
    begin
      imgList.Hide;
      imgGroup.Hide;
      imgCSV.Show;
      cbGroupCol.Enabled := False;
      SetClbCols('');
    end;
  end;
  FCurSet.WriteBool('Column.'+cl_disk,'Group',rgFormat.ItemIndex = 1);
  FCurSet.WriteBool('Column.'+cl_pfad,'Group',rgFormat.ItemIndex = 1);
  FCurSet.WriteBool('Column.'+cl_disk,'Hide',rgFormat.ItemIndex = 1);
  FCurSet.WriteBool('Column.'+cl_pfad,'Hide',rgFormat.ItemIndex = 1);
  FCurSet.WriteInteger(ini_prop,'Typ',rgFormat.ItemIndex);
end;

procedure TfrmListExport.mDefGenEnter(Sender: TObject);
begin
  cbDefFunctions.Enabled := True;
end;

procedure TfrmListExport.mDefGenExit(Sender: TObject);
begin
  cbDefFunctions.Enabled := ActiveControl = cbDefFunctions;
end;

procedure TfrmListExport.cbDefFunctionsChange(Sender: TObject);
begin
  with cbDefFunctions do
  begin
    if ItemIndex = 0 then Exit;
    mDef.SelText := Text;
    mDef.SetFocus;
    ItemIndex := 0;
  end;
end;

procedure TfrmListExport.clbColsClick(Sender: TObject);
begin
  with clbCols do
  begin
    fsbUp.Enabled := ItemIndex > 0;
    fsbDown.Enabled := ItemIndex < Items.Count-1;
    if ItemIndex <> -1 then
      iniCurCol := Format('Column.%s',[Items[ItemIndex]])
    else
      iniCurCol := '';
    cbHideCol.Checked := FCurSet.ReadBool(iniCurCol,'Hide',false);
    cbGroupCol.Checked := FCurSet.ReadBool(iniCurCol,'Group',false);
//    cbSortDesc.Checked := FCurSet.ReadBool(iniCurCol,'SortDesc',false);
    gbCol1.Enabled := iniCurCol <> '';
    gbCol2.Enabled := iniCurCol <> '';
  end;
end;

procedure TfrmListExport.fsbExcGenClick(Sender: TObject);
var
  i : integer;
begin
  with clbCols do
  begin
    if (Sender is TSpeedButton) then
      items.Exchange(ItemIndex,ItemIndex+(Sender as TSpeedButton).Tag);
    end;
  with TStringList.Create do
  try
    for i := 0 to clbCols.Items.Count-1 do
      if clbCols.Checked[i] then
        Add(clbCols.Items[i]);
    FCurSet.WriteString('Columns', 'SortOrder', CommaText);
  finally
    Free;
  end;
  clbColsClick(nil);
end;

procedure TfrmListExport.FormDestroy(Sender: TObject);
begin
  FCurSet.Free;
end;

procedure TfrmListExport.cbHideColClick(Sender: TObject);
begin
  FCurSet.WriteBool(iniCurCol,'Hide',cbHideCol.Checked);
end;

procedure TfrmListExport.cbGroupColClick(Sender: TObject);
begin
  FCurSet.WriteBool(iniCurCol,'Group',cbGroupCol.Checked);
end;

procedure TfrmListExport.cbSortDescClick(Sender: TObject);
begin
//  FCurSet.WriteBool(iniCurCol,'SortDesc',cbSortDesc.Checked);
end;

procedure TfrmListExport.mDefChange(Sender: TObject);
begin
  if mDef.Lines.Text = '' then
    FCurSet.DeleteKey(nSCT, iniCurSct) else
      FCurSet.WriteString(nSCT, iniCurSct, URLEncodeQuote(mDef.Lines.Text));
end;

procedure TfrmListExport.cbSectionChange(Sender: TObject);
begin
  iniCurSct := cbSection.Text;
  mDef.Lines.Text := URLDecode(FCurSet.ReadString(nSCT, iniCurSct, ''));
  mDef.Enabled := true;
  case cbSection.ItemIndex of
    0 : cbDefFunctions.Items.CommaText := vSCT1;
    1 : cbDefFunctions.Items.CommaText := vSCT2;
    2,3 : cbDefFunctions.Items.CommaText := vSCT3;
    else cbDefFunctions.Items.CommaText := vSCT4;
  end;
  cbDefFunctions.Items.Insert(0,'Funktionen:');
  cbDefFunctions.ItemIndex := 0;
end;

procedure TfrmListExport.edtDefaultExtChange(Sender: TObject);
begin
  FCurSet.WriteString(ini_prop,'DefaultExt',edtDefaultExt.Text);
end;

procedure TfrmListExport.cbCharsetChange(Sender: TObject);
begin
  FCurSet.WriteInteger(ini_prop,'Charset',cbCharset.ItemIndex);
end;

procedure TfrmListExport.cbExportTypChange(Sender: TObject);
begin
  FCurSet.WriteInteger(ini_prop,'ExportTyp',cbExportTyp.ItemIndex);
end;

procedure TfrmListExport.chkDontOpenClick(Sender: TObject);
begin
  FCurSet.WriteBool(ini_prop,'DontOpen',chkDontOpen.Checked);
end;

procedure TfrmListExport.edtFileDescChange(Sender: TObject);
begin
  FCurSet.WriteString(ini_prop,'FileDesc',edtFileDesc.Text);
end;

procedure TfrmListExport.tbSaveClick(Sender: TObject);
begin
  with sd do
    if Execute then
    begin
      FCurSet.Rename(FileName,false);
      FCurSet.UpdateFile;
      lblPreset.Caption := ExtractFileName(ChangeFileExt(FileName,''));
    end;
end;

procedure TfrmListExport.tbOpenClick(Sender: TObject);
begin
  with od do
    if Execute then
      LoadTemplate(FileName);
end;

procedure TfrmListExport.mDescChange(Sender: TObject);
begin
  FCurSet.WriteString(ini_prop,'Desc',URLEncodeQuote(mDesc.Text));
end;

procedure TfrmListExport.cbListChange(Sender: TObject);
begin
  btnOk.Enabled := cbList.ItemIndex <> -1;
end;

procedure TfrmListExport.btnOkClick(Sender: TObject);
begin
  if TMyList(MyFiles3Form.lvLists.Items[cbList.ItemIndex].Data).Count = 0 then
  begin
    Application.MessageBox('Die gewählte Liste ist leer.','Export',mb_iconerror or mb_ok);
    ModalResult := mrNone;
  end;
end;

procedure TfrmListExport.cbANSIChange(Sender: TObject);
begin
  FCurSet.WriteBool('Columns', 'SortANSI', cbANSI.ItemIndex = 0);
end;

end.






