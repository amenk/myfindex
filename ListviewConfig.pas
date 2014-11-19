{$MODE OBJFPC}{$H+}
unit ListviewConfig;

interface

uses
  {$ifdef WINDOWS}Windows, {$else}{$endif}Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, CheckLst, myf_consts;

type
  TfrmListViewConfig = class(TForm)
    gb1: TGroupBox;
    clbCols: TCheckListBox;
    btnOk: TSpeedButton;
    btnAbort: TSpeedButton;
    gbOptions: TGroupBox;
    Label1: TLabel;
    cbSizeFmt: TComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmListViewConfig: TfrmListViewConfig;

implementation

uses Unit1;

{$R *.lfm}
(*
procedure TfrmListViewConfig.btnResetClick(Sender: TObject);
var
  i: integer;
begin
  with MainForm do
  begin
    with ini do
    begin
      for i := 1 to 3 do
        DeleteKey('GUI.ListView.Columns' + IntToStr(i));
      EraseSection('GUI.lvPZip');
      EraseSection('GUI.lvDriveState');
    end;
    CustListView(lvstyle + 64);
  end;
end;*)

procedure TfrmListViewConfig.FormCreate(Sender: TObject);
begin
  //
end;

end.