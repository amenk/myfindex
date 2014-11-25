{$MODE OBJFPC}{$H+}
unit NewListUnit;

interface

uses
  {$ifdef WINDOWS}Windows, ShlObj, {$else}{$endif}Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TfrmNewList = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtName: TEdit;
    btnOk: TBitBtn;
    btnAbort: TBitBtn;
    procedure edtNameKeyPress(Sender: TObject; var Key: Char);
    procedure edtNameChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmNewList: TfrmNewList;

implementation

uses Unit1;

{$R *.lfm}

procedure TfrmNewList.edtNameKeyPress(Sender: TObject; var Key: Char);
begin
  case Tag of
    0: if key in ['/', '\', ':', '*', '?', '<', '>', '|', '"'] then key := #0;
    1: if key in ['[', ']'] then key := #0;
  end;
end;

procedure TfrmNewList.edtNameChange(Sender: TObject);
var
  s: string;
begin
  if Tag = 0 then
    if Pos('.lst', lowercase(edtName.Text)) <> 0 then
    begin
      s := edtName.Text;
      Delete(s, Pos('.lst', lowercase(edtName.Text)), 4);
    end;
  btnOk.Enabled := edtName.Text <> '';
end;


procedure TfrmNewList.FormCreate(Sender: TObject);
begin
  //
end;

end.
