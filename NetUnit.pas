unit NetUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FlatButton, OleCtrls, SHDocVw, ExtCtrls;

type
  TNetForm = class(TForm)
    web: TWebBrowser;
    Panel1: TPanel;
    Image1: TImage;
    Shape2: TShape;
    Label5: TLabel;
    Label1: TLabel;
    FlatButton1: TSpeedButton;
    FlatButton3: TSpeedButton;
    FlatButton4: TSpeedButton;
    FlatButton5: TSpeedButton;
    FlatButton6: TSpeedButton;
    FlatButton7: TSpeedButton;
    FlatButton2: TSpeedButton;
    procedure FlatButton6Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  NetForm: TNetForm;

implementation

{$R *.DFM}

procedure TNetForm.FlatButton6Click(Sender: TObject);
begin
  web.navigate('http://self.formativ.net/');
end;

end.
