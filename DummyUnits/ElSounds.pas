unit ElSounds;

interface

type

  TElPlayerMan = class;


  TElPlayers = class (TCollection)
    FManager : TElPlayerMan;
    function GetItems(Index : integer): TElPlayer;
    procedure SetItems(Index : integer; newValue: TElPlayer);
  protected
  public
    constructor Create(Manager : TElPlayerMan);
    function Add: TElPlayer;
    property Items[Index : integer]: TElPlayer read GetItems write SetItems; default;
  end;

  TElPlayerMan = class(TComponent)
  private
    FPlayers: TElPlayers;
    procedure SetPlayers(newValue: TElPlayers);
  protected
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function WhoseType(Extension : string) : TElPlayer;
  published
    property Players: TElPlayers read FPlayers write SetPlayers;
  end;


end.

