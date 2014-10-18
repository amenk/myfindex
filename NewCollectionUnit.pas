unit NewCollectionUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, UseFulPrcs, myf_consts, FlatButton, XPMenu;

type
  TfrmSammlung = class(TForm)
    gb1: TGroupBox;
    edtName: TEdit;
    btnOk: TSpeedButton;
    btnAbort: TSpeedButton;
    gb2: TGroupBox;
    cbAutoUpdate: TCheckBox;
    edtDrives: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    cbIdent: TComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtDrivesKeyPress(Sender: TObject; var Key: Char);
    procedure btnOkClick(Sender: TObject);
    procedure Validate(Sender: TObject);
    procedure InitDrives;
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    col: string;
    { Public-Deklarationen }
  end;

var
  frmSammlung: TfrmSammlung;

implementation

uses Unit1;

{$R *.DFM}

procedure TfrmSammlung.SpeedButton1Click(Sender: TObject);
begin
(*  Application.messagebox(
  'Geben Sie in dieses Feld die Laufwerksbuchstaben der Laufwerke ein, '+
  'die die für diese '#13#10+
  'Sammlung in Frage kommenden (Wechsel-)Datenträger enthalten werden.'+#13#10+
  'In vielen Fällen wird/werden das Ihr/Ihre CD-ROM Laufwerk/Laufwerke sein.'
  +#13#10#13#10+
  'Beispiel: Eingabe von "DEF" um die Laufwerke D:, E: und F: zu überwachen',
  'Information',
  mb_ok or mb_iconinformation); *)
end;

procedure TfrmSammlung.edtDrivesKeyPress(Sender: TObject; var Key: Char);
begin
  if (Pos(uppercase(key), edtDrives.Text) <> 0) and
    (Pos(uppercase(key), edtDrives.SelText) = 0) then
  begin
    MessageBeep(0);
    Key := #0;
  end;
end;

procedure TfrmSammlung.btnOkClick(Sender: TObject);
var
  s, s2: string;
  i, res: integer;
  SR: TSearchRec;
  m: integer;
begin
  if col = '' then
  begin
    s := '';
    m := Length(edtName.Text);
    if m > 6 then m := 6;
    for i := 1 to m do
      if lowercase(edtName.Text[i])[1] in ['a'..'z', 'ä', 'ö', 'ü', 'ß', '0'..'9'] then
        s := s + lowercase(edtName.Text[i]);
    s2 := s;
    i := 1;
    while (s2 = '') or (MyFiles3Form.ini.ReadString('Collections', s2, '') <> '') do
    begin
      s2 := s + IntToStr(i);
      Inc(i);
    end;
  end else s2 := col;

  with MyFiles3Form.ini do
  begin
    WriteString(ini_collections, s2, edtName.Text);
    WriteString(ini_colpre + s2, 'Drives', edtDrives.Text);
    WriteBool(ini_colpre + s2, 'AutoUpdate', cbAutoUpdate.Checked);
  end;
  if col = '' then
  begin
    if not DirectoryExists(dir_db) then
      mkdir(dir_db);
    if not directoryexists(dir_db + s2) then
      mkdir(dir_db + s2);
    res := FindFirst(dir_rawdb + '*.*', $3F, SR);
    while res = 0 do
    begin
      copyfile(PChar(dir_rawdb + sr.Name), PChar(dir_db + s2 + '\' + sr.Name), true);
      res := FindNext(SR);
    end;
    FindClose(SR);
  end;
  col := s2;
end;

procedure TfrmSammlung.Validate(Sender: TObject);
begin
  btnOk.Enabled := (edtName.Text <> '');
end;

procedure TfrmSammlung.InitDrives;
var Drives: array[1..255] of char;
  LWListe: TStringList;
  i: byte;
  Len: DWord;
  s: string;
begin
  cbIdent.ItemIndex := 0;
  s := '';
  LWListe := TStringList.Create;
  try
    Len := GetLogicalDriveStrings(255, @Drives);
    for i := 1 to Len - 2 do
      if (i mod 4) = 1 then
        LWListe.Add(copy(Drives, i, 3));
    for i := 0 to LWListe.Count - 1 do
      if GetDriveType(PChar(LWListe[i])) in [DRIVE_CDROM] then
        s := s + upcase(LWListe[i][1]);
    edtDrives.Text := s;
  finally
    LWListe.Free;
  end;
end;


procedure TfrmSammlung.FormCreate(Sender: TObject);
begin
  MyFiles3Form.GimmeXP(Self);
end;

end.
