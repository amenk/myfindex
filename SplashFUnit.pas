{$MODE OBJFPC}{$H+}
unit SplashFUnit;

interface

uses
  {$ifdef WINDOWS}Windows, {$else}{$endif}Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, myf_consts, myf_main, UsefulPrcs;

type
  TfrmSplash = class(TForm)
    imgSplash: TImage;
    lblReg1: TLabel;
    Label2: TLabel;
    lblVers1: TLabel;
    Label6: TLabel;
    lblMainStat: TLabel;
    lblVers2: TLabel;
    lblReg2: TLabel;
    lblColStat: TLabel;
    imgHina: TImage;
    img: TImage;
    tmrFade: TTimer;
    tmrClose: TTimer;
    procedure imgSplashClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tmrFadeTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var caAction: TCloseAction);
    procedure tmrCloseTimer(Sender: TObject);
  private
    aHandle                    : integer;
    blend : integer;
    { Private-Deklarationen }
  public
    CloseReq : Boolean;
    procedure step;
    { Public-Deklarationen }
  end;

var
  frmSplash: TfrmSplash;

implementation

uses Unit1, DataModule;

{$R *.lfm}

procedure TfrmSplash.imgSplashClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSplash.Step;
begin
  with lblColStat do
    Caption := Caption + '.';
  Application.ProcessMessages;
end;

procedure TfrmSplash.FormCreate(Sender: TObject);
var
  usecs : Int64;
  cols,h,m  : Integer;
  sl    : TStringList;

begin
  closereq := False;

  { Statistische Daten auslesen }
  with MyFiles3Form do
  begin
    { UsageTime }
    ApplicationEventsDeactivate(nil);
    ApplicationEventsActivate(nil);
    usecs := strtoint64(ini.ReadString('Stats', 'UsageTime', '0'));
    { Sammlungen }
    sl := TStringList.Create;
    try
      ini.ReadSectionValues('Collections', sl);
      cols := sl.Count;
    finally
      sl.Free;
    end;
  end;

  if usecs >= 60 * 60 then
  begin
    h := usecs div (60 * 60);
    Dec(usecs, h * 60 * 60);
  end else h := 0;
  if usecs >= 60 then
  begin
    m := usecs div 60;
    Dec(usecs, m * 60);
  end else m := 0;

  with MyFiles3Form do
  begin
    lblMainStat.Caption := 
      Format(str_stat1, [h * 1.0, m, usecs]) + #13#10 +
      Format(str_stat2, [cols * 1.0]);
    if curcol <> '' then
      lblColStat.Caption :=
        'Sammlung '''+curcol+''':' + #13#10 +
        Format(str_stat3, [dm.sqlqMedia.RecordCount * 1.0]) + #13#10 +
        Format(str_stat4, [dm.sqlqFiles.RecordCount * 1.0]);
    with lblColStat do
      Caption := Caption + #13#10 +
        Format(str_stat5, [lvLists.Items.Count * 1.0]);
    lblVers1.Caption := vers;
    lblVers2.Caption := vers;
  end;
  lblReg1.Caption := regname;
  lblReg2.Caption := regname;

  with img.Picture.Bitmap do
  begin
    Width := Self.Width;
    Height := Self.Height;
    Canvas.Draw(0,0,imgSplash.Picture.Graphic);

    if Pos(Decrypt(#88+#177+#187+#142+#2+#19+#97+#217+#252,3235),  // The Küken
      regname) <> 0 then
      Canvas.Draw(imgHina.Left,imgHina.Top,imgHina.Picture.Graphic)
  end;
end;

procedure TfrmSplash.FormDestroy(Sender: TObject);
begin
  {$ifdef windows}
  if aHandle <> 0 then
    FreeLibrary(aHandle);
  {$endif}
end;


procedure TfrmSplash.tmrFadeTimer(Sender: TObject);
begin
  if tmrFade.Interval = 500 then Close else
  begin
    Inc(blend,25);
    if blend > 255 then
    begin
      blend := 255;
      if CloseReq then tmrFade.Interval := 500 else tmrFade.Enabled := False;
    end;
  end;
end;

procedure TfrmSplash.FormClose(Sender: TObject; var caAction: TCloseAction);
begin
  caAction := caFree;
  MyFiles3Form.splash := nil;
end;

procedure TfrmSplash.tmrCloseTimer(Sender: TObject);
begin
  if CloseReq then Close else
  begin
    CloseReq := True;
    tmrClose.Interval := 250;
  end;
end;

end.
