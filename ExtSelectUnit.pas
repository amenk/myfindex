unit ExtSelectUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FlatButton, ExtCtrls, ComCtrls, XPMenu;

type
  TfrmExtSelect = class(TForm)
    pnlHead: TPanel;
    btnCancel: TFlatButton;
    btnOK: TFlatButton;
    lvListSel: TListView;
    procedure pnlHeadMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
    procedure WMNCHITTEST(Var Msg: TWMNCHITTEST); message WM_NCHITTEST;
  public
  protected
    procedure CreateParams(var Params : TCreateParams); override;
    { Public-Deklarationen }
  end;

var
  frmExtSelect: TfrmExtSelect;

implementation

uses Unit1;

{$R *.DFM}

procedure TfrmExtSelect.WMNCHITTEST(Var Msg: TWMNCHITTEST);
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

procedure TfrmExtSelect.CreateParams(var Params : TCreateParams);
begin
  Inherited Createparams(Params);
  with Params do
    Style := (Style or WS_POPUP) and not WS_DLGFRAME;
end;

procedure TfrmExtSelect.pnlHeadMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, 61458, 0);
end;

procedure TfrmExtSelect.FormCreate(Sender: TObject);
begin
  MyFiles3Form.GimmeXP(Self);
end;

end.
