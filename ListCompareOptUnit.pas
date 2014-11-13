{$R+}
unit ListCompareOptUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, CheckLst, Buttons, myf_consts, ExtCtrls, myf_main,
  myf_lists;

type
  TfrmListCompareOpt = class(TForm)
    gb2: TGroupBox;
    btnOk: TSpeedButton;
    btnAbort: TSpeedButton;
    clbOptions: TCheckListBox;
    Label1: TLabel;
    cbIDs: TCheckBox;
    gb1: TGroupBox;
    cbHow: TComboBox;
    cbList1: TComboBox;
    lbl1: TLabel;
    cbList2: TComboBox;
    lblV1: TLabel;
    lblVHow: TLabel;
    lblV2: TLabel;
    Shape1: TShape;
    Label6: TLabel;
    Image2: TImage;
    lblInsg: TLabel;
    lbl2: TLabel;
    lblHow: TLabel;
    procedure clbOptionsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbIDsClick(Sender: TObject);
    procedure cbHowChange(Sender: TObject);
    procedure cbListChange(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    function CheckOk:boolean;
    { Private-Deklarationen }
  public
    ShowListAfterCreation : Boolean;
  end;

var
  frmListCompareOpt: TfrmListCompareOpt;

implementation

uses Unit1;

{$R *.lfm}

function TfrmListCompareOpt.CheckOk:boolean;
var
  i : integer;
begin
  result := false;
  if cbList1.ItemIndex = -1 then exit;
  with cbList2 do
    if Visible and ((ItemIndex=-1) or (ItemIndex = cbList1.ItemIndex)) then exit;
  if cbIDs.Checked then Result := True else
    with clbOptions do
      for i := 0 to Items.Count-1 do
        if Checked[i] then
        begin
          result := True;
          exit;
        end
end;

procedure TfrmListCompareOpt.clbOptionsClick(Sender: TObject);
begin
(*  with clbOptions do
    if Checked[4] then Checked[2] := true; *)
  btnOk.Enabled := CheckOk;
end;

procedure TfrmListCompareOpt.FormCreate(Sender: TObject);
var
  i : integer;
begin
  ShowListAfterCreation := False;
  with clbOptions do
  begin
    Items.commatext := str_compares;
    checked[0] := True;
    checked[1] := True;
    checked[2] := True;
  end;
  cbHow.ItemIndex := 0;

  with MyFiles3Form.lvLists.Items do
    for i:=0 to Count-1 do
      cbList1.Items.Add(TMyList(Item[i].Data).Caption);
  cbList2.Items.Assign(cbList1.Items);
end;

procedure TfrmListCompareOpt.cbIDsClick(Sender: TObject);
begin
  clbOptions.enabled := not cbIDs.Checked;
end;

procedure TfrmListCompareOpt.cbHowChange(Sender: TObject);
var
  isdup : boolean;
begin
  isdup := cbHow.ItemIndex = 0;
  lblHow.Visible := isdup; // doppelt
  lbl2.Visible := not isdup;
  lblV2.visible := not isdup;
  cbList2.visible := not isdup;
  cbIDs.enabled := not isdup;
  if isdup then cbIDs.Checked := False;
  if isdup then
    cbIDs.checked := false;
  if cbHow.ItemIndex = 3 then
  begin
    cbIDs.Enabled := False;
    clbOptions.Enabled := False;
  end else
    clbOptions.enabled := not cbIDs.Checked;
  btnOk.Enabled := CheckOk;
end;

procedure TfrmListCompareOpt.cbListChange(Sender: TObject);
begin
  btnOk.Enabled := CheckOk;
end;

procedure TfrmListCompareOpt.btnOkClick(Sender: TObject);
var
  IndexSpec : string;
  FirstList,
  SecondList,
  NewList   : TMyList;
  i         : Integer;
  modechar  : char;
const
  chars : array[0..3] of char = ('D','&','-','+');

begin
  { Index Spezifikationen für Listenvergleich erzeugen }
  if cbIDs.Checked then
    IndexSpec := '='
  else
    with TStringList.Create do
    try
      with clbOptions do
        for i := Items.Count-1 downto 0 do
          if Checked[i] then
            Add(Items[i]);
        IndexSpec := CommaText;
    finally
      Free;
    end;
  { Listen holen }
  FirstList := TMyList(MyFiles3Form.lvLists.Items[cbList1.ItemIndex].Data);
  if cbHow.ItemIndex <> 0 then
    SecondList := TMyList(MyFiles3Form.lvLists.Items[cbList2.ItemIndex].Data) else
      SecondList := nil;
  NewList := TMyList.Create;
  { Go, go, go! }
  try
    modechar := chars[cbHow.ItemIndex];
    case cbHow.ItemIndex of
      0 : begin
          NewList.Caption := 'Doppelt: '+FirstList.Caption;
          MyFiles3Form.StartWait(FirstList.Count*2-1,'');
          NewList.AddDoubleItems(FirstList, IndexSpec, MyFiles3Form.StepWait);
          end;
      1,2 : begin
          NewList.Caption := FirstList.Caption+' '+modechar+' '+SecondList.Caption;
          { - oder schon richtig rum? }
          if (FirstList.Count < SecondList.Count) or (modechar = '-') then
          begin
            MyFiles3Form.StartWait(FirstList.Count*2,'');
            NewList.AddCombinedItems(FirstList, SecondList, IndexSpec, cbHow.ItemIndex=1, MyFiles3Form.StepWait)
          end
            else { ggf. Vertauschen }
            begin
              MyFiles3Form.StartWait(SecondList.Count*2,'');
              NewList.AddCombinedItems(SecondList, FirstList, IndexSpec, cbHow.ItemIndex=1, MyFiles3Form.StepWait);
            end;
          end;
      3 : with NewList do
          begin
            NewList.Caption := FirstList.Caption+' + '+SecondList.Caption;
            MyFiles3Form.StartWait(2,'');
            AddItems(FirstList);
            MyFiles3Form.StepWait(Self);
            AddItems(SecondList);
            MyFiles3Form.StepWait(Self);
          end;
    end;
  except
    { I'm taking fire, need assistance }
    NewList.Free;
    MyFiles3Form.StopWait;
    raise;
  end;
  { Roger that }
  MyFiles3Form.StopWait;
  with NewList do
  begin
    Color := clWindowText;
    ListName := MyFiles3Form.MakeListName(Caption);
  end;
  with MyFiles3Form do
  begin
    pc1.ActivePage := tsListen;
    with lvLists.Items do
    begin
      for i := 0 to Count-1 do
        Item[i].Checked := False;
      with Add do
      begin
        Caption := NewList.Caption;
        SubItems.Add(Format('%.0n',[NewList.Count * 1.0]));
        Data := NewList;
        Checked := True;
  //      EditCaption;
      end;
    end;
    if ShowListAfterCreation then
    begin
      address := 'List:' + NewList.ListName;
      updateTV;
    end;
  end;
end;

{$R-}
end.

