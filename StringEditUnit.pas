unit StringEditUnit;

{$MODE Delphi}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, ShellApi, ComCtrls, UseFulPrcs,
  Buttons;

type
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
    procedure WMNCHITTEST(Var Msg: TWMNCHITTEST); message WM_NCHITTEST;
  public
    property Value:string read GetValue Write SetValue;
  protected
    procedure CreateParams(var Params : TCreateParams); override;
  end;

var
  frmStringEdit: TfrmStringEdit;

implementation

uses StringListEditUnit, myf_search, Unit1;

{$R *.lfm}

procedure TfrmStringEdit.WMNCHITTEST(Var Msg: TWMNCHITTEST);
var
  relp : TPoint;
begin
  Inherited;
  If Msg.Result = htClient Then
  Begin
    relp := pnlHead.ScreenToClient(Point(Msg.XPos,Msg.YPos));
    if PtInRect(Rect(0,0,pnlHead.Width,pnlHead.Height),relp) then
      Msg.Result:= htCaption;
  End;
end;

procedure TfrmStringEdit.CreateParams(var Params : TCreateParams);
begin
  Inherited Createparams(Params);
  with Params do
    Style := (Style or WS_POPUP) and not WS_DLGFRAME;
end;

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
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, 61458, 0);
end;

procedure TfrmStringEdit.FormCreate(Sender: TObject);
begin
  //
end;

end.
