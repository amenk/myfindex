{$MODE OBJFPC}{$H+}
unit CopyToDisksUnit;

interface

uses
  {$ifdef WINDOWS}Windows, {$else}{$endif}Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TfrmCopyDisksUsed = class(TForm)
    Panel1: TPanel;
    lbDisks: TListBox;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmCopyDisksUsed: TfrmCopyDisksUsed;

implementation

{$R *.lfm}

end.
