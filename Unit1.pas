{$R+}
(*

- Toolbars
- einlesedialog updaten bei datenträger update (Label)

*)
(*

search: misc\({[a-z,0-9,A-Z,_].+}\,[^\+\,]+'\)
replace: \0

misc(str_...,'name')  -> str_....

*)


unit Unit1;

{$MODE Delphi}

interface


uses
  {$ifdef WINDOWS}{$else}cmem, {$endif}myf_consts, myf_main, myf_lists, myf_search, myf_plugins,
  SysIconCache, UsefulPrcs, db,
  {Windows, }Messages, SysUtils, Forms, ShlObj, CommCtrl, ToolWin,
  ExtCtrls, Menus, StdCtrls, Dialogs, Controls, ComCtrls, Classes, Graphics,
  ShellAPI, Spin, Buttons, ImgList, Grids, IniFiles, FileUtil, Variants,
  Clipbrd, CheckLst, SplashFUnit, DBGrids, Registry, sqldb, xplorerimagelist, Crt;

const
  lvt_file = 1;
  lvt_ordner = 2;
  lvt_verbund = 4;
  lvt_disk = 8;

type
  lcOptArray = array[0..5] of boolean;

type
  PLVData = ^TLVData;
  TLVData = record
    Item: TMyItem;
    Grayed : Boolean;
{    typ: Byte; { 1 = Ordner; 2 = Verbundordner }
{    diskid, folderid, fileid: integer;
    Size: Int64;
    Changed: TDateTime; }
//              dbbookmark : TBookmark; // Muss sep. freigegeben werden!!
  end;
  PTVData = ^TTVData;
  TTVData = record
    MediaID, FolderID: integer;
  end;

type

  { TMyFiles3Form }

  TMyFiles3Form = class(TForm)
    MainMenu: TMainMenu;
    menFile: TMenuItem;
    menEdit: TMenuItem;
    menAnyDiskAdd: TMenuItem;
    Anzeige1: TMenuItem;
    menHelp: TMenuItem;
    INFO1: TMenuItem;
    menViewDetail: TMenuItem;
    menViewList: TMenuItem;
    sbMain: TStatusBar;
    pbProgress: TProgressBar;
    pnlLeft: TPanel;
    pc1: TPageControl;
    tsVerbund: TTabSheet;
    tsDisks: TTabSheet;
    tsSearch: TTabSheet;
    ilMoreImages: TXplorerImageList;
    pcStatus: TPageControl;
    tsDriveState: TTabSheet;
    lvDriveState: TListView;
    pmDriveState: TPopupMenu;
    Laufwerke1: TMenuItem;
    N1: TMenuItem;
    menDiskAdd: TMenuItem;
    menDiskRefresh: TMenuItem;
    menEject: TMenuItem;
    N2: TMenuItem;
    tmrDrivestate: TTimer;
    pmListView: TPopupMenu;
    menOpen: TMenuItem;
    N5: TMenuItem;
    menCopy: TMenuItem;
    N6: TMenuItem;
    menDiskDelete: TMenuItem;
    menLVDiskRefresh: TMenuItem;
    OpenImExplorer: TMenuItem;
    menCopyName: TMenuItem;
    menFileOpen: TMenuItem;
    N7: TMenuItem;
    menNote: TMenuItem;
    menDiskDelete2: TMenuItem;
    N8: TMenuItem;
    menNewCol: TMenuItem;
    menFileDelete: TMenuItem;
    menColConfig: TMenuItem;
    menList: TMenuItem;
    N10: TMenuItem;
    menListAction: TMenuItem;
    menLSwitch: TMenuItem;
    menLAdd: TMenuItem;
    menLDel: TMenuItem;
    menSelAll: TMenuItem;
    ApplicationProperties: TApplicationProperties;
    sdExport: TSaveDialog;
    N3: TMenuItem;
    menCheckUpdate: TMenuItem;
    menWebHelp: TMenuItem;
    ilMenus: TImageList;
    menBack: TMenuItem;
    menLevelUp: TMenuItem;
    tmrSumSize: TTimer;
    //aniFind: TAnimate;
    menSearch: TMenuItem;
    N13: TMenuItem;
    menDiskviewFirst: TMenuItem;
    menCombomodeDisabled: TMenuItem;
    N14: TMenuItem;
    menTune: TMenuItem;
    pmLists: TPopupMenu;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    tvDisks: TTreeView;
    tvVerbund: TTreeView;
    menSearchInSel: TMenuItem;
    tmrAutoPlay: TTimer;
    tmrMP3CtrlSync: TTimer;
    menCommands: TMenuItem;
    N12: TMenuItem;
    menSaveViewToList: TMenuItem;
    N11: TMenuItem;
    menConfig: TMenuItem;
    menExplorerJump: TMenuItem;
    N15: TMenuItem;
    menSearchFromLocation: TMenuItem;
    N4: TMenuItem;
    menFeedback: TMenuItem;
    N16: TMenuItem;
    menCreateLink: TMenuItem;
    menListLayout: TMenuItem;
    menViewPreview: TMenuItem;
    pmListviewStyle: TPopupMenu;
    menVDetail: TMenuItem;
    menVList: TMenuItem;
    menVPreview: TMenuItem;
    ilToolbar: TImageList;
    ilTbGray: TImageList;
    menToolbar: TMenuItem;
    N18: TMenuItem;
    pmCols: TPopupMenu;
    N19: TMenuItem;
    Neu1: TMenuItem;
    ilThumbs: TImageList;
    pnlManUpdate: TPanel;
    spUpdateDrv: TSpeedButton;
    menJump: TMenuItem;
    pmTreeView: TPopupMenu;
    menTvDiskAkt: TMenuItem;
    menTvDiskDel: TMenuItem;
    MenuItem10: TMenuItem;
    menTvSearch: TMenuItem;
    menTvSammlung: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    Beenden1: TMenuItem;
    pmNote: TPopupMenu;
    menNoteNext: TMenuItem;
    spToleranz: TSpeedButton;
    menRepair: TMenuItem;
    ControlBar: TControlBar;
    ToolBar: TToolBar;
    tbCol: TToolButton;
    tbAddDisk: TToolButton;
    ToolButton12: TToolButton;
    tbSearch: TToolButton;
    ToolButton11: TToolButton;
    tbNewList: TToolButton;
    tbList: TToolButton;
    ToolButton10: TToolButton;
    tbView: TToolButton;
    ToolButton9: TToolButton;
    btnReg: TSpeedButton;
    tbUpd: TToolButton;
    tbHelp: TToolButton;
    tbAddress: TToolBar;
    cbAdresse: TComboBox;
    tbtnAddress: TToolButton;
    tsListen: TTabSheet;
    Panel3: TPanel;
    Image1: TImage;
    Label5: TLabel;
    Shape2: TShape;
    Panel2: TPanel;
    Shape1: TShape;
    lblHSearch: TLabel;
    Image2: TImage;
    lvLists: TListView;
    tbLists: TToolBar;
    tblNew: TToolButton;
    tblExp: TToolButton;
    tbLDel: TToolButton;
    tbLView: TToolButton;
    tbLGen: TToolButton;
    tblColor: TToolButton;
    ColorDialog: TColorDialog;
    menLNew: TMenuItem;
    menLCol: TMenuItem;
    menLGen: TMenuItem;
    menLView: TMenuItem;
    menLExp: TMenuItem;
    menLRemove: TMenuItem;
    Listen1: TMenuItem;
    menLRename: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    btnTVDummy: TButton;
    pmGenList: TPopupMenu;
    menListDoub: TMenuItem;
    N24: TMenuItem;
    menListAND: TMenuItem;
    menListNOT: TMenuItem;
    menListOR: TMenuItem;
    N25: TMenuItem;
    menListDoub1: TMenuItem;
    N26: TMenuItem;
    menListAND1: TMenuItem;
    menListNOT1: TMenuItem;
    N27: TMenuItem;
    menListOR1: TMenuItem;
    tbExport: TToolButton;
    tbGenList: TToolButton;
    pmSearchIn: TPopupMenu;
    menSearchInVerb: TMenuItem;
    menSearchInDisk: TMenuItem;
    menSearchInList: TMenuItem;
    sbSearch: TScrollBox;
    pnlSearch: TPanel;
    pSearchSize: TPanel;
    pHSize: TPanel;
    lblSize: TLabel;
    pSearchDate: TPanel;
    //dtpMinDate: TDateTimePicker;
    //dtpMaxDate: TDateTimePicker;
    pHSearchDate: TPanel;
    lblSearchDate: TLabel;
    pSearchIn: TPanel;
    lbSearchIn: TListBox;
    fbAdd: TSpeedButton;
    fbDel: TSpeedButton;
    pnlHSearchIn: TPanel;
    lblSearchIn: TLabel;
    Panel6: TPanel;
    ScbName: TEdit;
    pnlHFileName: TPanel;
    lblName: TLabel;
    pnlHNote: TPanel;
    lblContents: TLabel;
    pSearchContents: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    cbProp: TComboBox;
    cbWert: TEdit;
    fbAddE: TSpeedButton;
    fbDelE: TSpeedButton;
    lbContents: TListBox;
    pHAttribute: TPanel;
    lblAttribute: TLabel;
    pSearchAttribute: TPanel;
    cbAA: TCheckBox;
    cbAH: TCheckBox;
    cbAR: TCheckBox;
    cbAS: TCheckBox;
    cbMinSize: TComboBox;
    cbMaxSize: TComboBox;
    seMinSize: TSpinEdit;
    chkMinSize: TCheckBox;
    chkMaxSize: TCheckBox;
    seMaxSize: TSpinEdit;
    chkMinDate: TCheckBox;
    chkMaxDate: TCheckBox;
    //dtpMinTime: TDateTimePicker;
    //dtpMaxTime: TDateTimePicker;
    pBottom: TPanel;
    btnStart: TSpeedButton;
    fbSearchReset: TSpeedButton;
    bvBottom: TBevel;
    pListview: TPanel;
    ListView: TListView;
    pmProps: TPopupMenu;
    N29: TMenuItem;
    sbProps: TScrollBox;
    pnlProps: TPanel;
    pnlHProps: TPanel;
    lblProps: TLabel;
    lblNote: TLabel;
    lblPrev: TLabel;
    Label9: TLabel;
    sgProps: TStringGrid;
    mNotes: TMemo;
    pnlPrev: TPanel;
    imgPImages: TImage;
    lblNoPrev: TLabel;
    pnlPAudio: TPanel;
    sbPlayMPEG: TSpeedButton;
    cbAutoPlay: TCheckBox;
    menNew: TMenuItem;
    menResetProp: TMenuItem;
    N30: TMenuItem;
    Lschen1: TMenuItem;
    MultiMediaVorschaulschen1: TMenuItem;
    N31: TMenuItem;
    Exportieren1: TMenuItem;
    Generieren1: TMenuItem;
    lvPZip: TListView;
    {//ToBeConverted
	fdCopyFiles: TFolderDialog;
	}
    cbCopyFilesCreateSub: TCheckBox;
    tbtnLayout: TToolButton;
    cbLayout: TComboBox;
    Splitter4: TSplitter;
    pmLayout: TPopupMenu;
    menLayoutSave: TMenuItem;
    menLayoutAutoSave: TMenuItem;
    N9: TMenuItem;
    menSpalten: TMenuItem;
    menLayoutSaveForAdr: TMenuItem;
    N17: TMenuItem;
    Splitter3: TSplitter;
    fbPropHide: TSpeedButton;
    menLaySaveAs: TMenuItem;
    menLayDel: TMenuItem;
    N28: TMenuItem;
    mentvRenameDisk: TMenuItem;
    menlvRenameDisk: TMenuItem;
    N32: TMenuItem;
    menGoSearchInList: TMenuItem;
    lblPrevNoSelection: TLabel;
    Funktionen1: TMenuItem;
    menQuickExport: TMenuItem;
    menQuickCopy: TMenuItem;
    menShowDouble: TMenuItem;
    N33: TMenuItem;
    menQuickCompare: TMenuItem;
    menLCopyToFolder: TMenuItem;
    N34: TMenuItem;
    menColEditor: TMenuItem;
    N35: TMenuItem;
    menDeleteColItem: TMenuItem;
    menFAQ: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ListViewCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure ListViewMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ListViewCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure ListViewSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure menAnyDiskAddClick(Sender: TObject);
    procedure tvVerbundExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure tvVerbundChange(Sender: TObject; Node: TTreeNode);
    procedure ListViewColumnClick(Sender: TObject; Column_: TListColumn);
    procedure ListViewDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tmrDrivestateTimer(Sender: TObject);
    procedure tvDisksExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure tvDisksChange(Sender: TObject; Node: TTreeNode);
    procedure cbAdresseKeyPress(Sender: TObject; var Key: Char);
    procedure edtSearchFnKeyPress(Sender: TObject; var Key: Char);
    procedure mNotesExit(Sender: TObject);
    procedure menDiskDeleteClick(Sender: TObject);
    procedure mNotesKeyPress(Sender: TObject; var Key: Char);
    procedure menCopyClick(Sender: TObject);
    procedure pmListViewPopup(Sender: TObject);
    procedure OpenImExplorerClick(Sender: TObject);
    procedure menCopyNameClick(Sender: TObject);
    procedure menLVDiskRefreshClick(Sender: TObject);
    procedure pmDriveStatePopup(Sender: TObject);
    procedure menDiskAddClick(Sender: TObject);
    procedure menDiskDelete2Click(Sender: TObject);
    procedure lvDriveStateCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure menDiskRefreshClick(Sender: TObject);
    procedure menNewColClick(Sender: TObject);
    procedure genFileDeleteClick(Sender: TObject);
    procedure genFileOpenClick(Sender: TObject);
    procedure menColConfigClick(Sender: TObject);
    procedure menListEditClick(Sender: TObject);
//    procedure menListExportClick(Sender: TObject);
    procedure ApplicationPropertiesActivate(Sender: TObject);
    procedure ApplicationPropertiesDeactivate(Sender: TObject);
    procedure INFO1Click(Sender: TObject);
    procedure cbAdresseChange(Sender: TObject);
    procedure menSelAllClick(Sender: TObject);
    procedure menCheckUpdateClick(Sender: TObject);
    function ApplicationPropertiesHelp(Command: Word; Data: Integer;
      var CallHelp: Boolean): Boolean;
    procedure menEjectClick(Sender: TObject);
    procedure menBackClick(Sender: TObject);
    procedure menLevelUpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmrSumSizeTimer(Sender: TObject);
    procedure ListViewResize(Sender: TObject);
    procedure cbAdresseExit(Sender: TObject);
    procedure cbAdresseDropDown(Sender: TObject);
    procedure menSearchClick(Sender: TObject);
    procedure menViewClick(Sender: TObject);
    procedure menDiskviewFirstClick(Sender: TObject);
    procedure menCombomodeDisabledClick(Sender: TObject);
    procedure Splitter2CanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure menSearchInSelClick(Sender: TObject);
    procedure ListViewKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbPlayMPEGClick(Sender: TObject);
    procedure sbPlayMPEGNowClick(Sender: TObject);
    procedure tmrAutoPlayTimer(Sender: TObject);
    procedure tmrMP3CtrlSyncTimer(Sender: TObject);
    procedure menCommandsClick(Sender: TObject);
    procedure ApplicationPropertiesHint(Sender: TObject);
    procedure menOpenThisFolderClick(Sender: TObject);
    procedure btnStartSearchClick(Sender: TObject);
    procedure ListViewGetImageIndex(Sender: TObject; Item: TListItem);
    procedure menSaveViewToListClick(Sender: TObject);
    procedure menConfigClick(Sender: TObject);
    procedure ListViewContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure menExplorerJumpClick(Sender: TObject);
    procedure menSearchFromLocationClick(Sender: TObject);
    procedure menWebHelpClick(Sender: TObject);
    procedure menFeedbackClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure menCreateLinkClick(Sender: TObject);
    procedure menListLayoutClick(Sender: TObject);
    procedure menToolbarClick(Sender: TObject);
    procedure pc1Change(Sender: TObject);
    procedure btnRegClick(Sender: TObject);
    procedure lvDriveStateDblClick(Sender: TObject);
    procedure menJumpClick(Sender: TObject);
    procedure pmTreeViewPopup(Sender: TObject);
    procedure menTvSearchClick(Sender: TObject);
    procedure Beenden1Click(Sender: TObject);
    procedure menNoteNextClick(Sender: TObject);
    procedure tsSearchEnter(Sender: TObject);
    procedure menTolClick(Sender: TObject);
    procedure tvDisksEdited(Sender: TObject; Node: TTreeNode;
      var S: String);
    procedure tvDisksEditing(Sender: TObject; Node: TTreeNode;
      var AllowEdit: Boolean);
    procedure ListViewEdited(Sender: TObject; Item: TListItem;
      var S: String);
    procedure ListViewEditing(Sender: TObject; Item: TListItem;
      var AllowEdit: Boolean);
    procedure menRepairClick(Sender: TObject);
    procedure ControlBarBandInfo(Sender: TObject; Control: TControl;
      var Insets: TRect; var PreferredSize, RowCount: Integer);
    procedure ControlBarBandMove(Sender: TObject; Control: TControl;
      var ARect: TRect);
    procedure tbAddressResize(Sender: TObject);
    procedure tbtnAddressClick(Sender: TObject);
    procedure tbNewListClick(Sender: TObject);
    procedure lvListsChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure tblColorClick(Sender: TObject);
    procedure lvListsCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure tbLViewClick(Sender: TObject);
    procedure lvListsEdited(Sender: TObject; Item: TListItem;
      var S: String);
    procedure tbLDelClick(Sender: TObject);
    procedure ListViewCustomDrawSubItem(Sender: TCustomListView;
      Item: TListItem; SubItem: Integer; State: TCustomDrawState;
      var DefaultDraw: Boolean);
    procedure lvListsCustomDrawSubItem(Sender: TCustomListView;
      Item: TListItem; SubItem: Integer; State: TCustomDrawState;
      var DefaultDraw: Boolean);
    procedure lvListsDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure genDragOverDeny(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lvListsDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Listen1Click(Sender: TObject);
    procedure menRenameList(Sender: TObject);
    procedure lvListsDblClick(Sender: TObject);
    procedure tvVerbundEnter(Sender: TObject);
    procedure tvDisksEnter(Sender: TObject);
    procedure btnTVDummyExit(Sender: TObject);
    procedure tspc1Enter(Sender: TObject);
    procedure tbLGenClick(Sender: TObject);
    procedure menListGenGen(Sender: TObject);
    procedure tbGenListClick(Sender: TObject);
    procedure etSearchKeyPress(Sender: TObject; var Key: Char);
    procedure btnStartClick(Sender: TObject);
    procedure ExtEditAccept(Sender: TObject);
    procedure tbExportClick(Sender: TObject);
    procedure lblSearchDateClick(Sender: TObject);
    procedure lblSizeClick(Sender: TObject);
    procedure genSearchInPMClick(Sender: TObject);
    procedure lblAttributeClick(Sender: TObject);
    procedure tsSearchResize(Sender: TObject);
    procedure fbAddEClick(Sender: TObject);
    procedure fbAddClick(Sender: TObject);
    procedure fbDelClick(Sender: TObject);
    procedure lbSearchInClick(Sender: TObject);
    procedure fbDelEClick(Sender: TObject);
    procedure lbContentsClick(Sender: TObject);
    procedure lbContentsDblClick(Sender: TObject);
    procedure genSizeEditExit(Sender: TObject);
    procedure chkMinSizeClick(Sender: TObject);
    procedure chkMaxSizeClick(Sender: TObject);
    procedure fbSearchResetClick(Sender: TObject);
    procedure chkMinDateClick(Sender: TObject);
    procedure chkMaxDateClick(Sender: TObject);
    procedure dtpMaxTimeChange(Sender: TObject);
    procedure dtpMinTimeChange(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure lbSearchInDblClick(Sender: TObject);
    procedure pnlHFileNameEnter(Sender: TObject);
    procedure pnlHSearchInEnter(Sender: TObject);
    procedure lblContentsClick(Sender: TObject);
    procedure dtpMinDateChange(Sender: TObject);
    procedure dtpMaxDateChange(Sender: TObject);
    procedure MaintainSize(Sender: TObject);
    procedure sgPropsSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgPropsDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure lblPrevClick(Sender: TObject);
    procedure lblNoteClick(Sender: TObject);
    procedure lblPropsClick(Sender: TObject);
    procedure sbPropsResize(Sender: TObject);
    procedure sgPropsSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure sgPropsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pmPropsPopup(Sender: TObject);
    procedure menResetPropClick(Sender: TObject);
    procedure genNewFieldClick(Sender: TObject);
    procedure menNoteClick(Sender: TObject);
    procedure mNotesChange(Sender: TObject);
    procedure Splitter4CanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure pmLayoutPopup(Sender: TObject);
    procedure menLayoutSaveClick(Sender: TObject);
    procedure cbLayoutDropDown(Sender: TObject);
    procedure cbLayoutChange(Sender: TObject);
    procedure menLayoutSaveForAdrClick(Sender: TObject);
    procedure menLayoutAutoSaveClick(Sender: TObject);
    procedure cbLayoutKeyPress(Sender: TObject; var Key: Char);
    procedure fbPropHideClick(Sender: TObject);
    procedure sgPropsKeyPress(Sender: TObject; var Key: Char);
    procedure MultiMediaVorschaulschen1Click(Sender: TObject);
    procedure mentvRenameDiskClick(Sender: TObject);
    procedure menlvRenameDiskClick(Sender: TObject);
    procedure menGoSearchInListClick(Sender: TObject);
    procedure genLayDelClick(Sender: TObject);
    procedure genLaySaveAsClick(Sender: TObject);
    procedure cbLayoutEnter(Sender: TObject);
    procedure tvDisksCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure tvVerbundCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure menQuickExportClick(Sender: TObject);
    procedure menQuickListClick(Sender: TObject);
    procedure menLCopyToFolderClick(Sender: TObject);
    procedure menQuickCopyClick(Sender: TObject);
    procedure menColEditorClick(Sender: TObject);
    procedure menDeleteColItemClick(Sender: TObject);
    procedure menFAQClick(Sender: TObject);
	procedure cbContChange(Sender: TObject);
  private
    dblock : Boolean;
    FPlugIns : TMyPlugins;
    FSearchCache : TStringList;

    cursearch : TMySearch;
    curcachelist : TMyList;

    callbyparam: Boolean;
    lvkeydown, lvshift: Boolean;
    DragPoint: TPoint;
    subjump: string;
    { Progressbar }
    FWaitStep : integer; { Schrittgröße }
    FWaitInt : Int64;    { Interner Schrittcounter }

    { Aktuelle Sammlung }
    FColDir : string;
    { Akt. Liste }
    FCurLists : TList;
    FCurList : TMyList;
    FSaveCaption : string;
    FListsLastSelect : TListItem;
    { Suchtreeview - Items }
    LvColumns : TMyColumns;
    FEditorMode : boolean;

{$IFDEF LANSPECIAL}
    bcount : integer;
    procedure newBanner;
{$ENDIF}
    function timeout(b: Boolean): boolean;
    procedure AddFolder2TV(tv: TTreeView; disk: integer; folder: string; level: Byte; ParentNode: TTreeNode);
    procedure AddFolder2ListView(FID: Integer; VerbundMode: boolean);
    function DiskId2String(diskid: integer; resolve: boolean): string;
    function LVMyI(item: TListItem):TMyItem;    
    function GetFileName(item:TMyItem; resolve:boolean):string;
    function GetLVIFileName(item: TListItem; resolve: Boolean): string;
    function IsAvailable(item: TMyItem): Boolean;
    procedure MustBeAvailable(Item: TMyItem);
    procedure cleartvs;
    procedure clearlistview;
    procedure AddCurrentFile2Listview(VerbundMode: boolean);
    {//ToBeConverted procedure begindrag(copymode: Boolean);}
    function doDiskDelete(lbl: string): Boolean;
    procedure DeleteDisk(diskid: smallint);
    function doDiskAdd(disk: char; upd: boolean): Boolean;
    procedure updatecolmenu;
    procedure OpenCol(colid: string; Tag: integer; loc: string);
    procedure updatelistmenu;
    procedure ListActiveSelectionChanged;
    procedure SaveAndFreeLists;
    procedure ClearSearchCache;
    procedure ListAction(ID : TMyId; mode: Byte; item: TListItem);
    procedure updatecaption;
    procedure savesettings;
    procedure readsettings;
    procedure savehistory;
    function spyurl: string;
    procedure closempeg;
    procedure CreateImages;
    procedure setsearchaddress;
    procedure donamejump;
    procedure dohistory;
    procedure showit; // Adresse laden (nach opencol)
    procedure ENumSearch(Sender: TObject; Item:TMyItem; var stop: Boolean);
    procedure ToggleControl(Sender: TObject; P : TPanel);
    procedure doSearch;
    procedure LoadPlugins;
    procedure FilePropToggle(clicklabel:TLabel; control:TControl);
    procedure FillsgProp(it: TMyItem);
    procedure SetProp(prop, newval : string; isnew:boolean);
    procedure dodefaultlayouts;
    function GetObjectColor(typ:Byte;diskid:Smallint;folderid:integer;Caption:string):TColor;
    procedure CheckList(ListToCheck:TMyList);
    procedure InvalidateAllLists;
    procedure CreateTempList;
    { Listen }
  public
    colAv, colCache, colGray : integer;
    idi_root, idi_disk, idi_nodisk, idi_openf, idi_closef: Integer; // ImageList ID's
    bookmarkedNote: integer;
    notedb: TSQLQuery;
    splash: TfrmSplash;
    verlauf: integer;
    vers: string;
    defhint: string;
    ini, ColIni: TIniFile;
    abort: Boolean;

    address, location, curcol, curcolname,jumpname: string;
    drivestate: TStringList;
    avdiskids: string; { Verfügbare Diskids, durch Komma getrennt ... }
    SmallImages: TXplorerImageList;
//    lvstyle: Byte;
//    lvcolbit: Byte; // Bits 0 - 7
//    lvcols: array[0..7] of ShortInt;
//    lvsizefmt: Byte;
    thumbmaxw, thumbmaxh : integer;
    procedure CustListView(adr:string); // Listview-Layout automatisch laden
    procedure updateLV; // Listview entsprechend cbAdresse füllen + Location setzen
    procedure updateTV; // richtiges Treeview entsprechend cbAdresse scrollen / zeigen
    procedure resetThumbs;
    procedure parseaddr(s: string; var drv, path: string);
    procedure parseaddr2(s: string; var drv, path, fn: string);
    procedure updatetvs; // Treeview Grundstruktur neu aus der DB lesen
    procedure formcontrol(en: Boolean); // Controls aktivieren bzw. deaktivieren
    procedure quickinfo(hctx: integer);
    function MyVolumeId(drive: char): string;
    procedure UpdateLabel(diskid:integer;s:string);
    procedure AddItemToListview(Item:TMyItem; VerbundMode: Boolean);
    { Progressbar }
    procedure StartWait(MaxW:Int64;WaitText: string);
    procedure StepWait(Sender: TObject);
    procedure StopWait;

    function MakeListName(Caption: string): string;
    procedure DebugMail(CorruptFile:string);
    
    { Schnittstellen }
    { Public-Deklarationen }
//    function GenSortProc(Item1, Item2: TListItem; ParamSort: integer): integer; stdcall;
    property PlugIns : TMyPlugins read FPlugIns;
  end;

type TmfSearchData = record
    sFileName: string;
    sLevTreshold: integer;
    sbFirstDate, sbLastDate, sbFirstSize, sbLastSize: Boolean;
    sFirstDate, sLastDate: TDateTime;
    sFirstSize, sLastSize: Int64;
    sNote: string;
    sIsSimple, uselist: Boolean;
  end;

var
  MyFiles3Form: TMyFiles3Form;
  timestamp: dword;

implementation

uses ReadDiskUnit, NewCollectionUnit, NewListUnit,
  ExportOptUnit, ListCompareOptUnit, SetupUnit, ListviewConfig, DataModule, ExtSelectUnit, WaitForDiskUnit,
  NoRegUnit, StringEditUnit, CopyToDisksUnit;

{$R *.lfm}
{$R icns.lrs}

{ Was wird in der Spalte "Notiz" angezeigt? }
function GetNoteColumn(Item: TMyItem): string;
begin
  with Item do
    if Note = '' then
      Result := TextPreview else
        Result := Note;
  Result := StringReplace(trim(Result), #13#10, ' ', [rfReplaceAll])
end;

{ In: b: Anzeige der Meldung (Funktion deaktiviert oder gen. Hinweis) }
{ Result: TRUE: expired }

function TMyFiles3Form.timeout(b: Boolean): boolean;
//var
//  s : string;
begin;
{  if isreg then
  begin
    Result := False;
    Exit;
  end; }
//  result := now > encodedate(2003, 9, 30)+1;
//  result := now > encodedate(2003, 1, 1)+1;
  result := false;
end;

function escape(s: string): string;
var
  i: integer;
begin
  Result := '';
  for i := 1 to Length(s) do
    if s[i] = '''' then Result := Result + '''''' else Result := Result + s[i];
end;

function escape2(s: string): string;
var
  i: integer;
begin
  Result := '';
  for i := 1 to Length(s) do
    if s[i] = '"' then Result := Result + '""' else Result := Result + s[i];
end;

procedure TMyFiles3Form.Createimages;
begin
  ilMoreImages := TXplorerImageList.Create(MyFiles3Form);
  SmallImages := TXplorerImageList.Create(MyFiles3Form);
  MyFiles3Form.ListView.SmallImages := SmallImages;
end;

function stripdrive(s: string): string;
var
  p: integer;
begin
  p := Pos('>', s);
  Result := Copy(s, p + 1, Length(s));
end;

{
function GenSortProc(Item1, Item2: TListItem; ParamSort: integer): integer; stdcall;
var
  i1, i2 : TMyItem;
  t1, t2 : Byte;
begin
  i1 := PLVData(item1.Data)^.Item;
  i2 := PLVData(item2.Data)^.Item;
  t1 := i1.typ;
  t2 := i2.typ;
  if t1 = 4 then t1 := ek_folder;
  if t2 = 4 then t2 := ek_folder;
  if (t1 <> t2) and ((t1 <> ek_file) or (t2 <> ek_file)) then
    Result := MyCompareItems(cl_typ,i1,i2) else
    Result := MyCompareItems(MyFiles3Form.LvColumns.DID[abs(ParamSort)-1],i1,i2);
  if paramsort < 0 then Result := -Result;
end;
}

{ ListView Switching }
{ + 128 -> nur laden }
{ negativ -> in jedem fall laden aber vorher speichern }

// procedure TMyFiles3Form.CustListView(mode: SmallInt);


function LengthCompare(List: TStringList; Index1, Index2: Integer): Integer;
var
  l1, l2 : integer;
begin
  l1 := Length(List[index1]); l2 := Length(List[index2]);
  if l1 < l2 then Result := 1 else
    if l1 = l2 then Result := 0 else Result := -1;
end;


procedure TMyFiles3Form.CustListView(adr:string);
var
  s : string;
  sl : TStringList;
  i : integer;
  idx : integer;
begin
  if menSpalten.Tag = 1 then
  begin
    menSpalten.Tag := 0;
    Exit;
  end;
  if menLayoutAutoSave.Checked then
    menLayoutSaveClick(nil);
  menLayoutAutoSave.Checked :=
    ini.ReadBool(ini_guimain, 'autosavelayout', true);

  if adr = '' then ListView.SmallImages := ilMoreImages
              else ListView.SmallImages := SmallImages;
  sl := TStringList.Create;

  if adr = '' then
    s := def2 else s := def1;
  try
    ini.ReadSection(ini_lays,sl);
    sl.CustomSort(LengthCompare);
    cbLayout.Items := sl;
    for i := 0 to sl.Count-1 do
    begin
      sl[i] := URLDecode(sl[i]);
      idx := Pos('»',sl[i]);
      if idx <> 0 then
        if like(adr,Copy(sl[i],idx+1,maxInt)) then
        begin
          s := URLDecode(ini.ReadString(ini_lays,URLEncodeQuote(sl[i]),s));
          cbLayout.Text := sl[i];
          break;
        end;
    end;
  finally
    sl.Free;
  end;


  with LvColumns do
  begin
    if AsString <> s then
    begin
      AsString := s;
      ReorderAndSizeListView(ListView);
    end;
  end;
  (*
  if mode > 64 then
    Dec(mode, 64)
  else
  begin { Normaler Modus (incl. Save und Optimiert }
    if mode = lvstyle then Exit;
    savesettings;
  end;

  if mode = 2 then ListView.SmallImages := ilMoreImages
              else ListView.SmallImages := SmallImages;
  with LvColumns do { Spalten Laden }
  begin
    case mode of
      1 : s := def1;
      2 : s := def2;
      3 : s := def3;
      4 : s := def4;
    end;
    AsString := ini.ReadString(ini_guilv + '.Columns', IntToStr(mode), s);
    ReorderAndSizeListview(ListView);
  end;
  lvstyle := mode;
  *)
end;

{ ImageList Managment }

function AddFileIconToIL(il: TXplorerImageList; FileName: string): integer;
begin
  result := GetIconImageAndIndex(Filename, il, true);
end;

function AddResIconToIL(il: TImageList; icon: string): integer;
var
  icnTemp: TIcon;
begin
  //il.
  icnTemp := TIcon.Create;
  icnTemp.LoadFromLazarusResource(icon); //Handle := LoadIcon(hInstance, PChar(id));
  Result := il.AddIcon(icnTemp);
  icnTemp.Free;
end;

procedure TMyFiles3Form.LoadPlugins;
begin
end;


// Default-Layouts in die INI schreiben
procedure TMyFiles3Form.dodefaultlayouts;

  procedure dolayout(loc,lay:string);
  begin
    if ini.ReadString(ini_lays,URLEncodeQuote(loc),'') = '' then
      ini.WriteString(ini_lays,URLEncodeQuote(loc),URLEncodeQuote(lay));
  end;

begin
  dolayout(str_thelaydisk,def1);
  dolayout(str_thelaydisks,def2);
  dolayout(str_thelaylist,def3);
  dolayout(str_thelaysearch,def3);
  dolayout(str_thelayverbund,def4);
end;

procedure TMyFiles3Form.FormCreate(Sender: TObject);
var
  s, s2, col: string;
  i, idx: integer;
  r : TGridRect;
  tempsl : TStringList;
  inilocation : string;
begin
  vers := 'v3.4';
  with TIniFile.Create(changefileext(Application.exename, 'Inst.INI')) do
  try
    inilocation := ReadString('MyFiles','INI',changefileext(Application.exename, '.INI'));
  finally
    Free;
  end;

  ini := TIniFile.Create(inilocation);

  dir_db := ini.ReadString(ini_folders, 'collections', ExtractFilePath(Application.ExeName)+'collections\');
  dir_rawdb := ini.ReadString(ini_folders, 'rawdb', ExtractFilePath(Application.ExeName)+'system\db\');
  dir_templ := ini.ReadString(ini_folders, 'templates', ExtractFilePath(Application.ExeName)+'templates\');
  dir_plugins := ini.ReadString(ini_folders, 'plugins', ExtractFilePath(Application.ExeName)+'plugins\');
  file_lame := ini.ReadString(ini_folders, 'LAME.EXE', ExtractFilePath(Application.ExeName)+'system\lame.exe');
  file_mpdll := ini.ReadString(ini_folders, 'ELAMP.BSP', ExtractFilePath(Application.ExeName)+'system\elamp.esp');

  dblock := False;
  ColIni := nil;

  notedb := nil;

  subjump := '';
  btnReg.Visible := not isreg;

  defhint := sbMain.panels[2].Text;
  {//ToBeConverted
  with elpMan.players[0] do
  begin
    PathToDll := file_mpdll;
    InputName := gettempdir + 'MyFiles.mp3';
  end;
  }
  lvkeydown := False;

  thumbmaxw := ini.ReadInteger(ini_guilv, 'ThumbWidth', 64);
  thumbmaxh := ini.ReadInteger(ini_guilv, 'ThumbHeight', 64);
  ilThumbs.Width := thumbmaxw + 8;
  ilThumbs.Height := thumbmaxh + 8;

  FPlugIns := TMyPlugins.Create;
  {//ToBeConverted LoadPlugins;}

  if not ini.ReadBool(ini_gui, ini_toolbg, False) then ControlBar.Picture := nil;

  dodefaultlayouts;

  sdExport.InitialDir := SpecialDirectory(CSIDL_Desktop);
  ApplicationPropertiesActivate(Sender);
  Toolbar.ShowCaptions := ini.ReadBool(ini_gui, ini_tbcaptions, True);
  if (ini.ReadBool(ini_gui, ini_splash, true)) or (not isreg) then
  begin
    splash := TfrmSplash.Create(Self);
    splash.show;
    splash.Enabled := False;
  end
    else splash := nil;
  Application.ProcessMessages;
//  lvstyle := 1;
  FListsLastSelect := nil;
  cursearch := nil;
  { Objekte }
  driveState := TStringList.Create;
  FCurLists := TList.Create;
  FSearchCache := TStringList.Create;
  LvColumns := TMyColumns.Create;

  { Init }
  CreateImages;

  idi_root := AddResIconToIL(ilMoreImages, 'ico501.ico');
  idi_disk := AddResIconToIL(ilMoreImages, 'ico502.ico');
  idi_nodisk := AddResIconToIL(ilMoreImages, 'ico503.ico');

  idi_closef := AddFileIconToIL(ilMoreImages, extractfilepath(application.exename));
  idi_openf := AddFileIconToIL(ilMoreImages, extractfilepath(application.exename));
//  AddFileIconToIL(ilThumbs,extractfilepath(application.exename),SHGFI_SMALLICON or SHGFI_OPENICON);

  with sgProps do
  begin
    Rows[0].CommaText := '" Eigenschaft"," Text"';
    RowHeights[0] := 12;
    r.Left := 1;
    r.Right := 1;
    r.Top := 1;
    r.Bottom := 1;
    sgProps.Selection := r;
  end;

  readsettings;
//  custlistview(1 + 64);
  sbMain.panels[1].Text := 'MyFindex ' + vers + '';


  if not ini.SectionExists('Config') then menConfigClick(nil);

//  btnClearSearchClick(nil);
  if Assigned(splash) then
    splash.lblColStat.Caption := 'Ladevorgang:'#13#10+str_s1+#13#10+str_s2;
  { welche Sammlung? }
  for i := 1 to paramcount do // Parameter zusammenfügen
    s := s + ParamStrUTF8(i) + ' ';
  callbyparam := paramcount <> 0;
  if Pos('myfiles:', lowercase(s)) = 1 then Delete(s, 1, 8);
  s := trim(s);
  if Pos('//',s) = 1 then
    Delete(s, 1, 2);

  col := '';
  idx := Pos(')', s);
  if idx <> 0 then
  begin
    s2 := Copy(s, 1, idx - 1);
    if Pos('(', s2) = 1 then Delete(s2, 1, 1);
    if ini.ReadString(ini_collections, s2, '') <> '' then
      col := s2;
    if col <> '' then
      Delete(s, 1, idx);
  end;
  { --- }
  if s = '' then s := '*';

  if col = '' then // LastCol
    col := ini.ReadString('Main', 'LastCollection', '*');
  if col = '' then  // Erste verfügbare
    begin
    tempsl := TStringList.Create;
      try
        ini.ReadSectionValues(ini_collections,tempsl);
        if tempsl.Count = 0 then
          menNewColClick(nil) else col := tempsl.names[0];
      finally
        tempsl.Free;
      end;
    end;

  { Ok, es wurde eine Col. gefunden! (wenn eine Neue Col erstellt wurde, muss sie hier nicht mehr geöffnet werden! }
  if col = '*' then col := '';
  if col <> '' then
  begin
    openCol(col, -1, s);
    if Assigned(splash) then
      if curcol <> '' then
        with splash.lblColStat do
          Caption := Caption + ' ' + str_s3 else
        with splash.lblCOlStat do
          Caption := Caption + str_s4;
  end else updatecolmenu;

  updatelistmenu;
  ini.DeleteKey('Main', 'LastCollection');
  timeout(False);
// Language
  with lvDriveState do
  begin
    Columns[0].Caption := str_drive;
    Columns[1].Caption := str_xdisk;
  end;
  fbSearchResetClick(nil);
//  pnlSearch.Height := pBottom.Top + pBottom.Height + 3;
//  pnlSearch.Width := sbSearch.ClientRect.Right - sbSearch.ClientRect.Left - (pnlSearch.Left * 2);
 // MyFiles Protocol
 with TRegistry.Create do
  try
    try
      RootKey := HKEY_CLASSES_ROOT;
      OpenKey('\' + txt_protocol, true);
      WriteString('', 'URL:MyFiles - Access to Multiple Disks');
      WriteString('URL Protocol', '');
      CloseKey;
      OpenKey('\' + txt_protocol + '\shell\open\command', true);
      WriteString('', application.exename + ' %L');
      CloseKey;
      OpenKey('\' + txt_protocol + '\DefaultIcon', True);
      WriteString('', application.exename + ',1');
      CloseKey;
    except
    end;
  finally
    Free;
  end;
end;

procedure TMyFiles3Form.ListViewCompare(Sender: TObject; Item1, Item2: TListItem; Data: Integer; var Compare: Integer);
var
  i1, i2 : TMyItem;
  t1, t2 : Byte;
begin
  i1 := PLVData(item1.Data)^.Item;
  i2 := PLVData(item2.Data)^.Item;
  t1 := i1.typ;
  t2 := i2.typ;
  if t1 = 4 then t1 := ek_folder;
  if t2 = 4 then t2 := ek_folder;
  if (t1 <> t2) and ((t1 <> ek_file) or (t2 <> ek_file)) then
    Compare := MyCompareItems(cl_typ,i1,i2) else
      Compare := MyCompareItems(MyFiles3Form.LvColumns.DID[abs(ParamSort)-1],i1,i2);
  if paramsort < 0 then Compare := -Compare;
end;
end;

{//ToBeConverted
procedure TMyFiles3Form.begindrag(copymode: Boolean);
var
  i: integer;
begin
  if not Assigned(ListView.Selected) then Exit;
    MustBeAvailable(LVMyI(ListView.Selected));

  //Start the dragdrop...
  dropFS.DragTypes := [dtCopy];
  dropFS.Files.Clear;
  for i := 0 to Listview.items.Count - 1 do
    // wenn ausgewählt und verfügbar...
    if (Listview.items.item[i].Selected) and IsAvailable(LVMyI(Listview.items.item[i])) then
      dropFS.Files.Add(GetLVIFileName(Listview.items.item[i], True));
  if copymode then dropFS.copytoclipboard else dropFS.execute;
end;
}

procedure TMyFiles3Form.ListViewMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if ListView.Dragging then Exit;
  //Make sure mouse has moved at least 10 pixels before starting drag ...
  if (not(ssLeft in Shift) and not(ssRight in Shift)) or (DragPoint.X = -1) or ((abs(DragPoint.X - X) < 10) and (abs(DragPoint.Y - Y) < 10)) then else
   if (ssAlt in Shift) then { ListenDrag }
   begin
     ListView.BeginDrag(True,-1);
     if pc1.ActivePage <> tsListen then
       pc1.ActivePage := tsListen;
   end
   else
     begindrag(False);
end;

function TMyFiles3Form.GetObjectColor(typ:Byte;diskid:Smallint;folderid:integer;Caption:string):TColor;
var
  none_available: Boolean;
  flder: string;
begin
  Result := colAv;
  if dblock then Exit;  
  if (typ = lvt_verbund) then
  begin
    //with dm, tblFolders do
    //begin
      flder := dm.sqlqFolders.Lookup('FOLDERID', folderid, 'Folder');
      if Caption <> '' then flder := flder + Caption + '\';
      dm.sqlqFolders.Filter := 'Folder = ''' + escape(flder) + '''';
      dm.sqlqFolders.Filtered := True;
      none_available := True;
      dm.sqlqFolders.First;
      while not dm.sqlqFolders.eof do
      begin
        if Pos(',' + dm.sqlqFolders.FieldByName('MediaID').AsString + ',', avdiskids) <> 0 then
        begin
          none_available := False;
          break;
        end;
        dm.sqlqFolders.Next;
      end;
      dm.sqlqFolders.Filtered := False;
    //end;
    if none_available then
    begin
      Result := colGray;

    end;
  end else
    if Pos(',' + IntToStr(diskid) + ',', avdiskids) = 0 then
      Result := colGray;
end;


procedure TMyFiles3Form.ListViewCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
var
  i : integer;
begin
  with PLVData(Item.Data)^ do
  begin
    Listview.Canvas.Font.Color := GetObjectColor(Item.typ,Item.ID.diskid,Item.ID.folderid,Item.Name);
    Grayed := Listview.Canvas.Font.Color = colGray;
  end;
  for i := 0 to FCurLists.Count - 1 do
    if TMyList(FCurLists[i]).IndexOf(
      PLVData(item.data)^.item.ID) <> -1 then
        with Listview.Canvas.Font do
        begin
          Style := [fsBold];
          Color := TMyList(FCurLists[i]).Color;
          break;
        end;
end;

{ Datei / Ordner wird ausgewählt }

procedure TMyFiles3Form.ListViewSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);

var
  data: TLVData;
  prev: Boolean;
  s: string;
  h: integer;
  { Previews anzeigen }

  procedure zipprev(filez: string);
  var
    s: string;
    i, idx: integer;
    Size: Int64;
  begin
    with lvPZip.Items do
    begin
      beginupdate;
      Clear;
    end;
    try
      with TStringList.Create do
      try
        Text := filez;
        for i := 2 to Count - 1 do
        begin
          s := Strings[i];
          with lvPZip.Items.Add do
          begin
            idx := Pos('|', s);
            Caption := Copy(s, 1, idx - 1);
            system.Delete(s, 1, idx);
            idx := Pos('|', s);
            Size := strtoint64(Copy(s, 1, idx - 1));
            if Size <> -1 then
              Subitems.Add(SizeToStr(Size,0,false)) else
              Subitems.Add('SUBDIR');
            system.Delete(s, 1, idx);
            Subitems.Add('\' + s);
          end;
        end;

      finally
        Free;
      end;
      pnlPrev.Tag := 90;
    finally
      lvPZip.Items.EndUpdate;
    end;
  end;

  procedure picprev(bf: TBlobField);
  var
    MS: TStream;
    jpg: TJPEGImage;


  begin
    MS := dm.sqlqFiles.CreateBlobStream(bf, bmRead);
    jpg := TJPEGImage.Create;
    try
      jpg.CompressionQuality := 80;
      MS.seek(0, soFromBeginning);
      jpg.LoadFromStream(MS);

      imgPImages.picture.assign(jpg);

      { Für die Vorschau benötigte Höhe festlegen }
      pnlPrev.Tag := imgPImages.picture.Height;

//      tsPreviewResize(Self);
//      pnlPHead.Caption := dm.tblFilesTextPreview.AsString;
    finally
      jpg.Free;
      MS.Free;
    end;
  end;

  procedure mp3prev;
  begin
    sbPlayMPEG.Enabled := True;
    sbPlayMPEG.Down := False;
    if cbAutoPlay.checked then tmrAutoPlay.Enabled := True;
    pnlPrev.Tag := 21;
  end;

begin
  { Save Note }
  try
    mNotesExit(nil);
  except end;

  notedb := nil;


(*  with dm,tblFolders do
    begin
    if State = dsInsert then Cancel else
      if tblFoldersDISKID.Value = -1 then
        if tblFoldersNote.Value = '' then tblFolders.Delete;
    end;                                 *)
  { MP3 schließen }
  tmrAutoPlay.Enabled := False;
  { Flackern vermeiden, falls mit Cursor-Tasten gerollt wird }
  if (lvkeydown) and (listview.selcount = 0) then Exit;
  {//ToBeConverted
  with elpMan.Players[0] do
  try
    if Initialized and (PlayerMode > pmClosed) then
      Close;
  except
  end;
  }

  mNotes.Enabled := ListView.Selcount = 1;
  if not mNotes.Enabled then mNotes.Text := '';

  mNotes.Tag := -1;
  prev := False;
  { Einzelne Datei selektiert -> Notiz & Vorschau }
  if ListView.SelCount = 1 then
  begin
    if ListView.Selected.Data = nil then Exit;
    data := PLVData(ListView.Selected.Data)^;
    { Datensätze positionieren, Notes anzeigen }
    with mNotes do
    begin
      Font.Color := clWindowText;
      Tag := data.Item.typ;
    end;
    case data.Item.typ of
      lvt_verbund: begin
          //with dm, tblFolders do
          //begin
            dm.sqlqFolders.IndexName := '';
            s := dm.sqlqFolders.LookUp('FOLDERID', data.item.id.folderid, 'Folder') + item.Caption + '\';
            if dm.sqlqFolders.Locate('MediaID;Folder', VarArrayOf([-1, s]), []) then
              mNotes.Text := dm.sqlqFolders.FieldByName('Note').AsString else
            begin
              dm.sqlqFolders.Append;
              dm.sqlqFolders.FieldByName('MediaID').Value := -1;
              dm.sqlqFolders.FieldByName('Folder').Value := s;
              dm.sqlqFolders.Post;
            end;
            mNotes.Tag := 128;
            notedb := dm.sqlqFolders;
            bookmarkedNote := dm.sqlqFolders.FieldByName('FolderID').AsInteger;
            defhint := str_verbund + ': ' + ListView.Selected.Caption;
          //end;
        end;
      lvt_disk: begin
          dm.sqlqMedia.IndexName := '';
          dm.sqlqMedia.Locate('MediaID', data.item.id.diskid, []);
          notedb := dm.sqlqMedia;
          bookMarkedNote := dm.sqlqMedia.FieldByName('MediaID').AsInteger;
          mNotes.Text := dm.sqlqMedia.FieldByName('Note').AsString;
          defhint := str_xdisk + ': ' + ListView.Selected.Caption;
      end;
      lvt_ordner, lvt_file: begin
          dm.sqlqFiles.Locate('MediaID;FolderID;FileID', VarArrayOf([data.item.id.diskid, data.item.id.folderid, data.item.id.fileid]), []);
          notedb := dm.sqlqFiles;
          bookmarkedNote := dm.sqlqFiles.FieldByName('FileID').AsInteger;
          if (data.item.typ = lvt_ordner) and (trim(dm.sqlqFiles.FieldByName('Note').AsString) = '') then
            begin
              dm.sqlqFolders.IndexName := '';
              s := dm.sqlqFolders.LookUp('FOLDERID', data.item.id.folderid, 'Folder') + item.Caption + '\';
              if dm.sqlqFolders.Locate('MediaID;Folder', VarArrayOf([-1, s]), []) then
              mNotes.Text := dm.sqlqFolders.FieldByName('Note').Value;
              mNotes.Font.Color := clBlue;
              mNotes.Tag := 0;
            end
          else
            mNotes.Text := dm.sqlqFolders.FieldByName('Note').AsString;
          defhint := GetLVIFileName(ListView.selected, True);
        end;
    end; {case}
    { Wenn Datei: Vorschau anzeigen }
    if data.item.typ = lvt_file then
      //with dm, tblFiles do
      begin
        pnlPAudio.Tag := 0;
        imgPImages.Tag := 0;
        lvPZip.Tag := 0;
        case dm.sqlqFiles.FieldByName('BKind').Value of { Binär }
          pk_img: begin prev := True; imgPImages.Tag := 1; picprev(TBlobField(dm.sqlqFiles.FieldByName('BinPreview'))); end;
          pk_mp3: begin prev := True; pnlPAudio.Tag := 1; mp3prev; end;
        end;
        case dm.sqlqFiles.FieldByName('TKind').Value of { Text }
          pk_zipfile:
          begin
            prev := True;
            lvPZip.Tag := 1;
            zipprev(dm.sqlqFiles.FieldByName('TextPreview').Value);
          end;
(*         pk_html: begin; prev := True; mPGen.Tag := 1; genprev(tblFilesTextPreview.Value, true); end;
          pk_txt: begin; prev := True; mPGen.Tag := 1; genprev(tblFilesTextPreview.Value, false); end;
          pk_verinfo: begin prev := True; mPGen.Tag := 1; verinfoprev(tblFilesTextPreview.Value); end;
          pk_id3: begin prev := True; mPGen.Tag := 1; id3prev(tblFilesTextPreview.Value); end; }
          else begin; prev := False; mPGen.Tag := 1; genprev(tblFilesTextPreview.Value, false); end; *)
        end;
        { Nur benutzte Preview-Controls anzeigen }
        with pnlPAudio do Visible := Tag = 1;
        with imgPImages do
          begin Visible := Tag = 1; BringToFront; end;
        with lvPZip do Visible := Tag = 1;
      end;

    if not prev then sbPlayMPEG.Enabled := False;
    sbMain.Panels[1].Text := SizeToStr(PLVData(ListView.Selected.Data)^.item.Size,0,false);

    FillsgProp( data.Item );

  end {if ListView.Selcount...}
  else
    if ListView.SelCount > 1 then
    begin
      defhint := Format(str_selected, [ListView.SelCount * 1.0]);
      with tmrSumSize do
        begin Enabled := False; Enabled := True; end; { Timer neu starten }
    end else
    begin
      defhint := str_nothing;
      tmrSumSize.Enabled := False; tmrSumSize.Enabled := True; { Timer neu starten }
    end;

  sbMain.Panels[2].Text := defhint;

  { Fett-Druck der Listen-Liste Updaten }
  if pc1.ActivePage = tsListen then
    lvLists.Update; //UpdateItems(0, maxInt);

  pnlProps.Visible := ListView.SelCount = 1;

  if prev then
    lblPrev.Font.Color := clBlue else lblPrev.Font.Color := clGrayText;
  if sgProps.Cells[0,1] <> '' then
    lblProps.Font.Color := clBlue else lblProps.Font.Color := clGrayText;
  mNotesChange(nil);

  if not prev then pnlPrev.Tag := 20;
  h := pnlHProps.Height;
  if sgProps.Visible then Inc(h, sgProps.Height);
  if mNotes.Visible then Inc(h, mNotes.Height);
  Inc(h, pnlPrev.Tag);

  pnlProps.Height := h + 5;
end;

procedure TMyFiles3Form.menAnyDiskAddClick(Sender: TObject);
begin
  if timeout(True) then Exit;
  QuickInfo(-6);
  dodiskadd('*', false);
end;

function ExtractLastFEntry(s: string): string;
var
  i: integer;
begin
  Delete(s, Length(s), 1);
  for i := Length(s) downto 1 do
    if s[i] = '\' then
    begin
      Result := Copy(s, i + 1, Length(s));
      break;
    end;
end;

function GetPathFromTNode(Node: TTreeNode; newroot: integer; var level: integer): string;
var
  i, p: integer;
begin
  level := 1;
  Result := Node.Text;
  while Assigned(Node.Parent) do
  begin
    Node := Node.Parent;
    Result := Node.Text + '\' + Result;
    Inc(level);
  end;
  Dec(level, newroot);
  for i := 1 to newroot do
  begin
    p := Pos('\', Result);
    if p = 0 then p := Length(Result);
    Delete(Result, 1, p);
  end;
end;

{ In: DiskId }
{ ... lookup in tblDisks ... }
{ Out: String mit Label oder Laufwerksbuchstabe, falls Datenträger eingelegt }

function TMyFiles3Form.DiskId2String(diskid: integer; resolve: boolean): string;
var
  disklabel: string;
  idx: integer;
begin
  disklabel := str_nolabel;
  disklabel := MyGetDisk(MyID(diskid,0,0));
  if resolve then
    idx := drivestate.IndexOf(disklabel) else idx := -1;
  if idx <> -1 then
    Result := chr(integer(drivestate.Objects[idx])) + ':' else
    Result := '<' + disklabel + '>';
end;

{ In: TMytem }
function TMyFiles3Form.IsAvailable(item: TMyItem): Boolean;
begin
  if item.typ = lvt_verbund then Result := False
  else Result := Pos(',' + IntToStr(item.id.diskid) + ',', avdiskids) <> 0;
end;

function TMyFiles3Form.LVMyI(item: TListItem):TMyItem;
begin
  Result := PLVData(item.data)^.item;
end;

procedure TMyFiles3Form.AddFolder2TV(tv: TTreeView; disk: integer; folder: string; level: Byte; ParentNode: TTreeNode);
var
  newNode: TTreeNode;
  s: string;
begin
  //with dm, tv, tblFolders do
  //begin
    // Einträge
    dm.sqlqFolders.disableControls;
    s := 'Folder = ''' + escape(folder) + '*'' and Level = ' + IntToStr(level);
    if disk <> -1 then
      s := s + ' and DISKID = ' + inttostr(disk);
    dm.sqlqFolders.Filter := s;
    dm.sqlqFolders.Filtered := True;
    dm.sqlqFolders.First;
    newNode := nil;
    while not dm.sqlqFolders.eof do
    try
      s := ExtractLastFEntry(dm.sqlqFolders.FieldByName('Folder').AsString);
      if Assigned(newNode) then { Doppelte Einträge (Verbundanzeige!) verhindern ... }
        if lowercase(newNode.Text) = lowercase(s) then
          continue;
      newNode := tv.Items.AddChild(ParentNode, s);
      newNode.ImageIndex := idi_closef;
      newNode.SelectedIndex := idi_openf;
      newNode.Data := New(PTVData);
      with PTVData(newNode.Data)^ do
      begin
        MediaID := disk;
        FolderID := dm.sqlqFolders.FieldByName('FolderID').Value;
      end;
        // Dummy Eintrag?
      if dm.sqlqFolders.FieldByName('HasSubFolders').Value then
        tv.Items.AddChild(newNode, ''); // Jepp!
    finally
      dm.sqlqFolders.Next;
    end;
    dm.sqlqFolders.Filtered := false;
    dm.sqlqFolders.EnableControls
  //end;
end;

procedure TMyFiles3Form.updatetvs;
var
  topNode, newNode: TTreeNode;
begin
  { Verbund tv füllen }
  cleartvs;
  if not ini.ReadBool(ini_colpre + curcol, ini_combodis, False) then
  begin
    //with dm do
    //begin
      dm.sqlqFolders.DisableControls;
      topNode := tvVerbund.Items.Add(nil, ini.ReadString(ini_collections, curcol, 'root'));
      with topNode do
      begin
        ImageIndex := idi_root;
        SelectedIndex := idi_root;
      end;
      AddFolder2TV(tvVerbund, -1, '\', 2, topNode);
      dm.sqlqFolders.EnableControls;
      dm.sqlqFolders.Filtered := False;
    //end;
    topNode.Expand(false);
  end;

  { Datenträger tv füllen }
  topNode := tvDisks.Items.Add(nil, ini.ReadString(ini_collections, curcol, 'root'));
  with topNode do
  begin
    ImageIndex := idi_root;
    SelectedIndex := idi_root;
  end;
  //with dm, tblDisks do
  //begin
    dm.sqlqMedia.Filtered := False;
    dm.sqlqMedia.indexname := 'IdxLabel';
    dm.sqlqMedia.First;
    while not dm.sqlqMedia.eof do
    begin
      newNode := tvDisks.Items.AddChild(topNode, dm.sqlqMedia.FieldByName('Label').DisplayText);
      with newNode do
      begin
        ImageIndex := idi_disk;
        SelectedIndex := idi_disk;
        Data := New(PTVData);
        //with PTVData(Data)^ do
        //begin
          PTVData(Data)^.MediaID := dm.sqlqMedia.FieldByName('MediaID').Value;
          PTVData(Data)^.FolderID := -1;
        //end;
      end;
      //with dm, tblFolders do
      //begin
        dm.sqlqFolders.IndexName := '';
        dm.sqlqFolders.Filter := 'MediaID = '+IntToStr(dm.sqlqMedia.FieldByName('MediaID').Value);
        dm.sqlqFolders.Filtered := True;
        dm.sqlqFolders.First;
        dm.sqlqFolders.Next;
        if not dm.sqlqFolders.eof then  tvDisks.Items.AddChild(newNode, '');
        dm.sqlqFolders.Filtered := False;
      //end;
      Next;
    end;
  //end;
  topNode.Expand(false);
end;

procedure TMyFiles3Form.tvVerbundExpanding(Sender: TObject; Node: TTreeNode;
  var AllowExpansion: Boolean);
var
  level: integer;
begin
  if Node.getFirstChild.Text = '' then
  begin
    tvVerbund.Items.Delete(Node.getFirstChild);
    AddFolder2TV(tvVerbund, -1, '\' + GetPathFromTNode(Node, 1, level) + '\', level + 2, Node);
  end;
end;

function TMyFiles3Form.GetFileName(item:TMyItem; resolve:boolean):string;
var
  path: string;
begin
  if item.typ <> lvt_disk then
  begin
    path := MyGetPath(item.id);
    Result := DiskId2String(item.id.DiskId, resolve) + path + item.Name;
  end
  else Result := DiskId2String(item.id.DiskId, resolve) + '\';
end;

{ In: ListItem; Resolve: Statt Label Laufwerk falls verfügbar verwenden }
function TMyFiles3Form.GetLVIFileName(item: TListItem; resolve: Boolean): string;
begin
  Result := GetFileName(PLVData(item.Data)^.item,resolve);
end;

{ Fügt die Datei des aktuell in tblFiles ausgewählten DS in der Listenansicht hinzu }

{ neu }
procedure TMyFiles3Form.AddItemToListview(Item:TMyItem; VerbundMode: Boolean);
var
  foundit: Boolean;
  i: integer;
  lvitem: TListItem;

begin
  with ListView do
  begin
    // Verbundfunktion
    if VerbundMode then
    begin
      foundit := False;
      if Item.Typ = ek_folder then { Ordner: Listview durchsuchen, ob schon ein solcher Ordner schon exist. }
        for i := 0 to Items.Count - 1 do
          with Items[i] do
            if (PLVData(data)^.Item.Typ in [lvt_verbund,lvt_ordner]) and (ansilowercase(caption) = ansilowercase(Item.Name)) then
            begin
              { Umwandlung in Verbund-Ordner }
              if PLVData(data)^.Item.Typ = lvt_ordner then
              begin
                PLVData(data)^.Item.typ := lvt_verbund;
                PLVData(data)^.item.ID.diskid := -1;
                if LvColumns.IndexOf(cl_typ) <> -1 then
                  Subitems[LvColumns.IndexOf(cl_typ)-1] := str_verbund;
              end;
              foundit := True;
              if PLVData(data)^.Item.Changed > Item.Changed then
                PLVData(data)^.Item.Changed := Item.Changed;

              // Größe Erhöhen
              PLVData(data)^.Item.Size := PLVData(data)^.Item.Size + Item.Size;
              if LvColumns.IndexOf(cl_size) <> -1 then
                subitems[LvColumns.IndexOf(cl_size)-1] := LvColumns[PLVData(data)^.Item,LvColumns.IndexOf(cl_size)];
              if LvColumns.IndexOf(cl_disk) <> -1 then
                subitems[LvColumns.IndexOf(cl_disk)-1] := str_misc;
              if LvColumns.IndexOf(cl_dskpfad) <> -1 then
                subitems[LvColumns.IndexOf(cl_dskpfad)-1] := MyGetPath(PLVData(data)^.item.ID);
              if LvColumns.IndexOf(cl_attr) <> -1 then
                subitems[LvColumns.IndexOf(cl_attr)-1] := '····';
              if LvColumns.IndexOf(cl_note) <> -1 then
                subitems[LvColumns.IndexOf(cl_note)-1] := '';
              break;
            end;
      if foundit then Exit;
    end;
    { Hinzufügen ... }
    lvItem := Items.Add;
    with lvItem do
    begin
      Data := New(PLVData);
      PLVData(Data)^.Item.ID := Item.ID;
      PLVData(Data)^.Item := Item;
      PLVData(Data)^.Item.TextPreview := Item.TextPreview;
      PLVData(Data)^.Item.Note := Item.Note;      
      if Item.Typ = ek_disk then
      begin
        ImageIndex := idi_Disk;
      end
        else { Icon wird erst beim Draw geholt }
        ImageIndex := -1;
      { Spalten }
      Caption := LvColumns[Item,0];
      try      { dirtyhack (falls DB defekt) }
        with SubItems do
          for i := 1 to LvColumns.Count - 1 do
            Add(LvColumns[Item,i]);
      except
        Delete;
      end;
    end; {with items.add}
  end;
end;


procedure TMyFiles3Form.AddCurrentFile2Listview(VerbundMode: Boolean);
begin
  AddItemToListView(dbCurrentItem,VerbundMode);
end;
(*
var
  foundit: Boolean;
  i: integer;
  item: TListItem;
  s, path: string;
begin
  with dm, tblFiles, ListView do
  begin
    if VerbundMode then
    begin
      foundit := False;
      if tblFilesEntryKind.Value = ek_folder then { Ordner: Listview durchsuchen, ob schon ein solcher Ordner schon exist. }
        for i := 0 to Items.Count - 1 do
          with Items[i] do
            if ((PLVData(data)^.typ = lvt_verbund) or (PLVData(data)^.typ = lvt_ordner)) and (lowercase(caption) = lowercase(tblFilesFileName.AsString)) then
            begin
              if PLVData(data)^.typ = lvt_ordner then { Umwandlung in Verbund-Ordner }
              begin
                PLVData(data)^.typ := lvt_verbund;
                PLVData(data)^.diskid := -1;
                if PLVData(data)^.changed < tblFilesChanged.AsDateTime then
                  PLVData(data)^.changed := tblFilesChanged.AsDateTime;
                if lvcols[cl_typ] <> -1 then
                  Subitems[lvcols[cl_typ]] := str_verbund;
              end;
              foundit := True;
              PLVData(data)^.Size := PLVData(data)^.Size + Trunc(tblFilesSize.AsFloat);
              if lvcols[cl_size] <> -1 then
                subitems[lvcols[cl_size]] := FormatSize(PLVData(data)^.Size);
              if lvcols[cl_disk] <> -1 then
                subitems[lvcols[cl_disk]] := str_misc;
              if lvcols[cl_dskpfad] <> -1 then
                subitems[lvcols[cl_dskpfad]] := dm.tblFolders.LookUp('FOLDERID', PLVData(Data)^.folderid, 'Folder');
              if lvcols[cl_attr] <> -1 then
                subitems[lvcols[cl_attr]] := '····';
              if lvcols[cl_note] <> -1 then
                subitems[lvcols[cl_note]] := '';

              break;
            end;
      if foundit then Exit;
    end;
    { Hinzufügen ... }
    Item := Items.Add;
    with Item do
    begin
      Caption := tblFilesFileName.AsString;
      Data := New(PLVData);
      with PLVData(Data)^ do
      begin
        Typ := lvt_file;
        FolderId := tblFilesFOLDERID.Value;
        DiskId := tblFilesDISKID.Value;
        FileId := tblFilesFILEID.Value;
      { feststellen ob Liste aktiv und entsprechend ob in dieser enthalten }
        Selected := False;
        if curlist <> '' then
          selected := thelist.indexof(getuname(tblFilesDISKID.AsInteger, tblFilesFOLDERID.AsInteger, tblFilesFileName.AsString)) <> -1;

        Size := trunc(tblFilesSize.AsFloat);
        Changed := tblFilesChanged.AsDateTime;
//      dbBookmark := GetBookmark;
      end;
      if tblFilesEntryKind.Value = ek_folder then
        PLVData(Data)^.typ := lvt_ordner;

    { Icons wird erst beim Draw geholt }
      ImageIndex := -1;
      with SubItems do { Spalten füllen }
      begin
        if lvcols[cl_size] <> -1 then { Größe formatieren }
          Add(FormatSize(trunc(tblFilesSize.AsFloat)));
        if lvcols[cl_typ] <> -1 then
          Add('');
        if lvcols[cl_changed] <> -1 then
          Add(tblFilesChanged.DisplayText);
        if lvcols[cl_note] <> -1 then
          if not tblFilesNote.IsNull then
            Add(StringReplace(trim(dm.tblFilesNote.AsString), #13#10, ' ', [rfReplaceAll]))
          else if tblFilesTKind.Value <> 0 then
            Add(StringReplace(trim(tblFilesTextPreview.Value), #13#10, ' ', [rfReplaceAll]))
          else
            Add('');

        if lvcols[cl_attr] <> -1 then
          add(AttrToString(tblFilesAttr.Value));

        if (lvcols[cl_disk] <> -1) or (lvcols[cl_dskpfad] <> -1) then
        begin
          with dm, tblDisks do
          begin
            IndexName := '';
            SetKey;
            
{************* AB HIER FOLGT QUELLCODE VOM 18.11 ********************************}            
            tblDisksDISKID.AsInteger := PLVData(Data)^.diskid;
            if GotoKey then
              s := tblDisksLabel.AsString else raise Exception.Create('DiskId not found (' + IntToStr(PLVData(Data)^.diskid) + ')');
          end;
        end;
        if lvcols[cl_disk] <> -1 then
          Add(s);
        if (lvcols[cl_pfad] <> -1) or (lvcols[cl_dskpfad] <> -1) then
        begin
          path := dm.tblFolders.LookUp('FOLDERID', PLVData(Data)^.folderid, 'Folder');
        end;
        if lvcols[cl_pfad] <> -1 then
          Add(path);
        if lvcols[cl_dskpfad] <> -1 then
          Add('<' + s + '>' + path);
      end;
    end; {with items.add}
  end;
end;
*)
{ In: FolderId }
{ ... Fügt die Dateien des mit FID bestimmen Ordners
in die Listenansicht ein und sortiert neu }

procedure TMyFiles3Form.AddFolder2ListView(FID: Integer; VerbundMode: boolean);
var
  i : integer;
begin
  i := 0;
  //with dm, tblFiles do
  //begin
    if dm.sqlqFiles.Locate('FolderID', fid, []) then
      while (dm.sqlqFolders.FieldByName('FolderID').Value = FID) and (not dm.sqlqFolders.eof) do
      begin
        Inc(i);
        if i = 100 then
        begin
          pbProgress.Smooth := True;
          StartWait(1000,'');
          FWaitInt := 100;
        end;
        AddCurrentFile2Listview(VerbundMode);
        Next;
        if i > 100 then StepWait(Self);
      end;
  //end;
  StopWait;
  pbProgress.Smooth := False;
end;

procedure TMyFiles3Form.tvVerbundChange(Sender: TObject; Node: TTreeNode);
var
  i: integer;
begin
  Delay(250); // tvVerbund.ChangeDelay := 250; => Wait in OnChange einbauen
  if (tvVerbund.Selected = nil) then Exit;
  with tvDisks do
  begin
    if Assigned(Selected) then
      Selected.Focused := True;
    Selected := nil;
  end;
  if (tvVerbund.Selected = tvVerbund.Items[0]) then
    address := '\'
  else
    address := '\' + GetPathFromTNode(tvVerbund.Selected, 1, i);
  updateLV;
end;

procedure TMyFiles3Form.ListViewColumnClick(Sender: TObject;
  Column_: TListColumn);
begin
  //with (Sender as TListView) do
  //begin
    if Column_.Tag + 1 = TListView(Sender).Tag then TListView(Sender).Tag := -Tag else
      TListView(Sender).Tag := Column_.tag + 1;
    TListView(Sender).AlphaSort; //CustomSort(@GenSortProc, Tag);
  //end;
end;

{ Enter/Doppelklick im ListView Handler }
{ MultiSelect fähig }

procedure TMyFiles3Form.ListViewDblClick(Sender: TObject);
var
  s: string;
  i: integer;
begin
  if not Assigned(ListView.Selected) then Exit;
  case PLVData(ListView.Selected.Data)^.item.typ of
    lvt_ordner: begin
        if Copy(location,1,1) = '\' then { im Verbundmodus bleiben }
        begin
          s := GetLVIFileName(ListView.Selected, False);
          address := Copy(s, Pos('>', s) + 1, Length(s));
        end else
          address := GetLVIFileName(ListView.Selected, false);
        updateTV;
      end;
    lvt_verbund: begin
        s := GetLVIFileName(ListView.Selected, False);
        address := Copy(s, Pos('>', s) + 1, Length(s));
        updateTV;
      end;
    lvt_file: with ListView do
        for i := 0 to Items.Count - 1 do
          if Items[i].Selected then
          begin
            MustBeAvailable(LVMyI(Items[i]));
            s := GetLVIFileName(Items[i], true);
             OpenDocument(PChar(s)); { *Converted from ShellExecute* }
          end;
    lvt_disk: begin
        address := '<' + ListView.Selected.Caption + '>';
        updateTV;
      end;
  end;
end;

procedure TMyFiles3Form.FormDestroy(Sender: TObject);
var
  s: string;
begin
  if Assigned(splash) then splash.Free;
  tmrDrivestate.Enabled := false;
  if Assigned(notedb) then
    notedb.freebookmark(notebm);
  notedb := nil;
  smallimages.Free;
  savesettings;
  ApplicationPropertiesDeactivate(nil);
  SaveAndFreeLists; // Gibt die Listen der akt. Sammlung frei / speichert sie
  clearlistview; // Listview-Daten freigeben
  cleartvs;
  with ini do // "Letzte Collection" speichern
  begin
    s := ReadString(ini_config, ini_startcol, inival_def);
    if s = inival_def then s := curcol;
    WriteString('Main', 'LastCollection', s);
    savehistory;
    Free;
  end;
  if Assigned(ColIni) then ColIni.Free;
  {//ToBeConverted
  with elpMan.players[0] do // sch*** MP3-Player freigeben :)
    if Initialized then Deinit;
  DeleteFileUTF8(elpMan.players[0].InputName);
  }
  FPlugIns.Free;
  ClearSearchCache;
  FSearchCache.Free;
  drivestate.Free;
  LvColumns.Free;
end;

procedure TMyFiles3Form.tmrDrivestateTimer(Sender: TObject);
var
  i: integer;
  s: string;
  item: TListItem;
  drives: string;
begin
  pnlManUpdate.Visible := not ini.ReadBool(ini_colpre + curcol, 'AutoUpdate', true);
  drives := ini.ReadString(ini_colpre + curcol, 'drives', '');
  tmrDriveState.Enabled := False;
  try
    if Sender = nil then s := '*' else s := drivestate.commatext;
    drivestate.Clear;
    for i := 1 to Length(drives) do
      drivestate.AddObject(Copy(MyVolumeID(drives[i]), 1, 25), Pointer(Ord(drives[i])));
    if s <> drivestate.commatext then // Laufwerke geändert
    begin
      if Assigned(frmReadDisk) then
        with frmReadDisk do
          if Tag = 0 then lvDrivesChange(nil,nil,TItemChange(nil));

      avdiskids := ',';
      with lvDriveState do
      begin
        Items.Clear;
        for i := 0 to drivestate.Count - 1 do
        begin
          item := Items.Add;
          item.Caption := chr(integer(drivestate.objects[i])) + ':';
          if drivestate[i] = '*' then
          begin
            item.Subitems.Add(str_nodisc);
            item.ImageIndex := idi_nodisk;
          end
          else
          begin
            item.Subitems.Add(drivestate[i]);
            item.ImageIndex := idi_disk;

            with dm, tblDisks do
            begin
              IndexName := 'IdxLabel';
              SetKey;
              tblDisksLabel.Value := drivestate[i];
              if GotoKey then
                avdiskids := avdiskids + tblDisksDISKID.AsString + ',';
            end;
          end;
        end;
      end;
      if Assigned(frmWaitForDisk) then frmWaitForDisk.ModalResult := mrOK;
      ListView.Repaint;
      tvVerbund.Repaint;
      tvDisks.Repaint;
    end;
  finally
    tmrDriveState.Enabled := not pnlManUpdate.Visible;
  end;
end;

procedure TMyFiles3Form.tvDisksExpanding(Sender: TObject; Node: TTreeNode;
  var AllowExpansion: Boolean);
var
  level: integer;
  s: string;

begin
  if Node.getFirstChild.Text = '' then
  begin
    tvDisks.Items.Delete(Node.getFirstChild);
    s := GetPathFromTNode(Node, 2, level);
    if s <> '' then s := s + '\';
    AddFolder2TV(tvDisks, PTVData(Node.Data)^.MediaID, '\' + s, level + 2, Node);
  end;
end;

procedure TMyFiles3Form.tvDisksChange(Sender: TObject; Node: TTreeNode);
var
  s, s2: string;
  i: integer;
begin
  tvDisks.ChangeDelay := 250;
  if (tvDisks.Selected = nil) then Exit;
  with tvVerbund do
  begin
    if Assigned(Selected) then
      Selected.Focused := True;
    Selected := nil;
  end;
  if (tvDisks.Selected = tvDisks.Items[0]) then
  begin
    address := ''; { Disk-Übersicht }
//    location := cbAdresse.Text;
  end else
  begin
    s := GetPathFromTNode(tvDisks.Selected, 1, i) + '\';
    s2 := Copy(s, 1, Pos('\', s) - 1);
    Delete(s, 1, Length(s2));
    Delete(s, Length(s), 1);
    address := '<' + s2 + '>' + s;
  end;
  updateLV;
end;

procedure TMyFiles3Form.parseaddr(s: string; var drv, path: string);
var
  p: integer;
begin
  drv := '';
  path := '';
  if s <> '' then
  begin
    if s[Length(s)] <> '\' then s := s + '\';
    p := Pos('>', s);
    if p <> 0 then
    begin
      drv := Copy(s, 1, p - 1);
      Delete(s, 1, p);
      if drv[1] = '<' then Delete(drv, 1, 1);
    end;
    path := s;
  end;
  if drv + path <> '' then
  begin
    if path[Length(path)] <> '\' then path := path + '\';
    if path[1] <> '\' then path := '\' + path;
  end;
end;

procedure TMyFiles3Form.parseaddr2(s: string; var drv, path, fn: string);
var
  p: integer;
begin
  drv := '';
  path := '';
  fn := '';
  if s <> '' then
  begin
    p := Pos('>', s);
    if p <> 0 then
    begin
      drv := Copy(s, 1, p - 1);
      Delete(s, 1, p);
      if drv[1] = '<' then Delete(drv, 1, 1);
    end;
    path := extractfilepath(s);
    fn := extractfilename(s);
  end;
end;

procedure TMyFiles3Form.resetThumbs;
var
  bm: TBitmap;
  SFI: TSHFileInfo;
  SysIL: Integer;
  LargeImages: TImageList;
  ico: TIcon;
begin
  ilThumbs.Clear;
  if ListView.ViewStyle = vsIcon then
  begin
    bm := TBitmap.Create;
    with bm do
    try
      Width := thumbmaxw + 8;
      Height := thumbmaxh + 8;
      LargeImages := TImageList.Create(MyFiles3Form);
      try
        SysIL := SHGetFileInfo('', 0, SFI, SizeOf(SFI), SHGFI_SYSICONINDEX or SHGFI_LARGEICON);
        if SysIL <> 0 then
          LargeImages.Handle := SysIL;
        LargeImages.ShareImages := True;
        Canvas.Brush.Color := clFuchsia;
        ico := TIcon.Create;
        try
          with Canvas do fillrect(cliprect);
          SHGetFileInfo(PChar(ExtractFilePath(Application.exename)), 0, SFI, SizeOf(TSHFileInfo), SHGFI_SYSIconIndex);
          LargeImages.GetIcon(SFI.iIcon, ico);
          Canvas.draw(20, 20, ico);
          ilThumbs.AddMasked(bm,clFuchsia);

          with Canvas do fillrect(cliprect);
          SHGetFileInfo(PChar('c:\dummyfile.dummmyext'), FILE_ATTRIBUTE_NORMAL, SFI, SizeOf(TSHFileInfo), SHGFI_USEFILEATTRIBUTES or SHGFI_SYSIconIndex);
          LargeImages.GetIcon(SFI.iIcon, ico);
          Canvas.draw(20, 20, ico);
          ilThumbs.AddMasked(bm, clFuchsia);

          with Canvas do fillrect(cliprect);
          ico.Handle := LoadIcon(hInstance, PChar(502));
          Canvas.draw(20, 20, ico);
          ilThumbs.AddMasked(bm, clFuchsia);

        finally
          ico.Free;
        end;
      finally
        LargeImages.Free;
      end;
    finally
      Free;
    end;
  end;
end;

procedure TMyFiles3Form.cleartvs;
var
  i: integer;
begin
  with tvVerbund.Items do
    for i := 0 to Count - 1 do
      if Item[i].text <> '' then
        Dispose(Item[i].Data);
  tvVerbund.Items.Clear;

  with tvDisks.Items do
    for i := 0 to Count - 1 do
      if Item[i].text <> '' then
        Dispose(Item[i].Data);

  tvDisks.Items.Clear;
end;

procedure TMyFiles3Form.clearlistview;
var
  i: integer;
begin
  if Assigned(ListView.selected) then
    ListView.Selected := nil;
  with ListView.Items do
  begin
    for i := 0 to Count - 1 do
    begin
      dispose(item[i].data);
      item[i].data := nil;
    end;
    Clear;
  end;
  resetThumbs;
end;

// Ungültige Einträge entfernen, ggf. Meldung anzeigen
procedure TMyFiles3Form.CheckList(ListToCheck:TMyList);
var
  oldcount,i : integer;
begin
  with ListToCheck do
  begin
    oldcount := Count;
    i := 0;
    while i < Count do
    begin
      try
        Items[i];
        Inc(i);
      except
        on EMyIDError do Delete(i);
      end;
    end;
    if Count < oldcount then
    begin
      Application.MessageBox(
        PChar( Format(str_listinvalid,[(oldcount-Count)*1.0]) ) ,
        PChar( str_notice ),
        MB_ICONINFORMATION or MB_OK);
    end;
  end;
  with lvLists do  // Evtl. wurde was gelöscht -> Update des Dateizählers
    for i := 0 to Items.Count - 1 do
      Items[i].SubItems[0] := Format('%.0n',[TMyList(Items[i].Data).Count * 1.0]);
end;

procedure TMyFiles3Form.InvalidateAllLists;
var
  i,j : integer;
begin
  lvLists.Items.BeginUpdate;
  try
    with lvLists do
      for i := 0 to Items.Count - 1 do
        with TMyList(Items[i].Data) do
          for j := 0 to Count - 1 do
            Invalidate(j);
  finally
    lvLists.Items.EndUpdate;
  end;
end;

{ ListView updaten }

procedure TMyFiles3Form.updateLV;
var
  drv, path: string;
  diskid, i: integer;
  s: string;
  ListToShow : TMyList;
begin
  try
    if (Pos('search:', lowercase(address)) = 1) or (Pos('*', address) <> 0) or (Pos('?', address) <> 0) then
    begin
      { Suchen }
      doSearch;
    end else
    if pos('list:', lowercase(address)) = 1 then
    begin
//      temp := gettempdir + 'myfiles_tmp.tmp';  { Temp Datei für Icons }
      s := lowercase(Copy(address, 6, Length(address)));
      ListToShow := nil;
      with lvLists.Items do
        for i := 0 to Count-1 do
          with Item[i] do
          begin
            Checked := lowercase(TMyList(Data).ListName) = s;
            if Checked then
                ListToShow := TMyList(Item[i].Data);
          end;
      if ListToShow = nil then
        raise Exception.Create('Liste existiert nicht');
      ListView.Items.BeginUpdate;
      // custlistview(3);
      custlistview('List:' + ListToShow.ListName);
      clearlistview;
      ListView.Items.EndUpdate;
      ListActiveSelectionChanged;
      StartWait(ListToShow.Count,str_read);
      CheckList(ListToShow);
      i := 0;
      with ListToShow do
        while i < Count do
        begin
          AddItemToListView(Items[i],False);
          Inc(i);
          StepWait(Self);
        end;
      StopWait;
      sbMain.panels[2].Text := str_readlist;
      location := 'List:' + ListToShow.ListName;
    end else
    begin
      parseaddr(address, drv, path);
      if (path = '') and (drv = '') then
      begin { ### übersicht über alle disks ### }
        ListView.Items.BeginUpdate;
        clearlistview;
        // custlistview(2);
        custlistview('');
        ListView.Items.EndUpdate;
        with dm, dm.tblDisks do
        begin
          Filtered := False;
          indexname := 'IdxLabel';
          First;
          while not eof do
          begin
            AddItemToListview(dbCurrentDisk, false);
            Next;
          end;
        end;
        location := '';
      end else
      begin { ### root von drv ### }
        if path = '' then
          path := '\';
        if drv = '' then
        begin { ### verbundanzeige ### }
          ListView.Items.BeginUpdate;
          clearlistview;
          // custlistview(4);
          custlistview(path);
          if ListView.ViewStyle <> vsIcon then ListView.Items.EndUpdate;
        // FolderIDs aller betroffenen Ordner herausfinden & hinzufügen
          with dm, tblFolders do
          begin
            Filter := 'Folder = ''' + escape(path) + '''';
            Filtered := True;
            First;
            while not eof do
            begin
              AddFolder2ListView(tblFoldersFOLDERID.Value, true);
              Next;
            end;
            Filtered := False;
          end;
          if ListView.ViewStyle = vsIcon then ListView.Items.EndUpdate;
          location := path;
        end
        else
        begin { ### normalanzeige ### }
          ListView.Items.BeginUpdate;
          clearlistview;
          // custlistview(1);
          custlistview('<' + drv + '>' + path);
          if ListView.ViewStyle <> vsIcon then
            ListView.Items.EndUpdate;
          // FolderID herausfinden & hinzufügen
          with dm, dm.tblDisks do
          begin
            tblDisks.IndexName := 'IdxLabel';
            SetKey;
            tblDisksLABEL.Value := drv;
            if gotokey then
              diskid := tblDisksDiskID.AsInteger
            else
              raise Exception.Create(Format(str_Ednotfound, [drv]));
            tblDisks.IndexName := '';
          end;
          with dm, dm.tblFolders do
          begin
            Filter := 'Folder = ''' + escape(path) + ''' and DISKID = ' + IntToStr(diskid);
            Filtered := True;
            if RecordCount = 0 then
              raise Exception.Create(Format(str_Efnotfound, ['<' + drv + '>' + path, InttoStr(diskid)]));
            First;
            AddFolder2ListView(tblFoldersFOLDERID.AsInteger, false);
            Filtered := False;
          end;
          if ListView.ViewStyle = vsIcon then ListView.Items.EndUpdate;
          location := '<' + drv + '>' + path;
        end;
      end;
    end;
  finally
    Self.Enabled := True;
    // LV sortieren etc.
    with ListView do
    begin
      if abs(ListView.Tag) > ListView.Columns.Count then ListView.Tag := 1;
      CustomSort(@GenSortProc, ListView.Tag);
      if Items.Count > 0 then
        Items[0].Focused := True;
      if jumpname <> '' then donamejump;

      if subjump <> '' then
      begin
        for i := 0 to Items.Count - 1 do
          if Items[i].Caption = subjump then
          begin
            Items[i].selected := True;
            Items[i].Focused := True;
            break;
          end;
        subjump := '';
      end;
      sbMain.Panels[0].Text := Format(str_sb1, [Items.Count * 1.0]);
      if subjump = '' then
      begin
        defhint := str_nothing;
        with tmrSumSize do
          begin Enabled := False; Enabled := True; end; { Timer neu starten }
      end;
      doHistory;
    end;
  end;
end;

{ TreeView updaten }
{ - richtiges TV auswählen (Verbund, Disks? }
{ - Ausklappen, auswählen }

procedure TMyFiles3Form.updateTV;
var
  drv, path: string;

  procedure goscroll(pfad: string; tv: TTreeView);
  var
    Node, temp: TTreeNode;
    i: integer;
    s, s2: string;
    ok: Boolean;

  begin
    tv.Items.beginupdate;
    temp := tv.Selected;
    try
      s := pfad;
      Node := tv.Items[0];
      if s = '' then
      begin
        tv.ChangeDelay := 0;
        tv.Selected := tv.Items[0];
      end else
        while s <> '' do
        begin
          s2 := lowercase(Copy(s, 1, Pos('\', s) - 1));
          ok := False;
          for i := 0 to Node.Count - 1 do
            if lowercase(Node.Item[i].Text) = s2 then
            begin
              Node := Node.Item[i];
              Delete(s, 1, Length(s2) + 1);
              if s <> '' then
                Node.Expand(False) else
              begin
                tv.ChangeDelay := 0;
                tv.Selected := Node;
              end;
              ok := True;
              break;
            end;
          if (not ok) and (s <> '') then
          begin
            if (Pos('\', s) = Length(s)) then
            begin
              jumpname := Copy(s, 1, Length(s) - 1);
              Delete(address, Length(address) - Length(s), maxInt);
              s := '';
              if tv.selected = Node then
                donamejump else
              begin
                tv.ChangeDelay := 0;
                tv.Selected := Node;
              end;
            end else raise Exception.Create(pfad + ' ' + str_Epnotfound);
          end;
        end;
      tv.Items.EndUpdate;
      if Assigned(temp) then temp.makevisible;
      tv.selected.makevisible;
    except
      tv.Items.endupdate;
      raise;
    end;
  end;

  // "Search:" oder "?"

  procedure parsesearchcmd(cmd: string);
  var
    i : integer;
  begin
    fbSearchResetClick(nil);
    with TMySearch.Create(copy(cmd,8,MaxInt)) do
    try
      ScbName.Text := NameStr.Value;
      if MinSize <> -1 then
      begin
        chkMinSize.Checked := true;
        {//ToBeConverted seMinSize.Value := MinSize;}
        {//ToBeConverted cbMinSize.ItemIndex := 0;}
      end;
      if MaxSize <> -1 then
      begin
        chkMaxSize.Checked := true;
        {//ToBeConverted seMaxSize.Value := MaxSize;}
        cbMaxSize.ItemIndex := 0;
      end;

      if MinDate <> -1 then
      begin
        chkMinDate.Checked := true;
        dtpMinDate.DateTime := MinDate;
        dtpMinTime.DateTime := MinDate;
      end;
      if MaxDate <> -1 then
      begin
        chkMaxDate.Checked := true;
        dtpMaxDate.DateTime := MaxDate;
        dtpMaxTime.DateTime := MaxDate;
      end;
      { Attribute }
      for i := 0 to 3 do
        if BOOL(AttrSet and attrs[i]) then
          (pSearchAttribute.Controls[i] as TCheckBox).State := cbChecked else
            if BOOL(AttrUSet and attrs[i]) then
              (pSearchAttribute.Controls[i] as TCheckBox).State := cbUnChecked;

      { Suchen in }
      with SearchIn do
        for i := 0 to Count - 1 do
          lbSearchIn.Items.Add(Strings[i]);
      { Inhalt }
      for i := 0 to Notes.Count - 1 do
        lbContents.Items.Add(
          Notes[i] + ': ' + (Notes.Objects[i] as TMySearchString).Value );

      if (MinSize <> -1) or (MaxSize <> -1) then ToggleControl(lblSize, pSearchSize);
      if (AttrSet <> 0) or (AttrUSet <> 0) then ToggleControl(lblAttribute, pSearchAttribute);
      if (MinDate <> -1) or (MaxDate <> -1) then ToggleControl(lblSearchDate, pSearchDate);
      if Notes.Count > 0 then ToggleControl(lblContents, pSearchContents);
      if SearchIn.Count > 0 then ToggleControl(lblSearchIn, pSearchIn);
    finally
      Free;
    end;
  end;

{ ------ updateTV.main  ------ }

begin

  if Copy(address,1,1) = '$' then
  begin
    regme(address);
    Exit;
  end;

  jumpname := '';
  if curcol = '' then Exit;
  try
    if Pos('list:', lowercase(address)) = 1 then { Liste }
    begin
      tvVerbund.Selected := nil;
      tvDisks.Selected := nil;
      pc1.ActivePage := tsListen;
      updateLV;
    end else
      if (Pos('search:', lowercase(address)) = 1) or (Pos('*', address) <> 0) or (Pos('?', address) <> 0) then
      begin { Suchen }
        if Pos('search:',lowercase(address)) = 1 then
          address := 'Search: '+ trimleft(copy( address,8,maxInt )) else
        if Pos('?',address) = 1 then
          address := 'Search: ' + trimleft(copy( address,2,maxInt )) else
        if (Pos('search:',lowercase(address)) <> 1) and (Pos('?',address) <> 1) then
          address := 'Search: ' + address;
        cbAdresse.Text := address;
//        if length(address) > 1 then
//          if address[2] <> ' ' then system.Insert(' ',address,2);


        tvVerbund.Selected := nil;
        tvDisks.Selected := nil;
        pc1.ActivePage := tsSearch;
        parsesearchcmd(address);

        updateLV;
      end else
      begin
        address := stringreplace(address, '/', '\', [rfReplaceAll]);
(*          if check4file(address) then   // Prüfen ob eine bestimmte Datei angewählt wurde ...
            begin
            location := address;
(*            with cbAdresse do
              if Items.Count > 0 then
                Text := Items[0];
            Exit;
            end; *)
        parseaddr(address, drv, path);
        if ini.ReadBool(ini_colpre + curcol, ini_combodis, False) then
          if (drv = '') and (path <> '') then
            raise Exception.Create(str_Everbund);
        if drv + path = '' then
        begin
          tvVerbund.Selected := nil;
          if tvDisks.Parent = tsDisks then pc1.ActivePage := tsDisks;
          goScroll('', tvDisks);
        end else
          if drv = '' then { Verbundmodus }
          begin
            tvDisks.Selected := nil;
            if tvVerbund.Parent = tsVerbund then pc1.ActivePage := tsVerbund;
            goscroll(Copy(path, 2, Length(path)), tvVerbund);
          end else { Ordnermodus }
          begin
            tvVerbund.Selected := nil;
            if tvDisks.Parent = tsDisks then pc1.ActivePage := tsDisks;
            goscroll(drv + path, tvDisks);
          end;
      end;
  except
    cbAdresse.setfocus;
    raise;
  end;
end;

procedure TMyFiles3Form.cbAdresseKeyPress(Sender: TObject; var Key: Char);
begin
  cbAdresse.OnChange := nil;
  if key = #13 then
  begin
    address := trim(cbAdresse.Text);
    updateTV;
    key := #0;
  end;
end;

{ Suchfunktion }

(*
procedure TMyFiles3Form.doSearch;
var
  s, s1, s2: string;
//  filnam, folnam  : string;
  i, j: integer;
  filterpid: TStringList;
  match, m: Boolean;
  starttime: dword;
  ignoremcount: Boolean;
  lists: TStringList;
  { Suchparameter }
  sdata: TmfSearchData;
  rcount, cnt, delta: integer;
begin
{$IFDEF LANSPECIAL}  if (bcount <> -1) and (bcount < 5) then newBanner; {$ENDIF}
  starttime := GetTickCount;
  ignoremcount := False;

  { GUI }
  aniFind.Active := True;
  aniFind.show;
  custlistview(3);
  clearlistview;
  abort := False;
  formcontrol(False);
  tsSearch.Enabled := True;

  sbMain.panels[2].Text := str_sel;
  Application.ProcessMessages;

  lists := TStringList.Create;
  with lists do
  begin
    sorted := True;
    duplicates := dupIgnore;
  end;

  try
    { Filtern }
    filterpid := TStringList.Create;
    with filterpid do
    begin
      sorted := True;
      duplicates := dupIgnore;
    end;
    try
      if lbSearchIn.Items.Commatext <> '*' then // Nur wenn nicht sowieso alles durchsucht werden soll
      begin
        for i := 0 to lbSearchIn.Items.Count - 1 do
          if Copy(lbSearchIn.Items[i], 1, 5) <> 'List:' then
          begin
            parseaddr(lbSearchIn.Items[i], s1, s2); // s1: Disk ; s2: Pfad
            if (s1 <> '') and (s2 = '\') then
              with dm, tblDisks do
              begin { Disk }
                tblDisks.IndexName := 'IdxLabel';
                SetKey;
                tblDisksLABEL.AsString := s1;
                if gotokey then
                  filterpid.Add('*' + IntToStr(tblDisksDiskID.Value))
                else
                  raise Exception.Create(Format(str_Ednotfound, [s1]));
                tblDisks.IndexName := '';
              end
            else
            begin
              if s1 = '' then // Ordner; Disk Ignorieren
                s := 'Folder = ''' + escape(s2) + '*' + '''' else
                with dm, dm.tblDisks do // DiskId raussuchen und dann im Filter berücksichtigen
                begin
                  tblDisks.IndexName := 'IdxLabel';
                  SetKey;
                  tblDisksLABEL.AsString := s1;
                  if gotokey then
                    s := 'Folder = ''' + escape(s2) + '*' + ''' and DISKID = ''' + inttostr(tblDisksDiskID.AsInteger) + ''''
                  else
                    raise Exception.Create(Format(str_Ednotfound, [s1]));
                  tblDisks.IndexName := '';
                end;
              with dm, dm.tblFolders do
              begin
                Filter := s;
                Filtered := True;
                First;
                while not eof do
                begin
                  filterpid.Add(tblFoldersFOLDERID.AsString);
                  Next;
                end;
                Filtered := False;
              end;
            end;
          end (*else { Liste:   TEMPDEL }
          begin
            if s = curlist then lists.AddStrings(thelist) else
            begin
              sl := TStringList.Create;
              try
                s := Copy(lbSearchIn.Items[i], 6, Length(lbSearchIn.Items[i]));
                sl.loadfromfile(dm.tblFiles.DatabaseName + s + '.myl');
                lists.AddStrings(sl);
              finally
                sl.Free;
              end;
            end;
          end*)//;

(*        if filterpid.Count > 0 then
        begin
          s := '';
          for j := 0 to filterpid.Count - 1 do
          begin
            s := s + ' or ';
            if Pos('*', filterpid[j]) = 1 then
              s := s + 'DISKID = ''' + Copy(filterpid[j], 2, maxInt) + '''' else
              s := s + 'FOLDERID = ''' + filterpid[j] + '''';
          end;
          Delete(s, 1, 4);
        end else s := '';
      end {if}
      else s := '';
    finally
      filterpid.Free;
    end;

    { Suchen }
    with dm, dm.tblFiles do
    begin
      case cbSearchTyp.ItemIndex of
        1: if s = '' then s := 'EntryKind = ''' + IntToStr(ek_file) + '''' else s := '(' + s + ') and EntryKind = ''' + IntToStr(ek_file) + '''';
        2: if s = '' then s := 'EntryKind = ''' + IntToStr(ek_folder) + '''' else s := '(' + s + ') and EntryKind = ''' + IntToStr(ek_folder) + '''';
      end;

      { Filter setzen }
      if s = '' then filtered := False
      else begin
        Filter := s;
        Filtered := True;
      end;
      { Init }
      First;

      sbMain.Panels[2].Text := str_sb2;
      Screen.cursor := crHourGlass;
      rcount := RecordCount;
      with pbProgress do
      begin
        if Width > rcount then
        begin
          Max := 10;
          step := 1;
          delta := (rcount div 10) + 1;
        end else
        begin
          Max := Width;
          Step := Width div 10;
          delta := rcount div Max * Step;
        end;
        Position := 0;
        Show;
      end;
      Application.ProcessMessages;
      listview.Items.beginupdate;

      with sdata do
      begin
        { Eingabefelder -> Variablen }
        sFileName := lowercase(edtSearchFn.text);
        case spToleranz.Tag of
          0: sLevTreshold := 0;
          1: sLevTreshold := Length(sFileName) div 4;
          2: sLevTreshold := Length(sFileName) div 3;
          3: sLevTreshold := Length(sFileName) div 2;
        end;
        if sFileName = '' then sFileName := '*';
        sbFirstDate := ckFirstDate.Checked;
        sFirstDate := dtpFirstDate.DateTime;
        sbLastDate := ckLastDate.Checked;
        sLastDate := dtpLastDate.DateTime;
        sbFirstSize := ckFirstSize.Checked;
        if sbFirstSize then
          sFirstSize := trunc(seFirstSize.Value) * trunc(IntPower(1024, cbFirstSize.ItemIndex));
        sbLastSize := ckLastSize.Checked;
        if sbLastSize then
          sLastSize := trunc(seLastSize.Value) * trunc(IntPower(1024, cbLastSize.ItemIndex));
        sNote := lowercase(edtNote.Text);
        sIsSimple := Pos('+', sFileName) + Pos('*', sFileName) + Pos('?', sFileName) + Pos('[', sFileName) + Pos(']', sFileName) = 0;
        uselist := lists.Count <> 0;

        { Iteration }
        cnt := 0;

        if rcount > 0 then
          while not (eof or abort) do
          begin
          { Matching }
          { IF BLOCK }
            match := True;
            if match then { Dateiname }
              if sFileName <> '*' then
              begin
                if sIsSimple then
                begin
                  if Pos(sFileName, lowercase(tblFilesFileName.Value)) = 0 then
                    if sLevTreshold = 0 then match := False else
                    begin
                      if LevenshteinDistance(lowercase(tblFilesFileName.Value), sFileName) > sLevTreshold then
                        if WordsLevenshteinDistance(lowercase(tblFilesFileName.Value), sFileName) > sLevTreshold then
                          match := False
                    end;
                end else
                  if not Like(lowercase(tblFilesFileName.Value), sFileName) then
                    match := False;
              end else match := True;
            if match then { Datum }
              if sbFirstDate then
                if tblFilesChanged.Value < sFirstDate then match := False;
            if match then
              if sbLastDate then
                if tblFilesChanged.Value > sLastDate then match := False;
            if match then { Größe }
              if sbFirstSize then
                if tblFilesSize.Value < sFirstSize then match := False;
            if match then
              if sbLastSize then
                if tblFilesSize.Value > sLastSize then match := False;
            if match and uselist then { In Liste }
            begin
              s := getuname(tblFilesDISKID.Value, tblFilesFOLDERID.Value, tblFilesFileName.Value);
              if lists.IndexOf(s) = -1 then match := False;
            end;
            if match then { Notiz }
              if edtNote.Text <> '' then
              begin
                m := False;
                if not tblFilesNote.IsNull then
                  if Pos(sNote, lowercase(tblFilesNote.Value)) <> 0 then m := True;
                if not m then { Wenn kein Match, dann in Preview nachschauen }
                  if tblFilesTKind.Value <> 0 then
                    if Pos(sNote, lowercase(tblFilesTextPreview.Value)) <> 0 then m := True;
                if not m then { Wenn kein Match, dann in Verbundnotiz nachschauen }
                  if tblFilesEntryKind.Value = ek_folder then
                    with tblFolders do
                    begin
                      IndexName := '';
                      Filtered := False;
                      s := LookUp('FOLDERID', tblFilesFOLDERID.Value, 'Folder');
                      setkey;
                      tblFoldersDISKID.Value := -1;
                      tblFoldersFolder.Value := s;
                      if Gotokey then
                        if not tblFoldersNote.IsNull then
                          if Pos(sNote, lowercase(tblFoldersNote.Value)) <> 0 then m := True;
                    end;
                if not m then match := False;
              end;
          { ENDE DES IF BLOCK }
            if match then
              addcurrentfile2listview(False);
            if not ignoremcount then
              if ListView.Items.Count > 500 then
                if
                  Application.messagebox(PChar(str_muchresult),
                  PChar(str_question),
                  mb_iconquestion or mb_yesnocancel or mb_defbutton2) <> idYes
                  then abort := True else ignoremcount := True;
            Inc(cnt);
            if cnt mod delta = 0 then
            begin
              pbProgress.StepIt;
              sbMain.Panels[0].Text := Format(str_sb1, [listview.Items.Count * 1.0]);
              Application.ProcessMessages;
            end;
            Next;
          end; { Ende Suchschleife }

      end;
      if abort then sbMain.Panels[2].Text := str_sb3 + ' '
      else sbMain.Panels[2].Text := Format(str_sb4, [rcount * 1.0]);
      sbMain.Panels[2].Text := sbMain.Panels[2].Text + ' ' + Format(str_sb5, [(GetTickCount - starttime) / 1000]);
    end;
  finally
    with ListView do
    begin
      CustomSort(@GenSortProc, ListView.Tag);
      Items.EndUpdate;
      if Items.Count > 0 then
        Items[0].Focused := True;
      sbMain.Panels[0].Text := Format(str_sb1, [Items.Count * 1.0]);
    end;
    dm.tblFiles.Filtered := False;

    setsearchaddress;
    location := address;
    btnStartSearch.show;
    btnStopSearch.hide;
    formcontrol(True);
    pbProgress.Hide;
    Screen.cursor := crDefault;
    aniFind.Active := False;
    aniFind.hide;
    lists.Free;
    btnStartSearch.setfocus;
  end;
end;

*)
(*procedure TMyFiles3Form.tvBrowseChange(Sender: TObject; Node: TTreeNode);
begin
  if (Sender as TTreeView).Selected = (Sender as TTreeView).Items[0] then Exit;
  if Sender = tvDisks then
  begin
    tvDisks.OnChange := tvDisksChange;
    tvDisks.cursor := crDefault;
    tvDisksChange(Sender, Node);
  end else
    if Sender = tvVerbund then
    begin
      tvVerbund.cursor := crDefault;
      tvVerbund.OnChange := tvVerbundChange;
      tvVerbundChange(Sender, Node);
    end;
  with lbSearchIn.Items do
  begin
    if CommaText = '*' then Clear;
    if lbSearchIn.Items.IndexOf(location) = -1 then
      Add(location);
  end;
  pc1.ActivePage := tsSearch;
end;
  *)
procedure TMyFiles3Form.edtSearchFnKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    btnStartSearchClick(nil);
  end;
end;

procedure TMyFiles3Form.mNotesExit(Sender: TObject);
var
  i,idx : integer;

begin
  if (mNotes.Tag = -1) or (notedb = nil) then mNotes.Text := '' else
  begin
    with notedb do
    begin
      indexname := '';
      GotoBookmark(notebm);
      if (mNotes.Tag = 128) and (mNotes.Text = '') then
      begin
        FreeBookmark(notebm);
        notebm := nil; notedb := nil;
        Delete;
      end else
      begin
        Edit;
        FieldByName('Note').AsString := mNotes.Text;
        Post;
      end;
    end;
    if mNotes.Tag = 128 then
      mNotes.Tag := lvt_verbund;

    if Assigned(ListView.Selected) then
      with ListView.Selected do
      begin

        for i := 0 to FCurLists.Count - 1 do
        begin
          idx := TMyList(FCurLists[i]).IndexOf(PLVData(data)^.item.ID);
          if idx <> -1 then;
            TMyList(FCurLists[i]).Invalidate(idx);
        end;

        PLVData(Data)^.Item.Note := mNotes.Text;
        if Sender <> sgProps then FillsgProp( PLVData(Data)^.Item );
        for i := 1 to LvColumns.Count - 1 do
          if (Pos(cl_pnote,LvColumns.DID[i]) = 1) or (Pos(cl_ptext,LvColumns.DID[i]) = 1) or
          (LvColumns.DID[i] = cl_note) or (LvColumns.DID[i] = cl_text) then
            SubItems[i-1] := LvColumns[PLVData(Data)^.Item, i];

(*        col := LvColumns.IndexOf(cl_note);
        if col <> -1 then
          SubItems[col-2] := LvColumns[PLVData(Data)^.Item,col];
        col := LvColumns.IndexOf(cl_text);
        if col <> -1 then
          SubItems[col-2] := LvColumns[PLVData(Data)^.Item,col]; *)
      end;
  end;
{
    if (lvcols[cl_note] <> -1) and Assigned(ListView.Selected) then
      if (trim(mNotes.Text) = '') and (mNotes.Tag in [lvt_ordner, lvt_file]) then
      begin
        if dm.tblFilesTKind.Value <> 0 then // Alternative 1: Text-Preview }
 {         ListView.Selected.SubItems[lvcols[cl_note]] := StringReplace(trim(dm.tblFilesTextPreview.Value), #13#10, ' ', [rfReplaceAll])
        else // Alternative 2: Verbund-Notiz }
{          if mNotes.Tag = lvt_ordner then
            with dm, tblFolders do
            begin
              IndexName := '';
              s := LookUp('FOLDERID', PLVData(ListView.Selected.data)^.id.folderid, 'Folder') + ListView.Selected.Caption + '\';
              SetKey;
              tblFoldersDISKID.Value := -1;
              tblFoldersFolder.Value := s;
              if GotoKey then
                ListView.Selected.subitems[lvcols[cl_note]] := StringReplace(trim(tblFoldersNote.Value), #13#10, ' ', [rfReplaceAll]);
            end else ListView.selected.subitems[lvcols[cl_note]] := '';
      end
      else // keine Alternativen oder direkte Notiz vorhanden }
//        ListView.Selected.SubItems[lvcols[cl_note]] := StringReplace(trim(mNotes.text), #13#10, ' ', [rfReplaceAll]);
//  end;
  if Sender = nil then mNotes.Tag := -1;
  mNotesChange(nil);  
end;

procedure TMyFiles3Form.DeleteDisk(diskid: Smallint);
var
  i: integer;
  sl: TStringList;
  lbl : string;
begin
  lbl := '';
  try
    StartWait(3,'');
    sbMain.Panels[2].Text := str_delete1;
    with dm, tblDisks do
    begin
      tblDisks.IndexName := '';
      SetKey;
      tblDisksDISKID.Value := diskid;
      if gotokey then
        lbl := tblDisksLABEL.AsString
    end;

    StepWait(Self);
    with dm, tblFiles do
    begin
      if RecordCount > 0 then First;
      while not Eof do
        if tblFilesDISKID.Value = diskid
          then try Delete except end
        else Next;
    end;

    sbMain.Panels[2].Text := str_delete2;
    StepWait(Self);

    with dm, tblFolders do
    begin
      if RecordCount > 0 then First;
      while not Eof do
        if tblFoldersDISKID.Value = diskid
          then Delete
        else Next;
    end;
    if lbl <> '' then dm.tblDisks.Delete;
    // Label-Definitionen entfernen
    sl := TStringList.Create;
    try
      with ColIni do
      begin
        ReadSection(ini_labels, sl);
        for i := 0 to sl.Count - 1 do
          if ReadString(ini_labels, sl[i], '') = lbl then
            DeleteKey(ini_labels, sl[i]);
      end;

    finally
      sl.Free;
    end;
    if Pos('<' + lbl + '>', address) <> 0 then address := '';
    sbMain.Panels[2].Text := Format(str_delete3, [lbl]);
  finally
    StopWait;
  end;
end;

function TMyFiles3Form.doDiskDelete(lbl: string): Boolean;
begin
  mNotesExit(nil);
  if Assigned(notedb) then
    notedb.freebookmark(notebm);
  notedb := nil;

  Result := False;

  if Application.Messagebox(PChar(Format(str_deldisk, [lbl])), PChar(str_deldisk2),
    mb_yesno or mb_iconquestion or mb_defbutton2) = idNo
      then Exit;
  with dm, tblDisks do
  begin
    tblDisks.IndexName := 'IdxLabel';
    SetKey;
    tblDisksLABEL.AsString := lbl;
    if gotokey then
      DeleteDisk(tblDisksDiskID.AsInteger)
    else
      raise Exception.Create(Format(str_Ednotfound, [lbl]));
  end;
  InvalidateAllLists;
  updatetvs;
  updatelv;
//  lvDriveState.refresh;

end;

{ Disk löschen }
{ MultiSelect fähig }

procedure TMyFiles3Form.menDiskDeleteClick(Sender: TObject);
var
  i: integer;
begin
  if Sender = menTvDiskDel then
    doDiskDelete(TTreeView(pmTreeView.PopupComponent).selected.Text)
  else
    with TStringList.Create do
    try
      with ListView do
        for i := 0 to Items.Count - 1 do
          if Items[i].selected then
            Add(Items[i].Caption);
      for i := 0 to Count - 1 do
        doDiskDelete(strings[i]);
    finally
      Free;
    end;
  lvDriveState.Refresh;
end;

procedure TMyFiles3Form.mNotesKeyPress(Sender: TObject; var Key: Char);
begin
  with mNotes do
    if Tag = 0 then { Verbundnotiz kann nur beim Verbundordner geändert werden! }
    begin
      Text := '';
      Tag := lvt_ordner;
      Font.Color := clWindowText;
    end;
end;

{ Dateien ins Clipboard kopieren }
{ MultiSelect fähig }

procedure TMyFiles3Form.menCopyClick(Sender: TObject);
begin
  begindrag(True);
end;

{ Tagwerte: 0 -> immer anzeigen; andere Werte kombiniert aus lvt ... }
{ lvt_file = 1
  lvt_ordner = 2
  lvt_verbund = 4
  lvt_disk = 8 }
{ + 256 -> Disablen, wenn not IsAvailable, sonst immer enabled }
{ + 512 -> Multiselectfähig }

{ muss kpl. überarbeitet werden! (wg. Multiselections) }

procedure TMyFiles3Form.pmListViewPopup(Sender: TObject);
var
  i, j, min, max: integer;
  vs, en: Boolean;
  item: TMenuItem;
begin
  case ListView.selcount of
    0: begin min := 0; max := -1; end;
    1: begin min := listview.selected.Index; max := min; end;
  else begin min := 0; max := listview.Items.Count - 1; end;
  end;

  with pmListView do
    for i := 0 to Items.Count - 1 do
    begin
      Item := Items[i];
      if Item.Tag = 0 then // Immer sichtbare Items
      begin
        Item.Visible := True;
        Item.Enabled := True
      end else // Mask-Items
        if listview.selcount > 0 then
        begin
          vs := True; en := True; { Visible, Enabled }
          if not bool(Item.Tag and 512) then { nicht Multiselect fähige Items }
            if listview.selcount > 1 then vs := False;

          if en then
            with ListView do
              for j := min to max do
                if (min = max) or Items[j].selected then
//                  if Assigned(selected) then
                  begin
                    if not Boolean((Item.Tag and PLVData(Items[j].Data)^.item.typ)) then
                      vs := False;
//                    if bool(Item.Tag and 256) then { needs file to be available? }
//                      ShowMessage(Item.Caption);
//                      if not IsAvailable(Items[j]) then en := False;
                  end;

          if not vs then en := False;
          with Item do
          begin
            Visible := vs;
            Enabled := en;
          end;
        end { selcount = 0 }
        else begin Item.Visible := False; Item.Enabled := False; end;
    end;
  { Play für MP3 --- quite crappy }
  if menOpen.Visible then
  begin
    menOpen.default := True;
    menFileOpen.ShortCut := scNone;
    menOpen.ShortCut := ShortCut(vk_return, []);
  end
  else
  begin
    menFileOpen.default := True;
    menFileOpen.ShortCut := ShortCut(vk_return, []);
    menOpen.ShortCut := scNone;
  end;
  if Assigned(ListView.selected) then
    if (menFileOpen.Enabled = False) and (sbPlayMPEG.Enabled) and (PLVData(ListView.Selected.Data)^.item.typ = lvt_file) then
    begin
      menFileOpen.OnClick := sbPlayMPEGNowClick;
      menFileOpen.Enabled := True;
      menFileOpen.Caption := str_menhear;
    end else
    begin
      menFileOpen.OnClick := ListViewDblClick;
      menFileOpen.Caption := str_menopen;
    end;
  { Spezielle Listenstates }
  menListAction.Enabled := Assigned(FCurList);
  if Assigned(FCurList) then
    if Assigned(ListView.Selected) and (ListView.selcount = 1) and (PLVData(ListView.Selected.Data)^.item.typ = lvt_file) then
    begin
      menLAdd.Enabled := FCurList.IndexOf(PLVData(ListView.Selected.Data)^.item.ID) = -1;
      menLDel.Enabled := FCurList.IndexOf(PLVData(ListView.Selected.Data)^.item.ID) <> -1;
    end else
    begin
      menLAdd.Enabled := True;
      menLDel.Enabled := True;
    end;
  { Editor-Modus }
  if not FEditorMode then
  begin
    menDeleteColItem.Visible := false;  
    menDeleteColItem.Enabled := false;
  end;
  { Levelup / Back }
  menLevelUp.Enabled := (location <> '\') and (location <> '') and (Pos('?', lowercase(location)) = 0) and (Pos('list:', lowercase(location)) = 0);
  menBack.Enabled := cbAdresse.Items.Count > 1;
  menSearchFromLocation.Visible := Copy(location, 1, 1) <> '?';
  { Ziel Auffinden (bei non-Disk-View) }
  with menJump do
    if Visible then
    begin
      Visible := Copy(location, 1, 1) <> '<';
      Enabled := Visible;
    end;
  menlvRenameDisk.Enabled := not colini.ReadBool('Options','UseLabel',False);
  { Ordner öffnen }
//  parseaddr(location,s1,s2);
//  menOpenThisFolder.Visible := (drivestate.IndexOf(s1) <> -1) and (s1 <> '');
//  with menOpenThisFolder do Enabled := Visible;
end;

{ Einen Ordner im Explorer öffnen }
{ MultiSelect fähig }

procedure TMyFiles3Form.OpenImExplorerClick(Sender: TObject);
var
  i: integer;
begin
  if ListView.SelCount = 0 then Exit;
  MustBeAvailable(LVMyI(ListView.Selected));
  with ListView do
    for i := 0 to Items.Count - 1 do
      if Items[i].selected then
        if IsAvailable(LVMyI(Items[i])) then
           OpenDocument(PChar(GetLVIFileName(items[i], True))); { *Converted from ShellExecute* }
end;

{ Name(n) der Dateien / Ordner kopieren }
{ MultiSelect fähig }

procedure TMyFiles3Form.menCopyNameClick(Sender: TObject);
var
  s, t: string;
  i: integer;
begin
  if listview.selcount = 1 then Clipboard.AsText := GetLVIFileName(ListView.Selected, True) else
  begin
    s := '';
    with ListView do
      for i := 0 to Items.Count - 1 do
        if (Items[i].selected) then
        begin
          t := GetLVIFileName(items[i], True);
          if Copy(t, 1, 1) <> '<' then s := s + '"' + t + '" ';
        end;
    if s <> '' then
      Delete(s, Length(s), 1);
    clipboard.astext := s;
  end;
end;

procedure TMyFiles3Form.menLVDiskRefreshClick(Sender: TObject);
var
  idx: integer;
begin
  if Sender = menTvDiskAkt then
    idx := drivestate.IndexOf(TTreeView(pmTreeView.PopupComponent).selected.Text) else
    idx := drivestate.IndexOf(ListView.selected.caption);
  if idx = -1 then
  begin
    Application.messagebox(PChar(str_upde1), PChar(str_upde2), mb_ok or mb_iconerror);
    Exit;
  end else
    doDiskAdd(chr(integer(drivestate.objects[idx])), true);
end;

procedure TMyFiles3Form.pmDriveStatePopup(Sender: TObject);
var
  i: integer;
  lbl: string;
begin
  with pmDriveState do
    for i := 0 to Items.Count - 1 do
      if Items[i].Tag = 1 then
      begin
        Items[i].Visible := Assigned(lvDriveState.Selected);
        Items[i].Enabled := Assigned(lvDriveState.Selected);
      end;

  if Assigned(lvDriveState.Selected) then
  begin
    lbl := drivestate[lvDriveState.Selected.Index];
    if lbl = '*' then
    begin
      menDiskAdd.Visible := False;
      menDiskAdd.Enabled := False;
      menDiskRefresh.Visible := False;
      menDiskRefresh.Enabled := False;
      menDiskDelete2.Visible := False;
      menDiskDelete2.Enabled := False;
    end else
    begin
      with dm.tblDisks do
      begin
        IndexName := 'IdxLabel';
        if not Locate('Label', lbl, []) then
          menDiskRefresh.Enabled := False;
        menDiskAdd.Enabled := not menDiskRefresh.Enabled;
        menDiskDelete2.Enabled := menDiskRefresh.Enabled;
      end;
    end;
  end;
end;

{ Disk hinzufügen }
{ In: disk - A-Z oder '*' für keine Vorgabe }
{ Result: erfolgreich? }

function TMyFiles3Form.DoDiskAdd(disk: char; upd: boolean): Boolean;
var
  modestr: array[False..True] of string[12];
  i : integer;

begin
  modestr[False] := str_readnew1;
  modestr[True] := str_readupd1;
  Result := False;
  frmReadDisk := TfrmReadDisk.Create(Self);
  with frmReadDisk do
  try
(*    if lastpreset <> '' then
      openopts(lastpreset); *)
    if disk <> '*' then
      with lvDrives,Items do
        begin
          for i:=0 to Count-1 do
            if Copy(Item[i].Caption,Length(Item[i].Caption)-2,1) = disk then
              item[i].selected := True;
          Selected.MakeVisible(False);
        end;
    if upd then
    begin
      Caption := str_upde2;
      lblCaption.Caption := Caption;
      lblCaption.Left := 9;
      imgCaption.Visible := False;
      cbStapel.Visible := False;
      lvDrives.Enabled := False;
      updmode := True;
      edtLabel.ReadOnly := True;
//      clbOptions.Items.Add(str_ovrp);
    end else
    begin
      updmode := False;
      ckUpdatePrev.Visible := False;
    end;
    lvDrivesChange(nil,nil,TItemChange(nil));
    case ShowModal of
      mrOk: begin
          if disksread <> 1 then
            sbMain.panels[2].Text := { sollte nur bei Einlesen vorkommen, da bei aktualisieren, der Stapelmodus eigentlich aus ist :) }
              format(str_stats1, [disksread, modestr[upd], tooktime / 1000])
          else
            sbMain.panels[2].Text :=
              Format(str_stats2, [MyVolumeId(disk), modestr[upd], tooktime / 1000]);
          tmrDrivestateTimer(nil);
//                    clearlistview;
          ClearSearchCache;
//          address := '';
          updatetvs;
          updatetv;
          lvDriveState.Refresh;
          Result := True;
        end;
      mrCancel: ;
      mrAbort: if upd then
        begin
          sbMain.panels[2].Text := str_sb6;
        end else
        begin
          DeleteDisk(ReadDiskid);
          sbMain.panels[2].Text := str_sb7;
        end;
    end;
  finally
    Free;
    frmReadDisk := nil;
    updatecaption;
  end;
end;

procedure TMyFiles3Form.menDiskAddClick(Sender: TObject);
begin
  if timeout(True) then Exit;
  QuickInfo(-6);
  DoDiskAdd(chr(integer(drivestate.objects[lvDriveState.Selected.Index])), false);
end;

procedure TMyFiles3Form.menNoteClick(Sender: TObject);
begin
  with mNotes do
  begin
    if not Visible then
      FilePropToggle(lblNote, mNotes);
    SelStart := 0;
    SelLength := Length(Text);
    SetFocus;
  end;
end;

procedure TMyFiles3Form.menDiskDelete2Click(Sender: TObject);
begin
  doDiskDelete(drivestate[lvDriveState.Selected.Index]);
end;

procedure TMyFiles3Form.lvDriveStateCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if item.ImageIndex = idi_nodisk then
    lvDriveState.Canvas.Font.Color := clGrayText
  else
    with dm.tblDisks do
    begin
      IndexName := 'IdxLabel';
      if not Locate('Label', Item.Subitems[0], []) then
        lvDriveState.Canvas.Font.Color := clGrayText
    end;
end;

procedure TMyFiles3Form.menDiskRefreshClick(Sender: TObject);
var
  drv: char;
begin
  if timeout(True) then Exit;
  drv := chr(integer(drivestate.Objects[lvDriveState.Selected.Index]));
  doDiskAdd(drv, true);
  InvalidateAllLists;
end;

procedure TMyFiles3Form.menNewColClick(Sender: TObject);
begin
  if timeout(True) then Exit;
  with TfrmSammlung.Create(Self) do
  try
    InitDrives;
    if ShowModal = mrOk then
    begin
      openCol(col, -1, '*');
    end else
           (* begin
            updatecolmenu;
            end;          *)
  finally
    Free;
  end;
end;

procedure TMyFiles3Form.updatecolmenu;
var
  sl: TStringList;
  i: integer;
  item: TMenuItem;
begin
  Application.ProcessMessages;
  with menFile do
    for i := Count - 1 downto 0 do 
      if Items[i].Tag <> -1 then Delete(i);
  with pmCols.Items do
    for i := Count - 1 downto 0 do
      if Items[i].Tag <> -1 then Delete(i);

  menFileDelete.Clear;
  sl := TStringList.Create;
  try
    ini.ReadSectionValues(ini_collections, sl);
{$IFDEF LANSPECIAL}
    if bcount <> -1 then
      for i := 1 to sl.Count - bcount do
        newBanner;
{$ENDIF}
    for i := sl.Count - 1 downto 0 do
    begin
      item := TMenuItem.Create(menFile);
      with item do
      begin
        Checked := sl.names[i] = curcol;
        Caption := sl.Values[sl.names[i]];
        OnClick := genFileOpenClick;
        Tag := i;
        imageindex := 18;
        helpcontext := 115;
        if i < 9 then
          ShortCut := Menus.ShortCut(i + Ord('1'), [ssCtrl]) else
          if i = 9 then
            ShortCut := Menus.ShortCut(Ord('0'), [ssCtrl]) else
      end;
      menFile.Insert(0, item);
      item := TMenuItem.Create(pmCols);
      with item do
      begin
        Checked := sl.names[i] = curcol;
        Caption := sl.Values[sl.names[i]];
        OnClick := genFileOpenClick;
        Tag := i;
        imageindex := 18;
        helpcontext := 115;
      end;
      pmCols.Items.Insert(0, item);

      item := TMenuItem.Create(menFileDelete);
      with item do
      begin
        Enabled := sl.names[i] <> curcol;
        Caption := sl.Values[sl.names[i]];
        OnClick := genFileDeleteClick;
        Tag := i;
        imageindex := 12;
        helpcontext := 116;
      end;
      menFileDelete.Insert(0, item);
    end;
    menFileDelete.Visible := sl.Count <> 0;
    formcontrol(curcol <> '');
    menFile.Enabled := True;
    menHelp.Enabled := True;
    tbCol.Enabled := True;
    btnReg.Enabled := True;
    tbUpd.Enabled := True;
    tbHelp.Enabled := True;
    menSearch.Visible := curcol <> '';
    if curcol = '' then
      sbMain.Panels[0].Text := str_sb0;
  finally
    sl.Free;
  end;
  
(*  if ini.ReadBool(ini_gui, ini_xpmen, True) then Toolbar.DisabledImages := nil else
    Toolbar.DisabledImages := ilTbGray;*)

end;

procedure TMyFiles3Form.genFileDeleteClick(Sender: TObject);
var
  sl: TStringList;
  s: string;
  res: integer;
  SR: TSearchRec;
  failed: Boolean;

begin
  sl := TStringList.Create;
  try
    ini.ReadSectionValues(ini_collections, sl);
    if sl.names[(Sender as TMenuItem).Tag] = curcol then
    begin
      Application.messagebox(PChar(str_cantdel),
        PChar(str_error),
        mb_ok or mb_iconerror);
      Exit;
    end;
    if Application.messagebox(PChar(Format(str_delcol, [sl.values[sl.names[(Sender as TMenuItem).Tag]]])),
      PChar(str_question), mb_yesno or mb_iconquestion
      or mb_defbutton2) = idYes then
      if Application.messagebox(PChar(str_delcol2),
        PChar(str_delcol3),
        mb_yesnocancel or mb_iconquestion or mb_defbutton1) <> idNo
        then Exit else else Exit;


    s := dir_db + sl.names[(Sender as TMenuItem).tag] + '\';
    failed := False;
    try
      res := FindFirstUTF8(s + '*.*',$3F,SR); { *Converted from FindFirst* }
      while res = 0 do
      begin
        if (sr.Name <> '.') and (sr.Name <> '..') then
          if not DeleteFileUTF8(s + sr.Name) { *Converted from DeleteFile* } then
            failed := True;
        res := FindNextUTF8(SR); { *Converted from FindNext* }
      end;
    finally
      FindCloseUTF8(SR); { *Converted from FindClose* }
    end;
    { Ordner löschen }
    try
      if FileExistsUTF8(s + 'NUL') { *Converted from FileExists* } then
        rmdir(s);
    except
      failed := True;
    end;
    { INI aufräumen }
    ini.DeleteKey(ini_collections, sl.names[(Sender as TMenuItem).Tag]);
    ini.EraseSection(ini_colpre + sl.names[(Sender as TMenuItem).Tag]);
    ini.EraseSection(ini_guimain);
    if failed then
      Application.messagebox(PChar(Format(str_creadonly, [s])),
        PChar(str_error), mb_ok or mb_iconwarning) else
      sbMain.panels[2].Text := Format(str_coldel, [sl.values[sl.names[(Sender as TMenuItem).Tag]]]);
  finally
    sl.Free;
  end;
  updatecolmenu;
end;

{ In colid (=CollectionID) ODER tag (=Index) }

procedure TMyFiles3Form.OpenCol(colid: string; Tag: integer; loc: string);
var
  sl,fixdisks: TStringList;
  DBDir: string;
  sr : TSearchRec;
  res: Integer;
  TempListe :  TMyList;
  i : integer;
  s : string;

  procedure renameidapi(ErrNum : integer);
  var
    p : string;
    ErrCaption : string;
  const
    iddll = 'IDAPI32.DLL';
    const
      str_idapidisabled =
      'Auf deinem System ist bereits ein Datenbanktreiber aktiv. Der mitgelieferte'+#13#10+
      'Treiber wurde deaktiviert. Du solltest nun eine Sammlung öffnen/erstellen können.';
      str_idapirestore =
      'MyFindex konnte keinen vorhanden Datenbanktreiber laden. Der mitgelieferte'+#13#10+
      'Treiber wurde wieder aktiviert deaktiviert. Du solltest nun eine Sammlung öffnen/erstellen können.';
      str_noidapi =
      'MyFindex konnte keinen Datenbanktreiber finden. Bitte prüfe, ob du evtl. versehentlich ein'+
      'Update von MyFindex installiert hast, ohne das zuvor eine komplette Version vorhanden war.';

  begin
    p := ExtractFilePath(Application.ExeName);
    ErrCaption := str_error + ' $'+IntToHex(ErrNum,4);
    if FileExistsUTF8(p+iddll) { *Converted from FileExists* } then
    begin
      MoveFileEx(PChar(p+iddll), PChar(p+'_'+iddll),MOVEFILE_REPLACE_EXISTING);
      Application.messagebox(PChar(str_idapidisabled),
        PChar(ErrCaption),
        mb_ICONERROR or MB_OK);
    end
    else
      if FileExistsUTF8(p+'_'+iddll) { *Converted from FileExists* } then
      begin
        MoveFileEx(PChar(p+'_'+iddll), PChar(p+iddll),MOVEFILE_REPLACE_EXISTING);
        Application.messagebox(PChar(str_idapirestore),
          PChar(ErrCaption),
          mb_ICONERROR or MB_OK);
      end
      else
        Application.messagebox(PChar(str_noidapi),
        PChar(ErrCaption),
        mb_ICONERROR or MB_OK);

  end;

begin
  FEditorMode := false;
  menColEditor.Checked := false;  
  lockwindowupdate(Toolbar.Handle);
  try
    SaveAndFreeLists;
    ClearSearchCache;
    mNotesExit(nil);
    if Assigned(notedb) then
      notedb.freebookmark(notebm);
    notedb := nil;
    if curcol <> '' then
      savehistory;
    if Assigned(ColIni) then ColIni.Free;
    ColIni := nil;
    curcol := '';
    curcolname := '';
    updatecolmenu;
    updatecaption;
    cbAdresse.Clear;
    cleartvs;
    clearlistview;
    address := '';
    location := '';
    if Assigned(splash) then
      with splash.lblColStat do
      begin
        Caption := Caption + '''' + colid + ''' ';
        Application.ProcessMessages;
      end;

    sl := TStringList.Create;

    ini.ReadSectionValues(ini_collections, sl);
    if Tag <> -1 then colid := sl.names[Tag];

    DBDir := dir_db + colid + '\';
    ColIni := TIniFile.Create(DBDir + 'col.ini');
    try

      with dm do
      try
        with database do
        begin
          Connected := False;
          DatabaseName := DBDir;
          Connected := True;
        end;
        with tblDisks do
        begin
          Active := False;
          DatabaseName := DBDir;
          Active := True;
        end;
        with tblFolders do
        begin
          Active := False;
          DatabaseName := DBDir;
          Active := True;
        end;
        with tblFiles do
        begin
          Active := False;
          DatabaseName := DBDir;
          Active := True;
        end;
        if Assigned(splash) then splash.step;
      except
        //
        on E: EDBEngineError do
        begin
          for i := 0 to E.ErrorCount-1 do
            case E.Errors[i].ErrorCode of
              $210C, $2109, $3E02, $3E03, $3E04, $3E05, $3E06, $2108 :
              begin
                renameidapi(E.Errors[i].ErrorCode);
                raise EAbort.Create('');
              end;
            end;
          raise;
        end;

      end;
      try
        { DiskID Cleanup }
        fixdisks := TStringList.Create;
        s := ColIni.ReadString(ini_colcleanup,ini_lastfile,'');
        if s <> '' then DebugMail(s);
        try
          ColIni.ReadSectionValues(ini_colcleanup,fixdisks);
          with fixdisks do
            for i := 0 to Count-1 do
            begin
              if Names[i] = ini_lastfile then continue;
              if Application.messagebox(PChar(Format(
              'MyFindex ist beim Einlesen des Datenträgers #%s ''%s'' abgestürzt.'#13#10+
              'Soll dieser Datenträger nun in der Datenbank bereinigt werden?'#13#10+
              '(Es sollte unbedingt "Ja" gewählt werden!)'#13#10+
              'Sollten während der Bereinigung irgendwelche Datenfehler auftreten, benutze'#13#10+
              'bitte zuerst Datei|Reparieren und wähle dann die Sammlung erneut.'#13#10+
              'Dannach kannst du den Datenträger erneut einlesen. Öffne dazu das Einlesen-Fenster'#13#10+
              'und drücke die Taste [F9] um den Debugmodus zu aktivieren.'
              , [Names[i], Values[Names[i]]]
              )),
              'Absturz beim Einlesen',
              mb_ICONWARNING or MB_YESNO) = idYes then
                DeleteDisk(StrToInt(Names[i]));
            end;
          ColIni.EraseSection(ini_colcleanup);
        finally
          fixdisks.Free;
        end;
        { Listen Laden }
        res := FindFirstUTF8(DBDir + '*.myl',$3F,SR); { *Converted from FindFirst* }
        try
          while res = 0 do
          begin
            TempListe := TMyList.Create;
            try
              TempListe.LoadFromFile(DBDir + sr.Name);
              with lvLists.Items.Add do
              begin
                Caption := TempListe.Caption;
                SubItems.Add(Format('%.0n',[TempListe.Count * 1.0]));
                Data := TempListe;
              end;
            except
              TempListe.Free;
              raise;
            end;
            res := FindNextUTF8(SR); { *Converted from FindNext* }
          end;
        finally
          FindCloseUTF8(SR); { *Converted from FindClose* }
        end;
      except
        with dm do
        begin
          database.Connected := False;
          tblDisks.Active := False;
          tblFolders.Active := False;
          tblFiles.Active := False;
        end;
        if Assigned(ColIni) then ColIni.Free;
        ColIni := nil;
        curcol := '';
        curcolname := '';
        updatecolmenu;
        updatecaption;
        cbAdresse.Clear;
        cleartvs;
        clearlistview;
        address := '';
        location := '';
        raise;
      end;
      FColDir := DBDir;
      curcol := colid;
      curcolname := sl.values[colid];
      updatecolmenu;
      updatecaption;
      updatelistmenu;

      menCombomodeDisabled.Checked := not ini.ReadBool(ini_colpre + curcol, ini_combodis, False);
      menCombomodeDisabledClick(nil);
      menDiskviewFirst.Checked := not ini.ReadBool(ini_colpre + curcol, ini_diskvfirst, false);

      tmrDrivestateTimer(nil);
      lvDrivestate.refresh;

      menDiskviewFirstClick(nil);
      updatetvs;
      if Assigned(splash) then
        splash.step;
  (*    except
        Application.messagebox('Datenbank defekt. Programm wird geschlossen.',
                               'Fataler Fehler',
                               mb_iconerror or mb_ok);
        Application.terminate;
      end;
    *)
      cbAdresse.Items.commatext := URLDecode(ini.ReadString(ini_colpre + curcol, 'History', ''));
      if loc <> '*' then
        cbAdresse.Text := loc
      else
        if (cbAdresse.Items.Count > 0) then
        begin
          cbAdresse.Text := cbAdresse.Items[0];
          address := cbAdresse.Text;
        end
        else
          if not ((ini.ReadBool(ini_colpre + curcol, ini_diskvfirst, False) or ini.ReadBool(ini_colpre + curcol, ini_combodis, False))) then
          begin
            pc1.ActivePage := tsVerbund;
            with tvVerbund do
            begin
              ChangeDelay := 0;
              Selected := Items[0];
            end;
          end else
          begin
            pc1.ActivePage := tsDisks;
            with tvDisks do
            begin
              ChangeDelay := 0;
              Selected := Items[0];
  //        updateLV;
            end;
          end;
      if Assigned(splash) then splash.step;
      if showing then showit;
    finally
      sl.Free;
    end;
  finally
    lockwindowupdate(0);
  end;
end;

procedure TMyFiles3Form.genFileOpenClick(Sender: TObject);
begin
  OpenCol('', (Sender as TMenuItem).Tag, '*');
end;

procedure TMyFiles3Form.menColConfigClick(Sender: TObject);
begin
  with TfrmSammlung.Create(Self) do
  try
    Caption := str_capt1;
    col := curcol;
    cbIdent.ItemIndex := colini.ReadInteger('Options','UseLabel',0);
    edtName.Text := ini.ReadString(ini_collections, col, '');
    edtDrives.Text := ini.ReadString(ini_colpre + col, 'Drives', '');
    cbAutoUpdate.Checked := ini.ReadBool(ini_colpre + col, 'AutoUpdate', true);
    if ShowModal = mrOk then
    begin
      curcolname := edtName.Text;
      colini.WriteInteger('Options','UseLabel',cbIdent.ItemIndex);      
      UpdateColMenu;
      updatetvs;
      UpdateCaption;
      if ExtractLastFEntry(location) = '' then
        setwindowtext(Application.Handle, PChar('MyFindex - ' + curcolname));
      tmrDrivestateTimer(nil);
    end;
  finally
    Free;
  end;
end;

procedure TMyFiles3Form.ListAction(ID : TMyId; mode: Byte; item: TListItem);
var
  sel: Boolean;
  i: integer;
begin
  case mode of
    0: sel := False;
    1: sel := True;
    else sel := FCurList.IndexOf(ID) = -1;
  end;
  with FCurList do
    if sel then
      AddID(ID)
    else
    begin
      i := IndexOf(ID);
      if i <> -1 then Delete(i);
    end;
  if Assigned(item) then
    with item do
      Caption := Caption;
end;

procedure TMyFiles3Form.updatelistmenu;
begin
end;

{ SearchCache Freigeben }
procedure TMyFiles3Form.ClearSearchCache;
var
  i : integer;
begin
  with FSearchCache do
  begin
    for i := 0 to Count - 1 do
      Objects[i].Free;
    Clear;
  end;
end;

{ Listen in FListen speichern und Freen }
procedure TMyFiles3Form.SaveAndFreeLists;
var
  i : integer;
begin
  with lvLists,Items do
  begin
    for i := 0 to Count - 1 do
      with TMyList(Item[i].Data) do
      begin
        SaveToFile(FColDir);
        Free;
      end;
    Clear;
  end;
end;

{ Liest lvLists Checkboxes und füllt FCurLists entsprechend }
procedure TMyFiles3Form.ListActiveSelectionChanged;
var
  i : integer;
begin
  FCurLists.Clear;
  with lvLists.Items do
    for i := 0 to Count-1 do
      if Item[i].Checked then
        FCurLists.Add(Item[i].Data);
(*  if FCurLists.Count = 1 then
    sbMain.Panels[2].Text := 'Die Liste '''+TMyList(FCurLists[0]).ListName+''' kann nun bearbeitet werden.' else
    sbMain.Panels[2].Text := Format('Es werden die Dateien aus %d Listen hervorgehoben.',[FCurLists.Count]);
*)
  with ListView do
    if Assigned(TopItem) then
      for i := TopItem.Index to min(TopItem.Index + VisibleRowCount, Items.Count-1) do
        Items[i].Caption := Items[i].Caption;
end;

procedure TMyFiles3Form.menListEditClick(Sender: TObject);
var
  i: integer;
  s: string;
  modeflag: Byte;
  didup : Boolean;
begin
  didup := True;
{  if pc1.ActivePage <> tsListen then
    pc1.ActivePage := tsListen;  }
  modeflag := abs((sender as TMenuItem).tag);
  try
    with ListView do
      for i := 0 to Items.Count - 1 do
        with PLVData(Items[i].Data)^ do
          if (Sender = menSaveViewToList) or Items[i].selected then
          begin
            case item.typ of
              lvt_file: ListAction(item.ID, modeflag, items[i]);
              lvt_disk: with dm, dm.tblFiles do
                begin
                  filter := 'DISKID = ''' + IntToStr(item.id.diskid) + '''';
                  Filtered := True;
                  First;
                  StartWait(RecordCount, '');
                  while not eof do
                  begin
                    if tblFilesEntryKind.Value <> ek_folder then
                      ListAction(dbCurrentID, modeflag, nil);
                    Next;
                    StepWait(Self);
                  end;
                  Filtered := False;
                  didup := False;
                end;
              lvt_ordner, lvt_verbund: begin { Ordner / Verbundordner rekursiv hinzufügen }
                  with dm, dm.tblFolders do
                  begin
                    if item.typ = lvt_ordner then
                      s := 'DISKID = ''' + IntToStr(item.id.diskid) + ''' and ' else
                      s := '';
                    s := s + 'Folder = ' + AnsiQuotedStr(MyGetPath(item.id) + Items[i].caption + '\*', '''');
                    Filter := s;
                    Filtered := True;
                    s := '';
                    First;
                    while not eof do
                    begin
                      if tblFoldersFOLDERID.AsString <> '' then
                        s := s + 'FOLDERID = ''' +
                          tblFoldersFOLDERID.AsString + ''' or ';
                      Next;
                    end;
                    Filtered := False;
                  end;
                  if s <> '' then
                  begin
                    Delete(s, Length(S) - 3, 4);
                    with dm, dm.tblFiles do
                    begin
                      filter := s;
                      Filtered := True;
                      StartWait(RecordCount,'Ordner: ' + Items[i].Caption);
                      First;
                      while not eof do
                      begin
                        if tblFilesEntryKind.Value <> ek_folder then
                          ListAction(dbCurrentID, modeflag, nil);
                        Next;
                        StepWait(Self);
                      end;
                      Filtered := False;
                    end;
                  end;
                  didup := False;
                end;
            end;
          end;
  finally
    if Screen.cursor = crHourGlass then StopWait;
    lvLists.Selected.SubItems[0] := Format('%.0n',[FCurList.Count * 1.0]);
    if not didup then
      with ListView do
        if Assigned(TopItem) then
          for i := TopItem.Index to min(TopItem.Index + VisibleRowCount, Items.Count-1) do
            Items[i].Caption := Items[i].Caption;
    sbMain.panels[2].Text := format(str_sb11, [FCurList.Count * 1.0]);
  end;
end;

procedure TMyFiles3Form.updatecaption;
var
  s: string;
begin
  s := 'MyFindex';
  if curcolname <> '' then s := s + ' - ' + curcolname else
    s := s + ' - ' + str_nocolopened;
  Caption := s;
end;

procedure TMyFiles3Form.ApplicationPropertiesActivate(Sender: TObject);
begin
  timestamp := GetTickCount;
end;

procedure TMyFiles3Form.ApplicationPropertiesDeactivate(Sender: TObject);
var
  secs: dword;
begin
  secs := (GetTickCount - timestamp) div 1000;
  ini.WriteString('Stats', 'UsageTime', IntToStr(StrToInt64(ini.ReadString('Stats', 'UsageTime', '0')) + secs));
end;

procedure TMyFiles3Form.INFO1Click(Sender: TObject);
begin
  with TfrmSplash.Create(Self) do
  try
    tmrClose.Enabled := False;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMyFiles3Form.cbAdresseChange(Sender: TObject);
begin
  cbAdresse.OnChange := nil;
  if cbAdresse.ItemIndex <> -1 then
  begin
    address := cbAdresse.Text;
    updateTV;
  end;
end;

procedure TMyFiles3Form.menSelAllClick(Sender: TObject);
var
  i: integer;
begin
  with ListView.Items do
    for i := 0 to Count - 1 do
      item[i].Selected := True;
end;

procedure TMyFiles3Form.menCheckUpdateClick(Sender: TObject);
var
  url: string;
begin
  sbMain.panels[2].Text := str_sb12;
  url := urlz_update + '&' + spyurl;
   OpenDocument(PChar(url)); { *Converted from ShellExecute* }
end;

{ Url mit Infos *g }

function TMyFiles3Form.spyurl: string;

begin
  Result := Format('program=%s&version=%s&user=%s&secondsused=%d', ['MyFindex', UrlEncode(vers), UrlEncode(regname), ini.readinteger('Stats', 'UsageTime', 0)]);
end;

function TMyFiles3Form.ApplicationPropertiesHelp(Command: Word; Data: Integer;
  var CallHelp: Boolean): Boolean;
var
  url: string;
begin
  Result := False;
  if command = HELP_CONTEXT then
    if data <> 0 then
    begin
      sbMain.panels[2].Text := str_sb13;
      url := urlz_help + 'context=' + IntToStr(data) + '&' + spyurl;
       OpenDocument(PChar(url)); { *Converted from ShellExecute* }
      CallHelp := False;
      Result := True;
    end;
end;

procedure TMyFiles3Form.savesettings;
var
  i: integer;

begin
  with ini do
  begin
    { ListView Speichern }
    if menLayoutAutoSave.Checked then
      menLayoutSaveClick(nil);

//    LvColumns.GetOrderAndWidthFromListview(ListView);
//    writestring(ini_guilv + '.Columns', IntToStr(LvStyle), LvColumns.AsString+',');

    with lvPZip, Columns do
      for i := 0 to Count - 1 do
        ini.writeinteger('GUI.lvPZip', 'Column' + IntToStr(i), columns[i].Width);
    with lvDriveState, Columns do
      for i := 0 to Count - 1 do
        ini.writeinteger('GUI.lvDriveState', 'Column' + IntToStr(i), columns[i].Width);
    WriteBool(ini_guimain, 'maximized', WindowState = wsMaximized);
    if WindowState <> wsMaximized then
    begin
      Writeinteger(ini_guimain, 'width', width);
      WriteInteger(ini_guimain, 'height', height);
      WriteInteger(ini_guimain, 'top', top);
      WriteInteger(ini_guimain, 'left', left);
    end;
    WriteInteger(ini_guimain, 'split_v', pnlLeft.width);
    WriteInteger(ini_guimain, 'split_min', sbProps.Tag);
    WriteInteger(ini_guimain, 'split_pc', pc1.height);
    WriteInteger(ini_guimain, 'split_sb', sbProps.height);
    WriteInteger(ini_guimain, 'split_adrlay', cbLayout.Width);

    WriteInteger(ini_guimain, 'sgProps0', sgProps.ColWidths[0]);

    WriteBool(ini_guimain, 'toolbar', toolbar.visible);
   {//ToBeConverted
   with MenuBar do
   begin
     WriteInteger(ini_guimain, 'menubar.left', left);
     WriteInteger(ini_guimain, 'menubar.top', top);
   end;
   }
   with tbAddress do
   begin
     WriteInteger(ini_guimain, 'adrpnl.left', left);
     WriteInteger(ini_guimain, 'adrpnl.top', top);
   end;
   with Toolbar do
   begin
     WriteInteger(ini_guimain, 'toolbar.left', left);
     WriteInteger(ini_guimain, 'toolbar.top', top);
   end;
  end;
end;
procedure TMyFiles3Form.readsettings;
var
  i: integer;
begin
  with ini do
  begin
    colAv := ReadInteger(ini_colors,'OnDisk',clWindowText);
    colCache := ReadInteger(ini_colors,'Cached',clBlue);
    colGray := ReadInteger(ini_colors,'Gray',clGrayText);

    ReadSection(ini_lays,cbLayout.Items);
    with cbLayout do
      for i := 0 to Items.Count - 1 do
        Items[i] := URLDecode(Items[i]);
    Width := readinteger(ini_guimain, 'width', width);
    Height := readinteger(ini_guimain, 'height', height);
    Top := readinteger(ini_guimain, 'top', top);
    Left := readinteger(ini_guimain, 'left', left);
    if ReadBool(ini_guimain, 'maximized', False) then
      WindowState := wsMaximized;
    pnlLeft.width := Readinteger(ini_guimain, 'split_v', pnlLeft.width);
    sbProps.Tag := ReadInteger(ini_guimain, 'split_min', 0);
    if sbProps.Tag <> 0 then
      fbPropHide.Caption := '+';
    pc1.height := ReadInteger(ini_guimain, 'split_pc', pc1.height);
    sbProps.height := ReadInteger(ini_guimain, 'split_sb', sbProps.height);
    cbLayout.Width := ReadInteger(ini_guimain, 'split_adrlay', cbLayout.Width);
    sgProps.ColWidths[0] := ReadInteger(ini_guimain, 'sgProps0', sgProps.ColWidths[0]);

    toolbar.Visible := ReadBool(ini_guimain, 'toolbar', true);
    menLayoutAutoSave.Checked := ReadBool(ini_guimain, 'autosavelayout', true);
    menToolbar.Checked := toolbar.Visible;
    with lvPZip, Columns do
      for i := 0 to Count - 1 do
        columns[i].Width := ini.readinteger('GUI.lvPZip', 'Column' + IntToStr(i), columns[i].Width);
    with lvDriveState, Columns do
      for i := 0 to Count - 1 do
        columns[i].Width := ini.readinteger('GUI.lvDriveState', 'Column' + IntToStr(i), columns[i].Width);
    verlauf := readinteger(ini_config, ini_histlen, 27);
    cbAdresse.dropdowncount := verlauf;
    with tbAddress do
    begin
      Left := readinteger(ini_guimain, 'adrpnl.left', left);
      Top := readinteger(ini_guimain, 'adrpnl.top', top);
    end;
    {//ToBeConverted
	with MenuBar do
    begin
      Left := readinteger(ini_guimain, 'menubar.left', left);
      Top := readinteger(ini_guimain, 'menubar.top', top);
    end;
	}
    with Toolbar do
    begin
      Left := readinteger(ini_guimain, 'toolbar.left', left);
      Top := readinteger(ini_guimain, 'toolbar.top', top);
    end;
  end;
end;

procedure TMyFiles3Form.savehistory;
begin
  with ini do
    if ReadBool(ini_config, ini_hperm, True) then
      WriteString(ini_colpre + curcol, 'History', URLEncodeQuote(cbAdresse.Items.commatext)) else
      DeleteKey(ini_colpre + curcol, 'History');
end;

procedure TMyFiles3Form.menEjectClick(Sender: TObject);
begin
  ejectdrive(chr(integer(DriveState.objects[lvDriveState.Selected.Index])));
end;


procedure TMyFiles3Form.menBackClick(Sender: TObject);
begin
  if cbAdresse.Items.Count > 1 then
  begin
     address := cbAdresse.Items[1];
//      cbAdresse.ItemIndex := cbAdresse.ItemIndex + 2;
    cbAdresse.Items.Delete(0);
    cbAdresse.Items.Delete(0);
    updateTV;
  end;
end;

procedure TMyFiles3Form.menLevelUpClick(Sender: TObject);
var
  s: string;
  i: integer;
begin
  s := location;
  if s[Length(s)] = '\' then Delete(s, Length(s), 1);
  if s[Length(s)] = '>' then s := '' else
  begin
    for i := Length(s) downto 1 do
      if s[i] = '\' then
      begin
        Delete(s, i, Length(s));
        break;
      end;
    if s = '' then
      s := '\';
  end;
  address := s;
  updateTV;
end;

procedure TMyFiles3Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  abort := True;
end;

procedure TMyFiles3Form.tmrSumSizeTimer(Sender: TObject);
var
  i: integer;
  totalsize: Int64;
  all : Boolean;
begin
  tmrSumSize.Enabled := False;
  totalsize := 0;
  all := ListView.SelCount = 0;

  with ListView.Items do
    for i := 0 to Count - 1 do
      if all or item[i].Selected then
        Inc(totalsize, PLVData(item[i].Data)^.item.Size);
  sbMain.Panels[1].Text := SizeToStr(totalsize,0,false);
end;

procedure TMyFiles3Form.ListViewResize(Sender: TObject);
var
  min, max: integer;
begin
  with listview do
  begin
    min := Top + 25;
    max := Top + Height;
    aniFind.Top := min + (max - min) div 2 - 25;
    min := Left;
    max := Left + width;
    aniFind.Left := min + (max - min) div 2 - 25;
  end;
end;

procedure TMyFiles3Form.cbAdresseExit(Sender: TObject);
begin
  cbAdresse.OnChange := nil;
  if address <> cbAdresse.Text then
  begin
    address := trim(cbAdresse.Text);
    updateTV;
  end;
end;

procedure TMyFiles3Form.cbAdresseDropDown(Sender: TObject);
begin
  cbAdresse.OnChange := cbAdresseChange;
end;

procedure TMyFiles3Form.menSearchClick(Sender: TObject);
begin
  pc1.ActivePage := tsSearch;
  fbSearchResetClick(self);
end;

{ ListView Style ändern }

procedure TMyFiles3Form.menViewClick(Sender: TObject);

  { ImageIndizies rücksetzen }
  procedure ResetImages;
  var
    i, x: integer;
  begin
    // Wenn DISK-Ansicht, dann ImageIndex auf Disk-Symbole setzen
    if (ListView.ViewStyle <> vsIcon) and (location = '') then x := idi_disk else x := -1;
    with ListView do
      for i := 0 to Items.Count - 1 do
        Items[i].ImageIndex := x;
    resetthumbs;
  end;

begin
  case (Sender as TMenuItem).Tag of
    1: begin
        if ListView.ViewStyle = vsIcon then
        begin
          ListView.ViewStyle := vsReport;
          ResetImages;
        end else ListView.ViewStyle := vsReport;
        menVDetail.Checked := True;
        menViewDetail.Checked := True;
      end;
    2: begin
        if ListView.ViewStyle = vsIcon then
        begin
          ListView.ViewStyle := vsList;
          ResetImages;
        end else ListView.ViewStyle := vsList;
        menVList.Checked := True;
        menViewList.Checked := True;
      end;
    3: begin
        if ListView.ViewStyle in [vsReport, vsList] then
        begin
          ListView.ViewStyle := vsIcon;
          ResetImages;
        end else
          ListView.ViewStyle := vsIcon;
        // Ausrichtung anpassen

//        ListView.IconOptions.AutoArrange := True;
        ListView.IconOptions.AutoArrange := False;
        ListView_SetIconSpacing(ListView.Handle, thumbmaxw + (4 * 2) + 8, thumbmaxh + (listview.Canvas.textheight('H')) + 32);
        Listview_arrange(listview.Handle, LVA_DEFAULT);

        menVPreview.Checked := True;
        menViewPreview.Checked := True;
      end;
  end;
  tbView.ImageIndex := (Sender as TMenuItem).Tag + 4;
end;

procedure TMyFiles3Form.menDiskviewFirstClick(Sender: TObject);
begin
  with menDiskviewFirst do
  begin
    Checked := not Checked;
    ini.WriteBool(ini_colpre + curcol, ini_diskvfirst, Checked);
    if Checked then tsDisks.PageIndex := 0 else tsVerbund.PageIndex := 0;
  end;
end;

procedure TMyFiles3Form.menCombomodeDisabledClick(Sender: TObject);
begin
  with menCombomodeDisabled do
  begin
    Checked := not Checked;
    ini.WriteBool(ini_colpre + curcol, ini_combodis, Checked);
    if Checked then
    begin
      if pc1.ActivePage = tsVerbund then pc1.ActivePage := tsDisks;
      tsVerbund.TabVisible := False;
      if not menDiskviewFirst.Checked then menDiskviewFirstClick(nil);
      menDiskViewFirst.Enabled := False;
      menSearchInVerb.Visible := False;
    end else
    begin
      tsVerbund.TabVisible := True;
      menSearchInVerb.Visible := True;
      menDiskViewFirst.Enabled := True;
      if Assigned(Sender) then updatetvs;
    end;
  end;
end;

procedure TMyFiles3Form.Splitter2CanResize(Sender: TObject;
  var NewSize: Integer; var Accept: Boolean);
begin
  accept := (pnlLeft.Height - newsize - 5) > pc1.Constraints.MinHeight;
end;

procedure TMyFiles3Form.formcontrol(en: Boolean);
var
  i: integer;

  procedure menucontrol(men:TMenuItem; en : Boolean);
  var
    i : integer;
  begin
    with men do
      for i := 0 to Count - 1 do
        Items[i].Enabled := en;
  end;

begin
  with Toolbar do
    for i := 0 to ControlCount - 1 do
      (Controls[i] as TControl).Enabled := en;
  tsSearch.Enabled := en;
  tsVerbund.Enabled := en;
  tsDisks.Enabled := en;
  tsDriveState.Enabled := en;
  tsListen.Enabled := en;
//  with MainMenu do
//    for i := 0 to Items.Count - 1 do Items[i].enabled := en;
  listview.Enabled := en;
  tbAddress.Enabled := en;
  //  cbAdresse.Enabled := en;
  menucontrol(menEdit,en);
  menucontrol(menList,en);  
  with tsSearch do
    for i := 0 to ControlCount - 1 do
      if (Controls[i] as TControl).Tag = 1 then
        (Controls[i] as TControl).Enabled := en;
  with tsListen do
    for i := 0 to ControlCount - 1 do
      if (Controls[i] as TControl).Tag = 1 then
        (Controls[i] as TControl).Enabled := en;
end;

procedure TMyFiles3Form.menSearchInSelClick(Sender: TObject);
var
  i: integer;
  s: string;
begin
  if pc1.ActivePage <> tsSearch then menSearchClick(nil); { Neue Suche, falls Suchseite nicht den Focus hat ... }
  with ListView do
    for i := 0 to Items.Count - 1 do
      if Items[i].selected then
        case PLVData(items[i].data)^.item.typ of
          lvt_ordner: begin
              s := GetLVIFileName(Items[i], False) + '\';
              with lbSearchIn.Items do
                if IndexOf(s) = -1 then Add(s);
            end;
          lvt_verbund: begin
              s := GetLVIFileName(Items[i], False);
              s := Copy(s, Pos('>', s) + 1, Length(s)) + '\';
              with lbSearchIn.Items do
                if IndexOf(s) = -1 then Add(s);
            end;
          lvt_file: ;
          lvt_disk: begin
              s := '<' + Items[i].Caption + '>\';
              with lbSearchIn.Items do
                if IndexOf(s) = -1 then Add(s);
            end;
        end;
  ToggleControl(lblSearchIn, pSearchIn);        
end;

procedure TMyFiles3Form.ListViewKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  with ListView do
    if PopupMenu = nil then
      if not IsEditing then PopupMenu := pmListView;
  lvkeydown := False;
  lvshift := False;
end;

procedure TMyFiles3Form.ListViewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key in [33,34,40,38,39,37] then
    lvkeydown := True;
  lvshift := ssCtrl in shift;
end;

procedure TMyFiles3Form.sbPlayMPEGNowClick(Sender: TObject);
begin
  sbPlayMpeg.down := not sbPlayMpeg.down;
  sbPlayMPEGClick(Sender);
end;

procedure TMyFiles3Form.sbPlayMPEGClick(Sender: TObject);
begin
  if not sbPlayMpeg.Down then
    closempeg
  else
    {//ToBeConverted
	with elpMan.Players[0] do
    begin
      if not Initialized then Init;
      dm.tblFilesBinPreview.savetofile(elpMan.Players[0].InputName);
      try
        if PlayerMode = pmClosed then
        begin
          Open;
          InitStream;
        end;
        Play;
        tmrMP3CtrlSync.Enabled := True;
      except
        cbAutoPlay.Checked := False;
        raise;
      end;
    end;
	}
end;

procedure TMyFiles3Form.CloseMPEG;
begin
  {//ToBeConverted
  with elpMan.Players[0] do
  try
    if Initialized and (PlayerMode = pmPlaying) then
    begin
      Stop;
      InitStream;
      DeleteFileUTF8(elpMan.Players[0].InputName);
    end;
  except
  end;
  }
end;

procedure TMyFiles3Form.tmrAutoPlayTimer(Sender: TObject);
begin
  tmrAutoPlay.Enabled := False;
  sbPlayMPEG.down := True;
  sbPlayMPEGClick(nil);
end;

procedure TMyFiles3Form.tmrMP3CtrlSyncTimer(Sender: TObject);
begin
  {//ToBeConverted
  if elpMan.Players[0].Initialized then
  begin
    sbPlayMPEG.down := elpMan.Players[0].PlayerMode in [pmPlaying];
    tmrMP3CtrlSync.Enabled := sbPlayMPEG.down;
    if not sbPlayMPEG.down then
      with elpMan.Players[0] do
      try
        if Initialized and (PlayerMode > pmClosed) then
          Close;
      except
      end;
  end;
  }
end;

{ Windows-Shell-Contextmenü }
{ MultiSelect fähig }

procedure TMyFiles3Form.menCommandsClick(Sender: TObject);
var
  pt: TPoint;
  b: Boolean;
  path,s : string;
  i : integer;
  names : TStringList;
  mainitem : TListItem;
begin
  if ListView.ItemFocused.Selected then
    mainitem := ListView.ItemFocused
  else
    mainitem := ListView.Selected;

  MustBeAvailable(LVMyI(mainitem));
  getcursorpos(pt);
  b := False;
  if ListView.SelCount = 1 then
    {//ToBeConverted DisplayContextMenu(GetLVIFileName(mainitem, True), Handle, Pt, false, b)}
  else
  begin // MultiSelection -> erst Liste mit Dateinamen aufbauen
    Names := TStringList.Create;
    try
      path := ExtractFilePath(GetLVIFileName(mainitem, True));
      with ListView do
        for i := 0 to Items.Count-1 do
        if Items[i].Selected then
          begin
            s := GetLVIFileName(Items[i],True);
            if ExtractFilePath(s) = path then
            begin
              Names.Add(ExtractFileName(s));
            end else
              Items[i].Selected := False;
            { Kontextmenü nur für Dateien im gleichen Ordner, bei Verbundanzeige
              werden die entsprechenden Dateien deselektiert }
          end;

      {//ToBeConverted DisplayContextMenu(path, Names, Handle, Pt, false, b)}
    finally
      Names.Free;
    end;
  end;
end;

procedure TMyFiles3Form.ApplicationPropertiesHint(Sender: TObject);
var
  s: string;
begin
  s := getlonghint(Application.hint);
  if s = '' then
  begin
    sbMain.panels[2].Bevel := pbLowered;
    s := defhint;
  end else
  begin
    sbMain.panels[2].Bevel := pbNone;
    if s[1] = '*' then
      s := Copy(s, 2, maxInt) + ' ' + str_hint;
  end;
    sbMain.panels[2].Text := s;
end;

procedure TMyFiles3Form.menOpenThisFolderClick(Sender: TObject);
var
  idx: integer;
  s1, s2: string;
begin
  parseaddr(location, s1, s2);
  idx := drivestate.indexof(s1);
  if idx <> -1 then
     OpenDocument(pchar(chr(integer(drivestate.objects[idx])) + ':' + s2)); { *Converted from ShellExecute* }
end;

procedure TMyFiles3Form.setsearchaddress;
begin
end;

procedure TMyFiles3Form.btnStartSearchClick(Sender: TObject);
begin
  setsearchaddress;
  updateLV;
end;

procedure TMyFiles3Form.ListViewGetImageIndex(Sender: TObject; Item: TListItem);
begin

end;

{//ToBeConverted
procedure TMyFiles3Form.ListViewGetImageIndex(Sender: TObject;
  Item: TListItem);
var
  bitmap, temp: TBitmap;
  r: trect;

  MS: TStream;
  jpg: TJpegImage;
  ratio: Double;
  h, w, ofs: integer;

  (*const
  maxh = 64;
  maxw = 64;*)

begin
  if item.imageindex <> -1 then Exit;
  if ListView.ViewStyle = vsIcon then
  begin // Vorschau
    if PLVData(item.data)^.item.typ in [lvt_ordner, lvt_verbund] then
      item.imageindex := 0 else
      if PLVData(item.data)^.item.typ = lvt_disk then
        item.imageindex := 2 else
      begin
        with dm, tblFiles do
        begin
          SetKey;
          with PLVData(Item.data)^ do
          begin
            tblFilesDISKID.Value := item.id.diskid;
            tblFilesFOLDERID.Value := item.id.folderid;
            tblFilesFILEID.Value := item.id.fileid;
          end;
          GotoKey;
          if tblFilesBKind.Value = pk_img then
          begin
            bitmap := TBitMap.Create;
            temp := TBitmap.Create;
            try
              MS := dm.tblFiles.CreateBlobStream(tblFilesBinPreview, bmRead);
              jpg := TJPEGImage.Create;
              try
                jpg.Performance := jpBestQuality;
                MS.seek(0, soFromBeginning);
                jpg.LoadFromStream(MS);
                temp.assign(jpg);
              finally
                MS.Free;
                jpg.Free;
              end;
              with bitmap do
              begin
                Width := thumbmaxw + 8;
                Height := thumbmaxh + 8;
              end;
              r := rect(0, 0, thumbmaxw + 8, thumbmaxh + 8);
              bitmap.Canvas.Brush.Color := clBtnFace;
              bitmap.Canvas.FillRect(r);
              Frame3D(bitmap.canvas, r, clBtnHighLight, clBtnShadow, 1);
              //Max. skalieren
              h := temp.Height;
              w := temp.Width;
              ratio := h / w;
              r := rect(0, 0, 0, 0);
              if thumbmaxw * ratio > thumbmaxh then
              begin
                r.Bottom := thumbmaxh;
                r.Right := round(thumbmaxh / ratio);
              end else
              begin
                r.Right := thumbmaxw;
                r.Bottom := round(thumbmaxw * ratio);
              end;
              // Zentrieren
              ofs := (thumbmaxh + 8 - r.Bottom) div 2;
              Inc(r.Bottom, ofs);
              r.Top := ofs;
              ofs := (thumbmaxw + 8 - r.Right) div 2;
              Inc(r.Right, ofs);
              r.Left := ofs;
              bitmap.Canvas.StretchDraw(r, temp);
              Frame3D(bitmap.canvas, r, clBtnShadow, clBtnHighLight, 1);

              item.imageindex := ilThumbs.Add(bitmap, nil);
            finally
              bitmap.Free;
              temp.Free;
            end;
          end else item.imageindex := 1;
        end;
      end;
  end
  else
  begin 
    if PLVData(item.Data)^.item.typ in [lvt_ordner, lvt_verbund] then
      ICache.FileName := icDir else
    begin
      if pos('\'+lowercase(ExtractFileExt(item.Caption))+'\',nocache) <> 0 then
        if IsAvailable(LVMyI(item)) then
          ICache.FileName := GetLVIFileName(item, True) else
            ICache.FileName := item.Caption else
              ICache.FileName := item.Caption;
    end;
//    if PLVData(item.Data)^.item.typ <> lvt_verbund then
//      item.subitems[LvColumns.IndexOf(cl_typ)-1] := ICache.Typ;
    item.ImageIndex := ICache.IconIdx;
  end;
end;
}

procedure TMyFiles3Form.menSaveViewToListClick(Sender: TObject);
var
  newitem : TListItem;
begin
  if timeout(True) then Exit;
//  if Sender = tbList then Sender := menSaveViewToList;
  lvLists.Items.BeginUpdate;
  try
    newitem := lvLists.Items.Add;
    with newitem do
    begin
      if location = '' then
      Caption := 'Alle Datenträger' else
        Caption := location;
      SubItems.Add('0');
      Data := TMyList.Create;
      TMyList(Data).Caption := Caption;
      TMyList(Data).Color := clWindowText;
      TMyList(Data).ListName := MakeListName(Caption);
    end;
    lvLists.Selected := newitem;

    menListEditClick(menSaveViewToList);
    sbMain.Panels[2].Text := str_listfromview;
  finally
    lvLists.Items.EndUpdate;
  end;

(*    if Application.messagebox(PChar(str_needupdate),
      PChar(s),
      mb_ICONERROR or MB_YESNO) = idYes then
      menCheckUpdateClick(nil);
  *)
end;

procedure TMyFiles3Form.menConfigClick(Sender: TObject);
var
  cfgdlg : TfrmConfig;
begin
  cfgdlg := TfrmConfig.Create(Self);
  with cfgdlg do
  try
    if Sender = nil then // Nach Installation
    begin
//      ckProt.Checked := True;
      ckStartmen.Checked := True;
    end;
    if Sender is TSpeedButton then
    begin
      case (Sender as TSpeedButton).Tag of
        1 : tv.Selected := tv.Items[0].getNextSibling.Item[1].Item[0];
        2 : tv.Selected := tv.Items[0].getNextSibling.Item[1].Item[1];
      end;
    end;
    if ShowModal <> mrAbort then
    begin
      { Oberfläche übernehmen }

      { PlugIns laden }
      FPlugIns.Clear;
      {//ToBeConverted LoadPlugins;}
      ListView.Refresh;
      tvVerbund.Refresh;
      tvDisks.Refresh;
    end;
  finally
    Free;
  end;
end;

procedure TMyFiles3Form.ListViewContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  if lvshift then
  begin
    if not Assigned(ListView.Selected) then ListView.Selected := ListView.ItemFocused;
    MustBeAvailable(LVMyI(ListView.Selected));
    with ListView do
      if not getitemat(mousepos.x, mousepos.y).selected then
      begin
        selected := nil;
        Selected := getitemat(mousepos.x, mousepos.y);
        selected.Focused := True;
      end;
    mousepos := listview.clienttoscreen(mousepos);
//    setcursorpos(mousepos.x,mousepos.y);
    menCommandsClick(nil);
    lvshift := False;
  end else
  begin
    mousepos := listview.clienttoscreen(mousepos);
    pmListView.Popup(mousepos.x, mousepos.y);
  end;
  handled := True;
end;

{ Ordner in dem die Datei enthalten ist, im Explorer öffnen }
{ NICHT MultiSelect fähig }

procedure TMyFiles3Form.menExplorerJumpClick(Sender: TObject);
begin
  MustBeAvailable(LVMyI(ListView.Selected));
   OpenDocument(PChar(extractfilepath(GetLVIFileName(ListView.selected, True)))); { *Converted from ShellExecute* }
end;

procedure TMyFiles3Form.menSearchFromLocationClick(Sender: TObject);
begin
  menSearchClick(nil);
  if (location <> '') and (location <> '\') then
  begin
    lbSearchIn.Items.CommaText := '"' + location + '"';
    ToggleControl(lblSearchIn, pSearchIn);
  end;
end;

{ Prüft, ob der Benutzer diese Funktion bereits genutzt hat und nervt in sonst }
{ damit, dass es evtl. zusätzliche Informationen gibt }

procedure TMyFiles3Form.quickinfo(hctx: integer);
var
  flag: Boolean;
begin
  if not ini.ReadBool('QuickInfo', IntToStr(hctx), False) then
  begin
    if
      Application.MessageBox(PChar(str_quickinfo),
      'QuickInfo',
      MB_ICONINFORMATION or MB_YESNO) = idYes then
      ApplicationPropertiesHelp(HELP_CONTEXT, hctx, flag);
    ini.WriteBool('QuickInfo', IntToStr(hctx), True)
  end;
end;

procedure TMyFiles3Form.menWebHelpClick(Sender: TObject);
var
  flag: Boolean;
begin
  ApplicationPropertiesHelp(HELP_CONTEXT, 1, flag);
end;

procedure TMyFiles3Form.menFeedbackClick(Sender: TObject);
begin
   OpenDocument(PChar(urlz_feedback+vers)); { *Converted from ShellExecute* }
end;

procedure TMyFiles3Form.showit;
begin
  if (callbyparam) or ((Pos('search:', lowercase(cbAdresse.Text)) <> 1) and (Pos('list:', lowercase(cbAdresse.Text)) <> 1)) then
  begin
    address := trim(cbAdresse.Text);
    Application.ProcessMessages;
    updateTV;
  end
  else
  begin
//    custlistview(3);
    cbAdresse.setfocus;
    sbMain.panels[0].Text := str_confirm;
  end;
  callbyparam := False;
end;

procedure TMyFiles3Form.FormPaint(Sender: TObject);
begin
  OnPaint := nil;
  sbPropsResize(nil);
  Application.ProcessMessages;
  if not isreg then
  begin
    with TNoRegForm.Create(Self) do
    try
      if ShowModal = mrYes then btnRegClick(nil);
    finally
      Free;
    end;
//    if ToolBar.Visible then btnReg.setfocus;
  end;
  if Assigned(splash) then
  begin
    splash.CloseReq := True;
  end;
  showit;
end;

{ History-Eintragungen vornehmen }

procedure TMyFiles3Form.doHistory;
var
  i: integer;
  s: string;
begin
  address := location;
  with cbAdresse do
  begin
    Items.Insert(0, location);
    for i := Items.Count downto 1 do
      if lowercase(Items[i]) = lowercase(location) then Items.Delete(i);
    while Items.Count > verlauf do
      Items.Delete(verlauf);
    ItemIndex := 0;
    Text := location;
    { Taskbareintragscaption updaten }
    if Pos('?', location) = 1 then
      s := str_sresult else
      if Pos('list:', lowercase(location)) = 1 then
        s := str_list + ' ' + Copy(location,6,maxInt) else
        s := PChar(ExtractLastFEntry(location));
    if s = '' then s := 'MyFindex - ' + curcolname + '';
    setwindowtext(Application.Handle, PChar(s));
  end;
end;

procedure TMyFiles3Form.donamejump;
var
  s: string;
  i: integer;
begin
  s := ansilowercase(jumpname);
  with ListView do
    for i := 0 to Items.Count - 1 do
      if ansilowercase(Items[i].caption) = s then
      begin
        Selected := nil;
        Selected := Items[i];
        ItemFocused := Items[i];
        Items[i].MakeVisible(False);
        doHistory;
        jumpname := '';
        MustBeAvailable(LVMyI(Selected));
        ListViewDblClick(nil);
        SetFocus;
        break;
      end;
  if jumpname <> '' then
    raise Exception.Create(Format(str_Enotthere, [jumpname, location]));
  jumpname := '';
end;

procedure TMyFiles3Form.menCreateLinkClick(Sender: TObject);
var
  url: string;
  i: integer;
begin
  with ListView do
  begin
    for i := 0 to Items.Count - 1 do
      if Items[i].selected then
      begin
        url := 'myfiles:(' + curcol + ')' + GetLVIFileName(Items[i], False);
        with TIniFile.Create(SpecialDirectory(CSIDL_desktopdirectory) + items[i].Caption + '.url') do
        try
          writestring('DEFAULT', 'BASEURL', url);
          writestring('InternetShortcut', 'URL', url);
        finally
          Free;
        end;
      end;
  end;
  sbMain.panels[2].Text := str_links;
end;

procedure TMyFiles3Form.menListLayoutClick(Sender: TObject);
var
  i,j : integer;
begin
try  lvColumns.GetOrderAndWidthFromListview(listView);  except end;
  with TfrmListViewConfig.Create(Self) do
  try
    if location <> '' then
    begin
      with clbCols.Items do
      begin
        Add(cl_filename);
        Add(cl_size);
        Add(cl_typ);
        Add(cl_changed);
        Add(cl_note);
        Add(cl_prev);
        Add(cl_text);
        Add(cl_attr);
        Add(cl_disk);
        Add(cl_pfad);
        Add(cl_dskpfad);
        for i := 0 to FPlugIns.AllProps.Count - 1 do
          Add(cl_ptext+FPlugIns.AllProps[i]);
      end;
      with TStringList.Create do
      try
        CommaText := ini.ReadString(ini_props, 'Folder', '');
        for i := 0 to Count - 1 do
          clbCols.Items.Add(cl_ptext+Strings[i]);
      finally
        Free;
      end;
      with TStringList.Create do
      try
        CommaText := ini.ReadString(ini_props, 'File', '');
        for i := 0 to Count - 1 do
          clbCols.Items.Add(cl_ptext+Strings[i]);
      finally
        Free;
      end;
    end else
    begin { Datenträgerübersicht }
      with clbCols.Items do
        begin
          Add(cl_label);
          Add(cl_size);
          Add(cl_typ);
          Add(cl_read);
          Add(cl_note);
        end;
      with TStringList.Create do
      try
        CommaText := ini.ReadString(ini_props, 'Disk', str_diskdefprop);
        for i := 0 to Count - 1 do
          clbCols.Items.Add(cl_ptext+Strings[i]);
      finally
        Free;
      end;

    end;
    clbCols.ItemEnabled[0] := False;
    cbSizeFmt.ItemIndex := LvColumns.SizeFactor;
    for i := 0 to clbCols.Items.Count - 1 do
      clbCols.Checked[i] := LvColumns.IndexOf(clbCols.Items[i]) <> -1;

    if ShowModal = mrOk then
    begin
      LvColumns.SizeFactor := cbSizeFmt.ItemIndex;
      { TODO LvColumns teilw. überschreiben um Widths beizubehalten }
      j := 0;
      for i := 0 to clbCols.Items.Count - 1 do
        if clbCols.Checked[i] then
        begin
          if j >= lvColumns.Count then lvColumns.Add(clbCols.Items[i]) else
            lvColumns.DID[j] := clbCols.Items[i];
          Inc(j);
        end;
(*      with TStringList.Create do
      try
        CommaText := edtCustom.Text;
        for i := 0 to Count-1 do
        begin
          if j >= lvColumns.Count then lvColumns.Add(Strings[i]) else
            lvColumns.DID[j] := Strings[i];
          Inc(j);
        end;
      finally
        Free;
      end;   *)
      for i := j to lvColumns.Count - 1 do
        LvColumns.Delete(j);
      LvColumns.ReorderAndSizeListview(listView);
      menSpalten.Tag := 1;
      UpdateLV;
    end;
  finally
    Free;
  end;
end;

procedure TMyFiles3Form.menToolbarClick(Sender: TObject);
begin
  with menToolbar do
  begin
    Checked := not Checked;
    Toolbar.Visible := Checked;
  end;
end;

procedure TMyFiles3Form.pc1Change(Sender: TObject);
begin
  tvVerbund.cursor := crDefault;
  tvVerbund.OnChange := tvVerbundChange;
  tvDisks.OnChange := tvDisksChange;
  tvDisks.cursor := crDefault;
  pc1.OnChange := nil;
  if pc1.ActivePage = tsVerbund then
    tvVerbund.Selected := tvVerbund.Items[0];

end;

procedure TMyFiles3Form.btnRegClick(Sender: TObject);
begin
  sbMain.panels[2].Text := str_connecting;
   OpenDocument(PChar(urlz_reg)); { *Converted from ShellExecute* }
end;

procedure TMyFiles3Form.lvDriveStateDblClick(Sender: TObject);
begin
  with lvDriveState do
    if Assigned(selected) then
      with dm.tblDisks do
      begin
        IndexName := 'IdxLabel';
        if Locate('Label', Selected.Subitems[0], []) then
        begin
          address := '<' + Selected.Subitems[0] + '>';
          updateTV;
        end else
          menDiskAddClick(nil);
      end else menColConfigClick(nil);
end;

procedure TMyFiles3Form.menJumpClick(Sender: TObject);
var
  item : TMyItem;
begin
  if not Assigned(listview.selected) then Exit;
  with ListView.selected do
  begin
    item := PLVData(Data)^.Item;
    address := '<' + MyGetDisk(Item.Id) + '>' + MyGetPath(Item.Id);
    subjump := Caption;
  end;
  updateTV;
end;

procedure TMyFiles3Form.pmTreeViewPopup(Sender: TObject);
var
  showlevel: Byte;
  i: integer;
begin
  if pmTreeView.PopupComponent = tvVerbund then { Verbund }
  begin
    if (pmTreeView.PopupComponent as TTreeView).Selected.Level > 0 then showlevel := 2 else showlevel := 0;
  end else
  begin
    case (pmTreeView.PopupComponent as TTreeView).Selected.Level of
      0: showlevel := 0;
      1: showlevel := 1;
    else showlevel := 2;
    end;
  end;
  with pmTreeView do
    for i := 0 to Items.Count - 1 do
      with Items[i] do
      begin
        Visible := (Tag = showlevel) or (Tag = -1);
        Enabled := Visible;
      end;
  mentvRenameDisk.Enabled := not colini.ReadBool('Options','UseLabel',False);
end;

procedure TMyFiles3Form.menTvSearchClick(Sender: TObject);
var
  fldr, s: string;
  fid: integer;
  tvitem: TTreeNode;
begin
  tvitem := TTreeView(pmTreeView.PopupComponent).selected;
  menSearchClick(nil);
  if tvitem.level = 0 then
    Exit;
  with dm, tblFolders do
  begin
    Filtered := False;
    fid := Integer(PTVData(tvitem.Data)^.folderid);
    if fid = -1 then
      fldr := '\' else
    begin
      Locate('FOLDERID', fid, []);
      fldr := tblFoldersFolder.Value;
    end;
    if pmTreeView.PopupComponent = tvVerbund
      then s := fldr
    else s := DiskId2String(PTVData(tvitem.Data)^.diskid, False) + fldr
  end;
  lbSearchIn.Items.CommaText := '"' + s + '"';
  ToggleControl(lblSearchIn, pSearchIn);
  ScbName.SetFocus;
end;

procedure TMyFiles3Form.Beenden1Click(Sender: TObject);
begin
  Close;
end;

procedure TMyFiles3Form.menNoteNextClick(Sender: TObject);
var
  cur: integer;
begin
  with ListView do
  begin
    mNotesExit(nil);
    if Assigned(selected) then
      cur := selected.Index + 1 else cur := 0;
    Inc(cur);
    if cur > Items.Count then cur := 1;
    selected := nil;
    selected := Items[cur - 1];
    selected.focused := True;
    menNoteClick(nil);
  end;
end;

procedure TMyFiles3Form.tsSearchEnter(Sender: TObject);
begin
  QuickInfo(-5);
end;

procedure TMyFiles3Form.menTolClick(Sender: TObject);
begin
  with Sender as TMenuItem do
  begin
    Checked := True;
    spToleranz.Tag := Tag;
    spToleranz.Caption := '< ' + StripHotkey(Caption) + ' >';
  end;
end;

function TMyFiles3Form.MyVolumeId(drive: char): string;
var
  sl : TStringList;
  i  : integer;

begin
  if Assigned(ColIni) then
  begin
    if ColIni.ReadBool('Options','UseLabel',False) then
    begin
      Result := VolumeID(drive);
      Exit;
    end;
    Result := ColIni.ReadString(ini_labels, VolumeSN(drive), '');
    if Result = '' then
    begin
      Result := VolumeID(drive);
      if Result <> '*' then
      begin
        sl := TStringList.Create;
        try
        colini.ReadSectionValues(ini_labels,sl);
        for i := 0 to sl.Count - 1 do
          if ansilowercase(sl.Values[sl.Names[i]]) = ansilowercase(Result) then
          begin
            Result := Result + '#' + VolumeSN(drive);
            break;
          end;
        finally
          sl.Free;
        end;
      end;
    end
  end
  else
    Result := VolumeID(drive);
end;

procedure TMyFiles3Form.UpdateLabel(diskid:integer;s:string);
var
  i   : integer;
  sl  : TStringList;
  lbl : string;
begin
 with dm, tblDisks do
  begin
    IndexName := '';
    SetKey;
    tblDisksDISKID.Value := diskid;
    Gotokey;
    Edit;
    lbl := tblDisksLabel.Value;
    tblDisksLabel.Value := Copy(s,1,tblDisksLabel.Size);
  end;
  sl := TStringList.Create;
  try
    with ColIni do
    begin
      ReadSection(ini_labels, sl);
      for i := 0 to sl.Count - 1 do
        if ReadString(ini_labels, sl[i], '') = lbl then
          WriteString(ini_labels, sl[i], s);
    end;
  finally
    sl.Free;
  end;
end;

procedure TMyFiles3Form.tvDisksEdited(Sender: TObject; Node: TTreeNode;
  var S: String);
begin
  s := trim(Filter(s,LabelForbiddenChars));
  if s = '' then
    s := Node.Text;

  with dm, tblDisks do
  begin
    IndexName := 'IdxLabel';
    SetKey;
    tblDisksLabel.Value := s;
    if GotoKey then
      if tblDisksDISKID.Value <> PTVData(Node.Data)^.diskid then
    begin
      s := Node.Text;
      Application.messagebox(PChar(str_cantrename),
        PChar(str_error), mb_ICONERROR or MB_OK);
    end;
  end;

  if s = Node.Text then Exit;
  UpdateLabel(PTVData(Node.Data)^.MediaID,s);
  address := '<'+s+'>\';
  UpdateLV;
  lvDriveState.Refresh;
end;

procedure TMyFiles3Form.tvDisksEditing(Sender: TObject; Node: TTreeNode;
  var AllowEdit: Boolean);
begin
  if ColIni.ReadBool('Options','UseLabel',False) then
  begin
    AllowEdit := False;
    Exit;
  end;
  if Node <> tvDisks.Items.GetFirstNode then
    AllowEdit := PTVData(Node.Data)^.FolderID = -1
  else
    AllowEdit := False;
end;

procedure TMyFiles3Form.ListViewEdited(Sender: TObject; Item: TListItem;
  var S: String);
begin
  s := trim(Filter(s,LabelForbiddenChars));
  if s = '' then
    s := Item.Caption;

  with dm, tblDisks do
  begin
    IndexName := 'IdxLabel';
    SetKey;
    tblDisksLabel.Value := s;
    if GotoKey then
      if tblDisksDISKID.Value <> PLVData(Item.Data)^.item.id.diskid then
      begin
        s := Item.Caption;
        Application.messagebox(PChar(str_cantrename),
          PChar(str_error), mb_ICONERROR or MB_OK);
      end;
  end;

  if s = Item.Caption then Exit;
  UpdateLabel(PLVData(Item.Data)^.item.id.diskid,s);
  updatetvs;
  lvDriveState.Refresh;
end;

procedure TMyFiles3Form.ListViewEditing(Sender: TObject; Item: TListItem;
  var AllowEdit: Boolean);
begin
  if ColIni.ReadBool('Options','UseLabel',False) then
  begin
    AllowEdit := False;
    Exit;
  end;
  AllowEdit := location = '';
  ListView.PopupMenu := nil;
end;

procedure TMyFiles3Form.menRepairClick(Sender: TObject);
begin
  mNotesExit(nil);
  with TfrmRepair.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMyFiles3Form.ControlBarBandInfo(Sender: TObject; Control: TControl;
  var Insets: TRect; var PreferredSize, RowCount: Integer);
begin
  {//ToBeConverted
  with MenuBar do if Tag = 0 then Tag := Width;
  }
  if Control = ToolBar then
    PreferredSize := tbHelp.Left + tbHelp.Width + 1 else
    if Control = tbAddress then
    begin
      {//ToBeConverted
	  PreferredSize := MenuBar.Tag; //Screen.Width
      }
	  tbAddressResize(nil);
    end
      else
      {//ToBeConverted
	  if Control = MenuBar then
        PreferredSize := MenuBar.Tag;
	  }
end;

procedure TMyFiles3Form.ControlBarBandMove(Sender: TObject; Control: TControl;
  var ARect: TRect);
begin
  if Control = tbAddress then
  ARect.Right := Screen.Width;
end;

{$IFDEF LANSPECIAL}
procedure TMyFiles3Form.newBanner;
begin
  Inc(bcount);
  with TImage.Create(Self) do
  begin
    Parent := ControlBar;
    Visible := True;
    Picture.Assign(imgCDEinlesen.Picture);
    AutoSize := True;
    onClick := imgCDEinlesenClick;
    if bcount mod 2 = 0 then Top := ControlBar.Height else Top := ControlBar.Height - Height;
  end;
end;
{$ENDIF}

procedure TMyFiles3Form.tbAddressResize(Sender: TObject);
begin
  cbAdresse.Width := tbAddress.Width - tbtnAddress.Width - tbtnLayout.Width - cbLayout.Width - 3;
end;

procedure TMyFiles3Form.tbtnAddressClick(Sender: TObject);
begin
  cbAdresse.SetFocus;
end;

{********* Progressbar Funktionen *********}

procedure TMyFiles3Form.StartWait(MaxW:Int64; WaitText:string);
var
  Steps: integer;
  Len: Integer;
begin
  dblock := True;
  if MaxW = 0 then MaxW := 1;
  Screen.cursor := crHourGlass;
  pnlLeft.Enabled := False;
  ControlBar.Enabled := False;
  pListView.Enabled := False;

  Len := GetWindowTextLength(Application.Handle);
  SetString(FSaveCaption, PChar(nil), Len);
  if Len <> 0 then
    GetWindowText(Application.Handle,Pointer(FSaveCaption), Len + 1);
  Steps := pbProgress.Width div 15;
  FWaitStep := MaxW div Steps;
  with pbProgress do
  begin
    Step := 1;
    if FWaitStep < 1 then
    begin
      FWaitStep := 1;
      Max := MaxW;
    end else
      Max := pbProgress.Width div 15;
    Position := 0;
    show;
  end;
  FWaitInt := 0;

  sbMain.panels[2].Bevel := pbLowered;
  if WaitText = '' then
    sbMain.panels[2].Text := str_wait
  else
    sbMain.panels[2].Text := WaitText;
  sbMain.Repaint;


//  Screen.cursor := crHourGlass;
//  SetCursor(Screen.Cursors[crHourGlass]);

  Application.ProcessMessages;
//  Self.Enabled := False;

end;

procedure TMyFiles3Form.StepWait(Sender: TObject);
var
  s : string;
begin
  Inc(FWaitInt);
  if FWaitInt mod FWaitStep = 0 then
  begin
    pbProgress.StepIt;
    s := IntToStr(pbProgress.Position * 100 div pbProgress.Max)+'%';
    SetWindowText(Application.Handle,PChar(s));
    application.processmessages;
  end;
end;

procedure TMyFiles3Form.StopWait;
begin
  pbProgress.Hide;
  Screen.cursor := crDefault;
  Self.Enabled := True;
  sbMain.Panels[2].Text := '';
  SetWindowText(Application.Handle,PChar(FSaveCaption));

  pnlLeft.Enabled := True;
  ControlBar.Enabled := True;
  pListView.Enabled := True;
  dblock := False;
end;

procedure TMyFiles3Form.tbNewListClick(Sender: TObject);
begin
  if timeout(True) then Exit;
  QuickInfo(-1);
  lvLists.OnChange := nil;
  pc1.ActivePage := tsListen;
  with lvLists.Items.Add do
  begin
    Caption := 'neue Liste';
    SubItems.Add('0');
    Data := TMyList.Create;
    TMyList(Data).Caption := Caption;
    TMyList(Data).Color := clWindowText;
    TMyList(Data).ListName := MakeListName(Caption);
    lvLists.OnChange := lvListsChange;
    EditCaption;
  end;
end;

procedure TMyFiles3Form.lvListsChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  i : integer;
begin
  lvLists.OnChange := nil;
  try
    with lvLists do
    begin
      if FListsLastSelect <> Selected then  { Selection Changed }
      begin
        tbLColor.Enabled := Assigned(Selected);
        tbLGen.Enabled := Assigned(Selected);
        tbLView.Enabled := Assigned(Selected);
        tbLExp.Enabled := Assigned(Selected);
        tbLDel.Enabled := Assigned(Selected);
        menLCol.Enabled := Assigned(Selected);
        menLGen.Enabled := Assigned(Selected);
        menLView.Enabled := Assigned(Selected);
        menLExp.Enabled := Assigned(Selected);
        menLRemove.Enabled := Assigned(Selected);
        menLRename.Enabled := Assigned(Selected);
        with Items do
          for i := 0 to Count-1 do
            with Item[i] do Checked := Selected;
        FListsLastSelect := Selected;
        if Selected = nil then FCurList := nil else
          FCurList := TMyList(Selected.Data);
      end; { /Checked Changed/ }
      ListActiveSelectionChanged;
    end;
  finally
    lvLists.OnChange := lvListsChange;
  end;
end;

procedure TMyFiles3Form.tblColorClick(Sender: TObject);
var
  i : integer;
begin
  with ColorDialog do
  begin
    Color := TMyList(lvLists.Selected.Data).Color;
    if Execute then
    begin
      TMyList(lvLists.Selected.Data).Color := Color;
      with ListView do
        if Assigned(TopItem) then
          for i := TopItem.Index to min(TopItem.Index + VisibleRowCount, Items.Count-1) do
            Items[i].Caption := Items[i].Caption;
    end;
  end;
end;

procedure TMyFiles3Form.lvListsCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  lvLists.Canvas.Font.Color := TMyList(Item.Data).Color;
  if ListView.SelCount = 1 then
    if TMyList(Item.Data).IndexOf(PLVData(ListView.Selected.Data)^.item.ID) <> -1 then
      lvLists.Canvas.Font.Style := [fsBold];
end;

procedure TMyFiles3Form.tbLViewClick(Sender: TObject);
begin
  tvVerbund.Selected := nil;
  tvDisks.Selected := nil;
  address := 'List:' + TMyList(lvLists.Selected.Data).ListName;
  updateTV;
end;

procedure TMyFiles3Form.lvListsEdited(Sender: TObject; Item: TListItem;
  var S: String);
begin
  if trim(s) = '' then s := Item.Caption;
  with TMyList(Item.Data) do
  begin
    Caption := s;
    ListName := MakeListName(s);
    if (Count = 0) and (ListView.SelCount > 0) then
    begin
      if Application.MessageBox(PChar(Format(
        'Die Liste ''%s'' enthält zur Zeit keine Dateien.'#13#10+
        'Soll(en) die zur Zeit markierte(n) Datei(en)/Ordner der'#13#10+
        'Liste hinzugefügt werden?',[s])),
        'Liste',
        MB_ICONQUESTION or MB_YESNO) = idYes
      then
        menListEditClick(menLAdd);
    end;
  end;

end;

{********* Listen *********}
function TMyFiles3Form.MakeListName(Caption: string): string;
var
  s,s2 : string;
  i,c : integer;
  exists : Boolean;
begin
  s := '';
  for i := 1 to Length(Caption) do
    if not (Caption[i] in LabelForbiddenChars) then
      s := s + Caption[i];
  s2 := trim(s);
  if s = '' then s := 'Liste';
  c := 0;
  repeat
    exists := False;            { Existiert Listenname schon? }
    with lvLists.Items do
      for i := 0 to Count-1 do
        if lowercase(TMyList(Item[i].Data).ListName) = lowercase(s2) then
        begin
          exists := True;
          Inc(c);
          s2 := s + IntToStr(c);
          break;
        end;
  until not exists;
  Result := s2;
end;

procedure TMyFiles3Form.tbLDelClick(Sender: TObject);
var
  List : TMyList;
begin
  if Sender <> nil then
    if Application.messagebox(pchar(Format(str_dellist, [lvLists.Selected.Caption])),
      pchar(str_question), mb_yesno or mb_iconquestion
      or mb_defbutton2) <> idYes then Exit;
  List := TMyList(lvLists.Selected.Data);
  DeleteFileUTF8(PChar(dm.tblFiles.DatabaseName + List.ListName + '.myl')); { *Converted from DeleteFile* }
  List.Free;
  lvLists.Selected.Delete;
end;

procedure TMyFiles3Form.ListViewCustomDrawSubItem(Sender: TCustomListView;
  Item: TListItem; SubItem: Integer; State: TCustomDrawState;
  var DefaultDraw: Boolean);
begin
  with Listview.Canvas.Font do
  begin
    Style := [];
    if PLVData(Item.Data)^.Grayed then
      Color := colGray else Color := colAv;
  end;
end;

procedure TMyFiles3Form.lvListsCustomDrawSubItem(Sender: TCustomListView;
  Item: TListItem; SubItem: Integer; State: TCustomDrawState;
  var DefaultDraw: Boolean);
begin
  with lvLists.Canvas.Font do
  begin
    Style := [];
    Color := clWindowText;
  end;
end;

procedure TMyFiles3Form.lvListsDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Source = ListView;
end;

procedure TMyFiles3Form.genDragOverDeny(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := False;
end;

procedure TMyFiles3Form.lvListsDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  with lvLists do
    Selected := GetItemAt(x,y);
  menListEditClick(menLAdd);
end;

procedure TMyFiles3Form.Listen1Click(Sender: TObject);
begin
  ShowMessage('Halte die [ALT]-Taste gedrückt und ziehe eine Datei/einen Ordner auf eine Liste um ihn der Listen hinzuzufügen.');
end;

procedure TMyFiles3Form.menRenameList(Sender: TObject);
begin
  lvLists.Selected.EditCaption;
end;

procedure TMyFiles3Form.lvListsDblClick(Sender: TObject);
begin
  if Assigned(lvLists.Selected) then
    tbLViewClick(Sender);
end;

procedure TMyFiles3Form.tvVerbundEnter(Sender: TObject);
begin
  pmTreeview.PopupComponent := tvVerbund;
end;

procedure TMyFiles3Form.tvDisksEnter(Sender: TObject);
begin
  pmTreeview.PopupComponent := tvDisks;
end;

procedure TMyFiles3Form.btnTVDummyExit(Sender: TObject);
begin
  btnTVDummy.Enabled := False;
end;

{ Initialisieren des Dummy-Buttons um den Focus abzufangen ->
  kein sofortiges Select bei anwählen des Verbund-/Disksheets }

procedure TMyFiles3Form.tspc1Enter(Sender: TObject);
begin
  if not ini.ReadBool(ini_config, 'FastSwitch',  False) then
    with btnTVDummy do
    begin
      Parent := TWinControl(Sender);
      TabOrder := 0;
      Enabled := True;
      SendToBack;
    end;
end;

procedure TMyFiles3Form.tbLGenClick(Sender: TObject);
var
  p: TPoint;
begin
  p.x := tbLGen.Left;
  p.y := tbLGen.Top + tbLGen.height;
  p := tbLists.ClientToScreen(p);
  pmGenList.popup(p.x, p.y);
end;

procedure TMyFiles3Form.menListGenGen(Sender: TObject);
begin
  with TfrmListCompareOpt.Create(Self) do
  try
    cbList1.ItemIndex := lvLists.Selected.Index;
    cbHow.ItemIndex := TMenuItem(Sender).Tag;
    cbHowChange(nil);
    if Sender = menShowDouble then
    begin
      cbList1.Enabled := False;
      cbHow.Enabled := False;
      ShowListAfterCreation := True;
    end;
    if Sender = menQuickCompare then
    begin
      cbList1.Enabled := False;
      ShowListAfterCreation := True;
    end;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMyFiles3Form.DebugMail(CorruptFile:string);
begin
  Application.messagebox(PChar(Format(
    'MyFindex ist beim Einlesen der Datei'#13#10+
    '''%s'''#13#10+
    'abgestürzt. Warscheinlich ist diese Datei defekt oder konnte aus anderen'#13#10+
    'Gründen nicht korrekt von MyFindex verarbeitet werden.'#13#10+
    #13#10+
    'Damit MyFindex die Datei in Zukunft richtig einlesen kann, kontaktiere bitte'#13#10+
    'den Autor mit folgenden Informationen:'#13#10+
    ' - Datenträger auf dem sich die Datei befindet (Festplatte, CD, CD verkrazt?)'#13#10+
    ' - Welche Vorschauoptionen/Plugins wurden verwendet? oder hänge die Datei'#13#10+
    '   myfiles.ini im MyFindex-Ordner an die Mail'#13#10+
    'Außerdem solltest du, falls möglich, die verursachende Datei selbst - möglichst'#13#10+
    'komprimiert - mitsenden.'#13#10+
    'Vielen Dank für deine Mithilfe!'
    , [CorruptFile]
    )),
    'Debuginformationen gefunden',
    mb_ICONWARNING or MB_OK);
   OpenDocument(PChar(urlz_crash+vers)); { *Converted from ShellExecute* }
end;

procedure TMyFiles3Form.tbGenListClick(Sender: TObject);
begin
  with TfrmListCompareOpt.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TMyFiles3Form.etSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if key in [#13,#27] then key := #0;
end;

function GetSLCommaText(sl:TStringList): string;
var
  S: string;
  P: PChar;
  I, Count: Integer;
begin
  Count := sl.Count;
  begin
    Result := '';
    for I := 0 to Count - 1 do
    begin
      S := sl[I];
      P := PChar(S);
      while not (P^ in [#0..' ','"',',']) do P := CharNext(P);
      if (P^ <> #0) then S := AnsiQuotedStr(S, '"');
      Result := Result + S + ' ';
    end;
    System.Delete(Result, Length(Result), 1);
  end;
end;

procedure TMyFiles3Form.ENumSearch(Sender: TObject; Item:TMyItem; var stop: Boolean);
begin
  curcachelist.Add(Item.ID,Item);
  AddItemToListview(Item,false);
  sbMain.Panels[0].Text := Format(str_sb1, [listview.Items.Count * 1.0]);
  Application.ProcessMessages;
end;

procedure TMyFiles3Form.btnStartClick(Sender: TObject);
var
  s : string;

var
  attryes,attrno,i : integer;
  idx : integer;

  {//ToBeConverted
  function ControlsToSize(spin:TJvSpinEdit;cb:TComboBox):Int64;
  begin
    Result := trunc(spin.Value * IntPower(1024,cb.ItemIndex));
  end;
  }

begin
  with TMySearch.Create('') do
  begin
     NameStr.Value := ScbName.Text;
    { Size / Date }
    {//ToBeConverted
    if chkMinSize.Checked then
      MinSize := ControlsToSize(seMinSize, cbMinSize);
    if chkMaxSize.Checked then
      MaxSize := ControlsToSize(seMaxSize, cbMaxSize);
    }
    if chkMinDate.Checked then
      MinDate := dtpMinDate.DateTime;
    if chkMaxDate.Checked then
      MaxDate := dtpMaxDate.DateTime;

    { Attribute }
    attryes := 0; attrno := 0;
    with pSearchAttribute do
      for i := 0 to ControlCount-1 do
        case (Controls[i] as TCheckBox).State of
          cbChecked : Inc(attryes,attrs[i]);
          cbUnchecked : Inc(attrno,attrs[i]);
          cbGrayed : ; { egal }
        end;
    AttrSet := attryes;
    AttrUSet := attrno;

    { Suchen in }
    with lbSearchIn do
      for i := 0 to Items.Count - 1 do
        SearchIn.Add(Items[i]);
    { Inhalt }
    for i := 0 to lbContents.Items.Count - 1 do
    begin
      s := lbContents.Items[i];
      idx := Pos(': ',s);
      Notes.AddObject(Copy(s,1,idx-1), TMySearchString.Create(Copy(s,idx+2,maxInt)) );
    end;
    address := 'Search: ' + AsText;
  end;
  updateLV;
end;

procedure TMyFiles3Form.DoSearch; { Wird aus UpdateLV aufgerufen }
var
  i : integer;
  starttime : dword;
begin
  ListView.Items.BeginUpdate;
  try
//    custlistview(3);
    clearlistview;
  finally
    ListView.Items.EndUpdate;
  end;
  starttime := GetTickCount;
  { ggf. Cache laden }
  if FSearchCache.IndexOf(address) <> -1 then
  with TMyList(FSearchCache.Objects[FSearchCache.IndexOf(address)]) do
  try
    custlistview(address);
    StartWait(Count,'Lade...');
    i := 0;
    while i < Count do
    try
      AddItemToListView(Items[i],False);
      StepWait(Self);
      Inc(i);
    except
      on EMyIDError do Delete(i);
    end;
    location := address;
    Exit;
  finally
    StopWait;
    sbMain.Panels[2].Text := 'Suchergebnisse geladen.';
  end;
  { Normale Suche }
  cursearch := TMySearch.Create(Copy(address,8,maxint));
  curcachelist := TMyList.Create;
  btnStart.Enabled := False;
  with cursearch do
  try
    custlistview('Search: '+ AsText);
    sbMain.Panels[0].Text := Format(str_sb1, [0.0]);
    StartWait(dm.tblFiles.RecordCount,'Suche... (ESC bricht ab)');
    OnItem := EnumSearch;
    OnProgress := StepWait;
    if not Execute(lvLists) then
      Limit := ListView.Items.Count;
    location := 'Search: '+ AsText;
    FSearchCache.AddObject(Location,curcachelist);
  finally
    StopWait;
    cursearch := nil;
    btnStart.Enabled := True;
    sbMain.Panels[2].Text := Format(str_sb4, [SCount * 1.0]) + ' ' +
      Format(str_sb5, [(GetTickCount - starttime) / 1000]);
    Free;
  end;
end;

procedure TMyFiles3Form.ExtEditAccept(Sender: TObject);
var
  key : Word;
begin
  if Assigned(TEdit(Sender).OnKeyDown) then
  begin
    key := TEdit(Sender).Tag;
    TEdit(Sender).OnKeyDown(Self, key, []);
  end;
end;

procedure TMyFiles3Form.tbExportClick(Sender: TObject);
var
  TheList : TMyList;

begin
  savesettings;
  with TfrmListExport.Create(Self) do
  try
    cbExpLayout.Items.AddStrings(cbLayout.Items);
    cbExpLayout.ItemIndex := 0;
    if Assigned(lvLists.Selected) then
    begin
      cbList.ItemIndex := lvLists.Selected.Index;
      cbListChange(cbList);
    end;
    if Sender = menQuickExport then
      cbList.Enabled := False;

    if ShowModal = mrOk then
    begin
      { Speichern unter ... }
      if Settings.ReadInteger(ini_prop,'ExportTyp',0) = 0 then
        begin
          sdExport.Filter := Format('%1:s (%0:s)|%0:s',[
            Settings.ReadString(ini_prop,'DefaultExt','.txt'),
            Settings.ReadString(ini_prop,'FileDesc','Text-Datei')]);
          sdExport.DefaultExt := Settings.ReadString(ini_prop,'DefaultExt','.txt');
          if not sdExport.Execute then Exit;
        end else raise Exception.Create('not implemented - export in temporäre datei');

      { Liste }
      TheList := TMyList(Self.lvLists.Items[cbList.ItemIndex].Data);
      StartWait(TheList.Count * 2,'Exportiere');
      CheckList(TheList);
      { Exportobjekt erzeugen, anwenden }

      with TMyListExport.Create(TheList, Settings, MyFiles3Form.StepWait) do
      try
        { Listeneinstellungen übernehmen }
//        SizeFmt := ini.readinteger(ini_guilv + '3', 'Size', szpredef[3]);
//        if SizeFmt = 1 then SizeFmt := -1;
        if cbExpLayout.ItemIndex = 0 then
          ColumnsFormat := LvColumns.AsString
        else
          ColumnsFormat := URLDecode(ini.ReadString(ini_lays, URLEncodeQuote(cbExpLayout.text), ''));
//        ColumnsFormat := ini.ReadString(ini_guilv + '.Columns', '3', def3);

        { Infos }
        infoUser := regname;
        infoColName := curcolname;
        infoShortColName := curcol;

        Execute;
        Lines.SaveToFile(sdExport.FileName);
        if not chkDontOpen.Checked then
         OpenDocument(PChar(sdExport.FileName)); { *Converted from ShellExecute* }
      finally
        {TMyListExport.Create}Free;
        StopWait;
      end;
    end;
  finally
    Free;
  end;
end;

procedure TMyFiles3Form.MustBeAvailable(Item: TMyItem);
begin
  while not IsAvailable(Item) do
  begin
    dbSeekDisk(item.id.diskid, '');
    item := dbCurrentDisk;
    frmWaitForDisk := TfrmWaitForDisk.Create(Self);
    with frmWaitForDisk do
    try
      Caption := item.Name;
      lblDisk.Caption := item.Name;
      if item.Note <> '' then
        mNote.Text := item.Note;
      if ShowModal = mrCancel then
        raise EAbort.Create('Datenträger nicht vorhanden');
    finally
      FreeAndNil(frmWaitForDisk);
    end;
  end;
end;

procedure TMyFiles3Form.ToggleControl(Sender: TObject; P : TPanel);
var
  s : string;
  idx,i : integer;
begin
  s := (Sender as TLabel).Caption;
  idx := Pos(' »',s);
  if idx <> 0 then
    s := Copy(s,1,idx-1);
  if Pos('« ',s) = 1 then s := Copy(s,3,maxInt);
  p.Visible := not p.Visible;
  case p.visible of
    True :
      with (Sender as TLabel) do
      begin
        p.Top := Parent.Top + Parent.Height;
        Caption := '« '+s;
        Font.Color := clCaptionText;
        Font.Style := [];
        (Parent as TPanel).Color := clActiveCaption;
        for i := 0 to p.ControlCount - 1 do
          if p.Controls[i] is TWinControl then
          begin
            TWinControl(p.Controls[i]).SetFocus;
            break;
          end;
      end;
    False :
      with (Sender as TLabel) do
      begin
        Caption := s + ' »';
        Font.Color := clBlue;
        Font.Style := [fsUnderline];
        (Parent as TPanel).Color := clWindow;
        ScbName.SetFocus;
      end;
  end;
  pnlSearch.Height := pBottom.Top + pBottom.Height + 3;
  pnlSearch.Width := sbSearch.ClientWidth - (pnlSearch.Left * 2);
end;
{//ToBeConverted
procedure TMyFiles3Form.ScbNameButtonClick(Sender: TObject);
var
  MousePos : TPoint;
begin
  with TfrmStringEdit.Create(Self) do
  try
    GetCursorPos(MousePos);
    Left := MousePos.x - 5;
    Top := MousePos.y - 5;
    Value := (Sender as TComboEdit).Text;
    if ShowModal = mrOk  then
      (Sender as TComboEdit).Text := Value;
  finally
    Free;
  end;
end;
}
procedure TMyFiles3Form.lblSearchDateClick(Sender: TObject);
begin
  ToggleControl(lblSearchDate, pSearchDate);
end;

procedure TMyFiles3Form.lblSizeClick(Sender: TObject);
begin
  ToggleControl(lblSize, pSearchSize);
end;

procedure TMyFiles3Form.lblAttributeClick(Sender: TObject);
begin
  ToggleControl(lblAttribute, pSearchAttribute);
end;

procedure TMyFiles3Form.genSearchInPMClick(Sender: TObject);
var
  i        : integer;
  mousepos : TPoint;
  f        : TfrmExtSelect;
  kompo,oldparent : TWinControl;

begin
  oldparent := nil;
  kompo := nil;
  f := TfrmExtSelect.Create(Self);
  with f do
  try
    if Sender = menSearchInVerb then
      kompo := tvVerbund
      else if Sender = menSearchInDisk then
      begin
        kompo := tvDisks;
        pnlHead.Caption := 'Datenträgerauswahl';
      end
        else
        begin
          kompo := lvListSel;
          pnlHead.Caption := 'Listenauswahl';
        end;

    if kompo <> lvListSel then { Tree-Komponente Entführen }
    begin
      oldparent := kompo.Parent;
      kompo.Parent := f;
    end else
    begin { Listen-Kompo }
      for i := 0 to lvLists.Items.Count -1 do
        with lvListSel.Items.Add do
        begin
          Caption := lvLists.Items.Item[i].Caption;
          SubItems.Add( lvLists.Items.Item[i].SubItems[0]);
        end;
      lvListSel.Visible := True;
    end;

    ActiveControl := kompo;

    { Popup-Fensterposition bestimmen }

    GetCursorPos(MousePos);
    Left := MousePos.X;
    Top := MousePos.Y;
    if ShowModal = mrOk then
    begin
      { Auswahl übernehmen }
      if kompo = lvListSel then
        lbSearchIn.Items.Add('List:'+TMyList(lvLists.Items[lvListSel.Selected.Index].Data).ListName)
      else
        if (location <> '') and (location <> '\') then
          lbSearchIn.Items.Add(location);
    end;
  finally
    if Assigned(oldparent) then
      kompo.Parent := oldparent;
    f.Free;
  end;
end;

procedure TMyFiles3Form.tsSearchResize(Sender: TObject);
begin
  pnlSearch.Width := sbSearch.ClientRect.Right - sbSearch.ClientRect.Left - (pnlSearch.Left * 2);
end;

procedure TMyFiles3Form.fbAddEClick(Sender: TObject);
var
  s2 : string;
  i : integer;
begin
  if (cbProp.Text = '') or (cbWert.Text = '') then Exit;
  if cbProp.ItemIndex = 0 then
    s2 := '*: ' else s2 := cbProp.text + ': ';
  with lbContents do
    for i := 0 to Items.Count - 1 do
      if Copy(Items[i],1,Length(s2)) = s2 then
        Items.delete(i);  // Ersetzen
//        raise Exception.Create('Eine Eigenschaft kann nicht mehrfach durchsucht werden.');

  lbContents.Items.Add(s2 + cbWert.Text);
  cbWert.Text := '';
  cbProp.Text := '';
  cbProp.SetFocus;
end;

procedure TMyFiles3Form.fbAddClick(Sender: TObject);
var
  mousepos : TPoint;
begin
  GetCursorPos(mousepos);
  pmSearchIn.Popup(mousepos.x, mousepos.y);
end;

procedure TMyFiles3Form.fbDelClick(Sender: TObject);
begin
  with lbSearchIn do Items.Delete(ItemIndex);
  fbDel.Enabled := False;
end;

procedure TMyFiles3Form.lbSearchInClick(Sender: TObject);
begin
  fbDel.Enabled := True;
end;

procedure TMyFiles3Form.fbDelEClick(Sender: TObject);
begin
  with lbContents do Items.Delete(ItemIndex);
  fbDelE.Enabled := False;
end;

procedure TMyFiles3Form.lbContentsClick(Sender: TObject);
begin
  fbDelE.Enabled := True;
end;
{//ToBeConverted
procedure TMyFiles3Form.cbWertKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    fbAddEClick(nil);    
  end;
end;
}
{//ToBeConverted
procedure TMyFiles3Form.cbWertExit(Sender: TObject);
begin
  try fbAddEClick(nil) except end;
end;
}
{//ToBeConverted
procedure TMyFiles3Form.ScbNameKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    btnStartClick(nil);
  end;
end;
}
procedure TMyFiles3Form.lbContentsDblClick(Sender: TObject);
var
  s : string;
  idx : integer;
begin
  with lbContents do
    if ItemIndex <> -1 then s := Items[ItemIndex] else Exit;
  idx := Pos(': ',s);
  cbProp.Text := Copy(s,1,idx-1);
  cbWert.Text := Copy(s,idx+2,maxInt);
end;

procedure TMyFiles3Form.cbContChange(Sender: TObject);
begin
  {//ToBeConverted
  fbAddE.Enabled := (cbProp.Text <> '') and (cbWert.Text <> '');
  }
end;

procedure TMyFiles3Form.genSizeEditExit(Sender: TObject);
var
  factor : integer;
  Text   : string;
begin
  Text := (Sender as TEdit).Text;
  Text := stringreplace(trim(Text), 'Byte', 'B', [rfReplaceAll, rfIgnoreCase]);
  while Pos('.',Text) > 0 do
    system.Delete(Text,Pos('.',Text),1);
  if Text = '' then Text := '0';
  if upcase(Text[Length(Text)]) = 'B' then Delete(Text,Length(Text),1);
  factor := 1;
  case upcase(Text[Length(Text)]) of
    'K' : factor := 1024;
    'M' : factor := 1024 * 1024;
    'G' : factor := 1024 * 1024 * 1024;
    'T' : begin factor := 1024 * 1024 * 1024; factor := factor * 1024; end;
  end;
  if factor <> 1 then
    Delete(Text,Length(Text),1);
  try
    Text := Format('%.n',[trunc(StrToFloat(trim(Text)) * factor) * 1.0]);
  except
    raise Exception.Create('Ungültige Größenangabe');
    Text := '';
  end;
  (Sender as TEdit).Text := Text;
end;

procedure TMyFiles3Form.chkMinSizeClick(Sender: TObject);
begin
  cbMinSize.Visible := chkMinSize.Checked;
  {//ToBeConverted seMinSize.Visible := chkMinSize.Checked;}
  MaintainSize(nil);
end;

procedure TMyFiles3Form.chkMaxSizeClick(Sender: TObject);
begin
  cbMaxSize.Visible := chkMaxSize.Checked;
  {//ToBeConverted seMaxSize.Visible := chkMaxSize.Checked;}
  MaintainSize(nil);  
end;

procedure TMyFiles3Form.fbSearchResetClick(Sender: TObject);
var
  i : integer;
begin
  ScbName.Text := '';
  if Visible then ScbName.SetFocus;
  { Suchen in }
  lbSearchIn.Clear;
  fbDel.Enabled := False;
  { Eigenschaften }
  cbProp.Text := '';
  cbWert.Text := '';
  lbContents.Clear;
  fbDelE.Enabled := False;
  { Größe }
  chkMinSize.Checked := False;
  cbMinSize.ItemIndex := abs(LvColumns.SizeFactor-1);
  chkMaxSize.Checked := False;
  cbMaxSize.ItemIndex := abs(LvColumns.SizeFactor-1);
  {//ToBeConverted
  seMinSize.Value := 0;
  seMaxSize.Value := 1;
  }
  { Änderungsdatum }
  chkMinDate.Checked := False;
  dtpMinDate.DateTime := Now();
  dtpMinTime.Time := 0;
  chkMaxDate.Checked := False;
  dtpMaxDate.DateTime := Now();
  dtpMaxTime.Time := Now();
  { Attribute }
  cbAA.State := cbGrayed; cbAH.State := cbGrayed;
  cbAR.State := cbGrayed; cbAS.State := cbGrayed;
  cbProp.Items.Assign(FPlugIns.AllProps);
  cbProp.Items.Insert(0,'[alles]');
  cbProp.ItemIndex := 0;

  with TStringList.Create do
  try
    CommaText := ini.ReadString(ini_props, 'Folder', '');
    for i := 0 to Count - 1 do
      cbProp.Items.Add(Strings[i]);
  finally
    Free;
  end;
  with TStringList.Create do
  try
    CommaText := ini.ReadString(ini_props, 'File', '');
    for i := 0 to Count - 1 do
      cbProp.Items.Add(Strings[i]);
  finally
    Free;
  end;

  { Einklappen }
  if pSearchAttribute.Visible then ToggleControl(lblAttribute, pSearchAttribute);
  if pSearchDate.Visible then ToggleControl(lblSearchDate, pSearchDate);
  if pSearchSize.Visible then ToggleControl(lblSize, pSearchSize);
  if pSearchContents.Visible then ToggleControl(lblContents, pSearchContents);
  if pSearchIn.Visible then ToggleControl(lblSearchIn, pSearchIn);
  pnlSearch.Height := pBottom.Top + pBottom.Height + 3;
  pnlSearch.Width := sbSearch.ClientRect.Right - sbSearch.ClientRect.Left - (pnlSearch.Left * 2);
end;

procedure TMyFiles3Form.chkMinDateClick(Sender: TObject);
begin
  dtpMinDate.Visible := chkMinDate.Checked;
  dtpMinTime.Visible := chkMinDate.Checked;
  if not chkMinDate.Checked then
    dtpMaxDate.MinDate := 0;
end;

procedure TMyFiles3Form.chkMaxDateClick(Sender: TObject);
begin
  dtpMaxDate.Visible := chkMaxDate.Checked;
  dtpMaxTime.Visible := chkMaxDate.Checked;
  if not chkMaxDate.Checked then
    dtpMinDate.MaxDate := 0;
end;

procedure TMyFiles3Form.dtpMaxTimeChange(Sender: TObject);
begin
  dtpMaxDate.Time := dtpMaxTime.Time;
end;

procedure TMyFiles3Form.dtpMinTimeChange(Sender: TObject);
begin
  dtpMinDate.Time := dtpMinTime.Time;
end;

procedure TMyFiles3Form.FormShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
  Handled := Assigned(CurSearch);
  if handled then
    if Msg.CharCode = 27 then cursearch.abort else messagebeep(0);
  if not handled then
  begin
    if MainMenu.IsShortCut(Msg) then
    begin
      Msg.Result := 1;
      Handled := True;
    end
    else
      Handled := False;
  end;
end;

procedure TMyFiles3Form.lbSearchInDblClick(Sender: TObject);
begin
  with lbSearchIn do
  begin
    if ItemIndex = -1 then Exit;
    address := Items[ItemIndex];
    updateTV;
  end;
end;

procedure TMyFiles3Form.pnlHFileNameEnter(Sender: TObject);
begin
  ScbName.SetFocus;
end;

procedure TMyFiles3Form.pnlHSearchInEnter(Sender: TObject);
begin
  ToggleControl(lblSearchIn, pSearchIn);
  fbDel.Enabled := lbSearchIn.ItemIndex <> -1;
end;

procedure TMyFiles3Form.lblContentsClick(Sender: TObject);
begin
  ToggleControl(lblContents, pSearchContents)
end;

procedure TMyFiles3Form.dtpMinDateChange(Sender: TObject);
begin
  dtpMaxDate.MinDate := dtpMinDate.DateTime+1;
end;

procedure TMyFiles3Form.dtpMaxDateChange(Sender: TObject);
begin
  dtpMinDate.MaxDate := dtpMaxDate.DateTime-1;
end;

{//ToBeConverted
procedure TMyFiles3Form.MaintainSize(Sender: TObject);
begin
  if chkMaxSize.Checked then
  begin
    seMinSize.MaxValue := trunc(seMaxSize.Value * IntPower(1024,cbMaxSize.ItemIndex - cbMinSize.ItemIndex) ) -1;
    if seMinSize.MaxValue = -1 then chkMinSize.Checked := False else
      if seMinSize.Value > seMinSize.MaxValue then seMinSize.Value := seMinSize.MaxValue;
  end else seMinSize.MaxValue := MaxInt;
  if chkMinSize.Checked then
  begin
    seMaxSize.MinValue := trunc(seMinSize.Value * IntPower(1024,cbMinSize.ItemIndex - cbMaxSize.ItemIndex) ) +1;
    if seMaxSize.Value < seMaxSize.MinValue then seMaxSize.Value := seMaxSize.MinValue;
  end else seMaxSize.MinValue := 0;
end;
}

procedure TMyFiles3Form.sgPropsSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  r : TGridRect;
  MousePos : TPoint;

begin
  CanSelect := ACol = 1;
  if not canselect then
  begin
    r.Left := 1;
    r.Right := 1;
    r.Top := ARow;
    r.Bottom := ARow;
    sgProps.Selection := r;
    GetCursorPos(MousePos);
    pmProps.Popup(MousePos.x, MousePos.y);
  end else
  begin
    if sgProps.Cells[0,ARow] = '' then
      CanSelect := False;
  end;
end;

procedure TMyFiles3Form.sgPropsDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if (ARow = 0) then
  with sgProps,Canvas do
  begin
//    Brush.Color := clBtnFace;
//    FillRect(Rect);
    Font.Color := clWindowText;
    Font.Size := 7;
    Font.Name := 'Arial';
    Canvas.TextRect(Rect, Rect.Left, Rect.Top, Cells[ACol, ARow]);
  end else
  if (ACol = 0) then
  with sgProps,Canvas do
  begin
    Brush.Color := clBtnFace;
    FillRect(Rect);
    Canvas.TextRect(Rect, Rect.Left+2, Rect.Top+2, Cells[ACol, ARow]);
  end else
  with sgProps,Canvas do
  begin
    Brush.Color := clWindow;
    Font.Color := clWindowText;
    FillRect(Rect);
    Canvas.TextRect(Rect, Rect.Left+2, Rect.Top+2, Cells[ACol, ARow]);
  end;
(*  if ACol = 1 then
    with sgProps,Canvas do
      if Cells[0,ARow] = '' then
      begin
        Brush.Color := clInfoBk;
        Font.Color := clInfoText;
        FillRect(Rect);
        Canvas.TextRect(Rect, Rect.Left+2, Rect.Top+2, '<-- klicke hier für neue Eigenschaften');
      end;             *)
end;

procedure TMyFiles3Form.FilePropToggle(clicklabel:TLabel; control:TControl);
var
  h : integer;
begin
  with control do
  begin
    Visible := not Visible;
    if Visible then
    begin
      clicklabel.Font.Style := [fsUnderline,fsBold];
      sbProps.ScrollInView(Control);
    end
    else
      clicklabel.Font.Style := [fsUnderline];
  end;

  h := pnlHProps.Height;
  if sgProps.Visible then Inc(h, sgProps.Height);
  if mNotes.Visible then Inc(h, mNotes.Height);
  Inc(h, pnlPrev.Tag);

  pnlProps.Height := h + 5;

end;

procedure TMyFiles3Form.lblPrevClick(Sender: TObject);
begin
  FilePropToggle(Sender as TLabel, pnlPrev);
end;

procedure TMyFiles3Form.lblNoteClick(Sender: TObject);
begin
  FilePropToggle(Sender as TLabel, mNotes);
end;

procedure TMyFiles3Form.lblPropsClick(Sender: TObject);
begin
  FilePropToggle(Sender as TLabel, sgProps);
end;

procedure TMyFiles3Form.sbPropsResize(Sender: TObject);
begin
  pnlProps.Width := sbProps.ClientWidth - (pnlProps.Left * 2);
  sgProps.Width := pnlProps.Width;
  mNotes.Width := pnlProps.Width;
  sgProps.ColWidths[1] := sgProps.Width - sgProps.ColWidths[0] - 2;
end;

procedure TMyFiles3Form.FillsgProp(it: TMyItem);
var
  s,prop : string;
  tx1,tx2:string;
  i : integer;
  slX, sl : TStringList;

function FindInSL(s:string):Boolean;
var
  i : integer;
begin
  Result := False;
  for i := 0 to sl.Count - 1 do
    if ansilowercase(sl[i]) = ansilowercase(s) then
    begin
      Result := True;
      break;
    end;
end;

begin

  tx1 := it.Note;
  tx2 := it.TextPreview;

  slX := TStringList.Create;
  sl := TStringList.Create;

  try
    PCharToList(PChar(tx1), slX);
    PCharToList(PChar(tx2), slX);
    slX.Sort;
    { Properties "unique" zu slX hinzufügen }
    for i := 0 to slX.Count - 1 do
    begin
      prop := GetLineProp(slX[i]);
      if prop <> '' then
        if not FindInSL(prop) then sl.Add(prop);
    end;

    with TStringList.Create do
    try
      case it.Typ of
        ek_disk : CommaText := ini.ReadString(ini_props, 'Disk', str_diskdefprop);
        ek_folder : CommaText := ini.ReadString(ini_props, 'Folder', '');
        ek_file : CommaText := ini.ReadString(ini_props, 'File', '');
      else
        CommaText := '';
      end;
      for i := 0 to Count - 1 do
        if not FindInSL(Strings[i]) then sl.Add(Strings[i]);
    finally
      Free;
    end;

    if sl.Count < 1 then
    begin
      sgProps.RowCount := 2;
      sgProps.Cells[0,1] := '';
      sgProps.Cells[1,1] := '';
    end
    else
    begin
      sgProps.RowCount := sl.Count + 1;
    end;
    sgProps.FixedRows := 1;
    { tx1 -> hohe Prioität (Notiz)
      tx2 -> niedrige Priorität (Vorschau)
    }
    with sl do
      for i := 0 to Count - 1 do
      begin
        prop := sl[i];
        sgProps.Cells[0,i+1] := prop;
        if Pos(prop+': ',tx1) = 0 then
          s := ExtractProp(tx2,prop)
        else
          s := ExtractProp(tx1,prop);
        sgProps.Cells[1,i+1] := s;
      end;
    with sgProps do
      Height := RowHeights[0] + (RowCount - 1) * (RowHeights[1] + GridLineWidth) +5;
//    sgProps.Options := sgProps.Options - [goAlwaysShowEditor];
  {todo}
//    sgProps.EditorMode := False;

    sgProps.RePaint;

  finally
    slX.Free;
    sl.Free;
  end;
end;

procedure TMyFiles3Form.SetProp(prop, newval : string; isnew: Boolean);
var
  i,h : integer;
  s,newtx : string;
  del : Boolean;

begin
  mNotes.Lines.BeginUpdate;
  try
    mNotes.WordWrap := False;
    newtx := prop+': '+newval;
    del := (not isnew) and (ExtractProp( PLVData(ListView.Selected.Data)^.Item.TextPreview, prop) = newval);
    with mNotes do
    begin
      for i := 0 to Lines.Count - 1 do
      begin
        s := GetLineProp(Lines[i]);
        if (lowercase(s) = lowercase(prop)) then
        begin
          if del then Lines.Delete(i)
          else
            Lines[i] := newtx;
          mNotesExit(sgProps);
          exit;
        end;
      end;
      if del then Exit;
      for i := 0 to Lines.Count - 1 do
      begin
        s := GetLineProp(Lines[i]);
        if (s = '') or (lowercase(s) > lowercase(prop)) then
        begin
          if s = '' then Lines.Insert(i,newtx) else Lines.Insert(i+1,newtx);
          mNotesExit(sgProps);
          exit;
        end;
      end;
      Lines.Add(newtx);
      mNotesExit(sgProps);
    end;
  finally
    mNotes.WordWrap := True;
    mNotes.Lines.EndUpdate;
    h := pnlHProps.Height;
    if sgProps.Visible then Inc(h, sgProps.Height);
    if mNotes.Visible then Inc(h, mNotes.Height);
    Inc(h, pnlPrev.Tag);

    pnlProps.Height := h + 5;
  end;
end;

procedure TMyFiles3Form.sgPropsSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
begin
  SetProp(sgProps.Cells[0,ARow], sgProps.Cells[1,ARow], false);
end;

procedure TMyFiles3Form.sgPropsMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (x < sgProps.ColWidths[0]) and (y > sgProps.RowHeights[0]) then
    sgProps.Cursor := crHandPoint else sgProps.Cursor := crDefault;
end;

procedure TMyFiles3Form.pmPropsPopup(Sender: TObject);
var
  prop, tx : string;
  i : integer;
  sl : TStringList;
begin
  menResetProp.visible := sgProps.Cells[0,1] <> '';

  if menResetProp.Visible then
  begin
    with sgProps do
    begin
      prop := Cells [ 0, Selection.Top ];
      tx := Cells [ 1, Selection.Top ];
    end;
    menResetProp.Enabled :=
      MyItemToStr( PLVData(ListView.Selected.Data)^.Item, cl_pprev+prop , 0 ) <> tx;
  end else
    menResetProp.Enabled := False;
  sl := TStringList.Create;
  try
    with sgProps do
    for i := 1 to RowCount -1 do
      sl.Add( ansilowercase( Cells[0,i] ) );
    sl.Sorted := True;

    for i := 0 to menNew.Count - 1 do
      menNew[i].Enabled := sl.IndexOf( ansilowercase(StripHotKey(menNew[i].Caption)) ) = -1;
  finally
    sl.Free;
  end;
end;

procedure TMyFiles3Form.menResetPropClick(Sender: TObject);
var
  prop : string;
begin
  with sgProps do
  begin
    prop := Cells [ 0, Selection.Top ];
    Cells [ 1, Selection.Top ] :=
      MyItemToStr( PLVData(ListView.Selected.Data)^.Item, cl_pprev+prop , 0 );
    SetProp(prop, '', false);
  end;
end;

procedure TMyFiles3Form.genNewFieldClick(Sender: TObject);
begin
  SetProp(StripHotkey((Sender as TMenuItem).Caption), '', true);
  mNotesExit(mNotes);
//  sgProps.RePaint;
end;

procedure TMyFiles3Form.mNotesChange(Sender: TObject);
{ Farbe des lblNote im Vorschau-Fenster bestimmen (ist eine Vorschau und nicht nur
  Eigenschaften enthalten? }
var
  i,c : integer;
begin
  with mNotes do
  begin
    c := Lines.Count;
    for i := 0 to Lines.Count-1 do
      if Pos(': ',Lines[i]) <> 0 then Dec(c);
  end;
  if c > 0 then
    lblNote.Font.Color := clBlue else lblNote.Font.Color := clGrayText;
end;

procedure TMyFiles3Form.Splitter4CanResize(Sender: TObject;
  var NewSize: Integer; var Accept: Boolean);
var
  tmp : integer;
begin
  tmp := tbAddress.Width - tbtnAddress.Width - tbtnLayout.Width - NewSize - 3;
  if tmp < cbLayout.Constraints.MinWidth then Accept := False else
    cbLayout.Width := tmp;
end;

procedure TMyFiles3Form.pmLayoutPopup(Sender: TObject);
var
  i : integer;
  s : string;

  function newitem(Parent: TMenuItem; Caption:string):TMenuItem;
  begin
    Result := TMenuItem.Create(Parent);
    Result.Caption := StringReplace(Caption,'&','&&',[rfReplaceAll]);
    Result.AutoHotkeys := maManual;
    Parent.Add(Result);
    if (s = str_thelaydisk) then Result.Hint := str_laydisk
      else
    if (s = str_thelaydisks) then Result.Hint := str_laydisks
      else
    if (s = str_thelaylist) then Result.Hint := str_laylist
      else
    if (s = str_thelaysearch) then Result.Hint := str_laysearch
      else
    if (s = str_thelayverbund) then Result.Hint := str_layverbund;
  end;

begin
  menLayoutSave.Caption := Format(str_savelayout,[StringReplace(cbLayout.Text,'&','&&',[rfReplaceAll])]);
  menLayoutSave.Enabled := cbLayout.Text <> '';
  menLaySaveAs.Clear;
  menLayDel.Clear;
  with cbLayout do
    for i := 0 to Items.Count - 1 do
      begin
        s := Items[i];
        with newitem(menLaySaveAs,s) do
        begin
          OnClick := genLaySaveAsClick;
          ImageIndex := 53;
        end;
        with newitem(menLayDel,s) do
        begin
          OnClick := genLayDelClick;
          if (s = str_thelaydisk) or
             (s = str_thelaydisks) or
             (s = str_thelaylist) or
             (s = str_thelaysearch) or
             (s = str_thelayverbund) then
             begin
               ImageIndex := 22;
               Hint := Hint + ' auf Standardlayout setzen';
             end
          else
            ImageIndex := 12;
        end;
      end;
end;

procedure TMyFiles3Form.menLayoutSaveClick(Sender: TObject);
var
  lay : string;
begin
  if ListView.Columns.Count = 0 then
    Exit;
  if cbLayout.Text <> '' then
  begin
    LvColumns.GetOrderAndWidthFromListview(ListView);
    lay := cbLayout.Text;
    ini.WriteString(ini_lays,URLEncodeQuote(lay),URLEncodeQuote(LvColumns.AsString));
    if cbLayout.Items.IndexOf(lay) = -1 then cbLayout.Items.Add(lay);
  end;
end;

procedure TMyFiles3Form.cbLayoutDropDown(Sender: TObject);
begin
  cbLayout.OnChange := cbLayoutChange;
end;

procedure TMyFiles3Form.cbLayoutChange(Sender: TObject);
var
  s : string;
begin
  menLayoutAutoSave.Checked := False;
  cbLayout.OnChange := nil;
  with cbLayout do ItemIndex := Items.IndexOf(Text);
  if cbLayout.ItemIndex <> -1 then
  begin
    with LvColumns do
    begin
      s := URLDecode(ini.ReadString(ini_lays, URLEncodeQuote(cbLayout.text), ''));
      if s <> '' then
      begin
        AsString := s;
      end;
      ReorderAndSizeListview(ListView);
    end;
    menSpalten.Tag := 1;
    UpdateLV;
  end else MessageBeep(0);
end;

procedure TMyFiles3Form.menLayoutSaveForAdrClick(Sender: TObject);
begin
  cbLayout.Text := '»'+location;
  menLayoutSaveClick(nil);
end;

procedure TMyFiles3Form.menLayoutAutoSaveClick(Sender: TObject);
begin
  with menLayoutAutoSave do Checked := not Checked;
  ini.WriteBool(ini_guimain, 'autosavelayout', menLayoutAutoSave.Checked);
end;

procedure TMyFiles3Form.cbLayoutKeyPress(Sender: TObject; var Key: Char);
begin
  cbLayout.OnChange := nil;
  if key = #13 then
  begin
    cbLayoutChange(nil);
    key := #0;
  end;
end;

procedure TMyFiles3Form.fbPropHideClick(Sender: TObject);
begin
  if sbProps.Tag = 0 then
  begin
    sbProps.Tag := pc1.Height;
    pc1.Height := pc1.Height + sbProps.Height - 24;
    fbPropHide.Caption := '+';
  end
  else begin
    pc1.Height := sbProps.Tag;
    sbProps.Tag := 0;
    fbPropHide.Caption := '-';
  end;
end;

procedure TMyFiles3Form.sgPropsKeyPress(Sender: TObject; var Key: Char);
var
  p : TPoint;
begin
  if sgProps.Cells[0,1] = '' then
  begin
    p.x := 10;
    p.y := 20;
    p := sgProps.ClientToScreen(p);
    pmProps.Popup(p.x,p.y);
    key := #0;
  end;
end;

procedure TMyFiles3Form.MultiMediaVorschaulschen1Click(Sender: TObject);
begin
  if Assigned(ListView.Selected) then
  begin
    MyGetItem(PLVData(ListView.Selected.Data)^.Item.ID);
    ShowMessage(dm.tblFilesFilename.Value);
  end;
end;

procedure TMyFiles3Form.mentvRenameDiskClick(Sender: TObject);
begin
  if Assigned(tvDisks.Selected) then
    tvDisks.Selected.EditText;
end;

procedure TMyFiles3Form.menlvRenameDiskClick(Sender: TObject);
begin
  if Assigned(ListView.Selected) then
    ListView.Selected.EditCaption;
end;

procedure TMyFiles3Form.menGoSearchInListClick(Sender: TObject);
var
  lvitem: TListItem;
begin
  lvitem := lvLists.selected;
  if not Assigned(lvitem) then Exit;
  menSearchClick(nil);
  lbSearchIn.Items.CommaText := '"List:' + TMyList(lvItem.Data).ListName + '"';
  ToggleControl(lblSearchIn, pSearchIn);
  ScbName.SetFocus;
end;

procedure TMyFiles3Form.genLayDelClick(Sender: TObject);
var
  s : string;
begin
  s := StripHotkey((Sender as TMenuItem).Caption);
  ini.DeleteKey(ini_lays,URLEncodeQuote(s));
  if (Sender as TMenuItem).ImageIndex = 12 then
    with cbLayout.Items do
      Delete(IndexOf(s));
  dodefaultlayouts;
end;

procedure TMyFiles3Form.genLaySaveAsClick(Sender: TObject);
begin
  cbLayout.Text := StripHotkey((Sender as TMenuItem).Caption);
  menLayoutSaveClick(nil);
end;

procedure TMyFiles3Form.cbLayoutEnter(Sender: TObject);
begin
  if menLayoutAutoSave.Checked then
    menLayoutSaveClick(nil);
end;

procedure TMyFiles3Form.tvDisksCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if not ((cdsFocused in state) or (cdsSelected in state) ) then
    if Assigned(Node.Data) then
      tvDisks.Canvas.Font.Color :=
        GetObjectColor(lvt_ordner,PTVData(Node.Data)^.MediaID,PTVData(Node.Data)^.FolderID,'');
end;

procedure TMyFiles3Form.tvVerbundCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if not ((cdsFocused in state) or (cdsSelected in state) ) then
    if Assigned(Node.Data) then
      tvVerbund.Canvas.Font.Color :=
        GetObjectColor(lvt_verbund,PTVData(Node.Data)^.MediaID,PTVData(Node.Data)^.FolderID,'');
end;

procedure TMyFiles3Form.CreateTempList;
var
  item : TListItem;
  all : Boolean;
begin
  item := lvLists.Items.Add;
  all := ListView.SelCount = 0;
  with item do
  begin
    if all then
      Caption := Format(str_templistans,[location])
    else
      Caption := Format(str_templistmark,[location]);
    SubItems.Add('0');
    Data := TMyList.Create;
    TMyList(Data).Caption := Caption;
    TMyList(Data).Color := clWindowText;
    TMyList(Data).ListName := MakeListName(Caption);
//    lvLists.OnChange := lvListsChange;
  end;
  lvLists.Selected := item;
//  pc1.ActivePage := tsListen;
  if all then
    menListEditClick(menSaveViewToList)
  else
    menListEditClick(menLAdd);
end;

procedure TMyFiles3Form.menQuickExportClick(Sender: TObject);
begin
  if timeout(True) then Exit;
  CreateTempList;
  tbExportClick(menQuickExport);
  tbLDelClick(nil);
end;

procedure TMyFiles3Form.menQuickListClick(Sender: TObject);
begin
  if timeout(True) then Exit;
  CreateTempList;
  menListGenGen(Sender);
  tbLDelClick(nil);
end;

function FileCopy(QuellDateien:TStrings;Zielverz:string):boolean;
var Operation : TSHFileOpStruct;
    i         : integer;
    Quellen   : string;
begin
  CreateDirRecursiv(Zielverz);
  with Operation do begin
    {Parent Window}
    wnd:=Application.Handle;
    {was soll gemacht werden?}
    wFunc:=FO_Copy;

    {Quelldateien nach pFrom kopieren}
    Quellen:='';
    for i:=0 to QuellDateien.Count-1 do
      Quellen:=Quellen+QuellDateien[i]+#0;
    Quellen:=Quellen+#0;
    pFrom:=PChar(Quellen);

    {Zielverzeichnis nach pTo kopieren}
    pTo:=PChar(ZielVerz);
    fFlags := FOF_AllowUndo;
  end;

  {Und los gehts!}
  Result:=SHFileOperation(Operation)=0;
end;

procedure TMyFiles3Form.menLCopyToFolderClick(Sender: TObject);
var
  sl : TStringList;
  TheList : TMyList;
  SortedList : TMyListIdx;
  i,cnt : integer;
  recid : TMyID;
  cur : TMyItem;
  createsub,res : Boolean;
  destination : string;
begin
  {//ToBeConverted
  if not Assigned(lvLists.Selected) then Exit;
  with fdCopyFiles do
    if not Execute then
      exit
    else
      destination := Directory;
  }
  createsub := cbCopyFilesCreateSub.Checked;

  frmCopyDisksUsed := TfrmCopyDisksUsed.Create(Self);
  frmCopyDisksUsed.Top := Top + 20;
  frmCopyDisksUsed.Left := Left + 20;

  TheList := TMyList(lvLists.Selected.Data);
  { Liste prüfen und sortieren }
  CheckList(TheList);
  StartWait(TheList.Count*2,'');
  SortedList := TMyListIdx.Create(TheList, cl_disk+','+cl_pfad, True, StepWait);
  { Kopieren }
  sl := TStringList.Create;
  try
    cnt := SortedList.Count;
    recid.DiskID := 0;
    recid.FolderID := 0;
    for i := 0 to cnt-1 do
    begin
      if i < cnt then
        cur := SortedList[i];
      if (i = cnt) or (recid.DiskID <> cur.ID.DiskID) then
      begin
        frmCopyDisksUsed.lbDisks.Items.Add(MyItemToStr(cur,cl_disk,0));
      end;
      recid := cur.ID;
    end;
    frmCopyDisksUsed.show;    
    recid.DiskID := 0;
    recid.FolderID := 0;
    for i := 0 to cnt do
    begin
      if i < cnt then
        cur := SortedList[i];
      if (i = cnt)
         or
         (recid.DiskID <> cur.ID.DiskID)
         or
         (createsub and (recid.FolderID <> cur.ID.FolderID)) then
      begin
        with frmCopyDisksUsed.lbDisks do
        begin
          ItemIndex := ItemIndex + 1;
          TopIndex := ItemIndex;
        end;
        if sl.Count > 0 then
        begin
          if createsub then
            res := FileCopy(sl, destination + Copy(ExtractFilePath(sl[0]),3,maxInt))
          else
            res := FileCopy(sl,destination);
          if not res then Exit;
          sl.Clear;
        end;
      end;
      MustBeAvailable(cur);
      sl.Add(getfilename(cur,true));
      StepWait(nil);
      recid := cur.ID;
    end;
  finally
    sl.Free;
    SortedList.Free;
    StopWait;
    frmCopyDisksUsed.Free;
  end;
end;

procedure TMyFiles3Form.menQuickCopyClick(Sender: TObject);
begin
  if timeout(True) then Exit;
  CreateTempList;
  menLCopyToFolderClick(menQuickCopy);
  tbLDelClick(nil);
end;

procedure TMyFiles3Form.menColEditorClick(Sender: TObject);
begin
  if FEditorMode then
  begin
    FEditorMode := false;
    menColEditor.Checked := false;
    exit;
  end;
  if Application.MessageBox(PChar(
    'Mit dieser Funktion haben Sie die Möglichkeit einzelne Dateien oder'#13#10+
    'ganze Ordner aus der Sammlung zu entfernen.'#13#10+
    '(die Ordner/Dateien werden nur als Eintrag der Sammlung, jedoch nicht vom'#13#10+
    'entsprechenden Datenträger gelöscht)'#13#10+
    'ACHTUNG: Beim Löschen gibt es keinerlei weitere Sicherheitsabfragen!'#13#10+
    'Alles wirkt sich sofort aus. Sie sollten daher über ein Backup der'#13#10+
    'Sammlung verfügen.'#13#10+
    'Sie können den Editor-Modus jederzeit wieder über dieses Menü deaktivieren'#13#10+
    'Möchten Sie die Sammlung jetzt bearbeiten?'),
    'Sammlung bearbeiten',
    mb_iconwarning or mb_yesnocancel or mb_defbutton2) <> idYes then exit;
  Application.MessageBox(PChar(
    'Sie können jetzt beliebige Dateien oder Ordner in der Dateilistenansicht'#13#10+
    'über das Kontextmenü (Rechtklick) löschen.'#13#10+
    'Denken Sie daran, später den Editor-Modus über dieses Menü zu deaktivieren.'),
    'Editor-Modus aktiviert',
    mb_iconinformation or mb_ok);
  FEditorMode := true;
  menColEditor.Checked := true;
end;

// Elemente (Datei, Ordner) löschen
procedure TMyFiles3Form.menDeleteColItemClick(Sender: TObject);
var
  i : integer;

procedure DeleteFileFromCol(ID:TMyID);
begin
  with dm, tblFiles do
  begin
    IndexName := '';
    SetKey;
    tblFilesDISKID.Value := id.DiskID;
    tblFilesFOLDERID.Value := id.FolderID;
    tblFilesFILEID.Value := id.FileID;
    if GotoKey then
       Delete;
  end;
end;

procedure DeleteFolderFromCol(Item:TMyItem);
var
  s : string;
begin
  with dm, dm.tblFolders do
  begin
    s := 'DISKID = ''' + IntToStr(Item.ID.diskid) + ''' and ';
    s := s + 'Folder = ' + AnsiQuotedStr(MyGetPath(Item.ID) + Item.Name + '\*', '''');
    Filter := s;
    Filtered := True;
    s := '';
    First;
    while not eof do
    begin
      if tblFoldersFOLDERID.AsString <> '' then
        s := s + 'FOLDERID = ''' +
          tblFoldersFOLDERID.AsString + ''' or ';
      Delete;
    end;
    Filtered := False;
  end;
  if s <> '' then
  begin
    Delete(s, Length(S) - 3, 4);
    with dm, dm.tblFiles do
    begin
      filter := s;
      Filtered := True;
      StartWait(RecordCount,'Lösche den kompletten Ordner');
      First;
      while not eof do
      begin
        Delete;
//        Next;
        StepWait(Self);
      end;
      Filtered := False;
    end;
  end;
  DeleteFileFromCol(Item.ID);
end;

procedure DeleteFromCol(Item:TMyItem);
begin
  if Item.Typ = lvt_ordner then
    DeleteFolderFromCol(Item) else
      if Item.Typ = lvt_file then
        DeleteFileFromCol(Item.ID);
end;

begin
  if not FEditorMode then Exit; // sicher ist sicher ;)

  with ListView do
    for i := 0 to Items.Count - 1 do
      if (Items[i].selected) then
        DeleteFromCol(TMyItem(PLVData(Items[i].Data)^.item));
  UpdateTVs;        
  UpdateLV;
end;

procedure TMyFiles3Form.menFAQClick(Sender: TObject);
begin
   OpenDocument(PChar(extractfilepath(Application.ExeName)+'FAQ.htm')); { *Converted from ShellExecute* }
end;

procedure TMyFiles3Form.MaintainSize(Sender: TObject);
begin
  //Dummyfunction
end;

end.

