unit NoRegUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, FlatButton, XPMenu;

type
  TNoRegForm = class(TForm)
    Shape1: TShape;
    Label8: TLabel;
    mLizenz: TMemo;
    btnOk: TFlatButton;
    btnRegMe: TFlatButton;
    XPMenu: TXPMenu;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  NoRegForm: TNoRegForm;

implementation

{$R *.DFM}

end.
