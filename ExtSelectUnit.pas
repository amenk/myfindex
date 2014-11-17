{$MODE OBJFPC}{$H+}
unit ExtSelectUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Buttons;

type
  TfrmExtSelect = class(TForm)
    pnlHead: TPanel;
    btnCancel: TSpeedButton;
    btnOK: TSpeedButton;
    lvListSel: TListView;
    procedure pnlHeadMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
  end;

var
  frmExtSelect: TfrmExtSelect;

implementation

uses Unit1;

{$R *.lfm}

procedure TfrmExtSelect.pnlHeadMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, 61458, 0);
end;

procedure TfrmExtSelect.FormCreate(Sender: TObject);
begin
  //
end;

end.
