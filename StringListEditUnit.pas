unit StringListEditUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FlatButton, ExtCtrls, XPMenu;

type
  TfrmBegriffe = class(TForm)
    pnlHead: TPanel;
    btnCancel: TFlatButton;
    btnOK: TFlatButton;
    lbList: TListBox;
    edtString: TEdit;
    fbDel: TFlatButton;
    fbAdd: TFlatButton;
    lblCount: TLabel;
    procedure fbAddClick(Sender: TObject);
    procedure fbDelClick(Sender: TObject);
    procedure edtStringKeyPress(Sender: TObject; var Key: Char);
    procedure lbListClick(Sender: TObject);
    procedure pnlHeadMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbListDblClick(Sender: TObject);
    procedure edtStringChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
    procedure updcount;
    procedure WMNCHITTEST(Var Msg: TWMNCHITTEST); message WM_NCHITTEST;
  public
  protected
    procedure CreateParams(var Params : TCreateParams); override;
  end;

var
  frmBegriffe: TfrmBegriffe;

implementation

uses Unit1;

{$R *.DFM}

procedure TfrmBegriffe.WMNCHITTEST(Var Msg: TWMNCHITTEST);
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

procedure TfrmBegriffe.CreateParams(var Params : TCreateParams);
begin
  Inherited Createparams(Params);
  with Params do
    Style := (Style or WS_POPUP) and not WS_DLGFRAME;
end;

procedure TfrmBegriffe.updcount;
var
  s : string;
begin
  if lbList.Items.Count <> 1 then s := 'e' else s := '';
  lblCount.Caption := Format('%.0n Begriff%s',[lbList.Items.Count * 1.0,s]);
end;

procedure TfrmBegriffe.fbAddClick(Sender: TObject);
begin
  lbList.Items.Add(edtString.Text);
  edtString.Text := '';
  edtString.SetFocus;
  updcount;
end;

procedure TfrmBegriffe.fbDelClick(Sender: TObject);
begin
  with lbList do Items.Delete(ItemIndex);
  fbDel.Enabled := lbList.ItemIndex <> -1;
  updcount;
end;

procedure TfrmBegriffe.edtStringKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    fbAddClick(nil);
  end;
end;

procedure TfrmBegriffe.lbListClick(Sender: TObject);
begin
  fbDel.Enabled := lbList.ItemIndex <> -1;
end;

procedure TfrmBegriffe.pnlHeadMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, 61458, 0);
end;

procedure TfrmBegriffe.lbListDblClick(Sender: TObject);
begin
  edtString.SetFocus;
end;

procedure TfrmBegriffe.edtStringChange(Sender: TObject);
begin
  fbAdd.Enabled := lbList.Items.IndexOf(edtString.Text) = -1;
end;

procedure TfrmBegriffe.FormShow(Sender: TObject);
begin
  btnOk.default := False;
  fbAdd.Enabled := lbList.Items.IndexOf(edtString.Text) = -1;
  updcount;
end;

procedure TfrmBegriffe.FormCreate(Sender: TObject);
begin
  MyFiles3Form.GimmeXP(Self);
end;

end.
