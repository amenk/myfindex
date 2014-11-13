{$MODE OBJFPC}
unit NoRegUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  TNoRegForm = class(TForm)
    Shape1: TShape;
    Label8: TLabel;
    mLizenz: TMemo;
    btnOk: TSpeedButton;
    btnRegMe: TSpeedButton;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  NoRegForm: TNoRegForm;

implementation

{$R *.lfm}

end.
