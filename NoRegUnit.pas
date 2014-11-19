{$MODE OBJFPC}{$H+}
unit NoRegUnit;

interface

uses
  {$ifdef WINDOWS}Windows, {$else}{$endif}Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
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