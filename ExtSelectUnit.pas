{$MODE OBJFPC}{$H+}
unit ExtSelectUnit;

interface

uses
  {$ifdef WINDOWS}Windows, {$else}{$endif}Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Buttons;

type

  { TfrmExtSelect }

  TfrmExtSelect = class(TForm)
    pnlHead: TPanel;
    btnCancel: TSpeedButton;
    btnOK: TSpeedButton;
    lvListSel: TListView;
    procedure pnlHeadMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure pnlHeadMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnlHeadMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  end;

var
  frmExtSelect: TfrmExtSelect;
  {$ifndef windows}
  md :boolean;
  x0, y0 :integer;
  {$endif}

implementation

uses Unit1;

{$R *.lfm}

procedure TfrmExtSelect.pnlHeadMouseDown(Sender: TObject;
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

procedure TfrmExtSelect.FormCreate(Sender: TObject);
begin
  //
end;

procedure TfrmExtSelect.pnlHeadMouseMove(Sender: TObject; Shift: TShiftState;
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

procedure TfrmExtSelect.pnlHeadMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  {$ifndef windows}
  md := False;
  {$endif}
end;

end.