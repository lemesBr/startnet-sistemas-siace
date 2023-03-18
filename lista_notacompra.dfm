object frmlista_notacompra: Tfrmlista_notacompra
  Left = 637
  Top = 329
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'NOTA DE ENTRADA | Relat'#243'rios'
  ClientHeight = 227
  ClientWidth = 431
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Relat'#243'rio: '
  end
  object Bevel1: TBevel
    Left = 16
    Top = 40
    Width = 385
    Height = 2
  end
  object Label6: TLabel
    Left = 16
    Top = 53
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Ordem:'
  end
  object Label2: TLabel
    Left = 16
    Top = 110
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Per'#237'odo:'
  end
  object Label3: TLabel
    Left = 193
    Top = 105
    Width = 9
    Height = 13
    Caption = 'a '
  end
  object Label7: TLabel
    Left = 16
    Top = 141
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'CFOP:'
  end
  object Bevel2: TBevel
    Left = 0
    Top = 176
    Width = 431
    Height = 3
    Align = alBottom
  end
  object Label4: TLabel
    Left = 16
    Top = 81
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Filtro:'
  end
  object combo_relatorio: TComboBox
    Left = 93
    Top = 11
    Width = 300
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnKeyPress = combo_relatorioKeyPress
    Items.Strings = (
      'RELA'#199#195'O DE NOTAS FISCAIS'
      'RELA'#199#195'O DE NOTAS FISCAIS COM ITENS'
      'RELA'#199#195'O DE COMPRA DE PRODUTOS'
      'REGISTRO DE ENTRADA')
  end
  object combo_ordem: TComboBox
    Left = 93
    Top = 48
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 1
    Text = 'DATA CADASTRO'
    OnKeyPress = combo_relatorioKeyPress
    Items.Strings = (
      'DATA CADASTRO'
      'DATA EMISSAO'
      'NUMERO'
      'CFOP')
  end
  object DateEdit1: TDateEdit
    Left = 93
    Top = 105
    Width = 97
    Height = 21
    GlyphKind = gkCustom
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
      8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
      F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
      D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
      BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
      F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
      8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
      CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
      F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
      95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
      E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
      F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
      A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
      FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
      FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
      B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
      FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
      FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
      F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
      F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
      7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    NumGlyphs = 1
    TabOrder = 2
    OnKeyPress = combo_relatorioKeyPress
  end
  object DateEdit2: TDateEdit
    Left = 205
    Top = 105
    Width = 97
    Height = 21
    GlyphKind = gkCustom
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
      8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
      F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
      D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
      BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
      F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
      8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
      CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
      F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
      95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
      E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
      F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
      A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
      FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
      FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
      B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
      FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
      FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
      F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
      F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
      7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    NumGlyphs = 1
    TabOrder = 3
    OnKeyPress = combo_relatorioKeyPress
  end
  object ecfop: TEdit
    Left = 93
    Top = 137
    Width = 84
    Height = 21
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 179
    Width = 431
    Height = 48
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    object bimprimir: TAdvGlowButton
      Left = 89
      Top = -2
      Width = 115
      Height = 50
      Caption = 'Visualizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      OfficeHint.Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002B64944415478DA
        62FCFFFF3F030CB8D61D4AE0E4638F6662647006721981F007C37F4686BF7FFF
        B0BF7FFB7FDA914EEB1C06340010408CC80678B51FFDB538C798950968024C18
        44BFFEF28B61D9990F0CCFEEFFF87EFBD62DC18353BC7FC2F400041013B269CC
        CC4C7F58999918EEBF676178F08199E1F65B46866BAF18181445B919024CA418
        1455393859F8B8E723EB0108201403FE839C0D1564626484E3E7EFBE33C8F3FC
        6648B514666066650E45D603104070039A9A9A38814630819CCCC20CC28C0CCC
        40AF80E83B40979C7CF487819D9599819185F15F626222274C1F400031413527
        03A95740EBD9405E67616402BB8215A89905E802763666060E20FE0F1405BA88
        EDE7CF9FAF424242407A1800028809A8D9555252728EB7B7370F131313C33F50
        C83242BCC0088C019021AC2C4C0C6CCCCC603926266686ACAC2C1E4545C5391E
        1E1EAE0001C40214EBB5B0B06010131363D0FF34956142E736065C6017101B03
        B1AA6A3643404000C3A3478FA6030410C800752D2D2DB0023F3F3F0675757506
        7CE0CA952B0C22222260BC66CD1A25800062F9FBF72F1B1083251F3C78009678
        F3E60D56CD20B9BB77EF32181B1B83F91F3F7E64040820963F7FFE30DCBB770F
        2C00D2080C20862F5FBE603580878787E1F5EBD770F5201A2080587EFFFECDF0
        E4C913B0C0B76FDF184006FEFAF50BAB0120B9AF5FBFC2D5830C030820B00130
        0D1C1C1C0C6BD7AE05B37FFCF80156FCF9F3679053C11894EC757474E0EA417A
        01028805C8F9F7E9D327263E3E3EB01734B5F5188445C4B0BAE0F5AB170C2D4D
        F50CEEEEEE0CCF9E3D63F8F7EF1F034000B100FD3C67DBB66D9640D374396DF3
        194ABD8D18BEFD02276B867F401BFFFEFDCFF01B18C87F818A2D2D4C1976BE92
        62C8CF8F05B9E61250C94A800042C98D49D34EFE656106A6A6FF28F9034E3202
        13D79F3FFFFECDCB366786C90304180072C1114B15D29D760000000049454E44
        AE426082}
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA79300000318494441545809CD974D
        68534110C7378949AC0AD24AB57EE0C14B45686F5E5A0A05C50F3C48C1A0F92A
        01A197AAB4273D89DEBC0A160A5E6AF3A5040BC50A22D68282172FF552040F82
        88285250AAD17CFBDBF212F6E5BD645F6D823EE6CFCCCECECCCEEECEEE7BCF25
        84F50904023B7C3EDF557ACE83FD601BD0D11A06CFDD6EF7643C1E7F8FEC885C
        F5560CDEE5F7FB972A954A7F7D9FC3F62A76A793C9E46BB8962C094422910483
        870DCF97F005DADFE00DC9E57275D1791D7400496BF89C4DA5524BB2D10CA604
        62B1584FA150F8888387A0F713894408B902B444E26906BDA018FE26C608319E
        283A8BE85635C562B18FB6078852A9340577343876A25C2E7F915CC156129A0B
        854227159D45342540905AB1793C9EAF16EB260A669BB3E9EE40371F0E874FC0
        6DC99480ADC5269524E627C43C5B342C6C9EB627608CB9BE1DC160D072B25A99
        40C918AC11EBE48E488F8D8D7955832D6A6333324BFD80A21B1642F8804A7B68
        1C00928E64B3D9A308AFC03AB52C018EDB1B220E000B5184E328EF00795ABA25
        AFA2955B508D69E1ACCE338BD2506857201A8D6EE74EB84590C3868F23C676BC
        E5285FE3BDF0B399833601029D61F04BCD82D8F5E1739CC45FD097010D499B00
        95BBC80DF990803B1B46B1E920F1EF5CEB8B365D26953681D9D9D9553CCE81B6
        90BB2D51371054BB02A3A3A3BBD8CBBBC43C087454C0E01EDF02D37047A44D80
        17D431228D00A7D483E1347044DA0428BEC724719B62DCA78B48E155B04FEAEC
        D47E6D02C6399E509D5A29FFFF45687CA6A599B59322C4AC461FBC5E6F706666
        E6734D632368B7804B6810BF61B1F1E7503E9F1FC06D0E34246D02B95CEE1133
        B9E1A408D55128DC4FDC840BAACE4ED62690C964F238DE046DA17F5E84A60458
        E66C759ADC7EDD55B9057C773506F7C48FAA2CB92901F67B19650908DEE5E370
        17D82CC918978D2045E2CA318CA610B2B3D690029FCFA65F336EB7A7E80BE06F
        C8CB8C4FE1380824C9F7444C288FA50859852BFC9CF631703F7643041882B782
        96394D13F5813CF58A9595955FBDBDBD0996AA4CDF5ED0092C2B85CE099599C8
        3B2631457D5DE4DB42FEC29BFCFE000396F553C78A03590000000049454E44AE
        426082}
      Transparent = True
      TabOrder = 0
      OnClick = bimprimirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bitbtn1: TAdvGlowButton
      Left = 361
      Top = -2
      Width = 102
      Height = 50
      Caption = 'Editar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000002D0000002D08060000003A1AE2
        9A0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A4241364136343734414346423131453241343631393045313932
        4543344541412220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A424136413634373541434642313145324134363139304531393245433445
        4141223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A4241364136343732414346423131
        453241343631393045313932454334454141222073745265663A646F63756D65
        6E7449443D22786D702E6469643A424136413634373341434642313145324134
        3631393045313932454334454141222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EB4452F27000004B94944415478DAC499
        7B8815551CC7CF6EB735DDA2F595C6F66033B792D22492941E980A19F94229C9
        BC06F94FBEB2D844CDAC344D8DAC4C69C1CA1E4A3E4330522B311FF900A57C1B
        B49961E896E5FAC04796F4FD79BF477E1E66E6CEDC997BEF0F3E70CE993B33DF
        7BE6CCEFFC7EBF2931CBEB4C027605A80477805BC14DA01C9C0387C0AF6027DB
        E7E2DE2C15F3FCBB401FF018855E1FF0DBA3E020D8081681CDB9DEB424C7997E
        1E0C02F7C4F8C307C042300334E453F4703086B3EADA2F603B380C4E8233E04A
        50015A823B417B8FF34E81596022F82F49D1B2566BC183CEF856B00C7C0F3685
        5C4EF781C74177E7D8CFE039F05512A2078025CED85A3ED655319687CC7A0D18
        EC8CBF0C5E0F3AB134CB856B1CC17F80347838A660436F92E68CEF50E393C107
        B98A96B5FBA6EA8BC86AF09949D6D680BBB9FCAC3D03E647153D044C57FDF741
        4F70DCE4CF9E0523545FBCD3BB6145CB4BF7B1EACB89C34C616C0E67D9DA28F0
        5418D12B55FB4B30DA14D63E025355FF13D03C48B4BCB937B3FD17E8658A632F
        81F54AE3623F97D70A1C51C7EE05DB4CF1EC6A4E5C19FB5DECD6AF677A9C6A2F
        CF93E0D6DCF926D3630499EC94AFA8FE6CAF993EC97F6718F81C495870774E46
        B91AEB0ABECB72DE9FA005DB6D65E7B4339D568237E641B0E1BB52EE8CCD0F71
        DE6CC77F5F5A1E7DD58159098B95386326F8D0C375360F71FE0257748A01FC43
        1C3CED1167C4B17E8C9DAD40D9B44EA8197E2DC4352490DAC7FD43A2C5AA1433
        8E66FCC18E04050F721EBF2CC16BF9549B8276605AC86B2DE10B2C76BF88BE4D
        1DDC9290E0A7C13C8F71C972BEF5084BB3D941D5AE2E65706EEDB704048FF011
        6C6D4F0ED73CACDA4D4BE93BB56F8C6363C17B01C75F64A01FD57ED79B8E2C8F
        6BD4C03F3104BF41D141515C6D8ED73EA1DA8D52F418D6CA72BCE80CCE62D092
        A98D31214D54FBBC88AEF73918259C0C0A5DD309240E37E8259CA20FB45619F1
        DF2F62CDC3CFFA832F1278B9753DA54144EF56039D235CA82C8BE09E09E491D6
        74C9E262EC7188C19258C708176AE00CD47B1CEB92A060EBDFAD6D10D1FF4A43
        C5B08F86B84825B77F09AC3A984CADCE7A9FCE714A5E3EF7B2952CC951EB6CC0
        B442FD288C1F5DC065D59833DD9101D10309EEAAD6063AA9D7051B4F5FC5C7DD
        C8EE3A01F535790FCEB32D69D01379CE606497BE5155A876DB993EEBB8A53959
        5E4029E2F40819A5C5B1E14AF03EEB3474E652653245446B5267AE33C5B312F0
        B7C91430C51E01ABDD1C514AAFEFA8FE6A535C5BA604FFA8F5B825841AB5CFB7
        01738B24782413089D4CF8D63DA43EDC4DF58732732EA4F57352BE51CAA5FA56
        98B671C6AD4D6011A71036C0D9F6177B85BA7E05C8B7C0DBAA3F893E329FF6AA
        939FAEF173A741A5DE17CCE5A5DE34B38E1E098B95CC69A5539859119492652B
        AA8FE19AB226C9E8D7E053D029A6D82A4ECA2EBA336B5256EE1DEC0BC37D73E9
        C4E571BB33BE8E1E6643C8FCB205B7FA81AC87683BCEECE6F3EC0E3CDAD7AD29
        26F339AEB1C731A94CED65127A8CAEB39C6503C9436FE123F7CA8EA4BC3BDE27
        628C2DDAB06022DEE54927A3886A120E2F35992F0E3F45DB2A73FFCC2CDB6C57
        568D64F954877847C4DFFEC028F11B27612D88686D155CEFF299ED3AA662126F
        5F6030265FC5F673F9D4C7BDD9FF020C008287FA6F6E2F53F60000000049454E
        44AE426082}
      Transparent = True
      TabOrder = 1
      Visible = False
      OnClick = BitBtn1Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bcancelar: TAdvGlowButton
      Left = 222
      Top = -2
      Width = 117
      Height = 50
      Caption = 'ESC | Fechar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA79300000240494441545809ED96BD
        6B144118C66F77BDBD220A29420888E9AE10CC3F20462CC42A103039BDAFD503
        C14E24485A39B4160BEB34DE275C0A098470092129D3046C44B0102CD43E1F90
        ECDEEEE537616FB99C3B30B7AE45F08EF7DD7766DED9E779E6DDD9D94B2446BF
        FFBD02DA60010A85C21C6396EBBA4BCD66F317ED7F6A5742D05F30F640D7F54D
        E20A1EC958C88CA6692FF177954AE5AB0C440F49F4C68C909CF210C44FBADDEE
        33CFF3762DCBBA25BBB14726CB471EEF743AEF11F00D8049446C5B1211618F80
        7BD40DE03188662199E2AE09BCBF72ABE49E530D21622797CBDD6B341A5F9813
        586401D96CF68661186FD9AC59085278002A694CB0AFDE905BC0038B24209FCF
        DF87B005CA389190F8C9456CB403FA2EED7363F506FDDB44511D87B8729EE8BB
        0C2D00F2BB80AE8361E282F4553A9D6E97CB658F7E60994CE66A2A95DA805490
        9F9098AFD7EB9BC40B36948052A934EE388E58B909F096E3380F5BADD6D10544
        BF639AE63273EED0B511FCB85AADFE414E2EA18B8BAADBB6BDCCDC49FC3BA08B
        3272F2C2F6B87CC617205F2386DA301580537B2A5058D96BCA7920DA32AFD56A
        1BE48413E4A65C014EB69BC05C87FC94DDFF89762CA62C80E54FFB8C3F385A8F
        FDF65F0765011C34D7041B420E458CCB9505C4453888331270A92AD0DBF9BD38
        F83823F5950F228EDD7632992C720EEC476292DCA42C8063D705A386C76A5201
        BCEFB37CF9E224B3F93FD0E6BBF0BB1F344C80E74F2822A2E8B7E30AE24BFAA8
        1F2C4CC0077F42DC6F88C7FEF9E8638FC2A8024105CE00BC33B45732DF7FE900
        00000049454E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = bcancelarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object Combo_Filtro: TComboBox
    Left = 93
    Top = 76
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 6
    Text = 'DATA CADASTRO'
    OnKeyPress = combo_relatorioKeyPress
    Items.Strings = (
      'DATA CADASTRO'
      'DATA EMISS'#195'O'
      '')
  end
  object fxdesenhar: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 232
    Top = 10
  end
  object fxnota: TfrxReport
    Version = '6.8.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39179.400035798600000000
    ReportOptions.LastChange = 42552.599054178200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo45OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo45OnAfterData(Sender: TfrxComponent);'
      'begin'
      '    IF COPY(MEMO45.TEXT,1,1) = '#39'0'#39' THEN'
      '  BEGIN'
      '    MEMO45.TEXT := '#39#39';                                      '
      '  END;  '
      'end;'
      ''
      'begin'
      '  '
      'end.')
    Left = 200
    Top = 10
    Datasets = <
      item
        DataSet = fsnota
        DataSetName = 'fsnota'
      end
      item
        DataSet = fsnota_item
        DataSetName = 'fsnota_item'
      end
      item
        DataSet = DM.fxemitente
        DataSetName = 'fxemitente'
      end
      item
        DataSet = DM.fxrelatorio
        DataSetName = 'fxrelatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 35.015770000000000000
        Top = 98.267780000000000000
        Width = 740.409927000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 34.692950000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 19.897650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 182.133890000000000000
          Top = 19.897650000000000000
          Width = 302.362400000000000000
          Height = 15.118120000000000000
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FORNECEDOR')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 590.527830000000000000
          Top = 19.897650000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 650.590910000000000000
          Top = 19.897650000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR DA NOTA')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 0.779529999999994000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '000#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 60.252010000000000000
          Top = 18.897650000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EMISS'#195'O')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 118.944960000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ENTRADA')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 18.897650000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'MOD')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 19.677180000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'S'#201'RIE')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxemitente."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA1'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxrelatorio."LINHA1"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA2'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA2"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Top = 30.236240000000000000
          Width = 298.582869999998000000
          Height = 18.897650000000000000
          DataField = 'LINHA3'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA3"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 41.574830000000000000
          Width = 298.582869999998000000
          Height = 15.118120000000000000
          DataField = 'LINHA4'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA4"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emiss'#227'o: [Date]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA5'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA5"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 30.236240000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA6'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA6"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 41.574830000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA7'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA7"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 624.000000000000000000
          Top = 2.102350000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SIACE SISTEMAS')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 192.756030000000000000
        Width = 740.409927000000000000
        DataSet = fsnota
        DataSetName = 'fsnota'
        RowCount = 0
        object Line7: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 4.338590000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 606.165383620000000000
          Top = 18.897650000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 61.031540000000000000
          Top = 18.897650000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 492.779840000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Unit'#225'rio')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 436.086890000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 397.953000000000000000
          Top = 18.897650000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'CST')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 702.992580000000000000
          Top = 18.897650000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 557.031850000000000000
          Top = 18.897650000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 34.015770000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 181.133890000000000000
          Width = 309.921460000000000000
          Height = 15.118120000000000000
          DataField = 'FORNECEDOR'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsnota."FORNECEDOR"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 54.440940000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'DATA_EMISSAO'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsnota."DATA_EMISSAO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 588.189240000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'CFOP_NOTA'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsnota."CFOP_NOTA"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 656.701207000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL_NOTA'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsnota."TOTAL_NOTA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 114.913420000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'DATA_CADASTRO'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsnota."DATA_CADASTRO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 1.440940000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'NUM_NOTA'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsnota."NUM_NOTA"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 501.016080000000000000
          Top = 1.661410000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'MODELO'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsnota."MODELO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 543.693260000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'SERIE_NF'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsnota."SERIE_NF"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 18.897650000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo f'#225'b/Ref.')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 291.023810000000000000
        Width = 740.409927000000000000
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 146.252010000000000000
          Top = 8.314958190000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Top = 8.314958190000029000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QUANTIDADE DE ITENS:')
          ParentFont = False
        end
        object TITEN: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913373620000000000
          Top = 8.314958190000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fsnota_item."TOTAL_ITEM">,DetailData1)]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 418.953000000000000000
          Top = 8.314958190000029000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TOTAL DOS ITENS:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Top = 5.000000000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 8.559060000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo45OnAfterData'
          OnAfterPrint = 'Memo45OnAfterPrint'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<fsnota."TOTAL_NOTA"> - (SUM(<fsnota_item."TOTAL_ITEM">,DetailD' +
              'ata1))]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 253.228510000000000000
        Width = 740.409927000000000000
        DataSet = fsnota_item
        DataSetName = 'fsnota_item'
        RowCount = 0
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 4.338590000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO_PRODUTO'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsnota_item."CODIGO_PRODUTO"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 602.385853620000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'TOTAL_ITEM'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsnota_item."TOTAL_ITEM"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 61.031540000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          DataField = 'DESCRICAO'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsnota_item."DESCRICAO"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 492.779840000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_UNI'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsnota_item."VALOR_UNI"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 436.086890000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'QUANTIDADE'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsnota_item."QUANTIDADE"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 397.953000000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'CST'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsnota_item."CST"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'PERC_ICMS'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsnota_item."PERC_ICMS"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 702.992580000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'PERC_IPI'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsnota_item."PERC_IPI"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 557.031850000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_DESC'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsnota_item."VALOR_DESC"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'CFOP'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsnota_item."CFOP"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 245.669450000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsnota_item."CODLANCAMENTO"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 385.512060000000000000
        Width = 740.409927000000000000
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 146.252010000000000000
          Top = 7.094488190000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '######'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData2)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Top = 7.094488189999990000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'QUANTIDADE DE NOTAS:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 609.866420000000000000
          Top = 3.314958190000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fsnota."TOTAL_NOTA">,MasterData2)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 449.205010000000000000
          Top = 7.094488189999990000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TOTAL DAS NOTAS FISCAIS:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 438.425480000000000000
        Width = 740.409927000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object fsnota: TfrxDBDataset
    UserName = 'fsnota'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO_NOTA=CODIGO_NOTA'
      'NUM_NOTA=NUM_NOTA'
      'SERIE_NF=SERIE_NF'
      'CFOP_NOTA=CFOP_NOTA'
      'DATA_EMISSAO=DATA_EMISSAO'
      'COD_FORNECEDOR=COD_FORNECEDOR'
      'FORNECEDOR=FORNECEDOR'
      'DATA_VENCIMENTO=DATA_VENCIMENTO'
      'TOTAL_NOTA=TOTAL_NOTA'
      'CNPJ=CNPJ'
      'IE=IE'
      'USUARIO_CADASTRO=USUARIO_CADASTRO'
      'DATA_CADASTRO=DATA_CADASTRO'
      'OBSERVACOES=OBSERVACOES'
      'MES=MES'
      'ANO=ANO'
      'CHAVE_NFE=CHAVE_NFE'
      'PROTOCOLO_NFE=PROTOCOLO_NFE'
      'BASE_CALCULO_ICMS=BASE_CALCULO_ICMS'
      'VALOR_ICMS=VALOR_ICMS'
      'BASE_CALC_ICMS_SUBST=BASE_CALC_ICMS_SUBST'
      'VALOR_ICMS_SUBST=VALOR_ICMS_SUBST'
      'VALOR_FRETE=VALOR_FRETE'
      'VALOR_SEGURO=VALOR_SEGURO'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'VALOR_OUTRAS_DESPESAS=VALOR_OUTRAS_DESPESAS'
      'VALOR_IPI=VALOR_IPI'
      'VALOR_TOTAL_PRODUTOS=VALOR_TOTAL_PRODUTOS'
      'VALOR_TOTAL_ITENS_NOTA=VALOR_TOTAL_ITENS_NOTA'
      'VLR_ICMS_GARANTIDO=VLR_ICMS_GARANTIDO'
      'cod_pagto=cod_pagto'
      'TP=TP'
      'ENDERECO_CLI_FORN=ENDERECO_CLI_FORN'
      'END_NUM_CLIENTE=END_NUM_CLIENTE'
      'COD_IBGE=COD_IBGE'
      'CEP_CLIENTE_FORN=CEP_CLIENTE_FORN'
      'BAIRRO_CLIENTE_FORN=BAIRRO_CLIENTE_FORN'
      'TIPO_PESSOA=TIPO_PESSOA'
      'TELEFONE=TELEFONE'
      'CIDADE_CLIENTE_FORN=CIDADE_CLIENTE_FORN'
      'UF_CLIENTE_FORN=UF_CLIENTE_FORN'
      'DESC_PAGTO=DESC_PAGTO'
      'VALOR_AVISTA=VALOR_AVISTA'
      'VALOR_PRAZO=VALOR_PRAZO'
      'pagamento=pagamento'
      'MODELO=MODELO'
      'EMITENTE=EMITENTE'
      'VALOR_COFINS=VALOR_COFINS'
      'VALOR_PIS=VALOR_PIS'
      'VALOR_PIS_ST=VALOR_PIS_ST'
      'VALOR_COFIS_ST=VALOR_COFIS_ST'
      'PERC_ICMS=PERC_ICMS'
      'CST=CST'
      'SUB_SERIE=SUB_SERIE'
      'TRANSP_NOME=TRANSP_NOME'
      'TRANSP_PLACA=TRANSP_PLACA'
      'TRANSP_PLACAUF=TRANSP_PLACAUF'
      'TRANSP_IE=TRANSP_IE'
      'TRANSP_CNPJ=TRANSP_CNPJ'
      'TRANSP_ENDERECO=TRANSP_ENDERECO'
      'TRANSP_CIDADE=TRANSP_CIDADE'
      'TRANSP_UF=TRANSP_UF'
      'TRANSP_QTDE=TRANSP_QTDE'
      'TRANSP_ESPECIE=TRANSP_ESPECIE'
      'TRANSP_MARCA=TRANSP_MARCA'
      'TRANSP_NUMERO=TRANSP_NUMERO'
      'TRANSP_PESOBRUTO=TRANSP_PESOBRUTO'
      'TRANSP_PESOLIQUIDO=TRANSP_PESOLIQUIDO'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'OBS3=OBS3'
      'OBS4=OBS4'
      'OBS5=OBS5'
      'OBS6=OBS6'
      'OBS7=OBS7'
      'OBS8=OBS8'
      'SITUACAO=SITUACAO'
      'ITENS=ITENS'
      'TIPO=TIPO'
      'NOTA_FISCAL=NOTA_FISCAL'
      'ICMS_ISENTO=ICMS_ISENTO'
      'ICMS_OUTRAS=ICMS_OUTRAS'
      'DESCONTO_INCIDENTE=DESCONTO_INCIDENTE'
      'ITEM_FRETE_VALOR=ITEM_FRETE_VALOR'
      'ITEM_FRETE_BASE=ITEM_FRETE_BASE'
      'ITEM_FRETE_ALIQUOTA=ITEM_FRETE_ALIQUOTA'
      'ITEM_FRETE_ICMS=ITEM_FRETE_ICMS'
      'ITEM_SEGURO_VALOR=ITEM_SEGURO_VALOR'
      'ITEM_SEGURO_BASE=ITEM_SEGURO_BASE'
      'ITEM_SEGURO_ALIQUOTA=ITEM_SEGURO_ALIQUOTA'
      'ITEM_SEGURO_ICMS=ITEM_SEGURO_ICMS'
      'ITEM_PIS_VALOR=ITEM_PIS_VALOR'
      'ITEM_PIS_BASE=ITEM_PIS_BASE'
      'ITEM_PIS_ALIQUOTA=ITEM_PIS_ALIQUOTA'
      'ITEM_PIS_ICMS=ITEM_PIS_ICMS'
      'ITEM_COMPLEMENTO_VALOR=ITEM_COMPLEMENTO_VALOR'
      'ITEM_COMPLEMENTO_BASE=ITEM_COMPLEMENTO_BASE'
      'ITEM_COMPLEMENTO_ALIQUOTA=ITEM_COMPLEMENTO_ALIQUOTA'
      'ITEM_COMPLEMENTO_ICMS=ITEM_COMPLEMENTO_ICMS'
      'ITEM_SERVICO_VALOR=ITEM_SERVICO_VALOR'
      'ITEM_SERVICO_BASE=ITEM_SERVICO_BASE'
      'ITEM_SERVICO_ALIQUOTA=ITEM_SERVICO_ALIQUOTA'
      'ITEM_SERVICO_ICMS=ITEM_SERVICO_ICMS'
      'ITEM_OUTRAS_VALOR=ITEM_OUTRAS_VALOR'
      'ITEM_OUTRAS_BASE=ITEM_OUTRAS_BASE'
      'ITEM_OUTRAS_ALIQUOTA=ITEM_OUTRAS_ALIQUOTA'
      'ITEM_OUTRAS_ICMS=ITEM_OUTRAS_ICMS'
      'ITEM_ESPECIAL_TOTAL=ITEM_ESPECIAL_TOTAL'
      'ITEM_ESPECIAL_VALOR=ITEM_ESPECIAL_VALOR'
      'BASEICMS_PRODUTOS=BASEICMS_PRODUTOS'
      'CONF_ITEM_ESPECIAL=CONF_ITEM_ESPECIAL'
      'CREDITO_ICMS=CREDITO_ICMS'
      'OPERACAO=OPERACAO'
      'INTEGRACAO=INTEGRACAO'
      'APROVEITA_CREDITO_ICMS=APROVEITA_CREDITO_ICMS'
      'COD_EMPRESA=COD_EMPRESA'
      'ICMSRETIDO=ICMSRETIDO'
      'PERC_ICMSRETIDO=PERC_ICMSRETIDO'
      'ESPECIE=ESPECIE'
      'CODREMETENTE=CODREMETENTE'
      'REMETENTE=REMETENTE'
      'VALOR_MERCADORIAS=VALOR_MERCADORIAS'
      'CONF_BASEICMS=CONF_BASEICMS'
      'CONF_VALORICMS=CONF_VALORICMS'
      'CONF_BASESUB=CONF_BASESUB'
      'CONF_VALORSUB=CONF_VALORSUB'
      'CONF_FRETE=CONF_FRETE'
      'CONF_SEGURO=CONF_SEGURO'
      'CONF_OUTRAS=CONF_OUTRAS'
      'CONF_IPI=CONF_IPI'
      'CONF_DESCONTO=CONF_DESCONTO'
      'CONF_TOTALPRODUTOS=CONF_TOTALPRODUTOS'
      'CONF_TOTALNOTA=CONF_TOTALNOTA'
      'CONF_ICMSRETIDO=CONF_ICMSRETIDO'
      'CONF_ICMSREDITO_PERC=CONF_ICMSREDITO_PERC'
      'CONFI_PIS=CONFI_PIS'
      'CONF_COFINS=CONF_COFINS')
    DataSet = qrnota
    BCDToCurrency = False
    Left = 168
    Top = 10
  end
  object PopupMenu1: TPopupMenu
    Left = 360
    Top = 8
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object qrnota_item: TFDQuery
    IndexFieldNames = 'CODIGO_NOTA'
    MasterSource = dsnota
    MasterFields = 'CODIGO_NOTA'
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from notasfiscais_itens')
    Left = 296
    Top = 10
    object qrnota_itemCODIGO_ITEM: TIntegerField
      FieldName = 'CODIGO_ITEM'
      Required = True
    end
    object qrnota_itemCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
    end
    object qrnota_itemCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 13
    end
    object qrnota_itemCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object qrnota_itemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object qrnota_itemNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 8
    end
    object qrnota_itemCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object qrnota_itemCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrnota_itemDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
    object qrnota_itemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
    end
    object qrnota_itemVALOR_UNI: TBCDField
      FieldName = 'VALOR_UNI'
      Precision = 18
    end
    object qrnota_itemVALOR_DESC: TFMTBCDField
      FieldName = 'VALOR_DESC'
      Precision = 18
      Size = 2
    end
    object qrnota_itemTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Precision = 18
      Size = 2
    end
    object qrnota_itemDATA: TDateField
      FieldName = 'DATA'
    end
    object qrnota_itemBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnota_itemVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnota_itemVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 18
      Size = 2
    end
    object qrnota_itemPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnota_itemPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Precision = 18
      Size = 2
    end
    object qrnota_itemPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object qrnota_itemPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      Precision = 18
      Size = 2
    end
    object qrnota_itemDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object qrnota_itemDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object qrnota_itemFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object qrnota_itemQUANT_FRACIONADA: TBCDField
      FieldName = 'QUANT_FRACIONADA'
      Precision = 18
    end
    object qrnota_itemLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Size = 10
    end
    object qrnota_itemMARG_LUCRO: TFMTBCDField
      FieldName = 'MARG_LUCRO'
      Precision = 18
      Size = 2
    end
    object qrnota_itemATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object qrnota_itemBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qrnota_itemALIC_ICMS_ST: TFMTBCDField
      FieldName = 'ALIC_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qrnota_itemVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qrnota_itemCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qrnota_itemIMOBILZ: TStringField
      FieldName = 'IMOBILZ'
      Size = 1
    end
    object qrnota_itemBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Precision = 18
      Size = 2
    end
    object qrnota_itemPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Precision = 18
      Size = 2
    end
    object qrnota_itemVALOR_PIS: TFMTBCDField
      FieldName = 'VALOR_PIS'
      Precision = 18
      Size = 2
    end
    object qrnota_itemBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object qrnota_itemPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object qrnota_itemVALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      Precision = 18
      Size = 2
    end
    object qrnota_itemBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Precision = 18
      Size = 2
    end
    object qrnota_itemUN_FRACAO: TStringField
      FieldName = 'UN_FRACAO'
      Size = 5
    end
    object qrnota_itemITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object qrnota_itemCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object qrnota_itemNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
    end
    object qrnota_itemICMS_RETIDO: TStringField
      FieldName = 'ICMS_RETIDO'
      Size = 1
    end
    object qrnota_itemSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object qrnota_itemDESCONTO_P: TFMTBCDField
      FieldName = 'DESCONTO_P'
      Precision = 18
      Size = 2
    end
    object qrnota_itemICMS_REDUCAO: TFMTBCDField
      FieldName = 'ICMS_REDUCAO'
      Precision = 18
      Size = 2
    end
    object qrnota_itemICMS_VALORRETIDO: TFMTBCDField
      FieldName = 'ICMS_VALORRETIDO'
      Precision = 18
      Size = 2
    end
    object qrnota_itemICMS_ISENTO: TFMTBCDField
      FieldName = 'ICMS_ISENTO'
      Precision = 18
      Size = 2
    end
    object qrnota_itemICMS_NAOTRIBUTADO: TFMTBCDField
      FieldName = 'ICMS_NAOTRIBUTADO'
      Precision = 18
      Size = 2
    end
    object qrnota_itemIPI_TIPO: TStringField
      FieldName = 'IPI_TIPO'
      Size = 25
    end
    object qrnota_itemTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrnota_itemFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Precision = 18
      Size = 2
    end
    object qrnota_itemOUTRAS: TFMTBCDField
      FieldName = 'OUTRAS'
      Precision = 18
      Size = 2
    end
    object qrnota_itemSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Precision = 18
      Size = 2
    end
    object qrnota_itemCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Size = 2
    end
    object qrnota_itemSUB_PRODUTOS: TFMTBCDField
      FieldName = 'SUB_PRODUTOS'
      Precision = 18
      Size = 3
    end
    object qrnota_itemITEM_ESPECIAL_VALOR: TFMTBCDField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Precision = 18
      Size = 3
    end
    object qrnota_itemICMS_OUTRAS: TFMTBCDField
      FieldName = 'ICMS_OUTRAS'
      Precision = 18
      Size = 2
    end
    object qrnota_itemALTERA_ITEM: TIntegerField
      FieldName = 'ALTERA_ITEM'
    end
    object qrnota_itemCREDITO_ICMS: TFMTBCDField
      FieldName = 'CREDITO_ICMS'
      Precision = 18
      Size = 3
    end
    object qrnota_itemCREDITO_ICMS_BASE: TFMTBCDField
      FieldName = 'CREDITO_ICMS_BASE'
      Precision = 18
      Size = 3
    end
    object qrnota_itemPMARGEM: TSingleField
      FieldName = 'PMARGEM'
    end
    object qrnota_itemPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object qrnota_itemCODLANCAMENTO: TStringField
      FieldName = 'CODLANCAMENTO'
      Size = 50
    end
  end
  object fsnota_item: TfrxDBDataset
    UserName = 'fsnota_item'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO_ITEM=CODIGO_ITEM'
      'CODIGO_PRODUTO=CODIGO_PRODUTO'
      'CODIGO_BARRAS=CODIGO_BARRAS'
      'CODIGO_NOTA=CODIGO_NOTA'
      'DESCRICAO=DESCRICAO'
      'NCM_SH=NCM_SH'
      'CST=CST'
      'CFOP=CFOP'
      'DESC_UNIDADE=DESC_UNIDADE'
      'QUANTIDADE=QUANTIDADE'
      'VALOR_UNI=VALOR_UNI'
      'VALOR_DESC=VALOR_DESC'
      'TOTAL_ITEM=TOTAL_ITEM'
      'DATA=DATA'
      'BASE_ICMS=BASE_ICMS'
      'VALOR_ICMS=VALOR_ICMS'
      'VALOR_IPI=VALOR_IPI'
      'PERC_ICMS=PERC_ICMS'
      'PERC_IPI=PERC_IPI'
      'PRECO_VENDA=PRECO_VENDA'
      'PRECO_VENDA2=PRECO_VENDA2'
      'DATA_VALIDADE=DATA_VALIDADE'
      'DATA_FABRICACAO=DATA_FABRICACAO'
      'FRACAO=FRACAO'
      'QUANT_FRACIONADA=QUANT_FRACIONADA'
      'LOTE_MED=LOTE_MED'
      'MARG_LUCRO=MARG_LUCRO'
      'ATIVO=ATIVO'
      'BASE_ICMS_ST=BASE_ICMS_ST'
      'ALIC_ICMS_ST=ALIC_ICMS_ST'
      'VALOR_ICMS_ST=VALOR_ICMS_ST'
      'COD_EMPRESA=COD_EMPRESA'
      'IMOBILZ=IMOBILZ'
      'BASE_PIS=BASE_PIS'
      'PERC_PIS=PERC_PIS'
      'VALOR_PIS=VALOR_PIS'
      'BASE_COFINS=BASE_COFINS'
      'PERC_COFINS=PERC_COFINS'
      'VALOR_COFINS=VALOR_COFINS'
      'BASE_IPI=BASE_IPI'
      'UN_FRACAO=UN_FRACAO'
      'ITEM=ITEM'
      'CODFORNECEDOR=CODFORNECEDOR'
      'NUM_NOTA=NUM_NOTA'
      'ICMS_RETIDO=ICMS_RETIDO'
      'SUBTOTAL=SUBTOTAL'
      'DESCONTO_P=DESCONTO_P'
      'ICMS_REDUCAO=ICMS_REDUCAO'
      'ICMS_VALORRETIDO=ICMS_VALORRETIDO'
      'ICMS_ISENTO=ICMS_ISENTO'
      'ICMS_NAOTRIBUTADO=ICMS_NAOTRIBUTADO'
      'IPI_TIPO=IPI_TIPO'
      'TIPO=TIPO'
      'FRETE=FRETE'
      'OUTRAS=OUTRAS'
      'SEGURO=SEGURO'
      'CLASSIFICACAO_FISCAL=CLASSIFICACAO_FISCAL'
      'SUB_PRODUTOS=SUB_PRODUTOS'
      'ITEM_ESPECIAL_VALOR=ITEM_ESPECIAL_VALOR'
      'ICMS_OUTRAS=ICMS_OUTRAS'
      'ALTERA_ITEM=ALTERA_ITEM'
      'CREDITO_ICMS=CREDITO_ICMS'
      'CREDITO_ICMS_BASE=CREDITO_ICMS_BASE'
      'PMARGEM=PMARGEM'
      'PRECO_CUSTO=PRECO_CUSTO'
      'CODLANCAMENTO=CODLANCAMENTO')
    DataSet = qrnota_item
    BCDToCurrency = False
    Left = 264
    Top = 10
  end
  object dsnota: TDataSource
    DataSet = qrnota
    Left = 104
    Top = 8
  end
  object ZQuery1: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from c000025')
    Left = 336
    Top = 10
  end
  object qrnota: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from notasfiscais')
    Left = 136
    Top = 10
    object qrnotaCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Origin = 'CODIGO_NOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrnotaNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Origin = 'NUM_NOTA'
      Required = True
    end
    object qrnotaSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Origin = 'SERIE_NF'
      Size = 15
    end
    object qrnotaCFOP_NOTA: TStringField
      FieldName = 'CFOP_NOTA'
      Origin = 'CFOP_NOTA'
      Size = 5
    end
    object qrnotaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qrnotaCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
      Origin = 'COD_FORNECEDOR'
    end
    object qrnotaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 70
    end
    object qrnotaDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
    end
    object qrnotaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object qrnotaIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qrnotaUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
      Origin = 'USUARIO_CADASTRO'
    end
    object qrnotaDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object qrnotaOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
    end
    object qrnotaMES: TStringField
      FieldName = 'MES'
      Origin = 'MES'
      Size = 2
    end
    object qrnotaANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 4
    end
    object qrnotaCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Origin = 'CHAVE_NFE'
      Size = 44
    end
    object qrnotaPROTOCOLO_NFE: TStringField
      FieldName = 'PROTOCOLO_NFE'
      Origin = 'PROTOCOLO_NFE'
      Size = 30
    end
    object qrnotacod_pagto: TIntegerField
      FieldName = 'cod_pagto'
      Origin = '"cod_pagto"'
    end
    object qrnotaTP: TStringField
      FieldName = 'TP'
      Origin = 'TP'
      Size = 1
    end
    object qrnotaENDERECO_CLI_FORN: TStringField
      FieldName = 'ENDERECO_CLI_FORN'
      Origin = 'ENDERECO_CLI_FORN'
      Size = 44
    end
    object qrnotaEND_NUM_CLIENTE: TStringField
      FieldName = 'END_NUM_CLIENTE'
      Origin = 'END_NUM_CLIENTE'
    end
    object qrnotaCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Origin = 'COD_IBGE'
      Size = 7
    end
    object qrnotaCEP_CLIENTE_FORN: TStringField
      FieldName = 'CEP_CLIENTE_FORN'
      Origin = 'CEP_CLIENTE_FORN'
      FixedChar = True
      Size = 10
    end
    object qrnotaBAIRRO_CLIENTE_FORN: TStringField
      FieldName = 'BAIRRO_CLIENTE_FORN'
      Origin = 'BAIRRO_CLIENTE_FORN'
      Size = 30
    end
    object qrnotaTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Origin = 'TIPO_PESSOA'
      Size = 1
    end
    object qrnotaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object qrnotaCIDADE_CLIENTE_FORN: TStringField
      FieldName = 'CIDADE_CLIENTE_FORN'
      Origin = 'CIDADE_CLIENTE_FORN'
      Size = 40
    end
    object qrnotaUF_CLIENTE_FORN: TStringField
      FieldName = 'UF_CLIENTE_FORN'
      Origin = 'UF_CLIENTE_FORN'
      Size = 2
    end
    object qrnotaDESC_PAGTO: TStringField
      FieldName = 'DESC_PAGTO'
      Origin = 'DESC_PAGTO'
      Size = 70
    end
    object qrnotapagamento: TStringField
      FieldName = 'pagamento'
      Origin = '"pagamento"'
      Size = 30
    end
    object qrnotaMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 2
    end
    object qrnotaEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Origin = 'EMITENTE'
      Size = 1
    end
    object qrnotaCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object qrnotaSUB_SERIE: TStringField
      FieldName = 'SUB_SERIE'
      Origin = 'SUB_SERIE'
      Size = 10
    end
    object qrnotaTRANSP_NOME: TStringField
      FieldName = 'TRANSP_NOME'
      Origin = 'TRANSP_NOME'
      Size = 60
    end
    object qrnotaTRANSP_PLACA: TStringField
      FieldName = 'TRANSP_PLACA'
      Origin = 'TRANSP_PLACA'
      Size = 10
    end
    object qrnotaTRANSP_PLACAUF: TStringField
      FieldName = 'TRANSP_PLACAUF'
      Origin = 'TRANSP_PLACAUF'
      Size = 2
    end
    object qrnotaTRANSP_IE: TStringField
      FieldName = 'TRANSP_IE'
      Origin = 'TRANSP_IE'
      Size = 25
    end
    object qrnotaTRANSP_CNPJ: TStringField
      FieldName = 'TRANSP_CNPJ'
      Origin = 'TRANSP_CNPJ'
      Size = 25
    end
    object qrnotaTRANSP_ENDERECO: TStringField
      FieldName = 'TRANSP_ENDERECO'
      Origin = 'TRANSP_ENDERECO'
      Size = 40
    end
    object qrnotaTRANSP_CIDADE: TStringField
      FieldName = 'TRANSP_CIDADE'
      Origin = 'TRANSP_CIDADE'
      Size = 30
    end
    object qrnotaTRANSP_UF: TStringField
      FieldName = 'TRANSP_UF'
      Origin = 'TRANSP_UF'
      Size = 2
    end
    object qrnotaTRANSP_ESPECIE: TStringField
      FieldName = 'TRANSP_ESPECIE'
      Origin = 'TRANSP_ESPECIE'
    end
    object qrnotaTRANSP_MARCA: TStringField
      FieldName = 'TRANSP_MARCA'
      Origin = 'TRANSP_MARCA'
    end
    object qrnotaOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Size = 60
    end
    object qrnotaOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'OBS2'
      Size = 60
    end
    object qrnotaOBS3: TStringField
      FieldName = 'OBS3'
      Origin = 'OBS3'
      Size = 60
    end
    object qrnotaOBS4: TStringField
      FieldName = 'OBS4'
      Origin = 'OBS4'
      Size = 60
    end
    object qrnotaOBS5: TStringField
      FieldName = 'OBS5'
      Origin = 'OBS5'
      Size = 60
    end
    object qrnotaOBS6: TStringField
      FieldName = 'OBS6'
      Origin = 'OBS6'
      Size = 60
    end
    object qrnotaOBS7: TStringField
      FieldName = 'OBS7'
      Origin = 'OBS7'
      Size = 60
    end
    object qrnotaOBS8: TStringField
      FieldName = 'OBS8'
      Origin = 'OBS8'
      Size = 60
    end
    object qrnotaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object qrnotaITENS: TIntegerField
      FieldName = 'ITENS'
      Origin = 'ITENS'
    end
    object qrnotaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
    object qrnotaNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Origin = 'NOTA_FISCAL'
      Size = 6
    end
    object qrnotaDESCONTO_INCIDENTE: TIntegerField
      FieldName = 'DESCONTO_INCIDENTE'
      Origin = 'DESCONTO_INCIDENTE'
    end
    object qrnotaAPROVEITA_CREDITO_ICMS: TStringField
      FieldName = 'APROVEITA_CREDITO_ICMS'
      Origin = 'APROVEITA_CREDITO_ICMS'
      Size = 1
    end
    object qrnotaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object qrnotaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
      Size = 5
    end
    object qrnotaCODREMETENTE: TIntegerField
      FieldName = 'CODREMETENTE'
      Origin = 'CODREMETENTE'
    end
    object qrnotaREMETENTE: TStringField
      FieldName = 'REMETENTE'
      Origin = 'REMETENTE'
      Size = 50
    end
    object qrnotaTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Origin = 'TOTAL_NOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaBASE_CALCULO_ICMS: TFMTBCDField
      FieldName = 'BASE_CALCULO_ICMS'
      Origin = 'BASE_CALCULO_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaBASE_CALC_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_CALC_ICMS_SUBST'
      Origin = 'BASE_CALC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_ICMS_SUBST: TFMTBCDField
      FieldName = 'VALOR_ICMS_SUBST'
      Origin = 'VALOR_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      Origin = 'VALOR_SEGURO'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_OUTRAS_DESPESAS: TFMTBCDField
      FieldName = 'VALOR_OUTRAS_DESPESAS'
      Origin = 'VALOR_OUTRAS_DESPESAS'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_TOTAL_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
      Origin = 'VALOR_TOTAL_PRODUTOS'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_TOTAL_ITENS_NOTA: TFMTBCDField
      FieldName = 'VALOR_TOTAL_ITENS_NOTA'
      Origin = 'VALOR_TOTAL_ITENS_NOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaVLR_ICMS_GARANTIDO: TFMTBCDField
      FieldName = 'VLR_ICMS_GARANTIDO'
      Origin = 'VLR_ICMS_GARANTIDO'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Origin = 'VALOR_AVISTA'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Origin = 'VALOR_PRAZO'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_PIS: TFMTBCDField
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_PIS_ST: TFMTBCDField
      FieldName = 'VALOR_PIS_ST'
      Origin = 'VALOR_PIS_ST'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_COFIS_ST: TFMTBCDField
      FieldName = 'VALOR_COFIS_ST'
      Origin = 'VALOR_COFIS_ST'
      Precision = 18
      Size = 2
    end
    object qrnotaPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Origin = 'PERC_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaTRANSP_QTDE: TFMTBCDField
      FieldName = 'TRANSP_QTDE'
      Origin = 'TRANSP_QTDE'
      Precision = 18
      Size = 3
    end
    object qrnotaTRANSP_NUMERO: TStringField
      FieldName = 'TRANSP_NUMERO'
      Origin = 'TRANSP_NUMERO'
    end
    object qrnotaTRANSP_PESOBRUTO: TFMTBCDField
      FieldName = 'TRANSP_PESOBRUTO'
      Origin = 'TRANSP_PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object qrnotaTRANSP_PESOLIQUIDO: TFMTBCDField
      FieldName = 'TRANSP_PESOLIQUIDO'
      Origin = 'TRANSP_PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object qrnotaICMS_ISENTO: TFMTBCDField
      FieldName = 'ICMS_ISENTO'
      Origin = 'ICMS_ISENTO'
      Precision = 18
      Size = 2
    end
    object qrnotaICMS_OUTRAS: TFMTBCDField
      FieldName = 'ICMS_OUTRAS'
      Origin = 'ICMS_OUTRAS'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_FRETE_VALOR: TFMTBCDField
      FieldName = 'ITEM_FRETE_VALOR'
      Origin = 'ITEM_FRETE_VALOR'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_FRETE_BASE: TFMTBCDField
      FieldName = 'ITEM_FRETE_BASE'
      Origin = 'ITEM_FRETE_BASE'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_FRETE_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_FRETE_ALIQUOTA'
      Origin = 'ITEM_FRETE_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_FRETE_ICMS: TFMTBCDField
      FieldName = 'ITEM_FRETE_ICMS'
      Origin = 'ITEM_FRETE_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_SEGURO_VALOR: TFMTBCDField
      FieldName = 'ITEM_SEGURO_VALOR'
      Origin = 'ITEM_SEGURO_VALOR'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_SEGURO_BASE: TFMTBCDField
      FieldName = 'ITEM_SEGURO_BASE'
      Origin = 'ITEM_SEGURO_BASE'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_SEGURO_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
      Origin = 'ITEM_SEGURO_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_SEGURO_ICMS: TFMTBCDField
      FieldName = 'ITEM_SEGURO_ICMS'
      Origin = 'ITEM_SEGURO_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_PIS_VALOR: TFMTBCDField
      FieldName = 'ITEM_PIS_VALOR'
      Origin = 'ITEM_PIS_VALOR'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_PIS_BASE: TFMTBCDField
      FieldName = 'ITEM_PIS_BASE'
      Origin = 'ITEM_PIS_BASE'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_PIS_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_PIS_ALIQUOTA'
      Origin = 'ITEM_PIS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_PIS_ICMS: TFMTBCDField
      FieldName = 'ITEM_PIS_ICMS'
      Origin = 'ITEM_PIS_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_COMPLEMENTO_VALOR: TFMTBCDField
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
      Origin = 'ITEM_COMPLEMENTO_VALOR'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_COMPLEMENTO_BASE: TFMTBCDField
      FieldName = 'ITEM_COMPLEMENTO_BASE'
      Origin = 'ITEM_COMPLEMENTO_BASE'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_COMPLEMENTO_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
      Origin = 'ITEM_COMPLEMENTO_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_COMPLEMENTO_ICMS: TFMTBCDField
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
      Origin = 'ITEM_COMPLEMENTO_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_SERVICO_VALOR: TFMTBCDField
      FieldName = 'ITEM_SERVICO_VALOR'
      Origin = 'ITEM_SERVICO_VALOR'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_SERVICO_BASE: TFMTBCDField
      FieldName = 'ITEM_SERVICO_BASE'
      Origin = 'ITEM_SERVICO_BASE'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_SERVICO_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
      Origin = 'ITEM_SERVICO_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_SERVICO_ICMS: TFMTBCDField
      FieldName = 'ITEM_SERVICO_ICMS'
      Origin = 'ITEM_SERVICO_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_OUTRAS_VALOR: TFMTBCDField
      FieldName = 'ITEM_OUTRAS_VALOR'
      Origin = 'ITEM_OUTRAS_VALOR'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_OUTRAS_BASE: TFMTBCDField
      FieldName = 'ITEM_OUTRAS_BASE'
      Origin = 'ITEM_OUTRAS_BASE'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_OUTRAS_ALIQUOTA: TFMTBCDField
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
      Origin = 'ITEM_OUTRAS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_OUTRAS_ICMS: TFMTBCDField
      FieldName = 'ITEM_OUTRAS_ICMS'
      Origin = 'ITEM_OUTRAS_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_ESPECIAL_TOTAL: TFMTBCDField
      FieldName = 'ITEM_ESPECIAL_TOTAL'
      Origin = 'ITEM_ESPECIAL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qrnotaITEM_ESPECIAL_VALOR: TFMTBCDField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Origin = 'ITEM_ESPECIAL_VALOR'
      Precision = 18
      Size = 2
    end
    object qrnotaBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
      Origin = 'BASEICMS_PRODUTOS'
    end
    object qrnotaCONF_ITEM_ESPECIAL: TFMTBCDField
      FieldName = 'CONF_ITEM_ESPECIAL'
      Origin = 'CONF_ITEM_ESPECIAL'
      Precision = 18
      Size = 3
    end
    object qrnotaCREDITO_ICMS: TFMTBCDField
      FieldName = 'CREDITO_ICMS'
      Origin = 'CREDITO_ICMS'
      Precision = 18
      Size = 3
    end
    object qrnotaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Origin = 'OPERACAO'
      Size = 1
    end
    object qrnotaINTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
      Origin = 'INTEGRACAO'
    end
    object qrnotaICMSRETIDO: TFMTBCDField
      FieldName = 'ICMSRETIDO'
      Origin = 'ICMSRETIDO'
      Precision = 18
      Size = 3
    end
    object qrnotaPERC_ICMSRETIDO: TFMTBCDField
      FieldName = 'PERC_ICMSRETIDO'
      Origin = 'PERC_ICMSRETIDO'
      Precision = 18
      Size = 3
    end
    object qrnotaVALOR_MERCADORIAS: TFMTBCDField
      FieldName = 'VALOR_MERCADORIAS'
      Origin = 'VALOR_MERCADORIAS'
      Precision = 18
      Size = 2
    end
    object qrnotaCONF_BASEICMS: TFMTBCDField
      FieldName = 'CONF_BASEICMS'
      Origin = 'CONF_BASEICMS'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_VALORICMS: TFMTBCDField
      FieldName = 'CONF_VALORICMS'
      Origin = 'CONF_VALORICMS'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_BASESUB: TFMTBCDField
      FieldName = 'CONF_BASESUB'
      Origin = 'CONF_BASESUB'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_VALORSUB: TFMTBCDField
      FieldName = 'CONF_VALORSUB'
      Origin = 'CONF_VALORSUB'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_FRETE: TFMTBCDField
      FieldName = 'CONF_FRETE'
      Origin = 'CONF_FRETE'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_SEGURO: TFMTBCDField
      FieldName = 'CONF_SEGURO'
      Origin = 'CONF_SEGURO'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_OUTRAS: TFMTBCDField
      FieldName = 'CONF_OUTRAS'
      Origin = 'CONF_OUTRAS'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_IPI: TFMTBCDField
      FieldName = 'CONF_IPI'
      Origin = 'CONF_IPI'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_DESCONTO: TFMTBCDField
      FieldName = 'CONF_DESCONTO'
      Origin = 'CONF_DESCONTO'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_TOTALPRODUTOS: TFMTBCDField
      FieldName = 'CONF_TOTALPRODUTOS'
      Origin = 'CONF_TOTALPRODUTOS'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_TOTALNOTA: TFMTBCDField
      FieldName = 'CONF_TOTALNOTA'
      Origin = 'CONF_TOTALNOTA'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_ICMSRETIDO: TFMTBCDField
      FieldName = 'CONF_ICMSRETIDO'
      Origin = 'CONF_ICMSRETIDO'
      Precision = 18
      Size = 3
    end
    object qrnotaCONF_ICMSREDITO_PERC: TFMTBCDField
      FieldName = 'CONF_ICMSREDITO_PERC'
      Origin = 'CONF_ICMSREDITO_PERC'
      Precision = 18
      Size = 3
    end
    object qrnotaCONFI_PIS: TFMTBCDField
      FieldName = 'CONFI_PIS'
      Origin = 'CONFI_PIS'
      Precision = 18
      Size = 2
    end
    object qrnotaCONF_COFINS: TFMTBCDField
      FieldName = 'CONF_COFINS'
      Origin = 'CONF_COFINS'
      Precision = 18
      Size = 2
    end
    object qrnotaCOD_CENTRO_CUSTO: TIntegerField
      FieldName = 'COD_CENTRO_CUSTO'
      Origin = 'COD_CENTRO_CUSTO'
    end
    object qrnotaCOD_IMOVEL: TIntegerField
      FieldName = 'COD_IMOVEL'
      Origin = 'COD_IMOVEL'
    end
  end
  object qrcompra_produto: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select '
      'sum(notasfiscais_itens.quantidade) total_compra,'
      'notasfiscais_itens.codigo_produto,'
      'produtos.descricao'
      'from '
      'notasfiscais_itens,'
      'produtos'
      'where '
      'notasfiscais_itens.codigo_produto = produtos.codigo'
      'group by'
      'notasfiscais_itens.codigo_produto,'
      'produtos.descricao'
      'order by'
      'produtos.descricao')
    Left = 344
    Top = 104
    object qrcompra_produtoCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
    end
    object qrcompra_produtoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object qrcompra_produtoTOTAL_COMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_COMPRA'
      Origin = 'TOTAL_COMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
  end
  object fscompra_produto: TfrxDBDataset
    UserName = 'fscompra_produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TOTAL_COMPRA=TOTAL_COMPRA'
      'CODIGO_PRODUTO=CODIGO_PRODUTO'
      'DESCRICAO=DESCRICAO')
    DataSet = qrcompra_produto
    BCDToCurrency = False
    Left = 312
    Top = 106
  end
  object qrentrada: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select'
      '    sum(notasfiscais_itens.total_item) VALOR_TOTAL,'
      '    sum(notasfiscais_itens.BASE_ICMS) BASE_CALCULO,'
      '    sum(notasfiscais_itens.VALOR_ICMS) IMPOSTO,'
      '    notasfiscais_itens.perc_icms,'
      '    notasfiscais_itens.cst,'
      '    notasfiscais_itens.cfop,'
      '    notasfiscais.num_nota,'
      '    notasfiscais.data_cadastro,'
      '    notasfiscais.especie,'
      '    notasfiscais.serie_nf,'
      '    fornecedores.estado'
      '    from'
      '    notasfiscais,'
      '    notasfiscais_itens,'
      '    fornecedores'
      '    where'
      '    notasfiscais_itens.codigo_nota = notasfiscais.codigo_nota'
      '    and notasfiscais.cod_fornecedor = fornecedores.codigo'
      '    group by'
      '    notasfiscais_itens.perc_icms,'
      '    notasfiscais_itens.cst,'
      '    notasfiscais_itens.cfop,'
      '    notasfiscais.num_nota,'
      '    notasfiscais.data_cadastro,'
      '    notasfiscais.especie,'
      '    notasfiscais.serie_nf,'
      '    fornecedores.estado'
      '    order by'
      '    notasfiscais.num_nota')
    Left = 224
    Top = 88
    object qrentradaCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object qrentradaCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 5
    end
    object qrentradaNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Origin = 'NUM_NOTA'
      Required = True
    end
    object qrentradaDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object qrentradaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ESPECIE'
      Size = 5
    end
    object qrentradaSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Origin = 'SERIE_NF'
      Size = 15
    end
    object qrentradaESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object qrentradaVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object qrentradaBASE_CALCULO: TFMTBCDField
      FieldName = 'BASE_CALCULO'
      Precision = 18
      Size = 2
    end
    object qrentradaIMPOSTO: TFMTBCDField
      FieldName = 'IMPOSTO'
      Precision = 18
      Size = 2
    end
    object qrentradaPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Precision = 18
      Size = 2
    end
  end
  object fxentrada: TfrxDBDataset
    UserName = 'fxentrada'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VALOR_TOTAL=VALOR_TOTAL'
      'BASE_CALCULO=BASE_CALCULO'
      'IMPOSTO=IMPOSTO'
      'PERC_ICMS=PERC_ICMS'
      'CST=CST'
      'CFOP=CFOP'
      'NUM_NOTA=NUM_NOTA'
      'DATA_CADASTRO=DATA_CADASTRO'
      'ESPECIE=ESPECIE'
      'SERIE_NF=SERIE_NF'
      'UF=UF')
    DataSet = qrentrada
    BCDToCurrency = False
    Left = 384
    Top = 66
  end
end
