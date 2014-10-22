object MyFiles3Form: TMyFiles3Form
  Left = 211
  Top = 143
  HelpContext = 10000
  AutoScroll = False
  Caption = 'MyFindex - keine Sammlung geöffnet'
  ClientHeight = 625
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnPaint = FormPaint
  OnShortCut = FormShortCut
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 250
    Top = 106
    Width = 3
    Height = 500
    Cursor = crHSplit
    ResizeStyle = rsUpdate
  end
  object sbMain: TStatusBar
    Left = 0
    Top = 606
    Width = 809
    Height = 19
    Panels = <
      item
        Width = 85
      end
      item
        Width = 78
      end
      item
        Text = 
          'Copyright © 2000-04 by Alexander Menk aka '#39'self'#39' - Alle Rechte v' +
          'orbehalten.'
        Width = 594
      end>
    SimplePanel = False
  end
  object pbProgress: TProgressBar
    Left = 288
    Top = 611
    Width = 506
    Height = 11
    Cursor = crHourGlass
    Anchors = [akLeft, akRight, akBottom]
    Min = 0
    Max = 100
    TabOrder = 4
    Visible = False
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 106
    Width = 250
    Height = 500
    Align = alLeft
    BevelOuter = bvNone
    BorderWidth = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 2
      Top = 229
      Width = 246
      Height = 2
      Cursor = crVSplit
      Align = alTop
      AutoSnap = False
      Beveled = True
      Constraints.MaxHeight = 2
      Constraints.MinHeight = 2
      ResizeStyle = rsUpdate
      OnCanResize = Splitter2CanResize
    end
    object Splitter3: TSplitter
      Left = 2
      Top = 378
      Width = 246
      Height = 2
      Cursor = crVSplit
      Align = alBottom
      AutoSnap = False
      Beveled = True
      Constraints.MaxHeight = 2
      Constraints.MinHeight = 2
      ResizeStyle = rsUpdate
      OnCanResize = Splitter2CanResize
    end
    object pc1: TPageControl
      Left = 2
      Top = 2
      Width = 246
      Height = 227
      ActivePage = tsVerbund
      Align = alTop
      Constraints.MinHeight = 182
      Constraints.MinWidth = 214
      HotTrack = True
      MultiLine = True
      TabOrder = 0
      OnChange = pc1Change
      object tsVerbund: TTabSheet
        HelpContext = 910
        Caption = '&Verbund'
        ImageIndex = -1
        OnContextPopup = ListViewContextPopup
        OnEnter = tspc1Enter
        object tvVerbund: TTreeView
          Left = 0
          Top = 0
          Width = 238
          Height = 199
          Align = alClient
          ChangeDelay = 250
          Ctl3D = True
          HideSelection = False
          Images = ilMoreImages
          Indent = 19
          ParentCtl3D = False
          PopupMenu = pmTreeView
          ReadOnly = True
          RightClickSelect = True
          ShowRoot = False
          TabOrder = 0
          OnChange = tvVerbundChange
          OnCustomDrawItem = tvVerbundCustomDrawItem
          OnDragOver = genDragOverDeny
          OnEnter = tvVerbundEnter
          OnExpanding = tvVerbundExpanding
        end
      end
      object tsDisks: TTabSheet
        HelpContext = 920
        Caption = 'Daten&träger'
        ImageIndex = -1
        OnEnter = tspc1Enter
        object btnTVDummy: TButton
          Left = 16
          Top = 32
          Width = 113
          Height = 25
          Caption = 'btnTVDummy'
          TabOrder = 1
          OnExit = btnTVDummyExit
        end
        object tvDisks: TTreeView
          Left = 0
          Top = 0
          Width = 238
          Height = 199
          Align = alClient
          ChangeDelay = 250
          HideSelection = False
          Images = ilMoreImages
          Indent = 19
          PopupMenu = pmTreeView
          ShowRoot = False
          TabOrder = 0
          OnChange = tvDisksChange
          OnCustomDrawItem = tvDisksCustomDrawItem
          OnDragOver = genDragOverDeny
          OnEdited = tvDisksEdited
          OnEditing = tvDisksEditing
          OnEnter = tvDisksEnter
          OnExpanding = tvDisksExpanding
        end
      end
      object tsListen: TTabSheet
        Caption = '&Listen'
        ImageIndex = 3
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 238
          Height = 52
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Shape2: TShape
            Left = 0
            Top = 0
            Width = 238
            Height = 27
            Align = alTop
            Pen.Style = psClear
          end
          object Label5: TLabel
            Left = 49
            Top = 2
            Width = 100
            Height = 23
            Caption = 'Dateilisten'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentColor = False
            ParentFont = False
          end
          object Image1: TImage
            Left = 8
            Top = 5
            Width = 32
            Height = 32
            AutoSize = True
            Picture.Data = {
              07544269746D617036080000424D360800000000000036040000280000002000
              000020000000010008000000000000040000220B0000220B0000000100000001
              000031CE310042C639005A0042004242420052BD420042C642004AC6420052C6
              420042CE420052314A006B424A009C524A009C634A0052C64A004ACE4A0052CE
              4A004AD64A006B085200AD525200A56B520052CE520052D6520084395A00635A
              5A00B55A5A005AD65A0084186300C65A63009C736300FF9C6B00943173007373
              73007B737300A59C7300FF9C7300FFA57300CE5A7B00DE737B007B7B7B00F7A5
              7B00FFA57B00AD528400B5528400CE6B84009C7B8400848484008C848400C68C
              8400BD948400DE9C8400EF9C8400FFA58400A5AD8400FFAD8400C6638C008C8C
              8C00948C8C00C68C8C00D68C8C00F7A58C00ADAD8C00FFAD8C00C6529400C673
              9400949494009C949400CE949400F79C9400EFAD9400FFAD9400FFB59400D694
              9C009C9C9C00B59C9C00C69C9C00CE9C9C00D69C9C00EF9C9C00EFAD9C00F7AD
              9C00FFB59C00ADC69C00D673A500B584A500A5A5A500ADA5A500B5A5A500BDA5
              A500CEA5A500D6A5A500DEA5A500EFA5A500F7A5A500EFADA500FFB5A500FFBD
              A500ADC6A500D684AD00E78CAD00ADADAD00D6ADAD00DEADAD00E7ADAD00EFAD
              AD00F7ADAD00FFADAD00EFB5AD00FFBDAD00EF9CB500F7ADB500B5B5B500BDB5
              B500C6B5B500CEB5B500D6B5B500DEB5B500E7B5B500EFB5B500FFB5B500FFBD
              B500FFC6B500E7A5BD00F7B5BD00BDBDBD00C6BDBD00CEBDBD00D6BDBD00DEBD
              BD00E7BDBD00EFBDBD00F7BDBD00FFBDBD00FFC6BD00FFCEBD00C6C6C600D6C6
              C600DEC6C600E7C6C600EFC6C600F7C6C600FFC6C600FFCEC600EFBDCE00CECE
              CE00D6CECE00DECECE00E7CECE00EFCECE00F7CECE00FFCECE00EFD6CE00CEEF
              CE00D6D6D600E7D6D600EFD6D600F7D6D600FFD6D600FFDED600DEDEDE00E7DE
              DE00EFDEDE00F7DEDE00FFDEDE00FFE7DE00E7E7E700EFE7E700F7E7E700FFE7
              E700EFEFEF00F7EFEF00FFEFEF00F7F7F700FFF7F700FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00000000004A4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B42424242424242390000
              0000000081586473748080807475756A5D4E445D75747474747474665A4C4281
              0000008159738A8B948B8B82775E453D332222437A82828B8B8B8B8B82755A42
              81000D64808A948D84785E453D35282822221D256283838C8C8C8C8C8C8B815A
              4200647F8A8D846B5E50453D3D33332828221D1B3F8383838C8C8C9595958B81
              5942738A8B846B5F505045453D33332828221D18297A83838C8C8C959595958B
              744B808A84786B5E505045453D3D332828221D121E6D83838C8C8C8C9595958B
              7459899484776B5E5E5045453D3D3333282322121A6C8C838C8C8C8C8C95958B
              81598A9484776B5E5E505045453D33332828220B11528C8C8C8C8C8C8C8C8C8B
              8165939484776B6B5E5E5045453D3D333328220B023E8C8C8C8C8C8C8C8C8C8B
              8165939584776B6B5E5E505045453D333328270C095392929292929292929A93
              80649B9584776B6B5F5E505045453D3333282713032040486340404040489E88
              64649B9C8C84776B6B5E505045453D3D3333271C172640486348484840489E71
              58659B9C8C84776B6B5E5E5050463B323B313041372D2D37542D2D2D2D379E71
              59739B9C8C8478776B6B5E4E3A2B24367F7D557B7B6E6E6E866E6E6E6E6EA471
              64749A9C8D8484776B2F0A162A61798EA5987B8F867C7C868F7C86867C86A47D
              64809AA19C8C84776B472C57939C9CA2A99E86988F86868F9886868F868FA57D
              64809AA1A29C8D848C9CA2A2A2A2A2A2A986547B635454636E5454545454A47D
              648099A1A7A2A2A2A2A2A2A2A2A2A2A2AC7B376348373740543737373740A487
              647F99A1A6A7A7A7A7A7A7A7A7A2A2A7AC8F547B6E5454637B5454545455A887
              717F99A6A6AAAAAAA7A7A7A7A7A7A2A7AC987B8F867B7B868F7B7B7B7B86A887
              7E7F9FA6A6AAAAAAAAAAAAA7A7A7A7A7ACA498A49E9E9E9E9886868686879990
              887F9FA6A9AAAAAAAAAAAAAAAAA7A7A7AC986E86866E6E86906E554949587299
              927E9FA6A9AAAAAAAAAAAAAAAAA7A7A7AB8F637B6E63637CA09B81675B5891A1
              9A7E9FA6A9AAAAAAAAAAAAAAAAAAA7A7A9631F48372626377F8C764D4A92A7A1
              9A7E9FA5A9AAAAAAAAAAAAAAAAAAAAAAA98F637B6E63636E80765B5887A1A7A1
              997EA5A5A9ACACACACAAAAAAAAAAAAAAA9987C8F867B7C7C74687391A6A7A7A1
              927DA5A8A9ABACACACACACAAAAAAAAAAA8987B86866E6F706774A1A7A7A7A6A0
              887100A8A8A8ABACACACACACACACAAAAA89E8F98988F8F7E8AA6A7A7A7A6A192
              7D00009EABA8A9A9ABA9A9A9A9A9A9A9A8A8A8A8A8A8A5A5A6A9A6A6A6A69987
              51000000A4ABA9A9A9A8A8A8A8A8A5A5A6A6A6A6A6A6A6A6A6A6A5A5A0998751
              000000000000ABA8A5A5A4A4A4A4A4A4A4A4A49FA0A0A0A09F9F9F9999910000
              0000}
            Transparent = True
          end
          object tbLists: TToolBar
            Left = 86
            Top = 28
            Width = 149
            Height = 23
            Align = alNone
            Anchors = [akTop, akRight, akBottom]
            ButtonHeight = 23
            EdgeBorders = []
            Flat = True
            Images = ilMenus
            TabOrder = 0
            object tblNew: TToolButton
              Left = 0
              Top = 0
              Hint = 'Neue (leere) Liste anlegen.'
              Caption = 'Neu...'
              ImageIndex = 11
              MenuItem = menLNew
            end
            object tblColor: TToolButton
              Left = 23
              Top = 0
              Hint = 'Farbe des Liste wählen.'
              Caption = 'Farbe...'
              Enabled = False
              ImageIndex = 51
              MenuItem = menLCol
              OnClick = tblColorClick
            end
            object tbLGen: TToolButton
              Left = 46
              Top = 0
              Hint = 
                'Erstellt neue Listen als Kombination vorhandener Listen'#13#10'oder mi' +
                't allen Doppelt vorhandenen Dateien einer einzelnen'#13#10'Liste|*Gene' +
                'riert Listen'
              Caption = 'tbLGen'
              DropdownMenu = pmGenList
              Enabled = False
              ImageIndex = 8
              OnClick = tbLGenClick
            end
            object tbLView: TToolButton
              Left = 69
              Top = 0
              Hint = 'Listeninhalt anzeigen.'
              Caption = 'Anzeigen'
              Enabled = False
              ImageIndex = 7
              MenuItem = menLView
              OnClick = tbLViewClick
            end
            object tblExp: TToolButton
              Left = 92
              Top = 0
              Hint = 'Liste exportieren.'
              Caption = 'Exportieren...'
              Enabled = False
              ImageIndex = 9
              MenuItem = menLExp
              OnClick = tbExportClick
            end
            object tbLDel: TToolButton
              Left = 115
              Top = 0
              Hint = 'Liste löschen.'
              Caption = 'Löschen'
              Enabled = False
              ImageIndex = 12
              MenuItem = menLRemove
            end
          end
        end
        object lvLists: TListView
          Left = 0
          Top = 52
          Width = 238
          Height = 147
          Align = alClient
          Checkboxes = True
          Columns = <
            item
              Caption = 'Liste'
              Width = 150
            end
            item
              Alignment = taRightJustify
              Caption = 'Dateien'
              Width = 60
            end>
          ColumnClick = False
          HideSelection = False
          RowSelect = True
          ParentShowHint = False
          PopupMenu = pmLists
          ShowHint = False
          SortType = stText
          TabOrder = 1
          ViewStyle = vsReport
          OnChange = lvListsChange
          OnCustomDrawItem = lvListsCustomDrawItem
          OnCustomDrawSubItem = lvListsCustomDrawSubItem
          OnDblClick = lvListsDblClick
          OnEdited = lvListsEdited
          OnDragDrop = lvListsDragDrop
          OnDragOver = lvListsDragOver
        end
      end
      object tsSearch: TTabSheet
        HelpContext = 930
        Caption = '&Suche'
        ImageIndex = 10
        OnEnter = tsSearchEnter
        OnResize = tsSearchResize
        object spToleranz: TSpeedButton
          Left = 157
          Top = 7
          Width = 72
          Height = 17
          AllowAllUp = True
          Anchors = [akTop, akRight]
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 238
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Shape1: TShape
            Left = 0
            Top = 0
            Width = 238
            Height = 27
            Align = alTop
            Pen.Style = psClear
          end
          object lblHSearch: TLabel
            Left = 49
            Top = 2
            Width = 71
            Height = 23
            Caption = 'Suchen'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentColor = False
            ParentFont = False
          end
          object Image2: TImage
            Left = 8
            Top = 5
            Width = 32
            Height = 32
            AutoSize = True
            Picture.Data = {
              07544269746D617036080000424D360800000000000036040000280000002000
              000020000000010008000000000000040000220B0000220B0000000100000001
              000031CE31007342390042C639005A0042006B2142008442420052BD420042C6
              42004AC6420052C6420042CE42008C424A0052C64A004ACE4A0052CE4A004AD6
              4A006B0052006B1852009C42520052CE520052D65200A5425A005AD65A008410
              6300B5426300BD4A6B00D6846B00F7946B00FF946B009C2173007B6B7300946B
              7300F7947300A59C7300EF9C7300FF9C7300FFA57300A5317B00AD4A7B00CE5A
              7B008C7B7B00FFA57B00B5298400AD398400BD398400DE738400D6848400E784
              8400FFA58400A5AD8400FFAD8400BD398C00CE5A8C00D66B8C00D67B8C00C68C
              8C00EF948C00ADAD8C00FFAD8C00C6529400BD6B9400D6739400B58494009494
              9400CE949400E79C9400F7A59400FFAD9400FFB59400C65A9C00D6739C00A594
              9C009C9C9C00B59C9C00CE9C9C00D69C9C00F79C9C00D6AD9C00EFAD9C00FFB5
              9C00CE5AA500D673A500A59CA500A5A5A500ADA5A500B5A5A500C6A5A500CEA5
              A500D6A5A500DEA5A500EFADA500FFB5A500FFBDA500ADC6A500DE7BAD00E78C
              AD00B5ADAD00BDADAD00C6ADAD00CEADAD00D6ADAD00DEADAD00E7ADAD00EFB5
              AD00F7B5AD00FFBDAD00FFC6AD00DE84B500EF9CB500F7A5B500C6B5B500CEB5
              B500D6B5B500DEB5B500E7B5B500EFB5B500FFB5B500EFBDB500FFBDB500FFC6
              B500E794BD00EFA5BD00F7ADBD00FFB5BD00C6BDBD00CEBDBD00D6BDBD00DEBD
              BD00E7BDBD00EFBDBD00F7BDBD00FFBDBD00FFC6BD00F7B5C600FFB5C600CEC6
              C600D6C6C600DEC6C600E7C6C600EFC6C600F7C6C600FFC6C600F7CEC600FFCE
              C600EFBDCE00F7C6CE00FFC6CE00CECECE00D6CECE00DECECE00E7CECE00EFCE
              CE00F7CECE00FFCECE00F7D6CE00FFD6CE00CEEFCE00F7CED600D6D6D600DED6
              D600E7D6D600EFD6D600F7D6D600FFD6D600DEDEDE00EFDEDE00F7DEDE00FFDE
              DE00E7E7E700EFE7E700F7E7E700FFE7E700EFEFEF00F7EFEF00FFEFEF00F7F7
              F700FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00000000004A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A404040404040370000
              000000005857647172808080727272675A4E4E667373727272727266594B4040
              0000005858718B8C98988C8C765C4F3A3029234C8283828C8C8C8C8C82735940
              40000064808C988F8484695B443A302929231B2D6C83838D8D998D8D8D8C8159
              4000647F8C8D77695C5C4F433A30302929231B275F83838D8D99999999998C81
              5840718B8C8477695B4F44433A30302929231B194683838D8D8D8D999999998C
              724A808B8C77695C5B4F43433A3A302929231B183B7B8D8D8D8D8D999999998C
              72588A978D84695C5B4F43433A3A303029291B152B7A8D8D8D8D8D999999998C
              81588A988D7769695B4F4F43433A3030292920121D6C8D8D8D8D999999999998
              81658A988D8469695B5B4F43433A3A303029220B175E99999999999999A39998
              816596988F8476695B5B4F4F433A3A303029220510509999999999A3A3A3A398
              8165969A8F847669695B4F4F43433A303029220103338C9999A3A3A3A3A3A398
              8B6596A28F847769695B5B4F4F433A3A30301A04102A859999A3A3A3A3A3A398
              8B6596A29984777669695C4F4F42382F2E4D1F11255192999999A3A3A3A3A398
              8B7196A2998D84766968413635342C3B3C47481E3E718C99999999A3A3A3A3A2
              8B7196A1A38F8477683D262B456B78858B6252482856808C99999999A3A3A3A2
              8B71A0A5A69B8D8476799091A3A3A3A3A3A362543F28708098999999A3A3A3A2
              8B71A0A5AAA7999BA3A7A7A7A7A7A3A3A3A39862543F628A8B989899A3A3A3A2
              977FA0A5AAABA7A7A7A7A7A7A7A7A7A7A7A3A3976F878789898989898A8B9898
              9880A0A6AAABABABABA7A7A7A7A7A7A7A7A7A7A3A2A1938793949493876E7F8B
              978AA0AAAAAEABABABABABA7A7A7A7A7A7A7A7A7A797879EA4A4A4A49E935563
              8A8AA0AAAAAEAEABABABABABABABA7A7A7A7A7A7A6949EA4A4A4A4A4A4A47C49
              708AA5AAADAEAEAEAEABABABABABABABA7A7A7A7A193A4A4A4A8A49FA4A49354
              627FA5AAADAEAEAEAEAEAEABABABABABABABABA7A093A4A4ACAFA8A4A4A49454
              567EA5AAADAEAEAEAEAEAEAEAEABABABABABABABA193A4A8ACACACACA8A49355
              627EA5A9ADAEAEAEAEAEAEAEAEAEAEABABABABABA594A4ACACA8ACAFA8A48761
              7E7EA9A9ADB0B0B0B0AEAEAEAEAEAEAEAEABABABABA09EA8A8ACAFACA89E7C88
              967EA9ACADAFB0B0B0B0B0AEAEAEAEAEAEAEAEAEABAA9F9EA4A8A8A89E8789A1
              967E00ADADADAFB0B0B0B0B0B0B0AEAEAEAEAEAEAEAEAAA59F9E94949FA5A6A0
              880000AEAFADADADAFADADADADADADADADADADAEAEAEAEADAAA9A9AAAAAAA189
              87000000AEAFADADADACACACACACA9A9AAAAAAAAAAAAAAAAAAAAAAA9A5A09587
              000000000000AFACA9A9A8A8A8A8A8A8A8A8A8A5A5A5A5A5A5A5A5A0A0950000
              0000}
            Transparent = True
          end
        end
        object sbSearch: TScrollBox
          Left = 0
          Top = 41
          Width = 238
          Height = 158
          HorzScrollBar.Smooth = True
          HorzScrollBar.Tracking = True
          VertScrollBar.Smooth = True
          VertScrollBar.Tracking = True
          Align = alClient
          Color = clWindow
          ParentColor = False
          TabOrder = 1
          object pnlSearch: TPanel
            Left = 5
            Top = 5
            Width = 202
            Height = 735
            BevelOuter = bvNone
            Caption = 'pnlSearch'
            Color = clWindow
            TabOrder = 0
            object pSearchSize: TPanel
              Left = 0
              Top = 373
              Width = 202
              Height = 63
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              Visible = False
              object chkMinSize: TCheckBox
                Left = 8
                Top = 16
                Width = 57
                Height = 17
                Hint = 'Mindestgröße festlegen.'
                Caption = '&minimal'
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 0
                OnClick = chkMinSizeClick
              end
              object cbMinSize: TComboBox
                Left = 152
                Top = 8
                Width = 40
                Height = 21
                Hint = 'Einheit der Größenangabe.'
                Style = csDropDownList
                Anchors = [akTop, akRight]
                Ctl3D = True
                ItemHeight = 13
                ParentCtl3D = False
                TabOrder = 2
                Visible = False
                OnChange = MaintainSize
                Items.Strings = (
                  'B'
                  'KB'
                  'MB'
                  'GB')
              end
              object cbMaxSize: TComboBox
                Left = 152
                Top = 32
                Width = 40
                Height = 21
                Hint = 'Einheit der Größenangabe.'
                Style = csDropDownList
                Anchors = [akTop, akRight]
                Ctl3D = True
                ItemHeight = 13
                ParentCtl3D = False
                TabOrder = 5
                Visible = False
                OnChange = MaintainSize
                Items.Strings = (
                  'B'
                  'KB'
                  'MB'
                  'GB')
              end
              object seMinSize: TJvSpinEdit
                Left = 80
                Top = 8
                Width = 73
                Height = 21
                Hint = 'Größenangabe.'
                Alignment = taRightJustify
                MaxValue = 2147483647
                Ctl3D = True
                Anchors = [akLeft, akTop, akRight]
                ParentCtl3D = False
                TabOrder = 1
                Visible = False
                OnChange = MaintainSize
              end
              object chkMaxSize: TCheckBox
                Left = 8
                Top = 40
                Width = 57
                Height = 17
                Hint = 'Maximalgröße festlegen.'
                Caption = 'ma&ximal'
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 3
                OnClick = chkMaxSizeClick
              end
              object seMaxSize: TJvSpinEdit
                Left = 80
                Top = 32
                Width = 73
                Height = 21
                Hint = 'Größenangabe.'
                Alignment = taRightJustify
                MaxValue = 2147483647
                Ctl3D = True
                Anchors = [akLeft, akTop, akRight]
                ParentCtl3D = False
                TabOrder = 4
                Visible = False
                OnChange = MaintainSize
              end
            end
            object pHSize: TPanel
              Left = 0
              Top = 356
              Width = 202
              Height = 17
              Align = alTop
              BevelOuter = bvNone
              Color = clWindow
              TabOrder = 1
              OnEnter = lblSizeClick
              object lblSize: TLabel
                Left = 8
                Top = 3
                Width = 38
                Height = 13
                Cursor = crHandPoint
                Hint = 'öffnet ==> Eingrenzung nach Dateigröße.'
                Caption = '&Größe »'
                FocusControl = pHSize
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = lblSizeClick
              end
            end
            object pSearchDate: TPanel
              Left = 0
              Top = 453
              Width = 202
              Height = 104
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              Visible = False
              object chkMinDate: TCheckBox
                Left = 8
                Top = 6
                Width = 153
                Height = 17
                Hint = 'Minmaldatum festlegen.'
                Caption = '&kleinstes (ältestes) Datum'
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 0
                OnClick = chkMinDateClick
              end
              object dtpMinDate: TDateTimePicker
                Left = 8
                Top = 24
                Width = 81
                Height = 21
                Hint = 'Datum.'
                CalAlignment = dtaLeft
                Date = 37167.6910709375
                Time = 37167.6910709375
                DateFormat = dfShort
                DateMode = dmComboBox
                Kind = dtkDate
                ParseInput = False
                TabOrder = 1
                Visible = False
                OnChange = dtpMinDateChange
              end
              object dtpMaxDate: TDateTimePicker
                Left = 8
                Top = 72
                Width = 81
                Height = 21
                Hint = 'Datum.'
                CalAlignment = dtaLeft
                Date = 37167.6910709375
                Time = 37167.6910709375
                DateFormat = dfShort
                DateMode = dmComboBox
                Kind = dtkDate
                ParseInput = False
                TabOrder = 5
                Visible = False
                OnChange = dtpMaxDateChange
              end
              object chkMaxDate: TCheckBox
                Left = 8
                Top = 54
                Width = 153
                Height = 17
                Hint = 'Maximaldatum festlegen.'
                Caption = '&größtes (jüngstes) Datum'
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 3
                OnClick = chkMaxDateClick
              end
              object dtpMinTime: TDateTimePicker
                Left = 96
                Top = 24
                Width = 73
                Height = 21
                Hint = 'Uhrzeit.'
                CalAlignment = dtaLeft
                Date = 37167
                Time = 37167
                DateFormat = dfShort
                DateMode = dmComboBox
                Kind = dtkTime
                ParseInput = False
                TabOrder = 2
                Visible = False
                OnChange = dtpMinTimeChange
              end
              object dtpMaxTime: TDateTimePicker
                Left = 96
                Top = 72
                Width = 73
                Height = 21
                Hint = 'Uhrzeit.'
                CalAlignment = dtaLeft
                Date = 37167
                Time = 37167
                DateFormat = dfShort
                DateMode = dmComboBox
                Kind = dtkTime
                ParseInput = False
                TabOrder = 4
                Visible = False
                OnChange = dtpMaxTimeChange
              end
            end
            object pHSearchDate: TPanel
              Left = 0
              Top = 436
              Width = 202
              Height = 17
              Align = alTop
              BevelOuter = bvNone
              Color = clWindow
              TabOrder = 3
              OnEnter = lblSearchDateClick
              object lblSearchDate: TLabel
                Left = 8
                Top = 3
                Width = 89
                Height = 13
                Cursor = crHandPoint
                Hint = 'öffnet ==> Eingrenzung nach Änderungsdatum.'
                Caption = 'Ä&nderungsdatum »'
                FocusControl = pHSearchDate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = lblSearchDateClick
              end
            end
            object pSearchIn: TPanel
              Left = 0
              Top = 71
              Width = 202
              Height = 104
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
              Visible = False
              object lbSearchIn: TListBox
                Left = 8
                Top = 29
                Width = 69
                Height = 66
                Anchors = [akLeft, akTop, akRight]
                Ctl3D = True
                ItemHeight = 13
                ParentCtl3D = False
                TabOrder = 2
                OnClick = lbSearchInClick
                OnDblClick = lbSearchInDblClick
              end
              object fbAdd: TSpeedButton
                Left = 8
                Top = 7
                Width = 38
                Height = 20
                Hint = 'Einschränkung des Suchbereichs hinzufügen.'
                OnClick = fbAddClick
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  33333333FF33333333FF333993333333300033377F3333333777333993333333
                  300033F77FFF3333377739999993333333333777777F3333333F399999933333
                  33003777777333333377333993333333330033377F3333333377333993333333
                  3333333773333333333F333333333333330033333333F33333773333333C3333
                  330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
                  993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
                  333333333337733333FF3333333C333330003333333733333777333333333333
                  3000333333333333377733333333333333333333333333333333}
                NumGlyphs = 2
              end
              object fbDel: TSpeedButton
                Left = 49
                Top = 7
                Width = 38
                Height = 20
                Hint = 'Einschränkung löschen.'
                OnClick = fbDelClick
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  333333333333333333FF33333333333330003333333333333777333333333333
                  300033FFFFFF3333377739999993333333333777777F3333333F399999933333
                  3300377777733333337733333333333333003333333333333377333333333333
                  3333333333333333333F333333333333330033333F33333333773333C3333333
                  330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
                  993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
                  333333377F33333333FF3333C333333330003333733333333777333333333333
                  3000333333333333377733333333333333333333333333333333}
                NumGlyphs = 2
              end
            end
            object pnlHSearchIn: TPanel
              Left = 0
              Top = 54
              Width = 202
              Height = 17
              Align = alTop
              BevelOuter = bvNone
              Color = clWindow
              TabOrder = 6
              OnEnter = pnlHSearchInEnter
              object lblSearchIn: TLabel
                Left = 8
                Top = 3
                Width = 57
                Height = 13
                Cursor = crHandPoint
                Hint = 'öffnet ==> Einschränkung des Suchbereichs.'
                Caption = 'S&uchen in »'
                FocusControl = pnlHSearchIn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = pnlHSearchInEnter
              end
            end
            object Panel6: TPanel
              Left = 0
              Top = 17
              Width = 202
              Height = 37
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 7
              object ScbName: TEdit
                Left = 8
                Top = 7
                Width = 185
                Height = 21
                Hint = 'Suchtext: Alt+Nach unten öffnet den Suchtexteditor.'
                Ctl3D = True
                Anchors = [akLeft, akTop, akRight]
                ParentCtl3D = False
                TabOrder = 0
              end
            end
            object pnlHFileName: TPanel
              Left = 0
              Top = 0
              Width = 202
              Height = 17
              Align = alTop
              BevelOuter = bvNone
              Color = clActiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnEnter = pnlHFileNameEnter
              object lblName: TLabel
                Left = 8
                Top = 3
                Width = 51
                Height = 13
                Caption = '&Dateiname'
                FocusControl = pnlHFileName
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clCaptionText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
            end
            object pnlHNote: TPanel
              Left = 0
              Top = 175
              Width = 202
              Height = 17
              Align = alTop
              BevelOuter = bvNone
              Color = clWindow
              TabOrder = 8
              OnEnter = lblContentsClick
              object lblContents: TLabel
                Left = 8
                Top = 3
                Width = 119
                Height = 13
                Cursor = crHandPoint
                Hint = 
                  'öffnet ==> Suche nach Dateieigenschaften (in Vorschau oder Notiz' +
                  ')'
                Caption = '&Inhalt (Vorschau, Notiz) »'
                FocusControl = pnlHNote
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = lblContentsClick
              end
            end
            object pSearchContents: TPanel
              Left = 0
              Top = 192
              Width = 202
              Height = 164
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 9
              Visible = False
              object Label6: TLabel
                Left = 9
                Top = 47
                Width = 67
                Height = 13
                Caption = 'Suchen nach:'
              end
              object Label1: TLabel
                Left = 9
                Top = 7
                Width = 59
                Height = 13
                Caption = 'Eigenschaft:'
              end
              object cbProp: TComboBox
                Left = 8
                Top = 24
                Width = 184
                Height = 21
                Hint = 
                  'Durchsuchte Eigenschaft oder "alles" für komplette Notiz / Vorsc' +
                  'hau.'
                Anchors = [akLeft, akTop, akRight]
                ItemHeight = 13
                TabOrder = 0
                OnChange = cbContChange
                Items.Strings = (
                  '[alles]'
                  'Titel'
                  'Interpret')
              end
              object cbWert: TEdit
                Left = 8
                Top = 63
                Width = 185
                Height = 21
                Hint = 'Suchtext: Alt+Nach unten öffnet den Suchtexteditor.'
                Ctl3D = True
                Anchors = [akLeft, akTop, akRight]
                ParentCtl3D = False
                TabOrder = 1
              end
              object fbAddE: TSpeedButton
                Left = 8
                Top = 90
                Width = 33
                Height = 20
                Hint = 'Bedingung hinzufügen.'
                Enabled = False
                OnClick = fbAddEClick
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  33333333FF33333333FF333993333333300033377F3333333777333993333333
                  300033F77FFF3333377739999993333333333777777F3333333F399999933333
                  33003777777333333377333993333333330033377F3333333377333993333333
                  3333333773333333333F333333333333330033333333F33333773333333C3333
                  330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
                  993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
                  333333333337733333FF3333333C333330003333333733333777333333333333
                  3000333333333333377733333333333333333333333333333333}
                NumGlyphs = 2
              end
              object fbDelE: TSpeedButton
                Left = 43
                Top = 90
                Width = 33
                Height = 20
                Hint = 'Bedingung löschen.'
                Enabled = False
                OnClick = fbDelEClick
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  333333333333333333FF33333333333330003333333333333777333333333333
                  300033FFFFFF3333377739999993333333333777777F3333333F399999933333
                  3300377777733333337733333333333333003333333333333377333333333333
                  3333333333333333333F333333333333330033333F33333333773333C3333333
                  330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
                  993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
                  333333377F33333333FF3333C333333330003333733333333777333333333333
                  3000333333333333377733333333333333333333333333333333}
                NumGlyphs = 2
              end
              object lbContents: TListBox
                Left = 8
                Top = 112
                Width = 185
                Height = 44
                Anchors = [akLeft, akTop, akRight]
                Ctl3D = True
                ItemHeight = 13
                ParentCtl3D = False
                TabOrder = 4
                OnClick = lbContentsClick
                OnDblClick = lbContentsDblClick
              end
            end
            object pHAttribute: TPanel
              Left = 0
              Top = 557
              Width = 202
              Height = 17
              Align = alTop
              BevelOuter = bvNone
              Color = clWindow
              TabOrder = 10
              OnEnter = lblAttributeClick
              object lblAttribute: TLabel
                Left = 8
                Top = 3
                Width = 48
                Height = 13
                Cursor = crHandPoint
                Hint = 'öffnet ==> Festlegung der Attribute.'
                Caption = '&Attribute »'
                FocusControl = pHAttribute
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = lblAttributeClick
              end
            end
            object pSearchAttribute: TPanel
              Left = 0
              Top = 574
              Width = 202
              Height = 79
              Align = alTop
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 11
              Visible = False
              object cbAA: TCheckBox
                Left = 8
                Top = 8
                Width = 97
                Height = 17
                Hint = 
                  'Dateiattribut festlegen'#13#10'Haken = Findet Dateien, mit dem Attribu' +
                  't'#13#10'Leer = Findet Dateien, ohne das Attribut'#13#10'Grau+Haken = Findet' +
                  ' Dateien, sowohl mit als auch ohne dem Attribut'
                AllowGrayed = True
                Caption = 'archi&vieren'
                State = cbGrayed
                TabOrder = 0
              end
              object cbAH: TCheckBox
                Left = 8
                Top = 24
                Width = 97
                Height = 17
                Hint = 
                  'Dateiattribut festlegen'#13#10'Haken = Findet Dateien, mit dem Attribu' +
                  't'#13#10'Leer = Findet Dateien, ohne das Attribut'#13#10'Grau+Haken = Findet' +
                  ' Dateien, sowohl mit als auch ohne dem Attribut'
                AllowGrayed = True
                Caption = '&versteckt'
                State = cbGrayed
                TabOrder = 1
              end
              object cbAR: TCheckBox
                Left = 8
                Top = 40
                Width = 97
                Height = 17
                Hint = 
                  'Dateiattribut festlegen'#13#10'Haken = Findet Dateien, mit dem Attribu' +
                  't'#13#10'Leer = Findet Dateien, ohne das Attribut'#13#10'Grau+Haken = Findet' +
                  ' Dateien, sowohl mit als auch ohne dem Attribut'
                AllowGrayed = True
                Caption = '&nur lesen'
                State = cbGrayed
                TabOrder = 2
              end
              object cbAS: TCheckBox
                Left = 8
                Top = 56
                Width = 97
                Height = 17
                Hint = 
                  'Dateiattribut festlegen'#13#10'Haken = Findet Dateien, mit dem Attribu' +
                  't'#13#10'Leer = Findet Dateien, ohne das Attribut'#13#10'Grau+Haken = Findet' +
                  ' Dateien, sowohl mit als auch ohne dem Attribut'
                AllowGrayed = True
                Caption = '&system'
                State = cbGrayed
                TabOrder = 3
              end
            end
            object pBottom: TPanel
              Left = 0
              Top = 653
              Width = 202
              Height = 73
              Align = alTop
              BevelOuter = bvNone
              Color = clWindow
              TabOrder = 12
              object bvBottom: TBevel
                Left = 0
                Top = 0
                Width = 202
                Height = 9
                Align = alTop
                Shape = bsBottomLine
              end
              object btnStart: TSpeedButton
                Left = 30
                Top = 15
                Width = 123
                Height = 26
                Hint = 
                  'Suche starten. Die Suche kann mit der Taste [ESC] jederzeit abge' +
                  'brochen werden.'
                Anchors = [akTop]
                Caption = 'Su&che starten'
                OnClick = btnStartClick
                Glyph.Data = {
                  DE010000424DDE01000000000000760000002800000024000000120000000100
                  0400000000006801000000000000000000001000000000000000000000000000
                  8000008000000080800080000000800080008080000080808000C0C0C0000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                  488888888888888888887788000088888FFFFFF84488FF888887777788777777
                  00008844788888744788888877888888777788880000888478FFF74478FFFF88
                  8788778777787777000088847788844888888888878888877788888800008884
                  478F4448FFFFFF88877888777877777700008884444444788888888887777777
                  888888880000888844444478FFFFFF8888777777887777770000888888744788
                  884888888888877888887888000088877784478FF848FF888888877888877877
                  00008744447444887478888877778777887788880000848874444444448FFF87
                  8877777777778777000088888744444488888888888877777788888800008888
                  888744778FFFFF88888888778887777700008888888447888888888888888778
                  88888888000088888884478FFFFFFF8888888778877777770000888888844888
                  8888888888888778888888880000888888888888888888888888888888888888
                  0000}
                NumGlyphs = 2
              end
              object fbSearchReset: TSpeedButton
                Left = 29
                Top = 44
                Width = 124
                Height = 26
                Hint = 'Alle Eingaben löschen. (Vorsicht!)'
                Anchors = [akTop]
                Caption = 'neue Suche'
                OnClick = fbSearchResetClick
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
                  555557777F777555F55500000000555055557777777755F75555005500055055
                  555577F5777F57555555005550055555555577FF577F5FF55555500550050055
                  5555577FF77577FF555555005050110555555577F757777FF555555505099910
                  555555FF75777777FF555005550999910555577F5F77777775F5500505509990
                  3055577F75F77777575F55005055090B030555775755777575755555555550B0
                  B03055555F555757575755550555550B0B335555755555757555555555555550
                  BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
                  50BB555555555555575F555555555555550B5555555555555575}
                NumGlyphs = 2
              end
            end
          end
        end
      end
    end
    object pcStatus: TPageControl
      Left = 2
      Top = 380
      Width = 246
      Height = 118
      HelpContext = 970
      ActivePage = tsDriveState
      Align = alBottom
      Constraints.MinHeight = 50
      Constraints.MinWidth = 156
      HotTrack = True
      Images = ilMenus
      MultiLine = True
      TabOrder = 2
      TabPosition = tpLeft
      object tsDriveState: TTabSheet
        Caption = 'Status'
        ImageIndex = -1
        object lvDriveState: TListView
          Left = 0
          Top = 0
          Width = 219
          Height = 88
          Hint = '*Überblick über den Status der überwachten Laufwerke.'
          HelpContext = 971
          Align = alClient
          Columns = <
            item
              Width = 40
            end
            item
              Width = 100
            end>
          ColumnClick = False
          ReadOnly = True
          PopupMenu = pmDriveState
          SmallImages = ilMoreImages
          TabOrder = 0
          ViewStyle = vsReport
          OnCustomDrawItem = lvDriveStateCustomDrawItem
          OnDblClick = lvDriveStateDblClick
          OnDragOver = genDragOverDeny
        end
        object pnlManUpdate: TPanel
          Left = 0
          Top = 88
          Width = 219
          Height = 20
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          Visible = False
          object spUpdateDrv: TSpeedButton
            Left = 2
            Top = 2
            Width = 216
            Height = 17
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Laufwerksstatus abfragen'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            OnClick = tmrDrivestateTimer
          end
        end
      end
    end
    object sbProps: TScrollBox
      Left = 2
      Top = 231
      Width = 246
      Height = 147
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      Align = alClient
      Color = clWindow
      ParentColor = False
      TabOrder = 1
      OnResize = sbPropsResize
      object lblPrevNoSelection: TLabel
        Left = 8
        Top = 17
        Width = 225
        Height = 42
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 
          'Wähle rechts eine Datei, einen Ordner'#13#10'oder Datenträger und die ' +
          'Vorschau, Notiz'#13#10'sowie Informationsfelder erscheinen hier.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object pnlProps: TPanel
        Left = 6
        Top = 3
        Width = 229
        Height = 183
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 0
        Visible = False
        object pnlHProps: TPanel
          Left = 0
          Top = 0
          Width = 229
          Height = 17
          Align = alTop
          BevelOuter = bvNone
          Color = clWindow
          TabOrder = 0
          object lblProps: TLabel
            Left = 7
            Top = 2
            Width = 90
            Height = 13
            Cursor = crHandPoint
            Alignment = taCenter
            AutoSize = False
            Caption = '&Eigenschaften'
            FocusControl = sgProps
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
            OnClick = lblPropsClick
          end
          object lblNote: TLabel
            Left = 96
            Top = 2
            Width = 38
            Height = 13
            Cursor = crHandPoint
            Alignment = taCenter
            AutoSize = False
            Caption = 'Notiz'
            FocusControl = pnlHProps
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
            OnClick = lblNoteClick
          end
          object lblPrev: TLabel
            Left = 133
            Top = 2
            Width = 65
            Height = 13
            Cursor = crHandPoint
            Alignment = taCenter
            AutoSize = False
            Caption = 'Vorschau'
            FocusControl = pnlHProps
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
            OnClick = lblPrevClick
          end
          object Label9: TLabel
            Left = 160
            Top = 123
            Width = 36
            Height = 13
            Cursor = crHandPoint
            Hint = 'öffnet ==> Einschränkung des Suchbereichs.'
            Caption = 'Befehle'
            FocusControl = pnlHProps
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
        end
        object sgProps: TStringGrid
          Left = 0
          Top = 17
          Width = 229
          Height = 37
          Align = alTop
          BorderStyle = bsNone
          ColCount = 2
          Ctl3D = True
          DefaultRowHeight = 16
          FixedCols = 0
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goColSizing, goEditing, goAlwaysShowEditor]
          ParentCtl3D = False
          PopupMenu = pmProps
          TabOrder = 1
          OnDrawCell = sgPropsDrawCell
          OnKeyPress = sgPropsKeyPress
          OnMouseMove = sgPropsMouseMove
          OnSelectCell = sgPropsSelectCell
          OnSetEditText = sgPropsSetEditText
          ColWidths = (
            77
            147)
        end
        object mNotes: TMemo
          Tag = -1
          Left = 0
          Top = 54
          Width = 229
          Height = 58
          Hint = '*Notizen zu Datenträgern, (Verbund-)Ordnern oder Dateien.'
          HelpContext = 972
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = pmNote
          TabOrder = 2
          OnExit = mNotesExit
          OnKeyPress = mNotesKeyPress
        end
        object pnlPrev: TPanel
          Left = 0
          Top = 112
          Width = 229
          Height = 71
          Align = alClient
          BevelOuter = bvNone
          Color = clWindow
          TabOrder = 3
          object imgPImages: TImage
            Left = 0
            Top = 0
            Width = 229
            Height = 71
            Align = alClient
            Center = True
            Picture.Data = {07544269746D617000000000}
            Visible = False
          end
          object lblNoPrev: TLabel
            Left = 0
            Top = 0
            Width = 229
            Height = 71
            Align = alClient
            Alignment = taCenter
            Caption = 'keine Vorschau'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object pnlPAudio: TPanel
            Left = 0
            Top = 0
            Width = 229
            Height = 71
            HelpContext = 974
            Align = alClient
            BevelOuter = bvNone
            Color = clWindow
            TabOrder = 0
            Visible = False
            object sbPlayMPEG: TSpeedButton
              Left = 8
              Top = 3
              Width = 22
              Height = 17
              AllowAllUp = True
              GroupIndex = 1
              Down = True
              Enabled = False
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
                6666666666666666666666660000666666666666666666666666666666666666
                0000666666666666666666666666666666666666000066666FFF666666666666
                666FFF666666666600006666844FFF666666666666888FFF6666666600006666
                84444FFF666666666688888FFF666666000066668444444FFF66666666888888
                8FFF666600006666844444444FFF666666888888888FFF660000666684444444
                444F66666688888888888F660000666684444444444666666688888888888666
                0000666684444444486666666688888888886666000066668444444866666666
                6688888888666666000066668444486666666666668888886666666600006666
                8448666666666666668888666666666600006666886666666666666666886666
                6666666600006666666666666666666666666666666666660000666666666666
                6666666666666666666666660000666666666666666666666666666666666666
                0000}
              Layout = blGlyphBottom
              NumGlyphs = 2
              OnClick = sbPlayMPEGClick
            end
            object cbAutoPlay: TCheckBox
              Left = 37
              Top = 4
              Width = 99
              Height = 16
              Caption = 'autom. abspielen'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object lvPZip: TListView
            Left = 0
            Top = 0
            Width = 229
            Height = 71
            HelpContext = 975
            Align = alClient
            Columns = <
              item
                Caption = 'Dateiname'
                Width = 90
              end
              item
                Alignment = taRightJustify
                Caption = 'Größe'
                Width = 66
              end
              item
                Caption = 'Pfad'
              end>
            ColumnClick = False
            TabOrder = 1
            ViewStyle = vsReport
            Visible = False
            OnDragOver = genDragOverDeny
          end
        end
      end
      object fbPropHide: TSpeedButton
        Left = 2
        Top = 1
        Width = 12
        Height = 14
        Hint = 'Eigenschaftsfenster mini- bzw. maximieren'
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = fbPropHideClick
      end
    end
  end
  object aniFind: TAnimate
    Left = 408
    Top = 185
    Width = 80
    Height = 50
    Active = False
    Color = clWhite
    CommonAVI = aviFindFolder
    ParentColor = False
    StopFrame = 29
    Visible = False
  end
  object ControlBar: TControlBar
    Left = 0
    Top = 0
    Width = 809
    Height = 106
    Align = alTop
    AutoSize = True
    BevelEdges = []
    Color = clBtnFace
    ParentColor = False
    Picture.Data = {
      07544269746D617036900000424D369000000000000036000000280000006000
      0000600000000100200000000000009000000000000000000000000000000000
      0000DEE3E700DEE7E700E7E7E700E7E7EF00E7E7E700DEE3E700DEDFE700DEDF
      DE00E7E7E700E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7E7EF00E7E7E700DEE7E700DEE3E700DEE3E700DEE3
      E700E7EBEF00E7E7E700DEE7E700DEE3E700DEE3DE00DEE3E700DEE3E700DEE7
      E700EFEFEF00E7E7E700DEE3E700E7E7E700E7EBEF00E7EFEF00E7EBEF00E7E7
      E700DEE7E700DEE7E700E7EBEF00E7EBEF00DEE7E700DEE7E700E7EBEF00DEE3
      E700DEE7E700DEE3E700DEE3E700DEE3E700DEE7E700E7EBEF00E7EBEF00DEE7
      E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE7E700DEE7E700E7E7EF00E7EB
      EF00DEE7E700E7E7EF00E7E7EF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00DEE7EF00DEE7EF00DEE7E700DEDFE700D6DBDE00D6DBDE00DEDFE700DEE7
      E700DEE7EF00DEE7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7EBEF00E7EB
      EF00DEE3E700E7E7E700E7E7EF00DEE7E700DEDFE700DEDFE700DEE7E700E7EB
      EF00E7E7E700E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7EF00E7E7E700E7E7
      E700E7E7EF00E7E7EF00E7E7EF00E7E7E700E7E7E700E7E7E700E7EBEF00E7EB
      EF00E7E7E700E7E7E700DEE7E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700DEE3E700DEE7E700E7E7E700E7E7E700E7E7E700DEE7E700DEE3E700DEE3
      E700E7EBE700DEE7E700DEE7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EF
      EF00E7EBEF00DEE3E700DEE3E700DEE3E700DEE3E700DEE7E700E7EFEF00DEE7
      E700DEE3E700DEE3E700DEE3E700DEE7E700E7EBEF00E7EBEF00DEE7E700DEE3
      E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE7E700DEE7E700DEE7E700E7E7
      EF00DEE3E700DEE3E700E7E7EF00E7E7EF00DEE7E700DEE3E700DEE3E700DEE3
      E700DEE3E700DEE3E700DEE7EF00DEE7E700DEE3E700DEDFE700DEE3E700DEE3
      E700DEE3E700DEE7EF00E7E7EF00E7EBEF00E7E7EF00DEE7EF00DEE7EF00DEE7
      EF00E7E7E700DEE3E700D6DBDE00DEDFDE00DEE3E700E7E7E700E7E7EF00E7E7
      E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7E7EF00E7E7
      E700E7EBEF00E7E7E700E7E7E700DEE7E700E7E7E700E7E7EF00E7EBEF00E7EB
      EF00E7E7E700E7E7E700E7E7E700E7E7E700DEE7E700DEE7E700E7E7E700E7E7
      E700E7E7EF00E7EBEF00E7EFEF00EFEFEF00EFEFEF00E7EBEF00E7E7E700DEE3
      E700E7E7E700E7E7E700E7E7E700E7E7E700DEE7E700DEE3E700DEE7E700E7EB
      EF00E7EBEF00DEE7E700DEE7E700DEE7E700DEE7E700E7EBEF00DEE7E700D6DF
      DE00DEE3E700DEE7E700E7EBEF00E7EFEF00E7EFEF00E7EBEF00DEE7E700DEE3
      E700E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE7E700DEE3
      E700DEE3E700DEE3E700E7E7EF00E7E7EF00E7E7EF00DEE7E700E7E7EF00E7E7
      EF00DEE7EF00E7EBEF00E7EBEF00E7E7EF00DEE3E700D6DFE700D6DFE700DEDF
      E700D6DFE700DEE3E700DEE7EF00E7E7EF00E7EBEF00E7E7EF00DEE7EF00DEE7
      EF00DEE7E700DEDFE700D6DBDE00DEDFE700E7E7E700E7EBEF00E7E7E700DEE3
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      E700E7EBEF00E7E7E700DEE7E700DEE7E700E7E7E700E7E7E700DEE7E700DEE3
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7EF00E7E7EF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700DEE7E700DEE3
      E700E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7E7E700DEE7E700E7E7E700E7EB
      EF00E7EBEF00DEE7E700E7EBEF00E7EBEF00DEE7E700DEE7E700DEE7E700D6DF
      DE00E7EBEF00E7EFEF00E7EFEF00E7EFEF00E7EFEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE7
      E700DEE3E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00DEE7E700DEDFE700D6DFDE00D6DFE700DEE3
      E700DEDFE700DEE3E700DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7E700DEE7
      E700DEE3E700E7E7E700E7EBEF00E7EBEF00E7E7E700DEE7E700E7E7E700E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00DEE7
      E700DEE7E700DEE7E700DEE7E700E7E7E700E7E7E700E7E7E700DEE3E700DEDF
      DE00DEE3E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7E700E7E7E700E7E7
      EF00EFEFEF00E7EFEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7E700E7EBEF00E7EBEF00E7EFEF00EFEFEF00EFEF
      F700E7E7E700DEE3E700DEE3E700DEDFDE00D6DBDE00DEE3E700E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00DEE3E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EB
      EF00E7E7EF00E7E7EF00DEE7EF00DEE7E700DEE3E700DEE3E700DEE7EF00E7E7
      EF00DEE7EF00DEE7EF00DEE7EF00DEE7E700DEE3E700DEE3E700DEDFE700DEE3
      E700E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7EBEF00E7EB
      EF00E7E7E700E7E7EF00E7E7EF00E7E7E700E7EBEF00E7EBEF00E7E7E700DEE3
      E700DEDFE700DEE3E700DEE3E700E7E7E700E7E7EF00E7E7E700DEE3E700DEDF
      E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700E7E7E700E7E7E700E7E7
      EF00E7EFEF00E7EFEF00EFEFEF00EFEFEF00EFEFEF00EFEFF700EFEFF700EFEF
      F700EFEFEF00E7EBEF00E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7E700E7E7E700E7EBEF00DEE7E700DEDFDE00DEE7E700EFEFEF00EFEF
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7EF00E7EB
      EF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00DEE7EF00DEE7EF00DEE7
      EF00DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE7
      E700EFEFEF00E7E7E700DEDFDE00DEDFE700E7E7E700E7EBEF00E7EBEF00DEE7
      E700E7E7E700E7E7EF00E7E7E700E7E7E700E7EBEF00E7EBEF00E7E7E700DEE3
      E700DEDFE700DEE3E700E7E7E700E7E7E700E7E7E700DEE7E700DEE3E700DEE3
      E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7E700E7E7EF00E7EBEF00E7EB
      EF00DEE7E700DEE7E700DEE7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7EBEF00E7E7E700DEE3E700DEE7E700E7E7E700E7E7E700DEE7E700DEE7
      E700E7EBEF00E7EBEF00EFEFF700EFEFF700E7EBEF00E7EBEF00EFEFEF00E7E7
      EF00E7EBEF00E7EBEF00EFEFEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00DEE7E700E7E7EF00E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EF
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE7E700DEE3E700DEE3
      E700DEDFE700DEE3E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7EBEF00E7EB
      EF00E7E7E700DEE7E700DEE3E700DEE3E700E7E7E700E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE3
      E700DEE3E700E7E7E700E7E7EF00E7E7EF00DEE7E700DEE3E700DEE3E700DEE3
      E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7E700E7E7EF00E7EBEF00E7EB
      EF00E7EFEF00E7EBEF00E7EBEF00E7E7E700DEE7E700E7E7E700E7E7E700E7E7
      EF00DEE3E700DEE3E700DEE3E700E7E7E700E7EBEF00E7EBEF00E7EFEF00EFEF
      F700E7EBEF00E7E7EF00E7EBEF00E7EBEF00E7E7E700EFEFEF00EFF3F700EFEF
      EF00EFEFEF00EFEFEF00E7EBEF00E7EBEF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE7E700DEE3E700E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00DEE7E700DEE3E700DEE3E700DEE3E700E7E7EF00E7EB
      EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00E7E7E700E7E7E700E7E7E700E7EBEF00E7EBEF00E7E7EF00E7E7
      E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEDF
      E700E7E7E700DEE7E700DEE7E700DEE3E700DEE7E700E7E7E700E7E7EF00E7EB
      EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7EFEF00EFEF
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700DEE7E700DEE3E700DEE3
      E700DEE7E700DEE3E700DEE3E700E7E7E700E7EBEF00E7E7EF00E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00EFEF
      EF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7EF00E7EBEF00E7EB
      EF00E7EFEF00E7EFEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00DEE7
      E700E7EBEF00E7EBEF00E7E7EF00E7EBEF00E7EFEF00EFEFF700E7EBEF00E7E7
      EF00E7E7EF00DEE3E700DEE3E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7
      EF00E7E7E700E7E7E700E7E7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EFEF00E7EBEF00E7E7EF00E7EBEF00E7EBEF00DEE7E700DEE7E700E7EB
      EF00EFEFEF00E7EBEF00E7EBEF00E7E7E700DEE3E700DEE3E700DEE3E700DEE3
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00DEE3E700DEE3E700DEE3E700E7E7E700E7EBEF00E7EBEF00E7EFEF00EFEF
      EF00EFEFEF00EFEFEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7E7
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE3
      E700E7E7EF00DEE3E700DEE7E700E7EBEF00E7EBEF00E7EFEF00E7EFEF00EFEF
      F700E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00E7EBEF00E7E7EF00E7E7E700E7E7E700DEE3E700DEE3E700DEE7
      E700E7EBEF00DEE3E700DEE3E700E7E7EF00E7E7E700DEDFDE00DEE3E700E7EB
      EF00E7EBEF00E7E7EF00E7E7E700E7E7E700DEE3E700DEE3E700DEE3E700DEE3
      E700DEE7E700E7E7E700E7E7EF00E7E7EF00E7E7E700E7E7E700E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00DEE7E700DEE3E700E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00DEE7E700DEE3E700DEE3E700DEE3E700DEE7E700DEE7E700E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EFEF00EFEFEF00EFEF
      F700EFEFEF00EFEFEF00E7EFEF00E7EFEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7EBEF00E7EBEF00E7E7EF00DEE7E700E7E7EF00E7EBEF00E7EBEF00E7E7
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EF
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00DEE3E700DEE3E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7
      EF00E7E7E700E7E7E700E7E7E700E7E7E700DEE3E700DEE3E700DEE3E700DEE3
      E700DEE7E700DEE3E700DEE7E700E7E7E700DEE3E700DEDFDE00DEDFDE00DEE3
      E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700DEE3E700DEE7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00EFEF
      EF00EFEFF700E7EBEF00DEE7E700DEE3E700E7E7EF00E7EBEF00E7EBEF00E7E7
      EF00E7EBEF00E7E7EF00DEE3E700DEE3E700DEE3E700DEDFE700DEDFE700DEDF
      E700DEDFDE00DEDFDE00DEDFDE00DEDFDE00DEE3E700DEE3E700DEE7E700E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00DEE7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EFEF00EFEFF700EFF3
      F700EFEFF700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE7E700E7E7
      EF00E7EBEF00E7E7EF00DEE7E700E7E7EF00E7E7EF00E7EBEF00E7E7EF00DEE3
      E700DEDFDE00DEE3E700DEE3E700DEE7E700DEE7E700E7E7E700E7E7EF00E7EB
      EF00E7E7E700E7EBEF00E7EBEF00E7E7E700DEE3E700E7E7E700DEE7E700DEE3
      E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEDFE700DEDF
      DE00DEE3E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EFEF00E7EBEF00E7E7EF00E7EBEF00E7EBEF00E7EFEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700D6DFDE00D6DFDE00D6DFDE00D6DFDE00D6DFDE00DEE3E700DEE3E700DEE7
      E700E7E7EF00E7EBEF00E7EFEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7E7EF00E7EBEF00E7EFEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EB
      EF00EFEFF700EFEBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEDF
      E700DEE3E700DEE3E700DEE7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00EFEFF700E7EFEF00DEE3E700DEE3E700E7EBEF00E7EBEF00DEE7
      E700E7E7E700E7E7E700DEE7E700DEE7E700DEE3E700DEE3E700DEE3E700DEE3
      E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7
      E700E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EFEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00DEE7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE7E700DEE3E700DEE3E700DEDFDE00DEDFDE00DEE3E700DEE3E700DEE3
      E700DEDFE700DEE3E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE3
      E700DEE7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE3E700DEDF
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7EBEF00E7EBEF00E7E7E700DEE3E700DEE7E700E7EBEF00E7EBEF00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7EBEF00E7EBEF00E7E7E700DEE3
      E700DEE3E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00E7E7EF00DEE7E700E7E7EF00E7EBEF00E7E7EF00E7E7EF00E7E7
      EF00DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700E7EBEF00E7EB
      EF00E7EFEF00E7EFEF00E7EBEF00E7EBEF00DEE7E700DEE7E700DEE7E700DEE7
      E700DEE3E700E7E7EF00E7E7EF00DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700DEE3E700DEE3E700DEE3E700E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EF
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E3E700DEE3E700DEE3E700E7E7
      EF00DEDFE700DEE3E700DEE3E700DEE3E700E7E3E700E7E7EF00E7E7EF00E7E7
      EF00E7EBEF00E7E7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00DEE7E700DEE3E700E7EBEF00E7EFEF00E7EBEF00E7E7EF00DEE7
      E700E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      EF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7E7
      E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00DEE7E700DEE3E700DEE3E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EFEF00E7EFEF00E7EFEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE7E700DEE7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EF
      EF00EFF3F700EFF3F700EFEFF700E7EBEF00DEE7E700DEE7E700E7E7EF00E7E7
      EF00DEDFE700DEDFE700DEDFE700DEDFE700DEDFE700DEE3E700DEE3E700DEE7
      E700DEE7E700DEE3E700DEE3E700DEE7E700DEE3E700DEE3E700E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00DEE3E700DEE7E700E7E7EF00E7EB
      EF00E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7
      E700E7E7E700E7EBEF00E7EBEF00E7EBEF00DEE3E700DEE3E700DEE7E700E7E7
      EF00DEE7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7EB
      EF00EFEFEF00EFEFEF00EFEFEF00E7EFEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700E7E7E700E7E7E700E7E7
      E700DEE3E700DEDFE700DEE3E700E7E7E700DEE3E700DEE3E700E7E7E700E7E7
      E700E7EFEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7EFEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EB
      EF00E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00EFEF
      EF00EFF3F700E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEDFDE00DEDF
      DE00DEDFDE00D6DFE700DEDFE700DEDFE700DEE3E700DEE3E700DEE3E700DEE3
      E700E7E7EF00E7EBEF00E7EBEF00DEE7EF00DEE3E700DEE7EF00E7E7EF00DEE7
      EF00DEE7E700E7E7E700E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7EF00E7EB
      EF00E7E7EF00E7EBEF00E7EBEF00E7E7E700DEE3E700DEE3E700DEE3E700DEE7
      E700DEE3E700DEE7E700DEE7E700DEE7E700DEE3E700DEE7E700E7E7E700E7E7
      E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7E700E7E7E700E7E7E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00DEE3E700DEDFDE00DEE3E700E7E7EF00E7E7E700E7EBEF00E7EBEF00E7EB
      EF00E7EFEF00E7EFEF00E7EBEF00E7EBEF00E7EFEF00E7EFEF00E7EBEF00E7EB
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFF700EFEFF700EFEF
      F700E7EBEF00E7E7EF00E7E7E700E7E7E700DEE7E700DEE7E700DEE3E700DEE3
      E700E7EBEF00DEE7E700DEE3E700E7E7EF00E7EFEF00E7EFEF00E7EBEF00E7E7
      EF00DEE7EF00DEE3E700DEDFE700D6DBDE00D6D7DE00D6D7DE00D6DBDE00DEDF
      E700DEE3E700DEE7EF00E7EBEF00DEE7EF00DEE7E700DEE7E700DEE7EF00DEE7
      EF00E7EBEF00E7E7EF00DEE7E700E7E7E700E7EBEF00E7EFEF00E7EBEF00E7E7
      EF00E7EBEF00E7E7EF00E7E7EF00E7E7E700E7E7E700DEE7E700E7E7E700E7E7
      E700DEE7E700E7E7E700E7E7E700E7E7E700DEE7E700E7E7E700E7E7E700E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE7E700E7E7E700E7E7E700E7E7E700E7E7EF00E7E7E700E7E7E700E7E7
      E700E7E7E700DEDFE700DEE3E700E7E7E700DEE7E700DEE7E700E7E7E700DEE3
      E700E7EFEF00E7EFEF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700DEE7
      E700E7E7E700E7E7E700E7E7EF00E7EBEF00EFEBEF00EFEBEF00EFEBEF00E7EB
      EF00EFEFEF00E7EBEF00E7E7EF00E7E7E700E7E7EF00E7E7EF00DEE7E700DEE3
      E700E7E7E700DEE3E700DEDFE700DEE7E700E7EBEF00E7EBEF00E7E7E700E7E7
      E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00DEE7EF00DEE3E700DEE3E700DEE3
      E700D6DBDE00D6DFDE00DEDFE700DEE3E700DEE7E700DEE7EF00E7EBEF00E7EF
      F700E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7
      E700E7E7E700DEE7E700DEE3E700DEE3E700E7E7E700E7E7E700E7E7E700E7E7
      E700DEE3E700DEE7E700E7E7E700DEE7E700DEE7E700DEE7E700E7E7E700E7E7
      EF00E7E7E700E7E7E700E7E7E700E7E7EF00E7E7EF00E7E7E700E7E7E700E7E7
      E700DEE3E700DEE3E700E7E7E700E7E7E700E7E7EF00E7E7EF00E7E7E700E7E7
      E700E7E7EF00DEE3E700DEE3E700E7E7E700DEE3E700DEE3E700DEE3E700DEDF
      DE00DEE3E700DEDFDE00DEE3E700DEE3E700DEE7E700E7EBEF00E7EBEF00E7EF
      EF00E7EBEF00E7EBEF00E7EBEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E7EFEF00E7EBEF00E7EBEF00E7EFEF00EFEFEF00E7EBEF00E7EB
      EF00E7E7EF00DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700DEDFE700DEE3E700DEE7EF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE3
      E700D6DFE700D6DBDE00D6DBDE00DEDFE700DEDFE700DEDFE700DEE7E700E7EB
      EF00D6DBDE00DEE7E700E7EBEF00E7EBEF00DEE3E700DEDFDE00DEE3E700E7EB
      EF00DEE7E700DEE3E700DEE3E700DEE3E700DEE3E700DEE7E700DEE3E700DEE3
      E700DEE3E700DEE3E700DEE7E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7
      E700E7E7E700E7E7E700E7E7EF00E7E7EF00E7E7E700E7E7E700DEE3E700DEE3
      E700DEE3E700DEE7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00DEE3E700DEE3E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      E700DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700E7E7E700E7EBEF00E7EB
      EF00EFEFEF00EFEFEF00E7EBEF00E7EBEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      F700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7E700DEE7E700DEE3E700DEE3E700DEE7E700E7EB
      EF00E7EBEF00DEE7EF00DEE3E700DEE3E700DEE3E700DEE7E700DEE3E700DEE3
      E700DEE3E700DEDFE700DEDFE700DEE3E700DEDFE700D6DBDE00D6DBDE00DEDF
      E700DEE3E700DEE3E700DEE3E700E7E7E700E7EBEF00E7EBEF00E7E7EF00E7E7
      E700E7EBEF00E7E7E700DEE7E700DEE7E700DEE7E700E7E7E700DEE3E700DEE3
      E700E7E7E700E7E7EF00E7E7EF00E7E7EF00E7E7E700E7E7EF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EFEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700DEE7
      E700DEE3E700DEE7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7E700E7EBEF00EFEFEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EFEF00E7EFEF00E7EBEF00E7E7EF00DEE7E700DEE3E700DEE3E700DEE3
      E700E7E7E700DEE3E700DEE3E700DEE3E700E7E7E700E7E7EF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE3E700E7E7E700E7EB
      EF00E7EFF700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EFEF00E7EBEF00DEE7
      EF00DEE3E700DEE3E700DEE7EF00E7EBEF00E7EBEF00DEE7EF00DEE3E700DEE3
      E700E7EFEF00DEE7E700DEDFDE00DEE3E700E7EBEF00EFEFF700E7EBEF00DEE3
      E700E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EF
      EF00E7E7EF00E7E7EF00E7EBEF00E7E7EF00E7E7E700DEE3E700DEE3E700DEDF
      E700DEE7E700DEE7E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7E700E7EBEF00EFEFEF00E7EBEF00E7E7EF00E7EBEF00E7E7
      E700DEE3E700DEE3E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EF
      EF00E7E7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00EFEFEF00EFEF
      EF00E7EFEF00E7EBEF00E7EBEF00E7EBEF00E7EFEF00E7EBEF00E7EBEF00E7E7
      E700E7E7EF00E7E7E700E7E7E700E7E7EF00E7E7EF00DEE7E700DEE3E700E7E7
      E700DEE3E700DEE7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700DEE7
      E700DEE3E700E7E7E700E7EBEF00E7EFEF00EFEFEF00EFF3F700EFEFF700E7EF
      EF00E7E7E700E7EBEF00E7EBEF00DEE7E700DEDFDE00D6DBDE00DEE3E700E7EB
      EF00DEE3E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7E700E7E7EF00E7EB
      EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EFEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700DEE7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7E700DEE3E700E7EBEF00EFEFEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EFEF00E7EBEF00E7E7EF00DEE7E700DEE7E700E7E7
      E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EFEF00E7EBEF00E7E7E700E7EBEF00EFEFEF00EFEFF700E7EBEF00E7E7
      E700DEE3E700DEDFE700DEE3E700E7EBEF00EFEFEF00E7EFEF00E7EBEF00E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE3E700E7E7E700E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7EFEF00EFEFEF00E7EB
      EF00E7E7EF00E7EBEF00E7EFEF00E7EBEF00DEE3E700D6DBDE00D6DBDE00DEDF
      DE00E7EBEF00DEE3E700DEDFDE00DEE3E700E7E7E700E7EBEF00E7EBEF00DEE7
      E700E7E7EF00E7E7E700E7EBEF00E7EBEF00E7EBEF00DEE7E700DEE3E700E7E7
      E700E7E7EF00DEE3E700DEE3E700E7EBEF00E7EBEF00DEE7E700DEE3E700E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7
      EF00E7E7EF00E7E7E700E7E7E700E7EBEF00E7E7EF00E7E7E700E7EBEF00EFEF
      EF00E7EBEF00E7EBEF00EFEFEF00EFEFEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7E700E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00EFEFEF00E7EBEF00DEE7E700E7E7E700E7E7EF00DEE7E700DEDFDE00D6DB
      DE00DEDFDE00DEE3E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700DEE7E700E7E7
      E700E7E7E700DEE3E700DEE3E700E7E7E700E7E7E700DEE3E700DEDFE700DEE3
      E700DEE7E700E7E7E700E7E7E700E7E7E700DEE7E700DEE3E700DEE3E700DEE7
      E700DEE3E700DEE3E700DEE3E700E7E7E700E7E7E700DEE3E700DEE7E700E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      EF00DEE7E700E7EBEF00E7EFEF00E7EBEF00DEE3E700DEE3E700DEE7E700E7EB
      EF00EFEFEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7E700E7EB
      EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00EFEFEF00E7E7EF00DEE3E700E7E7E700E7EBEF00E7EBEF00DEE7E700DEDF
      E700DEDFDE00DEDFDE00DEDFDE00DEE7E700E7EBEF00EFEFEF00E7EBEF00DEE3
      E700E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7
      E700E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7E7E700DEE3E700DEE3E700E7E7
      E700DEE7E700E7E7E700E7E7EF00E7E7EF00E7E7E700E7E7E700E7E7EF00E7E7
      EF00DEE3E700DEE3E700DEE7E700E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00EFEFEF00EFEFEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00DEE7E700E7E7E700E7EBEF00E7E7E700DEE3E700DEE3E700DEE7E700E7EB
      EF00E7EBEF00E7E7EF00DEE7E700DEE7E700E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7EF00E7EB
      EF00E7EBEF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7EB
      EF00E7E7EF00DEE3E700DEDFDE00DEE3E700E7E7E700E7EBEF00E7EBEF00DEE7
      E700E7E7E700DEE7E700DEE7E700E7E7E700E7E7EF00E7EBEF00E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE7E700E7EB
      EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE3E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00EFEFEF00EFEFF700EFEFEF00E7EB
      EF00EFEFEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      E700E7E7E700DEE3E700DEDFE700DEE3E700E7E7E700E7EBEF00E7EBEF00E7E7
      E700DEE7E700DEE3E700DEE3E700DEE3E700E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700DEE3E700DEE7E700E7EBEF00E7EBEF00E7E7E700DEE3E700E7E7E700E7EF
      EF00E7EBEF00E7EFEF00EFEFEF00E7E7EF00DEDFE700DEDFDE00DEE7E700E7EF
      EF00DEE7E700E7E7E700E7E7E700E7E7E700E7E7EF00E7E7EF00E7E7EF00E7E7
      E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7E700DEE3E700DEE7E700E7EB
      EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE7E700E7E7E700E7E7EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      EF00E7EBEF00E7E7E700E7E7E700E7E7EF00E7EBEF00EFEFEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00DEE7E700DEE3
      E700E7E7E700DEE3E700DEE3E700DEE3E700E7EBEF00E7EBEF00E7EBEF00E7E7
      E700DEE3E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00EFEFEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700DEE3E700DEE3
      E700DEE3E700DEE3E700DEE3E700DEE3E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7EBEF00E7EBEF00EFEFEF00E7EBEF00DEE3E700DEDFE700DEE3E700DEE3
      E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700DEE7
      E700DEE7E700E7E7E700E7E7E700E7E7E700DEE3E700DEE7E700E7E7E700E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE3E700E7E7E700E7E7E700E7E7E700DEE7E700E7E7E700E7E7E700E7E7
      E700E7EBEF00E7E7E700E7E7E700E7E7EF00E7EBEF00EFEFEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00DEE7E700DEE7E700DEE3
      E700DEE3E700E7E7E700E7EBEF00E7EBEF00DEE7E700DEE3E700DEE7E700E7E7
      EF00E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7
      E700E7E7EF00DEE3E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7E700E7E7
      E700E7EBEF00E7E7EF00E7E7E700E7E7EF00E7EBEF00E7EBEF00DEE7E700DEDF
      DE00DEE3E700E7E7EF00E7EFEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7
      E700DEE7E700E7E7E700DEE7E700DEE7E700DEE7E700E7E7E700E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00DEE3E700DEE7E700E7E7EF00E7E7E700E7E7E700E7E7EF00E7EBEF00E7E7
      E700E7EBEF00E7EBEF00E7EBEF00EFEBEF00E7EBEF00EFEFEF00EFEFEF00EFEF
      EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE7E700DEE7E700DEE7E700DEE7
      E700DEE7E700E7EBEF00E7EBEF00E7E7EF00DEE3E700DEDFE700DEE3E700E7EB
      EF00E7E7EF00E7E7E700E7E7E700DEE7E700E7E7E700E7E7E700E7E7E700DEE7
      E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBE700E7E7E700E7E7E700E7EB
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7
      E700E7EBEF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EFEF00EFEFEF00E7EFEF00E7EBEF00E7EB
      EF00D6DBDE00DEE3E700E7EBEF00E7EBEF00E7E7E700E7E7EF00E7EBEF00E7EB
      EF00DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700E7E7E700E7E7EF00E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE7
      E700D6DBDE00DEE3E700E7E7E700E7E7E700E7E7E700E7E7EF00E7E7EF00DEE3
      E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00EFEF
      EF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE3E700DEE3E700DEE7E700E7EB
      EF00E7EBEF00E7E7E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7E700E7E7
      E700E7E7EF00DEE3E700DEDFE700DEE3E700DEE7E700E7E7EF00E7EBEF00E7EB
      EF00E7EBEF00E7EFEF00EFEFEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBE700E7E7E700DEE3
      E700DEE3E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00EFEFEF00EFEFEF00EFEFEF00E7EBEF00E7EB
      EF00DEE3E700D6DFDE00D6DBDE00D6DFDE00DEE7E700E7EBEF00DEE7E700DEE3
      E700E7EBEF00DEE7E700DEE3E700DEE3E700DEE3E700E7EBEF00E7EBEF00E7EF
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7E7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      EF00E7EBEF00DEE7E700DEDFE700DEE3E700E7E7E700E7EBEF00E7E7E700DEE3
      E700E7EBEF00E7E7E700E7E7E700E7E7E700E7E7EF00E7E7EF00E7E7E700DEE7
      E700DEE3E700DEE3E700DEE7E700E7E7E700DEE3E700DEDFE700DEE3E700DEE7
      E700E7E7E700E7E7E700E7E7EF00E7E7EF00E7E7EF00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700DEE7E700DEE3E700DEE3E700DEE3E700E7E7E700E7E7
      E700DEE3E700E7E7E700E7E7EF00E7EBEF00E7EBEF00EFEFEF00EFEFEF00EFEF
      F700E7EBEF00E7EBEF00E7EBEF00EFEFEF00EFEFEF00EFEFEF00E7EBEF00E7EB
      EF00EFF3F700E7EBEF00DEE3E700D6DFDE00D6DFDE00DEDFDE00DEE3E700DEE7
      E700E7EBEF00DEE7E700DEE7E700DEE7E700DEE7E700E7EBEF00E7EBEF00E7EB
      EF00E7E7E700E7E7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE3E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE3E700E7E7EF00E7EBEF00E7E7EF00DEE3E700DEE3E700E7E7E700E7EF
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7E700DEE7E700DEE3
      E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700E7E7EF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7EF00E7E7
      EF00E7E7EF00E7E7E700DEE7E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00EFEFEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EF
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00DEE7E700DEE3E700DEE7E700E7EB
      EF00DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700E7EBEF00E7EBEF00DEE7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      E700DEE3E700E7E7E700E7EBEF00EFEFEF00E7EBEF00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700DEE7E700E7E7E700E7E7E700E7E7E700E7E7
      EF00E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7E700DEE7E700DEE3
      E700E7E7E700DEE3E700DEDFE700DEE3E700E7E7E700E7E7E700DEE7E700DEE3
      E700E7E7EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7EF00E7EB
      EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7EF00E7EB
      EF00DEE3E700DEE7E700E7EFEF00EFF3F700E7EFEF00E7EBEF00DEE7E700DEE7
      E700DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7
      E700DEDFE700E7E7E700E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700DEE7E700DEE7E700E7E7E700E7E7EF00E7EB
      EF00E7EFEF00E7EBEF00E7E7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7E7
      E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE7E700DEE7E700DEE7
      E700E7EBEF00E7E7E700DEE7E700E7E7E700E7EBEF00E7E7EF00E7E7E700E7E7
      EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7EF00E7E7EF00E7EBEF00E7E7EF00E7E7EF00E7E7
      E700DEE3E700DEE3E700E7E7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EFEF00E7EBEF00E7EBEF00E7EBEF00DEE7E700DEE3E700DEE7E700DEE7
      E700DEE7E700DEE7E700DEE7E700DEE7E700E7EBEF00E7EBEF00E7EFEF00E7EF
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EFEF00E7EF
      EF00DEDFE700DEE3E700E7E7E700E7E7E700DEE7E700DEE7E700E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00DEE7E700DEE3E700DEE7E700E7E7
      E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7EF00E7EB
      EF00DEE3E700DEE3E700E7E7E700E7E7E700E7E7E700E7E7E700DEE7E700DEE3
      E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEDFE700DEDF
      DE00DEE3E700DEE3E700DEE3E700E7E7E700E7EBEF00E7EBEF00EFEFEF00EFEF
      EF00E7EBEF00E7EBEF00E7E7EF00E7EBEF00EFEFEF00EFEFEF00EFEFEF00E7EB
      EF00E7EBEF00DEE7E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700DEE3E700DEE3E700DEE7E700DEE7E700DEE7E700E7EBEF00E7EBEF00E7EF
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EF
      EF00DEE3E700DEE3E700DEE7E700E7E7E700E7E7E700E7EBEF00E7EBEF00E7EF
      EF00E7EBEF00E7E7EF00E7E7EF00E7E7E700E7E7E700E7E7EF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7E700DEE7E700DEE3E700DEE3
      E700E7E7E700E7E7E700E7E7E700E7E7E700DEE7E700DEE7E700E7E7E700E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE7E700E7E7E700E7EB
      EF00DEE7E700DEE7E700E7E7E700E7E7E700E7E7E700DEE7E700DEE3E700DEE3
      E700DEDFDE00DEDFDE00DEDFE700DEE3E700DEE3E700DEE3E700DEE7E700DEE7
      E700E7EBEF00E7E7EF00E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00EFEFEF00EFEFEF00E7EBEF00E7EB
      EF00DEE3E700DEE3E700DEE3E700E7E7E700E7E7E700DEE3E700DEDFE700DEDF
      E700DEDFDE00DEE3E700DEE3E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      EF00E7EBEF00E7EFEF00E7EFEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EB
      EF00DEE3E700DEE3E700DEE3E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7EBEF00DEE7E700DEDFE700DEE3E700E7E7E700E7E7EF00DEE3E700DEDF
      DE00E7E7E700E7E7EF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7EF00E7EB
      EF00E7E7EF00E7E7E700E7E7E700E7EBEF00E7E7EF00E7E7E700E7E7E700E7EB
      EF00E7EBEF00E7E7EF00E7E7E700DEE7E700DEE3E700DEE3E700DEE7E700E7E7
      E700DEDFE700DEE3E700DEE3E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EF
      EF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7EF00E7EBEF00E7E7EF00E7E7
      E700E7EBEF00E7EBEF00EFEFEF00EFEFEF00E7EBEF00E7E7E700E7E7E700E7E7
      E700E7E7EF00E7E7EF00E7EBEF00E7EBEF00DEE7E700DEDFE700DEDFDE00DEE3
      E700DEDFDE00DEE3E700E7E7E700E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7
      E700DEE3E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE3E700DEE3E700DEE3E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00DEDFE700DEE3E700E7E7EF00E7E7E700DEE3E700DEDFDE00DEE3E700E7E7
      E700DEE3E700DEE7E700E7E7E700E7E7E700DEE7E700E7E7E700E7EBEF00E7EF
      EF00E7EBEF00E7E7E700DEE7E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7
      EF00E7EFEF00E7EBEF00E7E7E700DEE3E700DEE3E700DEE3E700E7E7E700E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE3E700DEE3E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7E700E7EBEF00E7EFEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700DEDF
      E700DEDFDE00DEDFE700DEE3E700DEE3E700DEE7E700E7E7E700E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7E700E7E7EF00E7E7EF00E7E7E700E7E7EF00E7EB
      EF00DEE3E700DEE3E700E7E7EF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      E700DEE3E700DEE3E700DEE3E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7EBEF00E7EBEF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7E700E7E7EF00E7E7EF00E7E7EF00E7E7E700E7E7E700E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7E700DEE3E700DEE3E700DEDF
      DE00DEE7E700DEE7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7EF00E7EB
      EF00DEE3E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7E700E7E7E700E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7
      E700E7E7EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7E7EF00E7EBEF00E7EFEF00EFEFEF00E7EBEF00E7EB
      EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00EFEFEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7EBEF00E7E7EF00DEE7E700DEE3E700DEDFE700DEE3
      E700E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00DEE7E700DEE7E700E7EBEF00DEE7E700DEE7E700DEE7E700DEE7
      E700DEE7E700DEE7E700DEE3E700DEE7E700DEE7E700DEE7E700E7EBEF00E7EF
      EF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7EF00E7E7EF00E7E7EF00E7E7
      E700E7EBEF00E7E7EF00E7E7E700DEE7E700DEE3E700DEE7E700E7E7E700E7E7
      E700EFEFEF00E7EBEF00E7E7E700E7EBEF00EFEFEF00EFEFF700E7EFEF00E7EB
      EF00DEE7E700E7EBEF00E7EFEF00E7EBEF00E7E7EF00DEE3E700DEE3E700DEE7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7E700E7E7E700E7EBEF00E7E7E700DEE3E700DEE7E700E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700DEE3E700DEE3E700DEE3
      E700DEE7E700DEE3E700DEE3E700DEE3E700DEE7E700DEE7E700E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      EF00E7E7E700E7E7E700DEE7E700DEE7E700DEE7E700E7E7E700E7E7E700E7E7
      EF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00DEE7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EB
      EF00E7E7E700E7E7E700E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7E700E7EBEF00E7E7EF00E7E7E700E7E7EF00EFEF
      EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00DEE7E700DEE7E700E7EBEF00DEE7E700DEE7E700DEE3E700DEE7
      E700DEE3E700DEE3E700D6DFDE00DEDFDE00DEE3E700DEE7E700DEE7E700DEE7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      EF00E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7E700E7E7E700E7E7E700E7E7E700DEE7E700DEE7E700E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7E700E7E7E700E7E7E700E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00EFEFEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7EB
      EF00E7E7E700E7E7E700E7E7E700E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00DEE7E700DEE7E700DEE7E700DEE7E700DEE3E700DEE3E700DEE7
      E700DEE7E700DEE7E700DEE3E700DEE3E700DEE7E700E7EBEF00E7EBEF00DEE7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7
      E700DEE7E700E7E7E700E7EBEF00E7E7EF00DEE7E700DEE3E700DEE7E700E7E7
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7
      E700E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7E700DEE3E700DEE3E700E7E7EF00E7E7EF00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00DEE7E700DEE7E700DEE7E700DEE7E700DEE3E700DEE3E700DEE7
      E700E7EBEF00E7EBEF00DEE7E700DEE7E700E7EBEF00E7EFEF00E7EFEF00E7EB
      EF00DEE7E700E7E7E700E7E7EF00E7E7EF00E7E7E700E7E7E700E7E7EF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7E700E7E7E700E7E7EF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7E7E700E7E7E700DEE3E700DEDFDE00DEE3E700E7EBEF00E7EBEF00E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700E7EB
      EF00E7EBEF00E7EBEF00DEE7E700DEE3E700DEE7E700E7EBEF00E7EFEF00E7EF
      EF00DEE3E700E7E7E700E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EFEF00EFEF
      EF00E7E7E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7E7EF00E7E7E700DEE3
      E700DEE7E700E7EBEF00E7EFEF00E7EFEF00E7EBEF00E7E7E700E7E7E700E7EB
      EF00DEE3E700E7E7E700E7EBEF00E7EBEF00E7EFEF00E7EFEF00EFEFEF00EFEF
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7EBEF00E7EB
      EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      E700E7EBEF00E7E7EF00DEE3E700DEE7E700E7EBEF00E7EFEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00E7E7EF00E7E7EF00DEE3E700DEDFE700DEDFE700DEE3E700E7EB
      EF00DEE7E700E7E7EF00DEE7E700DEDFE700DEE3E700E7EBEF00E7EBEF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7EBEF00EFEFEF00EFEF
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00DEE7
      E700DEE3E700DEE3E700DEE3E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00DEE3
      E700E7E7E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7EFEF00E7EBEF00E7EB
      EF00DEE7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      EF00E7E7EF00E7E7E700E7E7E700E7EBEF00E7EBEF00E7E7E700E7E7E700E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00DEE7E700E7EBEF00E7EBEF00DEE7
      E700DEE3E700DEE7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00E7E7EF00DEE7E700DEE3E700DEE3E700DEE7E700E7E7EF00E7EB
      EF00E7E7EF00E7EBEF00E7EBEF00DEE7E700DEE3E700E7E7EF00E7EBEF00E7EB
      EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7E700DEE3E700DEE3E700E7E7E700E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00DEE7E700DEE3
      E700DEE7E700E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE7
      E700E7E7EF00E7E7E700E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EFEF00E7EFEF00E7EFEF00EFEFEF00EFEF
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00DEE7E700DEE7E700DEE7E700DEE7E700DEE7
      E700DEDFE700DEE3E700E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7EB
      EF00E7E7EF00DEE3E700DEE3E700DEE3E700E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7EBEF00E7EFEF00E7E7EF00DEE3E700DEE7E700E7E7EF00E7E7
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00EFEF
      EF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE7E700DEE3
      E700E7E7EF00E7E7EF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7
      E700E7EFEF00E7EFEF00E7EFEF00E7EBEF00E7EBEF00E7EBEF00EFEFEF00EFEF
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7
      EF00E7E7EF00E7EBEF00E7EBEF00DEE7E700DEE7E700E7EBEF00DEE7E700DEE7
      E700DEDFE700DEE3E700E7E7EF00E7EBEF00E7E7EF00DEE3E700DEE3E700E7E7
      EF00E7E7EF00E7E7EF00E7EBEF00E7E7EF00DEE3E700DEE3E700DEE7E700E7E7
      EF00DEE7E700DEE3E700DEE3E700DEE3E700E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7EBEF00E7EBEF00DEE7E700DEE3E700DEE3E700E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00EFEF
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE7E700DEE7E700E7E7EF00E7EB
      EF00E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7EBEF00E7EB
      EF00E7EFEF00E7EFEF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7E7
      EF00E7EBEF00E7E7E700E7E7E700E7E7EF00E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7EF00E7EBEF00DEE7E700E7EBEF00E7EBEF00DEE7E700DEE3
      E700E7E7EF00E7E7EF00E7E7EF00DEE7E700DEE7E700DEE3E700DEE3E700DEE7
      E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE3E700E7E7EF00E7E7EF00E7EB
      EF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      EF00DEE7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7EBEF00E7EB
      EF00E7EFEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00E7E7EF00DEE3E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7
      EF00E7E7E700E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700DEE7E700DEE3E700DEE7
      E700E7EBEF00E7E7EF00E7E7E700E7E7EF00E7E7EF00E7E7E700E7E7E700E7E7
      EF00DEE7E700E7E7E700DEE7E700DEE7E700DEE7E700E7EBEF00DEE7E700DEE3
      E700E7EBEF00E7EBEF00DEE7E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7
      EF00DEE3E700DEE3E700DEE7E700DEE7E700E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00DEE3E700DEE3E700E7E7EF00E7E7EF00DEE7E700DEE7E700E7E7EF00E7EB
      EF00E7EFEF00E7EBEF00E7E7EF00DEE7E700E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEE7
      E700DEE7E700E7E7E700E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00DEE7E700DEE3E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7E700DEE7E700DEE3E700DEE7E700DEE7
      E700DEE7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE7
      E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE7EF00DEE7EF00DEE3
      E700E7EBEF00E7E7EF00DEE3E700DEE3E700DEE3E700E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7E7EF00DEE3
      E700DEE3E700DEE3E700DEE7E700DEE7E700DEE3E700DEE7E700E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7EB
      EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      E700E7EBEF00E7EBEF00E7EFEF00E7EBEF00E7EBEF00E7E7EF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00DEE7E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE7E700DEE7E700DEE7
      E700E7EBEF00E7E7E700E7E7E700DEE7E700DEE7E700DEE7E700DEE7E700DEE3
      E700DEE3E700DEE7E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EB
      EF00E7E7EF00DEE7E700E7E7EF00E7E7EF00E7E7EF00DEE3E700D6DFE700D6DF
      E700DEE3E700DEE3E700D6DFE700D6DBDE00DEDFE700DEE7E700DEE7EF00DEE7
      E700DEE7E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700E7E7EF00E7E7
      EF00DEE3E700DEE3E700DEE3E700DEE3E700E7E7EF00E7E7EF00DEE3E700DEDF
      E700DEE7E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7EB
      EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE7E700E7E7
      EF00E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7EBEF00E7EBEF00E7EFEF00E7EBEF00E7E7E700DEE3E700DEE3E700E7E7
      E700DEE3E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00DEE3E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE3E700DEE7
      E700E7E7E700DEE7E700DEE3E700DEE3E700E7E7E700E7E7EF00E7E7EF00E7E7
      E700DEE3E700DEE3E700DEE7E700DEE7E700DEE7E700DEE3E700DEE7E700E7E7
      E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00DEE7EF00DEE3E700DEE3E700DEE7
      E700DEE3E700DEDFE700D6DBDE00DEE3E700DEE7E700DEE7E700DEE7EF00E7E7
      EF00E7E7EF00DEE3E700DEE7E700E7EBEF00E7E7EF00DEE3E700DEE3E700E7EB
      EF00DEE3E700DEE7E700E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE3
      E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EF
      EF00E7EBEF00DEE7E700DEE3E700DEE3E700E7E7EF00E7EBEF00E7EBEF00E7E7
      E700E7EBEF00E7EBEF00E7E7EF00E7E7EF00DEE7E700DEE3E700DEE3E700DEE3
      E700DEE3E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEE7E700DEE3E700DEE3
      E700DEE3E700DEE3E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7E7E700DEE7
      E700DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7E700DEE3E700DEDF
      E700DEE3E700D6DFE700DEDFE700DEE7E700E7EBEF00DEE7EF00DEE7E700DEE7
      E700DEE3E700E7E7EF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00DEE3
      E700DEE3E700E7E7EF00E7EBEF00E7E7EF00DEE3E700DEE3E700DEE3E700DEE7
      E700DEE3E700DEE7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7EB
      EF00E7E7E700E7EBEF00E7EFEF00EFEFEF00EFEFEF00E7EBEF00DEE7E700DEE3
      E700DEE3E700DEE7E700DEE7E700E7E7E700E7E7EF00E7E7EF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7EF00DEE3E700DEE3E700DEE3E700DEE7E700E7E7
      EF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7E700E7E7E700DEE7E700DEE7E700DEE3E700DEE3E700DEE3E700DEE3
      E700DEE3E700DEE3E700DEE3E700DEE3E700E7E7E700E7EBEF00E7EBEF00E7E7
      EF00DEE3E700DEE3E700DEE3E700DEE7E700DEE7EF00DEE7E700DEDFE700D6DB
      DE00D6DBDE00D6DBDE00D6DFDE00DEE3E700E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00DEE3E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7E7EF00DEDF
      E700E7E7EF00E7E7EF00DEE7E700DEE7E700DEE7E700DEE7E700E7E7EF00E7E7
      EF00DEE7E700E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EFEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EB
      EF00E7EFEF00E7EBEF00E7EBEF00DEE7E700DEE7E700DEE7E700DEE7E700DEE7
      E700DEE3E700DEE7E700E7EBEF00E7EFEF00E7EBEF00E7EBEF00E7EBEF00E7EF
      EF00E7E7EF00E7E7EF00DEE3E700DEE3E700DEE3E700DEE7E700E7E7EF00E7EB
      EF00E7EBEF00E7E7EF00DEE7E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7
      EF00E7E7E700E7E7E700DEE7E700DEE3E700DEE3E700DEE3E700DEE3E700DEE7
      E700DEE3E700DEE3E700DEE3E700DEE3E700E7E7E700E7E7EF00E7E7E700DEE3
      E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700D6DFE700D6DB
      DE00DEDFE700D6DFDE00D6DFDE00DEDFE700DEE3E700DEE7EF00E7EBEF00E7EB
      EF00E7EBEF00DEE3E700DEE3E700E7E7EF00E7E7EF00DEE3E700DEE3E700E7E7
      EF00E7E7EF00DEE3E700DEDFDE00DEDFE700E7EBEF00EFEFF700E7EBEF00E7E7
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EFEF00EFEF
      F700E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00DEE7E700DEE7E700DEE3E700DEE3E700DEE7E700DEE7E700E7EB
      EF00DEE7E700E7EBEF00E7EBEF00E7EBEF00DEE7E700DEE7E700DEE7E700E7EB
      EF00E7E7EF00DEE7E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7EF00E7E7
      EF00DEE7E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7
      EF00E7EBEF00E7E7EF00E7E7E700E7E7E700DEE7E700E7E7E700E7E7E700E7E7
      EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEE3E700DEE3E700DEDF
      DE00DEE3E700DEE3E700D6E3E700D6DFE700D6DFE700D6DBDE00D6DFE700D6DF
      E700DEE7EF00DEE3EF00DEE3E700DEE3E700DEE3E700DEE3EF00DEE3EF00DEE3
      EF00E7EBEF00DEE3E700DEE3E700E7E7EF00DEE3E700DEDFE700DEE3E700E7E7
      EF00DEE3E700DEDFE700DEDFE700DEE3E700E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7EBEF00E7EBEF00E7E7EF00DEE7E700DEE7E700E7E7EF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      EF00DEE3E700DEE3E700DEE7E700E7EBEF00E7EBEF00E7EBEF00DEE7E700DEE7
      E700DEE7E700DEE7E700DEE7E700DEE7E700DEE3E700DEE3E700DEE3E700DEE7
      E700DEE7E700DEE7E700DEE7E700E7E7EF00E7E7EF00DEE7E700DEE7E700DEE3
      E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7EF00E7EBEF00E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE3E700DEE3E700DEE3
      E700D6E3E700D6E3E700D6E3E700D6DFE700D6DBDE00D6DBDE00D6DFE700DEE3
      E700DEDFE700DEE3EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      EF00DEE3E700E7EBEF00E7EFEF00E7E7EF00DEE3E700DEE7E700DEE7E700DEE3
      E700DEE3E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00EFEF
      F700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE7E700DEE3
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE3
      E700DEE7E700DEE7E700DEE7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700DEE3
      E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7EF00DEE7E700DEE3E700DEE3
      E700DEE3E700DEE7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE3E700DEE3E700E7E7E700E7EB
      EF00D6DFE700D6DFE700D6DFE700D6DFE700D6DFE700D6DFE700DEE3E700DEE7
      EF00D6DFE700DEE3E700E7E7EF00E7EBEF00E7EBEF00EFEFF700E7EBF700E7E7
      EF00DEE7E700E7EBEF00E7EBEF00E7E7EF00DEE3E700E7E7EF00DEE7E700DEDF
      E700DEE7E700E7EBEF00EFEFF700E7EFEF00E7EBEF00E7E7EF00E7EBEF00EFEF
      F700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE7E700DEE3
      E700E7EBEF00E7EBEF00E7EFEF00E7EBEF00E7EBEF00E7E7EF00DEE7E700E7E7
      EF00E7EBEF00E7EBEF00DEE7E700DEE7E700DEE7E700DEE7E700E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700DEE7
      E700DEE3E700DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700DEE3E700DEE3
      E700DEE7E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7E700DEE7E700DEE3E700DEE7E700E7E7E700E7E7EF00E7E7
      EF00D6DFE700D6DFE700D6DFE700D6DFE700DEE3E700DEE7EF00DEE7EF00DEE3
      EF00DEE7EF00E7EBEF00E7EBEF00DEE7EF00E7E7EF00E7E7EF00E7E7EF00DEE3
      EF00EFEFF700E7E7EF00DEE3E700DEE7E700E7E7EF00DEE3E700DEE3E700DEE7
      E700E7E7EF00DEE7E700DEE3E700DEE7E700E7EBEF00E7EFEF00E7EBEF00E7EB
      EF00EFEFF700E7EFEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EFEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EB
      EF00DEE3E700DEE7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00DEE7E700DEE3
      E700DEE3E700DEE3E700DEE7E700DEE7E700DEE7E700DEE7E700DEE3E700DEE3
      E700DEE7E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7
      EF00DEE3E700E7E7EF00E7EBEF00E7E7EF00DEE7E700DEE7E700E7E7EF00E7EB
      EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7E7E700DEE3E700DEE3E700E7E7EF00E7EFEF00E7EFEF00E7E7E700DEE3
      E700D6DFE700DEDFE700DEE3E700DEE7EF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7EBEF00E7E7EF00E7E7EF00DEE7E700DEE7E700E7E7EF00E7E7EF00E7EB
      EF00E7EBEF00DEE3E700DEE3E700DEE7E700DEE7E700DEE3E700DEE3E700E7E7
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EB
      EF00E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7E700DEE3E700DEDFDE00DEDFDE00DEE3
      E700E7E7E700E7E7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEE7E700DEE7
      E700E7EBEF00E7E7E700DEE7E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7
      E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7E700E7E7E700E7E7EF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE7EF00DEE7E700DEE3
      E700DEE3E700DEE7EF00E7EBEF00E7EBEF00E7EBEF00DEE7EF00DEE3E700DEE3
      E700DEDFDE00DEDFE700DEE3E700E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00DEE7E700DEE7E700DEE7E700DEE7
      E700DEE3E700E7E7EF00DEE3E700DEDFE700DEDFE700DEE3E700DEE7E700DEE3
      E700DEE3E700DEE7E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00DEE7E700DEE3E700DEE3E700DEE3E700DEDFE700DEDFDE00DEDFDE00DEE3
      E700DEE3E700DEE3E700DEE7E700E7E7E700E7EBEF00E7EBEF00E7E7EF00E7E7
      E700E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700DEE7
      E700DEE7E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7E7EF00E7E7E700E7E7
      E700DEE3E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7E700E7E7E700E7E7
      E700DEE7E700E7E7EF00E7E7EF00E7E7EF00DEE7EF00DEE7EF00DEE7EF00DEE7
      EF00DEE7EF00DEE7EF00E7EBEF00E7E7EF00DEE7E700DEE3E700D6DFE700D6DF
      E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00DEE3E700DEE3E700DEE3
      E700DEE7E700E7E7EF00DEE3E700DEDFE700DEDFE700E7E7EF00E7E7EF00DEE3
      E700DEE3E700DEE7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7E700DEE7E700DEE7
      E700DEE3E700DEE3E700DEE7E700E7E7E700DEE7E700DEE3E700DEE3E700E7E7
      EF00DEE3E700DEE7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7EF00E7E7EF00E7EBEF00E7E7EF00E7E7E700E7E7
      E700E7E7E700E7E7E700DEE3E700DEE3E700DEE7E700DEE7E700DEE3E700DEE3
      E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE7EF00DEE7
      EF00DEE7EF00DEE7EF00DEE7E700DEE3E700D6DFE700D6DFE700D6DFE700D6DF
      E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE3E700DEE3
      E700E7E7EF00DEDFE700DEDFE700DEE7E700E7E7EF00DEE3E700DEE3E700E7E7
      EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7E700E7E7E700DEE7E700DEE3E700DEE3E700DEE3
      E700DEE7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE7E700DEE7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7
      EF00E7EBEF00E7E7E700DEE7E700DEE3E700DEE3E700DEE3E700DEE3E700DEE7
      E700E7E7EF00E7E7E700DEE7E700E7E7E700E7E7EF00E7E7EF00E7E7E700DEE3
      E700E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE7EF00DEE7
      EF00DEE7E700DEE3E700DEE3E700DEDFE700D6DFE700D6DFE700DEE3E700DEE7
      EF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE3E700DEE3
      E700DEE3E700DEDFE700DEDFE700E7E7EF00E7EBEF00DEE7E700DEE3E700DEE7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7EBEF00E7EB
      EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      EF00DEE7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00DEE3E700DEE3E700DEE7E700E7E7E700E7E7E700E7E7E700E7E7EF00E7E7
      EF00EFEFEF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7EBEF00E7EB
      EF00E7E7E700E7E7E700DEE3E700DEE3E700DEDFE700DEE3E700DEE3E700DEE3
      E700DEE3E700DEE3E700DEE3E700DEE7E700E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EB
      EF00DEE7EF00DEE7E700DEE3E700DEE3E700DEE3E700DEE3E700E7E7EF00E7EB
      EF00E7E7EF00DEE3E700DEE3E700DEE3E700E7E7EF00E7EBEF00E7EBEF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE7E700DEE3E700DEE3
      E700DEE3E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EFEF00E7EBEF00DEE7
      E700E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7E700E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7E7EF00E7E7
      E700DEE7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      EF00E7EBEF00E7EBEF00E7E7E700DEE7E700DEE7E700E7E7E700E7EBEF00E7EB
      EF00DEE3E700DEE3E700DEE3E700DEE7E700E7E7E700E7E7E700DEE7E700DEE7
      E700DEE3E700DEE3E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00DEE7EF00DEE3E700DEE3E700DEE7E700E7E7EF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00DEE7E700DEE7
      E700E7E7E700EFEFEF00EFEFF700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7E7E700E7E7E700E7E7EF00E7E7EF00E7E7EF00E7E7E700E7E7E700E7E7
      EF00E7E7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7EBEF00E7E7EF00DEE7
      E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7
      EF00E7E7E700E7E7E700E7E7E700DEE7E700DEE7E700E7E7E700E7E7E700E7E7
      E700DEE3E700DEE3E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7E7EF00E7E7
      EF00E7E7E700E7E7EF00E7EBEF00E7EBEF00DEE7E700DEE3E700DEE3E700DEE3
      E700E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00DEE7EF00DEE7EF00DEE7EF00DEE7EF00E7E7
      EF00E7EBEF00E7EFEF00EFEFF700EFEFF700E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EFEF00E7E7EF00DEE3E700DEE3E700E7EB
      EF00DEE3E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7
      E700E7E7EF00E7EBEF00E7E7EF00DEE7E700DEE7E700E7E7E700E7E7E700DEE3
      E700E7E7EF00E7E7EF00E7E7EF00E7E7E700DEE3E700DEE3E700DEE3E700DEE7
      E700DEE3E700DEE3E700DEE7E700E7E7E700E7E7E700E7E7E700DEE7E700DEE7
      E700E7EBEF00E7E7EF00E7E7E700DEE7E700DEE7E700E7E7E700E7EBEF00E7EB
      EF00DEE3E700E7E7E700E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00DEE3
      E700DEE7E700E7E7EF00E7E7EF00E7E7EF00DEE7EF00DEE7EF00DEE7EF00DEE7
      EF00E7EFEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7EBEF00E7EFEF00E7EFEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EB
      EF00E7E7E700E7E7E700E7EBEF00E7EBEF00E7E7E700DEE3E700E7E7E700E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7EF00E7E7
      EF00E7E7E700E7E7E700DEE7E700DEE3E700DEE3E700DEE7E700E7E7E700E7E7
      E700DEE7E700E7E7EF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7EB
      EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7
      EF00DEE3E700E7EBEF00E7EBEF00DEE7E700DEE3E700E7E7E700E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7EBEF00E7E7EF00DEE7E700DEE3E700DEE3E700DEE7E700E7E7EF00E7EB
      EF00DEDFE700DEDFE700DEDFE700DEE3E700DEE3E700E7E7EF00E7E7EF00E7E7
      EF00DEE3E700E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEE7E700E7E7E700E7EB
      EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EFEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700DEE3
      E700DEE3E700DEE7E700DEE7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7EFEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700DEE3
      E700DEE3E700DEE3E700E7E7E700E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7E7E700E7EBEF00EFEFEF00E7EBEF00E7EBEF00E7EBEF00EFEFEF00EFEF
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE7E700E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE7
      EF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE3E700DEE3E700DEE7E700E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE3
      E700E7EBEF00E7E7EF00E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EFEF00E7EFEF00E7EBEF00E7EBEF00E7E7E700E7E7
      E700DEE7E700DEE7E700E7E7E700E7E7EF00E7EBEF00E7E7EF00DEE3E700DEDF
      E700DEE3E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      E700DEE7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700DEE3E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7
      E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7EBEF00E7EFEF00EFEFEF00E7EBEF00E7EBEF00E7EF
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EB
      EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      EF00E7EFEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE7
      E700E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00EFEFEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EF
      EF00E7EBEF00E7EFEF00EFEFEF00E7EFEF00E7EBEF00E7E7E700DEE7E700DEE7
      E700DEE3E700DEE3E700E7E7E700E7E7E700E7E7E700DEE7E700DEE3E700DEE3
      E700DEE7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7
      E700DEE3E700DEE3E700DEE3E700DEE3E700E7E7E700E7E7EF00E7E7EF00E7E7
      E700DEE3E700DEE3E700DEE7E700DEE7E700E7E7EF00E7EBEF00E7EBEF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7
      E700E7E7E700DEE3E700DEE3E700E7EBEF00E7EBEF00E7E7EF00E7E7E700E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00EFEB
      EF00E7EFEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00DEE7E700DEE3E700DEE3E700DEE3E700E7E7EF00E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00DEE7E700E7E7EF00E7EBEF00E7EF
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700DEE3E700E7E7EF00E7EF
      EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00EFEF
      EF00DEE7E700E7E7EF00E7EBEF00E7EBEF00E7E7E700DEE3E700E7E7E700E7E7
      EF00DEE7E700DEE7E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      E700E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE3E700E7E7E700E7E7E700DEE3
      E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7E700DEE3E700E7E7EF00E7EBEF00E7E7EF00E7E7E700E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE3E700DEE7E700E7E7EF00E7EB
      EF00E7EBEF00E7E7EF00DEE7E700DEE7E700E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00DEE3E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700DEE3E700E7E7E700E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EFEF00EFEF
      EF00E7E7EF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE3E700DEE3E700E7E7
      E700E7E7E700E7E7E700DEE7E700DEE3E700DEE3E700DEE7E700E7E7E700E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00DEE7E700DEE7E700E7E7E700E7E7EF00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7EB
      EF00EFEFEF00E7EBEF00E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7E3E700DEE3E700DEE3E700DEE3E700DEE3E700DEDF
      E700DEE3E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00DEE7E700DEE7E700DEE7E700DEE3E700DEE3
      E700DEE3E700DEE7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBE700E7E7E700E7E7E700E7EB
      EF00EFEFEF00E7EFEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      E700E7E7E700E7E7E700DEE7E700DEE3E700DEE3E700DEE3E700DEE7E700DEE7
      E700E7E7E700E7E7E700DEE7E700DEE7E700DEE7E700E7E7E700E7EBEF00E7EB
      EF00DEE3E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EF
      EF00E7E7EF00E7EBEF00E7E7EF00E7E7E700E7E7EF00E7EBEF00E7EBEF00E7E7
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7E700DEE7E700DEE3E700DEE7E700E7E7
      E700E7E7EF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7EBEF00E7EBEF00E7E7
      E700E7EBEF00EFEBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7
      EF00DEDFE700DEE3E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE3
      E700E7EBEF00E7EBEF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE3
      E700E7EBEF00E7E7E700DEE7E700E7E7E700E7E7E700E7E7E700DEE3E700DEE7
      E700E7E7E700E7E7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      E700E7E7E700DEE3E700DEE3E700DEE3E700E7EBEF00E7EBEF00E7EBEF00E7E7
      E700DEDFE700DEE3E700DEE3E700DEE3E700DEE3E700E7E7E700E7E7E700E7E7
      EF00E7E7E700E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700DEE3
      E700DEE3E700DEE7E700E7E7EF00E7E7E700E7E7EF00E7E7E700E7EBEF00E7EB
      EF00DEE3E700E7EBEF00E7EBEF00E7E7E700E7E7EF00E7EBEF00E7EBEF00E7E7
      EF00E7E3E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E3E700DEE3E700DEDF
      E700E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7EF00DEE7E700DEE7E700DEE7E700E7E7EF00E7E7
      EF00DEE3E700DEE3E700DEE7EF00E7EBEF00E7EBEF00DEE7E700DEE7EF00E7EB
      EF00E7EBEF00E7EBEF00DEE7EF00DEE3E700DEE3E700DEE3E700E7E7EF00E7EB
      EF00DEE7E700E7E7E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700E7E7E700E7E7E700E7E7E700E7EBEF00E7EBEF00E7E7E700E7E7E700E7EB
      EF00DEDFDE00DEDFDE00DEDFDE00DEDFE700DEE3E700DEE3E700DEE3E700DEE3
      E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7EBEF00E7EB
      EF00DEE7E700DEE7EF00DEE7EF00DEE7EF00DEE3EF00DEE7E700DEE7EF00E7E7
      EF00E7E7EF00DEE3E700DEDFE700DEDFE700DEE3EF00E7EBEF00E7EBEF00E7EB
      EF00EFEFF700EFEFEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00EFEF
      EF00E7EBEF00E7EBEF00EFEFEF00EFEFEF00E7EBEF00E7E7E700DEE3E700DEE3
      E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7EBEF00E7E7EF00E7E7EF00DEE7E700DEE3E700DEE3E700DEE3E700DEE3
      E700DEDFE700DEE3E700DEE3EF00E7E7EF00DEE7EF00DEE3EF00E7E7EF00E7EF
      F700DEE7EF00E7E7EF00E7EBEF00E7E7EF00DEE7EF00DEE7EF00DEE7EF00E7E7
      EF00DEDFE700DEE3E700DEE3E700DEE3E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7
      EF00E7EBEF00E7EBEF00E7E7E700DEE3E700DEE3E700DEDFDE00D6DBDE00D6DB
      DE00DEDFE700DEE3E700DEE3E700DEE7E700E7E7E700E7E7E700E7E7EF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE7EF00DEE7EF00E7E7EF00E7E7
      EF00DEE7EF00DEE3E700DEE3E700DEE3EF00E7E7EF00E7EBF700E7EBF700E7EF
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7EBEF00E7EB
      EF00E7E7E700E7E7E700E7E7E700E7E7E700DEE3E700DEE3E700E7E7E700E7E7
      E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7
      EF00E7E7EF00DEE7EF00DEE7EF00DEE7EF00DEE3E700DEE3E700DEE3E700E7E7
      EF00DEE7EF00E7E7EF00E7EBEF00E7E7EF00DEE3E700DEDFE700DEDFE700DEE3
      E700DEDFE700DEE3E700DEE3E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7E700E7E7E700E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7
      EF00DEE3E700DEE3E700DEE3E700DEE3E700E7E7E700E7E7EF00E7EBEF00E7EB
      EF00DEDFDE00DEDFDE00DEDFE700DEE3E700DEDFE700DEDFE700DEE3E700DEE3
      E700DEE7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00DEE3EF00DEE3E700DEE3E700DEE7EF00E7E7EF00E7E7EF00DEE7EF00DEE3
      E700E7E3E700E7E7E700E7E7E700E7E7E700DEE3E700DEE3E700DEE3E700DEE3
      E700E7E7E700E7E7E700E7E7E700DEE3E700DEE3E700DEE3E700E7E7E700E7E7
      EF00DEE3E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7EF00DEE7E700DEE3
      E700DEDFE700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700DEDFE700DEDFE700DEE3E700DEE3E700DEE3E700DEE3EF00E7E7EF00E7EB
      EF00DEE3E700DEE7EF00DEE7EF00DEE3E700DEDFE700DEDFE700DEE3E700DEE7
      E700E7E7E700E7E7EF00E7EBEF00E7EBEF00EFEFEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7E700E7E7E700E7E7
      E700DEE3E700DEE7E700E7E7E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700DEE3E700DEE3E700DEE3
      E700DEDFE700DEDFE700DEE3E700DEE3E700DEE3E700DEDFE700DEDFE700DEE3
      E700DEDFE700DEDFE700DEDFE700DEE3E700DEE3E700DEE3E700DEE3E700DEDF
      E700DEE3E700E7E7E700E7E7E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEE3E700DEE3E700DEE3
      E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700DEDFE700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEDF
      E700DEE3E700DEE3E700DEE3E700DEE3E700DEDFE700DEDFE700DEDFE700DEDF
      E700DEDFE700DEE3E700DEE3E700DEE7E700DEE7E700DEE7EF00E7EBEF00E7EF
      F700E7EBEF00E7EBEF00E7EFEF00EFEFEF00EFEFEF00E7EFEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7E700DEE7E700DEE7E700DEE7E700DEE3E700DEE3
      E700E7E7E700E7E7EF00E7E7EF00E7E7E700DEE3E700DEE3E700DEE3E700E7E7
      E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700DEE3E700DEE3E700DEE3
      E700D6DFDE00D6DFE700D6DFE700D6DBDE00D6DBDE00D6DBDE00D6D7DE00D6D7
      DE00D6DBDE00D6DBDE00D6DBDE00D6DFE700DEE3E700DEE3E700DEE7E700DEE7
      EF00DEE3E700E7E7E700DEE3E700DEE3E700DEE3E700DEE3E700E7E7E700E7E7
      E700DEE3E700E7E7E700E7E7E700E7E7E700DEE3E700DEE3E700DEE3E700DEE3
      E700E7EBEF00E7E7EF00E7E7EF00E7E7EF00DEE7E700DEE3E700DEE3E700DEE3
      E700DEE3E700DEE7E700DEE7E700DEE7E700DEE3E700DEE3E700DEE3E700DEDF
      E700DEE7E700DEE7EF00DEE3E700DEDFE700D6DFE700D6DBDE00D6DBDE00D6D7
      DE00DEDFE700DEE3E700DEE7E700DEE7EF00DEE7EF00DEE7EF00DEE7EF00DEE7
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7E700DEE3E700DEDFE700DEE3E700DEE3E700DEE3E700DEDF
      E700DEDFE700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7
      EF00DEDFE700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700DEE7EF00DEE7E700DEE3E700DEDFE700D6DFDE00D6DBDE00D6DBDE00D6DB
      DE00DEDFE700D6DFE700D6DFE700D6DFDE00D6DFE700DEDFE700DEDFE700DEE3
      E700DEDFDE00DEDFE700DEE3E700DEE3E700DEE3E700DEE3E700E7E7E700E7EB
      EF00E7E7E700E7E7E700E7E7E700DEE3E700DEE3E700E7E7E700E7E7EF00E7EB
      EF00E7E7EF00E7E7EF00DEE7E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700DEDFE700DEDFE700DEDFE700DEDFE700DEDFE700DEDFE700DEDFDE00D6DB
      DE00D6DBDE00DEDFE700DEDFE700DEDFE700DEE3E700E7E7EF00E7EBEF00E7E7
      EF00DEE3E700DEE3E700DEE3E700DEE7E700DEE7E700DEE3E700DEE3E700DEDF
      E700E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE7E700DEE3E700DEE3E700DEDFDE00DEDFE700DEE7E700DEE7E700DEE3
      E700E7E7E700E7E7EF00E7E7E700DEE3E700DEDFDE00DEDFDE00DEDFDE00DEE3
      E700DEE7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700DEE7E700DEE7E700DEE3E700DEE3E700DEDFE700DEDFDE00D6DBDE00D6DB
      DE00DEDFDE00DEDFE700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3
      E700E7E7E700E7E7E700E7E7E700E7E7E700DEE3E700E7E7E700E7E7E700E7E7
      EF00DEDFDE00D6DBDE00D6DBDE00D6DBDE00DEDFDE00DEDFE700DEDFE700DEDF
      E700DEE3E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEE3E700DEE7E700E7E7EF00DEE3
      E700E7E7EF00DEE3E700DEDFE700DEDFE700DEE3E700E7E7EF00E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00DEE3E700DEE3E700DEDFE700DEDFDE00DEE3E700E7E7EF00E7E7EF00DEE7
      E700E7E7E700E7E7E700E7E7E700DEE7E700DEE3E700DEE3E700DEE3E700E7E7
      E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7E7
      E700DEE7E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7
      EF00DEE7E700E7E7EF00E7E7EF00E7E7EF00E7E7EF00DEE7E700DEE7E700DEE7
      E700E7E7E700E7E7E700E7E7EF00E7E7E700E7E7E700DEE3E700DEDFE700DEDF
      E700DEDFDE00DEE3E700DEE3E700DEE3E700DEE3E700DEDFDE00DEDFDE00DEDB
      DE00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00DEE7E700DEE3
      E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00DEE7E700DEE7E700E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      EF00DEE7E700DEE7E700E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7EF00E7E7E700E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7
      EF00DEE3E700DEE7E700DEE3E700DEE3E700E7E7E700E7E7E700DEE7E700E7EB
      EF00E7EBEF00E7EBEF00E7E7E700DEE7E700DEE3E700DEDFE700DEE7E700E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7E7EF00DEE3E700DEE3E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7
      E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00EFEFEF00E7EBEF00E7EBEF00E7EB
      EF00EFEFF700E7EFEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7E7
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00DEE7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00DEE3E700DEE7E700E7E7EF00E7E7EF00DEE7E700DEE7E700E7E7EF00E7E7
      EF00E7EBEF00E7E7E700E7E7E700E7E7E700E7E7E700DEE3E700DEDFE700DEDF
      DE00E7E7E700E7E7EF00DEE3E700DEE3E700DEE7E700DEE3E700DEDFE700DEE3
      E700DEE3E700DEE7E700E7E7E700E7EBEF00E7E7E700DEE3E700DEE7E700E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      E700DEDFE700DEDFE700DEE3E700DEE3E700DEE7E700E7E7EF00E7EBEF00E7EB
      EF00E7EBEF00EFEFF700E7EFEF00E7EBEF00E7EBEF00E7EFEF00E7EBEF00E7E7
      EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00EFEFF700E7EFEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7E7EF00DEE7
      E700DEE3E700DEE3E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7
      E700DEE3E700E7E7E700E7EBEF00E7E7E700DEE3E700DEE3E700E7E7E700E7EB
      EF00DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700DEE3E700DEE3
      E700DEE7E700DEE7E700DEE3E700DEE3E700DEE7E700DEE7E700DEE7E700DEE7
      E700DEE3E700DEE7E700E7E7EF00E7EBEF00E7E7EF00DEE7E700DEE7E700E7E7
      EF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700DEDFDE00DEE3E700E7E7E700E7EBEF00E7E7EF00E7EBEF00E7EBEF00E7EF
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE3
      E700E7E7EF00E7E7E700E7E7E700E7E7E700E7E7E700E7EBEF00E7EBEF00EFEF
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00DEE7E700DEE3E700DEE3
      E700DEE3E700DEE7E700E7EBEF00E7EBEF00E7EBEF00E7E7EF00DEE3E700DEDF
      E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7EF00E7EB
      EF00E7EBEF00DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700DEE7E700DEE7
      E700DEE3E700DEE3E700D6DFDE00DEE3E700E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7E700DEE7E700DEE3E700DEE3E700E7E7E700E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7E700E7E7E700E7E7E700DEE7
      E700DEE7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7E700DEE7E700DEE3
      E700E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EB
      EF00EFEFEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00E7EBEF00E7EBEF00E7EBEF00DEE7E700DEE3E700DEDFE700DEE3E700DEE3
      E700E7E7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7E700DEE3
      E700E7EBEF00E7E7EF00E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EFEF00DEE7E700DEE3E700DEE3E700DEE3E700DEDFDE00DEE3E700DEE3
      E700DEE7E700DEE7E700DEE3E700DEE3E700E7EBEF00E7EBEF00DEE7E700DEE7
      E700E7EFEF00E7EBEF00E7E7E700DEE3E700DEE3E700DEE3E700E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7E700DEE3E700DEE3
      E700E7E7E700E7E7E700DEE3E700DEE3E700E7E7E700E7E7EF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00EFEFF700E7EBEF00E7E7EF00E7E7EF00DEE3E700DEE7E700E7E7EF00E7E7
      EF00E7E7EF00E7E7EF00E7E7EF00DEE3E700DEE3E700DEE3E700DEE3E700E7E7
      EF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7E7E700E7EBEF00E7EB
      EF00E7EBEF00E7E7E700E7E7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7E7
      E700E7EBEF00DEE7E700DEE3E700DEE3E700DEE3E700DEDFDE00DEE3E700DEE3
      E700DEE3E700DEE3E700D6DFDE00D6DFDE00DEE7E700E7EBEF00DEE7E700E7EB
      EF00E7E7E700E7E7EF00E7E7EF00E7E7E700E7E7E700E7E7EF00E7EBEF00E7E7
      EF00E7E7E700E7E7E700E7E7E700E7E7E700DEE7E700DEE3E700DEE3E700DEE3
      E700E7E7EF00E7E7E700DEE3E700DEE3E700E7E7E700E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00EFEF
      EF00E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7EF00E7E7EF00E7E7EF00E7E7
      EF00EFEFF700E7EBEF00E7E7EF00DEE7E700E7E7EF00E7E7EF00DEE7E700DEE3
      E700DEE3E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7EF00E7E7EF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7E700E7EBEF00E7EB
      EF00E7E7E700E7E7E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7E7E700DEE3
      E700E7E7E700DEE3E700DEE3E700DEE3E700DEE7E700DEE3E700DEE7E700DEE7
      E700D6DFDE00DEDFDE00D6DFDE00D6DFDE00DEE7E700DEE7E700DEE7E700E7EB
      EF00DEE3E700E7E7E700E7EBEF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00DEE7
      E700DEE7E700DEE3E700DEE3E700DEE3E700DEE3E700DEE3E700DEE7E700E7E7
      E700E7E7EF00E7E7EF00E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7E7E700E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7EF00E7E7EF00E7E7EF00E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7E7EF00DEE7E700DEE7E700E7E7EF00E7EBEF00E7EBEF00E7E7EF00DEE3
      E700DEE3E700DEE3E700DEE3E700DEE7E700E7EBEF00E7EBEF00E7EBEF00E7E7
      EF00E7E7E700E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7E700DEE3
      E700E7E7E700DEE7E700DEE7E700DEE7E700DEE7E700DEE3E700DEDFDE00DEDF
      DE00DEE3E700DEE7E700DEE3E700DEE3E700DEE7E700DEE7E700DEE3E700DEE7
      E700E7E7EF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7EBEF00E7E7E700DEE3
      E700DEE7E700DEE3E700DEDFE700DEDFDE00DEDFE700DEE3E700E7E7EF00E7EB
      EF00E7E7E700E7EBEF00E7EBEF00E7EBEF00E7E7E700E7E7E700E7E7E700E7E7
      E700E7EBEF00E7E7EF00E7E7EF00E7EBEF00EFEFEF00E7EBEF00E7EBEF00E7EB
      EF00E7EBEF00E7EBEF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7EF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EBEF00E7EB
      EF00}
    RowSize = 22
    RowSnap = False
    TabOrder = 5
    OnBandInfo = ControlBarBandInfo
    OnBandMove = ControlBarBandMove
    object ToolBar: TToolBar
      Left = 11
      Top = 27
      Width = 631
      Height = 52
      AutoSize = True
      ButtonHeight = 52
      ButtonWidth = 53
      Caption = 'ToolBar'
      EdgeBorders = []
      EdgeOuter = esNone
      Flat = True
      Images = ilToolbar
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Transparent = True
      Wrapable = False
      object tbCol: TToolButton
        Left = 0
        Top = 0
        Hint = 'Erstellt eine neue Sammlung / wählt vorhandene Sammlungen aus.'
        Caption = 'Sammlungen'
        DropdownMenu = pmCols
        ImageIndex = 0
        Style = tbsDropDown
        OnClick = menNewColClick
      end
      object tbAddDisk: TToolButton
        Left = 66
        Top = 0
        Hint = 'Liest einen oder mehrere neue Datenträger ein.'
        Caption = 'Einlesen'
        ImageIndex = 1
        OnClick = menAnyDiskAddClick
      end
      object ToolButton12: TToolButton
        Left = 119
        Top = 0
        Width = 8
        Caption = 'ToolButton12'
        ImageIndex = 10
        Style = tbsSeparator
      end
      object tbSearch: TToolButton
        Left = 127
        Top = 0
        Hint = 'Durchsucht die aktuelle Sammlung nach Dateien oder Ordnern.'
        Caption = 'Suchen'
        ImageIndex = 2
        OnClick = menSearchClick
      end
      object ToolButton11: TToolButton
        Left = 180
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        ImageIndex = 10
        Style = tbsSeparator
      end
      object tbNewList: TToolButton
        Left = 188
        Top = 0
        Hint = 'Erstellt eine neue (leere) Liste.'
        Caption = 'neue Liste'
        ImageIndex = 3
        OnClick = tbNewListClick
      end
      object tbList: TToolButton
        Left = 241
        Top = 0
        Hint = 
          'Speichert alle angezeigten Dateien, Ordner und Datenträger'#13#10'in e' +
          'iner Liste, die z.B. exportiert werden kann.|Ansicht in Liste sp' +
          'eichern'
        Caption = 'Liste aus An.'
        ImageIndex = 4
        OnClick = menSaveViewToListClick
      end
      object tbGenList: TToolButton
        Left = 294
        Top = 0
        Hint = 
          'Erzeugt aus bestehenden Listen neue Listen mit z.B.'#13#10'doppelten D' +
          'ateien etc.|Listen vergleichen'
        Caption = 'Vergleichen'
        ImageIndex = 11
        OnClick = tbGenListClick
      end
      object tbExport: TToolButton
        Left = 347
        Top = 0
        Hint = 
          'Exportiert eine Liste z.B. zur Weitergabe oder -verarbeitung.|Li' +
          'ste Exportien'
        Caption = 'Exportieren'
        ImageIndex = 10
        OnClick = tbExportClick
      end
      object ToolButton10: TToolButton
        Left = 400
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 10
        Style = tbsSeparator
      end
      object tbView: TToolButton
        Left = 408
        Top = 0
        Hint = 'Konfiguriert die Listenansicht.'
        Caption = 'Ansicht'
        DropdownMenu = pmListviewStyle
        ImageIndex = 5
        Style = tbsDropDown
        OnClick = menListLayoutClick
      end
      object btnReg: TSpeedButton
        Left = 474
        Top = 0
        Width = 109
        Height = 52
        Caption = 'registrieren'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        OnClick = btnRegClick
      end
      object tbUpd: TToolButton
        Left = 583
        Top = 0
        Hint = 'Prüft online auf Updates.'
        Caption = 'Update?'
        ImageIndex = 8
        OnClick = menCheckUpdateClick
      end
      object tbHelp: TToolButton
        Left = 636
        Top = 0
        Hint = 'Ruft die Hilfe im Internet auf.'
        Caption = 'Net-Hilfe'
        ImageIndex = 9
        OnClick = menWebHelpClick
      end
      object ToolButton9: TToolButton
        Left = 689
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 10
        Style = tbsSeparator
      end
    end
    object tbAddress: TToolBar
      Left = 11
      Top = 83
      Width = 678
      Height = 21
      Align = alNone
      Anchors = [akLeft, akTop, akRight]
      ButtonHeight = 21
      ButtonWidth = 60
      Caption = 'Adresse'
      EdgeBorders = []
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShowCaptions = True
      TabOrder = 2
      Transparent = True
      Wrapable = False
      OnResize = tbAddressResize
      object tbtnAddress: TToolButton
        Left = 0
        Top = 0
        AutoSize = True
        Caption = 'Ad&resse'
        ImageIndex = 0
        OnClick = tbtnAddressClick
      end
      object cbAdresse: TComboBox
        Left = 57
        Top = 0
        Width = 466
        Height = 21
        Hint = 
          'Adresse der angezeigten Dateien.'#13#10'Syntax:'#13#10'  <Datenträger> = Dat' +
          'enträgerinhalt'#13#10'  <Datenträger>\Pfad = Normaler Ordner'#13#10'  \Pfad ' +
          '= Verbundordner'#13#10'  Search: Begriffe /parameter = Suchergebnis|Ad' +
          'resse der angezeigten Dateien.'#13#10'  List:Listenname = Dateiliste'#13#10 +
          '  [<Datenträger>]\Pfad\Dateiname = Öffnet die angegebene Datei (' +
          '<Datenträger optional>)'
        HelpContext = 950
        Anchors = [akLeft, akTop, akRight, akBottom]
        Constraints.MinWidth = 30
        DropDownCount = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        OnDropDown = cbAdresseDropDown
        OnExit = cbAdresseExit
        OnKeyPress = cbAdresseKeyPress
        Items.Strings = (
          'test')
      end
      object Splitter4: TSplitter
        Left = 523
        Top = 0
        Width = 3
        Height = 21
        Cursor = crHSplit
        ResizeStyle = rsUpdate
        OnCanResize = Splitter4CanResize
      end
      object tbtnLayout: TToolButton
        Left = 526
        Top = 0
        Caption = 'Layout'
        DropdownMenu = pmLayout
        ImageIndex = 1
        Style = tbsDropDown
        OnClick = menListLayoutClick
      end
      object cbLayout: TComboBox
        Left = 599
        Top = 0
        Width = 145
        Height = 21
        HelpContext = 952
        Constraints.MinWidth = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        Sorted = True
        TabOrder = 1
        OnDropDown = cbLayoutDropDown
        OnEnter = cbLayoutEnter
        OnKeyPress = cbLayoutKeyPress
      end
    end
  end
  object pListview: TPanel
    Left = 253
    Top = 106
    Width = 556
    Height = 500
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object ListView: TListView
      Tag = 1
      Left = 0
      Top = 0
      Width = 556
      Height = 500
      HelpContext = 960
      Align = alClient
      Columns = <>
      Constraints.MinWidth = 157
      FullDrag = True
      HideSelection = False
      LargeImages = ilThumbs
      MultiSelect = True
      RowSelect = True
      ParentShowHint = False
      PopupMenu = pmListView
      ShowHint = False
      TabOrder = 0
      ViewStyle = vsReport
      OnColumnClick = ListViewColumnClick
      OnContextPopup = ListViewContextPopup
      OnCustomDrawItem = ListViewCustomDrawItem
      OnCustomDrawSubItem = ListViewCustomDrawSubItem
      OnDblClick = ListViewDblClick
      OnEdited = ListViewEdited
      OnEditing = ListViewEditing
      OnGetImageIndex = ListViewGetImageIndex
      OnKeyDown = ListViewKeyDown
      OnKeyUp = ListViewKeyUp
      OnMouseMove = ListViewMouseMove
      OnResize = ListViewResize
      OnSelectItem = ListViewSelectItem
    end
    object cbCopyFilesCreateSub: TCheckBox
      Left = 216
      Top = 32
      Width = 121
      Height = 17
      Caption = 'Unterordner anlegen'
      TabOrder = 1
      Visible = False
    end
  end
  object MainMenu: TMainMenu
    Images = ilMenus
    Top = 16
    object menFile: TMenuItem
      Caption = '&Datei'
      HelpContext = 110
      object N8: TMenuItem
        Tag = -1
        Caption = '-'
      end
      object menNewCol: TMenuItem
        Tag = -1
        Caption = '&Neu...'
        HelpContext = 111
        Hint = 'Neue Sammlung anlegen.'
        ImageIndex = 0
        ShortCut = 32813
        OnClick = menNewColClick
      end
      object menFileDelete: TMenuItem
        Tag = -1
        Caption = 'Lös&chen'
        HelpContext = 116
        Hint = 'Sammlung löschen.'
        ImageIndex = 6
      end
      object menRepair: TMenuItem
        Tag = -1
        Caption = 'Reparieren...'
        HelpContext = 117
        Hint = 'Datenbankfehler versuchen zu reparieren.'
        ImageIndex = 50
        OnClick = menRepairClick
      end
      object N14: TMenuItem
        Tag = -1
        Caption = '-'
      end
      object menSearch: TMenuItem
        Tag = -1
        Caption = '&Suchen...'
        HelpContext = 113
        Hint = 'Nach Dateien suchen.'
        ImageIndex = 43
        ShortCut = 24646
        OnClick = menSearchClick
      end
      object N21: TMenuItem
        Caption = '-'
      end
      object Beenden1: TMenuItem
        Tag = -1
        Caption = 'Beenden'
        Hint = 'MyFindex beenden.'
        ImageIndex = 49
        ShortCut = 32883
        OnClick = Beenden1Click
      end
    end
    object menEdit: TMenuItem
      Caption = '&Bearbeiten'
      HelpContext = 120
      object menColConfig: TMenuItem
        Caption = '&Eigenschaften...'
        HelpContext = 121
        Hint = 'Sammlungstitel und überwachte Laufwerke festlegen.'
        ImageIndex = 3
        ShortCut = 40973
        OnClick = menColConfigClick
      end
      object menAnyDiskAdd: TMenuItem
        Caption = 'Datenträger &hinzufügen...'
        HelpContext = 122
        Hint = 'Einen Datenträger einlesen.'
        ImageIndex = 4
        ShortCut = 8237
        OnClick = menAnyDiskAddClick
      end
      object N34: TMenuItem
        Caption = '-'
      end
      object menColEditor: TMenuItem
        Caption = 'Sammlung bearbeiten'
        OnClick = menColEditorClick
      end
    end
    object menList: TMenuItem
      Caption = '&Listen'
      HelpContext = 130
      object menListNew: TMenuItem
        Tag = -1
        Caption = '&Neu...'
        HelpContext = 135
        Hint = 'Neue (leere) Liste anlegen.'
        ImageIndex = 11
        ShortCut = 16429
        OnClick = tbNewListClick
      end
      object menSaveViewToList: TMenuItem
        Tag = -1
        Caption = 'Neu aus Ansicht...'
        HelpContext = 138
        Hint = 'Erzeugt eine neue Liste mit allen Dateien der aktuellen Ansicht.'
        ImageIndex = 40
        ShortCut = 16467
        OnClick = menSaveViewToListClick
      end
      object N31: TMenuItem
        Caption = '-'
      end
      object Exportieren1: TMenuItem
        Caption = 'Exportieren...'
        Hint = 'Liste exportieren.'
        ImageIndex = 9
        ShortCut = 16453
        OnClick = tbExportClick
      end
      object Generieren1: TMenuItem
        Caption = 'Generieren...'
        Hint = 'Erstellt neue Listen als Kombination vorhandener Listen.'
        ImageIndex = 8
        OnClick = tbGenListClick
      end
    end
    object Funktionen1: TMenuItem
      Caption = '&Funktionen'
      HelpContext = 160
      Hint = 
        'Vordefinierte Funktionen auf die gewählen oder alle Dateien der ' +
        'Ansicht anwenden.'
      object menQuickCopy: TMenuItem
        Caption = 'Dateien kopieren nach...'
        HelpContext = 162
        ImageIndex = 56
        OnClick = menQuickCopyClick
      end
      object menQuickExport: TMenuItem
        Caption = 'Schnelles Exportieren...'
        HelpContext = 161
        ImageIndex = 9
        OnClick = menQuickExportClick
      end
      object N33: TMenuItem
        Caption = '-'
      end
      object menQuickCompare: TMenuItem
        Tag = 1
        Caption = 'Schneller Vergleich...'
        ImageIndex = 8
        OnClick = menQuickListClick
      end
      object menShowDouble: TMenuItem
        Caption = 'Doppelte Dateien anzeigen...'
        HelpContext = 163
        ImageIndex = 30
        OnClick = menQuickListClick
      end
    end
    object Anzeige1: TMenuItem
      Caption = '&Ansicht'
      HelpContext = 140
      object menToolbar: TMenuItem
        Caption = 'Werkzeugleiste'
        HelpContext = 145
        Hint = 'Anzeigen oder Verbergen der Werkzeugleiste (Toolbar)'
        ImageIndex = 48
        OnClick = menToolbarClick
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object menViewDetail: TMenuItem
        Tag = 1
        Caption = 'Details'
        Checked = True
        GroupIndex = 1
        HelpContext = 141
        Hint = 'Detailansicht (Spalten)'
        ImageIndex = 33
        RadioItem = True
        OnClick = menViewClick
      end
      object menViewList: TMenuItem
        Tag = 2
        Caption = 'Liste'
        GroupIndex = 1
        HelpContext = 142
        Hint = 'Listenansicht (keine Spalten)'
        ImageIndex = 34
        RadioItem = True
        OnClick = menViewClick
      end
      object menViewPreview: TMenuItem
        Tag = 3
        Caption = 'Bild-Vorschau'
        GroupIndex = 1
        HelpContext = 143
        Hint = 'Vorschau von Bildern anzeigen'
        ImageIndex = 47
        RadioItem = True
        OnClick = menViewClick
      end
      object N13: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object menListLayout: TMenuItem
        Caption = 'Listenlayout...'
        GroupIndex = 2
        HelpContext = 144
        Hint = 'Anordnung der Spalten bearbeiten'
        ImageIndex = 36
        OnClick = menListLayoutClick
      end
      object N11: TMenuItem
        Caption = '-'
        GroupIndex = 2
      end
      object menTune: TMenuItem
        Caption = 'Tuning'
        GroupIndex = 2
        HelpContext = 143
        Hint = 'Tuning'
        ImageIndex = 37
        object menDiskviewFirst: TMenuItem
          Caption = 'Datenträgeranzeige bevorzugt'
          HelpContext = 241
          Hint = 'Vertauscht die Position von "Verbund" und "Datenträger" Anzeige.'
          OnClick = menDiskviewFirstClick
        end
        object menCombomodeDisabled: TMenuItem
          Caption = 'Verbundanzeige deaktivieren'
          HelpContext = 242
          Hint = 'Blendet die "Verbund"-Anzeige aus.'
          OnClick = menCombomodeDisabledClick
        end
      end
      object menConfig: TMenuItem
        Caption = 'Einstellungen...'
        GroupIndex = 2
        HelpContext = 145
        Hint = 'Erweiterte Einstellungen...'
        ImageIndex = 41
        OnClick = menConfigClick
      end
    end
    object menHelp: TMenuItem
      Caption = '&Hilfe'
      HelpContext = 150
      object menWebHelp: TMenuItem
        Caption = 'Hilfe... (www)'
        HelpContext = 151
        Hint = '[Online] Hilfe im Internet öffnen.'
        ImageIndex = 16
        OnClick = menWebHelpClick
      end
      object menFAQ: TMenuItem
        Caption = 'Häufig gestellte Fragen...'
        Default = True
        OnClick = menFAQClick
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object menCheckUpdate: TMenuItem
        Caption = 'Auf Updates prüfen... (www)'
        HelpContext = 152
        Hint = '[Online] Prüfen, ob die aktuellste Version benutzt wird.'
        ImageIndex = 19
        OnClick = menCheckUpdateClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object INFO1: TMenuItem
        Caption = 'Info...'
        HelpContext = 153
        Hint = 'Informationen und Statistik über MyFindex.'
        ImageIndex = 17
        OnClick = INFO1Click
      end
      object menFeedback: TMenuItem
        Caption = 'Feedback... (mail)'
        Hint = 'Dem Autor Kommetare per eMail senden.'
        ImageIndex = 45
        OnClick = menFeedbackClick
      end
    end
  end
  object ilMoreImages: TImageList
    Left = 149
    Top = 80
  end
  object pmDriveState: TPopupMenu
    Images = ilMenus
    OnPopup = pmDriveStatePopup
    Left = 96
    Top = 494
    object menEject: TMenuItem
      Tag = 1
      Caption = 'Auswerfen'
      HelpContext = 601
      ImageIndex = 23
      ShortCut = 8
      OnClick = menEjectClick
    end
    object N2: TMenuItem
      Tag = 1
      Caption = '-'
    end
    object menDiskAdd: TMenuItem
      Tag = 1
      Caption = 'Datenträger hinzufügen...'
      Enabled = False
      HelpContext = 122
      ImageIndex = 4
      ShortCut = 45
      OnClick = menDiskAddClick
    end
    object menDiskRefresh: TMenuItem
      Tag = 1
      Caption = 'Datenträger aktualisieren...'
      HelpContext = 510
      Hint = '*Liest den Datenträger neu ein'
      ImageIndex = 22
      ShortCut = 116
      OnClick = menDiskRefreshClick
    end
    object menDiskDelete2: TMenuItem
      Tag = 1
      Caption = 'Datenträger entfernen'
      HelpContext = 511
      Hint = 'Entfernt den Datenträger aus der Sammlung'
      ImageIndex = 5
      ShortCut = 46
      OnClick = menDiskDelete2Click
    end
    object N1: TMenuItem
      Tag = 1
      Caption = '-'
    end
    object Laufwerke1: TMenuItem
      Caption = 'Laufwerksverwaltung...'
      HelpContext = 121
      Hint = '*Öffnet den Dialog um u.a. die überwachten Laufwerke festzulegen'
      ImageIndex = 3
      ShortCut = 32781
      OnClick = menColConfigClick
    end
  end
  object tmrDrivestate: TTimer
    Enabled = False
    Interval = 2500
    OnTimer = tmrDrivestateTimer
    Left = 197
    Top = 494
  end
  object pmListView: TPopupMenu
    AutoPopup = False
    Images = ilMenus
    OnPopup = pmListViewPopup
    Left = 280
    Top = 192
    object menOpen: TMenuItem
      Tag = 14
      Caption = 'Öffnen'
      HelpContext = 501
      Hint = 'Öffnen'
      ImageIndex = 2
      OnClick = ListViewDblClick
    end
    object menFileOpen: TMenuItem
      Tag = 769
      Caption = 'Öffnen'
      HelpContext = 502
      Hint = 'Öffnen'
      ImageIndex = 2
      ShortCut = 13
      OnClick = ListViewDblClick
    end
    object OpenImExplorer: TMenuItem
      Tag = 778
      Caption = 'Im Explorer öffnen'
      HelpContext = 503
      Hint = 'Öffnet das Ziel im Explorer '
      ImageIndex = 13
      ShortCut = 16453
      OnClick = OpenImExplorerClick
    end
    object menJump: TMenuItem
      Tag = 7
      Caption = 'Enthaltenden Ordner öffnen'
      HelpContext = 504
      Hint = 'Öffnet den Ordner mit dem Ziel'
      ImageIndex = 44
      ShortCut = 16397
      OnClick = menJumpClick
    end
    object menExplorerJump: TMenuItem
      Tag = 259
      Caption = 'Enthaltender Ordner (Explorer)'
      HelpContext = 504
      Hint = 'Öffnet den Ordner mit dem Ziel im Explorer'
      ImageIndex = 44
      ShortCut = 24645
      OnClick = menExplorerJumpClick
    end
    object N5: TMenuItem
      Tag = 3
      Caption = '-'
    end
    object menLVDiskRefresh: TMenuItem
      Tag = 8
      Caption = 'Datenträger aktualisieren...'
      HelpContext = 510
      Hint = '*Liest den Datenträger neu ein'
      ImageIndex = 22
      ShortCut = 8308
      OnClick = menLVDiskRefreshClick
    end
    object menDiskDelete: TMenuItem
      Tag = 520
      Caption = 'Datenträger entfernen'
      HelpContext = 511
      Hint = 'Entfernt den Datenträger aus der Sammlung'
      ImageIndex = 5
      ShortCut = 8238
      OnClick = menDiskDeleteClick
    end
    object menlvRenameDisk: TMenuItem
      Tag = 8
      Caption = 'Umbenennen'
      ImageIndex = 3
      ShortCut = 113
      OnClick = menlvRenameDiskClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object menCopy: TMenuItem
      Tag = 771
      Caption = 'Kopieren'
      HelpContext = 520
      Hint = 
        'Kopiert das Objekt in die Zwischenablage (um es an anderer Stell' +
        'e mit Strg+V einzufügen)'
      ImageIndex = 20
      ShortCut = 16451
      OnClick = menCopyClick
    end
    object menCopyName: TMenuItem
      Tag = 515
      Caption = 'Namen kopieren'
      HelpContext = 521
      Hint = 'Kopiert den vollständigen Namen der Datei'
      ImageIndex = 21
      ShortCut = 49219
      OnClick = menCopyNameClick
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object menSearchInSel: TMenuItem
      Tag = 526
      Caption = 'Markierte Durchsuchen...'
      HelpContext = 530
      Hint = 'Durchsucht nur die markierten Ordner/Datenträger'
      ImageIndex = 35
      ShortCut = 24688
      OnClick = menSearchInSelClick
    end
    object menListAction: TMenuItem
      Tag = 527
      Caption = 'Liste'
      HelpContext = 531
      ImageIndex = 15
      object menLSwitch: TMenuItem
        Tag = 2
        Caption = 'Auswahl umkehren'
        HelpContext = 532
        ImageIndex = 29
        ShortCut = 32
        OnClick = menListEditClick
      end
      object menLAdd: TMenuItem
        Tag = 1
        Caption = 'Hinzufügen'
        HelpContext = 533
        ImageIndex = 27
        ShortCut = 45
        OnClick = menListEditClick
      end
      object menLDel: TMenuItem
        Caption = 'Entfernen'
        HelpContext = 534
        ImageIndex = 28
        ShortCut = 46
        OnClick = menListEditClick
      end
    end
    object Listen1: TMenuItem
      Tag = 527
      Caption = 'Drag'#39'n'#39'Drop in Liste'
      ImageIndex = 15
      ShortCut = 18
      OnClick = Listen1Click
    end
    object menSelAll: TMenuItem
      Caption = 'Alles markieren'
      HelpContext = 535
      ImageIndex = 26
      ShortCut = 16449
      OnClick = menSelAllClick
    end
    object N6: TMenuItem
      Tag = 8
      Caption = '-'
    end
    object menNote: TMenuItem
      Tag = 15
      Caption = 'Notiz'
      HelpContext = 540
      ImageIndex = 24
      ShortCut = 32846
      OnClick = menNoteClick
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object menLevelUp: TMenuItem
      Caption = 'Ebene Aufwärts'
      HelpContext = 550
      ImageIndex = 14
      ShortCut = 8
      OnClick = menLevelUpClick
    end
    object menBack: TMenuItem
      Caption = 'Zurück'
      HelpContext = 560
      ImageIndex = 1
      ShortCut = 226
      OnClick = menBackClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object menSearchFromLocation: TMenuItem
      Caption = 'Durchsuchen...'
      HelpContext = 570
      Hint = '*Startet die Suchmaske mit der aktuellen Position'
      ImageIndex = 42
      ShortCut = 16454
      OnClick = menSearchFromLocationClick
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object menCommands: TMenuItem
      Tag = 779
      Caption = 'Weitere Aktionen...'
      HelpContext = 580
      Hint = 'Zeigt die im Explorer verfügbaren Befehle'
      ImageIndex = 39
      ShortCut = 17
      OnClick = menCommandsClick
    end
    object menCreateLink: TMenuItem
      Tag = 527
      Caption = 'Verküpfung auf Desktop'
      HelpContext = 581
      ImageIndex = 46
      ShortCut = 24643
      OnClick = menCreateLinkClick
    end
    object N35: TMenuItem
      Caption = '-'
    end
    object menDeleteColItem: TMenuItem
      Tag = 515
      Caption = 'Element aus der Sammlung löschen'
      OnClick = menDeleteColItemClick
    end
  end
  object ApplicationEvents: TApplicationEvents
    OnActivate = ApplicationEventsActivate
    OnDeactivate = ApplicationEventsDeactivate
    OnHelp = ApplicationEventsHelp
    OnHint = ApplicationEventsHint
    Left = 760
    Top = 16
  end
  object sdExport: TSaveDialog
    Filter = 'test (*.txt)|*.txt'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofNoReadOnlyReturn, ofEnableSizing]
    Title = 'Exportdatei speichern unter'
    Left = 712
    Top = 65528
  end
  object ilMenus: TImageList
    Left = 584
    Top = 65528
    Bitmap = {
      494C010139003B00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000F0000000010020000000000000F0
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF000000000000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      0000BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      00007F7F7F007F7F7F00BFBFBF007F7F7F00000000007F7F7F00BFBFBF007F7F
      7F007F7F7F00000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000BDBDBD0000000000BDBDBD00FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF007F7F7F00000000007F7F7F00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF0000000000000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00000000007B7B7B0000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F00BFBFBF00BFBFBF0000000000BFBFBF00BFBFBF007F7F
      7F007F7F7F007F7F7F00000000000000000000000000FFFFFF00000000007B7B
      7B007B7B7B0000000000FFFFFF007B7B7B00FFFFFF00000000007B7B7B007B7B
      7B0000000000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF0000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF0000000000000000007B7B7B0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000007B7B7B000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F000000000000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000000000007B7B7B0000000000FFFFFF000000
      00000000000000000000FFFFFF007B7B7B00FFFFFF0000000000000000000000
      0000FFFFFF00000000007B7B7B000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000BDBDBD0000000000FF000000FF000000FF00
      00000000FF00FF000000FF00000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      FF000000FF000000FF000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B0000000000FFFF
      FF000000000000000000FFFFFF007B7B7B00FFFFFF000000000000000000FFFF
      FF00000000007B7B7B00000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000FFFFFF00000000000000FF000000
      FF000000FF000000FF000000FF000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000BFBFBF000000000000000000000000000000000000000000BFBF
      BF0000000000000000000000000000000000000000007B7B7B0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000BFBFBF000000000000000000000000000000000000000000BFBF
      BF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF000000000000000000000000000000000000000000BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00007F7F7F007F7F7F00BFBFBF00000000000000000000000000BFBFBF007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000BDBD
      BD00FFFFFF0000000000FFFFFF000000000000000000000000007B7B7B000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000BDBD
      BD0000000000000000007B7B7B00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF00000084000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF000000000000000000BDBD
      BD007B7B7B0000000000000000007B7B7B00000000007B7B7B00000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000084000000FF0000000000008484000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD0000000000BDBD
      BD007B7B7B007B7B7B0000000000000000007B7B7B0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000084000000FF0000848400008484000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBD0000BDBD0000BDBD0000BDBD0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD000000000000000000BDBD
      BD007B7B7B007B7B7B007B7B7B000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000084000000FF0000848400008484000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBD0000BDBD0000BDBD0000BDBD0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      FF00000084000000FF0000848400000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00000000000000000000000000000000000000
      000000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B0000000000BDBD
      BD007B7B7B007B7B7B007B7B7B0000000000000000007B7B7B00000000000000
      000000000000FFFFFF00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000BDBD0000BDBD000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B0000000000BDBD
      BD007B7B7B007B7B7B007B7B7B000000000000000000000000007B7B7B000000
      0000FFFFFF00000000007B7B7B00000000000000000000000000000084000000
      8400000084000000840000008400000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B0000000000BDBD
      BD00000000007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000848400008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF00000000007B7B7B0000000000BDBD
      BD007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000848400008484000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000007B7B7B007B7B7B0000000000BDBD
      BD007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000008484000084840000848400000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B000000
      0000FFFFFF007B7B7B0000000000FFFFFF007B7B7B0000000000FFFFFF007B7B
      7B0000000000FFFFFF007B7B7B000000000000000000000000000000FF000000
      00000000FF000000FF00000000007B7B7B007B7B7B007B7B7B0000000000BDBD
      BD007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000848400008484000084840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000FF0000000000000000007B7B7B007B7B7B007B7B7B0000000000BDBD
      BD007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000084840000848400008484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B0000FFFF007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000BDBDBD007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000848400000000000000000000000000000000007B7B
      7B00000000007B7B7B000000000000000000000000000000FF000000FF000000
      FF00000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B0000000000BDBDBD007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000007B7B7B000000000000000000000000000000FF000000FF000000
      FF0000000000000000007B7B7B0000FFFF007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0000000000BDBDBD00000000000000000000000000008484000000
      00000000000000000000000000007B7B7B000000000000000000000000007B7B
      7B00000000007B7B7B000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000042A5A50000FFFF00C6FFFF0084FFFF0042FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006363000000000042FFFF0084FFFF00C6FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000424242000000000042A5A50000FFFF00C6E7E700008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      0000BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000004242420000000000000000000084840042A5A500000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00BDBD
      BD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      0000FFFFFF00BDBDBD0000000000000000000000000000000000000000000000
      0000000000004242420000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      0000FFFFFF007B0000007B000000000000000000000000000000000000000000
      0000000000004242420000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      000000000000424242000000000042A5A50000FFFF00C6FFFF0084FFFF0042FF
      FF000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00BDBDBD000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000006363000000000042FFFF0084FFFF00C6FF
      FF000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000424242000000000042A5A50000FFFF00C6C6C600000000000000
      0000000000000000000000000000C6C6C60000000000000000007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00BDBDBD000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000007B00
      0000BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420000000000000000000084840000636300000084000000
      FF000000FF000000FF0000008400C6C6C60000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000007B00
      0000FFFFFF00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      4200000000000000000000000000C6C6C6000000000000000000848484000000
      C6000000FF000000FF000000FF000000420000000000000000007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00BDBDBD000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000007B00
      0000FFFFFF007B0000007B000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084C6C600C6E7
      E70000FFFF00C6FFFF0084FFFF00424242000000000000000000000000004242
      42000000FF000000C600000084000000420000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000424200C6E7
      E70000FFFF00C6FFFF0084FFFF00424242000000000000000000000000000000
      0000000000000000C600000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084C6C60000E7
      E700000000000084840000848400C6E7E7000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042A5
      A500008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B7B7B0000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000007B0000007B007B7B7B00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B7B7B0000000000FFFFFF00FFFF
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000007B007B007B0000007B007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B7B7B0000000000FFFFFF000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00BDBDBD00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000007B0000007B007B007B0000007B007B7B
      7B00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000007B7B7B000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B7B7B0000000000FFFFFF000000
      000000000000FFFFFF007B7B7B000000000000000000FFFFFF00BDBDBD00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF007B7B7B0000007B0000007B0000007B000000FF000000
      7B007B7B7B00FFFFFF00FFFFFF00FFFFFF0000000000000000007B7B7B000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B7B7B0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00BDBDBD000000000000000000000000007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00BDBDBD00BDBDBD0000007B000000FF000000FF000000
      FF0000007B007B7B7B00FFFFFF0000FFFF0000000000000000007B7B7B000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B7B7B0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00BDBDBD00BDBDBD00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF0000007B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B7B7B0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00000000000000000000FFFF007B7B
      7B00000000007B7B7B000000000000000000000000000000000000000000FFFF
      FF00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000007B000000
      7B0000007B000000000000000000000000000000000000000000000000000000
      00007B7B7B00000000000000000000000000FFFFFF00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B00FFFFFF0000FF
      FF00BDBDBD000000000000000000000000000000000000000000FFFFFF00BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF007B7B7B000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00BDBDBD00FFFF
      FF0000FFFF00BDBDBD007B7B7B000000000000000000FFFFFF00BDBDBD00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B0000FF
      FF00FFFFFF0000FFFF00BDBDBD0000FFFF00FFFFFF00BDBDBD00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF007B7B7B000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00000000000000000000000000000000007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00BDBD
      BD0000FFFF007B0000007B000000000000007B7B7B00BDBDBD00FFFFFF00FFFF
      FF00FFFFFF007B7B7B000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B00FFFFFF007B0000007B0000007B000000000000007B7B7B00FFFFFF00FFFF
      FF007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00007B0000007B0000007B0000007B00000000000000000000007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C6000000
      0000C6C6C60000000000C6C6C60000000000C6C6C60000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181818001818180000000000000000000000000000000000B5B5B5008C8C
      8C008C8C8C008C8C8C008C8C8C00ADADAD000000000000000000000000000000
      000000000000B5B5B50094949400B5BDB500000000008484840000FFFF000000
      000000FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000
      000000FFFF000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6ADA500D618
      1800BD000000A50000001818180000000000000000007B847B008C8C8C001818
      18002121210000000000000000004242420073737300A5ADA50000000000B5B5
      B5008C8C8C005A5A5A0010101000A5A5A5000000000084848400FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6181800D600
      0000E70000008400000018181800000000000000000018181800A5A5A5008484
      84008C8C8C005A5A5A00181818000000000000000000424242005A5A5A005252
      5200181818000000000000000000A5A5A500000000008484840000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6ADAD00E7080800BD000000EF00
      000073000000391818000000000000000000000000007B847B00C6A5A500C642
      4200BD424200E742420039101000000000009C00000042000000000000000018
      1800007373000039390000000000A5A5A5000000000084848400FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5848400CE9C9C00E70000008400
      000042181800A5ADA500000000000000000000000000EF424200CE8C8C00E731
      3100D6424200FF0000004200000000000000FF000000C6000000000000000052
      520000EFEF000063630000000000A5A5A500000000008484840000FFFF00FFFF
      FF0000848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000FFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00C6C6C600000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500313129000808000008080000737B7300D6D6D600000000007B4A4A001808
      08000000000000000000000000000000000000000000F7181800BDBDB500C6AD
      AD00C6B5B500C6A5A5003129290000000000FF000000DE000000000000000063
      630000FFFF000063630000000000A5A5A5000000000084848400FFFFFF0000FF
      FF000084840000848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000000000FFFFFF0000FFFF000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000A5A5A5006B6B
      4200ADAD6300BDBD1800BDBD3100393900004A4A29007B7B7B004A4A4A00ADAD
      AD000000000000000000000000000000000000000000000000008C8CCE000000
      CE000000BD000000FF0000004200000000007B000000DE000000000000000063
      630000BDBD000029290000000000A5A5A500000000008484840000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500B5B5B500FFFF
      5200FFFF4A00FFFFC600FFFF9C00EFEF0000737B000008080000B5B5B5000000
      000000000000000000000000000000000000000000001818F7009494CE005252
      E7006B6BDE001818F70000003900000000000000210000000800000000000000
      0000001800000008000000000000A5A5A5000000000084848400FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000000000FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484000000
      00000000000000000000000000000000000000000000ADAD7B00F7F75A00FFFF
      8C00FFFF9400FFFF6B00FFFF7B00FFFF9C00D6D6310031310000949494000000
      000000000000000000000000000000000000000000004242EF00B5B5B5008C8C
      8C008C8C8C008C8C8C0021212100000000000000FF0000008C00000000000039
      000000CE00000063000000000000A5A5A500000000008484840000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000084848400848484008484
      8400000000000000000084848400C6C6C600C6C6C600C6C6C600848484000000
      0000000000000000000000000000C6C6C60000000000B5B5A500FFFF4200FFFF
      9C00FFFFAD00FFFF4A00FFFF6B00FFFFC600FFFF840084840800424A42000000
      000000000000000000000000000000000000000000007B847B008C8C8C001818
      1800212121000000000000000000000000000000FF000000DE00000000000063
      000000FF00000063000000000000A5A5A5000000000084848400FFFFFF0000FF
      FF00FFFFFF0084848400FFFFFF0000FFFF00FFFFFF0084848400FFFFFF0000FF
      FF00FFFFFF0084848400FFFFFF0000FFFF000000000084848400FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      84008484840084848400C6C6C6000000000000000000B5B55A00FFFFAD00FFFF
      FF00FFFF7300FFFFA500FFFF9400FFFF4A00FFFF8400636B0000636363000000
      0000000000000000000000000000000000000000000018181800A5A5A5008484
      84008C8C8C005A5A5A0018181800000000000000BD000000DE00000000000063
      000000DE00000042000000000000A5A5A500000000008484840000FFFF008484
      840000FFFF008484840000FFFF008484840000FFFF008484840000FFFF008484
      840000FFFF008484840000FFFF00848484000000000084848400FFFFFF00C6C6
      C600C6C6C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600848484000000000000000000A5A5A500EFEFAD00FFFF
      8400FFFFFF00FFFF9C00FFFF8C00FFFF5200D6D6840008080000000000000000
      000000000000000000000000000000000000000000007B847B00000000000000
      000000000000000000008C8C8C00080808000000290000005200000000000021
      000000420000001000005A5A5A00B5B5B5000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000084848400FFFFFF00FFFF
      FF008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008484840084848400000000000000000000000000000000008C8C8C00EFEF
      AD00FFFFAD00FFFF4200FFFF6B00DEDED60042420800B5B5B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000949494005A5A5A0000000000000000000000
      0000292929007B7B7B00B5B5B500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000084848400848484008484840084848400848484008484
      840000000000000000000000000000000000000000000000000000000000A5A5
      A500B5B55A00B5B5A5008C8C63006B6B6B009494940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500A5A5A500A5A5A500A5A5
      A500ADADAD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00840000008400
      0000848484000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700DEFFFF00EFEFEF00636363001818
      1800181818001818180018181800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00840000008400
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF000000
      0000000000000000000000000000000000000000000084000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F70042FFFF00EFEFEF0094949400D6D6
      D600D6D6D600D6D6D600C6C6C600181818000000000000000000000000008484
      84008484840084848400848484008484840084848400C6C6C600840000008400
      0000840000008400000084848400000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F7009CFFFF00EFEFEF00A5A5A500FFFF
      FF00FFFFFF00FFFFFF00D6D6D600181818000000000000000000FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7BDE00B5B5C60084FFFF00EFEFEF00A5A5A500FFFF
      FF00FFFFFF00FFFFFF00D6D6D600181818000000000000000000FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007373DE001010BD0029298400B5B5B500EFEFEF008C8C8C00B5B5
      B500D6D6D600FFFFFF00D6D6D600181818000000000000000000FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A4AEF000000A5005200840021218400ADADAD00CECECE008484
      840000000000FFFFFF00D6D6D600181818000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600840000008400
      0000840000008400000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF000000
      0000000000000000000000000000000000000000000084000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A4AEF000000A500080084007300840021218400ADADAD00C6C6
      C6008C8C8C00949494008C8C8C00737373000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00840000008400
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700B5B5B5002121840000008400000084000000EF0021218400B5B5
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008484
      84008484840084848400848484008484840084848400C6C6C600840000008400
      0000840000008400000084848400000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600E7E7E700D6D6D600C6C6C600313194000000FF000000FF000000E7002929
      8C00B5B5BD006BF7F700C6F7F70031F7F7000000000000000000FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600DEDE
      DE00DEDEDE00CECECE00F7F7F700FFFFFF004242FF000000DE000000DE001010
      C6007B7BAD000000000000000000000000000000000000000000FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000084000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      00000000000000000000000000000000000000000000C6C6C600DEDEDE00DEDE
      DE00CECECE00F7F7F700FFFFFF00D6D6D600CECECE004A4A9C004A4A9C007373
      A500000000000000000000000000000000000000000000000000FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF000000
      0000000000000000000000000000000000000000000084000000FFFFFF000000
      00000000000000000000000000000000000000000000E7E7E700DEDEDE00CECE
      CE00EFEFEF00FFFFFF00D6D6D600A5A5A500A5A5A50000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000084000000840000000000
      000000000000000000000000000000000000E7E7E700D6D6D600CECECE00F7F7
      F700FFFFFF00CECECE005252CE00ADADC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A500C6C6C600F7F7F700FFFF
      FF00CECECE005252CE007373D600BDBDC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD0094949400FFFFFF00D6D6
      D600A5A5A500ADADC600BDBDC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00848484009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B0000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000848484000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000008484
      8400008400000084000000840000008400000084000000840000008400000084
      00000084000000840000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000848484000000000000000000000000008484
      8400008400000084000000840000008400000084000000840000008400000084
      00000084000000840000FFFFFF00000000000000000000000000000000008484
      8400008400000084000000840000008400000084000000840000008400000084
      00000084000000840000FFFFFF00000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0084000000840000008400000084000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000008484
      8400008400000084000000840000008400000084000000840000008400000084
      00000084000000840000FFFFFF00000000000000000000000000000000000000
      0000848484000084000000840000008400000084000000840000008400000084
      000000840000FFFFFF000000000000000000000000007B7B7B00000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF008400000084000000840000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000008484840000840000008400000084000000840000008400000084
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840000840000008400000084000000840000FFFF
      FF00000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000084000000840000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF007B7B7B000000000000000000000000000000000000000000000000007B7B
      7B000000FF0000000000000000000000000000000000FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0084000000840000008400000084000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF008400000084000000840000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000FF007B7B7B0000000000000000007B7B7B000000FF000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0084000000840000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400848484008484840084848400000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000000000000084840000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000008484
      8400840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000084000000840000FFFFFF000000
      000000000000000000000000000000000000000000000000000000848400FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000848484008400000084000000840000000000000084848400848484008484
      8400848484008484840084000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000084000000840000FFFFFF000000
      00000000000000000000000000000000000000000000000000000084840000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      00000000000084848400840000008400000084000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000084000000840000FFFFFF000000
      000000000000000000000000000000000000000000000000000000848400FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000084848400840000008400000084000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000084000000840000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000084840000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400840000008400000084000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400008400000084000000840000008400000084000000840000008400000084
      00000084000000840000FFFFFF0000000000000000000000000000848400FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084000000840000008400
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400008400000084000000840000008400000084000000840000008400000084
      00000084000000840000FFFFFF000000000000000000000000000084840000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF008484840000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400840000008400000084000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484000084000000840000000000008484
      840084848400848484000000000000000000000000000000000000848400FFFF
      FF0000FFFF00FFFFFF0000FFFF00C6C6C60000FFFF0084848400C6C6C6008484
      8400C6C6C6008484840000FFFF00000000000000000000000000000000000000
      0000000000000000000084848400840000008400000084000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000084000000840000FFFFFF000000
      00000000000000000000000000000000000000000000000000000084840000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000C6C6C60000FFFF00FFFFFF0000FF
      FF008484840000FFFF00FFFFFF00000000000000000000000000000000000000
      00000000000084848400840000008400000084000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000084000000840000FFFFFF000000
      000000000000000000000000000000000000000000000000000000848400FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000008484840084848400FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      000084848400840000008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000084000000840000FFFFFF000000
      00000000000000000000000000000000000000000000000000000084840000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0084848400FF000000FF0000008484
      8400FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000008484
      8400840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      840000848400008484000084840000848400FF000000FF000000FFFFFF00FF00
      0000008484000084840000848400008484000000000000000000848484008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000084848400840000000000
      0000000000000000000000000000840000008400000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF0000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000084000000000000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF0000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000008484840000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF000000000000000000000000000084848400840000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C60084848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C60084848400FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF0000000000000000000000000000000000840000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008484840000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000000000000000000000000
      0000000000000000000084000000848484000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008484840000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00C6C6C600FFFFFF0084848400000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      000000000000000000008484840000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000840000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000008400000084000000000000000000
      0000000000000000000084000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF0084848400000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084000000840000008400000084000000840000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400008484000084000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000008484
      840084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400848484000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000848400008484000084000000848484000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084848400000000000000000000000000848484008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000FFFFFF00C6C6C600C6C6C600C6C6C6008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000840000008400000084000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF00008484000084840000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400000000000000000000000000000000000000
      000000000000000000000000000084000000840000008400000084000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484000000
      0000000000000000000000000000000000000000000084848400840000008400
      0000000000000000000084848400840000008400000084000000848484000000
      0000000000008400000084000000848484000000000000000000000000008484
      840084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400848484000000000084848400000000000000000000000000000000000000
      00000000000000000000840000008400000084000000FFFFFF00840000008400
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084840000848484000000
      0000000000000000000000000000000000000000000084000000840000008484
      8400000000008484840084000000840000008400000084000000840000008484
      8400000000008484840084000000840000000000000000000000000000000000
      0000FFFFFF00C6C6C600C6C6C600C6C6C6008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00840000008400000084000000FFFFFF0000000000000000008400
      000084000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000084840000848400008484000084000000848484000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000008400000084000000848484000000000084848400840000008484
      8400000000000000000084000000840000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400000000000000000000000000FFFFFF008484
      8400848484008484840084000000FFFFFF00FFFFFF0000000000000000000000
      000084000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000848400008484000084000000848484008484
      8400000000000000000000000000000000000000000084000000840000000000
      0000000000008400000084000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000008484
      840084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400848484000000000084848400000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000084000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFF0000848400008484000084840000840000008484
      8400848484000000000000000000000000000000000084000000840000000000
      0000000000008400000084000000848484000000000084848400840000008484
      8400000000000000000084000000840000000000000000000000000000000000
      0000FFFFFF00C6C6C600C6C6C600C6C6C6008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000FFFFFF008484
      840084848400848484008484840084848400FFFFFF0000000000000000000000
      0000000000000000000084000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000FFFF00008484000084840000848400008400
      0000848484008484840000000000000000000000000084000000840000008484
      8400000000008484840084000000840000008400000084000000840000008484
      8400000000008484840084000000840000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      000000000000848484008484840000000000FFFF000084840000848400008484
      0000840000008484840084848400000000000000000084848400840000008400
      0000000000000000000084848400840000008400000084000000848484000000
      0000000000008400000084000000848484000000000000000000000000008484
      840084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000084848400000000000000000000000000FFFFFF008484
      840084848400C6C6C600C6C6C600C6C6C600FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008400000084000000848484008484840000000000FFFF0000848400008484
      0000848400008400000084848400000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000000000000000000000000000000000000000
      0000FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      0000848400008484000084000000848484008484840084848400FFFF00008484
      0000848400008400000084848400000000000000000000000000000000008400
      0000840000008400000084848400000000000000000000000000848484008400
      0000840000008400000000000000000000000000000000000000000000008484
      8400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840084848400000000000000000000000000FFFFFF008484
      840084848400C6C6C60000000000C6C6C6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000848400008484000084840000840000008400000084000000848400008484
      0000848400008400000084848400000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000000000000000000000000000000000000000
      0000000000008484840084000000840000008400000084000000840000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000848400008484000084840000848400008484
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00C6C6C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A5008C8C8C0094949400949494009494940094949400949494008C8C
      8C00A5A5A5000000000000000000000000000000000000000000000000008484
      8400FFFFFF0000000000C6C6C600FFFFFF0000000000C6C6C600C6C6C6000000
      000084848400C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084840000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000A5A5A500D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6
      D6009C9C9C00B5B5B500BDBDBD00000000000000000000000000000000008484
      8400FFFFFF0000000000FFFFFF00C6C6C60000000000C6C6C600C6C6C6000000
      0000C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000848484008400000084000000840000008400000084000000840000008400
      00008400000084000000FFFFFF00000000000000000000000000000000000000
      0000A5A5A500D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6
      D6009C9C9C0094949400B5B5B500000000000000000000000000000000008484
      8400FFFFFF0000000000C6C6C600FFFFFF0000000000C6C6C600C6C6C6000000
      000084848400C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084840000FFFF00FFFF
      FF00008484000084840000848400000000000000000000000000000000000000
      0000848484008400000084000000840000008400000084000000840000008400
      00008400000084000000FFFFFF000000000000000000B5B5B5007B7B7B009C9C
      9C0073737300D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6
      D60000000000B5B5B5009C9C9C00A5A5A5000000000000000000000000008484
      8400FFFFFF0000000000FFFFFF00C6C6C60000000000C6C6C600C6C6C6000000
      0000C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      000084848400840000008400000084000000C6C6C60084848400848484008484
      84008484840084848400848484000000000000000000B5B5B5008C8C8C00A5A5
      A5007B7B7B00D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6
      D60000000000B5B5B500BDBDBD008C8C8C000000000000000000000000008484
      8400FFFFFF0000000000C6C6C600FFFFFF0000000000C6C6C600C6C6C6000000
      000084848400C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400840000008400000084000000FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00525252000000
      0000A5A5A500D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6
      D60000000000B5B5B500E7E7E700949494000000000000000000000000008484
      8400FFFFFF0000000000FFFFFF00C6C6C60000000000C6C6C600C6C6C6000000
      0000C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400840000008400000084000000FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00ADADAD000000
      0000A5A5A500D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6
      D60000000000B5B5B500E7E7E700949494000000000000000000000000008484
      8400FFFFFF000000000000000000FFFFFF000000000000000000C6C6C6000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084840000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      000084848400840000008400000084000000FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00313131000000
      0000A5A5A5008484840084848400848484008484840084848400848484008484
      840000000000B5B5B500E7E7E700949494000000000000000000000000008484
      8400FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00C6C6C600840000008400000084000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000BDBDBD00ADADAD000000
      0000000000000000000094949400E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00ADADAD00E7E7E700949494000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084840000FFFF00FFFF
      FF00008484000084840000848400000000000000000000000000848484008400
      0000840000008400000084000000840000008400000084000000000000000000
      00000000000000000000000000000000000000000000ADADAD00525252000000
      000000000000000000009C9C9C009494940084848400A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500E7E7E700949494000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000848484008484
      8400840000008400000084000000840000008400000000000000000000000000
      00000000000000000000000000000000000000000000ADA5A500AD7B7B00AD8C
      8C00B5B5B50000000000000000000000000084848400CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE008C8C8C00000000000000000084848400FFFF
      FF00FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008400000084000000840000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A500BD393900840000008418
      180094737300B5B5B5000000000000000000A5A5A500A5A5A500A5A5A5007B7B
      7B0073737300A5A5A500A5A5A500A5A5A5000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000084
      8400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE313100EF000000840000008400
      000084181800AD8C8C000000000000000000000000000000000000000000A5A5
      A5009C9C9C000000000000000000000000000000000000000000000000000000
      000000000000000000008484840000000000C6C6C600C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000084
      8400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000CE0000008400
      000084000000AD7B7B0052525200ADADAD0031313100ADADAD00525252008C8C
      8C007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      840000FFFF00FFFFFF0000848400008484000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094737300FF000000FF000000EF00
      0000BD393900ADA5A500ADADAD00BDBDBD00ADADAD00BDBDBD00ADADAD00B5B5
      B500B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094737300FF000000D631
      3100A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000848400000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008484000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000084840000FFFF0000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      00000000000000848400000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      00000000000000848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000848400FFFFFF0000FFFF0000000000008484000084
      8400008484000000000000000000000000008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000084840000FFFF00FFFFFF0000FFFF00000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000084
      84000000000000000000000000000000000000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000084848400848484008484
      840084848400848484000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00848484000000000000000000FFFFFF00000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000084
      8400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000084848400FFFF
      FF00FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C60084848400000000000000000084848400FFFFFF008484
      840084848400FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000848400FFFFFF0000FFFF00FFFFFF0000FFFF0000000000008484000084
      8400008484000000000000000000000000000000000000000000840000008484
      84000000000000000000000000000000000000000000000000008484840000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00848484000000000000000000000000008484840000FF
      FF0084848400FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      00000084840000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000840000008484
      840000000000848484008400000000000000000000000000000084848400FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00848484000000000000000000FFFFFF00FFFFFF008484
      8400FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000840000008484
      84000000000000000000840000008400000000000000000000008484840000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000000084848400C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF0084848400848484008484
      8400848484008484840000000000000000000000000000000000848484008484
      840000FFFF00FFFFFF00FFFFFF00848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000848484008400
      000084000000840000008400000084000000840000000000000084848400FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000008484
      8400C6C6C600FFFFFF00C6C6C600FFFFFF008484840000000000000000000000
      00000000000000000000000000000000000000000000000000008484840000FF
      FF008484840000FFFF0084848400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000840000008400000000000000000000008484840000FF
      FF00FFFFFF0000FFFF00C6C6C600FFFFFF000000000000000000000000000000
      0000848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF000000
      000084848400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000848400008484000084840000848400008484000084
      8400008484000084840000848400000000000000000000000000000000000000
      000000000000848484008400000000000000000000000000000084848400FFFF
      FF0000FFFF00FFFFFF00C6C6C600848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000084848400FFFFFF00000000000000000084848400FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60084848400000000008484840000000000000000008484
      8400C6C6C6000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C6000000000000000000848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF0000008400C6C6C600C6C6C600000000008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C6000000000000000000FFFFFF0000000000C6C6C6000000
      0000C6C6C6000000000000000000000000000000000084848400848400008484
      0000000084008484000084840000C6C6C6000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000C6C6
      C60084848400C6C6C60000000000000000000000000084848400FFFFFF00FFFF
      FF0000008400FFFFFF00FFFFFF00C6C6C6000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000008400000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF000000000000000000C6C6C6000000
      0000C6C6C6000000000000000000000000000000000084848400FFFFFF00FFFF
      FF0000008400FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000848484008484
      8400848484008484840084848400000000000000000000000000000000008484
      8400840000008400000084000000840000008400000084000000840000008400
      00008400000084000000FFFFFF00000000000000000000000000000000008484
      8400000084000000840000008400000084000000840000008400000084000000
      84000000840000008400FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0084848400FFFF
      FF0000000000C6C6C60000000000000000000000000084848400848400008484
      00000000840084840000848400008484000084840000C6C6C600000000000000
      0000000000000000000084848400848484000000000000000000000000008484
      8400840000008400000084000000840000008400000084000000840000008400
      00008400000084000000FFFFFF00000000000000000000000000000000008484
      8400000084000000840000008400000084000000840000008400000084000000
      84000000840000008400FFFFFF00000000000000000000000000848484000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      0000C6C6C6000000000000000000848484000000000084848400FFFFFF00FFFF
      FF0000008400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C60000000000848484000000000000000000000000008484
      8400848484008484840084848400848484008400000084000000000000008484
      8400848484008484840000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000008484
      8400FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF0084848400000000000000000084848400FFFFFF00FFFF
      FF0000008400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00000000000000000084848400848400008484
      0000000084008484000084840000848400008484000084840000848400008484
      00008484000084840000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000084848400FFFFFF00FFFF
      FF0000008400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C60084848400C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60000000000000000000000000084848400FFFFFF00FFFF
      FF0000008400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000084848400FFFFFF00FFFF
      FF0000008400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF0000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C60000FFFF0084848400000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000084848400848484008484
      840084848400C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF0000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF00C6C6C60000000000848484000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084848400000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600848484000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400848484008484840084848400000000000000000084848400FFFF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C600848484000000000084848400000000000000000084848400C6C6
      C600C6C6C600C6C6C600FFFFFF00C6C6C600FFFFFF0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C600C6C6C600FFFFFF00848484000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C60000000000FFFFFF00000000000000000084848400FFFFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF00000000008484840084848400000000000000000084848400C6C6
      C600C6C6C600FFFFFF00C6C6C600FFFFFF008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C600FFFFFF00C6C6C600FFFFFF008484840000000000000000000000
      00000000000084848400000000000000000084848400FFFFFF00C6C6C6008400
      0000840000008400000084000000FFFFFF008400000084000000840000008400
      0000C6C6C600FFFFFF0000000000FFFFFF000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008484840000000000C6C6C60084848400000000000000000084848400C6C6
      C600C6C6C600FFFFFF00C6C6C600FFFFFF008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600FFFFFF00FFFFFF008484840000000000000000008484
      84008484840084848400000000000000000084848400FFFFFF00840000008400
      0000FFFFFF008400000084000000FFFFFF008400000084000000FFFFFF008400
      000084000000FFFFFF0000000000FFFFFF000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000FFFF00848484000000000000000000000000008484
      8400FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF0084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF008484840084848400FFFF
      FF00C6C6C60084848400000000000000000084848400FFFFFF00C6C6C6008400
      0000840000008400000084000000FFFFFF008400000084000000FFFFFF008400
      000084000000FFFFFF0000000000FFFFFF00000000000000000084848400FFFF
      FF00C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C6C6C600848484000000000000000000000000008484
      8400FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000084000000FFFFFF008400000084000000FFFFFF008400
      000084000000FFFFFF0000000000FFFFFF00000000000000000084848400FFFF
      FF0000FFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00848484000000000000000000000000000000
      000084848400FFFFFF008484840084848400FFFFFF00FFFFFF00C6C6C600FFFF
      FF00C6C6C6008484840084848400848484000000000000000000000000000000
      0000000000008484840084848400FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C60084848400000000000000000084848400FFFFFF00FFFFFF008400
      00008400000084000000C6C6C600FFFFFF008400000084000000840000008400
      0000C6C6C600FFFFFF0000000000FFFFFF00000000000000000084848400FFFF
      FF00C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000084848400848484000000000000000000000000000000
      000084848400FFFFFF00848484000000000084848400C6C6C600FFFFFF00C6C6
      C600C6C6C600C6C6C60084848400000000000000000000000000000000008484
      840084848400C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C60084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000008484
      8400FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000008484840084848400FFFFFF00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400000084000000FFFFFF00FFFF
      FF00C6C6C60000000000FFFFFF00000000000000000000000000000000000000
      00008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000848484008484
      8400C6C6C6008484840000000000000000000000000000000000000000000000
      00000000000000000000000000008484840084848400C6C6C600C6C6C600C6C6
      C600C6C6C60084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400C6C6C6008484840000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000F00000000100010000000000800700000000000000000000
      000000000000000000000000FFFFFF0080000000000000008000000000000000
      C000000000000000E000000000000000F000000000000000F800000000000000
      FC00000000000000060000000000000007000000000000000180000000000000
      01800000000000000060000000000000C060000000000000C060000000000000
      F044000000000000F07E000000000000FFFFFF00FC00FC1FFFFFFF00FC00F007
      F83FFF002000E0030001FF000000C001000100000000C001000100000000C001
      000100000000C001000100000000C001800300230000E003800300010000F1C7
      80030000E000F1C7C1070023F800F1C7E38F0063F000F007FFFF00C3E001F80F
      FFFF0107C403FC1FFFFF03FFEC07FFFFFFFF0000F862FE7FFFFF000080E0FE1F
      F81F000001E0FC07F81FFC0001E0FC010000FC0031E1F800C003FC0031C1F800
      F00FFC00C1810000FC3FC000C3070000FE7FC000FE17000100008000CC370032
      00008000A877003E0000800040F7003E0000E40001E3003EFFFFFC00C1E3001D
      0000FC00C0E30023FFFFFC00C83F003FFF0FF9FFFFFFFFC0FE07F8FFFFFFFFFF
      7887F87FFFFFFFE1FA0FC000C007FFE17B3FC000C007FFE1FBFFC000C007FFE1
      7B0FC000C007C0E37A07C000C007FFFF7887C000C007E1FF7A00C000C007E1FF
      7B00C000C007E1FF60C0C000C007E1FF40E0C000C007E3FF00F0C000C007FFFF
      48F9FFFFFFFFFFFF67FFFFFFFFFFFFFFFFFF000FFF00FFFFF003000FFF0083E0
      F7FB000FFE0083E0F00B000FFC0083E0F00B000FFC008000F00B000FFC008000
      F00B000FF8008080F00B000FF8008080F00B000FF003C001F00B0003E007E003
      F0030001C03FE083F027000080FFF1C7F02FFF8000FFF1C7F01FFFC001FFF1C7
      FFFFFFC087FFFFFFFFFFFFE0CFFFFFFF8000FC0FFFFFFFFF8000FC0FFFF3C0F8
      8000FC0FFFC180208000FE1FFFC180008000FE1FFF0380008000FE1FFF038000
      8000FE1FE04F80008000FE1FC00FC0008000FE1F801F80008000CC0E801F8000
      80008000801F800080008000801F800080008001803FBC0080008003C03FFE01
      FFFFCC0FE07FFF03FFFFFFFFFFFFFFFFFF87B0888F8FFE00FF83FFFF8888FE00
      E001B0889F9FFE00C000FFFFFFFFFC00C000B088FFFFF800C001FFFF8F8FF808
      C003B0888888F800FF83FFFF9F9FF000E001B088FFFFE000C000FFFFFFFFC007
      C00080008F8F800FC001FFFF8888807FC003F0889F9F00FFFF87FFFFFFFF00FF
      FF8FFFFFFFFF01FFFF9FFFFFFFFF8FFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFF87F
      FFFFFFFF2020F000FFFFFFFF7271E000FFFFF00103038000F001E001A7238000
      E001E001A7A7C001E001F0038787E07FE003F807CF8FF000FFFFFC0FCFCFE000
      FFFFFE1FFFFF8000FFFFFF3FE7E78000FFFFFFFFE3C7C001FFFFFFFFE7E7E07F
      FFFFFFFFE997F07FFFFFFFFFFC3FF8FFE000E000FFFFFFFFC000C000FFFFFF1F
      C000E000FFFFFE1FC000F080FFFFFE1FC000F83FFFFFFE1FC000FC1FDE7BF101
      C000FE0FDE7BE001C000FF0757EAE001C000FE0F8FF1E023C000FC1F8FF1FE1F
      C000F83F57EAFE1FC000F000DFFBFE1FC000E000DFFBFE3FC000C000FFFFFFFF
      FF9FC001FFFFFFFFFFFFFFFFFFFFFFFFFC01FC01C1FFFFFFFC01FC019E77FFFF
      FC01FC01BFA7FFFFFC01FC01BFC7FFFFFC01FC01BF87F001800180019F07E001
      80018001CFFFE00180018001FFF9F00380018001F07CF80780018001F0FEFC0F
      80038003F1FEFE1F80078007F2FEFF3F801F801FF73CFFFF801F801FFFC1FFFF
      803F803FFFFFFFFF807F807FFFFFFFFFFE1FF80FF003FFFFFC1FF007E001FF9F
      FC1FE1C3E001FF0FFE3FC7F1E001FE0FFF1F8C18E0018007FE1F8808E0018023
      FC1F988CE0018033FC0F99FCE0018039FC07988CE001803CFE038808E001803E
      F9018C18E001803FF081C7F1E001803FE001E1C3E001807FE001F007F00380FF
      F003F80FFFFF81FFF807FFFFFFFFFFFFE001FFC1FFFFF007E001FF80F801F001
      E0017C00F001F001E001FD81F0018008E0017DCFF0018008E001FDFFF07F9008
      E0017DC1F07F9008E0017D80F07F9008E0017C00E01F9C00E0017D81C03F9C00
      C0007DCFC07F8700C000707FE0FF0300E001603FF1FF03E7FC0F003FF9FF0007
      FE1F607FFFFF0007FFFF73FFFFFF87FFFCFF01FFFFFFF003FE7F01FFFFFFF003
      FE3F01FFE001F003F81F01FFC001F003F80F01FFC001F003FC0701FFC001F003
      FC1F01C0C001F003E00F83C0C001B003E007FFC0C0018003F007CFC0C001C007
      F01FC9C0C001800FF80FCCC0C003C01FF807C040E07FC0FFFC03FCC0F0FF93FF
      FC01F9C0FFFFB33FFFFFFFC1FFFFF3FFFFFFFFFFF80780FFFF1FFFFFF003807F
      FE1FFFFFF003803FFE1FFFFFF003803FFE1FFFFFE001801FF101F001E0018001
      E001E001E0018000E001E001C0008000E023E003C0008000FE1FFFFFC0008000
      FE1FFFFFC0008000FE1FFFFFC0008000FE3FFFFFE0018000FFFFFFFFF8078000
      FFFFFFFFFF8FFFFFFFFFFFFFFFDFFFFFF000FFFFF8FFFFFFE000C00FC0FFFFFF
      E000800F80FFFFFFC000801FC07F0000C000C01FE07900008000C03FE0210000
      8000C01FF00100008000E007F8010000C000E000F8010000C000F000E0010000
      C000F000E0010000E003F981F8010000F007F9C1FE010000F80FFFF1FF810000
      F81FFFFBFFF1FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object tmrSumSize: TTimer
    Enabled = False
    Interval = 50
    OnTimer = tmrSumSizeTimer
    Left = 200
    Top = 96
  end
  object pmLists: TPopupMenu
    Images = ilMenus
    Left = 48
    Top = 184
    object menLNew: TMenuItem
      Caption = 'Neu...'
      Hint = 'Neue (leere) Liste anlegen.'
      ImageIndex = 11
      OnClick = tbNewListClick
    end
    object menLView: TMenuItem
      Tag = 1
      Caption = 'Anzeigen'
      Default = True
      Enabled = False
      Hint = 'Listeninhalt anzeigen.'
      ImageIndex = 7
      ShortCut = 117
      OnClick = tbLViewClick
    end
    object menLCol: TMenuItem
      Tag = 1
      Caption = 'Farbe...'
      Enabled = False
      Hint = 'Farbe des Liste wählen.'
      ImageIndex = 51
      OnClick = tblColorClick
    end
    object N23: TMenuItem
      Tag = 1
      Caption = '-'
    end
    object menLGen: TMenuItem
      Tag = 1
      Caption = 'Verknüpfen'
      Hint = 'Liste(n) verknüpfen.'
      ImageIndex = 8
      object menListDoub1: TMenuItem
        Caption = 'doppelte Dateien'
        ImageIndex = 30
        ShortCut = 119
        OnClick = menListGenGen
      end
      object N26: TMenuItem
        Caption = '-'
      end
      object menListAND1: TMenuItem
        Tag = 1
        Caption = 'auch enthalten in'
        ImageIndex = 32
        OnClick = menListGenGen
      end
      object menListNOT1: TMenuItem
        Tag = 2
        Caption = 'nicht enthalten in'
        ImageIndex = 31
        OnClick = menListGenGen
      end
      object N27: TMenuItem
        Caption = '-'
      end
      object menListOR1: TMenuItem
        Tag = 3
        Caption = 'kombinieren mit'
        ImageIndex = 25
        OnClick = menListGenGen
      end
    end
    object menLExp: TMenuItem
      Tag = 1
      Caption = 'Exportieren...'
      Enabled = False
      Hint = 'Liste exportieren.'
      ImageIndex = 9
      ShortCut = 114
      OnClick = tbExportClick
    end
    object menLCopyToFolder: TMenuItem
      Tag = 1
      Caption = 'Dateien kopieren nach...'
      ImageIndex = 56
      OnClick = menLCopyToFolderClick
    end
    object N22: TMenuItem
      Tag = 1
      Caption = '-'
    end
    object menLRemove: TMenuItem
      Tag = 1
      Caption = 'Löschen'
      Enabled = False
      Hint = 'Liste löschen.'
      ImageIndex = 12
      ShortCut = 46
      OnClick = tbLDelClick
    end
    object menLRename: TMenuItem
      Tag = 1
      Caption = 'Umbennen'
      Enabled = False
      Hint = 'Liste umbennen.'
      ImageIndex = 3
      ShortCut = 113
      OnClick = menRenameList
    end
    object N32: TMenuItem
      Caption = '-'
    end
    object menGoSearchInList: TMenuItem
      Tag = -1
      Caption = 'Durchsuchen...'
      HelpContext = 570
      Hint = '*Suchen nach einer in der Liste enthaltenen Datei.'
      ImageIndex = 42
      ShortCut = 16454
      OnClick = menGoSearchInListClick
    end
  end
  object elpMan: TElPlayerMan
    Players = <
      item
        InputMode = imFile
        OutputMode = omMMSystem
        ModuleName = '(Module not initialized)'
        StartPos = 0
        EndPos = 0
        Priority = 0
        BuffersCount = 1
        BufferSize = 256
        OutputDevNum = -1
        UseEqualizer = False
      end>
    Left = 185
    Top = 558
  end
  object tmrAutoPlay: TTimer
    Enabled = False
    Interval = 250
    OnTimer = tmrAutoPlayTimer
    Left = 256
    Top = 136
  end
  object tmrMP3CtrlSync: TTimer
    Enabled = False
    Interval = 250
    OnTimer = tmrMP3CtrlSyncTimer
    Left = 320
    Top = 128
  end
  object pmListviewStyle: TPopupMenu
    Images = ilMenus
    Left = 368
    Top = 25
    object menVDetail: TMenuItem
      Tag = 1
      Caption = 'Details'
      Checked = True
      GroupIndex = 1
      HelpContext = 141
      Hint = 'Detailansicht (Spalten)'
      ImageIndex = 33
      RadioItem = True
      OnClick = menViewClick
    end
    object menVList: TMenuItem
      Tag = 2
      Caption = 'Liste'
      GroupIndex = 1
      HelpContext = 142
      Hint = 'Listenansicht (keine Spalten)'
      ImageIndex = 34
      RadioItem = True
      OnClick = menViewClick
    end
    object menVPreview: TMenuItem
      Tag = 3
      Caption = 'Bild-Vorschau'
      GroupIndex = 1
      HelpContext = 143
      Hint = 'Vorschau von Bildern anzeigen'
      ImageIndex = 47
      RadioItem = True
      OnClick = menViewClick
    end
  end
  object ilToolbar: TImageList
    Height = 46
    Width = 46
    Left = 545
    Top = 27
    Bitmap = {
      494C01010C000E0004002E002E00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000B8000000B800000001002000000000000011
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182939001829
      3900182139001821390000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829390018293900182139001821
      3900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000102142001021420010214200102142001021420010214200102142001021
      4200102142001021420010214200102142001021420010214200102142001021
      4200102142001021420010214200102142001021420008214200082139000821
      3900082139000821420008214200082139000818390008183900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000102142001021
      4200102142001021420010214200102142001021420010214200102142001021
      4200102142001021420010214200102142001021420010214200102142001021
      4200102142001021420010214200102142001021420010214200102142000821
      4200082142000821390008183900081839000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000021314A0021314A002131520031426300395273003952
      7B00395A7B0039527B0039527B0039527B0039527B0052527300945263005A52
      730039527B0039527B0031527B0031527B0031527B0031527B0031527B003952
      7B0039527B00395A7B00395A7B00395A7B00395A7B0039527B0039527300314A
      6B0029425A001829420018213900102131000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000021314A0021314A0021315200314263003952730039527B00395A7B00395A
      7B00395A7B00395A7B00395A7B00395A7B00395A7B00395A7B0039527B00394A
      6B00424A5A00424A5A00394A630039527B00395A7B00395A7B00395A7B003952
      7B0039527B0039527B0039527B0039527B0039527300314A6B0029425A001829
      4200182139001021310000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010294A001029
      4A00102952001831630018396B00183973001842730018427300184273001842
      7300184273001842730018427300184273001842730018427300184273001842
      7300184273001839730018396B0018396B001839630021316300183163001839
      630018396B001839730018396B0018396B0010315A0010294A00082139000821
      3900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010294A0010294A00102952001831
      630018396B001839730018427300184273001842730018427300184273001842
      7300184273001842730018427300184273001842730018427300184273001842
      7300184273001842730018427300184273001842730018427300184273001839
      730018396B0018396B0010315A0010294A000821390008183900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002139520021395200315273004A6B9400527BA5005284AD005284
      B5005284B5005284B5004A7BB5004A7BB5004A73AD00946B8400E75A5A00AD52
      6B004A73A5004273AD004273AD004273AD004273AD004273AD004273AD004A7B
      B5004A7BB5005284B5005A84B5005A84B5005A84B5005A84B5005A84B5005284
      AD005273A50042638C00294A6300182939001021310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002139
      520021395200315273004A6B9400527BA5005A84AD005A84B5005A84B5005A84
      B5005A84B5005A84B5005A84B5005A84B5005A84B5005A7BA500736B73007B6B
      6B007B63630073636300735A5A00635A630052739C005A84B5005A84AD005A84
      AD005A84AD005A84AD005A84B5005A84B5005A84B5005284AD005273A5004263
      8C00294A63001829390010213100000000000000000000000000000000000000
      000000000000000000000000000000000000000000001031520010315A001842
      730021528C00215A9C002963A5002963A5002963A5002963A5002963A5002963
      A5002963A5002963A5002963A5002963A5002963A500215A9C00215A94002152
      8C00294A84002942730029396B0029316B00313163003131630021396B00184A
      8400215A94002963A5002963A50021639C00215A94002152840018396B001029
      4200082139000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001031520010315A001842730021528C00215A
      9C002963A5002963A5002963A5005A84BD0084A5CE0084A5CE007BA5C60084A5
      C60084A5C60084A5C60084A5C6007BA5C60084A5C60084A5C60084A5C60084A5
      C60084A5C60084A5C60084A5C6007BA5C60084A5C6007BA5C6003973AD002963
      A5002963A50021639C00215A94002152840018396B0010214200082139000000
      0000000000000000000000000000000000000000000000000000000000000000
      000029425A0029425A00396384005284AD005A94BD006394C6005A9CCE005A94
      CE005294CE004A8CCE00428CC600428CC60073739C00D66B7300F77B7B00E752
      5200845A7B003984BD003984C6003984C6003984C6004284C600428CC6004A8C
      C6005294CE005294CE005A9CCE00639CCE00639CCE006B9CCE006B9CCE00639C
      CE00639CC6005A8CBD004A7BA500315273001831420010293100000000000000
      000000000000000000000000000000000000000000000000000029425A002942
      5A00396384005284AD005A94BD00639CC600639CCE006B9CCE006B9CCE006B9C
      CE006B9CCE006B9CCE006B9CCE006B9CCE006394BD008C7B7B00947B7B00AD8C
      8C00C69C9C00C69494009C7B7B007B636300736363006384AD006394C6006394
      BD006394BD006394C600639CC600639CCE00639CCE00639CCE00639CC6005A8C
      BD004A7BA5003152730018294200102931000000000000000000000000000000
      00000000000000000000000000000000000018395A0018426300215284002963
      9C002973AD00297BBD00297BBD00317BBD00317BC600317BC600297BBD00297B
      BD002973B500296BAD0029639C00295A9400294A84002942730029396B002931
      630029296300292963002929630031316300313163003131630021426B002152
      840021639C00297BBD00317BBD00297BBD002973B5002973AD0021639400184A
      7300102942000821390000000000000000000000000000000000000000000000
      0000000000000000000018395A00184263002152840029639C002973AD00297B
      BD00297BBD00317BBD00317BC60094BDDE00EFEFF700EFEFF700EFF7F700EFEF
      F700EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700EFEF
      F700EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700E7EFEF005A8CBD00297B
      BD00317BBD00297BBD002973B5002973AD0021639400184A7300102942000821
      3900000000000000000000000000000000000000000000000000000000000000
      0000314A6300426B8400528CAD00639CC60063A5CE005AA5D600529CD6004A9C
      CE004294CE003994CE003994CE00527BAD00BD637300EF7B7B00FF848C00F773
      7300D6424A006B6B9400318CCE00318CCE003994CE003994CE003994CE004294
      CE004A9CCE00529CD6005AA5D60063ADD6006BADD6006BADDE006BADD6006BAD
      D6006BADD60063A5CE00639CC6005284A50031526B0018293900000000000000
      0000000000000000000000000000000000000000000000000000314A6300426B
      8400528CAD00639CC6006BA5D6006BADD6006BADD6006BADD6006BADDE006BAD
      DE006BADDE006BADDE006BADDE006BADD600848C94009C8C8C00BD9C9C00E7B5
      B500F7BDBD00F7BDBD00DEADAD00AD8C8C007B6B6B006B6B7300639CC600639C
      BD00639CBD00639CC60063A5CE006BA5CE006BADD6006BADD6006BADD60063A5
      CE00639CC6005284A50029526B00182939000000000000000000000000000000
      000000000000000000000000000000000000184A6300215A84002973A500297B
      B5003184C600318CC600318CC6003184BD00317BB5002973AD0029639C00295A
      8C00294A7B002939730029316B00292963002929630029296300313163003131
      6B00424273005252840052527B0031316B00313163003131630021426B00215A
      8C002973A5003184C600318CCE00318CC600318CC6003184BD00297BB500216B
      9C00184A6B000829390000000000000000000000000000000000000000000000
      00000000000000000000184A6300215A84002973A500297BB5003184C600318C
      C600318CCE00318CCE00318CCE009CC6E700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEFF7005A8CAD00297B
      B500318CCE00318CC600318CC6003184BD00297BB500216B9C00184A6B000829
      390000000000000000000000000000000000000000000000000000000000315A
      6B0039637B00528CA50063A5C60063ADCE0063ADD60052ADD6004AA5D600399C
      CE00399CCE00319CCE00428CBD00A56B7B00E7737300FF848C00FF848400FF84
      8400EF6B6B00BD4A5200527BAD003194CE00319CCE00319CCE00319CCE00399C
      CE00429CCE004AA5D60052ADD6005AADD60063B5DE006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5D6006BADCE005A9CBD004A7B940021425A00183139000000
      00000000000000000000000000000000000000000000315A6B0039637B00528C
      A50063A5C6006BADD6006BB5D6006BB5DE006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5DE006BA5C600AD9C9C00AD9C9C00E7BDBD00F7CE
      CE00FFCECE00FFC6C600F7BDBD00DEADAD00947373007B6B6B00638CA500639C
      BD00639CBD0063A5BD0063A5C6006BADCE006BB5D6006BB5DE006BB5DE006BB5
      D6006BADCE005A9CBD0042738C0021394A001831390000000000000000000000
      000000000000000000000000000021526B002963840029739C002984B5003194
      C600318CBD003173AD0029639400295284002942730029396B00293163002929
      6300292963003131630031316B0039396B0052527B00636B8C008484A500A5A5
      BD00C6C6D600E7E7EF00D6D6DE0052527B002929630031316300214A6B002163
      8C00297BAD003194C6003194CE003194CE003194CE003194C600318CC6002984
      AD0021638C0010425A0010314200000000000000000000000000000000000000
      00000000000021526B002963840029739C002984B5003194C6003194CE003194
      CE003194CE003194CE003194CE009CCEE700F7F7FF00F7F7F700BDBDBD00CECE
      CE00F7F7FF00EFEFF700CED6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00EFEFEF00EFF7F7005A8CAD002984
      B5003194CE003194CE003194CE003194C600318CC6002984AD0021638C001039
      520008293900000000000000000000000000000000000000000000000000426B
      7B00528494005A9CB50063ADCE0063ADD60052ADD6004AA5D600399CCE00319C
      CE00319CCE003994C6008C738400E7737300FF8C8C00FF8C8C00FF848400FF84
      8400FF8C8C00EF636300A5526300398CBD003194CE003194CE00319CCE00319C
      CE00399CCE0042A5CE004AA5D6005AADD60063B5D6006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5D60063A5C600528CA5003963730021394A000000
      00000000000000000000000000000000000000000000426B7B00528494005A9C
      B50063ADCE006BB5D6006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5DE00739CB500BDADAD00CEB5B500EFCECE00FFD6
      D600FFCECE00FFCECE00FFC6C600EFB5B500B58C8C00846B6B00637B8C00639C
      BD00639CBD0063A5BD0063A5C6006BADCE006BB5D6006BB5DE006BB5DE006BB5
      DE006BB5D60063A5C600528CA50029526B0018394A0000000000000000000000
      000000000000000000000000000029638400297394003184AD00318CBD00318C
      BD00315A8C0031396B003131630029296300292963003131630039396B004A4A
      7B0063638C007B7B9C009C9CB500BDBDCE00D6DEE700EFEFF700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0063638C002929630031316300214A6B002163
      8C00297BA5002994C6003194CE003194CE003194CE003194CE003194C600298C
      B50021739C001852730010394A00000000000000000000000000000000000000
      00000000000029638400297394003184AD00318CBD003194C6003194CE003194
      CE003194CE003194CE003194CE009CCEE700FFFFFF00F7F7F7007B7B7B00949C
      9C00FFFFFF00EFEFEF00ADADAD00A5A5AD00A5ADAD00ADADAD00A5ADAD00A5AD
      AD00A5ADAD00ADADAD00A5ADAD00ADADAD00E7E7E700F7F7F7005A8CAD00298C
      B5003194CE003194CE003194CE003194CE003194C600298CB50021739C00184A
      6B00103142000000000000000000000000000000000000000000000000004A7B
      8C005A8CA50063A5BD0063ADCE005AADD60052ADD60042A5CE00399CCE00319C
      CE003194CE00737B9C00D6737300F7949400FF949400FF8C8C00FF8C8C00FF8C
      8C00FF848C00F78C8C00E7525200845A73003194C6003194CE003194CE00319C
      CE00399CCE00399CCE004AA5D60052ADD60063ADD60063B5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5D60063ADCE005A94B500426B8400294A5A000000
      000000000000000000000000000000000000000000004A7B8C005A8CA50063A5
      C6006BADD6006BB5D6006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5DE007BA5B500CEBDBD00DEC6C600F7D6D600FFD6
      D600FFD6D600FFCECE00FFCECE00EFBDBD00BD9C9C0084737300637B8C00639C
      BD00639CBD0063A5C60063ADCE006BADCE006BB5D6006BB5DE006BB5DE006BB5
      DE006BB5D60063ADCE005294AD0039637B002142520000000000000000000000
      000000000000000000000000000031738C00317B9C00318CB5003194C6003184
      B500315A8C00294A7B00313163004A4A730073739C009494AD00B5B5C600CECE
      DE00E7E7EF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7FF0063638C002929630031316300214A6B002163
      8C00297BA5002994C6003194CE003194CE003194CE003194CE003194C600298C
      BD00297BA500185A7B0010425A00000000000000000000000000000000000000
      00000000000031738C00317B9C00318CB5003194C6003194C6003194CE003194
      CE003194CE003194CE003194CE009CCEE700FFFFFF00FFFFFF00DEDEDE00E7E7
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F7005A94AD002984
      B5003194CE003194CE003194CE003194CE003194C600298CBD00217BA5001852
      7300103142000000000000000000000000000000000000000000000000005A84
      9C006394AD0063A5C60063ADCE005AADD6004AA5D600429CCE00399CCE00319C
      CE00638CB500CE848400F7949400FF949C00FF949400F7949400F7949400FF8C
      8C00FF8C8C00FF8C8C00F7848400D65A5A00737394003194CE003194CE00319C
      CE00319CCE00399CCE0042A5CE0052ADD60063ADD6006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5D60063ADCE005A9CB50042738C00295263000000
      000000000000000000000000000000000000000000005A849C006394AD0063A5
      C6006BADD6006BB5D6006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5DE0073ADC600E7D6D600E7D6D600F7D6D600FFDE
      DE00FFDEDE00FFD6D600FFCECE00EFBDBD00BD9494008C737300638C9C0063A5
      C60063A5C60063ADCE006BADCE006BADD6006BB5D6006BB5DE006BB5DE006BB5
      DE006BB5D60063ADCE005A94B500396B840021425A0000000000000000000000
      0000000000000000000000000000397B9C003984A500318CB5003194C6003184
      B500315284002939730039396B00ADADC600F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7FF0063638C002929630031316300214A6B002163
      8C00297BA5002994C6003194CE003194CE003194CE003194CE003194CE00298C
      BD00297BAD0021638400104A6300000000000000000000000000000000000000
      000000000000397B9C003984A500318CB5003194C6003194CE003194CE003194
      CE003194CE003194CE003194CE009CCEE700FFFFFF00FFFFFF00D6D6D600DEDE
      DE00FFFFFF00F7F7F700DEDEDE00D6D6D600D6D6DE00D6D6DE00D6DEDE00D6DE
      DE00D6D6DE00D6D6DE00D6DEDE00D6DEDE00F7F7F700F7F7FF005A94AD00298C
      BD003194CE003194CE003194CE003194CE003194C600298CBD00297BA500185A
      7B00103142000000000000000000000000000000000000000000000000005A8C
      A500639CB50063A5C60063ADCE0052ADD6004AA5D600399CCE00399CCE00529C
      C600BD9CA500CE9CA500D6A5B500EF9CA500FF949400F7949400F7949400FF94
      9400FF8C9400F78C8C00DE8C8C00DE848C00C6737B005A8CB5003194CE003194
      CE00319CCE00399CCE00399CCE004AA5D6005AADD60063B5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5D6006BADCE005A9CBD004A7B9400315263000000
      000000000000000000000000000000000000000000005A8CA500639CB50063A5
      C6006BB5D6006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5DE006BB5D600EFE7E700FFEFEF00F7E7E700F7DE
      DE00FFDEDE00FFD6D600F7CECE00E7BDBD00A58C8C008C7B7B00639CBD006BAD
      CE006BADCE006BADCE006BADD6006BB5D6006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5D60063ADCE005A9CB500426B8400214A5A0000000000000000000000
      0000000000000000000000000000397B9C003984AD00318CBD003194C6003184
      B50031397300292963004A4A7B00E7EFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F70063638C002929630031316300214A6B002163
      8C00297BA5002994C6003194CE003194CE003194CE003194CE003194CE002994
      C6002984AD0021638400184A6300000000000000000000000000000000000000
      000000000000397B9C003984AD00318CBD003194C6003194CE003194CE003194
      CE003194CE003194CE003194CE009CCEE700FFFFFF00FFFFFF0084848C00A5A5
      A500FFFFFF00EFEFF700BDBDBD00B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500EFEFEF00F7FFFF005A94AD00318C
      BD00319CCE00319CCE00319CCE00319CCE00319CCE003194C6002984AD00185A
      7B0010314200000000000000000000000000000000000000000000000000638C
      A500639CB50063A5C6005AADCE0052ADD6004AA5D600429CCE00399CCE006B9C
      C600849CBD00639CC60073A5C600DEA5A500FF9C9C00FF9C9C00FF949C00FF94
      9400FF949400DE7B7B0084849C007B9CBD009C94A500738CAD00319CCE00319C
      CE00319CCE00319CCE00399CCE0042A5CE0052A5D6005AADD6006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5D6006BADCE005A9CBD004A7B940031526B000000
      00000000000000000000000000000000000000000000638CA500639CB5006BA5
      C6006BB5D6006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5DE006BB5DE009CBDCE00FFFFFF00FFEFEF00FFDE
      DE00FFDEDE00FFD6D600EFCECE00CEADAD009C8484006B8494006BB5D6006BB5
      D6006BB5D6006BB5D6006BB5D6006BB5D6006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5D60063ADCE005A9CB500426B8400214A5A0000000000000000000000
      00000000000000000000000000004284A5003984AD00318CBD003194C6003184
      B50031427300292963004A527B00E7E7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7FF0063638C002929630031316300184A6B00216B
      8C002984AD003194CE003194CE003194CE003194CE003194CE003194CE002994
      C6002984AD0021638400184A6300000000000000000000000000000000000000
      0000000000004284A5003984AD00318CBD003194C6003194CE003194CE003194
      CE003194CE003194CE003194CE009CCEE700FFFFFF00FFFFFF00CECECE00DEDE
      DE00FFFFFF00FFFFFF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00FFFFFF00F7FFFF007B9CAD006394
      AD0073ADC60073ADC60073ADC60073ADC60073ADC60073A5BD005A94AD002163
      7B0010314200000000000000000000000000000000000000000000000000638C
      A500639CB50063A5C6005AADD60052ADD6004AA5D60042A5CE00399CCE00429C
      CE00319CCE003194CE005A9CBD00D6A5A500FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00CE6B6B004A8CBD00319CCE00399CCE00399CCE00319CCE00319C
      CE003194CE00319CCE00319CCE00399CCE0042A5D60052ADD60063ADD6006BB5
      DE006BB5DE006BB5DE006BB5D6006BADCE005A9CBD004A7B940031526B000000
      00000000000000000000000000000000000000000000638CA500639CB5006BAD
      C6006BB5D6006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE00BDCEDE00FFF7F700FFE7
      E700FFDEDE00F7DEDE00E7CECE00C6ADAD007B848C006BB5D6006BB5DE006BB5
      D6006BB5D6006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5D60063ADCE005A9CBD00426B8400214A5A0000000000000000000000
      00000000000000000000000000004284A5003984AD00318CBD003194C6003184
      B50031397300292963004A527B00E7E7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7FF0063638C002929630031316300214A6B00296B
      8C003184AD00399CC600399CCE00399CCE00399CCE00399CCE00319CCE002994
      C6002984AD0021638400184A6300000000000000000000000000000000000000
      0000000000004284A5003984AD00318CBD003194C6003194CE003194CE003194
      CE003194CE003194CE003194CE009CCEE700FFFFFF00FFFFFF00DEE7E700E7E7
      EF00FFFFFF00FFFFFF00E7E7E700DEDEDE00DEE7E700E7E7E700E7E7E700E7E7
      E700DEE7E700E7E7E700E7E7E700DEE7E700F7F7FF00F7FFFF00A5A5A5009C9C
      A500B5BDBD00B5BDBD00B5BDBD00B5BDBD00B5BDBD00BDBDC6008CA5AD00215A
      730010314200000000000000000000000000000000000000000000000000638C
      A500639CB50063A5C6005AADD60052ADD6004AA5D60042A5D600429CCE00399C
      CE00319CCE00319CCE00639CBD00DEA5A500FFA5A500FFA5A500FF9CA500FF9C
      A500F79C9C00BD636B004A638400396B8C0031739400318CB500319CCE00319C
      CE003194CE003194C6003194CE003194CE00399CCE0042A5CE0052ADD60063AD
      D6006BB5DE006BB5DE006BB5DE006BADCE005A9CBD004A7B940031526B000000
      00000000000000000000000000000000000000000000638CA500639CB5006BAD
      C6006BB5D6006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE0084ADC600C6C6
      CE00F7E7E700F7DEDE00BDBDBD00739CAD006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5D60063ADCE005A9CBD00426B8400214A5A0000000000000000000000
      00000000000000000000000000004284A500398CAD00318CBD003194C6003184
      B50031397300292963004A527B00E7E7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7FF006363840029296300313163005A637B008494
      9C009CB5BD00B5D6DE00C6DEEF00BDDEE700BDD6E700B5D6DE0063ADCE00298C
      BD00297BAD0021638400184A6300000000000000000000000000000000000000
      0000000000004284A500398CAD00318CBD003194C6003194CE003194CE003194
      CE003194CE003194CE003194CE009CCEE700FFFFFF00FFFFFF008C8C8C00A5AD
      AD00FFFFFF00F7F7F700BDBDBD00B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5BD00EFEFEF00FFFFFF00ADADAD00B5B5
      B500CECECE00CECECE00CECECE00CECECE00CECECE00CECECE008C9CA5002152
      6B0010314200000000000000000000000000000000000000000000000000638C
      A500639CB50063A5C60063ADD6005AADD60052ADD6004AA5D60042A5D600399C
      CE00399CCE00319CCE00639CBD00DEA5A500FFA5A500FFA5AD00FFA5A500FFA5
      A500EF9C9C00B55A5A007321290063212100632129005A3139005A4252004263
      8C00298CBD003194C600298CBD002994C6003194C6003994C60042A5CE0052AD
      D60063ADD6006BB5DE006BB5D6006BADCE005A9CBD004A7B940031526B000000
      00000000000000000000000000000000000000000000638CA500639CB5006BAD
      C6006BB5D6006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5D6006BB5D6006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5
      D6006BB5D6006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5D60063ADCE005A9CBD00426B8400214A5A0000000000000000000000
      00000000000000000000000000004284A500398CAD00318CBD003194C6003184
      B50031427300292963004A527B00E7E7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7FF00BDBDCE004242730031316300313163004A4A5A006B6B
      6B00848484009C9C9C00A5A5A500A5A5A500C6C6C600EFEFEF0073A5BD00297B
      A500297BA50021638400184A6300000000000000000000000000000000000000
      0000000000004284A500398CAD006BA5C60063ADCE0063ADCE0063ADCE0063AD
      CE0063ADCE0063ADCE0063ADCE00BDDEEF00FFFFFF00FFFFFF00BDBDBD00CECE
      CE00FFFFFF00FFFFFF00E7E7EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700F7FFFF00F7FFFF00A5ADAD00A5A5
      AD00C6C6C600C6C6C600C6C6C600C6C6C600C6CECE00CECECE008C9CA5002152
      6B00103142000000000000000000000000000000000000000000000000007B9C
      AD0084ADBD008CBDD60094C6DE008CC6E7008CC6E70084C6E70084C6DE007BBD
      DE007BBDDE0073BDDE0094B5CE00E7ADAD00FFADAD00FFADAD00FFA5A500FFA5
      A500E7949400A54A4A007B181800731010007310100073101000731010006B21
      21006B424A0063849C0063A5C60063A5C60063A5CE006BADCE0073B5D6007BBD
      DE008CC6E70094C6E70094CEE70094C6DE0084ADC600638C9C004A6373000000
      000000000000000000000000000000000000000000007B9CAD0084ADBD008CBD
      D60094C6DE0094CEE70094CEE70094CEE70094CEE70094CEE70094CEE7009CCE
      E7009CCEE7009CCEE7009CCEE7009CCEE7008CA5B5008C94A500949CAD00A5A5
      AD00A5A5B500A5A5AD009CA5AD009494A5007B8C940084A5BD0094C6DE0094C6
      DE0094C6DE0094C6DE0094C6E70094C6E70094CEE70094CEE70094CEE70094CE
      E70094CEE70094C6DE0084ADC6005A7B8C003952630000000000000000000000
      00000000000000000000000000006B94AD006B9CBD006BADCE006BB5D600639C
      C60039427300292963004A527B00E7E7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00D6D6DE00B5B5
      C6008C8CAD006B6B940042427300313163003131630031316300525263007B7B
      7B0094949400ADADAD00B5B5B500B5B5B500CECECE00EFEFEF0084A5B500528C
      A5005A94B5004A7B9400315A6B00000000000000000000000000000000000000
      0000000000006B94AD006B9CBD00CED6D600CED6D600CED6D600CED6D600CED6
      D600CED6D600CED6D600C6D6D600E7EFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700848484006B6B
      6B007B84840084848400848484007B7B7B0094949400CECECE009CA5AD00395A
      730021394A00000000000000000000000000000000000000000000000000A5AD
      B500B5C6CE00C6D6DE00CEE7EF00CEE7F700CEE7F700CEE7F700CEE7F700C6E7
      F700C6E7F700C6E7F700C6CED600E7ADAD00FFADAD00FFADAD00FFADAD00FFAD
      AD00DE8C8C009C3939007B1010007B1818007B18180073181800731818007310
      1000731010007B2929008C7B84009CBDC600A5BDCE00ADC6D600ADCEDE00BDD6
      E700C6DEEF00CEE7EF00CEE7F700C6DEEF00B5C6D6008C9CA500637373000000
      00000000000000000000000000000000000000000000A5ADB500B5C6CE00C6D6
      DE00CEE7EF00D6E7F700D6EFF700D6EFF700D6EFF700D6EFF700D6EFF700D6EF
      F700D6EFF700D6EFF700D6EFF700D6EFF700A5A5A500A58C8C00CEA5A500EFB5
      B500F7BDBD00F7B5B500E7ADAD00C6949400846B6B00949CA500C6DEE700C6DE
      E700C6DEE700C6DEE700CEDEEF00CEE7EF00CEE7EF00CEE7F700D6E7F700D6EF
      F700CEE7F700C6DEEF00B5C6CE00848C94005A636B0000000000000000000000
      00000000000000000000000000009CADBD00A5BDCE00B5CEDE00BDD6E700A5BD
      D600424A7B002929630052527B00EFEFF700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700DEDEE700BDBDCE009C9CB50073739C005A5A840039396B003131
      630031316B0039396B004A4A730039396B0031316300313163004A4A5A006363
      63007B7B7B00949494009C9C9C009C9C9C00C6C6C600F7F7F700A5B5B50094AD
      B5009CB5C6007B949C005A6B7300000000000000000000000000000000000000
      0000000000009CADBD00A5BDCE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00EFEFEF00FFFFFF00FFFFFF00B5B5B500C6C6
      C600FFFFFF00F7F7F700BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00F7F7F700FFFFFF00A5A5A5009C9C
      9C00B5B5B500B5B5B500B5B5B500B5B5B500BDBDBD00CECECE00ADADB5006373
      7B00424A5200000000000000000000000000000000000000000000000000BDBD
      BD00D6D6D600E7E7E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7D6D600DEADAD00FFB5B500FFADAD00FFADAD00FFB5
      B500D6848400942929007B1010007B1818007B1818007B181800731818007310
      100073101000731010007B212100A5848400CECECE00D6D6D600DEDEDE00E7E7
      E700F7F7F700FFFFFF00FFFFFF00F7F7F700DEDEDE00ADADAD007B7B7B000000
      00000000000000000000000000000000000000000000BDBDBD00D6D6D600E7E7
      E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDADAD00B5949400E7B5B500F7BD
      BD00FFBDBD00FFBDBD00F7BDBD00DEADAD00B58C8C0084737300A59C9C00C6C6
      C600E7E7E700E7E7E700EFEFEF00EFEFEF00F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700D6D6D6009C9C9C006B6B6B0000000000000000000000
      0000000000000000000000000000C6C6C600D6D6D600E7E7E700F7F7F700D6D6
      DE004A4A7B002929630042427300C6C6D600E7E7EF00C6C6D600A5A5BD008484
      A50063638C004242730031316B002929630039396B0042427300636384008484
      9C009C9CAD00ADADB500BDBDBD0052527B002929630031316300525263007373
      73008C8C8C00A5A5A500ADADAD00ADADAD00CECECE00F7F7F700BDBDBD00C6C6
      C600CECECE00ADADAD007B7B7B00000000000000000000000000000000000000
      000000000000C6C6C600D6D6D600DEDEDE00E7E7E700EFEFEF00EFEFEF00EFEF
      EF00E7E7E700EFEFEF00F7F7F700FFFFFF00FFFFFF00FFFFFF008C8C8C00ADAD
      AD00FFFFFF00F7F7F700D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00F7F7F700FFFFFF008C8C8C007373
      73008C8C8C008C8C8C0084848400848484009C9C9C00CECECE00B5B5B5008484
      840052525200000000000000000000000000000000000000000000000000BDBD
      BD00D6CECE00E7E7E700F7F7F700FFF7F700FFFFFF00FFFFFF00FFF7F700FFF7
      F700FFF7F700F7DEDE00C68C8C00E7ADAD00FFB5B500FFB5B500FFB5B500FFB5
      B500C67B7B008C212100841010007B1818007B1818007B1010007B1818007310
      10007310100073101000731010007B212100AD8C8C00C6BDBD00CEC6C600DED6
      D600E7E7E700F7EFEF00F7F7F700F7EFEF00DED6D600ADA5A5007B7B7B000000
      00000000000000000000000000000000000000000000BDBDBD00D6CECE00E7E7
      E700F7F7F700FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDB5B500C6A5A500EFBDBD00FFC6
      C600FFC6C600FFC6C600FFBDBD00F7BDBD00E7ADAD00BD949400846B6B007B6B
      6B00847B7B00C6C6C600E7DEDE00E7E7E700EFE7E700F7EFEF00F7EFEF00FFF7
      F700F7F7F700F7EFEF00D6D6D6009C9C9C006B6B6B0000000000000000000000
      0000000000000000000000000000C6BDBD00D6CECE00E7E7E700F7EFEF00D6CE
      D6004A4A7B003131630031316B004A4A73004A4A7B0042427300313163002929
      630039396B005A5A7B0073738C008C8CA500A5A5B500BDBDBD00B5B5BD008C8C
      9C006B6B8C0084849C00CECECE005A5A7B002929630031316300525263007B7B
      730094949400ADADAD00B5B5B500B5B5B500D6D6D600F7F7F700BDBDBD00C6BD
      BD00CEC6C600ADA5A5007B7B7B00000000000000000000000000000000000000
      000000000000C6BDBD00D6CECE00DEDEDE00E7E7E700DEDEDE008C8C8C00B5B5
      B500F7EFEF00CECECE009C9C9C00D6D6D600FFFFFF00FFFFFF00EFEFEF00EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00949494007B7B
      7B0094949400949494009494940094949400A5A5A500CECECE00B5B5B500847B
      7B0052525200000000000000000000000000000000000000000000000000BDB5
      B500D6CECE00E7DEDE00F7EFEF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFEFEF00D69C9C00AD525200E7B5B500FFBDBD00FFBDBD00FFBDBD00F7B5
      B500BD7373008C21210084101000841818007B1010007B1010007B1010007B10
      10007310100073101000731010007310100084394200AD9C9C00C6B5B500CEC6
      C600DECECE00EFDEDE00F7E7E700F7E7E700DED6D600ADA5A5007B7373000000
      00000000000000000000000000000000000000000000BDB5B500D6CECE00E7DE
      DE00F7EFEF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700C6B5B500D6B5B500F7C6C600FFC6
      C600FFC6C600FFC6C600FFC6C600FFC6C600FFBDBD00EFB5B500D6A5A500A584
      84007B6B6B0073636300B5ADAD00DED6D600E7DEDE00EFDEDE00EFE7E700F7EF
      EF00F7EFEF00EFE7E700D6CECE009C9494006B6B6B0000000000000000000000
      0000000000000000000000000000C6BDBD00D6CECE00E7DEDE00F7E7E700D6C6
      D6004A4A73003131630031316300292963002929630031316300313163002929
      63006B6B8C00C6C6C600CECECE00CECECE00CECECE00D6D6D6009494A5003131
      63002929630063638400C6C6C6005A5A7B0029296300313163004A4A52006363
      63007B7B7B008C8C8C009494940094949400C6C6C600F7F7F700BDBDBD00C6B5
      B500CEC6C600AD9C9C007B737300000000000000000000000000000000000000
      000000000000C6BDBD00D6CECE00E7E7E700E7E7E700CECECE00636363009494
      9400EFEFEF00D6D6D600ADADAD00DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADADAD00ADAD
      AD00CECECE00CECECE00CECECE00CECECE00CECECE00D6D6D600B5B5B500847B
      7B0052525200000000000000000000000000000000000000000000000000BDB5
      B500D6C6C600E7DEDE00F7E7E700FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEF
      EF00EFCECE00AD313100AD4A4A00E7BDBD00FFC6C600FFBDBD00FFBDBD00E7B5
      B500B56B6B008C2121008410100084101000841010007B1010007B1010007B10
      1000731010007310100073101000731010007B5A6300948C9400B5A5A500C6B5
      B500D6BDBD00E7CECE00EFDEDE00EFDEDE00DECECE00ADA5A5007B7373000000
      00000000000000000000000000000000000000000000BDB5B500D6C6C600E7DE
      DE00F7E7E700FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEF
      EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00C6B5B500DEBDBD00F7C6C600FFCE
      CE00FFCECE00FFC6C600FFC6C600FFC6C600FFC6C600FFBDBD00F7BDBD00E7AD
      AD00B58C8C007B6B6B0073636300B5ADAD00DECECE00DED6D600E7D6D600EFDE
      DE00EFDEDE00EFDEDE00D6C6C6009C9494006B63630000000000000000000000
      0000000000000000000000000000C6B5B500D6C6C600E7D6D600F7DEDE00D6C6
      CE004A4A73003131630031316300313163003131630031316300313163002929
      6300736B8C00CECECE00CECECE00CECECE00CECECE00D6D6CE009494A5003131
      63002929630063638400C6C6CE005A5A7B0029296300313163005A5A6B008484
      8400A5A5A500C6C6C600CECECE00CECECE00DEDEDE00F7F7F700C6B5B500C6B5
      B500CEBDBD00AD9C9C007B737300000000000000000000000000000000000000
      000000000000C6B5B500D6C6C600E7E7E700E7E7E700DEDEDE00B5B5B500CECE
      CE00E7E7E700DEDEDE00D6D6D600EFEFEF00FFFFFF00FFFFFF008C8C8C00A5A5
      A500FFFFFF00EFEFEF00A5A5A5009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C00EFEFEF00FFFFFF00ADADAD00B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B5B5B5008473
      7300524A4A00000000000000000000000000000000000000000000000000BDAD
      AD00D6C6C600E7D6D600F7E7E700FFE7E700FFE7E700FFE7E700FFE7E700FFE7
      E700DE949400A5181800B5524A00E7B5B500FFC6C600FFC6C600FFC6C600E7AD
      AD00AD5A5A0094181800841010008410100084101000841010007B1010007B10
      10007B1010007310100073101000731818006B6B6B007B847B00A5949400B59C
      9C00C6ADAD00DEC6C600EFCECE00EFD6D600DEC6C600AD9C9C007B7373000000
      00000000000000000000000000000000000000000000BDADAD00D6C6C600E7D6
      D600F7E7E700FFE7E700FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEF
      EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00CEBDBD00E7C6C600F7CECE00FFCE
      CE00FFCECE00FFCECE00FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFBD
      BD00E7ADAD00B58C8C007B6B6B007B6B6B00CEBDBD00D6C6C600DEC6C600E7CE
      CE00EFD6D600E7D6D600D6C6C6009C8C8C006B63630000000000000000000000
      0000000000000000000000000000C6ADAD00D6BDBD00E7CECE00F7D6D600D6BD
      C6004A4A73003131630031316300313163003131630031316300313163002929
      6300736B8C00CECECE00CECECE00CECECE00CECECE00D6D6CE009494A5003131
      63002929630063638400C6C6C6005A5A7B0029296300313163004A4A52006363
      63007B7B7B00949494009494940094949400C6C6C600FFFFFF00C6B5B500C6AD
      AD00CEB5B500AD9494007B6B6B00000000000000000000000000000000000000
      000000000000C6ADAD00D6BDBD00E7E7E700EFE7E700CECECE00525252008C8C
      8C00F7EFEF00BDBDBD007B7B7B00C6C6C600FFFFFF00FFFFFF00A5A5A500B5B5
      B500FFFFFF00FFFFFF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00FFFFFF00FFFFFF00ADADAD00B5B5
      B500CECECE00CECECE00CECECE00D6CECE00D6CECE00D6D6D600BDB5B5008473
      7300524A4A00000000000000000000000000000000000000000000000000BDAD
      AD00D6BDBD00E7CECE00F7DEDE00FFE7E700FFE7E700FFE7E700FFDEDE00FFD6
      D600C64A4200AD181000BD4A4A00E7B5B500FFCECE00FFC6C600FFC6C600E7B5
      B500AD5A5A00941818008C1010008C18180084101000841010007B1010007B18
      18007B2118007B18180073181800732121006B5A5200637352008C847B00B594
      9400BDA5A500D6B5B500E7C6C600EFCECE00D6BDBD00AD9C9C007B6B6B000000
      00000000000000000000000000000000000000000000BDADAD00D6BDBD00E7CE
      CE00F7DEDE00FFE7E700FFE7E700FFE7E700FFE7E700FFE7E700FFE7E700FFE7
      E700FFE7E700FFE7E700FFE7E700FFE7E700D6C6C600F7D6D600F7CECE00F7CE
      CE00FFCECE00FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6
      C600F7BDBD00DEADAD00A58484007B6B6B00A5949400D6BDBD00D6BDBD00DEC6
      C600E7CECE00E7CECE00D6BDBD009C8C8C006B63630000000000000000000000
      0000000000000000000000000000C6ADAD00D6B5B500E7C6C600F7D6D600D6B5
      BD004A4A73003131630031316300313163003131630031316300313163002929
      63006B6B8C00CECECE00CECECE00CECECE00CECECE00D6D6CE009494A5002929
      630029295A0063638400C6C6CE005A5A7B0029296300313163005A5A63008484
      7B009C9C9C00B5B5B500BDBDBD00BDBDBD00DEDEDE00FFFFFF00C6B5B500C6A5
      A500CEADAD00AD9494007B6B6B00000000000000000000000000000000000000
      000000000000C6ADAD00D6B5B500E7E7E700EFE7E700DEDEDE00ADADAD00C6C6
      C600EFEFEF00E7E7E700E7E7E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700848484006B6B
      6B008484840084848400848484007B7B7B0094949400CECECE00BDB5B5008473
      7300524A4A00000000000000000000000000000000000000000000000000BDAD
      AD00D6BDBD00E7CECE00F7D6D600FFDEDE00FFDEDE00FFDEDE00FFDEDE00F7C6
      C600BD292100B5181800BD313100D69C9C00F7CECE00FFCECE00FFCECE00DEAD
      AD00AD5252009C101000941010008C1010008C1010008410100084181800844A
      4A0084635A0084524A007B5A4A007B4A420073635A005A6B52007B736300AD8C
      8C00BD949400D6ADAD00E7BDBD00EFC6C600DEBDBD00AD9494007B6B6B000000
      00000000000000000000000000000000000000000000BDADAD00D6BDBD00E7CE
      CE00F7D6D600FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDE
      DE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00E7CECE00FFEFEF00FFDEDE00F7D6
      D600F7CECE00F7CECE00F7CECE00FFC6C600FFC6C600FFC6C600FFC6C600FFC6
      C600FFC6C600F7BDBD00CE9C9C00846B6B0084737300D6BDBD00CEB5B500D6BD
      BD00DEC6C600E7C6C600CEB5B5009C8484006B5A5A0000000000000000000000
      0000000000000000000000000000C6A5A500D6B5B500E7BDBD00F7CECE00D6AD
      BD004A4273003131630031316300313163003131630031316300313163002929
      63006B6B8C00CECECE00CECECE00CECECE00CECECE00CECECE009494AD004242
      730052527B0084849C00C6C6C60052527B0031316300525273007B7B84009494
      9400A5A5A500B5B5B500B5B5B500B5B5B500D6D6D600FFFFFF00C6B5B500C69C
      9C00CEA5A500AD8C8C007B636300000000000000000000000000000000000000
      000000000000C6A5A500D6B5B500E7E7E700EFE7E700EFEFEF00F7F7F700EFEF
      EF00EFE7E700EFEFEF00EFEFEF00F7F7F700FFFFFF00FFFFFF00D6D6D600DEDE
      DE00FFFFFF00F7F7F700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700F7F7F700949494008484
      84009C9C9C009C9C9C009C9C9C009C9C9C00A5A5A500CECECE00BDB5B500846B
      6B0052424200000000000000000000000000000000000000000000000000BDA5
      A500D6B5B500E7C6C600F7D6D600FFD6D600FFDEDE00FFD6D600FFD6D600E7A5
      A500BD212100BD181800BD212100D6848400F7D6D600FFCECE00FFCECE00D6A5
      A500A54A4A00A51010009C101000941010008C18100084392900845A52008484
      940084737300845252007B635A0073313100734A42005A6B6300737B6B00AD84
      8400B5949400CEA5A500E7BDBD00EFC6C600D6B5B500AD9494007B6B6B000000
      00000000000000000000000000000000000000000000BDA5A500D6B5B500E7C6
      C600F7D6D600FFD6D600FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDE
      DE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00E7D6D600FFF7F700FFE7E700FFDE
      DE00FFE7E700FFDEDE00FFD6D600F7CECE00FFC6C600FFCECE00FFC6C600FFC6
      C600FFC6C600FFBDBD00DEADAD008C7373007B6B6B00C6ADAD00CEB5B500D6B5
      B500DEBDBD00DEBDBD00CEADAD009C8484006B5A5A0000000000000000000000
      0000000000000000000000000000C6A5A500D6ADAD00E7BDBD00F7C6C600D6AD
      B5004A4273003131630031316300313163003131630031316300313163002929
      63006B6B8C00CECECE00CECECE00CECECE00CECECE00CECECE00BDBDBD00ADAD
      B500BDBDBD00BDBDBD00A5A5A500636373007B7B84007B7B7B008C8C8C009494
      94009C9C9C00A5A5A500A5A5A500A5A5A500CECECE00FFFFFF00C6ADAD00C69C
      9C00CEA5A500AD8484007B636300000000000000000000000000000000000000
      000000000000C6A5A500D6ADAD00EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7
      E700EFEFEF00EFEFEF00EFEFEF00F7F7F700FFFFFF00F7F7F7007B7B7B009494
      9400FFFFFF00E7E7E700A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A5009C9C9C00A5A5A500E7E7E700F7F7F700949494008C8C
      8C00A59C9C00A5A5A500A5A5A500A59C9C00ADADAD00D6D6D600BDB5B500846B
      6B0052424200000000000000000000000000000000000000000000000000BDA5
      A500D6B5B500E7C6C600F7CECE00FFD6D600FFD6D600FFD6D600FFCECE00D684
      8400C6292100C6181800C6211800D67B7300F7D6D600FFD6D600FFD6D600D6AD
      AD00A54A4A00A5181800A51010009C1010009442310084847B0084949C00738C
      9400734A42007B1010007321180073181000732118006B524A007B736B00AD84
      8400B58C8C00CEA5A500E7B5B500EFBDBD00D6B5B500AD8C8C007B6363000000
      00000000000000000000000000000000000000000000BDA5A500D6B5B500E7C6
      C600F7CECE00FFD6D600FFD6D600FFD6D600FFD6D600FFD6D600FFD6D600FFD6
      D600FFD6D600FFD6D600FFD6D600FFD6D600FFD6D600FFD6D600FFD6D600FFD6
      D600F7CECE00E7C6C600F7D6D600F7CECE00F7C6C600FFCECE00FFCECE00FFC6
      C600FFC6C600FFC6C600E7B5B5009C848400846B6B00B5949400CEADAD00CEAD
      AD00D6B5B500DEB5B500CEADAD009C7B7B006B5A5A0000000000000000000000
      0000000000000000000000000000C69C9C00D6A5A500E7B5B500F7BDBD00D6A5
      AD004A4273003131630031316300313163003131630031316300313163002929
      63006B6B8C00CECECE00CEC6C600BDBDBD00ADADAD00ADADAD00ADADAD00A5A5
      A500A5A5A500A5A5A500ADADA500B5B5B500CECECE00C6C6C600C6C6C600C6C6
      C600CEC6C600C6C6C600C6C6C600C6C6C600E7E7E700FFFFFF00C6ADAD00C694
      9400CE9C9C00AD8484007B636300000000000000000000000000000000000000
      000000000000C69C9C00D6A5A500EFEFEF00EFEFEF00DEDEDE00A5A5A500BDBD
      BD00EFEFEF00D6D6D600B5B5B500DEDEDE00FFFFFF00FFF7F700C6C6C600CECE
      CE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F7009C9C9C007B7B
      7B008C8C8C008C8C8C008C8C8C008C8484009C9C9C00D6D6D600BDB5B5008463
      630052424200000000000000000000000000000000000000000000000000BD9C
      9C00D6ADAD00E7BDBD00F7C6C600FFCECE00FFCECE00FFCECE00FFCECE00CE73
      7300CE292100CE211800CE211800D6736B00EFD6D600FFD6D600FFD6D600D6AD
      AD00AD4A4A00AD181000A5181000A53939009C8C940094A5B5008C94A500738C
      8C006B635200732118007B181800732118006B1810007321180084423900AD7B
      7B00B5848400D69C9C00E7ADAD00EFB5B500DEADAD00AD8C8C007B6363000000
      00000000000000000000000000000000000000000000BD9C9C00D6ADAD00E7BD
      BD00F7C6C600FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00DEB5B500EFC6C600F7C6C600FFCECE00FFCECE00FFCE
      CE00FFC6C600FFC6C600EFB5B500A5848400846B6B00AD8C8C00CEADAD00CEAD
      AD00D6ADAD00DEB5B500CEA5A5009C7B7B006B52520000000000000000000000
      0000000000000000000000000000C69C9C00D6A5A500E7ADAD00F7B5B500D69C
      A5004A426B00313163003131630031316300313163003939630042396B005242
      6B008C738C00C6C6C600BDBDBD00949494008C8C8C009C9C9C00A5A5A5008C8C
      8C00949494009C9C9C009C9C9C009C9C9C00C6C6C600A5A5A500A59C9C00A5A5
      A500A59C9C00A59C9C00A59C9C009C9C9C00CECECE00FFFFFF00C6ADAD00C68C
      8C00CE949400AD7B7B007B5A5A00000000000000000000000000000000000000
      000000000000C69C9C00D6A5A500EFEFEF00EFEFEF00CECECE00636363009C9C
      9C00EFEFEF00CECECE009C9C9C00CECECE00F7F7F700F7F7F700FFFFFF00FFFF
      FF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7EFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7EFEF00EFEFEF00DEDEDE00DED6
      D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600BDADAD008463
      630052393900000000000000000000000000000000000000000000000000BD9C
      9C00D6ADAD00E7BDBD00F7C6C600FFC6C600FFCECE00FFC6C600FFC6C600D67B
      7B00D6292900CE211800D6291800DE635200EFC6C600FFDEDE00FFDEDE00D6AD
      B500AD524A00B5181000AD181800AD7B7300ADB5C600ADADBD008C949C008494
      9C00738473006B634A0073393100731818006B1010007310100084292900AD7B
      7B00BD848400D6949400E7A5A500EFB5B500DEADAD00AD8484007B6363000000
      00000000000000000000000000000000000000000000BD9C9C00D6ADAD00E7BD
      BD00F7C6C600FFC6C600FFCECE00FFCECE00FFC6C600FFC6C600FFC6C600FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00D6ADAD00C6A5A500D6ADAD00FFCE
      CE00FFCECE00FFCECE00DEADAD00E7BDBD00F7C6C600FFCECE00FFCECE00FFCE
      CE00FFCECE00FFC6C600EFB5B500A58C8C0084737300A58C8C00CEA5A500CEA5
      A500D6ADAD00DEADAD00CEA5A5009C7B7B006B52520000000000000000000000
      0000000000000000000000000000C6949400D69C9C00E7A5A500F7ADAD00DE9C
      A50063527B004A426B005A4A7300635273007B5A7300946B7B00AD7B8400C68C
      8C00DE9C9C00DECED600D6D6D600ADADAD00B5ADAD00CEC6C600CECECE00BDBD
      BD00C6BDBD00C6C6C600C6C6C600C6BDBD00DEDEDE00C6C6C600C6BDBD00C6C6
      C600C6C6C600C6C6C600BDBDBD00BDBDBD00DEDEDE00FFFFFF00C6ADAD00C68C
      8C00CE949400AD7373007B5A5A00000000000000000000000000000000000000
      000000000000C6949400D69C9C00EFEFEF00EFEFEF00DEDEDE008C8C8C00B5B5
      B500F7EFEF00DEDEDE00C6BDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00C6BDBD00C6BDBD00BDBDBD00C6C6C600EFEFEF00E7E7E700BDBDBD00D6CE
      CE00DEDEDE00DEDEDE00DEDEDE00E7E7E700E7DEDE00E7DEDE00DEDEDE00DED6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B5ADAD00845A
      5A0052393900000000000000000000000000000000000000000000000000BD94
      9400D6A5A500E7B5B500F7BDBD00FFC6C600FFC6C600FFC6C600FFBDBD00EF94
      9400D6292900D6291800DE291800E7524200F7BDB500FFE7E700FFDEDE00D6BD
      BD00B5635A00B5211800B5181800B59C9400ADB5BD00ADADBD0094ADAD0094AD
      AD00849C940073948400734A420073101000731010007310100084313100B57B
      7B00BD848400D6949400E7A5A500EFADAD00DEA5A500AD8484007B5A5A000000
      00000000000000000000000000000000000000000000BD949400D6A5A500E7B5
      B500F7BDBD00FFC6C600FFC6C600FFC6C600FFBDBD00FFBDBD00FFBDBD00FFBD
      BD00FFC6C600EFB5B500B5949400948484009C8C8C00AD9C9C00AD949400E7B5
      B500FFC6C600F7BDBD00BD9C9C00E7BDBD00F7CECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00EFBDBD00A58C8C0084737300AD8C8C00CEA5A500D6A5
      A500DEADAD00DEADAD00CE9C9C009C7373006B4A4A0000000000000000000000
      0000000000000000000000000000C68C8C00D6949400E79C9C00F7A5A500F7A5
      A500CE8C9C00C6849400CE8C9400D68C9400E7949400EF9C9C00F7A5A500FFA5
      A500FFADAD00FFEFEF00EFEFEF00B5B5B500ADADAD00C6C6C600C6C6C600ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00CECECE00B5B5B500ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00D6D6D600FFFFFF00C6A5A500C684
      8400CE8C8C00AD7373007B525200000000000000000000000000000000000000
      000000000000C68C8C00D6949400EFEFEF00F7EFEF00DEDEDE007B737300A5A5
      A500F7F7F700D6D6D600ADADAD00A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500ADADAD00E7E7E700DEDEDE009C9C9C00A5A5
      A500C6C6C600D6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600D6D6D600B5A5A5007B5A
      5A0052393900000000000000000000000000000000000000000000000000BD94
      9400D6A5A500E7ADAD00F7BDBD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFA5
      A500DE393100DE292100DE312100EF524200F7ADA500FFE7E700FFE7E700EFCE
      CE00B5847B00BD312100BD4A3900B5ADAD00A5B5BD00A5BDC600A5BDC600A5B5
      B500949494007B8C8400734239007310100073101000731010008C393900BD7B
      7B00C6848400DE949400EFA5A500EFA5A500DE9C9C00AD7B7B007B5A5A000000
      00000000000000000000000000000000000000000000BD949400D6A5A500E7AD
      AD00F7BDBD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFB5B500FFB5B500D69C
      9C009C848400847B7B008C7B7B009C949400BDADAD00C6ADAD00BDA5A500B59C
      9C00B5949400BDA5A500DEBDBD00EFCECE00FFCECE00FFD6D600FFCECE00FFCE
      CE00FFCECE00FFCECE00E7BDBD00A58C8C0084737300B58C8C00CE9C9C00D6A5
      A500DEADAD00E7ADAD00CE9C9C009C7373006B4A4A0000000000000000000000
      0000000000000000000000000000C68C8C00D6949400E7949400F79C9C00FFA5
      A500FFA5A500FFA5A500FFA5A500FFA5A500FFA5A500FFA5A500FFA5A500FFA5
      A500FFA5A500FFEFEF00EFEFEF00B5B5B500B5B5B500C6C6C600C6C6C600B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500D6CECE00BDB5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500D6D6D600FFFFFF00C6A5A500C67B
      7B00CE848400AD6B6B007B525200000000000000000000000000000000000000
      000000000000C68C8C00D6949400EFEFEF00EFEFEF00E7E7E700B5B5B500CECE
      CE00F7EFEF00E7E7E700E7DEDE00DEDEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00DEDEDE00E7DEDE00EFEFEF00DEDEDE00848484005252
      5200A5A5A500D6D6D600ADADAD008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C00848484009C9C9C00CECECE00B5A5A5007B52
      520052313100000000000000000000000000000000000000000000000000BD94
      9400D69C9C00E7ADAD00F7B5B500FFB5B500FFBDBD00FFBDBD00FFB5B500FFAD
      AD00E7525200DE292100E7392900F7524200F78C7B00FFD6D600FFEFEF00FFE7
      E700CEADAD00B5635A00C6A59C00ADCECE00ADCECE00B5D6CE00B5CECE00B5BD
      C600A59C9C008C847B007B3939007310100073101000731818009C525200C67B
      7B00D6848400E7949400EF9C9C00EFA5A500DE9C9C00AD7B7B007B5A5A000000
      00000000000000000000000000000000000000000000BD949400D69C9C00E7AD
      AD00F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500BD8C8C00947B7B00847B
      7B00847B7B00A5949400C6B5B500DEC6C600EFCECE00EFCECE00E7CECE00DEC6
      C600DEBDBD00E7C6C600EFCECE00FFD6D600FFD6D600FFD6D600FFD6D600FFCE
      CE00FFCECE00FFCECE00E7B5B500948484008C737300C6949400D69C9C00DEA5
      A500E7A5A500E7A5A500CE9494009C6B6B006B4A4A0000000000000000000000
      0000000000000000000000000000C6848400D68C8C00E7949400F7949400FF9C
      9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FFE7E700EFEFEF00B5B5B500B5ADAD00C6C6C600C6C6C600B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500CECECE00BDB5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500D6D6D600FFFFFF00C69C9C00C673
      7300CE7B7B00AD6B6B007B4A4A00000000000000000000000000000000000000
      000000000000C6848400D68C8C00EFE7E700EFEFEF00EFEFEF00F7F7F700F7EF
      EF00EFEFEF00EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7EFEF00F7EFEF00DEDEDE00848484005A5A
      5A00A5A5A500D6CECE00BDB5B500A5A5A500A5A5A500ADA5A500ADA5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500B5B5B500CECECE00B5A5A5007B52
      520052313100000000000000000000000000000000000000000000000000C694
      9400D69C9C00E7ADAD00F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500EF848400DE393100E7312100F7523900F77B6B00F7AD9C00FFE7DE00FFEF
      F700EFDEDE00D6BDBD00DED6D600D6D6D600D6DEDE00C6E7DE00ADC6BD009CAD
      94009CA59400949C9C008442390073101000731010007B212100B56B6B00CE7B
      7B00DE8C8C00EF949400F7A5A500EFADAD00DE9C9C00AD7B7B007B5252000000
      00000000000000000000000000000000000000000000C6949400D69C9C00E7AD
      AD00F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500AD949400A59C9C00B5A5
      A500D6C6C600E7D6D600F7DEDE00F7DEDE00FFDEDE00FFDEDE00FFDEDE00F7D6
      D600F7D6D600F7D6D600FFD6D600FFD6D600FFD6D600FFD6D600FFD6D600FFD6
      D600FFCECE00F7C6C600D6ADAD00947B7B008C737300D69C9C00DE9C9C00E7A5
      A500EFADAD00E7A5A500D69494009C6B6B006B4A4A0000000000000000000000
      0000000000000000000000000000C68C8C00D68C8C00E7949400F7949400FF9C
      9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FFE7E700E7E7E700ADADAD00A5A5A500BDBDBD00BDBDBD00A5A5
      A500ADA5A500ADA5A500ADA5A500A5A5A500C6C6C600ADADAD00ADA5A500ADA5
      A500A5A5A500A5A5A500A5A5A500A5A5A500CECECE00FFFFFF00C69C9C00C673
      7300CE7B7B00AD6363007B4A4A00000000000000000000000000000000000000
      000000000000C68C8C00D68C8C00E7E7E700EFE7E700EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00EFEFEF00EFEFEF00D6D6D600848484005A5A
      5A00A5A5A500CECECE00ADADAD00949494009494940094949400949494009494
      9400949494009494940094949400948C8C00A59C9C00C6C6C600B5A5A5007B52
      520052313100000000000000000000000000000000000000000000000000C69C
      9C00D6A5A500E7ADAD00F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFADAD00EF736B00E7523900E75A4200F76B5A00F77B6B00F7BDAD00F7F7
      EF00F7EFEF00EFF7F700E7E7EF00E7E7E700D6DEDE00BDBDB5009C6352009452
      3900A59C94009C9C9C008439310073101000731010009C4A4A00CE7B7B00DE84
      8400E7949400F79C9C00F7ADAD00F7ADAD00D69C9C00A57B7B007B5252000000
      00000000000000000000000000000000000000000000C69C9C00D6A5A500E7AD
      AD00F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500DEA5A500DECECE00DED6
      D600EFDEDE00FFE7E700FFE7E700FFE7E700FFE7E700FFE7E700FFE7E700FFDE
      DE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFD6D600FFD6D600FFD6
      D600FFCECE00EFC6C600B59C9C00947B7B00A57B7B00DEA5A500E7A5A500EFAD
      AD00EFADAD00EFADAD00D69494009C6B6B006B4A4A0000000000000000000000
      0000000000000000000000000000CE8C8C00DE949400E7949400F7949400FF9C
      9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00F7E7E700E7E7E700BDBDBD00BDB5B500CEC6C600CECECE00BDB5
      B500BDBDBD00BDBDBD00BDBDBD00BDB5B500D6D6D600BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDB5B500D6D6D600FFFFFF00C69C9C00C673
      7300CE7B7B00A56363007B4A4A00000000000000000000000000000000000000
      000000000000CE8C8C00DE949400E7E7E700E7E7E700DEDEDE008C8C8C00ADAD
      AD00EFEFEF00CECECE00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500ADADAD00E7E7E700D6D6D6007B7B7B004242
      420094949400CECECE00A5A5A5008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8484009C9C9C00C6C6C600B5A5A5008452
      520052313100000000000000000000000000000000000000000000000000CEA5
      A500DEA5A500E7ADAD00F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFB5B500F7A59C00DE735A00E76B5A00F78C7B00F7A59400F7BDAD00F7EF
      E700F7FFFF00EFDEDE00E7E7DE00E7D6CE00DED6D600B5948400A5291800A56B
      6300ADC6BD009C8C8C007B2921007310100084292900C6737300DE848400E794
      9400EF9C9C00F7ADAD00FFADAD00EFADAD00D69C9C00A5737300735252000000
      00000000000000000000000000000000000000000000CEA5A500DEA5A500E7AD
      AD00F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500F7DEDE00FFFF
      FF00FFEFEF00F7E7E700FFE7E700FFEFEF00FFE7E700FFE7E700FFE7E700FFE7
      E700FFE7E700FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFD6D600FFD6
      D600F7CECE00D6B5B50094848400947B7B00D69C9C00E7A5A500EFADAD00EFAD
      AD00F7ADAD00EFADAD00CE949400946B6B006B4A4A0000000000000000000000
      0000000000000000000000000000D6949400DE949400EF949400F7949400FF9C
      9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00F7E7E700E7E7E7009C9C9C0094949400B5ADAD00B5ADAD009C94
      94009C9C9C009C9C9C009C9C9C009C9C9C00BDBDBD00A5A5A5009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C949400C6C6C600F7F7F700BD9C9C00BD73
      7300C67B7B00A56363007B4A4A00000000000000000000000000000000000000
      000000000000D6949400DE949400E7E7E700E7E7E700D6D6D6007B7B7B00A5A5
      A500EFEFEF00D6D6D600BDBDBD00B5B5B500BDB5B500BDB5B500BDB5B500BDB5
      B500BDB5B500B5B5B500BDB5B500BDBDBD00E7E7E700D6D6D600949494008C8C
      8C00B5B5B500C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00C6C6C600BDADAD008C5A
      5A005A313100000000000000000000000000000000000000000000000000DEAD
      AD00DEADAD00E7ADAD00F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFB5B500EFADA500E79C8C00E7A59400EFEFDE00F7D6D600F79C
      9400F7948C00E76B5A00DE7B6B00E7B5A500D69C8C00BD948400B5736300A563
      63009C524A008C3939007B18180073181800B5636300DE8C8C00E7949400EF9C
      9C00F7A5A500FFADAD00F7ADAD00EFADAD00CE949400946B6B00634242000000
      00000000000000000000000000000000000000000000DEADAD00DEADAD00E7AD
      AD00F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500F7B5B500FFFF
      FF00FFFFFF00FFF7F700F7E7E700FFE7E700FFE7E700FFE7E700FFE7E700FFE7
      E700FFE7E700FFE7E700FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFD6D600F7CE
      CE00E7BDBD00B59C9C0094848400AD8C8C00E7ADAD00EFADAD00F7ADAD00F7AD
      AD00F7ADAD00E7A5A500C68C8C00845A5A006342420000000000000000000000
      0000000000000000000000000000E7A5A500E79C9C00EF949400F7949400FF94
      9400FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00F7DEDE00E7E7E700BDBDBD00BDBDBD00CECECE00CECECE00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00D6D6D600C6BDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00D6D6D600F7F7F700BD949400BD73
      7300BD737300945A5A0073424200000000000000000000000000000000000000
      000000000000E7A5A500E79C9C00DEDEDE00E7E7E700D6D6D600A59C9C00BDBD
      BD00E7E7E700D6D6D600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00C6C6C600E7DEDE00CECECE00A5949400B5A5
      A500CEBDBD00CEB5B500CEB5B500CEBDBD00CEBDBD00CEBDBD00CEBDBD00CEBD
      BD00CEBDBD00CEBDBD00CEBDBD00CEBDBD00CEBDBD00C6B5B500C69C9C008C5A
      5A0063393900000000000000000000000000000000000000000000000000EFC6
      C600EFBDBD00EFB5B500EFB5B500F7B5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFB5B500FFBDBD00EFCEC600EFE7D600E7EFE700E7ADA500E75A
      4A00E74A3100DE312100D6392900DE7B6B00C67B7300B58C8400B57B7300C67B
      7300A5423900841010007B101000B55A5A00E78C8C00EF949400F79C9C00F7A5
      A500FFADAD00FFB5B500F7ADAD00DEA5A500B58484007B525200634242000000
      00000000000000000000000000000000000000000000EFC6C600EFBDBD00EFB5
      B500EFB5B500F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500F7C6
      C600FFFFFF00FFFFFF00FFFFFF00F7E7E700FFE7E700FFE7E700FFE7E700FFE7
      E700FFE7E700FFE7E700FFDEDE00FFDEDE00FFDEDE00F7D6D600EFCECE00DEC6
      C600BDA5A5009C8C8C00A5848400EFADAD00EFADAD00F7ADAD00F7B5B500F7B5
      B500F7ADAD00DE9C9C00B57B7B006B4A4A005A42420000000000000000000000
      0000000000000000000000000000F7BDBD00F7B5B500EFA5A500F79C9C00F794
      9400FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00F7DEDE00DEDEDE009C9C9C009C949400ADADAD00B5ADAD009C94
      94009C9C9C009C9C9C009C9C9C009C9C9C00BDBDBD00A59C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C949400C6C6C600F7F7F700BD949400B56B
      6B00AD6B6B008452520063393900000000000000000000000000000000000000
      000000000000F7BDBD00F7B5B500DEDEDE00E7DEDE00C6C6C6005A5A5A008C8C
      8C00E7E7E700C6BDBD00949494008C8C8C009494940094949400949494009494
      94009494940094949400948C8C009C9C9C00D6D6D600D6C6C600C68C8C00E794
      9400F7A5A500F79C9C00F79C9C00F79C9C00F79C9C00F79C9C00F79C9C00F79C
      9C00F79C9C00F79C9C00F79C9C00F79C9C00EF9C9C00DE8C8C00B57373007B4A
      4A00633939000000000000000000000000000000000000000000000000000000
      0000FFDEDE00F7C6C600F7B5B500F7B5B500F7B5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFB5B500FFB5B500FFBDBD00EFD6C600E7EFD600E7C6B500E76B
      5A00DE423100D6392900CE392900DE847B00EFDED600EFD6CE00EFCEBD00C66B
      6B00941818008C181800C6636300EF949400F79C9C00F7A5A500F7ADAD00FFAD
      AD00FFB5B500F7ADAD00E7A5A500CE949400946B6B00634A4A00000000000000
      0000000000000000000000000000000000000000000000000000FFDEDE00F7C6
      C600F7B5B500F7B5B500F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500F7C6C600FFFFFF00FFFFFF00FFFFFF00FFEFEF00F7E7E700F7E7E700F7DE
      DE00F7DEDE00F7DEDE00F7DEDE00F7D6D600EFD6D600E7CECE00CEB5B500B5A5
      A500AD949400AD8C8C00EFADAD00F7ADAD00F7B5B500F7B5B500F7B5B500F7AD
      AD00E7A5A500CE94940094636300634242000000000000000000000000000000
      000000000000000000000000000000000000FFD6D600FFBDBD00F7A5A500F79C
      9C00F7949400FF949400FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00F7DEDE00DEDEDE00ADADAD00ADADAD00BDBDBD00BDBDBD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00C6C6C600B5ADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00CECECE00F7F7F700BD949400A563
      6300945A5A006B42420000000000000000000000000000000000000000000000
      00000000000000000000FFD6D600DEDEDE00DEDEDE00D6D6D600ADADAD00BDBD
      BD00DEDEDE00DED6D600D6D6D600D6CECE00D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6CECE00D6D6D600DEDEDE00DEC6C600DE949400FF94
      9400FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FF949400F7949400F7949400E78C8C00CE7B7B009C5A5A006B42
      4200000000000000000000000000000000000000000000000000000000000000
      0000FFEFEF00FFE7E700FFCECE00F7B5B500F7B5B500F7B5B500F7B5B500F7B5
      B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5B500F7CEC600EFEFE700DEB5
      A500DE7B6B00D64A4200CE423100D6524A00E79C9400D6847B00B56352009C42
      3100AD4A4200DE848400F79C9C00F7A5A500F7A5A500F7ADAD00F7ADAD00F7AD
      AD00EFADAD00E7A5A500CE949400A5737300735252006B4A4A00000000000000
      0000000000000000000000000000000000000000000000000000FFEFEF00FFE7
      E700FFCECE00F7B5B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5
      B500F7B5B500F7B5B500FFEFEF00FFFFFF00FFFFFF00FFF7F700F7E7E700EFDE
      DE00EFDEDE00E7DEDE00E7D6D600DECECE00CEBDBD00BDADAD00B5A5A500AD94
      9400C6949400F7ADAD00F7ADAD00F7ADAD00F7ADAD00F7ADAD00EFADAD00E7A5
      A500CE949400A573730073525200634A4A000000000000000000000000000000
      000000000000000000000000000000000000FFEFEF00FFE7E700FFBDBD00F7A5
      A500F79C9C00F7949400F7949400F7949400F7949400F7949400F7949400F794
      9400F7949400EFDEDE00DEDEDE00ADADAD00ADA5A500BDBDBD00BDBDBD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00C6C6C600ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00CECECE00EFEFEF00C69C9C009C63
      6300734A4A007342420000000000000000000000000000000000000000000000
      00000000000000000000FFEFEF00DED6D600DED6D600DED6D600DEDEDE00DEDE
      DE00DED6D600DED6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DECECE00EF9C9C00F794
      9400F7949400F7949400F7949400F7949400F7949400F7949400F7949400F794
      9400F7949400F7949400EF949400E78C8C00CE7B7B00AD6B6B007B4A4A006B42
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFEFEF00FFCECE00F7BDBD00EFB5B500EFADAD00EFAD
      AD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFB5B500D6BD
      AD00CEA58C00CE735A00CE635200CE635A00BD736300BD6B6300BD736B00D68C
      8400E79C9C00EFA5A500EFA5A500EFA5A500EFA5A500EFADAD00E7ADAD00E7A5
      A500DE9C9C00C6949400A57373007B5A5A007352520000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFEFEF00FFCECE00F7BDBD00EFB5B500EFADAD00EFADAD00EFADAD00EFAD
      AD00EFADAD00EFADAD00EFADAD00E7B5B500EFCECE00F7EFEF00F7E7E700EFDE
      DE00E7DEDE00E7D6D600DED6D600D6C6C600C6B5B500B59C9C00BD949400E7AD
      AD00EFADAD00EFADAD00EFADAD00EFADAD00E7ADAD00E7A5A500DE9C9C00C694
      9400A57373007B5A5A0073525200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFF7F700FFEFEF00FFC6
      C600FFADAD00F79C9C00EF9C9C00EF949400EF949400EF949400EF949400EF94
      9400EF949400E7D6D600E7E7E700EFE7E700EFEFEF00EFE7E700EFE7E700EFE7
      E700EFE7E700EFEFEF00EFEFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700E7E7E700E7E7E700C69C9C008452
      52007B4A4A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFF7F700FFEFEF00FFC6C600FFADAD00F79C
      9C00EF9C9C00EF949400EF949400EF949400EF949400EF949400EF949400EF94
      9400EF949400EF949400EF949400EF949400EF949400EF949400EF949400EF94
      9400EF949400EF949400EF949400EF949400EF949400EF949400EF949400EF94
      9400E7949400E78C8C00DE8C8C00CE848400AD6B6B00845252007B4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFF7F700FFD6D600F7C6C600EFB5B500E7AD
      AD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEAD
      AD00DEADAD00DEADAD00DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5
      A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500D6A5A500CE9C
      9C00BD8C8C00A57373008C6363007B5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFF7F700FFD6D600F7C6C600EFB5B500E7ADAD00DEADAD00DEAD
      AD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00D6A5A500CEA5
      A500C6A5A500C69C9C00C69C9C00CE9C9C00DEA5A500DEADAD00DEADAD00DEAD
      AD00DEADAD00DEADAD00DEA5A500DEA5A500D6A5A500CE9C9C00BD8C8C00A573
      73008C6363007B5A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFEF
      EF00FFD6D600FFBDBD00F7ADAD00EFA5A500E79C9C00E79C9C00E79C9C00E79C
      9C00E79C9C00E79C9C00E79C9C00E79C9C00E79C9C00E79C9C00E79C9C00E79C
      9C00E79C9C00E79C9C00E79C9C00E79C9C00E79C9C00E79C9C00E79C9C00E79C
      9C00E79C9C00DE949400DE949400D68C8C00C6848400AD737300945A5A008452
      5200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFEFEF00FFD6D600FFBD
      BD00F7ADAD00EFA5A500E79C9C00E79C9C00E79C9C00E79C9C00E79C9C00E79C
      9C00E79C9C00E79C9C00E79C9C00E79C9C00E79C9C00E79C9C00E79C9C00E79C
      9C00E79C9C00E79C9C00E79C9C00E79C9C00E79C9C00E79C9C00E79C9C00DE94
      9400DE949400D68C8C00C6848400AD737300945A5A0084525200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFE7E700F7D6D600EFC6C600E7B5
      B500DEADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00CEA5A500CEA5A500C69C9C00BD94
      9400AD8484009C73730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFE7E700F7D6D600EFC6C600E7B5B500DEADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00CEA5A500CEA5A500C69C9C00BD949400AD8484009C73
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFE7E700FFCECE00F7BDBD00EFB5B500E7ADAD00DEA5A500DEA5A500DEA5
      A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5
      A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5
      A500DEA5A500D69C9C00CE949400C68C8C00B57B7B00A56B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFE7E700FFCE
      CE00F7BDBD00EFB5B500E7ADAD00DEA5A500DEA5A500DEA5A500DEA5A500DEA5
      A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5
      A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500D69C
      9C00CE949400C68C8C00B57B7B00A56B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182142001821420018214200182942001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182939001829
      3900182139001821390000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829390018293900182139001821
      3900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018293900182939001821390018213900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000182942001829
      4200182942001821420018214200102142001021420010214200102142001021
      4200182142001821420018214200182142001821420018214200182142001821
      4200182942001829420018294200182942001829420018294200182942001829
      4200182939001829390018213900182139000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000021314A0021314A002131520031426300395273003952
      7B0039527B0031527B0031527B00314A7B00294A7300214A7300214273002142
      730029427300314A7300314A730042527300314A7300294A7B0031527B003952
      7B0039527B00395A7B00395A7B00395A7B00395A7B0039527B0039527300314A
      6B0029425A001829420018213900102131000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000021314A0021314A0021315200314263003952730039527B00395A7B00395A
      7B00395A7B00395A7B00395A7B0039527B0039527B0031527B0031527B003152
      7B0031527B0031527B0031527B00294A7B00294A7B00294A7300294A7300294A
      7300294A7300294A7B00314A7B0031527B0031527300314A6B0029425A001829
      4200182139001021310000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000021314A002131
      4A0021315200314263003952730039527B0039527B0039527B0039527B003152
      7B0031527B0031527B00314A7B00314A7B00314A7B00314A7B00294A7B00294A
      7B00294A7B00294A7B00294A7B00294A7B00294A7B00294A7B00294A7B00294A
      7B00314A7B0031527B0031527300314A6B0029425A0018294200182139001021
      3100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018314A0018314A00183152002139
      630021426B002142730021427300214273002142730021427300214273002142
      7300214273002142730021427300214A7300214A7300214A7300214A7300294A
      7300294A7300294A7300294A7300294A7B00314A7B0031527B0039527B003952
      7B0039527300314A6B0029425A00182942001821390010213100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002139520021395200315273004A6B9400527BA500527BAD004A7B
      AD004273AD003973AD00316BAD00296BAD00316BA5004A6BA5005273A500637B
      9C00AD8C8C00E79C7B00FF9C6B00FF9C6B00AD848400316BAD003973AD004273
      AD004A7BB5005284B5005A84B5005A84B5005A84B5005A84B5005A84B5005284
      AD005273A50042638C00294A6300182939001021310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002139
      520021395200315273004A6B9400527BA5005A84AD006B94BD006B94BD006B94
      BD006B94BD00638CBD00638CBD005A84B5005284B5005284B5005284B5005284
      B5005284B5005284B500527BB5004A7BB5004A7BB5004A7BAD004A7BAD004A7B
      B5004A7BB5004A7BB5004A7BB5005284B5005A84B5004A73AD004A739C004263
      8C00294A63001829390010213100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021395200213952003152
      73004A6B9400527BA500638CB500638CB500638CB5005A84B5005284B5005284
      B5004A7BB5004A7BB5004A7BB5004A7BB5004A7BB5004A7BB5004A7BB5004A7B
      B5004A7BB5004A7BB500427BB500427BB500427BB5004A7BB5004A7BB5004A7B
      B500527BB5005284B5004A7BAD004A7BAD004A73A50042638C00294A63001829
      3900102131000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002139520021395200294A7300295A8C003163
      9C003163A5004273AD004273AD004273AD004273B5004273AD004273AD004273
      AD004273AD004273AD004273AD004273AD004273AD004273B500427BB500427B
      AD00427BB500427BAD004A7BAD004A7BB5004A7BB5005284B5005A84B500638C
      B500638CB5005284AD005273A50042638C00294A630018293900102131000000
      0000000000000000000000000000000000000000000000000000000000000000
      000029425A0029425A0039638400527BA500528CBD00528CC600428CC6003984
      C6003984C6005A8CBD007B8CB500848CAD00A594A500E7A58C00FFA57B00FFA5
      7B00FFA57B00FF9C7300FF9C6B00FF9C6B00E78473004A63AD003984C6003984
      C6004A8CC6005294CE00639CCE00639CCE00639CCE006B9CCE006B9CCE00639C
      CE00639CC6005A8CBD004A7BA500315273001831420010293100000000000000
      000000000000000000000000000000000000000000000000000029425A002942
      5A00396384005284AD005A94BD00639CC60073A5CE00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00E7E7E700D6DEE7004284B5005284AD005284
      B5004A7BA5003152730018314200102931000000000000000000000000000000
      00000000000000000000000000000000000029425A0029425A00396384005284
      AD005A94BD005A94C600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700C6D6DE00639CCE00528CC6005A94C6005A8CBD004A7BA5003152
      7300183142001029310000000000000000000000000000000000000000000000
      0000000000000000000021425A0021426300315A84003173A500317BB500317B
      BD00317BBD00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7EF00EFEF
      EF00CED6E7006B9CC6006394C6005A8CB5004A7BA50031527300183142001029
      3100000000000000000000000000000000000000000000000000000000000000
      0000314A6300396B84005284AD005294C6005294CE006B9CC60094A5BD00A5A5
      B500ADA5AD00DEAD9C00FFAD8C00FFAD8C00FFAD8400FFAD8400FFA58400FFA5
      7B00FFA57300FF9C7300FF9C7300FF9C6B00DE7B630052398400318CCE003994
      CE004294CE004A9CD6005AA5D60063ADD6006BADDE006BADDE006BADD6006BAD
      D6006BADD60063A5CE00639CC6005284A50031526B0018293900000000000000
      0000000000000000000000000000000000000000000000000000314A6300426B
      8400528CAD00639CC6006BA5D6006BADD6007BB5DE00EFEFEF00F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700EFEFEF00D6DEDE0031638C00427BA5005A9C
      C6005A9CC6005284A50031526B00182939000000000000000000000000000000
      000000000000000000000000000000000000314A6300426B8400528CAD00639C
      C60063A5CE0063A5D600EFEFEF00EFEFEF00E7EFEF00EFEFEF00E7EFEF00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700EFEFEF00C6D6DE005A94BD005294BD005AA5CE0063A5CE005A9CC6005284
      A50031526B001829390000000000000000000000000000000000000000000000
      00000000000000000000294A630031638400427BA500398CBD00398CC600318C
      C600318CCE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700EFEF
      EF00CEDEE7006B9CBD00639CC60063A5CE00639CC6005284A50031526B001829
      390000000000000000000000000000000000000000000000000000000000315A
      6B0039637B004A84A50073A5BD00C6B5BD00CEB5B500E7B5AD00FFB5A500FFB5
      9C00FFB59C00FFAD9400FFAD9400FFAD8C00FFAD8C00FFAD8400FFA58400FFA5
      7B00FFA57B00FFA57300FF9C7300FF9C6B00D6735A00422963003194C600319C
      CE00399CCE0042A5D60052ADD60063B5DE006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5D6006BADCE005A9CBD004A7B940021425A00183139000000
      00000000000000000000000000000000000000000000315A6B0039637B00528C
      A50063A5C60063ADD6006BB5D6006BB5DE0073BDDE00F7F7F700D6D6D600ADAD
      AD00A5A5A500BDBDBD00F7F7F700BDBDBD00A5A5A500A5A5A500A5A5A500A5A5
      A500ADADAD00F7F7F700C6C6C600A5A5A500A5A5A500BDBDBD00F7F7F700BDBD
      BD00A5A5A500A5A5A500A5A5A500DEDEDE00DEDEE70021526B00397B9C005AA5
      C60063ADCE005A9CBD004A7B940021425A001831390000000000000000000000
      0000000000000000000000000000315A6B0039637B00528CA50063A5C6006BAD
      D60063B5D6005AADD600EFEFEF00EFEFEF00E7EFEF00EFEFEF00EFEFEF00E7EF
      EF00E7EFEF00E7EFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00CED6DE00528CAD004A94BD005AADD60063ADD60063ADCE005A9C
      BD004A7B940021425A0018313900000000000000000000000000000000000000
      000000000000315A6B0039637B004284A5004A94BD00429CC600399CCE00319C
      CE00319CCE00E7EFEF00E7E7EF00E7EFEF00E7EFEF00E7E7EF00E7E7EF00E7EF
      EF00E7EFEF00E7E7EF00E7E7EF00E7E7EF00E7EFEF00E7E7EF00E7EFEF00E7EF
      EF00E7E7EF00E7EFEF00E7EFEF00E7E7EF00E7E7EF00E7EFEF00EFEFEF00EFEF
      EF00CEDEDE005A8CAD005A9CC60063ADD60063ADCE005A9CBD004A7B94002142
      5A0018313900000000000000000000000000000000000000000000000000426B
      7B004A7B9400639CB500EFC6BD00FFC6B500FFBDAD00FFBDA500FFB5A500FFB5
      9C00FFB59C00FFAD9400FFAD9400FFAD8C00FFAD8C00FFAD8400FFAD8400FFA5
      8400FFA57B00FFA57B00FF9C7300FFA57300D67B5A0042185200397BB5003194
      CE00319CCE00399CCE004AA5D60063ADD6006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5D60063A5C600528CA5003963730021394A000000
      00000000000000000000000000000000000000000000426B7B004A7B94005A94
      B50063A5CE0063ADD60063ADD60063B5D6006BB5DE00F7F7F700D6D6D600A5A5
      A5009C9C9C00B5B5B500F7F7F700B5B5B5009C9C9C00A5A5A500A5A5A500A5A5
      A500ADADAD00F7F7F700C6C6C6009C9C9C009C9C9C00B5B5B500F7F7F700B5B5
      B5009C9C9C00A5A5A500A5A5A500DEDEDE00DEDEE700184A5A003173940052A5
      CE0063ADD60063A5C600528CA5003963730021394A0000000000000000000000
      0000000000000000000000000000426B7B00528494005A9CB50063ADCE006BB5
      D60063B5D6005AADD600EFEFEF00EFEFEF00EFEFEF00D6D6D600C6CECE00E7E7
      E700EFEFEF00E7EFEF00E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00E7E7
      E700F7F7F700CED6DE004A84A5004294B50052A5CE005AADD60063ADD60063A5
      C600528CA5003963730021394A00000000000000000000000000000000000000
      000000000000426B7B004A7B94005294B5004A9CC600429CCE00399CCE00319C
      CE00319CCE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00CED6DE004A84A500529CBD0063ADD60063ADD60063A5C600528CA5003963
      730021394A000000000000000000000000000000000000000000000000004A7B
      8C00528CA500A5ADBD00FFC6BD00FFBDB500FFBDAD00FFBDA500FFB5A500FFB5
      9C00FFB59C00FFAD9400FFAD9400FFAD8C00FFAD8C00FFAD8C00FFA58400FFA5
      8400FFA57B00FFA57B00FF9C7300FFA57300CE7B5A00420839004A63A5003194
      CE00319CCE00399CCE0042A5D6005AADD6006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5D60063ADCE005A94B500426B8400294A5A000000
      000000000000000000000000000000000000000000004A7B8C00528CA5005A9C
      BD005AA5CE005AADD6005AADD6005AADD60063ADD600EFEFEF00F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700DEDEDE0018425A00317394004A9C
      C60063ADD60063ADCE005A94B500426B8400294A5A0000000000000000000000
      00000000000000000000000000004A7B8C005A8CA50063A5C6006BADD6006BB5
      D60063B5D60052ADD600EFEFEF00EFEFEF00EFEFEF008C8C8C005A5A5A00C6C6
      C600F7F7F700DEDEDE007B7B7B005A5A5A006363630063636300636363006363
      630063636300636363005A6363005A6363005A6363005A5A5A0073737300C6C6
      C600F7F7F700CED6DE004A84A500428CB50052A5D6005AADD60063ADD60063AD
      CE005A94B500426B8400294A5A00000000000000000000000000000000000000
      0000000000004A7B8C00528CA5005A9CBD0052A5CE004AA5CE0042A5CE00399C
      CE00319CCE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7EF00E7E7E700E7E7
      E700E7E7E700DEE7E700E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700EFEFEF00F7F7
      F700CED6DE00427B9C004A94BD005AADD60063ADD60063ADCE005A94B500426B
      8400294A5A000000000000000000000000000000000000000000000000005284
      9C005294AD00ADB5BD00FFC6B500FFBDB500FFBDAD00FFBDA500FFB5A500FFB5
      A500FFB59C00FFB59C00FFAD9400FFAD9400FFAD8C00FFAD8C00FFAD8400FFA5
      8400FFA57B00FFA57B00FFA57B00FFA57300CE7B5A0039002900524A94003194
      CE003194CE00319CCE0042A5CE005AADD6006BB5DE006BB5DE006BB5DE006BB5
      DE006BB5DE006BB5DE006BB5D60063ADCE005A9CB50042738C00295263000000
      0000000000000000000000000000000000000000000052849C005294AD00529C
      C60052A5CE0052A5D60052ADD60052ADD6005AADD600EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00F7F7F700DEDEDE00184A5A00297394004A9C
      C6005AADD60063ADCE005A9CB50042738C002952630000000000000000000000
      00000000000000000000000000005A849C006394AD0063A5C6006BADD6006BB5
      D60063ADD60052ADD600EFEFEF00EFEFF700EFEFEF008484840052525200C6C6
      C600F7F7F700E7E7E700B5B5B500A5A5A500A5A5AD00A5ADAD00A5ADAD00A5AD
      AD00A5ADAD00A5ADAD00A5ADAD00A5ADAD00A5ADAD00A5A5A500B5B5B500D6DE
      DE00F7F7F700CED6DE004284A500398CB50052A5CE005AADD60063ADD60063AD
      CE005A9CB50042738C0029526300000000000000000000000000000000000000
      00000000000052849C005A94AD005AA5C6005AA5CE004AA5D60042A5D600399C
      CE00319CCE00EFEFEF00EFEFEF00EFEFEF00F7EFEF00C6BDBD00847B8400847B
      7B007B7B7B008C848400D6D6D600EFEFF700EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00A59C9C007B7B7B00847B84007B737B00B5ADAD00EFEFEF00F7F7
      F700CED6DE00397B9C004294B50052A5CE005AADD6005AADCE005A94B5004273
      8C00295263000000000000000000000000000000000000000000000000005A8C
      A5005294B500ADB5BD00FFC6BD00FFBDB500FFBDAD00FFBDAD00FFB5A500FFB5
      A500FFB59C00FFB59C00FFB59400FFAD9400FFAD8C00FFAD8C00FFAD8400FFA5
      8400FFA57B00FFA57B00FFA57300FFA57300CE7B5A00310021005A317B003194
      C6003194CE00319CCE00399CCE004AA5D60063ADD60063B5D60063B5DE0063B5
      DE006BB5DE006BB5DE006BB5D6006BADCE005A9CBD004A7B9400315263000000
      000000000000000000000000000000000000000000005284A5005294B500529C
      C6004AA5CE004AA5D6004AA5D6004AA5D6005AADD600F7F7F700BDBDBD006363
      6300636363008C8C8C00F7F7F7008C8C8C00636363006B6B6B006B6B6B006B6B
      6B0073737300F7F7F700A5A5A5005A5A5A00636363008C8C8C00F7F7F7008C8C
      8C00636363006B6B6B006B6B6B00D6D6D600DEE7E70018425A0029739400429C
      C6005AADD60063ADCE005A9CBD004A7B94003152630000000000000000000000
      00000000000000000000000000005A8CA500639CB50063A5C6006BADD60063B5
      D6005AADD6004AA5D600EFF7F700EFEFF700EFEFEF00D6D6D600C6C6C600E7E7
      E700EFEFF700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      EF00F7F7F700CED6DE0042849C00398CB5004AA5CE005AADD60063ADD60063AD
      CE005A9CBD004A7B940031526300000000000000000000000000000000000000
      0000000000005A8CA500639CB50063A5C6005AADCE0052ADD6004AA5D600399C
      CE00319CCE00EFEFEF00EFEFEF00EFF7F700FFC6AD00FF9C5A00EF9C5A00EF9C
      5A00EF9C5A00F79C5A00F7B59400EFEFE700EFEFF700EFEFEF00EFEFEF00EFEF
      EF00FFBD9C00F79C5A00EF9C5A00EF9C5A00EF9C5A00F79C5A00EFE7DE00F7F7
      F700CEDEDE00397B9C00398CB5004AA5CE0052ADD6005AA5CE00529CBD00427B
      9400315263000000000000000000000000000000000000000000000000005A8C
      A5005294B500ADB5BD00FFC6BD00FFBDB500FFBDAD00FFBDAD00FFBDA500FFB5
      A500FFB59C00FFB59C00FFB59400FFAD9400FFAD8C00FFAD8C00FFAD8C00FFAD
      8400FFA58400FFA57B00FFA57B00FFA57B00CE7B5A002100180063186B00427B
      BD00319CCE00319CCE00319CCE00399CCE004AA5D6004AA5D60052ADD6005AAD
      D6005AADD60063B5D60063B5D60063ADCE005A9CBD004A7B940031526B000000
      00000000000000000000000000000000000000000000528CA5005294B5004A9C
      C6004A9CCE004AA5CE004AA5D6004AA5D6005AADD600F7F7F700EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00F7F7F700DEE7E700184A5A00317394004A9C
      C6005AADD60063ADCE005A9CBD004A7B940031526B0000000000000000000000
      0000000000000000000000000000638CA500639CB5006BA5C60063ADD60063AD
      D60052ADD6004AA5D600EFF7F700EFF7F700EFF7F700F7FFFF00FFFFFF00F7F7
      F700EFEFEF00EFF7F700F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00FFFFFF00F7FFFF00F7F7
      F700F7F7F700CEDEDE00427B9C003184B500429CCE0052ADD60063ADD60063AD
      CE005A9CBD004A7B940031526B00000000000000000000000000000000000000
      000000000000638CA500639CB50063A5C60063ADD60052ADD6004AA5D600399C
      CE00319CCE00EFEFEF00EFEFEF00EFF7FF00FFBDA500FFBD1000FFD60000FFCE
      0000FFD60000FFCE0800FFBD7B00EFE7EF00EFEFF700EFEFEF00EFF7F700EFE7
      EF00FFCE7300FFCE0800FFCE0000FFCE0000FFD60000FFBD1800F7E7D600F7F7
      FF00CEDEE700397B9C00398CB5004AA5CE0052A5D60052A5CE005294B500427B
      940031526B00000000000000000000000000000000000000000000000000528C
      A5004A94B500A5ADBD00FFC6BD00FFBDB500FFBDB500FFBDAD00FFBDAD00FFB5
      A500FFB5A500FFB59C00FFB59400FFAD9400FFAD9400FFAD8C00FFAD8C00FFA5
      8400FFA58400FFA57B00FFA57B00FFA57B00C67B5A00100010006B005200526B
      B500319CCE00319CCE00319CCE00319CCE00399CCE00399CCE00429CCE0042A5
      D6004AA5D60052ADD6005AADD6005AADCE005A9CBD004A7B940031526B000000
      00000000000000000000000000000000000000000000528CA5005294B5004A9C
      C6004A9CCE0042A5CE004AA5D6004AA5D60063B5D600F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700DEE7E700184A5A00317394004A9C
      C6005AADD60063ADCE005A9CBD004A7B940031526B0000000000000000000000
      0000000000000000000000000000638CA500639CB50063A5C60063ADD60063AD
      D60052ADD60042A5CE00F7F7F700F7F7F700EFF7F700CECECE00B5B5B500E7E7
      E700F7F7F700EFEFEF00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6CECE00E7E7
      E700F7F7F700CEDEDE00397B9C002984AD00429CCE0052A5D6005AADD60063AD
      CE005A9CBD004A7B940031526B00000000000000000000000000000000000000
      000000000000638CA500639CB50063A5C6005AADCE0052A5D60042A5D600399C
      CE00319CCE00EFF7F700EFEFF700EFF7FF00FFBDAD00FFBD1000FFD60000FFCE
      0000FFCE0000FFCE0000FFBD7B00F7E7EF00EFF7F700EFEFF700EFF7F700EFE7
      EF00FFCE7300FFCE0800FFCE0000FFCE0000FFD60000FFBD1800F7E7D600F7F7
      FF00CEDEE700397B9C00398CB5004AA5CE004AA5D60052A5CE005294B500427B
      940031526B00000000000000000000000000000000000000000000000000528C
      A5004A8CB500ADADBD00FFC6BD00FFC6B500FFBDB500FFBDAD00FFBDAD00FFBD
      A500FFB5A500FFB59C00FFB59C00FFB59400FFAD9400FFAD9400FFAD8C00FFAD
      8400FFA58400FFA57B00FFA57B00FFA57B00C67B5A000800080063004A00635A
      A500399CCE00399CCE00399CCE00399CCE00399CCE00399CCE00399CCE00429C
      CE0042A5CE004AA5D60052ADD60052A5CE005294BD00427B940031526B000000
      000000000000000000000000000000000000000000005A8CA5005294B5004A9C
      C6004A9CCE004AA5CE004AA5D6004AA5D6006BB5D600F7F7F700D6D6D600ADAD
      AD00A5A5A500BDBDBD00F7F7F700BDBDBD00A5A5A500ADADAD00ADADAD00ADAD
      AD00B5B5B500EFF7EF00C6CECE00A5A5A500ADADAD00BDBDBD00F7F7F700BDBD
      BD00A5A5A500ADADAD00ADADAD00E7E7E700E7E7E700214A6300397B940052A5
      CE0063ADD60063ADCE005A9CBD004A7B940031526B0000000000000000000000
      0000000000000000000000000000638CA500639CB50063A5C60063ADD6005AAD
      D60052ADD60042A5CE00F7F7F700F7F7F700EFEFEF00848484004A4A4A00C6C6
      C600FFFFFF00E7EFEF00ADADAD009C9C9C009CA5A5009CA5A5009CA5A5009CA5
      A5009CA5A5009CA5A5009CA5A5009CA5A5009CA5A5009C9C9C00ADADAD00DEDE
      DE00FFFFFF00CEDEDE00397B9C002984AD00399CCE004AA5D6005AADD60063AD
      CE005A9CBD004A7B940031526B00000000000000000000000000000000000000
      000000000000638CA500639CB5005AA5C60052A5CE004AA5D600429CCE00399C
      CE00319CCE00EFF7F700EFF7F700EFF7FF00FFBDAD00FFBD1000FFCE0000FFCE
      0000FFCE0000FFCE0000FFC68400F7EFEF00EFF7F700F7F7F700EFF7F700F7EF
      F700FFCE7300FFCE0800FFCE0000FFCE0000FFCE0000FFB52100F7E7DE00F7FF
      FF00D6DEE700397B9C00398CB50042A5CE004AA5D60052A5CE005294B500427B
      940031526B00000000000000000000000000000000000000000000000000528C
      A500428CB500A5ADBD00FFC6BD00FFC6B500FFBDB500FFBDAD00FFBDAD00FFBD
      A500FFB5A500FFB59C00FFB59C00FFB59400FFAD9400FFAD9400FFAD8C00FFAD
      8C00FFA58400FFA58400FFA57B00FFA57B00CE84630021292900847B7B00BDBD
      C600CED6D600CED6DE00CED6D600CECED600CED6D600CED6D600CED6D600CED6
      D600CED6D600DEE7E7009CC6DE004A9CC6004A8CB5004273940031526B000000
      000000000000000000000000000000000000000000005A8CA5005294B5004A9C
      C6004A9CCE004AA5CE004AA5D6004AA5D60063B5D600F7F7F700CED6D6009C9C
      9C009C9C9C00B5B5B500F7F7F700B5B5B5009C9C9C009C9C9C009C9C9C009C9C
      9C00A5A5A500F7F7F700C6C6C600949494009C9C9C00B5B5B500F7F7F700B5B5
      B5009C9C9C009C9C9C009C9C9C00E7E7E700E7E7E700214A6300397B9C005AA5
      CE0063B5D60063ADCE005A9CBD004A7B940031526B0000000000000000000000
      0000000000000000000000000000638CA500639CB50063A5C60063ADD6005AAD
      D60052A5D600429CCE00F7F7F700F7F7F700EFF7F7009C9C9C006B6B6B00D6D6
      D600FFFFFF00EFEFF700DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6DEDE00EFEF
      EF00FFFFFF00CEDEE700397B9C002984AD00399CCE004AA5D6005AADD60063AD
      CE005A9CBD004A7B940031526B00000000000000000000000000000000000000
      000000000000638CA500639CB5005AA5C60052A5CE004AA5D600399CCE00319C
      CE00319CCE00F7F7F700F7F7F700F7FFFF00FFC6AD00FFBD1000FFCE0000FFCE
      0000FFCE0000FFCE0800FFC68C00F7EFF700F7F7F700F7F7F700F7F7F700F7EF
      F700FFCE7B00FFCE0800FFCE0000FFCE0000FFCE0000FFBD2100F7EFDE00FFFF
      FF00D6DEE700397B9C00398CB500429CCE004AA5D60052A5CE005294B500427B
      940031526B00000000000000000000000000000000000000000000000000739C
      AD006BA5BD00BDBDC600FFC6BD00FFC6B500FFBDB500FFBDAD00FFBDAD00FFBD
      AD00FFB5A500FFB5A500FFB59C00FFB59C00FFAD9400FFAD9400FFAD8C00FFAD
      8C00FFAD8400FFA58400FFA57B00FFA57B00D684630018212100525252007373
      7B0084848400A5A5A5009C9C9C00848484008C8C8C008C8C8C0084848C008484
      840094949400E7E7E700ADC6CE00639CB5006B9CB50063849C00426373000000
      000000000000000000000000000000000000000000007B9CAD007BA5BD007BB5
      CE007BBDDE007BBDDE007BBDDE007BBDDE008CC6E700F7F7F700F7F7F700FFFF
      FF00F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700FFFFFF00F7F7F700F7F7F700E7E7E700425A6B00638CA5008CBD
      D60094CEE70094C6DE0084ADC600638C9C004A63730000000000000000000000
      00000000000000000000000000007B9CAD0084ADBD008CBDD60094C6DE008CC6
      E70084C6DE0073BDDE00F7F7F700F7F7F700F7F7F700E7E7E700DEDEDE00EFF7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700FFFFFF00D6E7E7006394A5005A9CBD0073B5D60084C6E70094C6E7008CC6
      DE0084ADC600638C9C004A637300000000000000000000000000000000000000
      0000000000007B9CAD0084ADBD0084B5CE0084BDDE007BBDDE0073BDDE0073BD
      DE006BB5DE00F7F7F700F7F7F700F7FFFF00FFC6AD00FFC61000FFD60000FFD6
      0000FFD60000FFD60000FFCE8400F7EFF700F7F7F700F7F7F700F7F7F700F7F7
      FF00FFD67B00FFCE0000FFD60000FFD60000FFD60000FFBD1800F7EFDE00FFFF
      FF00DEE7E700638CA5006BA5BD007BBDDE0084BDDE0084BDD6007BADC600638C
      9C004A6373000000000000000000000000000000000000000000000000009CAD
      BD00A5BDCE00DECECE00FFC6BD00FFC6BD00FFC6B500FFBDB500FFBDAD00FFBD
      AD00FFBDA500FFB5A500FFB59C00FFB59C00FFB59400FFAD9400FFAD8C00FFAD
      8C00FFAD8400FFAD8400FFA58400FFA57B00BD7B630031393900636363008C8C
      8C009C9C9C00B5B5B500B5B5B5009C9C9C009C9C9C009CA5A5009C9C9C009C9C
      9C00A5A5A500E7E7E700BDC6CE0094ADB500A5B5C6008C9CA500637373000000
      00000000000000000000000000000000000000000000A5ADB500ADC6CE00BDD6
      DE00C6DEEF00C6E7EF00C6E7F700C6E7F700CEE7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00EFEFEF00F7F7F700F7F7F700EFEFEF00EFEFEF00EFEF
      EF00F7F7F700F7F7F700F7F7F700F7F7F700E7EFEF00636B730094ADB500C6DE
      E700CEE7F700CEDEEF00B5C6D6008C9CA5006373730000000000000000000000
      0000000000000000000000000000A5ADB500B5C6CE00C6D6DE00CEE7EF00CEE7
      F700C6E7F700C6E7EF00FFFFFF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7E7E70094ADB500A5BDCE00BDDEEF00CEE7F700CEE7F700C6DE
      EF00B5C6D6008C9CA50063737300000000000000000000000000000000000000
      000000000000A5ADB500ADC6CE00BDD6DE00C6DEEF00C6E7EF00C6E7EF00C6DE
      EF00BDDEEF00F7F7F700F7F7F700F7FFFF00FFC6AD00FFAD2900FFBD2100FFBD
      2100FFBD2100FFBD2100FFC68400FFEFF700F7FFFF00FFFFFF00FFFFFF00FFF7
      F700FFC67B00FFBD2100FFBD2100FFBD2100FFBD2100FFAD3100FFEFDE00FFFF
      FF00E7E7EF0094A5AD00ADC6CE00C6DEEF00C6E7EF00C6DEE700B5C6CE008C9C
      A50063737300000000000000000000000000000000000000000000000000C6C6
      C600D6D6D600F7D6D600FFC6BD00FFC6BD00FFC6BD00FFBDB500FFBDAD00FFBD
      AD00FFBDA500FFB5A500FFB59C00FFB59C00FFB59C00FFB59400FFB59400FFAD
      8C00FFA58400FFAD8400FFAD8C00EFAD9400A5948C00737373007B7B7B00847B
      8400847B84009C9C9C009C9C9C007B7B7B008484840084848400848484008484
      84008C8C8C00E7E7E700D6D6D600BDBDBD00CECECE00ADADAD007B7B7B000000
      00000000000000000000000000000000000000000000BDBDBD00D6D6D600E7E7
      E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD006B6B
      6B00636363008C8C8C00F7FFF7008C8C8C00636363006B6B6B006B6B6B006B6B
      6B0073737300F7F7F700A5A5A50063636300636363008C8C8C00F7F7F7008C8C
      8C006B6B6B006B6B6B0073737300D6D6D600EFEFEF007B7B7B00BDBDBD00F7F7
      F700FFFFFF00F7F7F700DEDEDE00ADADAD007B7B7B0000000000000000000000
      0000000000000000000000000000BDBDBD00D6D6D600E7E7E700F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700BDBDBD009C9C9C00E7E7
      E700FFFFFF00EFEFEF00B5B5B500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500ADADAD00ADADAD00ADADAD00A5A5A500B5B5B500E7E7
      E700FFFFFF00EFEFEF00BDBDBD00D6D6D600F7F7F700FFFFFF00FFFFFF00F7F7
      F700DEDEDE00ADADAD007B7B7B00000000000000000000000000000000000000
      000000000000BDBDBD00D6D6D600E7E7E700F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFDECE00FFCEA500FFCEA500FFCE
      A500FFCEA500FFCEA500FFDEC600FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFDEC600FFCEA500FFCEA500FFCEA500FFCEA500FFCEA500FFF7EF00FFFF
      FF00EFEFEF00B5B5B500DEDEDE00FFFFFF00FFFFFF00F7F7F700DEDEDE00ADAD
      AD007B7B7B00000000000000000000000000000000000000000000000000C6BD
      BD00D6CECE00F7D6D600FFC6C600FFC6BD00FFC6BD00FFC6B500FFBDB500FFBD
      AD00FFBDAD00FFB5A500FFB5A500FFB59C00FFBD9C00FFBD9C00F7A58C00DE9C
      8C00E7BDAD00AD8C7B008C6B6300847B7B00ADADAD007B847B008C8C8C009494
      94008C8C8C00ADADAD00A5A5A5008C8C8C009494940094949400949494008C8C
      8C009C9C9C00EFEFEF00D6CECE00BDB5B500CEC6C600ADA5A5007B7B7B000000
      00000000000000000000000000000000000000000000BDBDBD00D6CECE00E7E7
      E700F7EFEF00FFF7F700FFF7F700FFF7F700FFF7F700F7F7F700EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00FFFFFF00EFEFEF007B7B7B00BDB5B500F7EF
      EF00FFF7F700F7EFEF00DED6D600ADA5A5007B7B7B0000000000000000000000
      0000000000000000000000000000BDBDBD00D6CECE00E7E7E700F7F7F700FFF7
      F700FFF7F700FFF7F700FFFFFF00FFFFFF00F7F7F7008484840042424200CECE
      CE00FFFFFF00EFEFEF00A5A5A5008C8C8C009494940094949400949494009494
      940094949400949494009494940094949400949494008C8C8C009C9C9C00DEDE
      DE00FFFFFF00EFEFEF00BDBDBD00DED6D600FFF7F700FFFFFF00FFF7F700F7EF
      EF00DED6D600ADA5A5007B7B7B00000000000000000000000000000000000000
      000000000000BDBDBD00D6CECE00E7E7E700F7F7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFFFFF00FFFF
      FF00EFEFEF00B5B5B500DED6D600FFF7F700FFF7F700F7EFEF00DED6D600ADA5
      A5007B7B7B00000000000000000000000000000000000000000000000000C6BD
      BD00D6CECE00F7D6CE00FFC6C600FFC6BD00FFC6BD00FFC6B500FFBDB500FFBD
      AD00FFBDAD00FFBDAD00F7AD9C00CE848400A5526B00A5396B00AD297300C673
      A500E7EFEF00D6D6D600CECECE00D6D6D600DEDEDE00CECECE00CECECE00CECE
      CE00CECECE00D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600F7F7F700D6CECE00BDB5B500CEC6C600ADA5A5007B7373000000
      00000000000000000000000000000000000000000000BDB5B500D6CECE00E7DE
      DE00F7EFEF00FFEFEF00FFF7F700FFEFEF00FFF7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700FFFFFF00EFEFEF007B737300B5ADAD00EFE7
      E700FFF7F700F7EFEF00DED6D600ADA5A5007B73730000000000000000000000
      0000000000000000000000000000BDB5B500D6CECE00E7DEDE00F7EFEF00FFF7
      F700FFF7F700FFEFEF00FFFFFF00FFFFFF00FFFFFF00B5B5B50094949400E7E7
      E700FFFFFF00FFF7F700E7E7E700DEDEDE00E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700F7F7
      F700FFFFFF00EFEFEF00BDB5B500DECECE00FFEFEF00FFF7F700FFF7F700F7EF
      EF00DED6D600ADA5A5007B737300000000000000000000000000000000000000
      000000000000BDB5B500D6CECE00E7DEDE00F7EFEF00FFF7F700FFF7F700FFEF
      EF00FFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00B5ADAD00DECECE00F7EFEF00FFF7F700F7EFEF00DED6D600ADA5
      A5007B737300000000000000000000000000000000000000000000000000C6B5
      B500D6C6C600F7D6CE00FFC6C600FFC6BD00FFC6BD00FFC6B500FFBDB500FFB5
      AD00A56B6B00392129004A21310084316300BD6B9C00DEADC600EFCED600F7DE
      E700F7F7F700D6D6D600BDBDBD00C6C6C600DEDEDE00BDBDBD00C6C6C600C6C6
      C600BDBDBD00CECECE00CECECE00BDBDBD00C6C6C600C6C6C600C6C6C600BDBD
      BD00C6C6C600F7F7F700D6CECE00BDADAD00CEBDBD00AD9C9C007B7373000000
      00000000000000000000000000000000000000000000BDB5B500D6C6C600E7DE
      DE00F7E7E700FFEFEF00FFEFEF00FFEFEF00FFEFEF00F7F7F700D6D6D600ADAD
      AD00ADADAD00BDBDBD00F7F7F700BDBDBD00ADADAD00ADADAD00ADADAD00ADAD
      AD00B5B5B500F7F7F700CECECE00ADADAD00ADADAD00C6C6C600F7F7F700C6C6
      C600ADADAD00ADADAD00ADADAD00EFEFEF00F7F7F700736B6B00B5ADAD00F7DE
      DE00FFEFEF00F7E7E700DECECE00ADA5A5007B73730000000000000000000000
      0000000000000000000000000000BDB5B500D6C6C600E7DEDE00F7E7E700FFEF
      EF00FFEFEF00FFEFEF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFEFEF00BDADAD00DEC6C600F7E7E700FFEFEF00FFEFEF00F7E7
      E700DECECE00ADA5A5007B737300000000000000000000000000000000000000
      000000000000BDB5B500D6C6C600E7DEDE00F7E7E700FFEFEF00FFEFEF00FFEF
      EF00FFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00B5ADAD00DECECE00F7E7E700FFEFEF00F7E7E700DECECE00ADA5
      A5007B737300000000000000000000000000000000000000000000000000BDAD
      AD00D6BDBD00EFCECE00FFCECE00FFC6C600FFC6BD00FFC6BD00FFC6B500FFAD
      AD00BD738C007B636B008C7B7B00CEB5B500FFDEDE00FFE7E700FFE7E700FFEF
      E700F7F7F700DEDEDE00D6D6D600D6D6D600E7E7E700D6D6D600D6D6D600D6D6
      D600D6D6D600DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600F7F7F700D6CECE00BDA5A500CEB5B500AD9C9C007B7373000000
      00000000000000000000000000000000000000000000BDADAD00D6C6C600E7D6
      D600F7DEDE00FFE7E700FFE7E700FFE7E700FFE7E700F7F7F700CECECE009494
      940094949400ADADAD00F7F7F700B5B5B500949494009C9C9C009C9C9C009C9C
      9C00A5A5A500F7F7F700C6C6C6009494940094949400B5B5B500F7F7F700B5B5
      B500949494009C9C9C009C9C9C00E7E7E700F7F7F70073636300B5A5A500EFD6
      D600FFE7E700F7DEDE00DEC6C600AD9C9C007B73730000000000000000000000
      0000000000000000000000000000BDADAD00D6C6C600E7D6D600F7E7E700FFE7
      E700FFE7E700FFDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFE7E700BDADAD00DEBDBD00F7DEDE00FFE7E700FFE7E700F7DE
      DE00DEC6C600AD9C9C007B737300000000000000000000000000000000000000
      000000000000BDADAD00D6C6C600E7D6D600F7E7E700FFE7E700FFE7E700FFE7
      E700FFE7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFE7E700B5A5A500DEC6C600F7DEDE00FFE7E700F7DEDE00DEC6C600AD9C
      9C007B737300000000000000000000000000000000000000000000000000BDAD
      AD00D6BDBD00E7CECE00F7D6D600FFCEC600FFC6BD00FFC6BD00FFC6B500FFC6
      BD00FFD6D600FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFE7
      E700FFFFFF00C6C6C600ADADAD00B5B5B500D6CECE00ADADAD00ADADAD00ADAD
      AD00ADADAD00C6C6C600BDBDBD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00B5B5B500F7F7F700D6CECE00BDA5A500CEB5B500AD9494007B6B6B000000
      00000000000000000000000000000000000000000000BDADAD00D6BDBD00E7CE
      CE00F7DEDE00FFDEDE00FFDEDE00FFDEDE00FFE7E700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700FFF7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF0073636300B59C9C00EFCE
      CE00FFDEDE00F7D6D600DEC6C600AD9C9C007B6B6B0000000000000000000000
      0000000000000000000000000000BDADAD00D6BDBD00E7CECE00F7DEDE00FFDE
      DE00FFDEDE00FFDEDE00FFFFFF00FFFFFF00FFFFFF00E7DEDE00D6CECE00F7F7
      F700FFFFFF00FFFFFF00E7E7E700E7DEDE00E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7DEDE00E7E7E700F7F7
      F700FFFFFF00EFE7E700BDA5A500DEBDBD00F7D6D600FFE7E700FFE7E700F7DE
      DE00DEC6C600AD9C9C007B6B6B00000000000000000000000000000000000000
      000000000000BDADAD00D6BDBD00E7CECE00F7DEDE00FFE7E700FFE7E700FFDE
      DE00FFDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFE7E700B59C9C00DEBDBD00F7D6D600FFDEDE00F7D6D600DEC6C600AD9C
      9C007B6B6B00000000000000000000000000000000000000000000000000BDA5
      A500D6B5B500E7C6C600F7CECE00FFCECE00FFCECE00FFCECE00FFCEC600FFCE
      CE00FFD6D600FFD6D600FFD6D600FFD6D600FFD6D600FFD6D600FFD6D600FFDE
      DE00FFFFFF00BDBDBD0094949400A5A5A500C6C6C600949494009C9C9C009C9C
      9C0094949400B5B5B500B5B5B500949494009C9C9C009C9C9C009C9C9C009C94
      9400A5A5A500F7F7F700D6CECE00BD9C9C00CEADAD00AD9494007B6B6B000000
      00000000000000000000000000000000000000000000BDADAD00D6BDBD00E7CE
      CE00F7D6D600FFD6D600FFD6D600FFD6D600FFDEDE00EFEFEF00F7EFEF00F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7EFEF00F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00735A5A00B5949400EFC6
      C600FFD6D600F7CECE00DEBDBD00AD9494007B6B6B0000000000000000000000
      0000000000000000000000000000BDADAD00D6BDBD00E7CECE00F7D6D600FFD6
      D600FFD6D600FFD6D600FFFFFF00FFFFFF00FFF7F7009494940063636300DED6
      D600FFFFFF00EFEFEF00A5A5A5008C8C8C008C8C8C008C8C8C00949494009494
      94008C8C8C008C8C8C00948C8C00948C8C00948C8C008C8C8C009C9C9C00DEDE
      DE00FFFFFF00EFE7E700BDA5A500DEB5B500FFD6D600FFDEDE00FFDEDE00F7D6
      D600DEBDBD00AD9494007B6B6B00000000000000000000000000000000000000
      000000000000BDADAD00D6BDBD00E7CECE00F7D6D600FFDEDE00FFDEDE00FFDE
      DE00FFD6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFE7E700B5949400DEB5B500FFCECE00FFD6D600F7CECE00DEBDBD00AD94
      94007B6B6B00000000000000000000000000000000000000000000000000BDA5
      A500D6B5B500E7C6C600F7CECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFDE
      DE00FFFFFF00ADADAD007B7B7B0094949400BDBDBD007B7B7B00848484008484
      8400847B7B00A5A5A5009C9C9C007B7B7B008484840084848400848484008484
      840094949400EFEFEF00DECECE00BD949400CEA5A500AD8C8C007B6B6B000000
      00000000000000000000000000000000000000000000BDA5A500D6B5B500E7C6
      C600F7CECE00FFCECE00FFCECE00FFCECE00FFD6D600F7F7F700BDBDBD006363
      6300636363008C8C8C00F7F7F7008C8C8C00636363006B6B6B006B6B6B006B6B
      6B0073737300F7F7F700A5A5A50063636300636363008C8C8C00F7F7F7008C8C
      8C00636363006B6B6B006B6B6B00D6D6D600F7EFEF00735A5A00B58C8C00EFC6
      C600FFCECE00F7C6C600DEB5B500AD9494007B6B6B0000000000000000000000
      0000000000000000000000000000BDA5A500D6B5B500E7C6C600F7D6D600FFD6
      D600FFCECE00FFCECE00FFFFFF00FFFFFF00F7F7F7008C8C8C005A5A5A00D6D6
      D600FFFFFF00F7EFEF00B5B5B5009C9C9C00A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500ADADAD00E7E7
      E700FFFFFF00EFE7E700BD9C9C00DEADAD00FFCECE00FFD6D600FFD6D600F7CE
      CE00DEBDBD00AD9494007B6B6B00000000000000000000000000000000000000
      000000000000BDA5A500D6B5B500E7C6C600F7D6D600FFD6D600FFD6D600FFD6
      D600FFD6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFE7E700B5949400DEADAD00FFC6C600FFCECE00F7CECE00DEB5B500AD94
      94007B6B6B00000000000000000000000000000000000000000000000000BDA5
      A500D6B5B500E7C6C600F7CECE00FFCECE00FFCECE00FFCECE00FFCECE00FFC6
      C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600F7C6C600EFD6
      D600EFEFEF00C6CECE00BDBDBD00C6C6C600CECECE00A5A5A500A5A5A500A5A5
      A5009C9C9C00B5B5B500B5B5B5009C9C9C00A5A5A500ADADAD00ADADAD00ADAD
      AD00B5B5B500F7F7F700D6C6C600BD949400CE9C9C00AD8C8C007B6363000000
      00000000000000000000000000000000000000000000BDA5A500D6B5B500E7BD
      BD00F7C6C600FFC6C600FFC6C600FFC6C600FFCECE00F7F7F700EFEFEF00E7E7
      E700E7E7E700EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700E7E7
      E700EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700EFEFEF00EFEFEF00EFEF
      EF00E7E7E700E7E7E700EFEFEF00F7F7F700EFEFEF00735A5A00B58C8C00EFBD
      BD00FFC6C600F7BDBD00DEADAD00AD8C8C007B63630000000000000000000000
      0000000000000000000000000000BDA5A500D6B5B500E7C6C600F7CECE00FFCE
      CE00FFC6C600FFC6C600FFFFFF00FFFFFF00FFFFFF00DEDEDE00CECECE00F7EF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFE7E700BD9C9C00DEADAD00FFC6C600FFCECE00FFD6D600F7CE
      CE00DEB5B500AD8C8C007B636300000000000000000000000000000000000000
      000000000000BDA5A500D6B5B500E7C6C600F7CECE00FFD6D600FFD6D600FFCE
      CE00FFCECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700DEDEE700DEDE
      DE00DEDEDE00E7E7E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7E7E700DEDEDE00DEDEDE00DEDEDE00EFEFEF00FFFFFF00FFFF
      FF00EFE7E700B58C8C00DEA5A500F7BDBD00FFC6C600F7C6C600DEB5B500AD8C
      8C007B636300000000000000000000000000000000000000000000000000BD9C
      9C00D6ADAD00E7BDBD00F7C6C600FFCECE00FFCECE00FFC6C600FFC6C600FFBD
      BD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00F7BDBD00DECECE00D6CED600DED6
      D600F7C6C600F7B5B500F7C6C600EFDEDE00DEDEDE00C6C6C600ADADAD009494
      94008C8C8C00A59C9C00A59C9C00949494009C9C9C00A5A5A500ADADAD00ADAD
      AD00BDB5B500FFFFFF00DEC6C600BD8C8C00CE9C9C00AD8484007B6363000000
      00000000000000000000000000000000000000000000BD9C9C00D6ADAD00E7B5
      B500F7BDBD00FFBDBD00FFBDBD00FFBDBD00FFC6C600F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700EFE7E70073525200B5848400EFB5
      B500FFBDBD00F7B5B500DEA5A500AD8484007B63630000000000000000000000
      0000000000000000000000000000BD9C9C00D6ADAD00E7BDBD00F7C6C600FFC6
      C600FFBDBD00FFBDBD00FFF7F700FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFE7E700BD949400DEA5A500FFBDBD00FFCECE00FFCECE00F7C6
      C600DEB5B500AD8C8C007B636300000000000000000000000000000000000000
      000000000000BD9C9C00D6ADAD00E7BDBD00F7C6C600FFCECE00FFCECE00FFCE
      CE00FFC6C600FFFFFF00FFFFFF00FFFFFF00FFF7F700C6B5BD0084737B008473
      73007B6B73008C7B7B00E7D6D600FFFFFF00FFF7F700FFFFFF00FFFFFF00FFFF
      F700FFEFEF009C8C94007B6B6B007B6B73007B6B6B00B5A5A500F7F7F700FFFF
      FF00EFE7E700B58C8C00DEA5A500FFBDBD00FFC6C600F7BDBD00DEADAD00AD8C
      8C007B636300000000000000000000000000000000000000000000000000BD9C
      9C00D6ADAD00E7BDBD00F7C6C600FFC6C600FFC6C600FFC6C600FFBDBD00FFB5
      B500FFB5B500FFB5B500EFBDBD00E7C6C600DED6D600E7E7E700FFD6CE00FFBD
      AD00FFBDBD00FFADAD00FFBDBD00FFC6B500FFDED600F7F7F700DEDEDE00C6C6
      C600ADADAD009C9C9C009C9494009C9C9C00ADADAD00BDBDBD00C6C6C600D6CE
      CE00DEDEDE00FFFFFF00D6BDBD00BD848400CE949400AD7B7B007B5A5A000000
      00000000000000000000000000000000000000000000BD9C9C00D6A5A500E7B5
      B500F7B5B500FFB5B500FFB5B500FFB5B500FFBDBD00FFFFFF00DEDEDE00B5B5
      B500B5B5B500C6C6C600F7F7F700C6C6C600B5B5B500B5B5B500B5B5B500B5B5
      B500BDBDBD00EFEFEF00CECECE00ADADAD00B5B5B500C6C6C600F7F7F700C6C6
      C600B5B5B500B5B5B500B5B5B500E7E7E700EFE7E70073525200B57B7B00EFAD
      AD00FFB5B500F7B5B500DEA5A500AD8484007B63630000000000000000000000
      0000000000000000000000000000BD9C9C00D6ADAD00E7BDBD00F7C6C600FFC6
      C600FFBDBD00FFB5B500F7F7F700F7F7F700F7F7F700EFEFEF00E7E7E700F7F7
      F700FFF7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7
      F700FFFFFF00EFDEDE00BD8C8C00DE9C9C00FFBDBD00FFC6C600FFC6C600F7BD
      BD00DEADAD00AD8484007B636300000000000000000000000000000000000000
      000000000000BD9C9C00D6ADAD00E7BDBD00F7C6C600FFC6C600FFC6C600FFC6
      C600FFC6C600FFFFFF00FFF7F700FFFFFF00FFDECE00DEAD7300B5945200B594
      5200B5945200BD945200EFCEAD00FFF7F700F7F7F700F7F7F700F7F7F700FFF7
      F700FFD6B500C69C5200B58C4200B58C4A00AD8C4200D69C6300F7EFE700FFFF
      FF00EFE7E700B5848400DE9C9C00FFB5B500FFBDBD00F7BDBD00DEADAD00AD84
      84007B636300000000000000000000000000000000000000000000000000BD94
      9400D6A5A500E7B5B500F7BDBD00FFC6C600FFBDBD00FFB5B500FFB5B500DEAD
      AD00DEBDBD00DEC6C600DED6D600E7E7E700FFFFFF00FFE7DE00FFA57300FFAD
      8C00FFC6BD00FFBDBD00FFC6BD00FFB59C00FFA57B00FFE7D600FFFFFF00E7E7
      E700CECECE00A5A5A5007B7B7B006B6B6B007B7B7B008C8C8C009C9C9C00ADA5
      A500BDBDBD00EFEFEF00CEBDBD00BD7B7B00CE8C8C00AD7B7B007B5A5A000000
      00000000000000000000000000000000000000000000BD949400D6A5A500E7AD
      AD00F7ADAD00FFADAD00FFADAD00FFADAD00FFB5B500FFFFFF00CECECE009494
      94008C8C8C00ADADAD00F7F7F700ADADAD009494940094949400949494009494
      94009C9C9C00F7F7F700BDBDBD008C8C8C0094949400ADADAD00F7F7F700ADAD
      AD0094949400949494009C9C9C00DEDEDE00EFE7E70073525200B57B7B00EFA5
      A500FFADAD00F7ADAD00DE9C9C00AD7B7B007B5A5A0000000000000000000000
      0000000000000000000000000000BD949400D6A5A500E7B5B500F7BDBD00FFBD
      BD00FFB5B500FFADAD00F7F7F700F7F7F700F7F7F700ADADAD0084848400DEDE
      DE00FFFFFF00EFEFEF00ADADAD00949494009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C949400A5A5A500DEDE
      DE00FFFFFF00E7DEDE00BD8C8C00DE949400FFB5B500FFBDBD00FFC6C600F7BD
      BD00DEA5A500AD8484007B5A5A00000000000000000000000000000000000000
      000000000000BD949400D6A5A500E7B5B500F7BDBD00FFC6C600FFC6C600FFC6
      C600FFBDBD00F7F7F700F7F7F700F7FFFF00FFC6B500FFC63900FFE73100FFDE
      3100FFDE3100FFDE3100FFCE8C00F7EFF700F7F7F700F7F7F700F7F7F700F7EF
      F700FFCE7B00FFD61800FFDE2100FFDE2100FFDE2100FFBD3100F7EFDE00FFFF
      FF00EFDEDE00B57B7B00DE949400F7ADAD00FFB5B500F7B5B500DEA5A500AD84
      84007B5A5A00000000000000000000000000000000000000000000000000BD94
      9400D6A5A500E7ADAD00F7BDBD00FFBDBD00FFBDBD00FFB5B500EFADAD00C6C6
      C600E7E7E700EFEFEF00EFEFEF00FFFFFF00FFFFFF00FFDEC600FFAD7B00FFA5
      7B00C68C7B0084636B00CE948400FFAD7B00FFAD7B00FFCEB500FFFFFF00F7F7
      F700EFEFEF00E7E7E700CEC6C60084848400525252006B6363007B7373008484
      84009C9C9C00DEDEDE00CEB5B500BD7B7B00CE8C8C00AD7373007B5A5A000000
      00000000000000000000000000000000000000000000BD949400D6A5A500E7A5
      A500F7ADAD00FFADAD00FFA5A500FFA5A500FFADAD00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700FFFFFF00FFFFFF00F7F7F700FFFF
      FF00F7F7F700EFEFEF00F7F7F700FFFFFF00F7F7F700F7F7F700EFEFEF00F7F7
      F700FFFFFF00FFFFFF00FFFFFF00F7F7F700E7E7E700734A4A00AD737300EF9C
      9C00FFA5A500F7A5A500DE949400AD7B7B007B5A5A0000000000000000000000
      0000000000000000000000000000BD949400D6A5A500E7ADAD00F7B5B500FFB5
      B500FFADAD00FFA5A500F7F7F700F7F7F700EFEFEF007B7B7B0042424200C6C6
      C600FFFFFF00EFEFEF00ADADAD00949494009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C00A59C9C00A59C9C009C9C9C009C9C9C00A5A5A500DEDE
      DE00FFFFFF00E7DEDE00BD848400DE949400FFADAD00FFBDBD00FFBDBD00F7B5
      B500DEA5A500AD7B7B007B5A5A00000000000000000000000000000000000000
      000000000000BD949400D6A5A500E7ADAD00F7BDBD00FFBDBD00FFBDBD00FFBD
      BD00FFBDBD00F7F7F700F7F7F700F7FFFF00FFCEBD00FFCE3900FFDE2900FFD6
      2900FFD61800FFD61000FFCE8C00F7EFF700F7F7F700F7F7F700F7F7F700F7EF
      F700FFCE7300FFCE0000FFCE0000FFCE0000FFCE0000FFBD1800F7EFDE00F7FF
      FF00EFDEDE00B57B7B00D68C8C00F7A5A500FFB5B500F7B5B500DEA5A500AD7B
      7B007B5A5A00000000000000000000000000000000000000000000000000BD94
      9400D69C9C00E7ADAD00F7B5B500FFB5B500FFB5B500FFADAD00F7A5A500DEBD
      BD00E7E7E700FFFFFF00F7F7F700FFFFFF00FFFFFF00FFEFDE00FFE7D600EFC6
      AD00523931000000000052393100EFBD9C00FFDECE00FFE7DE00FFFFFF00F7F7
      F700EFEFEF00F7F7F700E7E7E7009C9C9C004A4A4A006B6B6B007B7B7B008C84
      84009C9C9C00E7E7E700CEB5B500BD7B7B00CE848400AD7373007B5252000000
      00000000000000000000000000000000000000000000BD949400D69C9C00E7A5
      A500F7A5A500FFA5A500FF9C9C00FF9C9C00FFA5A500F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700E7E7E700734A4A00AD6B6B00EF94
      9400FFA5A500F79C9C00DE949400AD7B7B007B5A5A0000000000000000000000
      0000000000000000000000000000BD949400D69C9C00E7ADAD00F7B5B500FFB5
      B500FFADAD00FFA5A500F7F7F700F7F7F700F7EFEF00BDBDBD00A5A5A500DEDE
      DE00F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700F7F7F700E7DEDE00BD848400DE8C8C00FFADAD00FFB5B500FFB5B500F7B5
      B500DE9C9C00AD7B7B007B5A5A00000000000000000000000000000000000000
      000000000000BD949400D69C9C00E7ADAD00F7B5B500FFB5B500FFBDBD00FFBD
      BD00FFBDBD00F7F7F700F7F7F700F7FFFF00FFCEBD00FFCE4A00FFDE3900FFD6
      2900FFD62100FFCE1800FFC68C00F7EFEF00F7F7F700F7F7F700F7F7F700F7EF
      F700FFCE7300FFCE0800FFCE0000FFCE0000FFCE0000FFB51800F7E7D600F7F7
      FF00E7DEDE00B5737300D6848400F7A5A500FFADAD00F7ADAD00DE9C9C00AD7B
      7B007B5A5A00000000000000000000000000000000000000000000000000C694
      9400D69C9C00E7ADAD00F7B5B500FFB5B500FFB5B500FFADAD00FFA5A500FFA5
      A500EFBDBD00DEDEDE00EFEFEF00FFFFFF00FFFFFF00FFEFEF00FFF7F700E7D6
      D60042393900000000005A525200EFD6D600FFEFEF00FFEFEF00FFFFFF00F7F7
      F700EFEFEF00DEDEDE00A5A5A50039393900393939004A4A4A00525252005252
      5200736B6B00E7E7E700D6BDBD00BD7B7B00CE8C8C00AD7373007B5252000000
      00000000000000000000000000000000000000000000C6949400D69C9C00E7A5
      A500F7ADAD00FFA5A500FFA5A500FF9C9C00FFA5A500F7F7F700BDBDBD006363
      6300636363008C8C8C00F7F7F7008C8C8C00636363006B6B6B00736B6B006B6B
      6B007B7B7B00F7F7F700A5A5A50063636300636363008C8C8C00F7F7F7008C8C
      8C00636363006B6B6B0073737300D6D6D600E7E7E70073424200AD6B6B00EF94
      9400FF9C9C00F79C9C00D6949400AD7373007B52520000000000000000000000
      0000000000000000000000000000C6949400D69C9C00E7ADAD00F7B5B500FFB5
      B500FFADAD00FFA5A500F7F7F700F7F7F700F7EFEF00F7F7F700F7F7F700F7F7
      F700F7EFEF00F7EFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7EF
      EF00F7F7F700E7D6D600BD848400DE8C8C00F7ADAD00FFB5B500FFB5B500F7AD
      AD00DE9C9C00AD7B7B007B525200000000000000000000000000000000000000
      000000000000C6949400D69C9C00E7ADAD00F7B5B500FFB5B500FFB5B500FFB5
      B500FFB5B500F7F7F700F7F7F700F7F7FF00FFCEBD00FFCE4A00FFDE3100FFD6
      2100FFD61000FFCE1000FFC68400F7E7EF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00FFCE7300FFCE0800FFCE0000FFCE0000FFCE0000FFB51800F7E7D600F7F7
      F700E7DEDE00B5737300D6848400F7A5A500FFADAD00F7ADAD00DE9C9C00AD7B
      7B007B525200000000000000000000000000000000000000000000000000C69C
      9C00D6A5A500E7ADAD00F7B5B500FFB5B500FFB5B500FFADAD00FFA5A500FFA5
      A500FFA5A500E7B5B500D6D6D600F7F7F700FFFFFF00FFD6D600FFBDBD00FFAD
      AD008C5A5A006B636300EFE7E700FFFFFF00FFC6C600FFCECE00FFFFFF00F7F7
      F700D6D6D600ADADAD007B7B7B007B7B7B008C8C8C009C9C9C00A5A5A500ADAD
      AD00BDBDBD00F7F7F700D6BDBD00C6848400CE8C8C00A57373007B5252000000
      00000000000000000000000000000000000000000000C69C9C00D6A5A500E7AD
      AD00F7ADAD00FFADAD00FFA5A500FF9C9C00FFA5A500EFEFEF00EFEFEF00E7E7
      E700E7E7E700E7E7E700EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700EFEFEF00EFEF
      EF00E7E7E700E7E7E700E7E7E700EFEFEF00E7DEDE0073424200AD6B6B00EF94
      9400FFA5A500F79C9C00D6949400A57373007B52520000000000000000000000
      0000000000000000000000000000C69C9C00D6A5A500E7ADAD00F7B5B500FFB5
      B500FFADAD00FFA5A500F7EFEF00F7EFEF00F7EFEF00F7F7F700F7F7F700F7EF
      EF00EFEFEF00F7EFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7EF
      EF00F7F7F700E7D6D600BD848400DE949400FFADAD00FFB5B500FFB5B500F7AD
      AD00D69C9C00A57B7B007B525200000000000000000000000000000000000000
      000000000000C69C9C00D6A5A500E7ADAD00F7B5B500FFB5B500FFB5B500FFB5
      B500FFB5B500F7F7F700F7F7F700F7F7FF00FFCEBD00FFCE4200FFD62100FFD6
      1000FFD60800FFCE0800FFC68400F7E7EF00EFEFEF00EFEFEF00EFEFEF00F7E7
      EF00FFCE7300FFCE0000FFCE0000FFCE0000FFD60000FFBD1800F7E7D600F7F7
      F700E7DEDE00B5737300DE8C8C00FFA5A500FFADAD00F7ADAD00D69C9C00A57B
      7B007B525200000000000000000000000000000000000000000000000000CEA5
      A500DEA5A500E7ADAD00F7B5B500FFB5B500FFB5B500FFB5B500FFADAD00FFA5
      A500FFA5A500FF9C9C00DEADAD00CECECE00EFEFEF00FFDEDE00FF9C9C00FFAD
      AD00FFBDBD00FFD6D600FFFFFF00FFFFFF00FFB5B500FFCECE00EFEFEF00D6D6
      D600A5A5A500848484008484840073737300848484008C8C8C00949494009C9C
      9C00ADA5A500EFEFEF00D6BDBD00C68C8C00C68C8C00A5737300735252000000
      00000000000000000000000000000000000000000000CEA5A500DEA5A500E7AD
      AD00F7ADAD00FFADAD00FFADAD00FFA5A500FFA5A500EFEFEF00F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700E7DEDE00734A4A00B56B6B00EF94
      9400FFA5A500EFA5A500D6949400A57373007352520000000000000000000000
      0000000000000000000000000000CEA5A500DEA5A500E7ADAD00F7ADAD00FFAD
      AD00FFADAD00FFA5A500EFEFEF00EFEFEF00EFEFEF00C6C6C600ADADAD00DEDE
      DE00F7F7F700E7E7E700BDBDBD00ADADAD00ADADAD00B5ADAD00B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500ADADAD00ADADAD00B5B5B500DEDE
      DE00F7F7F700E7D6D600BD848400DE949400FFADAD00FFB5B500FFB5B500EFAD
      AD00D69C9C00A573730073525200000000000000000000000000000000000000
      000000000000CEA5A500DEA5A500E7ADAD00F7B5B500FFB5B500FFB5B500FFB5
      B500FFB5B500F7F7F700F7F7F700F7F7F700FFCEB500FFC64200FFCE2100FFC6
      1000FFC60800FFC60800FFC68400EFE7E700EFEFEF00EFEFEF00EFEFEF00EFE7
      EF00FFC67300FFBD0800FFC60800FFC60800FFC60000FFB52100F7E7D600EFF7
      F700E7DEDE00B57B7B00DE8C8C00FFA5A500FFADAD00EFADAD00D69C9C00A573
      730073525200000000000000000000000000000000000000000000000000DEAD
      AD00DEADAD00E7ADAD00F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500FFAD
      AD00FFADAD00FFA5A500FFA5A500E7ADAD00CEC6C600DED6D600F7BDBD00FFBD
      BD00FFBDBD00FFB5B500FFDEDE00FFDEDE00F7C6C600E7DEDE00CED6D600CEC6
      C600BDBDBD00C6BDBD00C6C6C600C6C6C600CECECE00D6D6D600DEDEDE00DEDE
      DE00E7DEDE00F7F7F700D6BDBD00C68C8C00BD8C8C00946B6B00634242000000
      00000000000000000000000000000000000000000000DEADAD00DEADAD00E7AD
      AD00F7ADAD00FFB5B500FFADAD00FFADAD00FFADAD00F7F7F700DEDEDE00B5B5
      B500B5B5B500C6C6C600F7F7F700CECECE00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00C6C6C600F7F7F700D6D6D600BDBDBD00BDBDBD00CECECE00F7F7F700CECE
      CE00BDBDBD00BDBDBD00BDBDBD00E7E7E700E7E7E7007B525200B5737300EF9C
      9C00F7A5A500EFA5A500CE8C8C00946B6B006342420000000000000000000000
      0000000000000000000000000000DEADAD00DEADAD00E7ADAD00F7ADAD00FFAD
      AD00FFADAD00FFA5A500EFEFEF00EFEFEF00EFE7E7007B7B7B004A4A4A00BDBD
      BD00F7F7F700E7E7E700ADA5A500949494009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9494009C94940094949400948C8C009C9C9C00D6D6
      D600F7F7F700E7D6D600C68C8C00DE949400FFADAD00FFB5B500F7B5B500EFAD
      AD00CE949400946B6B0063424200000000000000000000000000000000000000
      000000000000DEADAD00DEADAD00E7ADAD00F7B5B500FFB5B500FFB5B500FFB5
      B500FFB5B500F7EFEF00F7EFEF00F7F7F700F7DECE00FFCE9C00FFCE9400F7CE
      8C00F7CE8C00FFCE8400F7D6B500EFE7E700EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00F7D6B500F7C68C00F7CE8400F7CE8400F7CE8400F7C68C00EFE7DE00EFEF
      F700E7DEDE00BD848400DE949400F7ADAD00F7ADAD00EFA5A500CE949400946B
      6B0063424200000000000000000000000000000000000000000000000000EFC6
      C600EFBDBD00EFB5B500EFB5B500F7B5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFADAD00FFADAD00FFADAD00FFA5A500EFADAD00D6BDBD00D6CECE00E7CE
      CE00F7BDBD00FFADAD00F7B5B500E7C6C600CEC6C600ADADAD00ADADAD00ADAD
      AD00ADADAD00BDBDBD00BDBDBD00ADADAD00B5B5B500BDB5B500BDBDBD00BDBD
      BD00C6C6C600EFEFEF00DEC6C600BD8C8C00AD7B7B007B525200634242000000
      00000000000000000000000000000000000000000000EFC6C600EFBDBD00EFB5
      B500EFB5B500F7B5B500FFB5B500FFB5B500FFB5B500F7F7F700CECECE009494
      940094949400ADADAD00F7F7F700B5B5B500949494009C9C9C009C9C9C009C9C
      9C00A5A5A500F7F7F700C6C6C600A5A5A500A5A5A500B5B5B500F7F7F700B5B5
      B50094949400949494009C9C9C00DEDEDE00EFE7E700A56B6B00BD7B7B00EF9C
      9C00F7A5A500DE9C9C00B58484007B5252006342420000000000000000000000
      0000000000000000000000000000EFC6C600EFBDBD00EFB5B500EFADAD00F7AD
      AD00FFADAD00FFADAD00EFEFEF00EFEFEF00EFEFEF00ADADAD0084848400D6D6
      D600EFEFEF00EFEFEF00EFEFEF00EFE7E700EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFE7E700EFE7E700E7E7E700E7E7E700E7E7E700E7E7E700EFE7
      E700EFEFEF00E7DEDE00DE9C9C00E7A5A500FFADAD00FFB5B500F7ADAD00DEA5
      A500B58484007B52520063424200000000000000000000000000000000000000
      000000000000EFC6C600EFBDBD00EFB5B500EFB5B500F7B5B500FFB5B500FFB5
      B500FFB5B500EFEFEF00EFEFEF00EFEFEF00EFF7F700EFF7F700EFEFF700EFEF
      F700EFEFF700EFEFF700EFEFEF00EFEFEF00EFEFEF00EFE7E700EFEFEF00EFEF
      EF00EFEFEF00EFEFF700EFEFF700EFEFF700EFEFF700EFEFF700EFEFEF00EFEF
      EF00EFDEDE00D6949400E79C9C00F7ADAD00F7ADAD00DEA5A500B58484007B52
      5200634242000000000000000000000000000000000000000000000000000000
      0000FFDEDE00F7C6C600F7B5B500F7B5B500F7B5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFB5B500FFB5B500FFADAD00FFADAD00FFADAD00EFB5B500E7C6
      C600E7DEDE00E7D6D600E7DEDE00DEDEDE00DEDEDE00D6D6D600CECECE00CECE
      CE00CECECE00D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600EFEFEF00DEC6C600BD8484008C636300634A4A00000000000000
      0000000000000000000000000000000000000000000000000000FFDEDE00F7C6
      C600F7B5B500F7B5B500F7B5B500FFB5B500FFB5B500EFEFEF00F7F7F700FFFF
      FF00FFFFFF00F7F7F700F7EFEF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700F7F7F700FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7
      F700FFFFFF00FFFFFF00FFFFFF00F7F7F700EFE7E700DE949400DE949400EFA5
      A500E7A5A500CE949400946B6B00634A4A000000000000000000000000000000
      000000000000000000000000000000000000FFDEDE00F7C6C600F7B5B500F7AD
      AD00F7ADAD00FFADAD00EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFDEDE00F7B5B500F7ADAD00F7ADAD00F7ADAD00E7A5A500CE94
      9400946B6B00634A4A0000000000000000000000000000000000000000000000
      00000000000000000000FFDEDE00F7C6C600F7B5B500F7B5B500F7B5B500FFB5
      B500FFB5B500EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFEF
      EF00EFDEDE00F7ADAD00F7ADAD00F7ADAD00E7A5A500CE949400946B6B00634A
      4A00000000000000000000000000000000000000000000000000000000000000
      0000FFEFEF00FFE7E700FFCECE00F7B5B500F7B5B500F7B5B500F7B5B500F7B5
      B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5B500F7ADAD00F7C6
      C600EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E7E7E700D6BDBD00A5737300735252006B4A4A00000000000000
      0000000000000000000000000000000000000000000000000000FFEFEF00FFE7
      E700FFCECE00F7B5B500F7B5B500F7B5B500F7B5B500EFEFEF00EFEFEF00EFEF
      EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700EFEFEF00EFEFEF00EFEFEF00F7F7F700F7F7F700EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFE7E700F7ADAD00EFA5A500E7A5
      A500CE949400A5737300735252006B4A4A000000000000000000000000000000
      000000000000000000000000000000000000FFEFEF00FFE7E700FFCECE00F7B5
      B500F7ADAD00F7ADAD00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFE7E700EFE7E700EFE7
      E700EFEFEF00EFDEDE00F7B5B500F7ADAD00EFADAD00E7A5A500CE949400A573
      7300735252006B4A4A0000000000000000000000000000000000000000000000
      00000000000000000000FFEFEF00FFE7E700FFCECE00F7B5B500F7B5B500F7B5
      B500F7B5B500EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFE7
      E700EFE7E700EFE7E700EFE7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700EFE7E700EFE7E700EFE7E700EFEF
      EF00EFDEDE00F7ADAD00EFADAD00E7A5A500CE949400A5737300735252006B4A
      4A00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFEFEF00FFCECE00F7BDBD00EFB5B500EFADAD00EFAD
      AD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFAD
      AD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFAD
      AD00EFADAD00EFADAD00EFA5A500EFA5A500EFA5A500EFA5A500E7A5A500E7A5
      A500DE9C9C00C6949400A57373007B5A5A007352520000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFEFEF00FFCECE00F7BDBD00EFB5B500EFADAD00EFB5B500EFB5B500EFB5
      B500EFBDBD00EFBDBD00EFBDBD00EFBDBD00EFBDBD00EFBDBD00EFBDBD00EFBD
      BD00EFBDBD00EFBDBD00EFBDBD00EFB5B500EFB5B500EFB5B500EFB5B500EFB5
      B500EFB5B500EFB5B500EFB5B500EFB5B500E7B5B500E7A5A500DE9C9C00C694
      9400A57373007B5A5A0073525200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFEFEF00FFCE
      CE00F7BDBD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFAD
      AD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFAD
      AD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFA5A500EFA5A500EFA5
      A500EFA5A500EFA5A500E7ADAD00E7A5A500DE9C9C00C6949400A57373007B5A
      5A00735252000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFEFEF00FFCECE00F7BDBD00EFB5
      B500EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFA5
      A500EFA5A500EFA5A500EFA5A500EFA5A500EF9C9C00EF9C9C00EF9C9C00EF9C
      9C00EF9C9C00EF9C9C00EFA5A500EFA5A500EFA5A500EFA5A500EFA5A500EFAD
      AD00E7A5A500E7A5A500DE9C9C00C6949400A57373007B5A5A00735252000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFF7F700FFD6D600F7C6C600EFB5B500E7AD
      AD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEAD
      AD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEAD
      AD00DEADAD00DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500D6A5A500CE9C
      9C00BD8C8C00A57373008C6363007B5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFF7F700FFD6D600F7C6C600EFB5B500E7ADAD00DEADAD00DEAD
      AD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEAD
      AD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEAD
      AD00DEADAD00DEADAD00DEA5A500DEA5A500D6A5A500CE9C9C00BD8C8C00A573
      73008C6363007B5A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFF7
      F700FFD6D600F7C6C600EFB5B500E7ADAD00DEADAD00DEADAD00DEADAD00DEAD
      AD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEAD
      AD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEA5A500DEA5
      A500DEA5A500DEA5A500D6A5A500CE9C9C00BD8C8C00A57373008C6363007B5A
      5A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFF7F700FFD6D600F7C6
      C600EFB5B500E7ADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEAD
      AD00DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5
      A500DEA5A500DEA5A500DEA5A500DEADAD00DEADAD00DEADAD00DEA5A500DEA5
      A500D6A5A500CE9C9C00BD8C8C00A57373008C6363007B5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFE7E700F7D6D600EFC6C600E7B5
      B500DEADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00CEA5A500CEA5A500C69C9C00BD94
      9400AD8484009C73730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFE7E700F7D6D600EFC6C600E7B5B500DEADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00CEA5A500CEA5A500C69C9C00BD949400AD8484009C73
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFE7E700F7D6D600EFC6C600E7B5B500DEADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00CEA5A500CEA5A500C69C9C00BD949400AD8484009C737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFE7E700F7D6
      D600EFC6C600E7B5B500DEADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00CEA5A500CEA5
      A500C69C9C00BD949400AD8484009C7373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942002129
      4200293142002129420018294200182942001829420018294200182939001829
      3900182139001821390000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829390018293900182139001821
      3900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018293900182939001821390018213900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182942001829420018294200182942001829420018294200182942001829
      4200182939001829390018213900182139000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000021314A0021314A002131520029426300314A73003152
      730031527B0031527B0031527B0031527B0031527B00314A7B00294A7B00294A
      7B00294A7300294A7300314A7B0042527B004A5A7B0063637B009C7B7B00D68C
      7300F79C7300C6847300314A7300314A7B00314A7B0031527B0031527300314A
      6B0029425A001829420018213900102131000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000021314A0021314A0021315200314263003952730039527B00395A7B00395A
      7B0039527B0031527B0031527B0031527B00294A7B00294A7B0031527B004252
      7B00425A7B0039527B0039527B0039527B0039527B0039527B0039527B003952
      7B0039527B0039527B0039527B0039527B0039527300314A6B0029425A001829
      4200182139001021310000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000021314A002131
      4A0021315200314263003952730039527B00395A7B00395A7B00395A7B00395A
      7B00395A7B00395A7B00395A7B00395A7B00425A7B004A5A7B004A5A7B004A5A
      7B00395A7B0039527B0039527B0039527B00395A7B00395A7B00395A7B00395A
      7B00395A7B0039527B0039527300314A6B0029425A0018294200182139001021
      3100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000021314A0021314A00213152003142
      63003952730039527B00395A7B00395A7B00395A7B00395A7B00395A7B00395A
      7B0039527B0039527B00395A7B00425A7B004A5A7B004A5A7B00425A7B003952
      7B0039527B00395A7B00395A7B00395A7B00395A7B00395A7B00395A7B003952
      7B0039527300314A6B0029425A00182942001821390010213100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000213952002139520031527300426B94004A73A5004A73AD004273
      AD004273AD004273AD003973AD003973AD00396BAD00316BAD00396BAD00527B
      A5006B7BA5007B849C00A58C9400DE9C8C00FFA57B00FFA57B00FFA57300FF9C
      7300FF9C7300F7946B004A5A8C00316BAD00316BAD003973AD004273AD004273
      AD0042739C0042638C00294A6300182939001021310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002139
      520021395200315273004A6B9400527BA5005284AD005284B5005284B5004A7B
      B500427BAD004273AD004A73AD005A7BA5006B7BA5008C849400BD948C00EF9C
      7B00FFA57300A58494004A73AD004A7BB5004A7BB5004A7BB5004A7BB5004A7B
      B5005284B5005284B5005284B5005284B5005284B500527BAD004A73A5004263
      8C00294A63001829390010213100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021395200213952003152
      73004A6B9400527BA5005284AD005A84B5005A84B5005A84B5005A84B5005A84
      B5005A84B5006B8CAD00738CAD00848CA500BD9C9400EFA58400FFA57B00FFA5
      7B009C8494004273AD004273AD004A7BB5004A7BB5005284B5005A84B5005A84
      B5005A84B5005A84B5005A84B5005284AD005273A50042638C00294A63001829
      3900102131000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002139520021395200315273004A6B9400527B
      A5005284AD005A84B5005284B5005284B5004A7BB5004A7BB5004A7BB5005A7B
      AD006384A5007384A500A5949400E79C8400FFA57B00FFA57300C69484004273
      AD00427BB5004A7BB500527BB5005284B5005A84B5005A84B5005A84B5005A84
      B5005A84B5005284AD005273A50042638C00294A630018293900102131000000
      0000000000000000000000000000000000000000000000000000000000000000
      000029425A0029425A00396384004A7BA500528CBD004A8CC600428CC600428C
      C6003984C6004284C6004284C6005A8CBD007B94B5008C94B500A59CAD00DEA5
      9C00FFAD8C00FFAD8C00FFA58400FFA58400FFA57B00FFA57B00FF9C7300FF9C
      7300FF9C6B00F7946B0052427B00317BBD00317BC6003184C6003984C6004A8C
      C600528CC600528CB5004A7BA500315273001831420010293100000000000000
      000000000000000000000000000000000000000000000000000029425A002942
      5A00396384005284A5005A94BD006394C6005A9CCE005A94CE006394C6007B94
      BD008C94B5009C94A500C69C9400F7A58400FFA57B00FFA57B00FF9C7300FF9C
      7300FFA57300DE6B7B006363B500428CC600428CC6004A8CC6004A94CE005294
      CE005294CE005A94CE005A94CE005A9CCE005A9CCE005A9CCE005A94C6005A8C
      BD004A7BA5003152730018314200102931000000000000000000000000000000
      00000000000000000000000000000000000029425A0029425A0039638400527B
      A5005A8CBD005A94C6005A9CCE005A9CCE00639CCE0084A5C6009CADBD00A5A5
      BD00C6ADAD00EFAD9400FFAD8C00FFAD8400FFA57B00FFA57B00FFA57300FFA5
      7300DE7B7B004273B5003984C600428CC6004A8CC6005294CE005A9CCE00639C
      CE006B9CCE006B9CCE006B9CCE00639CCE00639CC6005A8CBD004A7BA5003152
      7300183142001029310000000000000000000000000000000000000000000000
      0000000000000000000029425A0029425A00396384005284AD005A94BD006394
      C600639CCE005A94CE005294CE006B94C600849CB5008C9CB500A59CA500E7A5
      9400FFAD8400FFA57B00FFA57B00FFA57300FF9C7300FF9C6B00F7947300635A
      B5003984C600428CC6004A8CC6005294CE005A94CE005A9CCE00639CCE00639C
      CE00639CCE00639CCE00639CC6005A8CBD004A7BA50031527300183142001029
      3100000000000000000000000000000000000000000000000000000000000000
      0000314A6300396384005284AD005294C6004A94CE004294CE004294CE004294
      CE00739CC600A5ADBD00B5ADB500D6ADAD00FFB5A500FFB59C00FFAD9400FFAD
      9400FFAD8C00FFAD8C00FFA58400FFA58400FFA57B00FFA57B00FF9C7300FF9C
      7300FF9C6B00F7946B0063316B002984BD00318CCE00318CCE00398CCE004294
      CE004A9CCE00529CCE005A94BD004A84A50031526B0018293900000000000000
      0000000000000000000000000000000000000000000000000000314A6300396B
      8400528CAD00639CC6007BA5CE0094ADC600ADB5BD00B5ADB500CEADAD00F7AD
      9400FFAD8C00FFAD8C00FFA58400FFA58400FF9C7B00FF9C7B00FF9C7300FF9C
      7300FFA56B00D65A6B006B4A9C00398CCE003994CE004294CE00429CCE004A9C
      CE004A9CD600529CD60052A5D6005AA5D6005AA5D6005AA5D6005AA5D60063A5
      CE005A94BD004A84A50031526B00182939000000000000000000000000000000
      000000000000000000000000000000000000314A6300396B8400528CAD005A9C
      C60063A5CE0084ADCE00B5B5C600BDB5BD00C6B5BD00EFBDAD00FFBD9C00FFB5
      9C00FFAD9400FFAD8C00FFAD8400FFA57B00FFA57B00FFA57300FF9C7300FF9C
      6B00DE6B6B006352A500318CCE003994CE004294CE004A9CD60052A5D60063AD
      D6006BADDE006BADDE006BADD6006BADD6006BADD60063A5CE00639CC6005284
      A50031526B001829390000000000000000000000000000000000000000000000
      00000000000000000000314A6300426B8400528CAD00639CC60063A5CE007BAD
      CE00A5ADC600ADADBD00B5ADB500DEADA500FFAD9400FFAD8C00FFAD8C00FFAD
      8400FFA58400FFA57B00FFA57B00FF9C7300FF9C7300FF9C6B00F78C6B007329
      8C00318CCE003994CE003994CE004A9CCE00529CD60052A5D6005AA5D60063A5
      D60063ADD6006BADD6006BADD60063A5CE00639CC6005284A50031526B001829
      390000000000000000000000000000000000000000000000000000000000395A
      6B00396373004A84A500529CBD0052A5CE0042A5CE00399CCE00399CCE0084AD
      C600EFBDB500FFBDAD00FFB5A500FFB5A500FFB59C00FFAD9C00FFAD9C00FFAD
      9400FFAD9400FFAD8C00FFA58C00FFA58400FFA58400FFA57B00FF9C7B00FF9C
      7300FF9C7300F7946B0063295A002984B5003194CE003194CE00319CCE00399C
      CE004AA5D60052A5D60063ADCE005A9CBD004A7B940021425A00183139000000
      00000000000000000000000000000000000000000000315A6B0039637B006B94
      A500BDB5BD00D6BDBD00DEBDBD00F7BDB500FFBDA500FFB59C00FFB59C00FFAD
      9400FFAD8C00FFA58C00FFA58400FFA58400FFA57B00FFA57B00FF9C7300FF9C
      7300FFA56B00CE5A63007B298C00428CC600319CCE00399CCE00399CCE00429C
      CE0042A5D60042A5D6004AA5D6004AA5D60052ADD60052ADD6005AADD6005AAD
      D60063ADCE005A9CBD00427B940021425A001831390000000000000000000000
      0000000000000000000000000000315A6B0039637B00528CA50084ADBD00DEC6
      C600DEC6BD00EFC6B500FFBDAD00FFBDAD00FFBDA500FFBD9C00FFB59C00FFAD
      9400FFAD8C00FFAD8400FFA58400FFA57B00FFA57B00FFA57300FF9C7300FF9C
      6B00DE6B6B0073399C003194CE00319CCE00399CCE0042A5D6004AA5D6005AAD
      D60063B5DE006BB5DE006BB5DE006BB5DE006BB5DE006BB5D6006BADCE005A9C
      BD004A7B940021425A0018313900000000000000000000000000000000000000
      000000000000315A6B0039637B00528CA5007BADC600CEBDC600D6C6C600E7BD
      BD00FFBDAD00FFBDA500FFB59C00FFB59400FFAD9400FFAD8C00FFAD8C00FFAD
      8400FFA58400FFA57B00FFA57B00FFA57300FF9C7300FF9C6B00EF8C63006318
      6B00398CC600319CCE00319CCE00399CCE0042A5D6004AA5D60052ADD6005AAD
      D60063B5DE006BB5DE006BB5DE006BB5D6006BADCE005A9CBD004A7B94002142
      5A00183139000000000000000000000000000000000000000000000000004263
      7B004A738C005294B500529CC6004AA5CE00429CCE00399CCE00399CCE00BDB5
      BD00FFBDB500FFBDAD00FFB5AD00FFB5A500FFB5A500FFB59C00FFAD9C00FFAD
      9400FFAD9400FFAD8C00FFA58400FFA58400FFA58400FFA57B00FF9C7B00FF9C
      7300FF9C7300F7946B0063185200396BA5003194CE003194CE00319CCE00399C
      CE0042A5D60052ADD60063ADD60063A5C600528CA5003963730021394A000000
      0000000000000000000000000000000000000000000039637B0052849C00E7BD
      B500FFC6B500FFBDB500FFBDAD00FFB5A500FFB5A500FFB59C00FFAD9C00FFAD
      9400FFAD8C00FFA58C00FFA58400FFA58400FFA57B00FFA57B00FF9C7300FF9C
      7300FFA57300C66363008C107300427BBD003194CE00319CCE00319CCE00399C
      CE00399CCE00399CCE00429CCE0042A5CE004AA5D6004AA5D60052ADD6005AAD
      D6005AADD6005AA5C600528CA5003963730021394A0000000000000000000000
      0000000000000000000000000000426B7B0052849400739CB500F7CEC600FFC6
      BD00FFC6B500FFC6AD00FFBDAD00FFBDA500FFB59C00FFB59C00FFB59400FFAD
      9400FFAD8C00FFAD8400FFA58400FFA58400FFA57B00FFA57B00FF9C7300FF9C
      7300D66B63007B2184002994C600319CCE00319CCE00399CCE004AA5D60052AD
      D6005AADD60063ADD60063B5DE006BB5DE006BB5DE006BB5DE006BB5D60063A5
      C600528CA5003963730021394A00000000000000000000000000000000000000
      000000000000426B7B00528494006B9CB500EFC6C600FFCEBD00FFC6B500FFBD
      AD00FFBDA500FFB59C00FFB59C00FFAD9400FFAD9400FFAD9400FFAD8C00FFAD
      8400FFAD8400FFA57B00FFA57B00FFA57B00FFA57300FF9C7300EF8C63005A08
      52004273B5003194CE00319CCE00319CCE00399CCE004AA5D60052A5D6005AAD
      D60063ADD6006BB5DE006BB5DE006BB5DE006BB5D60063A5C600528CA5003963
      730021394A000000000000000000000000000000000000000000000000004A73
      840052849C005A9CBD0052A5CE0042A5CE00399CCE00319CCE00399CCE00C6B5
      BD00FFBDB500FFBDAD00FFBDAD00FFB5A500FFB5A500FFB59C00FFB59C00FFAD
      9400FFAD9400FFAD8C00FFA58C00FFA58400FFA58400FFA57B00FFA57B00FF9C
      7300FF9C7300F7946B005A1042004A5294003194CE003194CE00319CCE00399C
      CE004AA5D60052ADD60063ADD60063ADCE005A94B500426B8400294A5A000000
      0000000000000000000000000000000000000000000042738C008494AD00FFC6
      B500FFBDB500FFBDAD00FFBDAD00FFB5A500FFB5A500FFB59C00FFAD9400FFAD
      9400FFAD8C00FFAD8C00F7A58400FFA58400FFA57B00FFA57B00FF9C7B00FF9C
      7300FFA57300BD635A008C0063004A6BB5003194CE003194CE003194CE00319C
      CE00319CCE00319CCE00399CCE00399CCE0042A5CE0042A5D6004AA5D60052AD
      D6005AADD6005AA5CE005A94B500426B8400294A5A0000000000000000000000
      00000000000000000000000000004A7B8C005A8CA500ADB5BD00FFCEBD00FFC6
      BD00FFC6B500FFBDAD00FFBDA500FFBDA500FFB59C00FFB59C00FFAD9400FFAD
      9400FFAD8C00FFAD8C00FFAD8400FFA58400FFA57B00FFA57B00FF9C7300FF9C
      7300CE6B6300841073004A73BD00319CCE00319CCE00399CCE0042A5CE004AA5
      D60052ADD6005AADD60063ADD60063B5D6006BB5DE006BB5DE006BB5D60063AD
      CE005A94B500426B8400294A5A00000000000000000000000000000000000000
      0000000000004A7B8C005A8CA500A5B5BD00FFCEBD00FFC6BD00FFBDB500FFBD
      AD00FFB5A500FFB59C00FFB59C00FFAD9400FFAD9400FFAD9400FFAD8C00FFAD
      8C00FFA58400FFA58400FFA57B00FFA57B00FF9C7300FF9C7300EF8C63005A00
      42005A529C003194CE003194CE00319CCE00399CCE0042A5CE004AA5D60052AD
      D6005AADD60063B5D6006BB5DE006BB5DE006BB5D60063ADCE005A94B500426B
      8400294A5A00000000000000000000000000000000000000000000000000527B
      8C005A8CA5005A9CBD0052A5CE00429CCE00399CCE00319CCE00429CCE00C6B5
      BD00FFBDB500FFBDAD00FFBDAD00FFB5A500FFB5A500FFB59C00FFB59C00FFAD
      9400FFAD9400FFAD8C00FFAD8C00FFA58400FFA58400FFA58400FFA57B00FF9C
      7300FF9C7300EF946B0052103100523984003194CE00319CCE00319CCE00399C
      CE004AA5D60052ADD60063ADD60063ADCE005A9CB50042738C00295263000000
      000000000000000000000000000000000000000000004A7B9C00849CAD00FFC6
      B500FFBDB500FFBDAD00FFBDA500FFB5A500FFB59C00FFB59C00FFAD9400FFAD
      9400FFAD9400FFAD8C00F7A58400F7A58400FFA57B00FFA57B00FFA57B00FF9C
      7300FFA57300B5635A007B005A006B4AA5003194CE003194CE003194CE003194
      CE00319CCE00319CCE00319CCE00399CCE00399CCE0042A5CE004AA5D60052A5
      D60052ADD6005AA5CE005A94B50042738C002952630000000000000000000000
      00000000000000000000000000005A849C005A94AD00B5B5C600FFCEBD00FFC6
      BD00FFC6B500FFBDAD00FFBDA500FFB5A500FFB59C00FFB59C00FFAD9400FFAD
      9400FFAD8C00FFAD8C00FFAD8400FFA58400FFA57B00FFA57B00FFA57300FF9C
      7300C66B5A007B086B006B52AD00319CCE00399CCE00399CCE0042A5CE004AA5
      D6004AA5D60052ADD6005AADD60063ADD60063B5DE006BB5DE006BB5D60063AD
      CE005A9CB50042738C0029526300000000000000000000000000000000000000
      00000000000052849C005A94AD00B5B5C600FFC6BD00FFC6B500FFBDAD00FFBD
      A500FFB5A500FFB5A500FFB59C00FFB59C00FFAD9400FFAD9400FFAD8C00FFAD
      8C00FFAD8400FFA58400FFA57B00FFA57B00FFA57B00FF9C7300EF8C63005200
      390073318C003194CE003194CE003194CE00319CCE00399CCE0042A5D6004AA5
      D60052ADD6005AADD60063B5D60063B5DE006BB5D60063ADCE005A9CB5004273
      8C00295263000000000000000000000000000000000000000000000000005A7B
      94006394AD005AA5C6004AA5CE00399CCE00319CCE00319CCE00399CCE00C6B5
      BD00FFBDB500FFBDB500FFBDAD00FFB5A500FFB5A500FFB59C00FFB59C00FFAD
      9400FFAD9400FFAD8C00FFAD8C00FFAD8C00FFA58400FFA58400FFA57B00FFA5
      7B00FF9C7300EF946B004A0829005A296B00318CBD00319CCE00399CCE00429C
      CE004AA5D60052ADD60063ADD60063ADCE005A9CBD004A7B9400315263000000
      000000000000000000000000000000000000000000004A849C00849CB500FFC6
      B500FFBDB500FFBDAD00FFB5A500FFB5A500FFB59C00FFB59C00FFB59400FFAD
      9400FFAD9400FFAD8C00FFAD8C00FFA58400FFA58400FFA57B00FFA57B00FF9C
      7300FFA57300B56352006B00520084218C00398CC6003194CE003194CE003194
      CE003194CE00319CCE00319CCE00319CCE00399CCE00429CCE0042A5D6004AA5
      D60052ADD6005AA5CE00529CBD00427394003152630000000000000000000000
      00000000000000000000000000005A8CA5006394B500B5BDC600FFC6BD00FFC6
      BD00FFBDB500FFBDAD00FFBDA500FFB5A500FFB59C00FFB59C00FFB59400FFAD
      9400FFAD9400FFAD8C00FFAD8C00FFA58400FFA58400FFA57B00FFA57B00FFA5
      7300BD6B5A0073005A007B429C00399CCE00399CCE00429CCE0042A5CE0042A5
      D6004AA5D60052A5D6005AADD60063ADD60063B5DE006BB5DE006BB5D6006BAD
      CE005A9CBD004A7B940031526300000000000000000000000000000000000000
      0000000000005A8CA5005A94B500B5B5C600FFC6BD00FFBDB500FFBDAD00FFBD
      AD00FFB5A500FFB5A500FFB59C00FFB59C00FFB59400FFAD9400FFAD8C00FFAD
      8C00FFAD8400FFA58400FFA58400FFA57B00FFA57300FFA57300EF8C6B004200
      310073217B00318CC6003194CE003194CE00319CCE00399CCE00399CCE0042A5
      CE004AA5D6004AA5D60052ADD6005AADD60063ADD60063ADCE005A9CBD004A7B
      9400315263000000000000000000000000000000000000000000000000005A84
      94006394AD005A9CC6004A9CCE00399CCE00319CCE00319CCE00399CCE00BDB5
      BD00FFBDB500FFBDB500FFBDAD00FFBDAD00FFB5A500FFB5A500FFB59C00FFB5
      9C00FFAD9400FFAD9400FFAD8C00FFAD8C00FFA58400FFA58400FFA57B00FFA5
      7B00FFA57300EF946B00390821005A105A003973AD00319CCE00399CCE00399C
      CE0042A5D60052ADD6005AADD60063ADCE005A9CBD004A7B940031526B000000
      000000000000000000000000000000000000000000004A84A500849CB500FFC6
      BD00FFBDB500FFBDAD00FFB5AD00FFB5A500FFB59C00FFB59C00FFB59C00FFAD
      9400FFAD9400FFAD8C00FFAD8C00FFA58400FFA58400FFA57B00FFA57B00FF9C
      7B00FFA57B00AD6352005A00420094087B004284C600319CCE00319CCE00319C
      CE003194CE003194CE00319CCE00319CCE00399CCE00429CCE0042A5D6004AA5
      D60052ADD6005AA5CE005294B500427B940031526B0000000000000000000000
      00000000000000000000000000005A8CA500639CB500B5B5C600FFC6BD00FFC6
      BD00FFBDB500FFBDAD00FFBDAD00FFB5A500FFB59C00FFB59C00FFB59400FFAD
      9400FFAD9400FFAD8C00FFAD8C00FFAD8400FFA58400FFA57B00FFA57B00FFA5
      7300BD6B5A006B005200843194004294CE0042A5D60042A5D60042A5CE0042A5
      D6004AA5D60052A5D6005AADD60063ADD60063B5DE006BB5DE006BB5D6006BAD
      CE005A9CBD004A7B940031526B00000000000000000000000000000000000000
      0000000000005A8CA5005294B500ADB5C600FFC6BD00FFBDB500FFBDAD00FFBD
      AD00FFBDA500FFB5A500FFB5A500FFB59C00FFB59400FFAD9400FFAD9400FFAD
      8C00FFAD8C00FFA58400FFA58400FFA57B00FFA57B00FFA57300E78C6B003100
      29007B1073005273BD00319CCE00319CCE00319CCE00319CCE00399CCE00399C
      CE00399CCE00429CCE0042A5D6004AA5D60052ADD6005AADCE005A9CBD004A7B
      940031526B000000000000000000000000000000000000000000000000005A84
      94006394AD00529CC600429CCE00399CCE00319CCE00319CCE005A9CBD00D6B5
      BD00FFC6B500FFBDB500FFBDB500FFBDAD00FFB5A500FFB5A500FFB59C00FFB5
      9C00FFAD9400FFAD9400FFAD8C00FFAD8C00FFA58400F7A58400FFA58400FFA5
      7B00FF9C7B00EF946B003110210052104A004A5AA500319CCE00319CCE00399C
      CE0042A5CE004AA5D6005AADD60063ADCE005A9CBD004A7B940031526B000000
      000000000000000000000000000000000000000000004A84A500849CB500FFC6
      BD00FFBDB500FFBDAD00FFBDAD00FFBDA500FFB5A500FFB59C00FFB59C00FFB5
      9400FFAD9400FFAD9400FFAD8C00FFAD8C00FFA58400FFA58400FFA57B00FFA5
      7B00FFA57B00A5634A004A0031008C007300526BB500319CCE00319CCE00319C
      CE00319CCE00319CCE003194CE00319CCE00399CCE00399CCE0042A5D6004AA5
      D60052A5D60052A5CE005294B5004273940029526B0000000000000000000000
      0000000000000000000000000000638CA5005A9CB500ADB5C600FFC6BD00FFC6
      BD00FFBDB500FFBDAD00FFBDAD00FFB5A500FFB5A500FFB59C00FFB59C00FFB5
      9400FFAD9400FFAD8C00FFAD8C00FFAD8400FFA58400FFA57B00FFA57B00FFA5
      7B00B56B520052004200942184005A7BC60042A5D60042A5D60042A5D6004AA5
      D6004AA5D60052ADD6005AADD60063B5D6006BB5DE006BB5DE006BB5D6006BAD
      CE005A9CBD004A7B940031526B00000000000000000000000000000000000000
      0000000000005A8CA5005294B500A5ADBD00FFC6BD00FFBDB500FFBDB500FFBD
      AD00FFBDAD00FFB5A500FFB5A500FFB59C00FFB59C00FFAD9400FFAD9400FFAD
      8C00FFAD8C00FFAD8400FFA58400FFA57B00FFA57B00FFA57300E7946B002900
      18007B0063006B52AD00319CCE00319CCE00319CCE00319CCE00319CCE00319C
      CE00319CCE00319CCE00399CCE0042A5CE004AA5CE0052A5CE00529CBD004A7B
      940031526B000000000000000000000000000000000000000000000000005A84
      94005A94AD00529CBD00429CC600319CCE003194CE005294B5008494A500DEB5
      B500FFC6BD00FFC6B500FFBDB500FFBDAD00FFBDA500FFB5A500FFB59C00FFB5
      9C00FFAD9400FFAD9400FFAD8C00FFAD8C00FFA58C00FFA58400FFA58400FFA5
      7B00FFA57B00EF946B00292121004A3152006373A5003994C600318CBD003194
      C600399CCE004AA5D60052ADD6005AADCE005A9CBD004A7B940031526B000000
      000000000000000000000000000000000000000000004A84A500849CB500FFC6
      BD00FFBDB500FFBDB500FFBDAD00FFBDAD00FFB5A500F7B5A500FFB59C00FFB5
      9C00FFAD9400FFAD9400FFAD8C00F7AD8C00F7A58400FFA58400FFA58400FFA5
      7B00FFA57B00A5634A0039002900840063007342A500319CCE00319CCE00319C
      CE00319CCE00319CCE003194CE00319CCE00319CCE00399CCE0042A5CE004AA5
      D60052A5D60052A5CE004A94B5004273940029526B0000000000000000000000
      0000000000000000000000000000638CA5005A9CB500B5B5C600FFC6BD00FFC6
      BD00FFBDB500FFBDAD00FFBDAD00FFBDA500FFB5A500FFB59C00FFB59C00FFB5
      9400FFAD9400FFAD8C00FFAD8C00FFAD8400FFA58400FFA58400FFA57B00FFA5
      7B00B56B520042003100940873006B6BBD0042A5CE0042A5D6004AA5D60052AD
      D60052ADD6005AADD60063ADD60063B5DE006BB5DE006BB5DE006BB5DE006BAD
      CE005A9CBD004A7B940031526B00000000000000000000000000000000000000
      000000000000528CA5004A8CB500ADADBD00FFC6BD00FFC6B500FFBDB500FFBD
      AD00FFBDAD00FFBDA500FFB5A500FFB59C00FFB59C00FFB59400FFAD9400FFAD
      9400FFAD8C00FFAD8400FFA58400FFA58400FFA57B00FFA57B00E7946B001800
      100073005A007B42A500399CCE00399CCE00399CCE00399CCE00399CCE00399C
      CE00399CCE00399CCE00399CCE00429CCE0042A5CE004AA5CE005294B5004A7B
      940031526B000000000000000000000000000000000000000000000000005A84
      94005A94AD004A94BD00399CC6003194C600528CAD007B848C008C949C00DEB5
      B500FFC6BD00FFC6B500FFBDB500FFBDAD00FFBDAD00FFB5A500FFB5A500FFB5
      9C00FFAD9C00FFAD9400FFAD9400FFAD8C00FFAD8C00FFA58400FFA58400FFA5
      7B00FFA57B00F79C730021181800394A5A008CA5BD009CBDDE0063A5C600318C
      B5003994C600429CCE0052A5D6005AA5CE00529CBD004A7B940031526B000000
      000000000000000000000000000000000000000000004A84A500849CB500FFC6
      BD00FFC6BD00FFBDB500FFBDAD00FFBDAD00FFB5A500FFB5A500FFB59C00FFB5
      9C00FFAD9400FFAD9400F7AD8C00F7A58C00FFA58400FFA58400FFA58400FFA5
      7B00FFAD7B00A5634A002908210063296B00846BBD006BB5EF0073BDEF007BBD
      EF0073B5E7005AADD6003994C6003194C6003194C600399CCE00399CCE0042A5
      D6004AA5CE004AA5CE004A94B50039738C0029526B0000000000000000000000
      0000000000000000000000000000638CA500639CB500B5B5C600FFCEC600FFC6
      BD00FFC6B500FFBDAD00FFBDAD00FFBDA500FFB5A500FFB59C00FFB59C00FFB5
      9C00FFAD9400FFAD9400FFAD8C00FFAD8C00FFA58400FFA58400FFA57B00FFA5
      7B00B56B520029002100840063007352AD00399CCE0042A5D6004AA5D60052AD
      D6005AADD60063B5D6006BB5DE006BB5DE006BB5DE006BB5DE006BB5DE006BAD
      CE005A9CBD004A7B940031526B00000000000000000000000000000000000000
      000000000000528CA500428CB500A5ADBD00FFC6BD00FFC6B500FFBDB500FFBD
      AD00FFBDAD00FFBDA500FFB5A500FFB59C00FFB59C00FFB59C00FFAD9400FFAD
      9400FFAD8C00FFAD8400FFAD8400FFA58400FFA57B00FFA57B00EF946B002929
      2900736B7300B5B5BD00CED6D600CED6D600CED6DE00CED6D600CECED600CED6
      D600CED6D600CED6D600CED6D600CED6D600DEE7E700ADCEDE00428CAD004273
      8C0031526B00000000000000000000000000000000000000000000000000738C
      9C0073A5B50073ADCE0073B5D60073A5BD007B848C007B8484008C8C9400DEB5
      B500FFC6BD00FFC6B500FFBDB500FFBDAD00FFBDAD00FFB5A500FFB5A500FFB5
      9C00FFAD9C00FFAD9400FFAD9400FFAD8C00FFAD8C00FFA58400FFA58400FFA5
      8400FFA57B00E7946B0018101000293942007B94AD00BDD6EF00CEE7F70094B5
      CE006B9CB5006BADCE007BBDDE0084BDD6007BADC600638C9C004A6373000000
      000000000000000000000000000000000000000000006B94AD009CADBD00FFC6
      BD00FFC6BD00FFBDB500FFBDB500FFBDAD00FFB5A500FFB5A500FFB59C00FFB5
      9C00FFAD9400FFAD9400FFAD9400FFAD8C00FFA58C00FFA58400FFA58400FFA5
      7B00FFAD8400A5634A001818210042526B007B9CC60094C6FF009CCEFF00A5CE
      FF00B5D6FF00B5D6FF00ADD6F70094BDDE006BA5C6006BADCE0073B5D60073BD
      DE007BBDDE007BB5D60073A5BD005A84940042636B0000000000000000000000
      00000000000000000000000000007B9CAD0084ADBD00C6C6CE00FFCEC600FFC6
      BD00FFC6B500FFBDB500FFBDAD00FFBDAD00FFB5A500FFB5A500FFB59C00FFB5
      9C00FFB59400FFAD9400FFAD8C00FFAD8C00FFAD8400FFA58400FFA57B00FFA5
      7B00AD6B5200210018007300520094399C007BADD6007BBDDE0084C6E7008CC6
      E7008CC6E70094CEE70094CEE70094CEE70094CEE70094CEE70094CEE70094C6
      DE0084ADC600638C9C004A637300000000000000000000000000000000000000
      000000000000739CAD006BA5BD00BDBDC600FFC6BD00FFC6B500FFBDB500FFBD
      AD00FFBDAD00FFBDAD00FFB5A500FFB5A500FFB59C00FFB59C00FFAD9400FFAD
      9400FFAD8C00FFAD8C00FFAD8400FFA58400FFA57B00FFA57B00EF9C73002929
      29004A4A4A007373730084848400848484009C9CA500A5A5A500848484008C8C
      8C008C8C8C0084848C00848484008C8C8C00DEDEDE00BDCED6005A849C005A7B
      8C004A637300000000000000000000000000000000000000000000000000949C
      A500A5B5C600B5CEDE00B5CEDE008C9CA50084848C007B8484008C8C8C00DEB5
      B500FFC6BD00FFC6BD00FFC6B500FFBDB500FFBDAD00FFBDAD00FFB5A500FFB5
      A500FFB59C00FFB59400FFAD9400FFAD9400FFAD9400FFAD8C00FFA58400FFA5
      8400EF9C7B00845A4A001821290039424A007B8C9C00BDCEE700DEEFFF00DEE7
      F700B5C6D6009CB5C600B5CEDE00BDD6E700ADC6CE008C9CA500637373000000
      000000000000000000000000000000000000000000009CADBD00C6C6C600FFC6
      BD00FFC6BD00FFC6B500FFBDB500FFBDAD00FFBDAD00FFB5A500FFB5A500FFB5
      9C00FFB59C00FFAD9400FFAD9400FFAD8C00FFAD8C00FFAD8400FFAD8400FFAD
      8400F7A57B008463520029394A0052637B007B9CCE0094C6FF00A5CEFF00ADD6
      FF00B5D6FF00BDDEFF00C6DEFF00CEE7FF00C6D6EF00A5BDCE00A5BDCE00B5D6
      E700BDDEEF00BDD6E700ADC6CE00849CA5006373730000000000000000000000
      0000000000000000000000000000A5ADB500ADC6CE00DECED600FFCEC600FFC6
      BD00FFC6B500FFC6B500FFBDAD00FFBDAD00FFBDAD00FFBDA500FFB5A500FFB5
      9C00FFB59C00FFB59400FFAD9400FFAD8C00FFAD8C00FFAD8400FFA57B00F79C
      7B0084394A00420031007B005A00AD299400C6BDE700C6E7F700C6E7F700CEE7
      F700CEE7F700CEE7F700CEE7F700D6E7F700D6E7F700D6E7F700CEE7F700CEDE
      EF00B5C6D6008C9CA50063737300000000000000000000000000000000000000
      0000000000009CADBD00A5BDCE00DECECE00FFC6BD00FFC6BD00FFC6B500FFBD
      B500FFBDAD00FFBDAD00FFB5A500FFB5A500FFB59C00FFB59C00FFB59400FFAD
      9400FFAD9400FFAD8C00FFAD8C00FFAD8400FFA58400FFA57B00CE8463005252
      52005A5A5A00848484009C9C9C009C9C9C00B5B5B500B5B5B5009C9C9C009C9C
      9C009CA5A5009C9C9C009C9C9C00A5A5A500E7E7E700CECED6007B949C007B8C
      940063737300000000000000000000000000000000000000000000000000ADAD
      AD00CECECE00E7E7E700BDC6CE00848C9C00848C940084848C008C848C00DEB5
      AD00FFCEC600FFC6BD00FFC6B500FFBDB500FFBDAD00FFBDAD00FFB5A500FFBD
      A500FFBDA500FFB59C00FFB59400F7AD8C00EFA58400D6947B00B57B6B007B5A
      52005A525200394A5200526373006B7B8C0094A5BD00CEDEEF00DEEFFF00DEEF
      FF00CEE7F700BDC6CE00CECECE00E7E7E700DEDEDE00ADADAD007B7B7B000000
      00000000000000000000000000000000000000000000C6C6C600E7CECE00FFC6
      C600FFC6BD00FFC6BD00FFBDB500FFBDAD00FFBDAD00FFB5A500FFB5A500FFB5
      9C00FFB59C00FFB59400FFB59400FFBD9400FFAD8C00EF9C8400CE8C7B00BD8C
      73009C7B7300636B7B00637B94007394B50084ADDE0094C6FF00A5CEFF00ADD6
      FF00B5DEFF00BDDEFF00C6E7FF00D6E7FF00DEEFFF00D6DEEF00C6CECE00D6D6
      D600EFEFEF00EFEFEF00DEDEDE00ADADAD007B7B7B0000000000000000000000
      0000000000000000000000000000BDBDBD00D6D6D600F7DED600FFCEC600FFC6
      C600FFC6BD00FFC6B500FFBDB500FFBDAD00FFBDAD00FFBDA500FFBDA500FFB5
      9C00FFB59C00FFB59400FFB59400FFB58C00F7A58400EFAD8C00EFB59C00AD7B
      6B005A08420084005A009C107B00D67BBD00FFEFF700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700DEDEDE00ADADAD007B7B7B00000000000000000000000000000000000000
      000000000000C6C6C600D6D6D600F7D6D600FFC6BD00FFC6BD00FFC6BD00FFBD
      B500FFBDAD00FFBDAD00FFBDA500FFB5A500FFB59C00FFB59C00FFB59400FFB5
      9400FFAD9400FFB58C00FFAD8C00FFA58400FFA58400F7AD9400AD948C009494
      940073737300847B8400848484007B7B7B009C9C9C009C9C9C007B7B7B008484
      84008484840084848400848484008C8C8C00DEDEDE00DEDEDE00A5A5A5009C9C
      9C007B7B7B00000000000000000000000000000000000000000000000000ADAD
      AD00CEC6C600D6D6D60094A5B5008494AD008494A500848C9C008C8C9400DEB5
      B500FFCEC600FFC6BD00FFC6B500FFC6B500FFBDB500FFBDAD00FFBDAD00F7AD
      9C00DEA58C00CE948400AD7B7300846B6300635A5A0052526300525A73004252
      630042526B006B849C0094ADC600ADBDDE00C6D6EF00DEE7F700DEEFFF00D6E7
      FF00CEE7FF00BDCEE700B5B5BD00D6CECE00D6CECE00ADA5A5007B7B7B000000
      00000000000000000000000000000000000000000000C6BDBD00E7CECE00FFC6
      C600FFC6BD00FFC6BD00FFBDB500FFBDAD00FFBDAD00FFBDAD00FFBDAD00FFBD
      A500FFBD9C00EFA58C00D67B8400C6527B00AD5A73008C6B6B00736B73006B73
      7B00737B94007B94AD0084A5BD008CADD60094BDEF009CC6FF00A5CEFF00ADD6
      FF00BDDEFF00C6DEFF00CEE7FF00DEEFFF00DEEFFF00DEEFFF00CEDEEF00BDBD
      BD00CECECE00E7DEDE00D6D6D600ADA5A5007B7B7B0000000000000000000000
      0000000000000000000000000000BDBDBD00D6CECE00F7DED600FFCECE00FFCE
      C600FFC6BD00FFC6B500FFBDB500FFBDAD00FFC6AD00FFBDAD00FFBDA500FFB5
      9C00F7AD9400E78C8C00CE637B00CE528400BD4A7B009C637B00B5B5B5009494
      94005A3952009C528C00CE9CBD00EFD6DE00FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFFFFF00FFF7F700F7EF
      EF00DED6D600ADA5A5007B7B7B00000000000000000000000000000000000000
      000000000000C6BDBD00D6CECE00F7D6D600FFC6C600FFC6BD00FFC6BD00FFC6
      B500FFBDB500FFBDAD00FFBDAD00FFBDA500FFB5A500FFB5A500FFBD9C00FFBD
      9C00F7AD8C00D67B7B00CE7B8400EFC6B500A58C7B00736B6B008C8C8C00B5B5
      B500848484008C948C00949494008C8C8C00ADADAD00ADADAD008C8C8C009494
      940094949400949494008C8C8C0094949400E7E7E700D6D6D600A59C9C009C9C
      9C007B7B7B00000000000000000000000000000000000000000000000000B5AD
      AD00CEC6C600BDC6CE008CA5BD008C9CBD008C9CB5008494AD008C94A500DEB5
      B500FFCEC600FFC6BD00FFC6BD00FFC6B500FFBDB500E7A59C00946B63006B52
      4A00524A4A004A525A004A5A6B00526B8400637B9400738CAD0084A5C6006B8C
      AD00637B9C008CADCE00B5D6F700CEE7FF00DEEFFF00DEEFFF00CEE7FF00C6E7
      FF00C6DEFF00BDDEFF00ADB5C600BDB5B500C6BDBD00ADA5A5007B7373000000
      00000000000000000000000000000000000000000000C6BDBD00E7CEC600FFCE
      C600FFC6C600FFC6BD00FFC6B500FFBDB500FFBDAD00EFAD9C00B5737B009C42
      6B00A5297300AD187B00AD087B00A51884007B5A7B0073737B007B7B84007B84
      8C00848C9C00849CAD008CA5BD008CADD60094BDEF009CC6FF00A5CEFF00B5D6
      FF00BDDEFF00CEE7FF00D6E7FF00DEEFFF00DEE7FF00D6E7FF00CEE7FF00B5C6
      DE00B5ADB500D6C6C600CEC6C600ADA5A5007B73730000000000000000000000
      0000000000000000000000000000BDB5B500D6CECE00F7D6D600FFD6CE00FFCE
      C600FFC6BD00FFC6B500FFC6B500FFBDAD00EFADA500D68C8C00B55A7B00B542
      7B00C6428C00BD398C00B5218C00BD4AA500D684BD00BD94B5009C949C00BDBD
      BD008C948C007B7B7300CEC6BD00E7D6D600EFDEDE00FFEFEF00FFEFEF00FFEF
      EF00FFF7F700FFEFEF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700F7EF
      EF00DED6D600ADA5A5007B737300000000000000000000000000000000000000
      000000000000BDBDBD00D6CECE00F7D6CE00FFC6C600FFC6BD00FFC6BD00FFC6
      B500FFBDB500FFBDAD00FFBDAD00FFBDAD00F7AD9C00D68C8400AD527300AD39
      7300B5297300B5398C00CE8CBD00EFF7EF00DEDEDE00CECECE00D6D6D600DEDE
      DE00CECECE00CECECE00CECECE00CECECE00D6D6D600D6D6D600CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00EFEFEF00D6D6D600A59494009C94
      94007B737300000000000000000000000000000000000000000000000000B5A5
      A500CEBDBD00A5B5CE008CADCE008CADC6008CA5C6008CA5BD00849CB500BDAD
      BD00F7C6BD00FFC6BD00FFC6BD00FFC6B500FFC6B500AD848400101818001821
      29004A5A6B006B84A500849CBD008CADD60094B5E70094BDEF009CCEFF007BA5
      CE006B8CAD009CB5D600C6DEFF00DEEFFF00DEEFFF00D6E7FF00C6DEFF00BDDE
      FF00BDDEFF00BDDEFF00ADBDD600B5A5AD00BDB5B500A59C9C007B7373000000
      00000000000000000000000000000000000000000000C6B5B500DEC6C600FFCE
      C600FFC6C600FFC6BD00FFC6BD00FFC6B500F7A5AD00A5317B008C106B009410
      6B00B5398C00DE84BD00EFBDD600ADA5B500848C940084848C00848484008484
      8400848C94008494A500849CB5008CADCE0094BDE7009CC6FF00A5CEFF00B5D6
      FF00C6DEFF00D6E7FF00DEEFFF00DEEFFF00CEE7FF00C6E7FF00C6E7FF00BDD6
      F700ADADB500BDADAD00C6B5B500AD9C9C007B73730000000000000000000000
      0000000000000000000000000000BDB5B500D6C6C600EFD6D600FFD6D600FFCE
      CE00FFCEC600FFC6BD00FFC6B500F7ADAD00C6528C00A5427B009C317B00B54A
      9400D684BD00EFADCE00F7BDD600FFCEE700FFEFEF00FFEFEF00CEBDBD009C9C
      9C00BDBDBD008484840084737300D6C6C600E7D6D600EFDEDE00FFE7E700FFEF
      EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00F7E7
      E700DECECE00ADA5A5007B737300000000000000000000000000000000000000
      000000000000BDB5B500D6C6C600F7D6CE00FFC6C600FFC6BD00FFC6BD00FFC6
      B500FFBDB500FFBDAD00AD737300422131005221390094316B00C66BA500E7AD
      C600F7CEDE00FFDEE700FFE7EF00F7F7F700CECECE00BDBDBD00C6C6C600DEDE
      DE00BDBDBD00C6C6C600C6C6C600BDBDBD00CECECE00CECECE00BDBDBD00C6C6
      C600C6C6C600C6C6C600BDBDBD00C6C6C600EFEFEF00DED6D600A59494009C94
      94007B737300000000000000000000000000000000000000000000000000B5A5
      A500C6B5BD009CB5D6008CB5D60094B5D6008CADD6008CADCE008CADCE008CA5
      C600BDB5C600FFC6BD00FFC6BD00FFC6BD00FFBDB500D6B5AD008C8C94007384
      9C007394B50084ADD6009CC6F7009CC6FF009CC6FF009CCEFF009CCEFF007BA5
      CE00738CAD00A5BDD600CEDEF700DEEFFF00CEE7FF00C6DEFF00BDDEFF00B5D6
      FF00B5D6FF00B5D6FF00ADC6E700AD9CA500BDA5A500A59494007B7373000000
      00000000000000000000000000000000000000000000C6ADAD00D6BDBD00EFCE
      CE00FFCEC600FFC6BD00FFC6BD00FFC6B500FFADB500EF84BD00F7B5CE00FFD6
      DE00FFDEDE00FFDEDE00D6C6CE008494A5007B8494007B848C007B848C007B84
      840084848400848C94008494AD008CA5C60094B5DE009CC6FF00ADD6FF00BDDE
      FF00CEE7FF00DEEFFF00DEE7FF00CEE7FF00C6DEFF00BDDEFF00BDDEFF00B5DE
      FF00ADB5C600AD949C00BDA5A500A59494007B73730000000000000000000000
      0000000000000000000000000000BDADAD00D6C6C600EFD6D600FFDEDE00FFD6
      CE00FFCEC600FFC6BD00FFC6BD00FFB5B500E794BD00E7B5CE00F7C6D600F7CE
      D600FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00C6AD
      AD009C9C9C00B5B5B5007B7B7B008C7B7B00DEBDBD00E7C6C600F7D6D600FFDE
      DE00FFDEDE00FFDEDE00FFDEDE00FFE7E700FFE7E700FFE7E700FFE7E700F7DE
      DE00DEC6C600AD9C9C007B737300000000000000000000000000000000000000
      000000000000BDADAD00D6BDBD00EFCECE00FFCECE00FFC6C600FFC6BD00FFC6
      BD00FFC6B500FFB5AD00BD738C007B636B008C7B7B00DEBDBD00FFDEDE00FFDE
      DE00FFDEDE00FFDEDE00FFE7E700F7F7F700DEDEDE00CECECE00D6D6D600E7E7
      E700D6D6D600D6D6D600D6D6D600D6D6D600DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600F7F7F700DED6D600A58C8C009C8C
      8C007B737300000000000000000000000000000000000000000000000000B59C
      9C00C6B5BD0094BDE70094BDE70094BDE70094BDE70094BDE70094B5E7008CB5
      E700A5B5DE00EFC6CE00FFCECE00D6ADAD00BD9C9C00E7DED600DEDEE700ADC6
      EF008CBDEF0094BDEF0094C6F70094C6F70094BDF70094C6F70094C6F7008CA5
      C6008C94A500ADB5C600CEDEF700CEE7FF00BDDEFF00B5DEFF00B5D6FF00ADD6
      FF00ADCEFF00ADD6FF00A5C6EF00A59CA500B59C9C00A59494007B6B6B000000
      00000000000000000000000000000000000000000000C6ADAD00D6BDBD00EFC6
      C600FFCECE00FFC6C600FFCEC600FFCEC600FFCEC600FFDED600FFD6D600FFDE
      DE00FFDEDE00F7D6D600ADADBD00738C9C006B7B8C006B7B840073848C007B84
      94007B8484007B848400848C9C00849CB5008CB5D6009CC6F700B5D6FF00C6DE
      FF00D6E7FF00D6E7FF00CEE7FF00C6DEFF00BDDEFF00B5D6FF00B5D6FF00B5D6
      FF00A5BDD600A5949400B59C9C00A58C8C007B6B6B0000000000000000000000
      0000000000000000000000000000BDADAD00D6BDBD00E7CECE00F7DEDE00FFD6
      D600FFCEC600FFCEC600FFCEC600FFCECE00FFD6D600FFDEDE00FFDEDE00FFDE
      DE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDE
      DE00C6ADAD00A59C9C00ADADAD007B737300BDA5A500EFC6C600E7C6C600FFD6
      D600FFDEDE00FFD6D600FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDEDE00F7D6
      D600DEBDBD00AD9494007B6B6B00000000000000000000000000000000000000
      000000000000BDADAD00D6BDBD00E7CECE00F7D6D600FFCEC600FFC6BD00FFC6
      BD00FFC6B500FFC6BD00FFD6D600FFDEDE00FFDEDE00FFDEDE00FFDEDE00FFDE
      DE00FFDEDE00FFDEDE00FFE7E700FFFFFF00C6C6C600ADADAD00B5B5B500D6CE
      CE00ADADAD00ADADAD00ADADAD00ADADAD00BDBDBD00C6C6C600ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00B5B5B500EFEFEF00DED6D600A58C8C009C8C
      8C007B6B6B00000000000000000000000000000000000000000000000000B59C
      9C00C6B5BD0094C6F70094C6F70094C6F7009CC6F7009CC6FF009CC6FF009CC6
      FF009CC6F700C6CEE700EFE7E700BDBDBD00ADB5B500E7E7E700DEDEE7009CB5
      D6008CB5DE0094B5DE0094B5DE0094B5DE0094B5DE0094B5E70094BDE70094A5
      BD00A5A5A500C6C6C600C6D6EF00BDDEFF00ADD6FF00ADD6FF00A5CEFF00A5CE
      FF00A5CEFF009CCEFF009CC6EF009C94A500B59C9C00A58C8C007B6B6B000000
      00000000000000000000000000000000000000000000C6A5A500D6B5B500E7C6
      C600F7CECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00DEADAD0094636300634A5200637384005A6B7B005A6B7B00738494007B8C
      A500848C9C007B848C007B848C00949CA500BDC6D600CED6E700CED6E700D6DE
      EF00D6E7FF00C6DEFF00BDDEFF00B5D6FF00ADD6FF00ADCEFF00ADCEFF00ADD6
      FF00A5BDDE009C8C9400AD949400A58484007B6B6B0000000000000000000000
      0000000000000000000000000000BDADAD00D6BDBD00E7CECE00F7D6D600FFD6
      D600FFD6CE00FFD6CE00FFD6D600FFD6D600FFD6D600FFD6D600FFD6D600FFD6
      D600FFD6D600FFD6D600FFD6D600FFD6D600FFD6D600FFD6D600FFD6D600FFD6
      D600FFCECE00BDA5A500A5A5A500BDBDBD00C6B5B500EFC6C600EFC6C600EFC6
      C600F7CECE00F7CECE00FFCECE00FFCECE00FFD6D600FFD6D600FFD6D600F7CE
      CE00DEB5B500AD9494007B6B6B00000000000000000000000000000000000000
      000000000000BDA5A500D6B5B500E7C6C600F7CECE00FFCECE00FFCECE00FFCE
      C600FFCEC600FFCEC600FFCECE00FFD6D600FFD6D600FFD6D600FFD6D600FFD6
      D600FFD6D600FFD6D600FFE7E700FFFFFF00B5B5B50094949400A5A5A500C6C6
      C600949494009C9C9C009C9C9C0094949400B5B5B500B5B5B500949494009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C00EFEFEF00E7D6D600A58C8C009C84
      84007B6B6B00000000000000000000000000000000000000000000000000B594
      9400C6ADBD009CCEFF009CCEFF009CCEFF00A5CEFF00A5CEFF00ADD6FF00B5D6
      FF00B5D6FF00BDD6E700D6DEDE00E7E7E700E7E7E700E7E7E700B5BDBD008494
      A5008C9CB5008CA5BD008CA5C6008CADCE008CADCE0094ADD6008CADD6007B8C
      A500A5A5A500CECECE00CED6EF00A5CEFF009CCEFF009CCEFF009CC6FF009CC6
      FF009CC6FF009CCEFF009CBDE7009C949C00B5949400A58C8C007B6B6B000000
      00000000000000000000000000000000000000000000C6A5A500D6ADAD00E7BD
      BD00F7C6C600FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFC6
      C600CE8C8C00843131006331390063637B005A6B84005A6B840073849C00849C
      B5008C9CB5008494A5008C949C00CEC6C600E7E7E700EFE7E700E7E7DE00DEDE
      DE00C6DEF700B5D6FF00ADD6FF00A5CEFF00A5CEFF00A5CEFF009CCEFF009CCE
      FF009CB5DE009C8C9400AD8C8C00A58484007B63630000000000000000000000
      0000000000000000000000000000BDA5A500D6B5B500E7C6C600F7CECE00FFD6
      D600FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFC6C600D6B5B500DED6D600D6D6D600D6BDBD00DEBDBD00CEBD
      BD00CEC6C600CEC6C600CEBDBD00D6B5B500DEB5B500EFBDBD00EFC6C600EFC6
      C600DEB5B500AD8C8C007B6B6B00000000000000000000000000000000000000
      000000000000BDA5A500D6B5B500E7C6C600F7CECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFDEDE00FFFFFF00ADADAD007B7B7B0094949400BDBD
      BD007B7B7B00848484008484840084848400A5A5A500A5A5A5007B7B7B008484
      84008484840084848400848484008C8C8C00EFEFEF00E7DEDE00A58C8C009C84
      84007B6B6B00000000000000000000000000000000000000000000000000AD94
      9400C6ADB500ADCEFF00ADCEFF00ADD6FF00B5D6FF00BDD6FF00BDDEFF00C6DE
      FF00DEEFFF00E7EFF700D6D6DE00D6DEE700CEDEEF00ADBDCE00848C9C007B84
      8400848C9C008494A500849CB500849CB5008CA5BD008CA5C600849CBD00637B
      8C009CA5AD00D6D6D600C6D6E7008CBDEF0094BDEF0094BDEF0094BDEF0094BD
      EF0094BDEF0094BDEF0094B5DE00A58C9C00BD949400A58484007B6363000000
      00000000000000000000000000000000000000000000BDA5A500D6ADAD00E7B5
      B500F7BDBD00FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600F7BD
      BD00D67B7B009C3131008C31390073637B005A738C005A738C007394B50084A5
      CE008CADD60084A5C600B5BDC600E7DEDE00D6CECE00CEBDBD00EFE7E700E7E7
      E700B5D6F7009CC6FF009CC6FF009CC6FF009CC6FF0094C6FF0094C6FF009CC6
      FF0094B5DE009C849400B58C8C00A58484007B63630000000000000000000000
      0000000000000000000000000000BDA5A500D6B5B500E7C6C600F7CECE00FFCE
      CE00FFCECE00FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6
      C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6
      C600FFC6C600FFC6C600FFC6C600EFC6C600D6CECE00C6C6C600CECECE00D6D6
      D600D6D6D600D6D6D600D6D6D600CECECE00C6BDBD00C6A5A500CEA5A500DEAD
      AD00D6A5A500AD8484007B636300000000000000000000000000000000000000
      000000000000BDA5A500D6B5B500E7C6C600F7CECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFC6C600FFC6C600FFDEDE00FFFFFF00C6C6C600ADADAD00BDBDBD00D6D6
      D600ADADAD00ADADAD00ADADAD00ADADAD00C6C6C600C6C6C600ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00B5B5B500F7F7F700E7DEDE00AD8C8C00A584
      84007B636300000000000000000000000000000000000000000000000000AD94
      9400C6A5AD00B5D6F700B5D6FF00BDDEFF00C6DEFF00C6E7FF00D6E7FF00DEEF
      FF00F7F7F700F7F7FF00DEE7F700B5D6F7009CC6F7008CA5CE008494A5008484
      8C007B848400848C9400848C9C008494A500849CAD008C9CB5008C9CAD00949C
      A500C6C6C600DEDEDE00A5B5CE008CA5C6008CADCE008CADD6008CADD6008CAD
      D60094B5DE0094B5DE0094ADC600AD8C8C00BD949400A58484007B6363000000
      00000000000000000000000000000000000000000000BD9C9C00D6ADAD00E7B5
      B500F7BDBD00FFC6C600FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFAD
      AD00DE7B7B00BD293100A53142007B6B8C005A7394005A739400738CB5007BA5
      CE0084ADD60084A5CE00B5BDCE00D6D6D600C6ADAD00C6A5A500E7E7E700E7E7
      E700ADC6E7008CB5E70094BDE70094BDE70094BDE70094BDE70094BDE70094BD
      EF0094ADCE00A5848C00B58C8C00A57B7B007B63630000000000000000000000
      0000000000000000000000000000BD9C9C00D6ADAD00E7BDBD00F7C6C600FFCE
      CE00FFC6C600FFC6C600FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBD
      BD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBD
      BD00FFBDBD00FFBDBD00FFBDBD00EFB5B500CEBDBD00D6D6D600DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00C6C6C600B59C9C00BD8C
      8C00C6949400A57B7B007B636300000000000000000000000000000000000000
      000000000000BD9C9C00D6ADAD00E7BDBD00F7C6C600FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFC6C600FFC6
      C600FFBDBD00FFBDBD00FFD6D600FFFFFF00CECECE00ADADAD00BDBDBD00DED6
      D600ADADAD00B5B5B500B5B5B500B5B5B500C6C6C600CEC6C600B5ADAD00B5B5
      B500B5B5B500B5B5B500B5B5B500BDBDBD00F7F7F700E7DEDE00AD8C8C00A584
      84007B636300000000000000000000000000000000000000000000000000AD8C
      8C00CEA5A500CECEE700C6DEFF00CEE7FF00CEE7FF00DEEFFF00E7EFFF00F7F7
      FF00FFF7FF00EFF7FF00CEE7FF00ADD6FF0094C6F7008CADD600849CB500848C
      9C0084848C007B8484007B848C00848C94008494A5008494A500949CA500BDBD
      B500D6D6D600B5BDC600848C9400848C9C00849CAD008C9CBD008CA5BD008CA5
      C6008CADCE008CADCE00949CB500B58C8C00C69C9C00AD8484007B6363000000
      00000000000000000000000000000000000000000000BD9C9C00D6ADAD00E7B5
      B500F7BDBD00FFBDBD00FFBDBD00FFBDBD00FFB5B500FFB5B500F7ADAD00EFA5
      A500D66B7300C6212900B5293900736B8C00526B8C005A638400636B8C006373
      8C00738CAD007B8CAD009C9CAD00C6C6C600DEDEDE00E7DEDE00EFE7E700CECE
      CE00949CB500849CBD008CA5C6008CADCE008CADCE008CADD6008CADD60094B5
      DE00949CBD00AD848400BD8C8C00A57B7B007B5A5A0000000000000000000000
      0000000000000000000000000000BD9C9C00D6ADAD00E7BDBD00F7C6C600FFC6
      C600FFC6C600FFBDBD00FFBDBD00FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFB5B500FFB5B500DEB5B500CECECE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00BDB5B500A584
      8400AD7B7B009C7373007B5A5A00000000000000000000000000000000000000
      000000000000BD9C9C00D6ADAD00E7BDBD00F7C6C600FFC6C600FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFC6C600FFC6C600FFBD
      BD00FFBDBD00FFB5B500FFCECE00FFFFFF00EFEFEF00E7E7E700EFE7E700F7F7
      F700E7E7E700E7E7E700E7E7E700E7E7E700EFEFEF00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700DED6D600B5949400AD84
      84007B636300000000000000000000000000000000000000000000000000AD8C
      8C00CE9C9C00DEBDC600CEE7FF00D6E7FF00DEEFFF00EFF7FF00F7F7FF00FFFF
      FF00F7F7F700DEEFFF00C6DEFF00ADD6FF0094C6F70094B5DE008CA5C6008494
      AD00848C9400848484007B7B840084848C00848C94008C949C009CA5B500A5BD
      D6009CB5D6008494AD007B848C007B848400848C94008494A5008494AD008C9C
      B5008CA5BD008CA5BD009C8C9C00C68C9400CE9C9C00AD8484007B5A5A000000
      00000000000000000000000000000000000000000000BD949400D6A5A500E7B5
      B500F7BDBD00FFBDBD00FFBDBD00FFB5B500F7ADAD00EF9C9C00DE8C8C00CE73
      7300CE4A4A00DE101000CE1818008C4252007B394200733139006B2931005229
      31006B7384007B8C94009C9CA500BDB5B500DEDEDE00DEE7E700CECECE009C9C
      9C007B848C00848C9C008494AD008C9CB5008CA5BD008CA5BD008CADC60094AD
      CE009C94A500BD848400C68C8C00AD7B7B007B5A5A0000000000000000000000
      0000000000000000000000000000BD949400D6A5A500E7B5B500F7BDBD00FFC6
      C600FFC6C600FFBDBD00FFBDBD00FFB5B500FFB5B500FFADAD00FFADAD00FFAD
      AD00FFADAD00FFADAD00FFADAD00FFADAD00FFADAD00FFADAD00FFADAD00FFAD
      AD00FFADAD00FFADAD00EFADAD00CEC6C600DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00E7DEDE00D6CECE00A58C
      8C009C6B6B00946B6B007B525200000000000000000000000000000000000000
      000000000000BD949400D6A5A500E7B5B500F7BDBD00FFC6C600FFC6C600FFC6
      C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFBDBD00FFB5
      B500FFB5B500FFADAD00FFCECE00FFFFFF00DEDEDE00CECECE00D6D6D600E7E7
      E700CECECE00CECECE00CECECE00CECECE00CECECE00B5B5B50094949400949C
      9C009CA5A5009CA5A5009C9C9C00B59C9C00DEB5B500D6BDBD00D6A5A500AD84
      84007B5A5A00000000000000000000000000000000000000000000000000AD8C
      8C00CE9C9C00E7B5B500E7DEEF00E7EFFF00EFF7FF00F7F7FF00FFFFFF00F7F7
      FF00E7EFFF00D6E7FF00BDDEFF00A5D6FF0094C6F7008CB5E7008CA5CE00849C
      B5008494A500848C94007B8484007B7B840084848C00A5ADB500ADC6DE009CC6
      F7008CB5DE00849CBD00848C9C007B8484008484840084849400848C9C008494
      A500849CAD008C94AD00B5848C00DE9C9C00D69C9C00AD7B7B007B5A5A000000
      00000000000000000000000000000000000000000000BD949400D6A5A500E7AD
      AD00F7B5B500FFBDBD00FFB5B500EFA5A500DE8C8C00D6737300CE525200C639
      3900D6212100EF000800EF000000D6080800CE000000BD000800940810006B21
      21008C848C00ADADB500C6C6C600C6CEDE00BDD6F700A5C6EF0094ADC600848C
      9C007B84840084848400848C940084949C008494AD008C9CAD008CA5BD00949C
      B500AD8C9400D6949400CE949400AD7B7B007B5A5A0000000000000000000000
      0000000000000000000000000000BD949400D6A5A500E7ADAD00F7BDBD00FFBD
      BD00FFBDBD00FFBDBD00FFBDBD00FFB5B500FFB5B500FFADAD00FFADAD00FFA5
      A500FFA5A500FFA5A500FFA5A500FFA5A500FFA5A500FFA5A500FFA5A500FFA5
      A500FFA5A500FFA5A500E7ADAD00CECECE00DEDEDE00DEDEDE00DEDEDE00EFE7
      E700EFEFEF00E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00AD9C
      9C0094636300946363007B525200000000000000000000000000000000000000
      000000000000BD949400D6A5A500E7ADAD00F7BDBD00FFBDBD00FFBDBD00FFBD
      BD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFB5B500FFB5
      B500FFADAD00FFA5A500FFC6C600FFFFFF00C6C6C600ADA5A500B5B5B500D6D6
      D600ADA5A500ADADAD00ADADAD00ADADAD00EFE7E700E7DEDE00CEBDBD00BDA5
      A500BDA5A500BD9C9C00CE949400DEADAD00CEADAD00EFBDBD00DEA5A500AD7B
      7B007B5A5A00000000000000000000000000000000000000000000000000AD84
      8400CE9C9C00E7ADAD00F7CECE00EFF7F700F7F7FF00FFFFFF00FFFFFF00EFF7
      FF00DEEFFF00CEE7FF00BDDEFF00A5CEFF0094C6F70094B5E7008CADCE008CA5
      BD008494AD00848C9C007B848C0084848400A5A5A500BDC6D600ADCEF7009CCE
      FF0094BDE7008CA5C6008494AD00848C9400848484008484840084848C00848C
      9400848C9C009C849400CE8C8C00E79C9C00DE9C9C00AD7B7B007B5A5A000000
      00000000000000000000000000000000000000000000BD949400D69C9C00E7AD
      AD00F7B5B500FFB5B500FFB5B500D6848400C6636300CE525200D6393900D629
      2900E7181800F7080800EF080800CE181800AD2129009C3139008C5252009C7B
      8400C6BDC600E7DEE700DEE7EF00C6DEF700ADD6FF0094BDF7008CADD600849C
      B500848C9C00848484008484840084848C00848C9C008494A5008C9CAD009C94
      A500C68C8C00E79C9C00D6949400AD7B7B007B5A5A0000000000000000000000
      0000000000000000000000000000BD949400D69C9C00E7ADAD00F7B5B500FFB5
      B500FFBDBD00FFBDBD00FFB5B500FFB5B500FFB5B500FFB5B500FFADAD00FFA5
      A500FFA5A500FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FF9C9C00DEADAD00CECECE00DEDEDE00DEDEDE00E7E7E700FFF7
      F700FFFFFF00EFEFEF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00B5A5
      A50094636300945A5A007B525200000000000000000000000000000000000000
      000000000000BD949400D69C9C00E7ADAD00F7B5B500FFB5B500FFBDBD00FFBD
      BD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFBDBD00FFB5B500FFB5B500FFAD
      AD00FFA5A500FF9C9C00FFBDBD00FFFFFF00C6C6C600ADA5A500B5B5B500D6CE
      CE00A5A5A500ADADAD00ADADAD00ADADAD00EFE7E700FFE7E700FFDEDE00FFCE
      CE00FFB5B500FFADAD00FFADAD00BDA5A500DEADAD00F7ADAD00DE9C9C00AD7B
      7B007B5A5A00000000000000000000000000000000000000000000000000B58C
      8C00CE9C9C00E7ADAD00F7B5B500FFDEDE00FFFFFF00FFFFFF00F7F7FF00E7EF
      FF00D6EFFF00C6E7FF00B5D6FF00A5CEFF009CC6F70094BDE7008CADD6008CA5
      C600849CB5008494A500848C9C00A5A5AD00C6CED600C6D6EF00B5D6FF009CCE
      FF0094BDEF008CADCE008C9CB5008494A500848C940084848400847B84008484
      8C008C848C00C6848400EF9C9C00EFA5A500DE9C9C00AD7B7B007B5252000000
      00000000000000000000000000000000000000000000C6949400D69C9C00E7AD
      AD00F7B5B500FFB5B500FFB5B500DE8C8C00D6737300E76B6B00E75A5A00DE52
      5200E7393900EF212100DE293100AD637300847B8C008C949C00BDBDC600E7EF
      EF00F7FFFF00F7F7F700DEEFFF00C6DEFF00ADD6FF0094C6F7008CB5DE008CA5
      BD008494AD00848C94007B848400847B840084848C00848C9C008C949C00BD8C
      9400E79C9C00EFA5A500DE9C9C00AD7B7B007B52520000000000000000000000
      0000000000000000000000000000C6949400D69C9C00E7ADAD00F7B5B500FFB5
      B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFAD
      AD00FFADAD00FFA5A500FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FF9C9C00DEA5A500CECECE00DEDEDE00E7E7E700EFEFEF00F7F7
      F700F7F7F700EFEFEF00EFEFEF00E7E7E700DEDEDE00DEDEDE00DEDEDE00B5A5
      A5009C636300946363007B525200000000000000000000000000000000000000
      000000000000C6949400D69C9C00E7ADAD00F7B5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFAD
      AD00FFA5A500FF9C9C00FFBDBD00FFFFFF0094949400636363007B7B7B00ADAD
      AD00636363006B6B6B006B6B6B0063636300ADA5A500FFD6D600FFC6C600FFBD
      BD00FFADAD00E7949400AD8C8C00EFA5A500FFADAD00F7ADAD00DE9C9C00AD7B
      7B007B525200000000000000000000000000000000000000000000000000B594
      9400CE9C9C00E7ADAD00F7B5B500FFBDBD00FFDEDE00F7F7F700EFF7FF00DEEF
      FF00D6E7FF00C6DEFF00B5D6FF00A5CEFF0094C6FF0094BDEF008CB5D6008CA5
      C600849CBD0094A5B500B5BDC600D6DEE700D6E7F700C6DEFF00ADD6FF009CCE
      FF0094BDEF008CADD6008CA5C6008494AD00848C9C0084848C007B848400847B
      8400B5848400E7949400F7ADAD00F7ADAD00D69C9C00A57B7B007B5252000000
      00000000000000000000000000000000000000000000C69C9C00D6A5A500E7AD
      AD00F7B5B500FFB5B500FFB5B500FFADAD00FFA5A500FF9C9C00F7949400F78C
      8C00EF6B6B00EF393900D6394200AD848C008C949C009C9C9C00CECECE00F7F7
      F700F7F7F700E7EFFF00D6E7FF00BDDEFF00A5CEFF0094C6F70094B5E7008CAD
      CE008C9CB5008494A500848C940084848C00848484008C8C9400AD8C9400DE9C
      9C00F7ADAD00F7ADAD00D69C9C00A57B7B007B52520000000000000000000000
      0000000000000000000000000000C69C9C00D6A5A500E7ADAD00F7B5B500FFB5
      B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFADAD00FFA5A500FFA5A500FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FF9C9C00E7A5A500CECECE00DEDEDE00EFEFEF00FFF7F700EFE7
      E700E7E7E700F7EFEF00FFFFFF00FFF7F700E7E7E700DEDEDE00D6D6D600AD94
      9400A56B6B009C63630073525200000000000000000000000000000000000000
      000000000000C69C9C00D6A5A500E7ADAD00F7B5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFADAD00FFA5A500FFBDBD00F7F7F700CECECE00B5B5B500C6C6C600D6D6
      D600B5B5B500BDBDBD00BDBDBD00BDB5B500CEC6C600FFCECE00FFBDBD00FFAD
      AD00E7949400AD8C8C00DE949400FFA5A500FFADAD00F7ADAD00D69C9C00A57B
      7B007B525200000000000000000000000000000000000000000000000000C69C
      9C00D6A5A500E7ADAD00F7B5B500FFB5B500FFBDBD00FFCED600EFE7EF00DEEF
      FF00CEE7FF00BDDEFF00ADD6FF009CCEFF0094C6FF008CBDEF0094B5DE009CB5
      CE00ADBDCE00D6D6DE00E7EFEF00E7EFF700CEE7FF00BDDEFF00ADD6FF009CC6
      FF0094BDEF008CB5D6008CA5C6008C9CB5008494A500848C9C0084848C00AD84
      8400E7949400F7A5A500FFADAD00EFADAD00D69C9C00A5737300735252000000
      00000000000000000000000000000000000000000000CEA5A500DEA5A500E7AD
      AD00F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFADAD00FFAD
      AD00F7848400EF424200CE393900B58C8C0094949C00A5A5A500CECECE00F7F7
      F700EFF7F700DEEFFF00CEE7FF00B5D6FF00A5CEFF0094C6F70094B5E7008CAD
      CE008CA5BD00849CAD008494A500848C94008C8C9400AD8C8C00DE9C9C00F7AD
      AD00FFB5B500EFADAD00D69C9C00A57373007352520000000000000000000000
      0000000000000000000000000000CEA5A500DEA5A500E7ADAD00F7B5B500FFB5
      B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFB5B500FFADAD00FFADAD00FFA5A500FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FF9C9C00F79C9C00D6BDBD00D6D6D600EFEFEF00FFF7F700EFEF
      EF00EFEFEF00F7F7F700F7F7F700EFEFEF00E7E7E700DEDEDE00CEC6C600B584
      8400B57373009C636300734A4A00000000000000000000000000000000000000
      000000000000CEA5A500DEA5A500E7ADAD00F7B5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFADAD00FFA5A500FFBDBD00F7F7F700B5B5B5009C949400A5A5A500C6C6
      C600949494009C9C9C009C9C9C009C9C9C00B5ADAD00FFBDBD00FFADAD00E79C
      9C00B5949400E7A5A500FFA5A500FFADAD00FFB5B500EFADAD00D69C9C00A573
      730073525200000000000000000000000000000000000000000000000000D6AD
      AD00DEADAD00E7ADAD00F7ADAD00FFB5B500FFB5B500FFB5B500FFBDBD00EFCE
      D600DEDEF700CEE7FF00BDDEFF00B5D6FF00ADD6FF00ADCEEF00ADCEEF00C6DE
      EF00EFEFF700F7F7FF00E7F7FF00DEEFFF00C6E7FF00BDD6FF00ADCEFF009CC6
      FF0094BDEF008CB5DE008CADCE008CA5BD00849CAD008C949C00B58C9400EF9C
      9C00FFADAD00FFADAD00F7B5B500EFADAD00CE949400946B6B00634242000000
      00000000000000000000000000000000000000000000DEADAD00DEADAD00E7AD
      AD00F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFAD
      AD00F7949400E7525200BD424200C6848400ADA5A500B5B5B500D6D6D600EFEF
      F700E7EFFF00D6E7FF00C6DEFF00B5D6FF00A5CEFF0094C6F70094BDE70094B5
      D6008CADC6008CA5BD008C9CAD00949CA500B5949C00DE9C9C00F7ADAD00FFB5
      B500F7B5B500EFADAD00CE949400946B6B006342420000000000000000000000
      0000000000000000000000000000DEADAD00DEADAD00E7ADAD00F7B5B500FFB5
      B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFB5B500FFB5B500FFADAD00FFADAD00FFA5A500FFA5A500FF9C
      9C00FF9C9C00FF9C9C00FF9C9C00E7A5A500CEC6C600DEDEDE00E7E7E700EFE7
      E700F7F7F700FFFFFF00F7F7F700E7E7E700DEDEDE00D6CECE00C69C9C00CE84
      8400BD7B7B009463630063424200000000000000000000000000000000000000
      000000000000DEADAD00DEADAD00E7ADAD00F7B5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFADAD00FFA5A500FFBDBD00EFEFEF00E7E7E700DEDEDE00DEDEDE00E7E7
      E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEC6C600FFADAD00F7ADAD00DEAD
      AD00EFA5A500FFA5A500FFADAD00FFADAD00F7B5B500EFADAD00CE949400946B
      6B0063424200000000000000000000000000000000000000000000000000E7BD
      BD00E7BDBD00EFB5B500EFB5B500F7B5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFC6C600F7EFEF00EFF7FF00EFEFFF00E7EFFF00D6E7FF00C6DEFF00C6DE
      FF00DEEFFF00EFF7FF00E7EFFF00D6E7FF00C6DEFF00B5D6FF00ADCEFF009CCE
      FF0094BDF70094B5E7008CADD6008CA5C600A59CAD00CE949C00F7A5A500FFAD
      AD00FFB5B500FFB5B500F7ADAD00DEA5A500B58484007B525200634242000000
      00000000000000000000000000000000000000000000EFC6C600EFBDBD00EFB5
      B500EFB5B500F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFA5A500E7737300BD5A5A00D68C8C00D69C9C00D6BDBD00DEE7E700E7EF
      F700DEEFFF00CEE7FF00C6DEFF00B5D6FF00A5CEFF009CC6FF0094BDEF0094B5
      DE0094ADCE0094ADC6009CA5B500C69CA500EFA5A500FFADAD00FFB5B500FFB5
      B500F7ADAD00DEA5A500B58484007B5252006342420000000000000000000000
      0000000000000000000000000000EFC6C600EFBDBD00EFB5B500EFB5B500F7B5
      B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFADAD00FFADAD00FFA5
      A500FFA5A500FFA5A500FF9C9C00FF9C9C00E7ADAD00CEC6C600D6D6D600DEDE
      DE00E7E7E700E7E7E700E7E7E700DEDEDE00CECECE00CEADAD00D68C8C00D68C
      8C00B57B7B007B52520063424200000000000000000000000000000000000000
      000000000000EFC6C600EFBDBD00EFB5B500EFB5B500F7B5B500FFB5B500FFB5
      B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFADAD00FFC6C600EFEFEF00C6C6C600B5B5B500BDBDBD00CECE
      CE00ADADAD00B5B5B500B5B5B500ADADAD00E7ADAD00F7A5A500E7ADAD00F7AD
      AD00FFA5A500FFADAD00FFADAD00FFB5B500F7ADAD00DEA5A500B58484007B52
      5200634242000000000000000000000000000000000000000000000000000000
      0000F7D6D600F7C6C600F7B5B500F7B5B500F7B5B500FFB5B500FFB5B500FFB5
      B500FFADAD00FFC6C600FFEFEF00F7F7FF00E7EFFF00D6E7FF00C6DEFF00B5D6
      FF00ADD6FF00B5D6FF00C6DEFF00CEE7FF00C6DEFF00B5D6FF00ADCEFF009CCE
      FF0094C6F7009CBDDE00ADADC600CEA5B500E7A5A500FFADAD00FFADAD00FFB5
      B500FFB5B500F7ADAD00E7A5A500CE949400946B6B00634A4A00000000000000
      0000000000000000000000000000000000000000000000000000FFDEDE00F7C6
      C600F7B5B500F7B5B500F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFADAD00EF9C9C00E7949400EFA5A500EFA5A500F7ADAD00F7C6CE00EFE7
      EF00D6EFFF00CEE7FF00BDDEFF00B5D6FF00ADD6FF009CCEFF009CC6EF009CBD
      DE00A5B5CE00BDADB500DEA5AD00F7ADAD00FFB5B500FFB5B500FFB5B500F7AD
      AD00E7A5A500CE949400946B6B00634A4A000000000000000000000000000000
      000000000000000000000000000000000000FFDEDE00F7C6C600F7B5B500F7B5
      B500F7B5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFADAD00FFAD
      AD00FFADAD00FFADAD00FFA5A500FFA5A500FFA5A500E7ADAD00DEBDBD00D6C6
      C600D6CECE00D6CECE00CECECE00D6BDBD00DEA5A500E79C9C00E7949400CE8C
      8C009C6363006342420000000000000000000000000000000000000000000000
      00000000000000000000FFDEDE00F7C6C600F7B5B500F7B5B500F7B5B500FFB5
      B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5B500FFB5
      B500FFB5B500FFADAD00F7C6C600EFEFEF00D6D6D600CEC6C600CECECE00DEDE
      DE00C6C6C600C6C6C600C6C6C600BDB5B500EFADAD00F7BDBD00F7A5A500FFA5
      A500FFADAD00FFADAD00FFADAD00F7ADAD00E7A5A500CE949400946B6B00634A
      4A00000000000000000000000000000000000000000000000000000000000000
      0000FFEFEF00FFE7E700FFCECE00F7B5B500F7B5B500F7ADAD00F7ADAD00F7AD
      AD00F7ADAD00F7ADAD00F7B5B500EFD6D600DEE7F700D6E7FF00C6DEFF00B5D6
      FF00ADD6FF009CCEFF009CC6F700A5C6EF00ADC6E700C6BDD600D6B5CE00D6B5
      C600DEB5BD00E7ADB500EFADAD00F7ADAD00F7ADAD00F7ADAD00F7ADAD00F7AD
      AD00EFADAD00E7A5A500CE949400A5737300735252006B4A4A00000000000000
      0000000000000000000000000000000000000000000000000000FFEFEF00FFE7
      E700FFCECE00F7B5B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5
      B500F7B5B500F7ADAD00F7ADAD00F7ADAD00F7ADAD00F7ADAD00F7ADAD00F7B5
      B500EFBDC600DECEDE00CECEEF00C6CEEF00BDCEEF00BDC6E700C6B5CE00D6AD
      BD00E7ADAD00F7ADAD00F7ADAD00F7ADAD00F7ADAD00F7ADAD00EFADAD00E7A5
      A500CE949400A5737300735252006B4A4A000000000000000000000000000000
      000000000000000000000000000000000000FFEFEF00FFE7E700FFCECE00F7B5
      B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5
      B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5B500F7AD
      AD00F7ADAD00F7ADAD00F7ADAD00F7ADAD00F7ADAD00F7ADAD00F7A5A500EFAD
      AD00E7ADAD00E7ADAD00E7A5A500EFA5A500EF9C9C00E79C9C00CE8C8C00A573
      7300735252006B4A4A0000000000000000000000000000000000000000000000
      00000000000000000000FFEFEF00FFE7E700FFCECE00F7B5B500F7B5B500F7B5
      B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5B500F7B5
      B500F7B5B500F7B5B500F7C6C600EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFDEDE00EFCECE00F7B5B500F7A5A500F7AD
      AD00F7ADAD00F7ADAD00EFADAD00E7A5A500CE949400A5737300735252006B4A
      4A00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFEFEF00FFCECE00F7BDBD00EFB5B500EFADAD00EFAD
      AD00EFADAD00EFADAD00EFA5A500EFADAD00E7B5B500DEBDCE00CECEDE00C6CE
      EF00BDCEEF00B5BDE700BDB5D600CEADBD00DEA5AD00E7A5A500EFA5A500EFA5
      A500EFA5A500EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00E7ADAD00E7A5
      A500DE9C9C00C6949400A57373007B5A5A007352520000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFEFEF00FFCECE00F7BDBD00EFB5B500EFADAD00EFADAD00EFADAD00EFAD
      AD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFAD
      AD00EFADAD00EFA5A500EFA5A500EFA5A500EFA5A500EFA5A500EFA5A500EFA5
      A500EFA5A500EFADAD00EFADAD00EFADAD00E7ADAD00E7A5A500DE9C9C00C694
      9400A57373007B5A5A0073525200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFEFEF00FFCE
      CE00F7BDBD00EFB5B500EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFAD
      AD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFAD
      AD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFAD
      AD00EFA5A500EFA5A500E7A5A500E79C9C00DE9C9C00CE8C8C00A57373007B5A
      5A00735252000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFEFEF00FFCECE00F7BDBD00EFB5
      B500EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFADAD00EFAD
      AD00EFADAD00EFADAD00EFADAD00EFADAD00EFA5A500EFA5A500EFA5A500EFA5
      A500EFA5A500EFA5A500EFA5A500EFA5A500EFA5A500EFA5A500EFADAD00EFAD
      AD00E7ADAD00E7A5A500DE9C9C00C6949400A57373007B5A5A00735252000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFF7F700FFD6D600F7C6C600EFB5B500E7AD
      AD00DEADAD00DEADAD00DEADAD00DEA5A500DEA5A500DEA5A500DEA5A500DEA5
      A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5
      A500DEA5A500DEADAD00DEADAD00DEADAD00DEA5A500DEA5A500D6A5A500CE9C
      9C00BD8C8C00A57373008C6363007B5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFF7F700FFD6D600F7C6C600EFB5B500E7ADAD00DEADAD00DEAD
      AD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEAD
      AD00DEADAD00DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5
      A500DEADAD00DEADAD00DEA5A500DEA5A500D6A5A500CE9C9C00BD8C8C00A573
      73008C6363007B5A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFF7
      F700FFD6D600F7C6C600EFB5B500E7ADAD00DEADAD00DEADAD00DEADAD00DEAD
      AD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEAD
      AD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEAD
      AD00DEA5A500DEA5A500D6A5A500CE9C9C00BD8C8C00A57373008C6363007B5A
      5A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFF7F700FFD6D600F7C6
      C600EFB5B500E7ADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEAD
      AD00DEADAD00DEADAD00DEADAD00DEADAD00DEADAD00DEA5A500DEA5A500DEA5
      A500DEA5A500DEA5A500DEA5A500DEA5A500DEA5A500DEADAD00DEA5A500DEA5
      A500D6A5A500CE9C9C00BD8C8C00A57373008C6363007B5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFE7E700F7D6D600EFC6C600E7B5
      B500DEADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00CEA5A500CEA5A500C69C9C00BD94
      9400AD8484009C73730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFE7E700F7D6D600EFC6C600E7B5B500DEADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00CEA5A500CEA5A500C69C9C00BD949400AD8484009C73
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFE7E700F7D6D600EFC6C600E7B5B500DEADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00CEA5A500CEA5A500C69C9C00BD949400AD8484009C737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFE7E700F7D6
      D600EFC6C600E7B5B500DEADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6AD
      AD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6ADAD00CEA5A500CEA5
      A500C69C9C00BD949400AD8484009C7373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000B8000000B80000000100010000000000401100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF00FF00000003FFFC0000000FFFF00000003FFFC0000000FF00
      FC00000000FFF000000003FFC00000000FFF000000003F00F8000000007FE000
      000001FF8000000007FE000000001F00F0000000003FC000000000FF00000000
      03FC000000000F00F0000000003FC000000000FF0000000003FC000000000F00
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700F0000000003FC000000000FF00000000
      03FC000000000F00F0000000003FC000000000FF0000000003FC000000000F00
      F8000000007FE000000001FF8000000007FE000000001F00FC00000000FFF000
      000003FFC00000000FFF000000003F00FF00000003FFFC0000000FFFF0000000
      3FFFC0000000FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF00000003FFFC00
      00000FFFF00000003FFFC0000000FF00FC00000000FFF000000003FFC0000000
      0FFF000000003F00F8000000007FE000000001FF8000000007FE000000001F00
      F0000000003FC000000000FF0000000003FC000000000F00F0000000003FC000
      000000FF0000000003FC000000000F00E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      F0000000003FC000000000FF0000000003FC000000000F00F0000000003FC000
      000000FF0000000003FC000000000F00F8000000007FE000000001FF80000000
      07FE000000001F00FC00000000FFF000000003FFC00000000FFF000000003F00
      FF00000003FFFC0000000FFFF00000003FFFC0000000FF00FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF00FF00000003FFFC0000000FFFF00000003FFFC0000000FF00
      FC00000000FFF000000003FFC00000000FFF000000003F00F8000000007FE000
      000001FF8000000007FE000000001F00F0000000003FC000000000FF00000000
      03FC000000000F00F0000000003FC000000000FF0000000003FC000000000F00
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700F0000000003FC000000000FF00000000
      03FC000000000F00F0000000003FC000000000FF0000000003FC000000000F00
      F8000000007FE000000001FF8000000007FE000000001F00FC00000000FFF000
      000003FFC00000000FFF000000003F00FF00000003FFFC0000000FFFF0000000
      3FFFC0000000FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      000000000000}
  end
  object ilTbGray: TImageList
    Height = 46
    Width = 46
    Left = 505
    Top = 19
    Bitmap = {
      494C01010C000E0004002E002E00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000B8000000B800000001002000000000000011
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003131310031313100292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002121210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031313100313131002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002121
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290021212100212121002121
      2100212121002121210021212100212121002121210021212100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002121
      2100212121002121210021212100212121000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003131310031313100393939004A4A4A00525252005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A0063636300737373006363
      63005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005252
      5200424242003131310029292900212121000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003131310031313100393939004A4A4A00525252005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005252
      52004A4A4A004A4A4A00525252005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A0052525200424242003131
      3100292929002121210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000313131002929
      2900313131003939390042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200393939003939
      3900424242004242420042424200424242003939390029292900212121002121
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003131310029292900313131003939
      3900424242004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242004242420039393900292929002121210021212100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003939390039393900525252006B6B6B007B7B7B00848484008484
      84008484840084848400848484007B7B7B007B7B7B007B7B7B009C9C9C007B7B
      7B007B7B7B0073737300737373007373730073737300737373007B7B7B007B7B
      7B007B7B7B008484840084848400848484008484840084848400848484008484
      84007B7B7B006B6B6B004A4A4A00292929002121210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003939
      390039393900525252006B6B6B007B7B7B008484840084848400848484008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C007B7B7B006B6B6B007373
      7300737373006B6B6B00636363005A5A5A007373730084848400848484008484
      84008484840084848400848484008484840084848400848484007B7B7B006B6B
      6B004A4A4A002929290021212100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031313100313131004A4A
      4A00525252005A5A5A006363630063636300636363006B6B6B00636363006363
      63006363630063636300636363006363630063636300636363005A5A5A005A5A
      5A0052525200525252004A4A4A004A4A4A004A4A4A004A4A4A00424242004A4A
      4A005A5A5A006363630063636300636363005A5A5A0052525200424242002929
      2900212121000000000000000000000000000000000000000000000000000000
      000000000000000000000000000031313100313131004A4A4A00525252005A5A
      5A0063636300636363006363630084848400A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500737373006363
      630063636300636363005A5A5A00525252004242420029292900212121000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004242420042424200636363007B7B7B008C8C8C0094949400949494009494
      94008C8C8C008C8C8C008484840084848400848484009C9C9C00B5B5B5009C9C
      9C00737373007B7B7B007B7B7B00848484008484840084848400848484008484
      84008C8C8C0094949400949494009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00949494008C8C8C0073737300525252002929290021212100000000000000
      0000000000000000000000000000000000000000000000000000424242004242
      4200636363007B7B7B008C8C8C00949494009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C008C8C8C0084848400848484009C9C
      9C00ADADAD00ADADAD008C8C8C006B6B6B006B6B6B0084848400949494008C8C
      8C008C8C8C009494940094949400949494009C9C9C0094949400949494008C8C
      8C00737373005252520029292900212121000000000000000000000000000000
      0000000000000000000000000000000000003939390039393900525252006363
      63006B6B6B007373730073737300737373007373730073737300737373007373
      7300737373006B6B6B00636363005A5A5A005A5A5A00525252004A4A4A004A4A
      4A004242420042424200424242004A4A4A004A4A4A004A4A4A00424242005252
      520063636300737373007373730073737300737373006B6B6B005A5A5A004A4A
      4A00292929002121210000000000000000000000000000000000000000000000
      00000000000000000000393939003939390052525200636363006B6B6B007373
      7300737373007373730073737300B5B5B500EFEFEF00EFEFEF00F7F7F700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF008C8C8C007373
      73007373730073737300737373006B6B6B005A5A5A0042424200292929002121
      2100000000000000000000000000000000000000000000000000000000000000
      00004A4A4A006363630084848400949494009C9C9C0094949400949494008C8C
      8C00848484008484840084848400848484008C8C8C00B5B5B500C6C6C600B5B5
      B5008C8C8C007B7B7B007B7B7B007B7B7B008484840084848400848484008484
      84008C8C8C0094949400949494009C9C9C009C9C9C00A5A5A500A5A5A500A5A5
      A5009C9C9C009C9C9C008C8C8C007B7B7B004A4A4A0029292900000000000000
      00000000000000000000000000000000000000000000000000004A4A4A006363
      630084848400949494009C9C9C009C9C9C00A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5008C8C8C0094949400ADADAD00CECE
      CE00D6D6D600D6D6D600C6C6C6009C9C9C00737373006B6B6B00949494009494
      94009494940094949400949494009C9C9C009C9C9C00A5A5A5009C9C9C009C9C
      9C008C8C8C007B7B7B004A4A4A00292929000000000000000000000000000000
      0000000000000000000000000000000000004242420052525200636363007373
      73007B7B7B007B7B7B007B7B7B0073737300737373006B6B6B00636363005A5A
      5A0052525200525252004A4A4A0042424200424242004A4A4A004A4A4A004A4A
      4A005A5A5A006B6B6B00636363004A4A4A004A4A4A004A4A4A00424242005252
      5200636363007B7B7B007B7B7B007B7B7B007B7B7B00737373006B6B6B005A5A
      5A00424242002121210000000000000000000000000000000000000000000000
      00000000000000000000424242005252520063636300737373007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00BDBDBD00F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00848484007373
      73007B7B7B007B7B7B007B7B7B00737373006B6B6B005A5A5A00424242002121
      2100000000000000000000000000000000000000000000000000000000005252
      52005A5A5A007B7B7B00949494009C9C9C009C9C9C00949494008C8C8C008484
      8400848484007B7B7B007B7B7B0084848400ADADAD00C6C6C600BDBDBD00BDBD
      BD00ADADAD00848484007B7B7B007B7B7B007B7B7B0084848400848484008484
      84008C8C8C008C8C8C00949494009C9C9C009C9C9C00A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A5009C9C9C008C8C8C006B6B6B0039393900292929000000
      00000000000000000000000000000000000000000000525252005A5A5A007B7B
      7B00949494009C9C9C00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A50094949400A5A5A500A5A5A500CECECE00DEDE
      DE00E7E7E700E7E7E700DEDEDE00C6C6C6008484840073737300848484008C8C
      8C008C8C8C0094949400949494009C9C9C009C9C9C00A5A5A500A5A5A500A5A5
      A5009C9C9C008C8C8C006B6B6B00313131002929290000000000000000000000
      00000000000000000000000000004A4A4A005252520063636300737373007B7B
      7B00737373006B6B6B00636363005A5A5A00525252004A4A4A00424242004242
      4200424242004A4A4A004A4A4A0052525200636363007B7B7B0094949400ADAD
      AD00CECECE00E7E7E700DEDEDE0063636300424242004A4A4A00424242005252
      52006B6B6B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00737373006B6B
      6B00525252003939390029292900000000000000000000000000000000000000
      0000000000004A4A4A005252520063636300737373007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00BDBDBD00F7F7F700F7F7F700BDBDBD00CECE
      CE00F7F7F700EFEFEF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00EFEFEF00F7F7F700848484007373
      73007B7B7B007B7B7B007B7B7B007B7B7B00737373006B6B6B00525252003131
      3100212121000000000000000000000000000000000000000000000000005A5A
      5A00737373008C8C8C00949494009C9C9C00949494008C8C8C00848484008484
      84007B7B7B007B7B7B007B7B7B00ADADAD00C6C6C600C6C6C600BDBDBD00BDBD
      BD00BDBDBD00A5A5A5007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B008484
      8400848484008C8C8C008C8C8C00949494009C9C9C009C9C9C00A5A5A500A5A5
      A500A5A5A500A5A5A5009C9C9C00949494007B7B7B0052525200313131000000
      000000000000000000000000000000000000000000005A5A5A00737373008C8C
      8C009C9C9C009C9C9C00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A50094949400B5B5B500BDBDBD00DEDEDE00E7E7
      E700E7E7E700E7E7E700E7E7E700D6D6D600A5A5A500737373007B7B7B008C8C
      8C008C8C8C0094949400949494009C9C9C009C9C9C00A5A5A500A5A5A500A5A5
      A5009C9C9C00949494007B7B7B004A4A4A003131310000000000000000000000
      000000000000000000000000000052525200636363006B6B6B00737373007373
      73005A5A5A004A4A4A004A4A4A004A4A4A00424242004A4A4A00525252006363
      6300737373008C8C8C00A5A5A500C6C6C600DEDEDE00F7F7F700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B00424242004A4A4A00424242005252
      5200636363007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007373
      7300636363004242420031313100000000000000000000000000000000000000
      00000000000052525200636363006B6B6B00737373007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00BDBDBD00FFFFFF00F7F7F7007B7B7B009494
      9400FFFFFF00EFEFEF00ADADAD00A5A5A500ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00A5A5A500ADADAD00E7E7E700F7F7F700848484007373
      73007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00737373005A5A5A004242
      4200292929000000000000000000000000000000000000000000000000006B6B
      6B0084848400949494009C9C9C0094949400949494008C8C8C00848484007B7B
      7B007B7B7B0084848400A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600BDBD
      BD00C6C6C600BDBDBD009C9C9C00737373007B7B7B007B7B7B007B7B7B007B7B
      7B0084848400848484008C8C8C00949494009C9C9C009C9C9C00A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C9C008484840063636300424242000000
      000000000000000000000000000000000000000000006B6B6B00848484009494
      94009C9C9C00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C9C00C6C6C600CECECE00E7E7E700E7E7
      E700EFEFEF00E7E7E700E7E7E700D6D6D600ADADAD007B7B7B00737373009494
      94009494940094949400949494009C9C9C009C9C9C00A5A5A500A5A5A500A5A5
      A500A5A5A50094949400848484005A5A5A003939390000000000000000000000
      0000000000000000000000000000636363006B6B6B00737373007B7B7B007373
      73005A5A5A00525252004A4A4A005A5A5A0084848400A5A5A500BDBDBD00D6D6
      D600EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F70073737300424242004A4A4A00424242005252
      5200636363007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007373
      7300636363004A4A4A0031313100000000000000000000000000000000000000
      000000000000636363006B6B6B00737373007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00BDBDBD00FFFFFF00FFFFFF00DEDEDE00E7E7
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700848484006B6B
      6B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0073737300636363004242
      4200292929000000000000000000000000000000000000000000000000007B7B
      7B0084848400949494009C9C9C00949494008C8C8C0084848400848484007B7B
      7B008C8C8C00A5A5A500C6C6C600CECECE00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600BDBDBD0094949400848484007B7B7B007B7B7B007B7B
      7B0084848400848484008C8C8C00949494009C9C9C009C9C9C00A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C9C008C8C8C006B6B6B004A4A4A000000
      000000000000000000000000000000000000000000007B7B7B00848484009494
      94009C9C9C00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C9C00DEDEDE00DEDEDE00E7E7E700EFEF
      EF00EFEFEF00EFEFEF00E7E7E700D6D6D600A5A5A50084848400848484009494
      940094949400949494009C9C9C009C9C9C00A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A5009C9C9C00848484005A5A5A003939390000000000000000000000
      00000000000000000000000000006B6B6B006B6B6B00737373007B7B7B007373
      73005A5A5A004A4A4A0052525200B5B5B500F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F70073737300424242004A4A4A00424242005252
      5200636363007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007373
      73006B6B6B005252520039393900000000000000000000000000000000000000
      0000000000006B6B6B006B6B6B00737373007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00C6C6C600FFFFFF00FFFFFF00D6D6D600DEDE
      DE00FFFFFF00F7F7F700DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600F7F7F700F7F7F700848484007373
      73007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0073737300636363004A4A
      4A00292929000000000000000000000000000000000000000000000000007B7B
      7B008C8C8C009494940094949400949494008C8C8C0084848400848484008C8C
      8C00ADADAD00B5B5B500BDBDBD00C6C6C600CECECE00C6C6C600C6C6C600C6C6
      C600C6C6C600BDBDBD00B5B5B500ADADAD009C9C9C00848484007B7B7B007B7B
      7B007B7B7B0084848400848484008C8C8C00949494009C9C9C00A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C9C008C8C8C006B6B6B004A4A4A000000
      000000000000000000000000000000000000000000007B7B7B008C8C8C009494
      94009C9C9C00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C9C00E7E7E700F7F7F700EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00E7E7E700CECECE009C9C9C00848484008C8C8C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C00A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A5009C9C9C008C8C8C00636363003939390000000000000000000000
      00000000000000000000000000006B6B6B0073737300737373007B7B7B007373
      7300525252004242420063636300EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F70073737300424242004A4A4A00424242005252
      5200636363007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007373
      73006B6B6B005252520039393900000000000000000000000000000000000000
      0000000000006B6B6B0073737300737373007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00C6C6C600FFFFFF00FFFFFF0084848400A5A5
      A500FFFFFF00EFEFEF00BDBDBD00B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500EFEFEF00F7F7F700848484007373
      7300848484008484840084848400848484007B7B7B007B7B7B006B6B6B004A4A
      4A00292929000000000000000000000000000000000000000000000000008484
      84008C8C8C009494940094949400949494008C8C8C0084848400848484009494
      94009C9C9C00949494009C9C9C00BDBDBD00CECECE00CECECE00C6C6C600C6C6
      C600C6C6C600ADADAD008C8C8C009C9C9C009C9C9C00949494007B7B7B007B7B
      7B007B7B7B0084848400848484008C8C8C00949494009C9C9C009C9C9C00A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C9C008C8C8C006B6B6B004A4A4A000000
      00000000000000000000000000000000000000000000848484008C8C8C009494
      94009C9C9C00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500B5B5B500FFFFFF00F7F7F700EFEF
      EF00EFEFEF00E7E7E700DEDEDE00BDBDBD008C8C8C00848484009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C00A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A5009C9C9C008C8C8C00636363003939390000000000000000000000
      00000000000000000000000000007373730073737300737373007B7B7B007373
      7300525252004242420063636300EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F70073737300424242004A4A4A00424242005252
      52006B6B6B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007373
      73006B6B6B005252520039393900000000000000000000000000000000000000
      0000000000007373730073737300737373007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00C6C6C600FFFFFF00FFFFFF00CECECE00DEDE
      DE00FFFFFF00FFFFFF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00FFFFFF00FFFFFF00949494008484
      84009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00848484005252
      5200292929000000000000000000000000000000000000000000000000008484
      84008C8C8C009494940094949400949494008C8C8C008C8C8C00848484008484
      8400848484007B7B7B008C8C8C00BDBDBD00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C00848484007B7B7B0084848400848484007B7B7B007B7B
      7B007B7B7B007B7B7B0084848400848484008C8C8C00949494009C9C9C00A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C9C008C8C8C006B6B6B004A4A4A000000
      00000000000000000000000000000000000000000000848484008C8C8C009494
      94009C9C9C00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500CECECE00FFFFFF00EFEF
      EF00EFEFEF00E7E7E700D6D6D600B5B5B500848484009C9C9C00A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A5009C9C9C008C8C8C00636363004242420000000000000000000000
      00000000000000000000000000007373730073737300737373007B7B7B007373
      7300525252004242420063636300EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F70073737300424242004A4A4A004A4A4A005A5A
      5A006B6B6B007B7B7B00848484008484840084848400848484007B7B7B007373
      73006B6B6B005252520039393900000000000000000000000000000000000000
      0000000000007373730073737300737373007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00C6C6C600FFFFFF00FFFFFF00DEDEDE00E7E7
      E700FFFFFF00FFFFFF00E7E7E700DEDEDE00DEDEDE00E7E7E700E7E7E700E7E7
      E700DEDEDE00E7E7E700DEDEDE00DEDEDE00F7F7F700F7F7F700A5A5A5009C9C
      9C00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD009C9C9C004A4A
      4A00292929000000000000000000000000000000000000000000000000008484
      84008C8C8C00949494009494940094949400949494008C8C8C00848484008484
      8400848484007B7B7B0094949400BDBDBD00CECECE00CECECE00CECECE00CECE
      CE00C6C6C60094949400636363006363630063636300737373007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00848484008C8C8C00949494009C9C
      9C009C9C9C00A5A5A500A5A5A5009C9C9C008C8C8C006B6B6B004A4A4A000000
      00000000000000000000000000000000000000000000848484008C8C8C009494
      94009C9C9C00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A5009C9C9C00C6C6
      C600EFEFEF00EFEFEF00BDBDBD0094949400A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A5009C9C9C008C8C8C00636363004242420000000000000000000000
      00000000000000000000000000007373730073737300737373007B7B7B007373
      7300525252004242420063636300EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F70073737300424242004A4A4A006B6B6B008C8C
      8C00ADADAD00CECECE00D6D6D600D6D6D600CECECE00CECECE00949494007373
      73006B6B6B005252520039393900000000000000000000000000000000000000
      0000000000007373730073737300737373007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00C6C6C600FFFFFF00FFFFFF008C8C8C00ADAD
      AD00FFFFFF00F7F7F700BDBDBD00B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500EFEFEF00FFFFFF00ADADAD00ADAD
      AD00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C004242
      4200292929000000000000000000000000000000000000000000000000008484
      84008C8C8C00949494009494940094949400949494008C8C8C008C8C8C008484
      8400848484008484840094949400C6C6C600D6D6D600D6D6D600CECECE00CECE
      CE00C6C6C600848484004A4A4A004242420042424200424242004A4A4A006363
      6300737373007B7B7B0073737300737373007B7B7B007B7B7B008C8C8C009494
      94009C9C9C009C9C9C00A5A5A5009C9C9C008C8C8C006B6B6B004A4A4A000000
      00000000000000000000000000000000000000000000848484008C8C8C009494
      94009C9C9C00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A5009C9C9C00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A5009C9C9C008C8C8C00636363004242420000000000000000000000
      00000000000000000000000000007373730073737300737373007B7B7B007373
      7300525252004242420063636300EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6005A5A5A004A4A4A004A4A4A00525252006B6B
      6B00848484009C9C9C00A5A5A500A5A5A500C6C6C600EFEFEF00949494006363
      6300636363005252520039393900000000000000000000000000000000000000
      0000000000007373730073737300949494009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C0094949400D6D6D600FFFFFF00FFFFFF00BDBDBD00CECE
      CE00FFFFFF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700FFFFFF00ADADAD00A5A5
      A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600CECECE009C9C9C004242
      4200292929000000000000000000000000000000000000000000000000009494
      9400A5A5A500ADADAD00B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500ADAD
      AD00ADADAD00ADADAD00ADADAD00C6C6C600D6D6D600D6D6D600D6D6D600D6D6
      D600BDBDBD007B7B7B004A4A4A00424242004242420042424200424242004A4A
      4A005A5A5A007B7B7B009494940094949400949494009C9C9C00A5A5A500ADAD
      AD00B5B5B500BDBDBD00BDBDBD00B5B5B500A5A5A500848484005A5A5A000000
      0000000000000000000000000000000000000000000094949400A5A5A500ADAD
      AD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD009C9C9C00949494009C9C9C00A5A5
      A500ADADAD00ADADAD00A5A5A5009C9C9C00848484009C9C9C00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00B5B5B500A5A5A500737373004A4A4A0000000000000000000000
      00000000000000000000000000008C8C8C00949494009C9C9C009C9C9C009494
      9400525252004242420063636300EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00D6D6D600BDBD
      BD009C9C9C007B7B7B005A5A5A004A4A4A004A4A4A004A4A4A005A5A5A007373
      730094949400ADADAD00B5B5B500B5B5B500CECECE00EFEFEF009C9C9C007B7B
      7B00848484006B6B6B0052525200000000000000000000000000000000000000
      0000000000008C8C8C0094949400CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700848484006B6B
      6B007B7B7B00848484007B7B7B007B7B7B0094949400CECECE00A5A5A5005252
      520039393900000000000000000000000000000000000000000000000000ADAD
      AD00BDBDBD00CECECE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00CECECE00C6C6C600D6D6D600D6D6D600D6D6D600D6D6
      D600B5B5B5006B6B6B004A4A4A004A4A4A004A4A4A0042424200424242004242
      4200424242005252520084848400B5B5B500B5B5B500BDBDBD00C6C6C600CECE
      CE00D6D6D600DEDEDE00DEDEDE00D6D6D600C6C6C6009C9C9C006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700A5A5A50094949400B5B5B500CECE
      CE00D6D6D600D6D6D600C6C6C600ADADAD007B7B7B009C9C9C00D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00DEDEDE00E7E7E700E7E7E700E7E7
      E700DEDEDE00D6D6D600BDBDBD008C8C8C006363630000000000000000000000
      0000000000000000000000000000ADADAD00B5B5B500C6C6C600CECECE00BDBD
      BD005A5A5A004242420063636300EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700DEDEDE00C6C6C600A5A5A5008C8C8C006B6B6B00525252004A4A
      4A004A4A4A005252520063636300525252004A4A4A004A4A4A00525252006363
      63007B7B7B00949494009C9C9C0094949400C6C6C600EFEFEF00ADADAD00A5A5
      A500ADADAD008C8C8C006B6B6B00000000000000000000000000000000000000
      000000000000ADADAD00B5B5B500D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00EFEFEF00FFFFFF00FFFFFF00B5B5B500C6C6
      C600FFFFFF00F7F7F700BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00EFEFEF00FFFFFF00A5A5A5009494
      9400B5B5B500B5B5B500B5B5B500B5B5B500BDBDBD00CECECE00ADADAD006B6B
      6B004A4A4A00000000000000000000000000000000000000000000000000BDBD
      BD00D6D6D600E7E7E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DEDEDE00C6C6C600DEDEDE00D6D6D600D6D6D600D6D6
      D600ADADAD005A5A5A004A4A4A004A4A4A004A4A4A004A4A4A00424242004242
      420042424200424242004A4A4A0094949400C6C6C600D6D6D600DEDEDE00E7E7
      E700F7F7F700F7F7F700FFFFFF00F7F7F700DEDEDE00ADADAD007B7B7B000000
      00000000000000000000000000000000000000000000BDBDBD00D6D6D600E7E7
      E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5B500A5A5A500CECECE00D6D6
      D600DEDEDE00DEDEDE00D6D6D600C6C6C600A5A5A5007B7B7B009C9C9C00C6C6
      C600E7E7E700E7E7E700EFEFEF00EFEFEF00F7F7F700F7F7F700FFFFFF00FFFF
      FF00FFFFFF00F7F7F700D6D6D6009C9C9C006B6B6B0000000000000000000000
      0000000000000000000000000000C6C6C600D6D6D600E7E7E700F7F7F700D6D6
      D600636363004A4A4A005A5A5A00CECECE00EFEFEF00CECECE00ADADAD009494
      9400737373005A5A5A004A4A4A004A4A4A00525252005A5A5A00737373008C8C
      8C009C9C9C00ADADAD00BDBDBD0063636300424242004A4A4A005A5A5A007373
      73008C8C8C00A5A5A500ADADAD00ADADAD00CECECE00F7F7F700BDBDBD00C6C6
      C600CECECE00ADADAD007B7B7B00000000000000000000000000000000000000
      000000000000C6C6C600D6D6D600DEDEDE00E7E7E700EFEFEF00EFEFEF00EFEF
      EF00E7E7E700EFEFEF00F7F7F700FFFFFF00FFFFFF00FFFFFF008C8C8C00ADAD
      AD00FFFFFF00F7F7F700CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00F7F7F700FFFFFF008C8C8C007373
      7300848484008484840084848400848484009C9C9C00C6C6C600B5B5B5007B7B
      7B0052525200000000000000000000000000000000000000000000000000BDBD
      BD00CECECE00E7E7E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7E7E700A5A5A500C6C6C600DEDEDE00D6D6D600D6D6D600D6D6
      D6009C9C9C005A5A5A004A4A4A004A4A4A004A4A4A004A4A4A00424242004242
      4200424242004242420042424200525252009C9C9C00BDBDBD00CECECE00D6D6
      D600E7E7E700EFEFEF00F7F7F700EFEFEF00D6D6D600ADADAD007B7B7B000000
      00000000000000000000000000000000000000000000BDBDBD00CECECE00E7E7
      E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5B500B5B5B500D6D6D600DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600C6C6C600ADADAD007B7B7B007373
      730084848400C6C6C600DEDEDE00E7E7E700EFEFEF00EFEFEF00F7F7F700F7F7
      F700F7F7F700EFEFEF00D6D6D6009C9C9C006B6B6B0000000000000000000000
      0000000000000000000000000000BDBDBD00CECECE00E7E7E700F7F7F700D6D6
      D600636363004A4A4A004A4A4A005A5A5A00636363005A5A5A004A4A4A004242
      42004A4A4A006B6B6B00848484009C9C9C00ADADAD00BDBDBD00BDBDBD009494
      94007B7B7B008C8C8C00CECECE006B6B6B00424242004A4A4A005A5A5A007373
      730094949400ADADAD00B5B5B500B5B5B500D6D6D600F7F7F700BDBDBD00BDBD
      BD00CECECE00A5A5A5007B7B7B00000000000000000000000000000000000000
      000000000000BDBDBD00CECECE00DEDEDE00E7E7E700DEDEDE008C8C8C00B5B5
      B500EFEFEF00CECECE009C9C9C00D6D6D600FFFFFF00FFFFFF00EFEFEF00EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00949494007B7B
      7B0094949400949494009494940094949400A5A5A500CECECE00B5B5B5007B7B
      7B0052525200000000000000000000000000000000000000000000000000BDBD
      BD00CECECE00E7E7E700EFEFEF00F7F7F700FFFFFF00FFFFFF00F7F7F700F7F7
      F700F7F7F700B5B5B5007B7B7B00CECECE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D6009C9C9C00525252004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004242
      42004242420042424200424242004242420063636300A5A5A500BDBDBD00C6C6
      C600D6D6D600E7E7E700EFEFEF00EFEFEF00D6D6D600A5A5A5007B7B7B000000
      00000000000000000000000000000000000000000000BDBDBD00CECECE00E7E7
      E700EFEFEF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6C600D6D6D600E7E7
      E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00CECECE00BDBDBD009494
      9400737373006B6B6B00ADADAD00DEDEDE00DEDEDE00E7E7E700E7E7E700EFEF
      EF00EFEFEF00EFEFEF00D6D6D6009C9C9C006B6B6B0000000000000000000000
      0000000000000000000000000000BDBDBD00CECECE00DEDEDE00EFEFEF00CECE
      CE00636363004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004242
      42007B7B7B00C6C6C600CECECE00CECECE00CECECE00D6D6D6009C9C9C004A4A
      4A004242420073737300C6C6C6006B6B6B00424242004A4A4A004A4A4A006363
      6300737373008C8C8C009494940094949400C6C6C600F7F7F700BDBDBD00BDBD
      BD00C6C6C600A5A5A5007B7B7B00000000000000000000000000000000000000
      000000000000BDBDBD00CECECE00DEDEDE00E7E7E700CECECE00636363009494
      9400EFEFEF00D6D6D600ADADAD00DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADADAD00ADAD
      AD00CECECE00CECECE00CECECE00CECECE00CECECE00D6D6D600B5B5B5007B7B
      7B0052525200000000000000000000000000000000000000000000000000B5B5
      B500CECECE00DEDEDE00EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700DEDEDE006B6B6B007B7B7B00CECECE00DEDEDE00DEDEDE00DEDEDE00CECE
      CE008C8C8C00525252004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004242
      4200424242004242420042424200424242006B6B6B008C8C8C00ADADAD00BDBD
      BD00C6C6C600DEDEDE00E7E7E700E7E7E700D6D6D600A5A5A500737373000000
      00000000000000000000000000000000000000000000B5B5B500CECECE00DEDE
      DE00EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700BDBDBD00CECECE00DEDEDE00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00D6D6D600C6C6
      C600A5A5A500737373006B6B6B00B5B5B500D6D6D600D6D6D600DEDEDE00E7E7
      E700E7E7E700E7E7E700CECECE00949494006B6B6B0000000000000000000000
      0000000000000000000000000000BDBDBD00CECECE00DEDEDE00EFEFEF00CECE
      CE005A5A5A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004242
      42007B7B7B00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C004A4A
      4A004A4A4A0073737300C6C6C6006B6B6B00424242004A4A4A00636363008484
      8400A5A5A500C6C6C600CECECE00CECECE00DEDEDE00F7F7F700BDBDBD00BDBD
      BD00C6C6C600A5A5A5007B7B7B00000000000000000000000000000000000000
      000000000000BDBDBD00CECECE00E7E7E700E7E7E700DEDEDE00B5B5B500C6C6
      C600E7E7E700DEDEDE00D6D6D600EFEFEF00FFFFFF00FFFFFF008C8C8C00A5A5
      A500FFFFFF00EFEFEF00A5A5A5009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C00EFEFEF00FFFFFF00ADADAD00B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B5B5B5007B7B
      7B0052525200000000000000000000000000000000000000000000000000B5B5
      B500CECECE00DEDEDE00EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      EF00B5B5B5005A5A5A0084848400CECECE00DEDEDE00DEDEDE00DEDEDE00CECE
      CE0084848400525252004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004242
      4200424242004242420042424200424242006B6B6B00848484009C9C9C00ADAD
      AD00BDBDBD00CECECE00DEDEDE00DEDEDE00CECECE00A5A5A500737373000000
      00000000000000000000000000000000000000000000B5B5B500CECECE00DEDE
      DE00EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700C6C6C600D6D6D600DEDEDE00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDE
      DE00CECECE00A5A5A5007373730073737300C6C6C600CECECE00CECECE00D6D6
      D600DEDEDE00DEDEDE00CECECE00949494006B6B6B0000000000000000000000
      0000000000000000000000000000BDBDBD00C6C6C600DEDEDE00E7E7E700C6C6
      C6005A5A5A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004242
      42007B7B7B00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C004A4A
      4A004A4A4A0073737300C6C6C6006B6B6B00424242004A4A4A004A4A4A006363
      63007B7B7B008C8C8C009494940094949400C6C6C600FFFFFF00BDBDBD00B5B5
      B500BDBDBD009C9C9C0073737300000000000000000000000000000000000000
      000000000000BDBDBD00C6C6C600E7E7E700E7E7E700CECECE00525252008C8C
      8C00EFEFEF00BDBDBD007B7B7B00C6C6C600FFFFFF00FFFFFF00A5A5A500B5B5
      B500FFFFFF00FFFFFF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00FFFFFF00FFFFFF00ADADAD00B5B5
      B500CECECE00CECECE00CECECE00CECECE00CECECE00D6D6D600B5B5B5007B7B
      7B0052525200000000000000000000000000000000000000000000000000B5B5
      B500C6C6C600DEDEDE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
      E700848484006363630084848400C6C6C600DEDEDE00E7E7E700E7E7E700CECE
      CE00848484005252520052525200525252004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A00424242004A4A4A005A5A5A006363630084848400A5A5
      A500B5B5B500C6C6C600D6D6D600DEDEDE00CECECE00A5A5A500737373000000
      00000000000000000000000000000000000000000000B5B5B500C6C6C600DEDE
      DE00EFEFEF00EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700CECECE00E7E7E700E7E7E700E7E7
      E700DEDEDE00DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
      DE00DEDEDE00C6C6C6008C8C8C00737373009C9C9C00C6C6C600CECECE00CECE
      CE00D6D6D600D6D6D600C6C6C600949494006363630000000000000000000000
      0000000000000000000000000000B5B5B500C6C6C600D6D6D600E7E7E700C6C6
      C6005A5A5A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004242
      42007B7B7B00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C004242
      42004242420073737300C6C6C6006B6B6B00424242004A4A4A00636363007B7B
      7B009C9C9C00B5B5B500BDBDBD00B5B5B500DEDEDE00FFFFFF00BDBDBD00B5B5
      B500BDBDBD009C9C9C0073737300000000000000000000000000000000000000
      000000000000B5B5B500C6C6C600E7E7E700E7E7E700DEDEDE00ADADAD00C6C6
      C600EFEFEF00E7E7E700E7E7E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700848484006B6B
      6B007B7B7B00848484007B7B7B007B7B7B0094949400CECECE00BDBDBD007373
      73004A4A4A00000000000000000000000000000000000000000000000000B5B5
      B500C6C6C600DEDEDE00E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00DEDE
      DE00737373006363630073737300B5B5B500E7E7E700E7E7E700E7E7E700C6C6
      C6007B7B7B005A5A5A0052525200525252004A4A4A004A4A4A004A4A4A006363
      6300737373006363630063636300636363006B6B6B005A5A5A00737373009C9C
      9C00A5A5A500BDBDBD00D6D6D600D6D6D600CECECE009C9C9C00737373000000
      00000000000000000000000000000000000000000000B5B5B500C6C6C600DEDE
      DE00E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00D6D6D600F7F7F700EFEFEF00E7E7
      E700E7E7E700DEDEDE00DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700DEDEDE00D6D6D600B5B5B500737373007B7B7B00C6C6C600C6C6C600C6C6
      C600D6D6D600D6D6D600C6C6C6008C8C8C006363630000000000000000000000
      0000000000000000000000000000B5B5B500C6C6C600D6D6D600DEDEDE00BDBD
      BD005A5A5A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004242
      42007B7B7B00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C005A5A
      5A006363630094949400C6C6C6006B6B6B004A4A4A00636363007B7B7B009494
      9400A5A5A500B5B5B500B5B5B500B5B5B500D6D6D600FFFFFF00BDBDBD00ADAD
      AD00BDBDBD009C9C9C0073737300000000000000000000000000000000000000
      000000000000B5B5B500C6C6C600E7E7E700E7E7E700EFEFEF00F7F7F700EFEF
      EF00E7E7E700EFEFEF00EFEFEF00F7F7F700FFFFFF00FFFFFF00D6D6D600DEDE
      DE00FFFFFF00F7F7F700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700DEDEDE00E7E7E700F7F7F700F7F7F700949494008484
      84009C9C9C009C9C9C009C9C9C009C9C9C00A5A5A500CECECE00B5B5B5007373
      73004A4A4A00000000000000000000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00C6C6
      C600737373006B6B6B006B6B6B00ADADAD00E7E7E700E7E7E700E7E7E700BDBD
      BD00737373005A5A5A005252520052525200525252005A5A5A006B6B6B008C8C
      8C007B7B7B006B6B6B006B6B6B00525252005A5A5A0063636300737373009494
      9400A5A5A500BDBDBD00CECECE00D6D6D600C6C6C6009C9C9C00737373000000
      00000000000000000000000000000000000000000000B5B5B500C6C6C600D6D6
      D600E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00DEDEDE00F7F7F700F7F7F700EFEF
      EF00EFEFEF00EFEFEF00E7E7E700DEDEDE00E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700DEDEDE00C6C6C6008484840073737300BDBDBD00BDBDBD00C6C6
      C600CECECE00CECECE00BDBDBD008C8C8C006363630000000000000000000000
      0000000000000000000000000000B5B5B500BDBDBD00CECECE00DEDEDE00BDBD
      BD005A5A5A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004242
      42007B7B7B00CECECE00CECECE00CECECE00CECECE00CECECE00BDBDBD00ADAD
      AD00BDBDBD00BDBDBD00A5A5A5006B6B6B00848484007B7B7B008C8C8C009494
      94009C9C9C00A5A5A500A5A5A5009C9C9C00CECECE00FFFFFF00BDBDBD00ADAD
      AD00B5B5B5009494940073737300000000000000000000000000000000000000
      000000000000B5B5B500BDBDBD00EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7
      E700EFEFEF00EFEFEF00EFEFEF00F7F7F700FFFFFF00F7F7F7007B7B7B009494
      9400FFFFFF00E7E7E700A5A5A5009C9C9C00A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A5009C9C9C009C9C9C00A5A5A500E7E7E700F7F7F700949494008484
      84009C9C9C00A5A5A500A5A5A5009C9C9C00ADADAD00D6D6D600B5B5B5007373
      73004A4A4A00000000000000000000000000000000000000000000000000ADAD
      AD00C6C6C600D6D6D600E7E7E700E7E7E700EFEFEF00E7E7E700E7E7E700ADAD
      AD00737373006B6B6B006B6B6B00A5A5A500E7E7E700E7E7E700E7E7E700BDBD
      BD00737373005A5A5A005A5A5A00525252006363630084848400949494008484
      84005A5A5A00424242004242420042424200424242005A5A5A00737373009494
      9400A5A5A500B5B5B500CECECE00D6D6D600C6C6C6009C9C9C00737373000000
      00000000000000000000000000000000000000000000ADADAD00C6C6C600D6D6
      D600E7E7E700E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
      E700E7E7E700D6D6D600E7E7E700DEDEDE00DEDEDE00E7E7E700E7E7E700E7E7
      E700E7E7E700DEDEDE00CECECE009494940073737300A5A5A500BDBDBD00BDBD
      BD00C6C6C600C6C6C600BDBDBD008C8C8C006363630000000000000000000000
      0000000000000000000000000000ADADAD00BDBDBD00CECECE00D6D6D600BDBD
      BD005A5A5A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004242
      42007B7B7B00CECECE00C6C6C600BDBDBD00ADADAD00ADADAD00ADADAD00A5A5
      A500A5A5A500A5A5A500A5A5A500B5B5B500CECECE00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600E7E7E700FFFFFF00B5B5B500ADAD
      AD00B5B5B500949494006B6B6B00000000000000000000000000000000000000
      000000000000ADADAD00BDBDBD00EFEFEF00EFEFEF00DEDEDE009C9C9C00BDBD
      BD00EFEFEF00D6D6D600B5B5B500DEDEDE00FFFFFF00F7F7F700C6C6C600CECE
      CE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F7009C9C9C007B7B
      7B008C8C8C008C8C8C008C8C8C00848484009C9C9C00D6D6D600B5B5B5007373
      73004A4A4A00000000000000000000000000000000000000000000000000ADAD
      AD00BDBDBD00D6D6D600DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E7009C9C
      9C007B7B7B007373730073737300A5A5A500DEDEDE00EFEFEF00EFEFEF00BDBD
      BD007B7B7B00636363005A5A5A006B6B6B0094949400A5A5A500949494007B7B
      7B005A5A5A0042424200424242004242420042424200424242005A5A5A009494
      94009C9C9C00B5B5B500CECECE00CECECE00C6C6C6009C9C9C00737373000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00D6D6
      D600DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700C6C6C600D6D6D600DEDEDE00E7E7E700E7E7E700E7E7
      E700E7E7E700DEDEDE00CECECE00949494007B7B7B009C9C9C00BDBDBD00BDBD
      BD00C6C6C600C6C6C600B5B5B5008C8C8C006363630000000000000000000000
      0000000000000000000000000000ADADAD00BDBDBD00CECECE00D6D6D600B5B5
      B500525252004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A00525252005252
      52007B7B7B00C6C6C600BDBDBD00949494008C8C8C009C9C9C00A5A5A5008C8C
      8C00949494009C9C9C009C9C9C009C9C9C00C6C6C600A5A5A5009C9C9C00A5A5
      A5009C9C9C009C9C9C009C9C9C009C9C9C00CECECE00FFFFFF00B5B5B500A5A5
      A500B5B5B500949494006B6B6B00000000000000000000000000000000000000
      000000000000ADADAD00BDBDBD00EFEFEF00EFEFEF00CECECE00636363009494
      9400EFEFEF00CECECE009C9C9C00CECECE00F7F7F700F7F7F700FFFFFF00FFFF
      FF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00DEDEDE00D6D6
      D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600B5B5B5007373
      73004A4A4A00000000000000000000000000000000000000000000000000ADAD
      AD00BDBDBD00CECECE00DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700ADAD
      AD007B7B7B00737373007373730094949400D6D6D600EFEFEF00EFEFEF00BDBD
      BD007B7B7B00636363006363630094949400B5B5B500B5B5B500949494008C8C
      8C007B7B7B005A5A5A0052525200424242004242420042424200525252009494
      94009C9C9C00B5B5B500C6C6C600CECECE00BDBDBD009C9C9C006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700BDBDBD00B5B5B500C6C6C600E7E7
      E700E7E7E700E7E7E700C6C6C600CECECE00DEDEDE00E7E7E700E7E7E700E7E7
      E700E7E7E700DEDEDE00CECECE00949494007B7B7B0094949400B5B5B500BDBD
      BD00C6C6C600C6C6C600B5B5B5008C8C8C005A5A5A0000000000000000000000
      0000000000000000000000000000ADADAD00B5B5B500C6C6C600D6D6D600BDBD
      BD0063636300525252005A5A5A00636363006B6B6B007B7B7B0094949400A5A5
      A500B5B5B500D6D6D600D6D6D600ADADAD00ADADAD00C6C6C600CECECE00BDBD
      BD00BDBDBD00C6C6C600C6C6C600BDBDBD00DEDEDE00C6C6C600BDBDBD00C6C6
      C600C6C6C600C6C6C600BDBDBD00BDBDBD00DEDEDE00FFFFFF00B5B5B500A5A5
      A500ADADAD008C8C8C006B6B6B00000000000000000000000000000000000000
      000000000000ADADAD00B5B5B500EFEFEF00EFEFEF00DEDEDE008C8C8C00B5B5
      B500EFEFEF00DEDEDE00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00C6C6C600EFEFEF00E7E7E700BDBDBD00CECE
      CE00DEDEDE00DEDEDE00DEDEDE00E7E7E700DEDEDE00DEDEDE00DEDEDE00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B5B5B5006B6B
      6B004A4A4A00000000000000000000000000000000000000000000000000ADAD
      AD00BDBDBD00CECECE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00BDBD
      BD007B7B7B007B7B7B007B7B7B0094949400D6D6D600EFEFEF00EFEFEF00CECE
      CE00848484006363630063636300A5A5A500B5B5B500B5B5B500A5A5A500A5A5
      A50094949400848484005A5A5A004242420042424200424242005A5A5A009494
      94009C9C9C00B5B5B500C6C6C600CECECE00BDBDBD00949494006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00D6D6D600A5A5A5008C8C8C0094949400A5A5A5009C9C9C00CECE
      CE00DEDEDE00D6D6D600ADADAD00CECECE00DEDEDE00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700D6D6D600949494007B7B7B009C9C9C00B5B5B500BDBD
      BD00C6C6C600C6C6C600B5B5B500848484005A5A5A0000000000000000000000
      0000000000000000000000000000A5A5A500B5B5B500C6C6C600CECECE00CECE
      CE00ADADAD00A5A5A500ADADAD00B5B5B500BDBDBD00C6C6C600CECECE00CECE
      CE00D6D6D600F7F7F700EFEFEF00B5B5B500ADADAD00C6C6C600C6C6C600ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00CECECE00B5B5B500ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00D6D6D600FFFFFF00B5B5B500A5A5
      A500ADADAD008C8C8C006B6B6B00000000000000000000000000000000000000
      000000000000A5A5A500B5B5B500EFEFEF00EFEFEF00DEDEDE0073737300A5A5
      A500F7F7F700D6D6D600ADADAD00A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500ADADAD00E7E7E700DEDEDE009C9C9C00A5A5
      A500C6C6C600CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600D6D6D600ADADAD006B6B
      6B0042424200000000000000000000000000000000000000000000000000ADAD
      AD00BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECE
      CE00848484007B7B7B00848484009C9C9C00CECECE00EFEFEF00EFEFEF00DEDE
      DE009C9C9C006B6B6B007B7B7B00ADADAD00ADADAD00B5B5B500B5B5B500ADAD
      AD0094949400848484005A5A5A00424242004242420042424200636363009C9C
      9C00A5A5A500B5B5B500C6C6C600CECECE00BDBDBD00949494006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00B5B5
      B5008C8C8C007B7B7B008484840094949400B5B5B500BDBDBD00ADADAD00A5A5
      A500A5A5A500B5B5B500CECECE00DEDEDE00E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700CECECE00949494007B7B7B009C9C9C00B5B5B500BDBD
      BD00C6C6C600C6C6C600B5B5B500848484005A5A5A0000000000000000000000
      0000000000000000000000000000A5A5A500B5B5B500BDBDBD00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00D6D6D600D6D6
      D600D6D6D600F7F7F700EFEFEF00B5B5B500B5B5B500C6C6C600C6C6C600B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500CECECE00B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500D6D6D600FFFFFF00B5B5B5009C9C
      9C00ADADAD008C8C8C0063636300000000000000000000000000000000000000
      000000000000A5A5A500B5B5B500EFEFEF00EFEFEF00E7E7E700B5B5B500CECE
      CE00EFEFEF00E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00EFEFEF00DEDEDE00848484005252
      5200A5A5A500D6D6D600ADADAD008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C00848484009C9C9C00CECECE00ADADAD006B6B
      6B0042424200000000000000000000000000000000000000000000000000ADAD
      AD00B5B5B500CECECE00D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D6009C9C9C007B7B7B00848484009C9C9C00BDBDBD00E7E7E700F7F7F700EFEF
      EF00BDBDBD0084848400ADADAD00BDBDBD00BDBDBD00C6C6C600BDBDBD00BDBD
      BD009C9C9C00848484005A5A5A0042424200424242004A4A4A00737373009C9C
      9C00ADADAD00BDBDBD00C6C6C600CECECE00BDBDBD00949494006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00B5B5B500CECE
      CE00D6D6D600DEDEDE00DEDEDE00DEDEDE00D6D6D600A5A5A500848484008484
      8400848484009C9C9C00BDBDBD00CECECE00DEDEDE00DEDEDE00D6D6D600CECE
      CE00CECECE00D6D6D600DEDEDE00E7E7E700EFEFEF00EFEFEF00E7E7E700E7E7
      E700E7E7E700E7E7E700CECECE008C8C8C007B7B7B00ADADAD00B5B5B500BDBD
      BD00C6C6C600C6C6C600B5B5B500848484005A5A5A0000000000000000000000
      0000000000000000000000000000A5A5A500ADADAD00BDBDBD00C6C6C600CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00F7F7F700EFEFEF00B5B5B500ADADAD00C6C6C600C6C6C600B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500CECECE00B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500D6D6D600FFFFFF00ADADAD009C9C
      9C00A5A5A5008C8C8C0063636300000000000000000000000000000000000000
      000000000000A5A5A500ADADAD00E7E7E700EFEFEF00EFEFEF00F7F7F700EFEF
      EF00EFEFEF00EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00DEDEDE00848484005A5A
      5A00A5A5A500CECECE00B5B5B500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500B5B5B500CECECE00ADADAD006B6B
      6B0042424200000000000000000000000000000000000000000000000000ADAD
      AD00BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00B5B5B5008C8C8C008484840094949400B5B5B500CECECE00EFEFEF00F7F7
      F700E7E7E700C6C6C600D6D6D600D6D6D600D6D6D600D6D6D600BDBDBD009C9C
      9C009C9C9C009C9C9C005A5A5A004242420042424200525252008C8C8C00A5A5
      A500B5B5B500BDBDBD00CECECE00CECECE00BDBDBD00949494006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00D6D6D600DEDEDE00DEDEDE00DEDEDE00D6D6D6009C9C9C009C9C9C00ADAD
      AD00CECECE00DEDEDE00E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
      E700E7E7E700E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
      E700E7E7E700DEDEDE00BDBDBD008484840084848400B5B5B500BDBDBD00C6C6
      C600CECECE00C6C6C600B5B5B500848484005A5A5A0000000000000000000000
      0000000000000000000000000000A5A5A500B5B5B500BDBDBD00C6C6C600CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00EFEFEF00E7E7E700ADADAD00A5A5A500BDBDBD00BDBDBD00A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500C6C6C600ADADAD00A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500CECECE00FFFFFF00ADADAD009C9C
      9C00A5A5A5008484840063636300000000000000000000000000000000000000
      000000000000A5A5A500B5B5B500E7E7E700E7E7E700EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00D6D6D600848484005A5A
      5A00A5A5A500CECECE00ADADAD00949494009494940094949400949494009494
      94009494940094949400949494008C8C8C009C9C9C00C6C6C600A5A5A5006363
      630042424200000000000000000000000000000000000000000000000000ADAD
      AD00BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600ADADAD008C8C8C0094949400A5A5A500ADADAD00D6D6D600F7F7
      F700F7F7F700F7F7F700E7E7E700E7E7E700DEDEDE00B5B5B5007B7B7B006363
      63009C9C9C009C9C9C005A5A5A00424242004242420073737300A5A5A500ADAD
      AD00BDBDBD00C6C6C600CECECE00CECECE00BDBDBD008C8C8C00636363000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00D6D6D600DEDEDE00DEDEDE00DEDEDE00D6D6D600BDBDBD00D6D6D600D6D6
      D600E7E7E700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00E7E7E700D6D6D600A5A5A500848484008C8C8C00BDBDBD00C6C6C600CECE
      CE00CECECE00CECECE00B5B5B500848484005A5A5A0000000000000000000000
      0000000000000000000000000000ADADAD00B5B5B500BDBDBD00C6C6C600CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00EFEFEF00E7E7E700BDBDBD00B5B5B500C6C6C600CECECE00B5B5
      B500BDBDBD00BDBDBD00BDBDBD00B5B5B500D6D6D600BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00B5B5B500D6D6D600F7F7F700ADADAD009C9C
      9C00A5A5A5008484840063636300000000000000000000000000000000000000
      000000000000ADADAD00B5B5B500E7E7E700E7E7E700D6D6D6008C8C8C00ADAD
      AD00EFEFEF00CECECE00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500ADADAD00E7E7E700D6D6D6007B7B7B004242
      420094949400CECECE00A5A5A5008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C00848484009C9C9C00BDBDBD00ADADAD006B6B
      6B0042424200000000000000000000000000000000000000000000000000B5B5
      B500BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00C6C6C6009C9C9C00A5A5A500B5B5B500C6C6C600D6D6D600EFEF
      EF00FFFFFF00E7E7E700E7E7E700D6D6D600D6D6D6009C9C9C005A5A5A008484
      8400B5B5B500949494005252520042424200525252009C9C9C00B5B5B500BDBD
      BD00C6C6C600CECECE00D6D6D600CECECE00B5B5B5008C8C8C00636363000000
      00000000000000000000000000000000000000000000B5B5B500BDBDBD00CECE
      CE00D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600E7E7E700FFFF
      FF00F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
      E700DEDEDE00C6C6C6008C8C8C0084848400BDBDBD00C6C6C600CECECE00CECE
      CE00CECECE00CECECE00B5B5B5007B7B7B005A5A5A0000000000000000000000
      0000000000000000000000000000B5B5B500BDBDBD00BDBDBD00C6C6C600CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00EFEFEF00DEDEDE009C9C9C0094949400ADADAD00ADADAD009494
      94009C9C9C009C9C9C009C9C9C009C9C9C00BDBDBD00A5A5A5009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0094949400C6C6C600F7F7F700ADADAD009C9C
      9C009C9C9C008484840063636300000000000000000000000000000000000000
      000000000000B5B5B500BDBDBD00E7E7E700E7E7E700D6D6D6007B7B7B00A5A5
      A500EFEFEF00D6D6D600BDBDBD00B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500BDBDBD00E7E7E700D6D6D600949494008C8C
      8C00B5B5B500C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00C6C6C600B5B5B5007373
      73004A4A4A00000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600CECECE00D6D6D600D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00D6D6D600C6C6C600B5B5B500BDBDBD00E7E7E700E7E7E700C6C6
      C600BDBDBD009C9C9C00A5A5A500C6C6C600ADADAD009C9C9C008C8C8C008484
      840073737300636363004A4A4A004A4A4A008C8C8C00B5B5B500BDBDBD00C6C6
      C600CECECE00D6D6D600D6D6D600CECECE00ADADAD007B7B7B00525252000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600CECE
      CE00D6D6D600D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00EFEFEF00F7F7F700F7F7F700F7F7F700F7F7
      F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
      E700CECECE00A5A5A5008C8C8C009C9C9C00C6C6C600CECECE00CECECE00D6D6
      D600D6D6D600C6C6C600ADADAD00737373005252520000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600BDBDBD00C6C6C600C6C6
      C600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00EFEFEF00E7E7E700BDBDBD00BDBDBD00CECECE00CECECE00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00D6D6D600BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00D6D6D600F7F7F700ADADAD009494
      9400949494007B7B7B005A5A5A00000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600DEDEDE00E7E7E700D6D6D6009C9C9C00BDBD
      BD00E7E7E700D6D6D600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00C6C6C600DEDEDE00CECECE009C9C9C00ADAD
      AD00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00ADADAD007373
      73004A4A4A00000000000000000000000000000000000000000000000000DEDE
      DE00D6D6D600CECECE00CECECE00D6D6D600D6D6D600DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600DEDEDE00EFEFEF00C6C6C6009494
      94008C8C8C007B7B7B007B7B7B00A5A5A5009C9C9C009C9C9C00949494009C9C
      9C00737373004A4A4A004242420084848400BDBDBD00BDBDBD00C6C6C600CECE
      CE00D6D6D600D6D6D600CECECE00BDBDBD009C9C9C0063636300525252000000
      00000000000000000000000000000000000000000000DEDEDE00D6D6D600CECE
      CE00CECECE00D6D6D600D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00FFFFFF00FFFFFF00FFFFFF00EFEFEF00EFEFEF00EFEFEF00F7F7F700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700DEDEDE00CECE
      CE00ADADAD009494940094949400CECECE00CECECE00D6D6D600D6D6D600D6D6
      D600CECECE00BDBDBD009C9C9C005A5A5A004A4A4A0000000000000000000000
      0000000000000000000000000000DEDEDE00D6D6D600CECECE00C6C6C600C6C6
      C600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00EFEFEF00DEDEDE009C9C9C0094949400ADADAD00ADADAD009494
      94009C9C9C009C9C9C009C9C9C009C9C9C00BDBDBD009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0094949400C6C6C600F7F7F700A5A5A5008C8C
      8C008C8C8C006B6B6B0052525200000000000000000000000000000000000000
      000000000000DEDEDE00D6D6D600DEDEDE00DEDEDE00C6C6C6005A5A5A008C8C
      8C00E7E7E700BDBDBD00949494008C8C8C009494940094949400949494009494
      940094949400949494008C8C8C009C9C9C00D6D6D600CECECE00A5A5A500BDBD
      BD00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600B5B5B500949494006363
      63004A4A4A000000000000000000000000000000000000000000000000000000
      0000E7E7E700DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE009C9C
      9C008C8C8C00848484007B7B7B00ADADAD00DEDEDE00DEDEDE00D6D6D6009494
      94005A5A5A005252520094949400BDBDBD00CECECE00CECECE00CECECE00D6D6
      D600D6D6D600D6D6D600C6C6C600ADADAD007B7B7B0052525200000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600DEDE
      DE00DEDEDE00FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEFEF00EFEFEF00EFEF
      EF00E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600C6C6C600ADAD
      AD009C9C9C009C9C9C00CECECE00D6D6D600D6D6D600D6D6D600D6D6D600CECE
      CE00C6C6C600ADADAD007B7B7B00525252000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF00DEDEDE00CECECE00C6C6
      C600C6C6C600C6C6C600CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00E7E7E700DEDEDE00ADADAD00ADADAD00BDBDBD00BDBDBD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00C6C6C600ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00CECECE00EFEFEF00A5A5A5008484
      84007B7B7B005252520000000000000000000000000000000000000000000000
      00000000000000000000EFEFEF00DEDEDE00DEDEDE00D6D6D600ADADAD00BDBD
      BD00DEDEDE00D6D6D600D6D6D600CECECE00D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600CECECE00D6D6D600DEDEDE00CECECE00B5B5B500C6C6
      C600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600C6C6C600BDBDBD00A5A5A5007B7B7B005252
      5200000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700EFEFEF00E7E7E700D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600DEDEDE00E7E7E700C6C6
      C600A5A5A5008C8C8C00848484008C8C8C00B5B5B500A5A5A500848484006363
      63007B7B7B00ADADAD00C6C6C600CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600B5B5B5008C8C8C00636363005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700EFEF
      EF00E7E7E700D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600F7F7F700FFFFFF00FFFFFF00FFFFFF00EFEFEF00E7E7
      E700E7E7E700DEDEDE00DEDEDE00D6D6D600C6C6C600B5B5B500ADADAD00A5A5
      A500ADADAD00CECECE00CECECE00CECECE00D6D6D600CECECE00CECECE00C6C6
      C600B5B5B5008C8C8C0063636300525252000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00DEDEDE00CECE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600E7E7E700DEDEDE00ADADAD00A5A5A500BDBDBD00BDBDBD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00C6C6C600ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00CECECE00EFEFEF00B5B5B5007B7B
      7B005A5A5A005A5A5A0000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700D6D6D600D6D6D600D6D6D600DEDEDE00DEDE
      DE00D6D6D600D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600BDBDBD00B5B5B500A5A5A5008C8C8C00636363005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00F7F7F700E7E7E700D6D6D600CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6
      C600ADADAD00949494009494940094949400949494008C8C8C0094949400ADAD
      AD00C6C6C600C6C6C600C6C6C600C6C6C600CECECE00CECECE00C6C6C600C6C6
      C600BDBDBD00ADADAD008C8C8C006B6B6B006363630000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00F7F7F700E7E7E700D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00DEDEDE00EFEFEF00EFEFEF00E7E7
      E700DEDEDE00DEDEDE00D6D6D600CECECE00BDBDBD00A5A5A500A5A5A500C6C6
      C600CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600BDBDBD00ADAD
      AD008C8C8C006B6B6B0063636300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00F7F7F700E7E7
      E700D6D6D600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00DEDEDE00E7E7E700E7E7E700EFEFEF00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700ADADAD006B6B
      6B00636363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00F7F7F700E7E7E700D6D6D600C6C6
      C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00B5B5B500A5A5A5008C8C8C006B6B6B00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00F7F7F700E7E7E700DEDEDE00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00B5B5
      B500A5A5A5008C8C8C00737373006B6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00F7F7F700E7E7E700DEDEDE00CECECE00CECECE00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500BDBDBD00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00B5B5B500A5A5A5008C8C
      8C00737373006B6B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00F7F7
      F700E7E7E700DEDEDE00CECECE00C6C6C600C6C6C600BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00B5B5B500ADADAD00A5A5A5008C8C8C007B7B7B006B6B
      6B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00F7F7F700E7E7E700DEDE
      DE00CECECE00C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00B5B5B500ADADAD00A5A5A5008C8C8C007B7B7B006B6B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700E7E7E700D6D6D600CECE
      CE00C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5B500A5A5
      A500949494008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700E7E7E700D6D6D600CECECE00C6C6C600BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5B500A5A5A500949494008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700E7E7E700DEDEDE00CECECE00C6C6C600C6C6C600C6C6C600C6C6
      C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00B5B5B500A5A5A5009C9C9C008C8C8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700E7E7
      E700DEDEDE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00B5B5B500A5A5A5009C9C9C008C8C8C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003131310031313100292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002121210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031313100313131002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002121
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000313131003131310029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290021212100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900212121000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003131310031313100393939004A4A4A00525252005A5A
      5A005A5A5A005A5A5A005252520052525200525252004A4A4A004A4A4A004A4A
      4A004A4A4A0052525200525252005A5A5A005252520052525200525252005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005252
      5200424242003131310029292900212121000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003131310031313100393939004A4A4A00525252005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005252
      52005252520052525200525252005252520052525200525252004A4A4A004A4A
      4A00525252005252520052525200525252005252520052525200424242003131
      3100292929002121210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000313131003131
      3100393939004A4A4A00525252005A5A5A005A5A5A005A5A5A005A5A5A005252
      5200525252005252520052525200525252005252520052525200525252005252
      5200525252005252520052525200525252005252520052525200525252005252
      5200525252005252520052525200525252004242420031313100292929002121
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003131310031313100313131004242
      42004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A00525252005252520052525200525252005A5A5A005A5A
      5A005A5A5A005252520042424200313131002929290021212100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003939390039393900525252006B6B6B007B7B7B007B7B7B007B7B
      7B0073737300737373006B6B6B006B6B6B006B6B6B00737373007B7B7B008484
      84009C9C9C00ADADAD00B5B5B500B5B5B500949494006B6B6B00737373007B7B
      7B007B7B7B008484840084848400848484008484840084848400848484008484
      84007B7B7B006B6B6B004A4A4A00292929002121210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003939
      390039393900525252006B6B6B007B7B7B008484840094949400949494009494
      9400949494008C8C8C008C8C8C00848484008484840084848400848484008484
      84008484840084848400848484007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B0084848400848484007B7B7B00737373006363
      63004A4A4A002929290021212100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039393900393939005252
      52006B6B6B007B7B7B008C8C8C008C8C8C008C8C8C008C8C8C00848484008484
      84007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B0084848400848484007B7B7B007B7B7B00737373006B6B6B004A4A4A002929
      2900212121000000000000000000000000000000000000000000000000000000
      000000000000000000000000000039393900393939004A4A4A005A5A5A006363
      63006B6B6B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00737373007373
      73007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0084848400848484008C8C
      8C008C8C8C00848484007B7B7B00636363004A4A4A0029292900212121000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004242420042424200636363007B7B7B00848484008C8C8C00848484008484
      84007B7B7B008C8C8C0094949400949494009C9C9C00B5B5B500BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00B5B5B500B5B5B500ADADAD007B7B7B007B7B7B008484
      8400848484008C8C8C00949494009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00949494008C8C8C0073737300525252002929290021212100000000000000
      0000000000000000000000000000000000000000000000000000424242004242
      4200636363007B7B7B008C8C8C0094949400A5A5A500EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00E7E7E700DEDEDE007B7B7B007B7B7B008484
      8400737373005252520029292900212121000000000000000000000000000000
      0000000000000000000000000000000000004242420042424200636363007B7B
      7B008C8C8C0094949400E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700D6D6D600949494008C8C8C008C8C8C008C8C8C00737373005252
      5200292929002121210000000000000000000000000000000000000000000000
      0000000000000000000042424200424242005A5A5A006B6B6B00737373007373
      73007B7B7B00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700EFEF
      EF00D6D6D6009C9C9C00949494008C8C8C007373730052525200292929002121
      2100000000000000000000000000000000000000000000000000000000000000
      00004A4A4A00636363007B7B7B008C8C8C008C8C8C0094949400A5A5A500ADAD
      AD00ADADAD00BDBDBD00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00B5B5B500B5B5B500A5A5A5005A5A5A007B7B7B008484
      8400848484008C8C8C009C9C9C009C9C9C00A5A5A500A5A5A500A5A5A500A5A5
      A5009C9C9C009C9C9C008C8C8C007B7B7B004A4A4A0029292900000000000000
      00000000000000000000000000000000000000000000000000004A4A4A006363
      630084848400949494009C9C9C009C9C9C00ADADAD00EFEFEF00F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700EFEFEF00DEDEDE005A5A5A00737373008C8C
      8C008C8C8C007B7B7B004A4A4A00292929000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0063636300848484009494
      94009C9C9C009C9C9C00EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700EFEFEF00D6D6D6008C8C8C0084848400949494009C9C9C008C8C8C007B7B
      7B004A4A4A002929290000000000000000000000000000000000000000000000
      000000000000000000004A4A4A005A5A5A00737373007B7B7B007B7B7B007B7B
      7B007B7B7B00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700EFEF
      EF00D6D6D6009494940094949400949494008C8C8C007B7B7B004A4A4A002929
      2900000000000000000000000000000000000000000000000000000000005252
      52005A5A5A007B7B7B009C9C9C00BDBDBD00BDBDBD00C6C6C600CECECE00CECE
      CE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00B5B5B500B5B5B5009C9C9C00424242007B7B7B007B7B
      7B00848484008C8C8C00949494009C9C9C00A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A5009C9C9C008C8C8C006B6B6B0039393900292929000000
      00000000000000000000000000000000000000000000525252005A5A5A007B7B
      7B00949494009C9C9C00A5A5A500A5A5A500A5A5A500F7F7F700D6D6D600A5A5
      A500A5A5A500BDBDBD00F7F7F700BDBDBD00A5A5A500A5A5A500A5A5A500A5A5
      A500ADADAD00EFEFEF00C6C6C600A5A5A500A5A5A500BDBDBD00F7F7F700BDBD
      BD00A5A5A500A5A5A500A5A5A500DEDEDE00DEDEDE00424242006B6B6B008C8C
      8C009C9C9C008C8C8C006B6B6B00393939002929290000000000000000000000
      0000000000000000000000000000525252005A5A5A007B7B7B00949494009C9C
      9C009C9C9C009C9C9C00EFEFEF00EFEFEF00E7E7E700EFEFEF00EFEFEF00E7E7
      E700E7E7E700E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00D6D6D6007B7B7B0084848400949494009C9C9C009C9C9C008C8C
      8C006B6B6B003939390029292900000000000000000000000000000000000000
      000000000000525252005A5A5A00737373008484840084848400848484008484
      84007B7B7B00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700EFEFEF00EFEF
      EF00D6D6D600848484008C8C8C009C9C9C009C9C9C008C8C8C006B6B6B003939
      3900292929000000000000000000000000000000000000000000000000005A5A
      5A00737373008C8C8C00D6D6D600DEDEDE00D6D6D600D6D6D600CECECE00CECE
      CE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00B5B5B50094949400313131007B7B7B007B7B
      7B007B7B7B00848484008C8C8C009C9C9C00A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A5009C9C9C00949494007B7B7B0052525200313131000000
      000000000000000000000000000000000000000000005A5A5A00737373008484
      8400949494009C9C9C009C9C9C009C9C9C00A5A5A500F7F7F700D6D6D6009C9C
      9C009C9C9C00B5B5B500F7F7F700B5B5B5009C9C9C00A5A5A500A5A5A5009C9C
      9C00A5A5A500EFEFEF00C6C6C6009C9C9C009C9C9C00B5B5B500F7F7F700B5B5
      B5009C9C9C009C9C9C00A5A5A500DEDEDE00DEDEDE0039393900636363008C8C
      8C009C9C9C00949494007B7B7B00525252003131310000000000000000000000
      00000000000000000000000000005A5A5A00737373008C8C8C009C9C9C009C9C
      9C009C9C9C0094949400EFEFEF00EFEFEF00EFEFEF00D6D6D600C6C6C600E7E7
      E700EFEFEF00E7E7E700E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00E7E7
      E700F7F7F700D6D6D600737373007B7B7B00949494009C9C9C009C9C9C009494
      94007B7B7B005252520031313100000000000000000000000000000000000000
      0000000000005A5A5A0073737300848484008C8C8C008C8C8C00848484008484
      84007B7B7B00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00D6D6D60073737300848484009C9C9C009C9C9C00949494007B7B7B005252
      5200313131000000000000000000000000000000000000000000000000006B6B
      6B007B7B7B00ADADAD00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECE
      CE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00B5B5B50094949400212121007B7B7B007B7B
      7B007B7B7B00848484008C8C8C009C9C9C00A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C9C008484840063636300424242000000
      000000000000000000000000000000000000000000006B6B6B007B7B7B008C8C
      8C00949494009494940094949400949494009C9C9C00EFEFEF00F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700DEDEDE0039393900636363008C8C
      8C009C9C9C009C9C9C0084848400636363004242420000000000000000000000
      00000000000000000000000000006B6B6B0084848400949494009C9C9C009C9C
      9C009C9C9C0094949400EFEFEF00EFEFEF00EFEFEF008C8C8C005A5A5A00C6C6
      C600F7F7F700DEDEDE007B7B7B005A5A5A005A5A5A00636363005A5A5A006363
      630063636300636363005A5A5A005A5A5A005A5A5A005A5A5A0073737300C6C6
      C600F7F7F700D6D6D600737373007B7B7B00949494009C9C9C009C9C9C009494
      9400848484006363630042424200000000000000000000000000000000000000
      0000000000006B6B6B007B7B7B008C8C8C008C8C8C008C8C8C008C8C8C008484
      84007B7B7B00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7
      E700E7E7E700DEDEDE00E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700EFEFEF00EFEF
      EF00D6D6D6006B6B6B0084848400949494009C9C9C0094949400848484006363
      6300424242000000000000000000000000000000000000000000000000007373
      730084848400B5B5B500DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0094949400181818006B6B6B007B7B
      7B007B7B7B00848484008C8C8C0094949400A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C9C008C8C8C006B6B6B004A4A4A000000
      0000000000000000000000000000000000000000000073737300848484008C8C
      8C008C8C8C0094949400949494009494940094949400EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00DEDEDE0039393900636363008484
      84009C9C9C009C9C9C008C8C8C006B6B6B004A4A4A0000000000000000000000
      00000000000000000000000000007B7B7B0084848400949494009C9C9C009C9C
      9C009C9C9C0094949400EFEFEF00EFEFEF00EFEFEF008484840052525200C6C6
      C600F7F7F700E7E7E700B5B5B500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500B5B5B500D6D6
      D600F7F7F700D6D6D600737373007B7B7B008C8C8C009C9C9C009C9C9C009C9C
      9C008C8C8C006B6B6B004A4A4A00000000000000000000000000000000000000
      0000000000007B7B7B008484840094949400949494008C8C8C008C8C8C008484
      84007B7B7B00EFEFEF00EFEFEF00EFEFEF00EFEFEF00BDBDBD007B7B7B007B7B
      7B007B7B7B0084848400D6D6D600EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF009C9C9C007B7B7B007B7B7B007B7B7B00ADADAD00EFEFEF00F7F7
      F700D6D6D6006B6B6B007B7B7B00949494009494940094949400848484006B6B
      6B004A4A4A000000000000000000000000000000000000000000000000007B7B
      7B0084848400B5B5B500DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600CECE
      CE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0094949400101010005A5A5A007B7B
      7B007B7B7B007B7B7B00848484008C8C8C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C00A5A5A500A5A5A5009C9C9C008C8C8C006B6B6B004A4A4A000000
      000000000000000000000000000000000000000000007B7B7B00848484008484
      84008C8C8C008C8C8C008C8C8C008C8C8C0094949400F7F7F700BDBDBD006363
      6300636363008C8C8C00F7F7F7008C8C8C00636363006B6B6B006B6B6B006363
      630073737300F7F7F700A5A5A5005A5A5A00636363008C8C8C00F7F7F7008C8C
      8C0063636300636363006B6B6B00D6D6D600E7E7E700393939005A5A5A008484
      8400949494009C9C9C008C8C8C006B6B6B004A4A4A0000000000000000000000
      00000000000000000000000000007B7B7B008C8C8C00949494009C9C9C009C9C
      9C00949494008C8C8C00EFEFEF00EFEFEF00EFEFEF00D6D6D600C6C6C600E7E7
      E700EFEFEF00EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      EF00F7F7F700D6D6D60073737300737373008C8C8C00949494009C9C9C009C9C
      9C008C8C8C006B6B6B004A4A4A00000000000000000000000000000000000000
      0000000000007B7B7B008C8C8C009494940094949400949494008C8C8C008484
      84007B7B7B00EFEFEF00EFEFEF00F7F7F700D6D6D600ADADAD00A5A5A500A5A5
      A500A5A5A500A5A5A500C6C6C600EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00CECECE00A5A5A500A5A5A500A5A5A500A5A5A500ADADAD00E7E7E700F7F7
      F700D6D6D6006B6B6B007B7B7B008C8C8C009494940094949400848484006B6B
      6B004A4A4A000000000000000000000000000000000000000000000000007B7B
      7B0084848400B5B5B500DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600CECE
      CE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600BDBDBD00BDBDBD00BDBDBD00BDBDBD009494940010101000424242008484
      84007B7B7B007B7B7B0084848400848484008C8C8C0094949400949494009494
      94009C9C9C009C9C9C009C9C9C009C9C9C008C8C8C006B6B6B004A4A4A000000
      000000000000000000000000000000000000000000007B7B7B00848484008484
      84008C8C8C008C8C8C008C8C8C008C8C8C009C9C9C00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00F7F7F700DEDEDE0039393900636363008484
      84009C9C9C009C9C9C008C8C8C006B6B6B004A4A4A0000000000000000000000
      0000000000000000000000000000848484008C8C8C00949494009C9C9C009C9C
      9C00949494008C8C8C00EFEFEF00EFEFEF00EFEFEF00F7F7F700FFFFFF00F7F7
      F700EFEFEF00EFEFEF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7
      F700F7F7F700D6D6D6006B6B6B007373730084848400949494009C9C9C009C9C
      9C008C8C8C006B6B6B004A4A4A00000000000000000000000000000000000000
      000000000000848484008C8C8C009494940094949400949494008C8C8C008484
      84007B7B7B00EFEFEF00EFEFEF00F7F7F700CECECE008C8C8C00848484008484
      84008484840084848400BDBDBD00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00B5B5B500848484008484840084848400848484008C8C8C00E7E7E700F7F7
      F700D6D6D6006B6B6B007B7B7B008C8C8C00949494008C8C8C00848484006B6B
      6B004A4A4A000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B00B5B5B500DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600CECE
      CE00CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6
      C600BDBDBD00BDBDBD00BDBDBD00BDBDBD009494940008080800313131008484
      84007B7B7B007B7B7B007B7B7B00848484008484840084848400848484008C8C
      8C008C8C8C009494940094949400949494008C8C8C006B6B6B004A4A4A000000
      000000000000000000000000000000000000000000007B7B7B00848484008484
      84008C8C8C008C8C8C008C8C8C008C8C8C009C9C9C00EFEFEF00F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700E7E7E70039393900636363008C8C
      8C009C9C9C009C9C9C008C8C8C006B6B6B004A4A4A0000000000000000000000
      0000000000000000000000000000848484008C8C8C00949494009C9C9C009C9C
      9C00949494008C8C8C00F7F7F700F7F7F700EFEFEF00CECECE00B5B5B500E7E7
      E700F7F7F700EFEFEF00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600E7E7
      E700F7F7F700D6D6D6006B6B6B006B6B6B0084848400949494009C9C9C009C9C
      9C008C8C8C006B6B6B004A4A4A00000000000000000000000000000000000000
      000000000000848484008C8C8C009494940094949400949494008C8C8C008484
      84007B7B7B00EFEFEF00EFEFEF00F7F7F700D6D6D6008C8C8C007B7B7B007B7B
      7B007B7B7B0084848400BDBDBD00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00B5B5B500848484007B7B7B00848484007B7B7B008C8C8C00E7E7E700F7F7
      F700D6D6D6006B6B6B007B7B7B008C8C8C008C8C8C008C8C8C00848484006B6B
      6B004A4A4A000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B00B5B5B500DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6
      D600CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600BDBDBD00BDBDBD00BDBDBD009494940000000000313131008484
      8400848484008484840084848400848484008484840084848400848484008484
      84008C8C8C008C8C8C009494940094949400848484006B6B6B004A4A4A000000
      000000000000000000000000000000000000000000007B7B7B00848484008484
      84008C8C8C008C8C8C008C8C8C008C8C8C009C9C9C00F7F7F700D6D6D600ADAD
      AD00A5A5A500BDBDBD00F7F7F700BDBDBD00A5A5A500ADADAD00ADADAD00ADAD
      AD00ADADAD00EFEFEF00C6C6C600A5A5A500A5A5A500BDBDBD00F7F7F700BDBD
      BD00A5A5A500ADADAD00ADADAD00E7E7E700E7E7E70042424200636363008C8C
      8C009C9C9C009C9C9C008C8C8C006B6B6B004A4A4A0000000000000000000000
      0000000000000000000000000000848484008C8C8C00949494009C9C9C009C9C
      9C00949494008C8C8C00F7F7F700F7F7F700EFEFEF00848484004A4A4A00C6C6
      C600FFFFFF00E7E7E700ADADAD009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00ADADAD00DEDE
      DE00FFFFFF00D6D6D6006B6B6B006B6B6B00848484008C8C8C00949494009C9C
      9C008C8C8C006B6B6B004A4A4A00000000000000000000000000000000000000
      000000000000848484008C8C8C0094949400949494008C8C8C00848484008484
      84007B7B7B00F7F7F700F7F7F700F7F7F700D6D6D6008C8C8C007B7B7B007B7B
      7B007B7B7B0084848400BDBDBD00EFEFEF00F7F7F700F7F7F700F7F7F700EFEF
      EF00BDBDBD00848484007B7B7B00848484007B7B7B008C8C8C00E7E7E700FFFF
      FF00DEDEDE006B6B6B00737373008C8C8C008C8C8C008C8C8C00848484006B6B
      6B004A4A4A000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B00ADADAD00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6
      D600CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600BDBDBD00BDBDBD00BDBDBD0094949400292929007B7B7B00BDBD
      BD00CECECE00D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600E7E7E700BDBDBD00848484007B7B7B006B6B6B004A4A4A000000
      000000000000000000000000000000000000000000007B7B7B00848484008484
      84008C8C8C008C8C8C008C8C8C008C8C8C009C9C9C00F7F7F700CECECE009C9C
      9C009C9C9C00B5B5B500F7F7F700B5B5B5009C9C9C009C9C9C009C9C9C009C9C
      9C00A5A5A500EFEFEF00C6C6C600949494009C9C9C00B5B5B500F7F7F700B5B5
      B5009C9C9C009C9C9C009C9C9C00DEDEDE00E7E7E700424242006B6B6B009494
      94009C9C9C009C9C9C008C8C8C006B6B6B004A4A4A0000000000000000000000
      0000000000000000000000000000848484008C8C8C00949494009C9C9C009C9C
      9C009494940084848400F7F7F700F7F7F700EFEFEF009C9C9C006B6B6B00D6D6
      D600FFFFFF00EFEFEF00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600EFEF
      EF00FFFFFF00D6D6D6006B6B6B006B6B6B00848484008C8C8C009C9C9C009C9C
      9C008C8C8C006B6B6B004A4A4A00000000000000000000000000000000000000
      000000000000848484008C8C8C008C8C8C00949494008C8C8C00848484008484
      84007B7B7B00F7F7F700F7F7F700F7F7F700D6D6D6008C8C8C007B7B7B008484
      84007B7B7B0084848400C6C6C600EFEFEF00F7F7F700F7F7F700F7F7F700F7F7
      F700BDBDBD008484840084848400848484007B7B7B008C8C8C00E7E7E700FFFF
      FF00DEDEDE006B6B6B00737373008C8C8C008C8C8C008C8C8C00848484006B6B
      6B004A4A4A000000000000000000000000000000000000000000000000008C8C
      8C0094949400BDBDBD00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6
      D600CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600BDBDBD00BDBDBD009C9C9C0021212100525252007373
      730084848400A5A5A5009C9C9C0084848400848484008C8C8C00848484008484
      840094949400E7E7E700BDBDBD008C8C8C00949494007B7B7B005A5A5A000000
      00000000000000000000000000000000000000000000949494009C9C9C00A5A5
      A500ADADAD00ADADAD00ADADAD00ADADAD00BDBDBD00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700E7E7E7005252520084848400B5B5
      B500BDBDBD00B5B5B500A5A5A500848484005A5A5A0000000000000000000000
      000000000000000000000000000094949400A5A5A500ADADAD00B5B5B500B5B5
      B500B5B5B500ADADAD00F7F7F700F7F7F700F7F7F700E7E7E700DEDEDE00EFEF
      EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700FFFFFF00DEDEDE00848484008C8C8C00A5A5A500B5B5B500BDBDBD00B5B5
      B500A5A5A500848484005A5A5A00000000000000000000000000000000000000
      00000000000094949400A5A5A500ADADAD00ADADAD00ADADAD00ADADAD00A5A5
      A500A5A5A500F7F7F700F7F7F700FFFFFF00D6D6D6008C8C8C007B7B7B007B7B
      7B007B7B7B0084848400C6C6C600F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BDBDBD00848484007B7B7B007B7B7B007B7B7B008C8C8C00E7E7E700FFFF
      FF00E7E7E7008484840094949400ADADAD00ADADAD00ADADAD009C9C9C007B7B
      7B005A5A5A00000000000000000000000000000000000000000000000000ADAD
      AD00B5B5B500D6D6D600DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6
      D600D6D6D600CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600BDBDBD00BDBDBD008C8C8C0039393900636363008C8C
      8C009C9C9C00B5B5B500B5B5B5009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00A5A5A500E7E7E700C6C6C600A5A5A500B5B5B500949494006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00F7F7F700EFEFEF00F7F7
      F700F7F7F700EFEFEF00EFEFEF00EFEFEF00F7F7F700EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00F7F7F700F7F7F700F7F7F700F7F7F700E7E7E7006B6B6B00A5A5A500D6D6
      D600DEDEDE00DEDEDE00C6C6C6009C9C9C006B6B6B0000000000000000000000
      0000000000000000000000000000ADADAD00BDBDBD00CECECE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00F7F7F700F7F7F700F7F7F700FFFFFF00F7F7F700FFFF
      FF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7E7E700A5A5A500B5B5B500D6D6D600DEDEDE00DEDEDE00D6D6
      D600C6C6C6009C9C9C006B6B6B00000000000000000000000000000000000000
      000000000000ADADAD00BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00D6D6
      D600D6D6D600F7F7F700F7F7F700FFFFFF00D6D6D60094949400949494009494
      94009494940094949400C6C6C600F7F7F700F7F7F700F7F7F700FFFFFF00F7F7
      F700BDBDBD00949494009494940094949400949494009C9C9C00EFEFEF00FFFF
      FF00E7E7E7009C9C9C00BDBDBD00D6D6D600DEDEDE00D6D6D600BDBDBD009494
      94006B6B6B00000000000000000000000000000000000000000000000000C6C6
      C600D6D6D600E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600BDBDBD009C9C9C00737373007B7B7B007B7B
      7B007B7B7B009C9C9C009C9C9C007B7B7B008484840084848400848484007B7B
      7B008C8C8C00E7E7E700D6D6D600BDBDBD00CECECE00ADADAD007B7B7B000000
      00000000000000000000000000000000000000000000BDBDBD00D6D6D600E7E7
      E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD006B6B
      6B00636363008C8C8C00F7F7F7008C8C8C00636363006B6B6B006B6B6B006363
      630073737300F7F7F700A5A5A5005A5A5A00636363008C8C8C00F7F7F7008C8C
      8C006B6B6B006B6B6B0073737300D6D6D600EFEFEF007B7B7B00BDBDBD00F7F7
      F700FFFFFF00F7F7F700DEDEDE00ADADAD007B7B7B0000000000000000000000
      0000000000000000000000000000BDBDBD00D6D6D600E7E7E700F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700BDBDBD009C9C9C00E7E7
      E700FFFFFF00EFEFEF00B5B5B500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500ADADAD00ADADAD00ADADAD00A5A5A500B5B5B500E7E7
      E700FFFFFF00EFEFEF00BDBDBD00D6D6D600F7F7F700FFFFFF00FFFFFF00F7F7
      F700DEDEDE00ADADAD007B7B7B00000000000000000000000000000000000000
      000000000000BDBDBD00D6D6D600E7E7E700F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700CECECE00CECECE00CECE
      CE00CECECE00CECECE00DEDEDE00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00CECECE00CECECE00CECECE00CECECE00CECECE00F7F7F700FFFF
      FF00EFEFEF00B5B5B500DEDEDE00F7F7F700FFFFFF00F7F7F700DEDEDE00ADAD
      AD007B7B7B00000000000000000000000000000000000000000000000000BDBD
      BD00CECECE00E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00BDBDBD00B5B5
      B500C6C6C60094949400737373007B7B7B00ADADAD007B7B7B008C8C8C008C8C
      8C008C8C8C00ADADAD00A5A5A5008C8C8C00949494008C8C8C008C8C8C008C8C
      8C009C9C9C00E7E7E700CECECE00B5B5B500C6C6C600A5A5A5007B7B7B000000
      00000000000000000000000000000000000000000000BDBDBD00CECECE00E7E7
      E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00FFFFFF00EFEFEF007B7B7B00B5B5B500EFEF
      EF00FFFFFF00EFEFEF00D6D6D600ADADAD007B7B7B0000000000000000000000
      0000000000000000000000000000BDBDBD00CECECE00E7E7E700F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F7008484840042424200CECE
      CE00FFFFFF00EFEFEF00A5A5A5008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C009494940094949400949494008C8C8C009C9C9C00DEDE
      DE00FFFFFF00EFEFEF00BDBDBD00D6D6D600F7F7F700FFFFFF00FFFFFF00EFEF
      EF00D6D6D600ADADAD007B7B7B00000000000000000000000000000000000000
      000000000000BDBDBD00CECECE00E7E7E700F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFFFFF00FFFF
      FF00EFEFEF00B5B5B500D6D6D600F7F7F700F7F7F700EFEFEF00D6D6D600ADAD
      AD007B7B7B00000000000000000000000000000000000000000000000000BDBD
      BD00CECECE00E7E7E700E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D600D6D6D600D6D6D600C6C6C600A5A5A5007B7B7B006B6B6B006B6B6B009C9C
      9C00EFEFEF00D6D6D600CECECE00D6D6D600DEDEDE00CECECE00CECECE00CECE
      CE00CECECE00D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600F7F7F700CECECE00B5B5B500C6C6C600A5A5A5007B7B7B000000
      00000000000000000000000000000000000000000000BDBDBD00CECECE00E7E7
      E700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700FFFFFF00EFEFEF0073737300B5B5B500EFEF
      EF00F7F7F700EFEFEF00D6D6D600A5A5A5007B7B7B0000000000000000000000
      0000000000000000000000000000BDBDBD00CECECE00E7E7E700EFEFEF00F7F7
      F700F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00B5B5B50094949400E7E7
      E700FFFFFF00F7F7F700E7E7E700DEDEDE00E7E7E700E7E7E700DEDEDE00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00E7E7E700F7F7
      F700FFFFFF00EFEFEF00BDBDBD00D6D6D600F7F7F700F7F7F700F7F7F700EFEF
      EF00D6D6D600A5A5A5007B7B7B00000000000000000000000000000000000000
      000000000000BDBDBD00CECECE00E7E7E700EFEFEF00F7F7F700F7F7F700F7F7
      F700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00B5B5B500D6D6D600F7F7F700F7F7F700EFEFEF00D6D6D600A5A5
      A5007B7B7B00000000000000000000000000000000000000000000000000BDBD
      BD00CECECE00E7E7E700E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D6008484840031313100313131005A5A5A0094949400C6C6C600DEDEDE00E7E7
      E700F7F7F700D6D6D600BDBDBD00C6C6C600D6D6D600BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00CECECE00CECECE00BDBDBD00BDBDBD00C6C6C600BDBDBD00BDBD
      BD00C6C6C600F7F7F700CECECE00B5B5B500C6C6C600A5A5A500737373000000
      00000000000000000000000000000000000000000000B5B5B500CECECE00DEDE
      DE00EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700D6D6D600ADAD
      AD00ADADAD00BDBDBD00F7F7F700BDBDBD00ADADAD00ADADAD00ADADAD00ADAD
      AD00B5B5B500F7F7F700CECECE00ADADAD00ADADAD00BDBDBD00F7F7F700BDBD
      BD00ADADAD00ADADAD00ADADAD00EFEFEF00F7F7F7006B6B6B00ADADAD00E7E7
      E700F7F7F700EFEFEF00D6D6D600A5A5A5007373730000000000000000000000
      0000000000000000000000000000B5B5B500CECECE00DEDEDE00EFEFEF00F7F7
      F700F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFEFEF00B5B5B500CECECE00EFEFEF00F7F7F700F7F7F700EFEF
      EF00D6D6D600A5A5A50073737300000000000000000000000000000000000000
      000000000000B5B5B500CECECE00DEDEDE00EFEFEF00F7F7F700F7F7F700F7F7
      F700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00ADADAD00D6D6D600EFEFEF00F7F7F700EFEFEF00D6D6D600A5A5
      A50073737300000000000000000000000000000000000000000000000000B5B5
      B500C6C6C600DEDEDE00E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D600949494006B6B6B0084848400C6C6C600EFEFEF00EFEFEF00EFEFEF00F7F7
      F700F7F7F700DEDEDE00CECECE00D6D6D600E7E7E700CECECE00D6D6D600D6D6
      D600D6D6D600DEDEDE00DEDEDE00CECECE00D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600F7F7F700CECECE00ADADAD00BDBDBD00A5A5A500737373000000
      00000000000000000000000000000000000000000000B5B5B500CECECE00DEDE
      DE00EFEFEF00EFEFEF00F7F7F700EFEFEF00EFEFEF00F7F7F700CECECE009494
      940094949400ADADAD00F7F7F700ADADAD00949494009C9C9C009C9C9C009C9C
      9C00A5A5A500F7F7F700BDBDBD009494940094949400ADADAD00F7F7F700B5B5
      B500949494009C9C9C009C9C9C00E7E7E700F7F7F7006B6B6B00ADADAD00E7E7
      E700EFEFEF00E7E7E700CECECE00A5A5A5007373730000000000000000000000
      0000000000000000000000000000B5B5B500CECECE00DEDEDE00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFEFEF00B5B5B500CECECE00EFEFEF00F7F7F700F7F7F700E7E7
      E700CECECE00A5A5A50073737300000000000000000000000000000000000000
      000000000000B5B5B500CECECE00DEDEDE00EFEFEF00F7F7F700F7F7F700EFEF
      EF00EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF00ADADAD00CECECE00EFEFEF00EFEFEF00E7E7E700CECECE00A5A5
      A50073737300000000000000000000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600E7E7E700E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7
      F700FFFFFF00C6C6C600ADADAD00B5B5B500CECECE00A5A5A500ADADAD00ADAD
      AD00ADADAD00BDBDBD00BDBDBD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00B5B5B500F7F7F700CECECE00ADADAD00BDBDBD009C9C9C00737373000000
      00000000000000000000000000000000000000000000B5B5B500C6C6C600DEDE
      DE00E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF006B6B6B00A5A5A500DEDE
      DE00EFEFEF00E7E7E700CECECE00A5A5A5007373730000000000000000000000
      0000000000000000000000000000B5B5B500C6C6C600DEDEDE00E7E7E700EFEF
      EF00EFEFEF00EFEFEF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00CECECE00F7F7
      F700FFFFFF00FFFFFF00E7E7E700DEDEDE00E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00E7E7E700F7F7
      F700FFFFFF00EFEFEF00B5B5B500C6C6C600E7E7E700EFEFEF00EFEFEF00E7E7
      E700CECECE00A5A5A50073737300000000000000000000000000000000000000
      000000000000B5B5B500C6C6C600DEDEDE00E7E7E700EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7E7E700A5A5A500CECECE00E7E7E700EFEFEF00E7E7E700CECECE00A5A5
      A50073737300000000000000000000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700EFEF
      EF00FFFFFF00BDBDBD0094949400A5A5A500C6C6C600949494009C9C9C009C9C
      9C0094949400B5B5B500B5B5B500949494009C9C9C009C9C9C009C9C9C009494
      9400A5A5A500F7F7F700D6D6D600ADADAD00BDBDBD009C9C9C00737373000000
      00000000000000000000000000000000000000000000B5B5B500C6C6C600D6D6
      D600E7E7E700EFEFEF00EFEFEF00E7E7E700EFEFEF00EFEFEF00EFEFEF00F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00EFEFEF00F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF0063636300A5A5A500DEDE
      DE00E7E7E700DEDEDE00CECECE009C9C9C007373730000000000000000000000
      0000000000000000000000000000B5B5B500C6C6C600DEDEDE00E7E7E700EFEF
      EF00EFEFEF00E7E7E700FFFFFF00FFFFFF00F7F7F7009494940063636300D6D6
      D600FFFFFF00EFEFEF00A5A5A5008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C009C9C9C00DEDE
      DE00FFFFFF00E7E7E700ADADAD00C6C6C600E7E7E700EFEFEF00EFEFEF00E7E7
      E700CECECE009C9C9C0073737300000000000000000000000000000000000000
      000000000000B5B5B500C6C6C600DEDEDE00E7E7E700EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7E7E700A5A5A500C6C6C600E7E7E700E7E7E700DEDEDE00CECECE009C9C
      9C0073737300000000000000000000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700EFEF
      EF00FFFFFF00ADADAD007B7B7B0094949400BDBDBD007B7B7B00848484008484
      84007B7B7B00A5A5A5009C9C9C007B7B7B008484840084848400848484008484
      840094949400EFEFEF00D6D6D600ADADAD00BDBDBD009C9C9C00737373000000
      00000000000000000000000000000000000000000000B5B5B500C6C6C600D6D6
      D600DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700BDBDBD006363
      6300636363008C8C8C00F7F7F7008C8C8C00636363006B6B6B006B6B6B006B6B
      6B0073737300F7F7F700A5A5A50063636300636363008C8C8C00F7F7F7008C8C
      8C00636363006B6B6B006B6B6B00D6D6D600EFEFEF00636363009C9C9C00D6D6
      D600E7E7E700DEDEDE00C6C6C6009C9C9C007373730000000000000000000000
      0000000000000000000000000000B5B5B500C6C6C600D6D6D600E7E7E700E7E7
      E700E7E7E700E7E7E700FFFFFF00FFFFFF00F7F7F7008C8C8C005A5A5A00D6D6
      D600FFFFFF00EFEFEF00B5B5B5009C9C9C00A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500ADADAD00E7E7
      E700FFFFFF00EFEFEF00ADADAD00C6C6C600E7E7E700EFEFEF00E7E7E700E7E7
      E700CECECE009C9C9C0073737300000000000000000000000000000000000000
      000000000000B5B5B500C6C6C600D6D6D600E7E7E700EFEFEF00EFEFEF00E7E7
      E700E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7E7E700A5A5A500C6C6C600DEDEDE00E7E7E700DEDEDE00C6C6C6009C9C
      9C0073737300000000000000000000000000000000000000000000000000ADAD
      AD00C6C6C600D6D6D600DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDEDE00E7E7
      E700EFEFEF00CECECE00BDBDBD00C6C6C600CECECE00A5A5A500A5A5A500A5A5
      A5009C9C9C00B5B5B500B5B5B5009C9C9C00A5A5A500ADADAD00ADADAD00ADAD
      AD00B5B5B500F7F7F700CECECE00A5A5A500B5B5B5009C9C9C00737373000000
      00000000000000000000000000000000000000000000ADADAD00C6C6C600D6D6
      D600DEDEDE00E7E7E700E7E7E700DEDEDE00E7E7E700F7F7F700EFEFEF00E7E7
      E700E7E7E700EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700EFEFEF00EFEF
      EF00E7E7E700E7E7E700E7E7E700F7F7F700EFEFEF00636363009C9C9C00D6D6
      D600DEDEDE00DEDEDE00C6C6C6009C9C9C007373730000000000000000000000
      0000000000000000000000000000ADADAD00C6C6C600D6D6D600E7E7E700E7E7
      E700E7E7E700E7E7E700FFFFFF00FFFFFF00FFFFFF00DEDEDE00CECECE00EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7E7E700ADADAD00C6C6C600DEDEDE00E7E7E700E7E7E700DEDE
      DE00C6C6C6009C9C9C0073737300000000000000000000000000000000000000
      000000000000ADADAD00C6C6C600D6D6D600E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700DEDEDE00DEDE
      DE00DEDEDE00E7E7E700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7E7E700DEDEDE00DEDEDE00DEDEDE00EFEFEF00FFFFFF00FFFF
      FF00E7E7E7009C9C9C00BDBDBD00DEDEDE00E7E7E700DEDEDE00C6C6C6009C9C
      9C0073737300000000000000000000000000000000000000000000000000ADAD
      AD00BDBDBD00D6D6D600DEDEDE00E7E7E700E7E7E700E7E7E700DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00D6D6
      D600DEDEDE00D6D6D600DEDEDE00E7E7E700D6D6D600C6C6C600ADADAD009494
      94008C8C8C009C9C9C009C9C9C00949494009C9C9C00A5A5A500ADADAD00ADAD
      AD00B5B5B500F7F7F700CECECE00A5A5A500B5B5B500949494006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700E7E7E700636363009C9C9C00CECE
      CE00DEDEDE00D6D6D600BDBDBD009C9C9C006B6B6B0000000000000000000000
      0000000000000000000000000000ADADAD00BDBDBD00D6D6D600DEDEDE00E7E7
      E700DEDEDE00DEDEDE00F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7E7E700ADADAD00BDBDBD00DEDEDE00E7E7E700E7E7E700DEDE
      DE00C6C6C6009C9C9C0073737300000000000000000000000000000000000000
      000000000000ADADAD00BDBDBD00D6D6D600DEDEDE00E7E7E700E7E7E700E7E7
      E700E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B7B007B7B
      7B007373730084848400DEDEDE00FFFFFF00F7F7F700FFFFFF00FFFFFF00FFFF
      FF00F7F7F70094949400737373007373730073737300ADADAD00F7F7F700FFFF
      FF00E7E7E7009C9C9C00BDBDBD00D6D6D600DEDEDE00D6D6D600C6C6C6009C9C
      9C0073737300000000000000000000000000000000000000000000000000ADAD
      AD00BDBDBD00CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700E7E7E700D6D6
      D600DEDEDE00D6D6D600DEDEDE00DEDEDE00EFEFEF00F7F7F700DEDEDE00C6C6
      C600ADADAD009C9C9C00949494009C9C9C00ADADAD00BDBDBD00C6C6C600CECE
      CE00DEDEDE00F7F7F700CECECE009C9C9C00ADADAD00949494006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00D6D6D600DEDEDE00DEDEDE00D6D6D600DEDEDE00FFFFFF00DEDEDE00B5B5
      B500ADADAD00C6C6C600F7F7F700C6C6C600B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500EFEFEF00CECECE00ADADAD00B5B5B500C6C6C600F7F7F700C6C6
      C600B5B5B500B5B5B500B5B5B500E7E7E700E7E7E7006363630094949400CECE
      CE00D6D6D600D6D6D600BDBDBD00949494006B6B6B0000000000000000000000
      0000000000000000000000000000ADADAD00BDBDBD00CECECE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00F7F7F700F7F7F700F7F7F700EFEFEF00E7E7E700F7F7
      F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7
      F700FFFFFF00E7E7E700A5A5A500BDBDBD00D6D6D600E7E7E700DEDEDE00DEDE
      DE00C6C6C6009C9C9C006B6B6B00000000000000000000000000000000000000
      000000000000ADADAD00BDBDBD00CECECE00DEDEDE00E7E7E700E7E7E700E7E7
      E700DEDEDE00F7F7F700F7F7F700FFFFFF00E7E7E700A5A5A500848484008484
      8400848484008C8C8C00CECECE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700D6D6D6008C8C8C007B7B7B007B7B7B007B7B7B009C9C9C00EFEFEF00FFFF
      FF00E7E7E7009C9C9C00BDBDBD00D6D6D600DEDEDE00D6D6D600C6C6C6009C9C
      9C006B6B6B00000000000000000000000000000000000000000000000000ADAD
      AD00BDBDBD00CECECE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600C6C6
      C600CECECE00CECECE00D6D6D600E7E7E700FFFFFF00EFEFEF00BDBDBD00C6C6
      C600DEDEDE00DEDEDE00DEDEDE00CECECE00BDBDBD00EFEFEF00FFFFFF00E7E7
      E700CECECE00A5A5A5007B7B7B00636363007B7B7B008C8C8C009C9C9C00A5A5
      A500BDBDBD00EFEFEF00C6C6C6009C9C9C00ADADAD00949494006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600FFFFFF00CECECE009494
      94008C8C8C00ADADAD00F7F7F700ADADAD009494940094949400949494009494
      94009C9C9C00F7F7F700BDBDBD008C8C8C0094949400ADADAD00F7F7F700ADAD
      AD0094949400949494009C9C9C00DEDEDE00EFEFEF006363630094949400C6C6
      C600D6D6D600CECECE00BDBDBD00949494006B6B6B0000000000000000000000
      0000000000000000000000000000ADADAD00BDBDBD00CECECE00D6D6D600DEDE
      DE00DEDEDE00D6D6D600F7F7F700F7F7F700F7F7F700ADADAD0084848400DEDE
      DE00FFFFFF00EFEFEF00ADADAD00949494009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C0094949400A5A5A500DEDE
      DE00FFFFFF00E7E7E700A5A5A500B5B5B500D6D6D600DEDEDE00DEDEDE00D6D6
      D600BDBDBD00949494006B6B6B00000000000000000000000000000000000000
      000000000000ADADAD00BDBDBD00CECECE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00F7F7F700F7F7F700FFFFFF00D6D6D6009C9C9C009C9C9C009C9C
      9C009C9C9C0094949400C6C6C600F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BDBDBD008C8C8C0094949400949494009494940094949400EFEFEF00FFFF
      FF00E7E7E70094949400B5B5B500CECECE00D6D6D600D6D6D600BDBDBD009494
      94006B6B6B00000000000000000000000000000000000000000000000000ADAD
      AD00BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00D6D6D600CECECE00C6C6
      C600E7E7E700E7E7E700EFEFEF00FFFFFF00FFFFFF00E7E7E700BDBDBD00BDBD
      BD009C9C9C0073737300A5A5A500BDBDBD00BDBDBD00DEDEDE00FFFFFF00F7F7
      F700EFEFEF00E7E7E700C6C6C600848484005252520063636300737373008484
      84009C9C9C00DEDEDE00C6C6C6009C9C9C00ADADAD00949494006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00C6C6
      C600CECECE00D6D6D600D6D6D600CECECE00D6D6D600F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700E7E7E7006363630094949400C6C6
      C600CECECE00CECECE00B5B5B500949494006B6B6B0000000000000000000000
      0000000000000000000000000000ADADAD00BDBDBD00CECECE00D6D6D600DEDE
      DE00D6D6D600D6D6D600F7F7F700F7F7F700EFEFEF007B7B7B0042424200C6C6
      C600FFFFFF00EFEFEF00ADADAD00949494009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00A5A5A500DEDE
      DE00FFFFFF00DEDEDE00A5A5A500B5B5B500D6D6D600DEDEDE00DEDEDE00D6D6
      D600BDBDBD00949494006B6B6B00000000000000000000000000000000000000
      000000000000ADADAD00BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00F7F7F700F7F7F700FFFFFF00DEDEDE009C9C9C00949494009494
      94008C8C8C008C8C8C00C6C6C600F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700BDBDBD00848484007B7B7B007B7B7B007B7B7B008C8C8C00E7E7E700FFFF
      FF00E7E7E70094949400B5B5B500CECECE00D6D6D600D6D6D600BDBDBD009494
      94006B6B6B00000000000000000000000000000000000000000000000000ADAD
      AD00B5B5B500CECECE00D6D6D600DEDEDE00DEDEDE00D6D6D600CECECE00CECE
      CE00E7E7E700FFFFFF00F7F7F700FFFFFF00FFFFFF00EFEFEF00EFEFEF00CECE
      CE00424242000000000042424200C6C6C600E7E7E700EFEFEF00FFFFFF00F7F7
      F700EFEFEF00F7F7F700E7E7E7009C9C9C004A4A4A006B6B6B007B7B7B008484
      84009C9C9C00E7E7E700C6C6C6009C9C9C00ADADAD008C8C8C006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00B5B5B500C6C6
      C600CECECE00CECECE00CECECE00CECECE00CECECE00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00EFEFEF00F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700E7E7E7005A5A5A008C8C8C00BDBD
      BD00CECECE00C6C6C600B5B5B500949494006B6B6B0000000000000000000000
      0000000000000000000000000000ADADAD00B5B5B500CECECE00D6D6D600D6D6
      D600D6D6D600D6D6D600F7F7F700F7F7F700EFEFEF00BDBDBD00A5A5A500DEDE
      DE00F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700F7F7F700DEDEDE009C9C9C00B5B5B500D6D6D600DEDEDE00DEDEDE00D6D6
      D600BDBDBD00949494006B6B6B00000000000000000000000000000000000000
      000000000000ADADAD00B5B5B500CECECE00D6D6D600DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00F7F7F700F7F7F700F7F7F700DEDEDE00A5A5A5009C9C9C009494
      94008C8C8C008C8C8C00C6C6C600EFEFEF00F7F7F700F7F7F700F7F7F700EFEF
      EF00BDBDBD00848484007B7B7B00848484007B7B7B008C8C8C00E7E7E700F7F7
      F700E7E7E70094949400ADADAD00CECECE00D6D6D600CECECE00BDBDBD009494
      94006B6B6B00000000000000000000000000000000000000000000000000ADAD
      AD00BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00D6D6D600D6D6D600CECE
      CE00D6D6D600DEDEDE00EFEFEF00FFFFFF00FFFFFF00F7F7F700F7F7F700DEDE
      DE0039393900000000005A5A5A00DEDEDE00F7F7F700F7F7F700FFFFFF00F7F7
      F700EFEFEF00DEDEDE00A5A5A50039393900393939004A4A4A00525252005252
      52006B6B6B00E7E7E700C6C6C6009C9C9C00ADADAD008C8C8C006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00C6C6
      C600CECECE00D6D6D600CECECE00CECECE00CECECE00F7F7F700BDBDBD006363
      6300636363008C8C8C00F7F7F7008C8C8C00636363006B6B6B006B6B6B006B6B
      6B007B7B7B00F7F7F700A5A5A50063636300636363008C8C8C00F7F7F7008C8C
      8C00636363006B6B6B0073737300D6D6D600E7E7E7005A5A5A008C8C8C00BDBD
      BD00CECECE00C6C6C600B5B5B5008C8C8C006B6B6B0000000000000000000000
      0000000000000000000000000000ADADAD00BDBDBD00CECECE00D6D6D600D6D6
      D600D6D6D600D6D6D600F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7
      F700EFEFEF00EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      EF00F7F7F700DEDEDE009C9C9C00B5B5B500D6D6D600DEDEDE00D6D6D600D6D6
      D600BDBDBD00949494006B6B6B00000000000000000000000000000000000000
      000000000000ADADAD00BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00F7F7F700F7F7F700F7F7F700DEDEDE00A5A5A5009C9C9C008C8C
      8C008C8C8C008C8C8C00C6C6C600EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00B5B5B500848484007B7B7B00848484007B7B7B008C8C8C00E7E7E700F7F7
      F700DEDEDE0094949400ADADAD00CECECE00D6D6D600CECECE00BDBDBD009494
      94006B6B6B00000000000000000000000000000000000000000000000000ADAD
      AD00BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00D6D6D600D6D6D600CECE
      CE00CECECE00CECECE00D6D6D600F7F7F700FFFFFF00EFEFEF00DEDEDE00D6D6
      D600737373006B6B6B00E7E7E700FFFFFF00E7E7E700E7E7E700FFFFFF00F7F7
      F700D6D6D600ADADAD007B7B7B007B7B7B008C8C8C009C9C9C00A5A5A500ADAD
      AD00BDBDBD00EFEFEF00C6C6C600A5A5A500ADADAD008C8C8C00636363000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600CECECE00D6D6D600EFEFEF00EFEFEF00E7E7
      E700E7E7E700E7E7E700EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700EFEFEF00E7E7
      E700E7E7E700E7E7E700E7E7E700EFEFEF00DEDEDE005A5A5A008C8C8C00C6C6
      C600CECECE00C6C6C600B5B5B5008C8C8C006363630000000000000000000000
      0000000000000000000000000000ADADAD00BDBDBD00CECECE00D6D6D600D6D6
      D600D6D6D600D6D6D600EFEFEF00EFEFEF00EFEFEF00F7F7F700F7F7F700EFEF
      EF00EFEFEF00EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      EF00F7F7F700DEDEDE009C9C9C00B5B5B500D6D6D600DEDEDE00D6D6D600CECE
      CE00BDBDBD008C8C8C0063636300000000000000000000000000000000000000
      000000000000ADADAD00BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00F7F7F700F7F7F700F7F7F700DEDEDE00A5A5A500949494008C8C
      8C008484840084848400BDBDBD00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00B5B5B500848484007B7B7B007B7B7B007B7B7B008C8C8C00E7E7E700F7F7
      F700DEDEDE0094949400B5B5B500CECECE00D6D6D600CECECE00BDBDBD008C8C
      8C0063636300000000000000000000000000000000000000000000000000B5B5
      B500BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6
      D600CECECE00CECECE00C6C6C600CECECE00EFEFEF00EFEFEF00CECECE00D6D6
      D600DEDEDE00EFEFEF00FFFFFF00FFFFFF00DEDEDE00E7E7E700EFEFEF00D6D6
      D600A5A5A500848484008484840073737300848484008C8C8C00949494009C9C
      9C00A5A5A500EFEFEF00CECECE00A5A5A500ADADAD008C8C8C00636363000000
      00000000000000000000000000000000000000000000B5B5B500BDBDBD00CECE
      CE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600EFEFEF00F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700EFEFEF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700DEDEDE005A5A5A008C8C8C00C6C6
      C600CECECE00C6C6C600B5B5B5008C8C8C006363630000000000000000000000
      0000000000000000000000000000B5B5B500BDBDBD00CECECE00D6D6D600D6D6
      D600D6D6D600D6D6D600EFEFEF00EFEFEF00EFEFEF00C6C6C600ADADAD00DEDE
      DE00F7F7F700E7E7E700BDBDBD00ADADAD00ADADAD00ADADAD00ADADAD00B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500ADADAD00ADADAD00B5B5B500DEDE
      DE00F7F7F700DEDEDE00A5A5A500B5B5B500D6D6D600DEDEDE00D6D6D600CECE
      CE00B5B5B5008C8C8C0063636300000000000000000000000000000000000000
      000000000000B5B5B500BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00F7F7F700F7F7F700F7F7F700D6D6D600A5A5A500949494008C8C
      8C008484840084848400BDBDBD00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00B5B5B5008484840084848400848484008484840094949400E7E7E700F7F7
      F700DEDEDE0094949400B5B5B500CECECE00D6D6D600CECECE00B5B5B5008C8C
      8C0063636300000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600CECECE00D6D6D600D6D6D600DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600CECECE00C6C6C600C6C6C600D6D6D600DEDEDE00DEDE
      DE00DEDEDE00D6D6D600EFEFEF00EFEFEF00DEDEDE00DEDEDE00D6D6D600C6C6
      C600BDBDBD00BDBDBD00C6C6C600C6C6C600CECECE00D6D6D600DEDEDE00DEDE
      DE00DEDEDE00F7F7F700CECECE00A5A5A500A5A5A5007B7B7B00525252000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600CECE
      CE00CECECE00D6D6D600D6D6D600D6D6D600D6D6D600EFEFEF00DEDEDE00B5B5
      B500B5B5B500C6C6C600F7F7F700CECECE00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00C6C6C600F7F7F700D6D6D600BDBDBD00BDBDBD00CECECE00F7F7F700CECE
      CE00BDBDBD00BDBDBD00BDBDBD00E7E7E700E7E7E7006363630094949400C6C6
      C600CECECE00C6C6C600ADADAD007B7B7B005252520000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600CECECE00CECECE00D6D6
      D600D6D6D600D6D6D600EFEFEF00EFEFEF00E7E7E7007B7B7B004A4A4A00BDBD
      BD00F7F7F700E7E7E700A5A5A500949494009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C00949494009494940094949400949494008C8C8C009C9C9C00D6D6
      D600F7F7F700DEDEDE00ADADAD00BDBDBD00D6D6D600D6D6D600D6D6D600CECE
      CE00ADADAD007B7B7B0052525200000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600CECECE00D6D6D600D6D6D600DEDEDE00DEDE
      DE00DEDEDE00EFEFEF00EFEFEF00F7F7F700E7E7E700CECECE00C6C6C600C6C6
      C600BDBDBD00BDBDBD00D6D6D600EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00D6D6D600BDBDBD00BDBDBD00BDBDBD00BDBDBD00C6C6C600E7E7E700EFEF
      EF00DEDEDE009C9C9C00B5B5B500CECECE00D6D6D600CECECE00ADADAD007B7B
      7B0052525200000000000000000000000000000000000000000000000000DEDE
      DE00D6D6D600CECECE00CECECE00D6D6D600D6D6D600DEDEDE00DEDEDE00DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00D6D6D600DEDE
      DE00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00ADADAD00ADADAD00ADAD
      AD00ADADAD00BDBDBD00BDBDBD00ADADAD00B5B5B500B5B5B500BDBDBD00BDBD
      BD00C6C6C600EFEFEF00CECECE00A5A5A5009494940063636300525252000000
      00000000000000000000000000000000000000000000DEDEDE00D6D6D600CECE
      CE00CECECE00D6D6D600D6D6D600D6D6D600D6D6D600F7F7F700CECECE009494
      94008C8C8C00ADADAD00F7F7F700ADADAD00949494009C9C9C009C9C9C009C9C
      9C00A5A5A500F7F7F700C6C6C6009C9C9C00A5A5A500B5B5B500F7F7F700B5B5
      B50094949400949494009C9C9C00DEDEDE00E7E7E7008C8C8C009C9C9C00C6C6
      C600CECECE00BDBDBD009C9C9C00636363005252520000000000000000000000
      0000000000000000000000000000DEDEDE00D6D6D600CECECE00CECECE00D6D6
      D600D6D6D600D6D6D600EFEFEF00EFEFEF00EFEFEF00ADADAD0084848400D6D6
      D600EFEFEF00EFEFEF00EFEFEF00E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700EFEFEF00DEDEDE00BDBDBD00C6C6C600D6D6D600D6D6D600CECECE00BDBD
      BD009C9C9C006363630052525200000000000000000000000000000000000000
      000000000000DEDEDE00D6D6D600CECECE00CECECE00D6D6D600D6D6D600DEDE
      DE00DEDEDE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7F700EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00E7E7E700B5B5B500BDBDBD00CECECE00CECECE00BDBDBD009C9C9C006363
      6300525252000000000000000000000000000000000000000000000000000000
      0000E7E7E700DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600CECECE00CECE
      CE00CECECE00D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600EFEFEF00D6D6D6009C9C9C007B7B7B0052525200000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600DEDEDE00EFEFEF00F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700F7F7F700F7F7F700FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7
      F700FFFFFF00F7F7F700FFFFFF00EFEFEF00E7E7E700BDBDBD00B5B5B500C6C6
      C600C6C6C600ADADAD007B7B7B00525252000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700DEDEDE00D6D6D600CECE
      CE00D6D6D600D6D6D600EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E7E7E700D6D6D600CECECE00D6D6D600D6D6D600C6C6C600ADAD
      AD007B7B7B005252520000000000000000000000000000000000000000000000
      00000000000000000000E7E7E700DEDEDE00D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700EFEF
      EF00E7E7E700CECECE00CECECE00CECECE00C6C6C600ADADAD007B7B7B005252
      5200000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700EFEFEF00E7E7E700D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600DEDE
      DE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E7E7E700CECECE008C8C8C00636363005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700EFEF
      EF00E7E7E700D6D6D600D6D6D600D6D6D600D6D6D600EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700CECECE00C6C6C600C6C6
      C600ADADAD008C8C8C00636363005A5A5A000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00E7E7E700D6D6
      D600CECECE00CECECE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700D6D6D600CECECE00CECECE00C6C6C600B5B5B5008C8C
      8C00636363005A5A5A0000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700EFEFEF00E7E7E700D6D6D600D6D6D600D6D6
      D600D6D6D600EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700CECECE00CECECE00C6C6C600ADADAD008C8C8C00636363005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00F7F7F700E7E7E700D6D6D600CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6
      C600BDBDBD00ADADAD008C8C8C006B6B6B006363630000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00F7F7F700E7E7E700D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600BDBDBD00ADAD
      AD008C8C8C006B6B6B0063636300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00F7F7F700E7E7
      E700D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00ADADAD008C8C8C006B6B
      6B00636363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00F7F7F700E7E7E700D6D6D600CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600CECECE00CECE
      CE00C6C6C600C6C6C600BDBDBD00ADADAD008C8C8C006B6B6B00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00F7F7F700E7E7E700DEDEDE00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00B5B5
      B500A5A5A5008C8C8C00737373006B6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00F7F7F700E7E7E700DEDEDE00CECECE00CECECE00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00B5B5B500A5A5A5008C8C
      8C00737373006B6B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00F7F7
      F700E7E7E700DEDEDE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600BDBDBD00BDBDBD00B5B5B500A5A5A5008C8C8C00737373006B6B
      6B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00F7F7F700E7E7E700DEDE
      DE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBD
      BD00BDBDBD00B5B5B500A5A5A5008C8C8C00737373006B6B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700E7E7E700D6D6D600CECE
      CE00C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5B500A5A5
      A500949494008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700E7E7E700D6D6D600CECECE00C6C6C600BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5B500A5A5A500949494008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700E7E7E700D6D6D600CECECE00C6C6C600BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00B5B5B500B5B5B500A5A5A5009494940084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700E7E7
      E700D6D6D600CECECE00C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5
      B500B5B5B500A5A5A50094949400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003131310031313100292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929003131
      3100313131003131310029292900292929002929290029292900292929002929
      2900292929002121210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031313100313131002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002121
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000313131003131310029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290021212100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000313131003131
      3100292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900212121000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003131310031313100393939004A4A4A00525252005252
      52005A5A5A005252520052525200525252005252520052525200525252005252
      52005252520052525200525252005A5A5A00636363006B6B6B008C8C8C00A5A5
      A500B5B5B5009C9C9C0052525200525252005252520052525200525252004A4A
      4A00424242003131310029292900212121000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003131310031313100393939004A4A4A00525252005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A0052525200525252005252520052525200525252005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005252520052525200424242003131
      3100292929002121210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000313131003131
      3100393939004A4A4A00525252005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A0063636300636363006363
      63005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A00525252004242420031313100292929002121
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003131310031313100393939004A4A
      4A00525252005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A006363630063636300636363005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005252520042424200313131002929290021212100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003939390039393900525252006B6B6B00737373007B7B7B007B7B
      7B007B7B7B007373730073737300737373007373730073737300737373007B7B
      7B00848484008C8C8C0094949400B5B5B500BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00B5B5B500B5B5B5006B6B6B006B6B6B006B6B6B0073737300737373007373
      730073737300636363004A4A4A00292929002121210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003939
      390039393900525252006B6B6B007B7B7B008484840084848400848484007B7B
      7B007B7B7B00737373007B7B7B007B7B7B00848484008C8C8C00A5A5A500B5B5
      B500B5B5B500949494007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B008484
      840084848400848484008484840084848400848484007B7B7B00737373006363
      63004A4A4A002929290021212100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039393900393939005252
      52006B6B6B007B7B7B0084848400848484008484840084848400848484008484
      8400848484008C8C8C008C8C8C0094949400A5A5A500B5B5B500BDBDBD00BDBD
      BD008C8C8C00737373007B7B7B007B7B7B007B7B7B0084848400848484008484
      8400848484008484840084848400848484007B7B7B006B6B6B004A4A4A002929
      2900212121000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003939390039393900525252006B6B6B007B7B
      7B0084848400848484008484840084848400848484007B7B7B007B7B7B008484
      8400848484008C8C8C009C9C9C00B5B5B500BDBDBD00BDBDBD00A5A5A5007B7B
      7B007B7B7B007B7B7B0084848400848484008484840084848400848484008484
      840084848400848484007B7B7B006B6B6B004A4A4A0029292900212121000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042424200424242005A5A5A007B7B7B008484840084848400848484008484
      84008484840084848400848484008C8C8C009C9C9C009C9C9C00A5A5A500BDBD
      BD00C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5
      B500B5B5B500ADADAD005A5A5A00737373007B7B7B007B7B7B00848484008484
      8400848484008484840073737300525252002929290021212100000000000000
      0000000000000000000000000000000000000000000000000000424242004242
      4200636363007B7B7B008C8C8C00949494009494940094949400949494009C9C
      9C009C9C9C009C9C9C00ADADAD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00B5B5B500A5A5A5008C8C8C0084848400848484008C8C8C008C8C8C008C8C
      8C008C8C8C009494940094949400949494009494940094949400949494008C8C
      8C00737373005252520029292900212121000000000000000000000000000000
      0000000000000000000000000000000000004242420042424200636363007B7B
      7B008C8C8C0094949400949494009494940094949400A5A5A500ADADAD00ADAD
      AD00B5B5B500C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00B5B5
      B500ADADAD007B7B7B007B7B7B00848484008C8C8C008C8C8C00949494009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C00949494008C8C8C00737373005252
      5200292929002121210000000000000000000000000000000000000000000000
      000000000000000000004242420042424200636363007B7B7B008C8C8C009494
      940094949400949494008C8C8C00949494009C9C9C009C9C9C00A5A5A500BDBD
      BD00C6C6C600BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5B500B5B5B5008484
      84007B7B7B00848484008C8C8C008C8C8C009494940094949400949494009C9C
      9C009C9C9C009C9C9C00949494008C8C8C007373730052525200292929002121
      2100000000000000000000000000000000000000000000000000000000000000
      00004A4A4A005A5A5A007B7B7B008C8C8C008C8C8C008C8C8C00848484008484
      84009C9C9C00ADADAD00ADADAD00BDBDBD00CECECE00CECECE00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5
      B500B5B5B500ADADAD0052525200737373007B7B7B007B7B7B00848484008484
      84008C8C8C008C8C8C008C8C8C00737373004A4A4A0029292900000000000000
      00000000000000000000000000000000000000000000000000004A4A4A006363
      63007B7B7B0094949400A5A5A500ADADAD00B5B5B500B5B5B500BDBDBD00C6C6
      C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5
      B500B5B5B5009C9C9C00737373008484840084848400848484008C8C8C008C8C
      8C008C8C8C00949494009494940094949400949494009C9C9C00949494009494
      94008C8C8C00737373004A4A4A00292929000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A00636363007B7B7B008C8C
      8C0094949400ADADAD00BDBDBD00BDBDBD00BDBDBD00CECECE00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5
      B500A5A5A5007B7B7B007B7B7B0084848400848484008C8C8C00949494009C9C
      9C00A5A5A500A5A5A500A5A5A500A5A5A5009C9C9C009C9C9C008C8C8C007B7B
      7B004A4A4A002929290000000000000000000000000000000000000000000000
      000000000000000000004A4A4A006363630084848400949494009C9C9C00A5A5
      A500B5B5B500B5B5B500ADADAD00BDBDBD00CECECE00C6C6C600C6C6C600C6C6
      C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5B500ADADAD005A5A
      5A007B7B7B0084848400848484008C8C8C0094949400949494009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C008C8C8C007B7B7B004A4A4A002929
      2900000000000000000000000000000000000000000000000000000000005252
      520052525200737373008C8C8C008C8C8C008C8C8C008484840084848400A5A5
      A500CECECE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5
      B500B5B5B500ADADAD0042424200737373007B7B7B007B7B7B00848484008484
      84008C8C8C0094949400949494008C8C8C006B6B6B0039393900292929000000
      00000000000000000000000000000000000000000000525252005A5A5A008484
      8400B5B5B500C6C6C600CECECE00D6D6D600D6D6D600CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5
      B500B5B5B500949494005A5A5A00848484008484840084848400848484008484
      84008C8C8C008C8C8C008C8C8C00949494009494940094949400949494009C9C
      9C00949494008C8C8C006B6B6B00393939002929290000000000000000000000
      0000000000000000000000000000525252005A5A5A007B7B7B00A5A5A500CECE
      CE00CECECE00D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5
      B5009C9C9C006B6B6B007B7B7B0084848400848484008C8C8C00949494009C9C
      9C009C9C9C00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A5009C9C9C008C8C
      8C006B6B6B003939390029292900000000000000000000000000000000000000
      000000000000525252005A5A5A007B7B7B009C9C9C00C6C6C600CECECE00CECE
      CE00D6D6D600CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5B500ADADAD004242
      42007B7B7B007B7B7B0084848400848484008C8C8C0094949400949494009C9C
      9C009C9C9C00A5A5A500A5A5A500A5A5A5009C9C9C008C8C8C006B6B6B003939
      3900292929000000000000000000000000000000000000000000000000005A5A
      5A006B6B6B00848484008C8C8C008C8C8C00848484008484840084848400BDBD
      BD00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5
      B500B5B5B500ADADAD00393939006B6B6B007B7B7B007B7B7B007B7B7B008484
      84008C8C8C00949494009C9C9C00949494007B7B7B0052525200313131000000
      000000000000000000000000000000000000000000005A5A5A0073737300CECE
      CE00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5
      B500B5B5B500949494004A4A4A00848484007B7B7B007B7B7B00848484008484
      84008484840084848400848484008C8C8C008C8C8C008C8C8C00949494009494
      940094949400949494007B7B7B00525252003131310000000000000000000000
      00000000000000000000000000005A5A5A007373730094949400DEDEDE00DEDE
      DE00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5
      B5009C9C9C00525252007B7B7B007B7B7B0084848400848484008C8C8C009494
      94009C9C9C009C9C9C009C9C9C009C9C9C00A5A5A500A5A5A5009C9C9C009494
      94007B7B7B005252520031313100000000000000000000000000000000000000
      0000000000005A5A5A007373730094949400D6D6D600DEDEDE00DEDEDE00D6D6
      D600D6D6D600CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6
      C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5B500ADADAD003131
      31007B7B7B007B7B7B007B7B7B0084848400848484008C8C8C00949494009494
      94009C9C9C009C9C9C00A5A5A500A5A5A5009C9C9C00949494007B7B7B005252
      5200313131000000000000000000000000000000000000000000000000006363
      63007B7B7B008C8C8C008C8C8C008C8C8C00848484008484840084848400BDBD
      BD00D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5
      B500B5B5B500ADADAD00313131006B6B6B007B7B7B007B7B7B007B7B7B008484
      84008C8C8C00949494009C9C9C009C9C9C008484840063636300424242000000
      000000000000000000000000000000000000000000006B6B6B0094949400DEDE
      DE00DEDEDE00D6D6D600D6D6D600CECECE00CECECE00CECECE00C6C6C600C6C6
      C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5
      B500BDBDBD008C8C8C004A4A4A00848484007B7B7B007B7B7B007B7B7B007B7B
      7B00848484008484840084848400848484008C8C8C008C8C8C008C8C8C009494
      9400949494009494940084848400636363004242420000000000000000000000
      00000000000000000000000000006B6B6B007B7B7B00B5B5B500DEDEDE00DEDE
      DE00DEDEDE00D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5
      B500949494004A4A4A00848484007B7B7B0084848400848484008C8C8C008C8C
      8C0094949400949494009C9C9C009C9C9C009C9C9C00A5A5A500A5A5A5009C9C
      9C00848484006363630042424200000000000000000000000000000000000000
      0000000000006B6B6B007B7B7B00B5B5B500DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5B500ADADAD002929
      2900737373007B7B7B007B7B7B007B7B7B00848484008C8C8C008C8C8C009494
      9400949494009C9C9C00A5A5A500A5A5A500A5A5A5009C9C9C00848484006363
      6300424242000000000000000000000000000000000000000000000000006B6B
      6B00848484008C8C8C008C8C8C0084848400848484007B7B7B0084848400BDBD
      BD00DEDEDE00D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00B5B5B500ADADAD00313131005A5A5A007B7B7B007B7B7B00848484008484
      84008C8C8C00949494009C9C9C009C9C9C008C8C8C006B6B6B004A4A4A000000
      00000000000000000000000000000000000000000000737373009C9C9C00DEDE
      DE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00C6C6C600C6C6
      C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5
      B500BDBDBD008484840042424200737373007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B008484840084848400848484008C8C8C008C8C8C009494
      94009494940094949400848484006B6B6B004A4A4A0000000000000000000000
      00000000000000000000000000007B7B7B0084848400BDBDBD00DEDEDE00DEDE
      DE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD009494940042424200848484007B7B7B0084848400848484008C8C8C008C8C
      8C008C8C8C0094949400949494009C9C9C009C9C9C00A5A5A500A5A5A5009C9C
      9C008C8C8C006B6B6B004A4A4A00000000000000000000000000000000000000
      0000000000007B7B7B0084848400BDBDBD00DEDEDE00DEDEDE00D6D6D600D6D6
      D600CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6
      C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00A5A5A5002121
      2100636363007B7B7B007B7B7B007B7B7B0084848400848484008C8C8C008C8C
      8C00949494009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C008C8C8C006B6B
      6B004A4A4A000000000000000000000000000000000000000000000000007373
      7300848484008C8C8C008C8C8C0084848400848484007B7B7B0084848400BDBD
      BD00DEDEDE00D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00B5B5B500ADADAD00292929004A4A4A00737373007B7B7B00848484008484
      84008C8C8C00949494009C9C9C009C9C9C008C8C8C006B6B6B004A4A4A000000
      00000000000000000000000000000000000000000000737373009C9C9C00DEDE
      DE00D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5
      B500BDBDBD0084848400393939005A5A5A007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B008484840084848400848484008C8C8C008C8C
      8C009494940094949400848484006B6B6B004A4A4A0000000000000000000000
      00000000000000000000000000007B7B7B008C8C8C00BDBDBD00DEDEDE00DEDE
      DE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBD
      BD008C8C8C0039393900737373008484840084848400848484008C8C8C008C8C
      8C008C8C8C0094949400949494009C9C9C009C9C9C00A5A5A500A5A5A5009C9C
      9C008C8C8C006B6B6B004A4A4A00000000000000000000000000000000000000
      0000000000007B7B7B0084848400BDBDBD00DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6
      C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00ADADAD002121
      2100525252007B7B7B007B7B7B007B7B7B007B7B7B0084848400848484008C8C
      8C008C8C8C0094949400949494009C9C9C009C9C9C009C9C9C008C8C8C006B6B
      6B004A4A4A000000000000000000000000000000000000000000000000007373
      73008C8C8C008C8C8C008C8C8C0084848400848484007B7B7B0084848400BDBD
      BD00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00ADADAD002121210039393900737373007B7B7B00848484008484
      84008C8C8C00949494009C9C9C009C9C9C008C8C8C006B6B6B004A4A4A000000
      00000000000000000000000000000000000000000000737373009C9C9C00DEDE
      DE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD007B7B7B00313131004A4A4A00848484007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B008484840084848400848484008C8C8C008C8C
      8C009494940094949400848484006B6B6B004A4A4A0000000000000000000000
      0000000000000000000000000000848484008C8C8C00BDBDBD00DEDEDE00DEDE
      DE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBD
      BD008C8C8C003131310063636300848484008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C0094949400949494009C9C9C009C9C9C00A5A5A500A5A5A5009C9C
      9C008C8C8C006B6B6B004A4A4A00000000000000000000000000000000000000
      0000000000007B7B7B0084848400B5B5B500DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6
      C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00A5A5A5001818
      180042424200848484007B7B7B007B7B7B007B7B7B007B7B7B00848484008484
      840084848400848484008C8C8C009494940094949400949494008C8C8C006B6B
      6B004A4A4A000000000000000000000000000000000000000000000000007B7B
      7B00848484008C8C8C0084848400848484007B7B7B007B7B7B008C8C8C00C6C6
      C600DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00CECECE00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00ADADAD002121210031313100737373007B7B7B00848484008484
      84008C8C8C009494940094949400949494008C8C8C006B6B6B004A4A4A000000
      00000000000000000000000000000000000000000000737373009C9C9C00DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD007B7B7B00292929004A4A4A00848484007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B0084848400848484008C8C8C008C8C
      8C009494940094949400848484006B6B6B004A4A4A0000000000000000000000
      0000000000000000000000000000848484008C8C8C00B5B5B500DEDEDE00DEDE
      DE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBD
      BD0084848400292929005A5A5A008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C0094949400949494009C9C9C009C9C9C00A5A5A500A5A5A5009C9C
      9C008C8C8C006B6B6B004A4A4A00000000000000000000000000000000000000
      0000000000007B7B7B0084848400B5B5B500DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6
      C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00A5A5A5001010
      100039393900848484007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0084848400848484008C8C8C008C8C8C008C8C8C00848484006B6B
      6B004A4A4A000000000000000000000000000000000000000000000000007B7B
      7B00848484008484840084848400848484007B7B7B008484840094949400CECE
      CE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00ADADAD002121210042424200848484007B7B7B00737373007B7B
      7B00848484008C8C8C0094949400949494008C8C8C006B6B6B004A4A4A000000
      00000000000000000000000000000000000000000000737373009C9C9C00DEDE
      DE00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD007B7B7B002121210042424200737373007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B0084848400848484008C8C8C008C8C
      8C008C8C8C008C8C8C0084848400636363004A4A4A0000000000000000000000
      0000000000000000000000000000848484008C8C8C00BDBDBD00DEDEDE00DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBD
      BD0084848400212121004A4A4A008C8C8C008C8C8C008C8C8C008C8C8C009494
      940094949400949494009C9C9C009C9C9C00A5A5A500A5A5A500A5A5A5009C9C
      9C008C8C8C006B6B6B004A4A4A00000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B00B5B5B500DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6
      C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00ADADAD000808
      0800393939007373730084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008C8C8C008C8C8C00848484006B6B
      6B004A4A4A000000000000000000000000000000000000000000000000007B7B
      7B008484840084848400848484007B7B7B007B7B7B008484840094949400C6C6
      C600DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00B5B5B500181818004A4A4A00A5A5A500BDBDBD00949494007373
      73007B7B7B00848484008C8C8C0094949400848484006B6B6B004A4A4A000000
      00000000000000000000000000000000000000000000737373009C9C9C00DEDE
      DE00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD0073737300181818004A4A4A0094949400ADADAD00B5B5B500B5B5
      B500ADADAD009C9C9C00848484007B7B7B007B7B7B0084848400848484008C8C
      8C008C8C8C008C8C8C007B7B7B00636363004A4A4A0000000000000000000000
      0000000000000000000000000000848484008C8C8C00BDBDBD00DEDEDE00DEDE
      DE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBD
      BD008484840010101000424242007B7B7B00848484008C8C8C008C8C8C009494
      94009C9C9C009C9C9C009C9C9C00A5A5A500A5A5A500A5A5A500A5A5A5009C9C
      9C008C8C8C006B6B6B004A4A4A00000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B00ADADAD00DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00ADADAD002929
      290073737300B5B5B500CECECE00CECECE00D6D6D600D6D6D600CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00DEDEDE00C6C6C6007B7B7B006B6B
      6B004A4A4A000000000000000000000000000000000000000000000000008484
      8400949494009C9C9C00A5A5A5009C9C9C00848484007B7B7B008C8C8C00C6C6
      C600DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBD
      BD00BDBDBD00ADADAD00101010003939390094949400D6D6D600E7E7E700B5B5
      B5008C8C8C009C9C9C00ADADAD00ADADAD009C9C9C007B7B7B005A5A5A000000
      000000000000000000000000000000000000000000008C8C8C00ADADAD00DEDE
      DE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBD
      BD00BDBDBD0073737300181818005A5A5A00A5A5A500C6C6C600CECECE00D6D6
      D600D6D6D600D6D6D600CECECE00B5B5B500949494009C9C9C00A5A5A500ADAD
      AD00ADADAD00A5A5A5009C9C9C007B7B7B005A5A5A0000000000000000000000
      000000000000000000000000000094949400A5A5A500C6C6C600DEDEDE00DEDE
      DE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBD
      BD007B7B7B0010101000393939006B6B6B00A5A5A500ADADAD00ADADAD00B5B5
      B500BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5
      B500A5A5A500848484005A5A5A00000000000000000000000000000000000000
      0000000000008C8C8C0094949400BDBDBD00DEDEDE00DEDEDE00DEDEDE00D6D6
      D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00B5B5B5002929
      29004A4A4A007373730084848400848484009C9C9C00A5A5A500848484008484
      84008C8C8C0084848400848484008C8C8C00DEDEDE00CECECE007B7B7B007373
      73005A5A5A000000000000000000000000000000000000000000000000009C9C
      9C00B5B5B500C6C6C600C6C6C60094949400848484007B7B7B008C8C8C00C6C6
      C600DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECE
      CE00CECECE00CECECE00C6C6C600CECECE00C6C6C600C6C6C600C6C6C600BDBD
      BD00B5B5B5006B6B6B0021212100424242008C8C8C00D6D6D600EFEFEF00EFEF
      EF00C6C6C600B5B5B500C6C6C600CECECE00BDBDBD00949494006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00C6C6C600DEDE
      DE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECE
      CE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600B5B5B5006B6B6B003939390063636300A5A5A500C6C6C600CECECE00D6D6
      D600D6D6D600DEDEDE00DEDEDE00E7E7E700D6D6D600BDBDBD00BDBDBD00CECE
      CE00D6D6D600D6D6D600BDBDBD00949494006B6B6B0000000000000000000000
      0000000000000000000000000000ADADAD00BDBDBD00D6D6D600E7E7E700DEDE
      DE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECE
      CE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00B5B5
      B5006363630021212100393939006B6B6B00CECECE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDE
      DE00C6C6C6009C9C9C006B6B6B00000000000000000000000000000000000000
      000000000000ADADAD00B5B5B500D6D6D600DEDEDE00DEDEDE00DEDEDE00D6D6
      D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00949494005252
      52005A5A5A00848484009C9C9C009C9C9C00B5B5B500B5B5B5009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C00A5A5A500E7E7E700CECECE008C8C8C008C8C
      8C006B6B6B00000000000000000000000000000000000000000000000000ADAD
      AD00CECECE00E7E7E700C6C6C6008C8C8C008C8C8C008484840084848400C6C6
      C600DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00D6D6
      D600D6D6D600CECECE00CECECE00C6C6C600B5B5B500ADADAD008C8C8C006B6B
      6B00525252004A4A4A00636363007B7B7B00A5A5A500DEDEDE00EFEFEF00EFEF
      EF00E7E7E700C6C6C600CECECE00DEDEDE00D6D6D600ADADAD007B7B7B000000
      00000000000000000000000000000000000000000000C6C6C600DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00C6C6C600B5B5B500A5A5A5009C9C
      9C008C8C8C006B6B6B007B7B7B0094949400B5B5B500CECECE00CECECE00D6D6
      D600DEDEDE00DEDEDE00E7E7E700E7E7E700EFEFEF00E7E7E700CECECE00D6D6
      D600EFEFEF00EFEFEF00D6D6D600ADADAD007B7B7B0000000000000000000000
      0000000000000000000000000000BDBDBD00D6D6D600E7E7E700E7E7E700DEDE
      DE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECE
      CE00CECECE00CECECE00CECECE00C6C6C600BDBDBD00BDBDBD00C6C6C6008C8C
      8C0031313100424242005A5A5A00A5A5A500F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700DEDEDE00ADADAD007B7B7B00000000000000000000000000000000000000
      000000000000BDBDBD00D6D6D600E7E7E700DEDEDE00DEDEDE00DEDEDE00D6D6
      D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600BDBDBD00C6C6C600C6C6C6009C9C9C009494
      9400737373007B7B7B00848484007B7B7B009C9C9C009C9C9C007B7B7B008484
      840084848400848484008484840084848400DEDEDE00D6D6D600A5A5A5009C9C
      9C007B7B7B00000000000000000000000000000000000000000000000000ADAD
      AD00C6C6C600D6D6D600A5A5A50094949400949494008C8C8C008C8C8C00C6C6
      C600E7E7E700DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600C6C6
      C600B5B5B500A5A5A5008C8C8C00737373005A5A5A005A5A5A00636363005252
      52005252520084848400ADADAD00C6C6C600D6D6D600E7E7E700EFEFEF00E7E7
      E700E7E7E700D6D6D600BDBDBD00CECECE00CECECE00ADADAD007B7B7B000000
      00000000000000000000000000000000000000000000BDBDBD00D6D6D600E7E7
      E700DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600CECECE00BDBDBD00A5A5A5008C8C8C00848484007B7B7B00737373007373
      73008484840094949400A5A5A500ADADAD00BDBDBD00CECECE00CECECE00D6D6
      D600DEDEDE00E7E7E700E7E7E700EFEFEF00EFEFEF00EFEFEF00DEDEDE00BDBD
      BD00CECECE00DEDEDE00D6D6D600A5A5A5007B7B7B0000000000000000000000
      0000000000000000000000000000BDBDBD00CECECE00E7E7E700E7E7E700E7E7
      E700DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECE
      CE00C6C6C600B5B5B500949494008C8C8C00848484007B7B7B00B5B5B5009494
      94004A4A4A007B7B7B00B5B5B500DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00D6D6D600ADADAD007B7B7B00000000000000000000000000000000000000
      000000000000BDBDBD00CECECE00E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECE
      CE00C6C6C600A5A5A500A5A5A500CECECE00949494006B6B6B008C8C8C00B5B5
      B500848484008C8C8C00949494008C8C8C00ADADAD00ADADAD008C8C8C009494
      94008C8C8C008C8C8C008C8C8C0094949400E7E7E700D6D6D6009C9C9C009C9C
      9C007B7B7B00000000000000000000000000000000000000000000000000ADAD
      AD00C6C6C600C6C6C600A5A5A500A5A5A5009C9C9C009494940094949400CECE
      CE00E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00BDBDBD007B7B7B005A5A
      5A0052525200525252005A5A5A006B6B6B007B7B7B008C8C8C00A5A5A5008C8C
      8C0084848400ADADAD00D6D6D600E7E7E700EFEFEF00EFEFEF00E7E7E700E7E7
      E700E7E7E700DEDEDE00B5B5B500B5B5B500C6C6C600A5A5A5007B7B7B000000
      00000000000000000000000000000000000000000000BDBDBD00D6D6D600E7E7
      E700DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600C6C6C600949494007373
      730063636300636363005A5A5A005A5A5A006B6B6B00737373007B7B7B008484
      84008C8C8C009C9C9C00A5A5A500B5B5B500BDBDBD00CECECE00D6D6D600D6D6
      D600DEDEDE00E7E7E700E7E7E700EFEFEF00EFEFEF00E7E7E700E7E7E700C6C6
      C600B5B5B500CECECE00CECECE00A5A5A5007B7B7B0000000000000000000000
      0000000000000000000000000000BDBDBD00CECECE00E7E7E700E7E7E700E7E7
      E700DEDEDE00DEDEDE00DEDEDE00D6D6D600CECECE00ADADAD008C8C8C007B7B
      7B00848484007B7B7B006B6B6B0084848400ADADAD00ADADAD009C9C9C00BDBD
      BD00949494007B7B7B00C6C6C600DEDEDE00E7E7E700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      EF00D6D6D600A5A5A5007B7B7B00000000000000000000000000000000000000
      000000000000BDBDBD00CECECE00E7E7E700E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00ADADAD00848484007373
      73006B6B6B007B7B7B00ADADAD00EFEFEF00DEDEDE00CECECE00D6D6D600DEDE
      DE00CECECE00CECECE00CECECE00CECECE00D6D6D600D6D6D600CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00EFEFEF00D6D6D6009C9C9C009C9C
      9C007B7B7B00000000000000000000000000000000000000000000000000ADAD
      AD00C6C6C600BDBDBD00ADADAD00ADADAD00A5A5A500A5A5A5009C9C9C00B5B5
      B500D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE0094949400181818002121
      21005A5A5A00848484009C9C9C00ADADAD00BDBDBD00C6C6C600CECECE00A5A5
      A5008C8C8C00B5B5B500DEDEDE00EFEFEF00EFEFEF00E7E7E700E7E7E700DEDE
      DE00DEDEDE00DEDEDE00C6C6C600ADADAD00BDBDBD00A5A5A500737373000000
      00000000000000000000000000000000000000000000BDBDBD00CECECE00E7E7
      E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE006B6B6B004A4A4A005252
      520073737300B5B5B500D6D6D600ADADAD008C8C8C0084848400848484008484
      840084848400949494009C9C9C00ADADAD00BDBDBD00CECECE00D6D6D600DEDE
      DE00DEDEDE00E7E7E700EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700D6D6
      D600ADADAD00B5B5B500BDBDBD00A5A5A5007373730000000000000000000000
      0000000000000000000000000000B5B5B500CECECE00E7E7E700E7E7E700E7E7
      E700DEDEDE00DEDEDE00DEDEDE00D6D6D6008C8C8C00737373006B6B6B008484
      8400ADADAD00CECECE00D6D6D600E7E7E700F7F7F700F7F7F700C6C6C6009C9C
      9C00BDBDBD00848484007B7B7B00CECECE00DEDEDE00E7E7E700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEF
      EF00D6D6D600A5A5A50073737300000000000000000000000000000000000000
      000000000000BDBDBD00CECECE00E7E7E700E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00D6D6D6008C8C8C0031313100393939006363630094949400C6C6
      C600DEDEDE00EFEFEF00EFEFEF00F7F7F700CECECE00BDBDBD00C6C6C600D6D6
      D600BDBDBD00BDBDBD00BDBDBD00BDBDBD00CECECE00CECECE00BDBDBD00BDBD
      BD00C6C6C600BDBDBD00BDBDBD00C6C6C600EFEFEF00D6D6D6009C9C9C009494
      94007B7B7B00000000000000000000000000000000000000000000000000ADAD
      AD00BDBDBD00B5B5B500B5B5B500B5B5B500B5B5B500ADADAD00ADADAD00A5A5
      A500BDBDBD00DEDEDE00DEDEDE00DEDEDE00D6D6D600BDBDBD008C8C8C008C8C
      8C0094949400ADADAD00C6C6C600CECECE00CECECE00CECECE00CECECE00A5A5
      A5008C8C8C00BDBDBD00E7E7E700EFEFEF00E7E7E700E7E7E700DEDEDE00DEDE
      DE00D6D6D600DEDEDE00C6C6C600A5A5A500ADADAD009C9C9C00737373000000
      00000000000000000000000000000000000000000000B5B5B500C6C6C600DEDE
      DE00E7E7E700DEDEDE00DEDEDE00DEDEDE00D6D6D600B5B5B500D6D6D600E7E7
      E700EFEFEF00EFEFEF00CECECE00949494008484840084848400848484008484
      8400848484008C8C8C0094949400A5A5A500B5B5B500CECECE00D6D6D600DEDE
      DE00E7E7E700EFEFEF00EFEFEF00E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00B5B5B500A5A5A500B5B5B5009C9C9C007373730000000000000000000000
      0000000000000000000000000000B5B5B500CECECE00DEDEDE00EFEFEF00E7E7
      E700E7E7E700DEDEDE00DEDEDE00D6D6D600BDBDBD00CECECE00DEDEDE00E7E7
      E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00BDBD
      BD009C9C9C00B5B5B5007B7B7B0084848400CECECE00D6D6D600E7E7E700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F7F7F700EFEFEF00E7E7
      E700CECECE00A5A5A50073737300000000000000000000000000000000000000
      000000000000B5B5B500CECECE00DEDEDE00E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00D6D6D600949494006B6B6B0084848400CECECE00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00F7F7F700F7F7F700DEDEDE00CECECE00D6D6D600E7E7
      E700CECECE00D6D6D600D6D6D600D6D6D600DEDEDE00DEDEDE00CECECE00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600F7F7F700D6D6D600949494009494
      940073737300000000000000000000000000000000000000000000000000A5A5
      A500BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5
      B500BDBDBD00DEDEDE00E7E7E700BDBDBD00ADADAD00DEDEDE00DEDEDE00CECE
      CE00BDBDBD00BDBDBD00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600A5A5
      A50094949400BDBDBD00DEDEDE00E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600C6C6C6009C9C9C00ADADAD009C9C9C00737373000000
      00000000000000000000000000000000000000000000B5B5B500C6C6C600D6D6
      D600E7E7E700E7E7E700DEDEDE00E7E7E700E7E7E700EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E7E7E700B5B5B5008C8C8C007B7B7B007B7B7B00848484008484
      840084848400848484008C8C8C009C9C9C00B5B5B500CECECE00D6D6D600E7E7
      E700EFEFEF00EFEFEF00E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6
      D600BDBDBD009C9C9C00A5A5A500949494007373730000000000000000000000
      0000000000000000000000000000B5B5B500C6C6C600DEDEDE00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00B5B5B500A5A5A500ADADAD0073737300ADADAD00D6D6D600D6D6D600EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
      E700CECECE00A5A5A50073737300000000000000000000000000000000000000
      000000000000B5B5B500C6C6C600D6D6D600E7E7E700E7E7E700DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00E7E7E700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00F7F7F700C6C6C600ADADAD00B5B5B500CECE
      CE00A5A5A500ADADAD00ADADAD00ADADAD00BDBDBD00BDBDBD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00B5B5B500EFEFEF00DEDEDE00949494009494
      940073737300000000000000000000000000000000000000000000000000A5A5
      A500BDBDBD00C6C6C600C6C6C600C6C6C600C6C6C600CECECE00CECECE00CECE
      CE00CECECE00D6D6D600E7E7E700BDBDBD00B5B5B500E7E7E700DEDEDE00BDBD
      BD00B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500BDBDBD00BDBDBD00A5A5
      A500A5A5A500C6C6C600D6D6D600DEDEDE00D6D6D600D6D6D600D6D6D600CECE
      CE00CECECE00CECECE00C6C6C6009C9C9C00A5A5A5009C9C9C00737373000000
      00000000000000000000000000000000000000000000B5B5B500C6C6C600D6D6
      D600DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700C6C6C6007B7B7B0052525200737373006B6B6B006B6B6B00848484008C8C
      8C008C8C8C0084848400848484009C9C9C00C6C6C600DEDEDE00DEDEDE00DEDE
      DE00E7E7E700E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6
      D600BDBDBD0094949400A5A5A500949494007373730000000000000000000000
      0000000000000000000000000000B5B5B500C6C6C600DEDEDE00E7E7E700EFEF
      EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700B5B5B500A5A5A500BDBDBD00BDBDBD00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700EFEFEF00E7E7E700DEDE
      DE00C6C6C6009C9C9C0073737300000000000000000000000000000000000000
      000000000000B5B5B500C6C6C600D6D6D600E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700EFEFEF00FFFFFF00B5B5B50094949400A5A5A500C6C6
      C600949494009C9C9C009C9C9C0094949400ADADAD00B5B5B500949494009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C00EFEFEF00DEDEDE00949494009494
      940073737300000000000000000000000000000000000000000000000000A5A5
      A500B5B5B500CECECE00CECECE00CECECE00CECECE00D6D6D600D6D6D600D6D6
      D600DEDEDE00D6D6D600DEDEDE00E7E7E700E7E7E700E7E7E700BDBDBD009494
      94009C9C9C00A5A5A500A5A5A500ADADAD00ADADAD00B5B5B500ADADAD008C8C
      8C00A5A5A500CECECE00DEDEDE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00BDBDBD009C9C9C00A5A5A50094949400737373000000
      00000000000000000000000000000000000000000000B5B5B500C6C6C600D6D6
      D600DEDEDE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
      DE00ADADAD005A5A5A004A4A4A006B6B6B006B6B6B006B6B6B008C8C8C009C9C
      9C009C9C9C009494940094949400C6C6C600E7E7E700E7E7E700E7E7E700DEDE
      DE00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECE
      CE00BDBDBD00949494009C9C9C00949494007373730000000000000000000000
      0000000000000000000000000000B5B5B500C6C6C600D6D6D600E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700DEDEDE00C6C6C600D6D6D600D6D6D600C6C6C600CECECE00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600D6D6D600D6D6D600D6D6
      D600C6C6C6009C9C9C0073737300000000000000000000000000000000000000
      000000000000B5B5B500C6C6C600D6D6D600DEDEDE00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700EFEFEF00FFFFFF00ADADAD007B7B7B0094949400BDBD
      BD007B7B7B00848484008484840084848400A5A5A500A5A5A5007B7B7B008484
      84008484840084848400848484008C8C8C00EFEFEF00DEDEDE00949494009494
      940073737300000000000000000000000000000000000000000000000000A5A5
      A500B5B5B500D6D6D600D6D6D600D6D6D600D6D6D600DEDEDE00DEDEDE00E7E7
      E700EFEFEF00EFEFEF00DEDEDE00DEDEDE00DEDEDE00BDBDBD008C8C8C008484
      84008C8C8C00949494009C9C9C009C9C9C00A5A5A500ADADAD009C9C9C007B7B
      7B00A5A5A500D6D6D600D6D6D600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00C6C6C600B5B5B5009C9C9C00A5A5A50094949400737373000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00DEDEDE00DEDEDE00E7E7E700E7E7E700DEDEDE00DEDEDE00DEDEDE00D6D6
      D600A5A5A500636363005A5A5A0073737300737373007373730094949400ADAD
      AD00ADADAD00A5A5A500BDBDBD00DEDEDE00D6D6D600C6C6C600E7E7E700E7E7
      E700D6D6D600CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600CECE
      CE00BDBDBD00949494009C9C9C00949494006B6B6B0000000000000000000000
      0000000000000000000000000000ADADAD00C6C6C600D6D6D600DEDEDE00E7E7
      E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE00C6C6C600CECECE00D6D6
      D600D6D6D600D6D6D600D6D6D600CECECE00BDBDBD00B5B5B500B5B5B500C6C6
      C600BDBDBD009494940073737300000000000000000000000000000000000000
      000000000000ADADAD00C6C6C600D6D6D600DEDEDE00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700EFEFEF00FFFFFF00C6C6C600ADADAD00BDBDBD00D6D6
      D600ADADAD00ADADAD00ADADAD00ADADAD00C6C6C600C6C6C600ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00B5B5B500F7F7F700DEDEDE009C9C9C009494
      9400737373000000000000000000000000000000000000000000000000009C9C
      9C00B5B5B500D6D6D600DEDEDE00DEDEDE00DEDEDE00E7E7E700E7E7E700EFEF
      EF00F7F7F700F7F7F700E7E7E700D6D6D600C6C6C600ADADAD00949494008484
      8400848484008C8C8C008C8C8C00949494009C9C9C009C9C9C009C9C9C009C9C
      9C00C6C6C600DEDEDE00B5B5B500A5A5A500ADADAD00ADADAD00B5B5B500B5B5
      B500B5B5B500B5B5B500ADADAD009C9C9C00ADADAD00949494006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D600ADADAD00737373006B6B6B007B7B7B00737373007B7B7B0094949400A5A5
      A500ADADAD00A5A5A500BDBDBD00D6D6D600B5B5B500B5B5B500E7E7E700E7E7
      E700C6C6C600B5B5B500BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00C6C6
      C600B5B5B50094949400A5A5A500949494006B6B6B0000000000000000000000
      0000000000000000000000000000ADADAD00BDBDBD00D6D6D600DEDEDE00E7E7
      E700E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600C6C6C600D6D6D600DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00C6C6C600A5A5A500A5A5
      A500ADADAD00949494006B6B6B00000000000000000000000000000000000000
      000000000000ADADAD00BDBDBD00D6D6D600DEDEDE00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700DEDEDE00DEDEDE00EFEFEF00FFFFFF00CECECE00ADADAD00BDBDBD00D6D6
      D600ADADAD00B5B5B500B5B5B500B5B5B500C6C6C600C6C6C600ADADAD00B5B5
      B500B5B5B500B5B5B500B5B5B500BDBDBD00F7F7F700DEDEDE009C9C9C009494
      94006B6B6B000000000000000000000000000000000000000000000000009C9C
      9C00B5B5B500D6D6D600DEDEDE00E7E7E700E7E7E700EFEFEF00EFEFEF00F7F7
      F700F7F7F700F7F7F700E7E7E700D6D6D600C6C6C600B5B5B5009C9C9C008C8C
      8C008484840084848400848484008C8C8C0094949400949494009C9C9C00BDBD
      BD00D6D6D600BDBDBD008C8C8C00949494009C9C9C009C9C9C00A5A5A500A5A5
      A500ADADAD00ADADAD00A5A5A500A5A5A500ADADAD00949494006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600C6C6
      C600A5A5A500737373006B6B6B007B7B7B006B6B6B006B6B6B00737373007B7B
      7B008C8C8C0094949400A5A5A500C6C6C600DEDEDE00DEDEDE00E7E7E700CECE
      CE00A5A5A500A5A5A500ADADAD00ADADAD00ADADAD00B5B5B500B5B5B500B5B5
      B500ADADAD0094949400A5A5A500949494006B6B6B0000000000000000000000
      0000000000000000000000000000ADADAD00BDBDBD00CECECE00DEDEDE00E7E7
      E700E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00D6D6D600C6C6C600CECECE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00BDBDBD009494
      9400949494008C8C8C006B6B6B00000000000000000000000000000000000000
      000000000000ADADAD00BDBDBD00CECECE00DEDEDE00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
      DE00DEDEDE00DEDEDE00E7E7E700FFFFFF00EFEFEF00E7E7E700E7E7E700F7F7
      F700E7E7E700E7E7E700E7E7E700E7E7E700EFEFEF00E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700DEDEDE00A5A5A5009494
      94006B6B6B000000000000000000000000000000000000000000000000009C9C
      9C00B5B5B500CECECE00E7E7E700EFEFEF00EFEFEF00EFEFEF00F7F7F700FFFF
      FF00F7F7F700EFEFEF00DEDEDE00D6D6D600C6C6C600B5B5B500A5A5A5009494
      94008C8C8C00848484007B7B7B00848484008C8C8C0094949400A5A5A500BDBD
      BD00B5B5B5009C9C9C0084848400848484008C8C8C00949494009C9C9C009C9C
      9C00A5A5A500A5A5A50094949400ADADAD00B5B5B500949494006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00D6D6D600DEDEDE00DEDEDE00D6D6D600D6D6D600C6C6C600B5B5B500A5A5
      A5008C8C8C007373730073737300636363005A5A5A00525252004A4A4A004242
      4200737373008C8C8C00A5A5A500BDBDBD00DEDEDE00DEDEDE00CECECE009C9C
      9C008484840094949400949494009C9C9C00A5A5A500A5A5A500ADADAD00ADAD
      AD009C9C9C00A5A5A500ADADAD00949494006B6B6B0000000000000000000000
      0000000000000000000000000000ADADAD00BDBDBD00CECECE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600CECECE00C6C6C600DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE009C9C
      9C00848484007B7B7B0063636300000000000000000000000000000000000000
      000000000000ADADAD00BDBDBD00CECECE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00E7E7E700DEDEDE00DEDEDE00DEDE
      DE00D6D6D600D6D6D600E7E7E700FFFFFF00DEDEDE00CECECE00D6D6D600E7E7
      E700CECECE00CECECE00CECECE00CECECE00CECECE00B5B5B500949494009494
      94009C9C9C009C9C9C009C9C9C00A5A5A500C6C6C600CECECE00BDBDBD009494
      94006B6B6B000000000000000000000000000000000000000000000000009C9C
      9C00B5B5B500CECECE00E7E7E700EFEFEF00F7F7F700F7F7F700FFFFFF00F7F7
      F700EFEFEF00E7E7E700DEDEDE00D6D6D600C6C6C600B5B5B500ADADAD009C9C
      9C00949494008C8C8C00848484007B7B7B0084848400ADADAD00C6C6C600C6C6
      C600B5B5B5009C9C9C009494940084848400848484008C8C8C008C8C8C009494
      94009C9C9C009C9C9C009C9C9C00BDBDBD00B5B5B500949494006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00D6D6D600DEDEDE00DEDEDE00C6C6C600B5B5B500A5A5A5008C8C8C007B7B
      7B007B7B7B007B7B7B00737373006B6B6B006363630063636300525252004242
      420084848400ADADAD00C6C6C600CECECE00D6D6D600CECECE00ADADAD008C8C
      8C0084848400848484008C8C8C0094949400949494009C9C9C00A5A5A500A5A5
      A5009C9C9C00B5B5B500B5B5B500949494006B6B6B0000000000000000000000
      0000000000000000000000000000ADADAD00BDBDBD00CECECE00D6D6D600DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C6C6C600CECECE00DEDEDE00DEDEDE00DEDEDE00E7E7
      E700EFEFEF00E7E7E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00A5A5
      A5007B7B7B007B7B7B0063636300000000000000000000000000000000000000
      000000000000ADADAD00BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600D6D6D600E7E7E700FFFFFF00C6C6C600A5A5A500B5B5B500D6D6
      D600A5A5A500ADADAD00ADADAD00ADADAD00E7E7E700E7E7E700C6C6C600B5B5
      B500ADADAD00ADADAD00ADADAD00C6C6C600BDBDBD00D6D6D600BDBDBD009494
      94006B6B6B000000000000000000000000000000000000000000000000009C9C
      9C00B5B5B500C6C6C600DEDEDE00F7F7F700F7F7F700FFFFFF00FFFFFF00F7F7
      F700EFEFEF00E7E7E700DEDEDE00D6D6D600C6C6C600BDBDBD00ADADAD00A5A5
      A5009C9C9C00949494008484840084848400A5A5A500C6C6C600CECECE00CECE
      CE00BDBDBD00A5A5A5009C9C9C008C8C8C008484840084848400848484008C8C
      8C00949494008C8C8C00ADADAD00C6C6C600BDBDBD00949494006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00B5B5B500CECE
      CE00D6D6D600DEDEDE00D6D6D600ADADAD00949494008C8C8C008C8C8C008484
      84007B7B7B007B7B7B007B7B7B007373730063636300636363006B6B6B008C8C
      8C00C6C6C600DEDEDE00E7E7E700DEDEDE00D6D6D600C6C6C600ADADAD009C9C
      9C008C8C8C008484840084848400848484008C8C8C00949494009C9C9C009C9C
      9C00A5A5A500BDBDBD00B5B5B500949494006B6B6B0000000000000000000000
      0000000000000000000000000000ADADAD00B5B5B500CECECE00D6D6D600DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6
      D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00C6C6C600CECECE00DEDEDE00DEDEDE00E7E7E700F7F7
      F700FFFFFF00EFEFEF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00ADAD
      AD007B7B7B007373730063636300000000000000000000000000000000000000
      000000000000ADADAD00B5B5B500CECECE00D6D6D600DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D600D6D6D600CECECE00DEDEDE00FFFFFF00C6C6C600A5A5A500B5B5B500CECE
      CE00A5A5A500ADADAD00ADADAD00ADADAD00E7E7E700F7F7F700EFEFEF00E7E7
      E700DEDEDE00D6D6D600D6D6D600ADADAD00C6C6C600D6D6D600BDBDBD009494
      94006B6B6B000000000000000000000000000000000000000000000000009C9C
      9C00B5B5B500C6C6C600D6D6D600EFEFEF00FFFFFF00FFFFFF00F7F7F700EFEF
      EF00EFEFEF00E7E7E700D6D6D600CECECE00C6C6C600BDBDBD00ADADAD00A5A5
      A5009C9C9C009494940094949400ADADAD00CECECE00D6D6D600D6D6D600CECE
      CE00BDBDBD00ADADAD009C9C9C00949494008C8C8C00848484007B7B7B008484
      84008C8C8C00A5A5A500C6C6C600CECECE00BDBDBD00949494006B6B6B000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00D6D6D600DEDEDE00D6D6D600B5B5B500A5A5A500A5A5A500A5A5A5009C9C
      9C00949494008484840084848400848484008484840094949400BDBDBD00EFEF
      EF00F7F7F700F7F7F700EFEFEF00DEDEDE00D6D6D600C6C6C600B5B5B500A5A5
      A500949494008C8C8C008484840084848400848484008C8C8C0094949400A5A5
      A500BDBDBD00C6C6C600BDBDBD00949494006B6B6B0000000000000000000000
      0000000000000000000000000000ADADAD00BDBDBD00CECECE00D6D6D600DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00C6C6C600CECECE00DEDEDE00E7E7E700EFEFEF00F7F7
      F700F7F7F700EFEFEF00EFEFEF00E7E7E700DEDEDE00DEDEDE00DEDEDE00ADAD
      AD007B7B7B007B7B7B0063636300000000000000000000000000000000000000
      000000000000ADADAD00BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D600D6D6D600CECECE00DEDEDE00FFFFFF0094949400636363007B7B7B00ADAD
      AD00636363006B6B6B006B6B6B0063636300A5A5A500EFEFEF00E7E7E700DEDE
      DE00D6D6D600BDBDBD009C9C9C00C6C6C600D6D6D600CECECE00BDBDBD009494
      94006B6B6B00000000000000000000000000000000000000000000000000A5A5
      A500B5B5B500C6C6C600D6D6D600DEDEDE00EFEFEF00F7F7F700F7F7F700EFEF
      EF00E7E7E700DEDEDE00D6D6D600CECECE00C6C6C600BDBDBD00B5B5B500A5A5
      A5009C9C9C00A5A5A500BDBDBD00DEDEDE00E7E7E700DEDEDE00D6D6D600CECE
      CE00BDBDBD00ADADAD00A5A5A5009C9C9C009494940084848400848484008484
      84009C9C9C00BDBDBD00CECECE00CECECE00BDBDBD008C8C8C00636363000000
      00000000000000000000000000000000000000000000ADADAD00BDBDBD00CECE
      CE00D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00C6C6C600BDBD
      BD00ADADAD00949494008C8C8C009C9C9C00949494009C9C9C00CECECE00F7F7
      F700F7F7F700EFEFEF00E7E7E700DEDEDE00D6D6D600C6C6C600B5B5B500ADAD
      AD009C9C9C00949494008C8C8C0084848400848484008C8C8C009C9C9C00BDBD
      BD00CECECE00CECECE00BDBDBD008C8C8C006363630000000000000000000000
      0000000000000000000000000000ADADAD00BDBDBD00CECECE00D6D6D600DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00C6C6C600CECECE00DEDEDE00EFEFEF00F7F7F700E7E7
      E700E7E7E700EFEFEF00FFFFFF00F7F7F700E7E7E700DEDEDE00D6D6D600A5A5
      A5008C8C8C007B7B7B0063636300000000000000000000000000000000000000
      000000000000ADADAD00BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D600D6D6D600CECECE00DEDEDE00F7F7F700CECECE00B5B5B500C6C6C600D6D6
      D600B5B5B500BDBDBD00BDBDBD00B5B5B500C6C6C600E7E7E700DEDEDE00D6D6
      D600BDBDBD009C9C9C00B5B5B500D6D6D600D6D6D600CECECE00BDBDBD008C8C
      8C0063636300000000000000000000000000000000000000000000000000ADAD
      AD00BDBDBD00C6C6C600D6D6D600D6D6D600DEDEDE00E7E7E700EFEFEF00EFEF
      EF00E7E7E700DEDEDE00D6D6D600CECECE00C6C6C600BDBDBD00B5B5B500B5B5
      B500BDBDBD00D6D6D600EFEFEF00EFEFEF00E7E7E700DEDEDE00D6D6D600CECE
      CE00BDBDBD00B5B5B500ADADAD009C9C9C00949494008C8C8C00848484009494
      9400BDBDBD00CECECE00D6D6D600CECECE00B5B5B5008C8C8C00636363000000
      00000000000000000000000000000000000000000000B5B5B500BDBDBD00CECE
      CE00D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6
      D600BDBDBD009494940084848400A5A5A50094949400A5A5A500CECECE00F7F7
      F700F7F7F700EFEFEF00E7E7E700DEDEDE00D6D6D600C6C6C600BDBDBD00ADAD
      AD00A5A5A5009C9C9C00949494008C8C8C008C8C8C009C9C9C00BDBDBD00CECE
      CE00D6D6D600CECECE00B5B5B5008C8C8C006363630000000000000000000000
      0000000000000000000000000000B5B5B500BDBDBD00CECECE00D6D6D600DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECE
      CE00CECECE00CECECE00C6C6C600C6C6C600D6D6D600EFEFEF00F7F7F700EFEF
      EF00EFEFEF00F7F7F700F7F7F700EFEFEF00E7E7E700DEDEDE00C6C6C6009C9C
      9C00949494007B7B7B0063636300000000000000000000000000000000000000
      000000000000B5B5B500BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D600D6D6D600D6D6D600DEDEDE00F7F7F700B5B5B50094949400A5A5A500C6C6
      C600949494009C9C9C009C9C9C009C9C9C00ADADAD00DEDEDE00D6D6D600C6C6
      C600A5A5A500C6C6C600D6D6D600D6D6D600D6D6D600CECECE00B5B5B5008C8C
      8C0063636300000000000000000000000000000000000000000000000000BDBD
      BD00C6C6C600CECECE00CECECE00D6D6D600D6D6D600DEDEDE00DEDEDE00DEDE
      DE00E7E7E700E7E7E700DEDEDE00DEDEDE00D6D6D600CECECE00CECECE00DEDE
      DE00EFEFEF00F7F7F700EFEFEF00EFEFEF00E7E7E700DEDEDE00D6D6D600CECE
      CE00C6C6C600B5B5B500ADADAD00A5A5A5009C9C9C00949494009C9C9C00BDBD
      BD00D6D6D600D6D6D600D6D6D600CECECE00ADADAD007B7B7B00525252000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600CECE
      CE00D6D6D600D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6
      D600C6C6C6009C9C9C0084848400A5A5A500A5A5A500B5B5B500D6D6D600EFEF
      EF00EFEFEF00E7E7E700DEDEDE00D6D6D600CECECE00C6C6C600BDBDBD00B5B5
      B500ADADAD00A5A5A5009C9C9C009C9C9C00A5A5A500BDBDBD00D6D6D600D6D6
      D600D6D6D600CECECE00ADADAD007B7B7B005252520000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600CECECE00D6D6D600D6D6
      D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600CECECE00DEDEDE00E7E7E700E7E7
      E700F7F7F700FFFFFF00F7F7F700E7E7E700DEDEDE00CECECE00ADADAD00A5A5
      A5009C9C9C007B7B7B0052525200000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600CECECE00D6D6D600D6D6D600DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600D6D6D600DEDEDE00EFEFEF00E7E7E700DEDEDE00DEDEDE00E7E7
      E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE00D6D6D600CECECE00C6C6
      C600C6C6C600CECECE00D6D6D600D6D6D600D6D6D600CECECE00ADADAD007B7B
      7B0052525200000000000000000000000000000000000000000000000000D6D6
      D600D6D6D600CECECE00CECECE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600DEDEDE00EFEFEF00F7F7F700F7F7F700EFEFEF00E7E7E700E7E7E700DEDE
      DE00EFEFEF00F7F7F700EFEFEF00EFEFEF00E7E7E700DEDEDE00D6D6D600CECE
      CE00C6C6C600B5B5B500ADADAD00A5A5A500A5A5A500ADADAD00CECECE00D6D6
      D600D6D6D600D6D6D600CECECE00BDBDBD009C9C9C0063636300525252000000
      00000000000000000000000000000000000000000000DEDEDE00D6D6D600CECE
      CE00CECECE00D6D6D600D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00CECECE00A5A5A5008C8C8C00ADADAD00B5B5B500C6C6C600E7E7E700EFEF
      EF00EFEFEF00E7E7E700DEDEDE00D6D6D600D6D6D600CECECE00BDBDBD00B5B5
      B500ADADAD00ADADAD00ADADAD00B5B5B500C6C6C600D6D6D600D6D6D600D6D6
      D600CECECE00BDBDBD009C9C9C00636363005252520000000000000000000000
      0000000000000000000000000000DEDEDE00D6D6D600CECECE00CECECE00D6D6
      D600D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6
      D600CECECE00CECECE00CECECE00CECECE00C6C6C600CECECE00D6D6D600DEDE
      DE00E7E7E700E7E7E700E7E7E700DEDEDE00CECECE00BDBDBD00B5B5B500B5B5
      B500949494006B6B6B0052525200000000000000000000000000000000000000
      000000000000DEDEDE00D6D6D600CECECE00CECECE00D6D6D600D6D6D600DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600D6D6D600DEDEDE00EFEFEF00C6C6C600B5B5B500BDBDBD00CECE
      CE00ADADAD00B5B5B500B5B5B500ADADAD00CECECE00CECECE00C6C6C600CECE
      CE00D6D6D600D6D6D600D6D6D600D6D6D600CECECE00BDBDBD009C9C9C006363
      6300525252000000000000000000000000000000000000000000000000000000
      0000E7E7E700DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600DEDEDE00F7F7F700F7F7F700EFEFEF00EFEFEF00E7E7E700DEDE
      DE00D6D6D600DEDEDE00DEDEDE00E7E7E700DEDEDE00DEDEDE00D6D6D600CECE
      CE00C6C6C600BDBDBD00B5B5B500B5B5B500C6C6C600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C6C6C600ADADAD007B7B7B0052525200000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600C6C6C600BDBDBD00C6C6C600CECECE00CECECE00DEDEDE00E7E7
      E700EFEFEF00E7E7E700DEDEDE00DEDEDE00D6D6D600CECECE00C6C6C600BDBD
      BD00B5B5B500B5B5B500C6C6C600CECECE00D6D6D600D6D6D600D6D6D600D6D6
      D600C6C6C600ADADAD007B7B7B00525252000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00C6C6C600CECECE00CECE
      CE00D6D6D600CECECE00CECECE00C6C6C600C6C6C600BDBDBD00BDBDBD00ADAD
      AD007B7B7B005252520000000000000000000000000000000000000000000000
      00000000000000000000E7E7E700DEDEDE00D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600D6D6D600DEDEDE00EFEFEF00D6D6D600C6C6C600CECECE00DEDE
      DE00C6C6C600C6C6C600C6C6C600BDBDBD00CECECE00D6D6D600CECECE00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD007B7B7B005252
      5200000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700F7F7F700E7E7E700D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600CECECE00D6D6D600DEDEDE00EFEFEF00E7E7E700E7E7E700DEDE
      DE00D6D6D600CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600CECECE00CECECE00D6D6D600D6D6D600D6D6D600CECE
      CE00CECECE00C6C6C600B5B5B5008C8C8C00636363005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700EFEF
      EF00E7E7E700D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600CECECE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600DEDEDE00D6D6D600D6D6D600CECECE00C6C6C600C6C6
      C600C6C6C600CECECE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00C6C6
      C600B5B5B5008C8C8C00636363005A5A5A000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700EFEFEF00E7E7E700D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00ADADAD008C8C
      8C00636363005A5A5A0000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700EFEFEF00E7E7E700D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600DEDEDE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00E7E7E700DEDEDE00D6D6D600CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600B5B5B5008C8C8C00636363005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00F7F7F700E7E7E700D6D6D600CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00D6D6D600D6D6
      D600D6D6D600CECECE00C6C6C600BDBDBD00BDBDBD00C6C6C600C6C6C600C6C6
      C600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6
      C600BDBDBD00ADADAD008C8C8C006B6B6B006363630000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00F7F7F700E7E7E700D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600BDBDBD00ADAD
      AD008C8C8C006B6B6B0063636300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00F7F7F700E7E7
      E700D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600C6C6C600BDBDBD00ADADAD008C8C8C006B6B
      6B00636363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00F7F7F700E7E7E700D6D6D600CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600CECECE00CECECE00CECE
      CE00C6C6C600C6C6C600BDBDBD00ADADAD008C8C8C006B6B6B00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00F7F7F700E7E7E700DEDEDE00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00B5B5
      B500A5A5A5008C8C8C00737373006B6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00F7F7F700E7E7E700DEDEDE00CECECE00CECECE00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00B5B5B500A5A5A5008C8C
      8C00737373006B6B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00F7F7
      F700E7E7E700DEDEDE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600BDBDBD00BDBDBD00B5B5B500A5A5A5008C8C8C00737373006B6B
      6B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00F7F7F700E7E7E700DEDE
      DE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BDBD
      BD00BDBDBD00B5B5B500A5A5A5008C8C8C00737373006B6B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700E7E7E700D6D6D600CECE
      CE00C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5B500A5A5
      A500949494008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700E7E7E700D6D6D600CECECE00C6C6C600BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00B5B5B500B5B5B500A5A5A500949494008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700E7E7E700D6D6D600CECECE00C6C6C600BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00B5B5B500ADADAD00A5A5A5009494940084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700E7E7
      E700D6D6D600CECECE00C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5
      B500B5B5B500A5A5A50094949400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000B8000000B80000000100010000000000401100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF00FF00000003FFFC0000000FFFF00000003FFFC0000000FF00
      FC00000000FFF000000003FFC00000000FFF000000003F00F8000000007FE000
      000001FF8000000007FE000000001F00F0000000003FC000000000FF00000000
      03FC000000000F00F0000000003FC000000000FF0000000003FC000000000F00
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700F0000000003FC000000000FF00000000
      03FC000000000F00F0000000003FC000000000FF0000000003FC000000000F00
      F8000000007FE000000001FF8000000007FE000000001F00FC00000000FFF000
      000003FFC00000000FFF000000003F00FF00000003FFFC0000000FFFF0000000
      3FFFC0000000FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF00000003FFFC00
      00000FFFF00000003FFFC0000000FF00FC00000000FFF000000003FFC0000000
      0FFF000000003F00F8000000007FE000000001FF8000000007FE000000001F00
      F0000000003FC000000000FF0000000003FC000000000F00F0000000003FC000
      000000FF0000000003FC000000000F00E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      F0000000003FC000000000FF0000000003FC000000000F00F0000000003FC000
      000000FF0000000003FC000000000F00F8000000007FE000000001FF80000000
      07FE000000001F00FC00000000FFF000000003FFC00000000FFF000000003F00
      FF00000003FFFC0000000FFFF00000003FFFC0000000FF00FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF00FF00000003FFFC0000000FFFF00000003FFFC0000000FF00
      FC00000000FFF000000003FFC00000000FFF000000003F00F8000000007FE000
      000001FF8000000007FE000000001F00F0000000003FC000000000FF00000000
      03FC000000000F00F0000000003FC000000000FF0000000003FC000000000F00
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700E0000000001F80000000007E00000000
      01F8000000000700E0000000001F80000000007E0000000001F8000000000700
      E0000000001F80000000007E0000000001F8000000000700E0000000001F8000
      0000007E0000000001F8000000000700F0000000003FC000000000FF00000000
      03FC000000000F00F0000000003FC000000000FF0000000003FC000000000F00
      F8000000007FE000000001FF8000000007FE000000001F00FC00000000FFF000
      000003FFC00000000FFF000000003F00FF00000003FFFC0000000FFFF0000000
      3FFFC0000000FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      000000000000}
  end
  object pmCols: TPopupMenu
    Images = ilMenus
    Left = 403
    Top = 25
    object N19: TMenuItem
      Tag = -1
      Caption = '-'
    end
    object Neu1: TMenuItem
      Tag = -1
      Caption = '&Neu...'
      Default = True
      HelpContext = 111
      ImageIndex = 0
      OnClick = menNewColClick
    end
  end
  object ilThumbs: TImageList
    Height = 72
    Width = 72
    Left = 224
    Top = 144
  end
  object pmTreeView: TPopupMenu
    Images = ilMenus
    OnPopup = pmTreeViewPopup
    Left = 64
    Top = 112
    object menTvDiskAkt: TMenuItem
      Tag = 1
      Caption = 'Datenträger aktualisieren...'
      HelpContext = 510
      Hint = '*Liest den Datenträger neu ein'
      ImageIndex = 22
      ShortCut = 8308
      OnClick = menLVDiskRefreshClick
    end
    object menTvDiskDel: TMenuItem
      Tag = 1
      Caption = 'Datenträger entfernen'
      HelpContext = 511
      Hint = 'Entfernt den Datenträger aus der Sammlung'
      ImageIndex = 5
      ShortCut = 8238
      OnClick = menDiskDeleteClick
    end
    object MenuItem10: TMenuItem
      Tag = -1
      Caption = '-'
    end
    object menTvSearch: TMenuItem
      Tag = -1
      Caption = 'Durchsuchen...'
      HelpContext = 570
      Hint = '*Startet die Suchmaske mit der aktuellen Position'
      ImageIndex = 42
      ShortCut = 16454
      OnClick = menTvSearchClick
    end
    object N20: TMenuItem
      Caption = '-'
    end
    object menTvSammlung: TMenuItem
      Caption = 'Sammlung...'
      HelpContext = 121
      ImageIndex = 3
      OnClick = menColConfigClick
    end
    object N28: TMenuItem
      Caption = '-'
    end
    object mentvRenameDisk: TMenuItem
      Tag = 1
      Caption = 'Umbenennen'
      ImageIndex = 3
      ShortCut = 113
      OnClick = mentvRenameDiskClick
    end
  end
  object pmNote: TPopupMenu
    Left = 145
    Top = 499
    object menNoteNext: TMenuItem
      Caption = 'Nächster Eintrag'
      ShortCut = 8205
      OnClick = menNoteNextClick
    end
  end
  object ColorDialog: TColorDialog
    Ctl3D = True
    Left = 46
    Top = 132
  end
  object dropFS: TDropFileSource
    Dragtypes = [dtCopy]
    ImageIndex = 0
    ShowImage = False
    ImageHotSpotX = 16
    ImageHotSpotY = 16
    Files.Strings = (
      'c:\autoexec.bat')
    Left = 256
    Top = 96
  end
  object pmGenList: TPopupMenu
    Images = ilMenus
    Left = 88
    Top = 180
    object menListDoub: TMenuItem
      Caption = 'doppelte Dateien'
      ImageIndex = 30
      ShortCut = 119
      OnClick = menListGenGen
    end
    object N24: TMenuItem
      Caption = '-'
    end
    object menListAND: TMenuItem
      Tag = 1
      Caption = 'auch enthalten in'
      ImageIndex = 32
      OnClick = menListGenGen
    end
    object menListNOT: TMenuItem
      Tag = 2
      Caption = 'nicht enthalten in'
      ImageIndex = 31
      OnClick = menListGenGen
    end
    object N25: TMenuItem
      Caption = '-'
    end
    object menListOR: TMenuItem
      Tag = 3
      Caption = 'kombinieren mit'
      ImageIndex = 25
      OnClick = menListGenGen
    end
  end
  object pmSearchIn: TPopupMenu
    Left = 41
    Top = 217
    object menSearchInVerb: TMenuItem
      Caption = 'Verbund...'
      OnClick = genSearchInPMClick
    end
    object menSearchInDisk: TMenuItem
      Caption = 'Datenträger...'
      OnClick = genSearchInPMClick
    end
    object menSearchInList: TMenuItem
      Caption = 'Beschränken auf Liste...'
      OnClick = genSearchInPMClick
    end
  end
  object pmProps: TPopupMenu
    OnPopup = pmPropsPopup
    Left = 136
    Top = 350
    object menResetProp: TMenuItem
      Caption = 'Feld zurücksetzen'
      OnClick = menResetPropClick
    end
    object N29: TMenuItem
      Caption = '-'
    end
    object menNew: TMenuItem
      Caption = 'Neues Feld'
    end
    object N30: TMenuItem
      Caption = '-'
    end
    object Lschen1: TMenuItem
      Caption = 'Datenbank'
      Visible = False
      object MultiMediaVorschaulschen1: TMenuItem
        Caption = 'MultiMedia-Vorschau löschen'
        OnClick = MultiMediaVorschaulschen1Click
      end
    end
  end
  object fdCopyFiles: TFolderDialog
    Top = 106
    Left = 453
    Title = 'Zielordner wählen'
    Text = 
      'Bitte wähle den Ordner, in den die Dateien kopiert werden sollen' +
      ':'
    CustomButton = cbCopyFilesCreateSub
  end
  object pmLayout: TPopupMenu
    Images = ilMenus
    OnPopup = pmLayoutPopup
    Left = 544
    Top = 72
    object menSpalten: TMenuItem
      Caption = 'Spalten...'
      Default = True
      HelpContext = 144
      Hint = 'Anordnung der Spalten bearbeiten'
      ImageIndex = 36
      OnClick = menListLayoutClick
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object menLayoutSave: TMenuItem
      Caption = 'Speichern unter: '
      HelpContext = 953
      ImageIndex = 53
      OnClick = menLayoutSaveClick
    end
    object menLayoutSaveForAdr: TMenuItem
      Caption = 'für Adresse speichern'
      HelpContext = 954
      Hint = 'Layout für diesen Ordner/Adresse festlegen'
      ImageIndex = 55
      OnClick = menLayoutSaveForAdrClick
    end
    object menLaySaveAs: TMenuItem
      Caption = 'Speichern unter'
    end
    object menLayDel: TMenuItem
      Caption = 'Löschen / Reset'
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object menLayoutAutoSave: TMenuItem
      Caption = 'Automatisch speichern'
      HelpContext = 955
      Hint = 
        'Alle Ändernungen an der Listenansicht werden sofort unter dem ak' +
        'tuellen Layout gespeichert.'
      OnClick = menLayoutAutoSaveClick
    end
  end
  object XPMenu: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = ANSI_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clBtnFace
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    OverrideOwnerDraw = True
    Gradient = False
    FlatMenu = False
    AutoDetect = False
    Active = False
    Left = 40
    Top = 8
  end
end
