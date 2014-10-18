unit WaitForDiskUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FlatButton, ExtCtrls, gifimge2, XPMenu;

type
  TfrmWaitForDisk = class(TForm)
    gifimge21: Tgifimge2;
    Label5: TLabel;
    Shape2: TShape;
    fbCancel: TSpeedButton;
    Label1: TLabel;
    fbLWs: TSpeedButton;
    lblDisk: TLabel;
    mNote: TMemo;
    fbOK: TSpeedButton;
    procedure fbLWsClick(Sender: TObject);
    procedure fbOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmWaitForDisk: TfrmWaitForDisk;

implementation

uses Unit1;

{$R *.DFM}

procedure TfrmWaitForDisk.fbLWsClick(Sender: TObject);
begin
  MyFiles3Form.menColConfigClick(nil);
end;

procedure TfrmWaitForDisk.fbOKClick(Sender: TObject);
begin
  with MyFiles3Form do tmrDrivestateTimer(spUpdateDrv);
end;

procedure TfrmWaitForDisk.FormCreate(Sender: TObject);
begin
  MyFiles3Form.GimmeXP(Self);
end;

end.
