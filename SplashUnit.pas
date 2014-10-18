
unit SplashUnit;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ComCtrls, UseFulPrcs, myf_consts, inilang;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    icB: TImage;
    Copyright: TLabel;
    Label1: TLabel;
    chvb1: TLabel;
    chvb2: TLabel;
    lblReg: TLabel;
    GroupBox1: TGroupBox;
    lblVers: TLabel;
    Label10: TLabel;
    mStats: TMemo;
    Bevel1: TBevel;
    Button1: TButton;
    bvl: TBevel;
    icF: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Timer1: TTimer;
    pb: TPaintBox;
    Image1: TImage;
    imgMyF: TImage;
    ProductName: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure pbPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CopyrightClick(Sender: TObject);
  private
    ic1, ic2: TIcon;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

uses Unit1, DataModule;

{$R *.DFM}

procedure TAboutBox.FormCreate(Sender: TObject);
var
  usecs: Int64;
  h, m: Int64;
  cols: integer;
  sl: TStringList;
  chick: string;

begin
  if CL <> nil then
    fillProps([self], CL);

  Copyright.caption := 'Copyright © 2000,01 by Alexander Menk';
  chick := '"' + Decrypt(#54 + #225 + #123 + #183 + #28 + #32 + #72 + #127 + #138, 25284) + '"';
  if Pos(chick, dm.regname) <> 0 then
  begin
    imgMyF.Visible := True;
    pb.Visible := False;
    Copyright.Visible := False;
    chvb1.Visible := False;
    chvb2.Visible := False;
    productname.visible := false;
    label10.visible := false;
    label4.visible := false;
    label3.visible := false;
    label5.visible := false;
    panel1.color := clWhite;
    label1.font.color := clNavy;
    lblReg.font.color := clBlue;
  end;
  ic1 := TIcon.Create;
  ic1.Handle := LoadIcon(hInstance, PChar(504));
  ic2 := TIcon.Create;
  ic2.Handle := LoadIcon(hInstance, PChar(505));

  if Screen.fonts.indexof('Verdana') <> -1 then
    with mStats.Font do
    begin
      Name := 'Verdana';
      Size := 7;
    end;
  with MainForm do
  begin
    ApplicationEventsDeactivate(nil);
    ApplicationEventsActivate(nil);
    usecs := strtoint64(ini.ReadString('Stats', 'UsageTime', '0'));
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

  with MainForm do
  begin
    mStats.Lines.Add(Format(misc(str_stat1, 'stat1'), [h * 1.0, m, usecs]));
    mStats.Lines.Add(Format(misc(str_stat2, 'stat2'), [cols * 1.0]));
    if curcol <> '' then
    begin
      mStats.Lines.Add(Format(misc(str_stat3, 'stat3'), [dm.tblDisks.RecordCount * 1.0]));
      mStats.Lines.Add(Format(misc(str_stat4, 'stat4'), [dm.tblFiles.RecordCount * 1.0]))
    end;
    if curlist <> '' then
      mStats.Lines.Add(Format(misc(str_stat5, 'stat5'), [thelist.Count * 1.0]));
    lblReg.Caption := dm.regname;
    lblVers.Caption := vers;
  end;
end;

procedure TAboutBox.FormClick(Sender: TObject);
begin
  Close;
end;

procedure TAboutBox.Timer1Timer(Sender: TObject);
begin
  timer1.Tag := timer1.Tag - 1;
  if timer1.Tag < -5 then timer1.Tag := 5;
  pb.refresh;
  timer1.Interval := 350;
end;

procedure TAboutBox.pbPaint(Sender: TObject);
var
  bm: TBitmap;
begin
  bm := TBitmap.Create;
  try
    bm.Width := pb.width;
    bm.Height := pb.height;
    with bm.Canvas do
    begin
      Brush.Color := Self.Color;
      fillrect(cliprect);
      draw(5 + abs(timer1.Tag), 1 + abs(timer1.Tag), ic2);
      draw(0, 15, ic1);
    end;
    pb.Canvas.draw(0, 0, bm);
  finally
    bm.Free;
  end;
end;

procedure TAboutBox.FormDestroy(Sender: TObject);
begin
  ic1.Free;
  ic2.Free;
end;

procedure TAboutBox.CopyrightClick(Sender: TObject);
begin
  copyright.caption := Decrypt(#67 + #75 + #112 + #142 + #81 + #230 + #85 + #219 + #128 + #250 + #86 + #185 + #19 + #180 + #199 + #223 + #35 + #188 + #37 + #247 + #1 + #80 + #216 + #141 + #198 + #135 + #87 + #128 + #168 + #47 + #191 + #66 + #177 + #247 + #213 + #211 + #44, 27); // Copyright © 2000,01 by Alexander Menk
end;

end.
