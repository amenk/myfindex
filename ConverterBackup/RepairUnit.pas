unit RepairUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons,  DB, TUtil32, BDE, DBTables, myf_consts,
  ShellApi;

type
  TBDEUtil = class
    CbInfo: TUVerifyCallback;
    TUProps: CURProps;
    hDb: hDBIDb;
    vhTSes: hTUSes;
    constructor Create;
    destructor Destroy; override;
    function GetTCursorProps(szTable: String): Boolean;
    procedure RegisterCallBack;
    procedure UnRegisterCallBack;
  end;

type
  TfrmRepair = class(TForm)
    gb1: TGroupBox;
    Label1: TLabel;
    btnOk: TBitBtn;
    btnAbort: TBitBtn;
    cbCol: TComboBox;
    gb2: TGroupBox;
    pb: TProgressBar;
    lblFile_: TLabel;
    lblFile: TLabel;
    lblStatus: TLabel;
    Label2: TLabel;
    lblBDE5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure lblBDE5Click(Sender: TObject);
  private
    BDEUtil: TBDEUtil;
    sl     : TStringList;
    { Private-Deklarationen }
  public
    procedure Rebuild(szTable:string);
    { Public-Deklarationen }
  end;

var
  frmRepair: TfrmRepair;

implementation

uses Unit1, DataModule;

function GenProgressCallBack(ecbType: CBType; Data: LongInt; pcbInfo: Pointer):
  CBRType; stdcall;
var
  CBInfo: TUVerifyCallBack;
begin
  CBInfo := TUVerifyCallBack(pcbInfo^);
  if ecbType = cbGENPROGRESS then
  begin
    if CBInfo.percentdone mod 5 = 0 then Application.ProcessMessages;
    FrmRepair.pb.Position := CBInfo.percentdone;
    case CBInfo.Process of
     TUVerifyHeader: begin
       FrmRepair.lblStatus.Caption := 'Header...';
     end;
     TUVerifyIndex: begin
       FrmRepair.lblStatus.Caption := 'Index...';
     end;
     TUVerifyData: begin
       FrmRepair.lblStatus.Caption := 'Data...';
     end;
     TURebuild: begin
       FrmRepair.lblStatus.Caption := 'Rebuild...';
     end;
    end;
  end;
  Result := cbrUSEDEF;
end;

constructor TBDEUtil.Create;
begin
  Check(TUInit(vhtSes));
end;

destructor TBDEUtil.Destroy;
begin
  Check(TUExit(vhtSes));
  inherited Destroy;
end;

function TBDEUtil.GetTCursorProps(szTable: String): Boolean;
begin
  if TUFillCURProps(vHtSes, PChar(szTable), TUProps) = DBIERR_NONE then
    Result := True
  else Result := False;
end;

procedure TBDEUtil.RegisterCallback;
begin
 Check(DbiRegisterCallBack(nil, cbGENPROGRESS, 0,
            sizeof(TUVerifyCallBack), @CbInfo, GenProgressCallback));
end;

procedure TBDEUtil.UnRegisterCallback;
begin
  Check(DbiRegisterCallBack(nil, cbGENPROGRESS, 0,
           sizeof(TUVerifyCallBack), @CbInfo, nil));
end;

{$R *.DFM}

procedure TfrmRepair.FormCreate(Sender: TObject);
var
  i : integer;
begin
  FrmRepair := Self;
//  Session1.Active := True;
  BDEUtil := TBDEUtil.Create;
  sl := TStringList.Create;
  MyFiles3Form.ini.ReadSectionValues(ini_collections, sl);
  for i := sl.Count - 1 downto 0 do
    cbCol.Items.AddObject(sl.Values[sl.names[i]],TObject(i));
  cbCol.ItemIndex := 0;
end;

procedure TfrmRepair.Rebuild(szTable:string);
var
  iFld, iIdx, iSec, iVal, iRI, iOptP, iOptD: word;
  rslt: DBIResult;
  Msg: Integer;
  TblDesc: CRTBlDesc;
  Backup: String;
begin
  Screen.Cursor := crHourGlass;
  try
