unit SplashFUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, myf_consts, myf_main, UsefulPrcs;

type
  TSetLayeredWindowAttributes =  function (hwnd: HWND; crKey: LongInt;
bAlpha: Byte; dwFlags: LongInt): LongInt; stdcall;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmrCloseTimer(Sender: TObject);
  private
    SetLayeredWindowAttributes : TSetLayeredWindowAttributes;
    aHandle                    : integer;
    blend : integer;
    { Private-Deklarationen }
  public
    CloseReq : Boolean;
    procedure step;
    procedure Alpha(blend:Integer);
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

procedure TfrmSplash.Alpha(blend:Integer);
const
  WS_EX_LAYERED = $80000;
  LWA_ALPHA     = $2;
var
  l                          : LongInt;

begin
  //Win 2K and ME only, it makes the form partially transparent...
  if @SetLayeredWindowAttributes <> nil then
        begin
          l := GetWindowLong(Handle, GWL_EXSTYLE);
          l := l or WS_EX_LAYERED;
          SetWindowLong(Handle, GWL_EXSTYLE, l);
          SetLayeredWindowAttributes(Handle, 0, blend, LWA_ALPHA);
        end;
end;

procedure TfrmSplash.FormCreate(Sender: TObject);
var
  usecs : Int64;
  cols,h,m  : Integer;
  sl    : TStringList;

begin
  closereq := False;
  aHandle := LoadLibrary('user32.dll');
  if aHandle <> 0 then
    begin
      @SetLayeredWindowAttributes := GetProcAddress(aHandle,
'SetLayeredWindowAttributes');
      Alpha(0);
    end else @SetLayeredWindowAttributes := nil;

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
        Format(str_stat3, [dm.tblDisks.RecordCount * 1.0]) + #13#10 +
        Format(str_stat4, [dm.tblFiles.RecordCount * 1.0]);
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
  if aHandle <> 0 then
    FreeLibrary(aHandle);
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
    Alpha(blend);
  end;
end;

procedure TfrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
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
