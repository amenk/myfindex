{$MODE OBJFPC}{$H+}
unit StringEditUnit;

interface

uses
  {$ifdef WINDOWS}Windows, ShellApi, {$else}{$endif}Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, UseFulPrcs,
  Buttons;

type

  { TfrmStringEdit }

  TfrmStringEdit = class(TForm)
    pnlHead: TPanel;
    btnCancel: TSpeedButton;
    btnOK: TSpeedButton;
    rbBegriffe: TRadioButton;
    rbWildcard: TRadioButton;
    rbRegExp: TRadioButton;
    pnlBegriffe: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnlWildcard: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    edtWildcard: TEdit;
    pnlRegExp: TPanel;
    Label5: TLabel;
    edtRegExp: TEdit;
    p1: TPanel;
    p2: TPanel;
    p3: TPanel;
    cedtAND: TEdit;
    cedtNOT: TEdit;
    Label6: TLabel;
    cedtOR: TEdit;
    lblSyntaxLink: TLabel;
    Label7: TLabel;
    tbLevel: TTrackBar;
    Label8: TLabel;
    Label9: TLabel;
    procedure pnlHeadMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnlHeadMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rbGenClick(Sender: TObject);
    procedure lblSyntaxLinkClick(Sender: TObject);
    procedure SetValue(Value : string);
    function GetValue:string;
    procedure pnlHeadMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
    FMode : ShortInt;
  public
    property Value:string read GetValue Write SetValue;
  end;

var
  frmStringEdit: TfrmStringEdit;
  {$ifndef windows}
  md :boolean;
  x0, y0 :integer;
  {$endif}

implementation

uses StringListEditUnit, myf_search, Unit1;

{$R *.lfm}

procedure TfrmStringEdit.SetValue(Value: string);
begin
  with TMySearchString.Create(Value) do
  try
    case mode of
      1 :
      begin
        rbGenClick(rbBegriffe);
        cedtAND.Text := ANDs.CommaText;
        cedtNOT.Text := NOTs.CommaText;
        cedtOR.Text := ORs.CommaText;
        tbLevel.Position := Lev;
      end;
      2 :
      begin
        rbGenClick(rbWildcard);
        edtWildcard.Text := SearchString;
      end;
      3 :
      begin
        rbGenClick(rbRegExp);
        edtRegExp.Text := SearchString;
      end;
    end;
  finally
    Free;
  end;
end;

function TfrmStringEdit.GetValue:string;
begin
  with TMySearchString.Create('') do
  try
    Mode := FMode;
    case FMode of
      1 :
      begin
        ANDs.CommaText := cedtAND.Text;
        NOTs.CommaText := cedtNOT.Text;
        ORs.CommaText := cedtOR.Text;
        Lev := tbLevel.Position;
      end;
      2 : SearchString := edtWildcard.Text;
      3 : SearchString := edtRegExp.Text;
    end;
    Result := Value;
  finally
    Free;
  end;
end;

procedure TfrmStringEdit.rbGenClick(Sender: TObject);
begin
  FMode := (Sender as TRadioButton).Tag;
  rbBegriffe.Checked := Sender = rbBegriffe;
  rbWildcard.Checked := Sender = rbWildcard;
  rbRegExp.Checked := Sender = rbRegExp;
  pnlBegriffe.Visible := False;
  pnlWildcard.Visible := False;
  pnlRegExp.Visible := False;
  pnlBegriffe.Visible := rbBegriffe.Checked;
  pnlWildcard.Visible := rbWildcard.Checked;
  pnlRegExp.Visible := rbRegExp.Checked;
  if Sender = rbBegriffe then
    ActiveControl := cedtOR else
    if Sender = rbWildcard then
      ActiveControl := edtWildcard else
      if Sender = rbRegExp then
        ActiveControl := edtRegExp;
  with pnlRegExp do
    if Visible then self.ClientHeight := Top + Height else
    with p3 do
      self.ClientHeight := Top + Height + 5;

end;

procedure TfrmStringEdit.pnlHeadMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  {$ifndef windows}
  md := False;
  {$endif}
end;

procedure TfrmStringEdit.pnlHeadMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  {$ifndef windows}
  if md then
  begin
    Left := Left - x0 + x;
    Top := Top - y0 + y;
  end;
  {$endif}
end;

{//ToBeConverted
procedure TfrmStringEdit.cedtButtonClick(Sender: TObject);
var
  MousePos : TPoint;
begin
  with TfrmBegriffe.Create(Self) do
  try
    GetCursorPos(MousePos);
    Left := MousePos.x - 5;
    Top := MousePos.y - 5;
    lbList.Items.CommaText := (Sender as TComboEdit).Text;
    if ShowModal = mrOK then
      (Sender as TComboEdit).Text := getspacetext(lbList.Items);
  finally
    Free;
  end;
end;
}
procedure TfrmStringEdit.lblSyntaxLinkClick(Sender: TObject);
begin
  {//ToBeConverted ShellExecute(Self.Handle, 'open', 'http://go.self-soft.de/?regexprsyntax', nil, nil, sw_shownormal);}
end;

procedure TfrmStringEdit.pnlHeadMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  {$ifdef windows}
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, 61458, 0);
  {$else}
  md := True;
  x0 := x;
  y0 := y;
  {$endif}
end;

procedure TfrmStringEdit.FormCreate(Sender: TObject);
begin
  //
end;

end.