//    ClearBars;
    Check(TUExit(BDEUtil.vHtSes));
    Check(TUInit(BDEUtil.vHtSes));
    BDEUtil.RegisterCallBack;
    try
      Check(TUVerifyTable(BDEUtil.vHtSes, PChar(szTable), szPARADOX, 'VERIFY.DB',
           nil, 0, Msg));
      rslt := TUGetCRTblDescCount(BDEUtil.vhTSes, PChar(szTable), iFld,
            iIdx, iSec, iVal, iRI, iOptP, iOptD);
      if rslt = DBIERR_NONE then begin
        FillChar(TblDesc, SizeOf(CRTBlDesc), 0);
        StrPCopy(TblDesc.szTblName, szTable);
        TblDesc.szTblType := szParadox;
        TblDesc.szErrTblName := 'Rebuild.DB';

        TblDesc.iFldCount := iFld;
        GetMem(TblDesc.pFldDesc, (iFld * SizeOf(FldDesc)));

        TblDesc.iIdxCount := iIdx;
        GetMem(TblDesc.pIdxDesc, (iIdx * SizeOf(IdxDesc)));

        TblDesc.iSecRecCount := iSec;
        GetMem(TblDesc.pSecDesc, (iSec * SizeOf(SecDesc)));

        TblDesc.iValChkCount := iVal;
        GetMem(TblDesc.pvchkDesc, (iVal * SizeOf(VCHKDesc)));

        TblDesc.iRintCount := iRI;
        GetMem(TblDesc.printDesc, (iRI * SizeOf(RINTDesc)));

        TblDesc.iOptParams := iOptP;
        GetMem(TblDesc.pfldOptParams, (iOptP * sizeOf(FLDDesc)));

        GetMem(TblDesc.pOptData, (iOptD * DBIMAXSCFLDLEN));
        try
           rslt := TUFillCRTblDesc(BDEUtil.vhTSes, @TblDesc, PChar(szTable), nil);
           if rslt = DBIERR_NONE then begin
             Backup := 'Backup.Db';
             if TURebuildTable(BDEUtil.vhTSes, PChar(szTable), szPARADOX,
                 PChar(Backup), 'KEYVIOL.DB', 'PROBLEM.DB', @TblDesc) = DBIERR_NONE
             then lblStatus.Caption := str_repairok
             else lblStatus.Caption := str_repairfail;
           end
           else
             MessageDlg('Error Filling table structure', mtError, [mbok], 0);
        finally
          FreeMem(TblDesc.pFldDesc, (iFld * SizeOf(FldDesc)));
          FreeMem(TblDesc.pIdxDesc, (iIdx * SizeOf(IdxDesc)));
          FreeMem(TblDesc.pSecDesc, (iSec * SizeOf(SecDesc)));
          FreeMem(TblDesc.pvchkDesc, (iVal * SizeOf(VCHKDesc)));
          FreeMem(TblDesc.printDesc, (iRI * SizeOf(RINTDesc)));
          FreeMem(TblDesc.pfldOptParams, (iOptP * sizeOf(FLDDesc)));
          FreeMem(TblDesc.pOptData, (iOptD * DBIMAXSCFLDLEN));
        end;
      end;
    finally
      BDEUtil.UnRegisterCallBack;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmRepair.FormDestroy(Sender: TObject);
begin
  FrmRepair := nil;
  BDEUtil.Free;
  sl.Free;
end;

procedure TfrmRepair.btnOkClick(Sender: TObject);
var
  basename,Selct,old : string;
  save : Boolean;
begin
  ClientHeight := gb2.Top + gb2.Height + 7;
  btnOk.Enabled := False;
  btnAbort.Enabled := False;
  cbCol.Enabled := False;
  with cbCol do
    Selct := sl.names[Integer(Items.Objects[ItemIndex])];
  basename := dir_db + Selct + '\';

  with dm do
  begin
    save := tblFiles.Active;
    tblFiles.Active := False;
    tblFolders.Active := False;
    tblDisks.Active := False;
    with database do
    begin
      connected := False;
      old := DatabaseName;
      DatabaseName := basename;
      connected := True;
    end;
  end;
  lblFile.Caption := Selct + '\disks.db';
  Rebuild(basename+'disks.db');
  lblFile.Caption := Selct + '\folders.db';
  Rebuild(basename+'folders.db');
  lblFile.Caption := Selct + '\files.db';
  Rebuild(basename+'files.db');
  with dm do
  begin
    with database do
    begin
      connected := False;
      if old <> '' then
      begin
        DatabaseName := old;
        connected := True;
      end;
    end;
    tblFiles.Active := save;
    tblFolders.Active := save;
    tblDisks.Active := save;
  end;
  MyFiles3Form.sbMain.Panels[2].Text := lblStatus.Caption;
end;

procedure TfrmRepair.lblBDE5Click(Sender: TObject);
begin
  ShellExecute(Self.Handle, nil, PChar('http://go.self-soft.de/?bdedpk'), nil, nil, sw_shownormal);
end;

end.
