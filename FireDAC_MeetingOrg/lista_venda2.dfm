object FormLmc: TFormLmc
  Left = 470
  Top = 237
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'LMC | Relat'#243'rios'
  ClientHeight = 205
  ClientWidth = 400
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
    Width = 50
    Height = 13
    Caption = 'Relat'#243'rio: '
  end
  object Bevel1: TBevel
    Left = 8
    Top = 40
    Width = 385
    Height = 2
  end
  object LPRODUTO: TLabel
    Left = 16
    Top = 65
    Width = 42
    Height = 13
    Caption = 'Produto:'
  end
  object Label9: TLabel
    Left = 16
    Top = 124
    Width = 40
    Height = 13
    Caption = 'Per'#237'odo:'
  end
  object Label10: TLabel
    Left = 78
    Top = 124
    Width = 29
    Height = 13
    Caption = 'In'#237'cio:'
  end
  object Label11: TLabel
    Left = 246
    Top = 124
    Width = 20
    Height = 13
    Caption = 'Fim:'
  end
  object Bevel2: TBevel
    Left = 8
    Top = 100
    Width = 385
    Height = 2
  end
  object Bevel3: TBevel
    Left = 0
    Top = 170
    Width = 400
    Height = 3
    Align = alBottom
  end
  object combo_relatorio: TComboBox
    Left = 87
    Top = 11
    Width = 298
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = 'LIVRO MOV. DE COMBUST'#205'VEIS (LMC)'
    Items.Strings = (
      'LIVRO MOV. DE COMBUST'#205'VEIS (LMC)'
      'MAPA RESUMO DO (LMC)')
  end
  object combo_produto: TComboBox
    Left = 87
    Top = 60
    Width = 298
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    OnChange = combo_produtoChange
    Items.Strings = (
      ''
      'SELECIONAR')
  end
  object DateEdit1: TDateEdit
    Left = 118
    Top = 120
    Width = 102
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
    Text = '01/01/1900'
    OnKeyPress = DateEdit1KeyPress
  end
  object DateEdit2: TDateEdit
    Left = 277
    Top = 120
    Width = 104
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
    Text = '31/12/2099'
    OnKeyPress = DateEdit2KeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 173
    Width = 400
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object bimprimir: TAdvGlowButton
      Left = 39
      Top = 3
      Width = 98
      Height = 24
      Caption = 'Imprimir'
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
      Left = 146
      Top = 3
      Width = 102
      Height = 24
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
        424D360400000000000036000000280000001000000010000000010020000000
        00000004000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD735200C65A
        0000AD4A0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B55A3100C65A
        0000CE630000B5521000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B55A
        3100C6630000CE630000B55A2100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00B55A2100CE630000C6630000C6846300FFFFFF00FFFFFF00AD4A0000BD5A
        0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000C6846300FFFF
        FF00FFFFFF00AD4A0000CE630000B54A0000FFFFFF00FFFFFF00B5520000D673
        0000CE6B0000CE630000CE630000CE630000CE630000C6630000BD6B4200FFFF
        FF00FFFFFF00CE9C8400C6630000C6630000C6846300FFFFFF00BD5A0000DE7B
        0000D6730000CE630000A5421000CE9C8400CE9C8400CE9C8400FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00AD4A0000CE630000B5521000FFFFFF00C6630000E784
        0000CE630000DE730000CE630000C6846300FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00C6734200CE630000B54A0000FFFFFF00CE630000F794
        0000B5521000B5520000DE7B0000CE6B0000BD7B5200FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00C6734200CE630000B54A0000FFFFFF00CE6B0800FF9C
        0800CE844200FFFFFF00B5520000E7840000CE6B0000BD633100FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00B54A0000CE630000B5521000FFFFFF00CE732100FFAD
        3100CE844A00FFFFFF00FFFFFF00C6631000E7840000E77B0000BD520000C67B
        5200C68C7300B5521000C6630000C6630000C6846300FFFFFF00CE7B3900FFBD
        6300C67B5200FFFFFF00FFFFFF00FFFFFF00B55A2100E77B0000E7840000DE7B
        0000D6730000CE6B0000C6630000AD4A1000FFFFFF00FFFFFF00CE947B00C684
        5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C8400C6631000CE6B
        0000CE6B0000BD5A0000BD6B4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
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
      Left = 258
      Top = 3
      Width = 102
      Height = 24
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
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002E74944415478DA
        62FCFFFF3F032500208058D0059EB636C431FCFB9BF9FFEF3F7D86BF7FBFFFFF
        FB87E1FFDFBF9C407C91E1CF9FE9F213A62D42560F10408CC82E006A8E67E5E3
        5A2060A4C9C0CACFC3F0FFF71F0686BFFF18188172BFDEBE67787BE40CC3CF57
        6F9214672E980FD303104070039EB6D427B2F072CD1334D66260FBF69481E1D5
        2306867FFF18184086FCFCC9C0C02FC9F0935786E1F5C1130C3F5FBF4D565EB4
        721E481F4000810D78DA5C97C8C207D46C04D4FC15A8F9D93D06A07381D6FE06
        1AF01B62C8AF5F0C0CE20A0C3F05E4185E1E380E7249A2EAEA4D0B0002880964
        0AD09F9982869A0C6C1F1F33303CBACDC02028C3C0A0E308D4F89781E13BD076
        4D2B0606216906865B5718D89FDC6010B334027AEF5726482F40004102F1CF5F
        3D566E6E06866B409B7F026DE2E06760B0F26360E0126460F8F619C8F6626058
        3505287F8981E1F6550676653DA001BFF5415A0102086CC0FF3FBFBFFDFFF993
        9D1164E30FA08DE70E3230B0703230B8864342EAE0460686C33B20728C4C0CFF
        7EFC0219F00D240510406003FE81FC0B73EEF75F104DACEC88B862051AF6E71F
        DC00A08B419682A5000208E282DFBFB9191980B1F1ED1BC410637B0606870006
        865D6B18183E7F6060084E01062C305656CC640029636204E9F9C30DD20B1040
        9030F8FDFBF2EFB7EF8DD984810175E71A03C3BD1B0C0C8B263030ECDB04B40D
        68D3ABE7C0787E0C894E252D861FAFDE805C7019A4152080A05EF83DFDD591D3
        73444DF519D8BF7D6760B80994BB7611128D20EFED580F36E88FB216C34F251D
        8667BBF7010DF83B1DA4172080E009E96E4C680A2B2FCF6C313323068EFB5780
        2E01BAE2FF3F706AFCFDF307C33F3965865FC0D07FB9673F300DBC4ED5397365
        0E481F4000A124E55BC13E89ECFCBCF3C4CC8C19D804F819FE0213CFBF7F7FC1
        01F7FDCD5B8637FB0F32FC7CFE3249E7EC55785206082046F4DC78D3CB29EEFF
        9F3FC0CCF4571F487F674064A64B403C5DF7ECB585C8EA01028891D2EC0C1060
        008C5756165E6F8C750000000049454E44AE426082}
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
  object fxLMC: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40290.575864421300000000
    ReportOptions.LastChange = 41614.396940775460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      '  '
      'end.')
    Left = 288
    Top = 80
    Datasets = <
      item
        DataSet = frxDbEmpresa
        DataSetName = 'frxDbEmpresa'
      end
      item
        DataSet = FrxDBMaster
        DataSetName = 'FrxDBMaster'
      end
      item
        DataSet = Frxdbtanque
        DataSetName = 'Frxdbtanque'
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
    object pgAbertura: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData4: TfrxMasterData
        Height = 1026.693570000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDbEmpresa
        DataSetName = 'frxDbEmpresa'
        RowCount = 0
        object Memo57: TfrxMemoView
          Align = baWidth
          Top = 120.472480000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Livro de Movimenta'#195#167#195#163'o de Combust'#195#173'veis (L.M.C.)')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Align = baWidth
          Top = 147.913420000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              '(Portaria n.'#194#186' 26, 13/11/1992 do Departamento Nacional de Combus' +
              't'#195#173'veis)')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 287.244280000000000000
          Top = 193.740260000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'N.'#194#186' de Ordem:')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Align = baWidth
          Top = 241.535560000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Termo de Abertura')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Align = baWidth
          Top = 303.921460000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            
              '           Cont'#195#169'm este livro  [TOTALPAGES#]   folhas numeradas ' +
              'eletronicamente, do n.'#194#186' 1 ao n.'#194#186' [TOTALPAGES#] e serviu para o' +
              ' lan'#195#167'amento das opera'#195#167#195#181'es do estabelecimento do contribuinte ' +
              'abaixo identifica:')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Top = 355.527830000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nome:')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Top = 376.764070000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Endere'#195#167'o:')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Top = 397.779840000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Bairro:')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          Top = 418.779840000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Cidade:')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Top = 439.457020000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Estado:')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Top = 461.134200000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Inscri'#195#167#195#163'o Estadual:')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          Top = 482.149970000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Top = 503.165740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Inscri'#195#167#195#163'o Municipal:')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          Top = 523.858690000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Distribuidora com a qual opera:')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          Top = 564.772110000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Capacidade nominal de armazenamento:')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          Top = 780.362710000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Registrado na junta comercial sob n.'#194#186)
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Align = baWidth
          Top = 832.953310000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA8'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fxrelatorio."LINHA8"]')
          ParentFont = False
        end
        object Line52: TfrxLineView
          Align = baCenter
          Left = 230.551330000000000000
          Top = 912.528140000000000000
          Width = 257.008040000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo127: TfrxMemoView
          Align = baWidth
          Top = 912.528140000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PROPRIETARIO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDbEmpresa."PROPRIETARIO"]')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Align = baWidth
          Top = 927.646260000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CPF_PROPRIETARIO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDbEmpresa."CPF_PROPRIETARIO"]')
          ParentFont = False
        end
        object Line53: TfrxLineView
          Align = baCenter
          Left = 230.551330000000000000
          Top = 988.677800000000000000
          Width = 257.008040000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo129: TfrxMemoView
          Align = baWidth
          Top = 988.677800000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOME_CONTADOR'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDbEmpresa."NOME_CONTADOR"]')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          Align = baWidth
          Top = 1003.795920000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CRC_CONTADOR'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDbEmpresa."CRC_CONTADOR"]')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          Left = 48.133890000000000000
          Top = 355.393700790000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'RAZAO_SOCIAL'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 67.165430000000000000
          Top = 376.692913390000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ENDERECO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."ENDERECO"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 45.165430000000000000
          Top = 397.614173230000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BAIRRO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."BAIRRO"]')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          Left = 52.165430000000000000
          Top = 418.913385830000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CIDADE'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."CIDADE"]')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          Left = 52.165430000000000000
          Top = 439.456692910000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UF'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."UF"]')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          Left = 119.944960000000000000
          Top = 461.133858270000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IE'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."IE"]')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          Left = 45.133890000000000000
          Top = 482.055118110000000000
          Width = 536.693260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CNPJ'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."CNPJ"]')
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          Left = 123.740260000000000000
          Top = 503.354330710000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IM'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."IM"]')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 191.653680000000000000
          Top = 523.897637800000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DISTRIBUIDORA_COMBUSTIVEL'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."DISTRIBUIDORA_COMBUSTIVEL"]')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          Left = 400.630180000000000000
          Top = 397.780076770000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CEP:')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          Left = 445.795610000000000000
          Top = 397.614410000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CEP'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."CEP"]')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          Left = 234.330860000000000000
          Top = 780.472433620000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM_JUNT_COM'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."NUM_JUNT_COM"]')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          Left = 561.259840080000000000
          Top = 68.031488740000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Folha n'#194#186)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line54: TfrxLineView
          Align = baWidth
          Top = 97.708720000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Picture2: TfrxPictureView
          Left = 3.779527560000000000
          Top = 3.779530000000000000
          Width = 226.771800000000000000
          Height = 90.708720000000000000
          ShowHint = False
          DataField = 'LOGOMARCA'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000008000
            0000800806000000C33E61CB0000000467414D410000AFC837058AE900000019
            74455874536F6674776172650041646F626520496D616765526561647971C965
            3C00003D00494441547801ED9D09989C5595F74F55D7D27B77D29DB593743620
            8490B066218110089BA8802030EA8CFACC378B8A8CF33D33E3378FE38C228A80
            C82A0A2A26EC8228FBBE0B080821241042F64E7ADFF7AAAEA5EBFBFDDFEAAA54
            77572F95C4899AEEE7DEBAF79E7BEEF2DE73EEB9E79E7BDFB75DB158CCC6FE0E
            DD11708D31C0A14B7C3DF9180368140E613FC6008730F1F5E8630CA0513884FD
            18031CC2C4D7A38F318046E110F6630C7008135F8F3EC6001A8543D88F31C021
            4C7C3DFA180368140E613FC6008730F1F5E8630CA0513884FD18031CC2C4D7A3
            8F318046E110F6630C7008135F8F3EC6001A8543D88F31C0214C7C3DFA180368
            140E613FC6008730F1F5E8630CA0513884FD18031CC2C4D7A3EF3703B8FEE715
            D593F447974F4FC63389B84076E947A1B94C71250787E409874C5C1F1E3012EE
            7E7097B981E11C1C77A24E0071BCBDF90E1E0DE14C7989B4E22F6DAB3D3666B1
            2FD2420EF91F13FEEEEC7953760A479EEA68A7AF2E126E9054CEC94BA4153A7D
            8BE3294F782E107194377C3C8FE2F138F8493C95777C1F4E4A5E1CC77846F280
            5F3AAF80DFD1BB7D6200D731E7EE6DE1BCFFD81B279629034C7FE8EB4EE7293A
            6AE7D2288D1A7BDF112BCFBBFABA96EE9EAF87A331AF9A84F8F4D57A2DD67B4F
            5EDB9EEBE7BEF3CBF7CA2FFF05041301FA884873228AF04564C54564F5D989F7
            117220F1E3F803EB80A80EFE5E783F3CF29C34CC9DA8FB924B2EA507A373B1F5
            4FD89F0503A4EBAE062C1D7C2858A6F843D523F8EE4FFD70A2DF93F584CFE33E
            2118895A5D7B00C28BFC101A84493B5EB4893B5EB6AEF1B377070BA7FCDF13CF
            FFF24322B208EE1004C2282EA2108541F61252FD74838C031E276CBF32D4EF94
            03A830E92132A06419C19D3470C5E555F7C5175F420DA373079D01343865BFB9
            CC19DCD174590F381ABC549C4CCBAC3FFD8AC593F2FD4F64FB3CA51A6017EFCD
            D475062D188E9A37DC6533363E6879CD3B529BB0EE71336B828553BFB9ECC2BF
            BF4B8470880F86CA3B711E5470272D82417DA595E7C0942F38613CBD97618427
            D65318F7A4C073E27D6514D7732ABCE8B37F210CC03338D3A9ECC1CB18AAC14E
            0F34189A1E9209AE6A180AFF9D55DFB90C02FCB87C5CBED79305111860B96028
            6AA1EACD3679FDAFCDD3D3A92AD2FA60F18CA660F1B46FADB8E8FFDC266288C0
            F19047E581A58738B39FB8FA90C873E00E2C2E119270C1E8C0DE741FF1693D51
            37FD452AD05770E12BFB4CA60CB0ABFB25AACBCCCD5C76EDDE02FBA003D05746
            C47136E581AF397569409C489A9FEFFFE21F729B9A9BC397FFEBFF8BCCF22D8E
            A54119041AAEBE81C8EF9CF6DD7CFAF42B06F3A2F1397E1B97E743198C0F3630
            F36F7ADEBC1B9F36D6FE8145D3A64345533B82E3665C7BEA25FFF43D95770828
            424221C5D537858E079EC421E2C0E80C6E2F614988E064D3AFBD4CE2A4FBF2A8
            1A496A76C145194A8083C200741AC7A39B4DEE63807423A981BA76ED5767F87C
            BEAB609745B5F5F52FAD5BB7FEC1DB7EB1661DF8DD33BD27F612F2E0AA4DB1E1
            BDEA1B88F1EE69DF3DC662B1875C6EF76CD5323ED767E373FDD4C940477B2CFB
            8DBB2CAB7AD3C062C3A7D1F09A8FB9D0BAA61DBF9E3AAFBC70C1E48734F3E304
            EB9BAD6468E6C761B445C42D181ED78FF8EAB79347AB6204C54107275E2E8E1F
            8F9F77E1C5608DCE393AC0FF3603A8E3EAB0E3494CBCFF2BFD7AAB8715E067BF
            FD66567777E02C9FDF777D9688E37279F41EE3EECAAACD1F7CB869CD0B2FBE7C
            FF479BB756C30461E10FF4897A06C253D3EB4EBFE21FD1826F82F87EBA0243BA
            AC34CF6F45395EF3B4569AFFD53BCCD5DD925AC4890F5777CCE3B3C613BE603D
            93E6C14448119588C536B92D76D5450B27DF2DE2C5676B0A23301822ACFAA03C
            C51D3CE06ACB89538FE00E0EF0388CFA13713204FBD467FE8C19803E32C8CC65
            1E460F466013EEFB6767A0144FF81BEEFBC604E25FCFC9CEFE36615A57595DBD
            61FDFA8D37FCE467BF7814843618214238AC4BB4C9ACCF277E1BFDF91C4348FB
            EA133106B3AC28C70A76FDC17CEB1E36EB8D0E5B5F6A26F55924A7D81A977ED9
            2285539D3A45106A75E2CA6709D9461357B9B3B2D65E7C546954F9712F2CCD60
            F93863D0376638711A49E250381E078F918CE31027827396874F66CE002F5BA6
            7F33975DB3B7C82875007590FED36D065B096A50507AEF3F13DBEB6E79E0DF96
            81F15F3E9FF7137BA1E963816030505D53F3F6E6CD5B6EBDE5A73F7F16AC8E72
            CF0949AA39830E30D5AD5BFDBDF9CCFA875D6ED7611A76F52111BA63BD76D847
            BF315FE586D422C978BAFA1299EE09E5D6B9FCEFADD39D67515EB917AEF3BC34
            808309E2C4141CCEDAED8ED9557E9FF78E0B8E1C178ACFFA38214560E16BB627
            E02A2378C2ABBF89B8F01C7C3A22D8272EC85802BC6C99FE65CA00EAA0331834
            A48721E86304B3F1F7FC9392F6A33BBF9E8FB8FFB2D7E3F9178FC733C7018EF2
            A7AEBEBE66C7CE8AC7367FBC65CD03BFF9DDFB140BC2088E7E403CE9DE3BE3CA
            2F41FC9F39221FA8D32F7ED4377FA0D9CADF5963BEEE26726041E04E64841F3D
            4F56F922CB5EF565338FD79ABAC3D61A8C4270EAE029558D4324EA11AED21372
            BD363EC763596EEBE808846F0E5BD65567CD29EC549EDBD5C708E02B1E87C13C
            0E3C5EA7E0710F2B089EC475D939E77F96D4E89CA3035474BF6C99FE95672001
            F400F491A1A0151289385107567CF73F1AB3FE48D6F9FF86F0E7BADDEE02301D
            17652EF7329BBC1E957240C3FEB4B4B456BFB761E3CFAFB9EEC69F83583F23EB
            F830A1AD3FE34ACCB8AE5BA9E54B0E11003AEDF303CC8AEA365AD9C687CC1575
            D0C94DEF5476608E67FE4ACB3EE9B3E6726521B2CDDA207E7D7708710CD198C2
            59B4214E54589CED71089FE375830BF1A84C84E411BB7A22BD7786C3A1EF9E3A
            B7A48E62D4274690A71E3A1987F5C549AB2F2A2BB8C244FAACF332668057E846
            66AE7CD9D57B0B0CB304B8C0E2F91D42EB899C740A4C79F79EB7FD42887E15C4
            9FAB2C7CD235B7F55A4D53D48AF2DD36719CDB7C5ED590CC4E1B41518C353434
            6EFF78EBB6DB7FFEAB5FDDBDE5A89BC6C7FCE37FC300CDC3AB1BF487C1A72A17
            227FCAA6476DDC9EB7D3D625FCB41902A2E9FB965D64FE05AB92F569A6073018
            D5778521B0590933BDC09F65E148CC14AABE60A4D72ADB43A43D3631CF63391E
            F602EA8B0623663D3D91E86F43E1C87FAC9A535CA9FA1CE2D25E22EEA4C1DD4B
            F8BD4C423576E69F0B03A833F493C1A1F7449C743CEAC0EE3C7773B1D7EBFD16
            FE5F18182F59835C454DC4D66D0A5B77B0D7664CF1D89CE91E2B2D769B240255
            0EC24F05B4B5B577DEF9C748C53D5BCBE69ACBED77D1AACA24424FB8DBCADFBC
            CDFC9DF5C962F423191F2AE2E078FD967DFA3F9877C602663A629987135CC451
            B9EE70AFB50422D6138D59BECF6D13D85AB6F5446C1C62BFA3276A6D3DBD0E23
            16FB3D36A5C06B5EC7E81427A4FA481DE19E70F4895024FA8D55B38B2A464B7C
            E1ADFEF445141F9D8B2F01815746879D8255BE747809E002B7EF4178500D3983
            D407FBED257B5CA150683103762DC43F19F0904E33A7AEB9D7B65544ACB6316A
            D990716659964D9FE4B1718588514D8334A5196BBBEE35BF3DB2C943FB6A9B3E
            D0297E9D746ECB2E9BFEC73BCC1D099126234D1DA920FA9A4CBAF28A2DF79CCB
            2CAB64FA20E2EB9999CF16E98DD9CED61EEA8EB72DC6501DE3B3B3AC331CEBA7
            242E9890E3480BE5C7F160843E66C53E110945634FC308FFB66A76E1C722B01E
            398947834E9CDE39793CCA699FCA98015EA57866AE7CE90FF71618B0042C2C9F
            EE3CB810F450F489C7612088DC73DEB609C02FF579BDDFCCCACA2A233EA2632C
            FDB3ABD776D745ADA23262AD9DBD568214387CA6D7A69466590E4C915AC99E36
            97FDBFA7FCB6BD1952304034EBF427DE9798956C7BC94A3F7E069872524BF68F
            0BBF3F04C28C2F8B13BFA0C4792667F06943A1BCC36014EAC0745CDB1576DA70
            93565DA0C130B4294742F039E3FC968B3EA07C9597571C149882DA88F0140C5E
            2C8A8EF02213E23F56CDCA5F2FBC04C141717005A35A5BF5C90C196077E055BA
            98999B310C032C9A39DDA92CF120EAA03A76FFF9DB4F607DFE77BFDF7F017969
            45BE5370881F0EE5AC1DE2EFA88AD8F63DBD168964C100513B6CA6C7268DCF72
            9685177664D9152FF8AC27A2C19367EC2095DA77A3E04D7BFB9796DBBC738816
            C015E210B99EE94759EE99FF6C6E5F36848519C0131154445E840AF7C6AC1D11
            DF1A8C8043FBE0F0ACC4A99B7E78A0923C2A814D43F48F4322281F304404878A
            345E897A5527A0781E48E4C5581A5E6185F9CF55E5796F02228F76C870E2B4B7
            F26032803A1B9700748ACED02FE7E1EF3B6FDBDFA1E4FD277E1EE07D76D1A8CB
            BA022E6B6C33AB6E085945550F52D26CC6548FBDD8906F4F6EF73AEDA975F525
            11FABA1BADFCF737993B1C4CDBB688903603A0F27C287A39CB2F4195C80262C6
            929D1C78686EDAA94451F5EB3A435C16A0551E5CE5089278DA054CC8F5583E4A
            A19B5A34F393840631155FC4DC9B863100A88C9EC92943F960B8F77518E13BA7
            CDCC7D9E6CA40B78209C72EE85E48ECE393AC0EEC0EF47879D823563E9557B53
            2C01B4EBA479748B33009D01B2F69C4DF9B9B9B95743F82FF140B980F6D9F584
            DDD613CA72089E9713B12033AD06BDE08FDBA276F7F67C6B0CA7277E61D53A9B
            BCEEBEB4EDD2A7B470019D3C34FD9C1597A0E99FE62874ED28173132C767A3B8
            B135ADE9085914452F8B0DBD9840CFAFB150D938C18088B8CC7EC1BDE015F9DD
            3635DF9B640C112F153F91A618388C23001C352075A80407C3997901AA1CBB8E
            F7C391DEEFAC9E95FF30205BF189FF6506709DFF1F0C090FCAAF7AB9081DE091
            4BABBCDDDDDDC77188732BC43F4E59FBE3BB831EB6522ECBCA8A59AE3F6A6ECC
            68AAEFE51D6EFB9FE77D1644E41B23A34123204A7FD8E24D5EFF8015EC7947A8
            FDBC06AE1F202591CCCB82C8ABBE6CB1F2E3ADBE2BAE2C3A75F390920034420C
            0201C4118FEFD1553E9176427E529941DBBEB9ACFD80E304A6A49B8E27CA6986
            3B69FAE4228203636FDDAA0B0065810987B24D815E63E7F18ECF1DFBFE0F2FFF
            E2C38047E59212E09C8BEF1955817448DFBBF27FFA818F98B27E3A33E2A2ECEC
            ECEFB0BF2FEC9799920885E9394FE2F3223B53E08A067A388E75614C71F36041
            BF40287B51EC00715C449FDDF286D7EEDB80964F6E62F020BBE8629E509795FD
            FE66F3763690DBDF09B73F646F2A91D79B5D685DA7FC83854B6639F5B9E8A743
            08A8E6F45A2111C1893AC420092E1022FC02EB630ECA0A47752B2C652B38359F
            7E9300153C9705593FF2BCD80B584FB2912C823B7564C5EB10D155DEE903DD4D
            C4832813E15E9775847AADBCD0631F37472C108EBC6D31FBEE9BB7FEF793A08E
            E85C7B02AFD9D917DF3D22E25008A90CB060FA07CB19856F708833A22AAA59DD
            15745B7E4ED4216EA2FEB62EBF6DAD9E8AA8775934DC8CA1A4D9CA2686AC18A5
            C9E3C9B2DA4EB4FCA73DF6617D164D31408901EE0BB39B77D9D4D77E62AE0107
            391AB4441B03C3D4BC68F154EB58F9158BE58D7788E31043C42222A210A5DDC4
            EC0322384082389C0850E2F42D0DDC87F8983DCE670A8527C5517166B0E5C304
            38740DEAA71E49838ECE80D5B7B4E3DBACAEA9D5EA5BDB6DF9D187DB11B3CB4D
            CB094D30FBCD76B645E2FA070FA7E789F546398A8E5DF9DACDDF7E08D090EE80
            31C0C2F24DFFC48CBF9CBDFDFC215B4BC99042D7DD938591270B9B78CC0AF3C2
            1608F9FA882F9EDF8BDCDB1BB22C6BB4BAAE0EBBFA4DB7056268E2ACA71A400D
            403C8CD9B82D2FDAB80F1FDF5BB02FA601E98B0E0A52F3C253E65BF7C9FFC002
            EB8780AAB58F88104378EA95C2BD6DC6F38784AB5C1F633AE5685D449D57E2EF
            5BC3CDD12DE2B3DE654DAD6DD608B11B2072430B04271E0A8529D5DF5D7ACEA9
            36BF6CBC615260BB1B7142D59FAE1F30C2264A5FF5CA8DDF4A3BCB6180D79100
            7781B36FEEBEDB3F95979F977703FBFA8B61802145FE50B56307B78E6E8F3575
            64E34B41D363100CE19A3A02F6C6AE667BA7B6DB1AA328535E968B58D426BDF9
            4BCBA9FD6850290DCC20208081F0D0ECA51658FA79665F9F78EE239E2376A138
            C9385310116B001A2C2100AAF7AA9BA8484F99FE4C02DFDAFC5218983EA86E31
            04553A780DAD1DF6FAFB9B6D47652DB9E91D8765F6EF5FF8A4E93C614303DB4D
            D006B5A796A9D4813BF95C668AF6BEBAE9ED97CEA97DE3D96E4049E7DA138401
            3E9B3903DC7BDBB9B9ACF347A3E8FD12E2CFA7319A4CD69B51A45D62BF0AB1EF
            6C66465FB4A2A1C3D655D45AC5EF6EB44873ADB935A229C5E9534A6A6F74203C
            78EC79165A700EC3D6472C9E244164E1A612732FC1C048C11B04A710183049BC
            4E5021328A2C1C7224128095803C61D02F709B8328B70A03512441BB7DBC658B
            35343490D9DF4D9A506AA79C741267092EEC1D318BC4A883CAF9A5FEFE6D0106
            460E119C7DBCEE8DBF796ACD4D8F1C3563462051ABAB32F8073BEBB36B13E951
            850FADB9B0DC6576715E5EFE0F29C023F1BB8FAEB5D367DBABA7A0B7EC5735F6
            F17B6FD9A6B77F6F3B3E78D77A235220D3D7278226BA1A43D30F2EFF9245669E
            C040B1CD8205A00171060D24E12A1D37C800E3A1F9253F3ED0E2B7D434D9E4C5
            D7EF7470117D5AA1D78AD90A3A0C4301E1C568ABA62B8A1149670440FAE0FE50
            BBBDBDF123DB5DDB0846DCCD3BFC303BF1E8F936B338CBB63647D5117AED044E
            DB1475C27E7D03633D63F3D26FD65C69C1CE3BA869374C4061CA65CA000FDF75
            F1A966F6B59CEC9C8B08877461B6665DC12C4EF2E2622A1D6273BBDF76D64DEE
            47FCDE5EDEBB6044D849A42B3222AC271880D3DFB40FDF7CC52A36BF8F7E01F9
            44454A8AA0048E8BE5145A60D5D72C3661963360898113AA8B0153984A24A555
            5E78E9E06237271F0427A41585A984284391CDF7B92C9B7540F5D133961C8840
            A2A93BEA9C1374A3D9AB7D955B34D1679C05D8C7558DF687F737596D43B39D7A
            D2625B3E6F9A6D6B893AFD169EF0A9825EC7EB8AC781D217190D5E7EE6615BFF
            FBE7B65A67F31A337B02FF110C1022B48C24C0A3F75C7A19757EC5E7F38FA8E8
            89019ADABCE6F3F45A1E9ABECF17733AA846B5EE37B4665B65E3A441C4EFE8EC
            C6F6DF6D79B939969DED33944A87882A97A9EF6869B68D6FBEEC4886C6EA0A96
            080D39F7710A265AF0AC6F98E54F7006D1C543315CC491022448120742845FE2
            69E07D78E998816271F14E24515ECC206D5F3D98CE962D1F29403675BBC08570
            3C5C2F7E0B5B398DCFC4DC2C9B5A9065156D514E145DA6EDDEF6AA7A2B282CB2
            6C9F8F02D44C05FC5287928A29C433D274CFA291883DF1E09DB11DEBDF7CCF02
            EDAF52FD5BF8D7F03530405C025405DFB4333FBBC686FA7BF6C12FB93BBB3A0B
            39C0B999B5FE9359599EE2A17053E14C620B85D8A306D8DF220D0A7279909C5E
            C7A0D3D8E6B7EAE689FD88AFB251F6C3F58DCD5653DF80850DC6C9CDB6A2C242
            2BC8CFE524D0671895182C9E5AC819FA86EA4ADBF0C68BF6FED69DD6B6E4EFCC
            9D5BC4EC831C54C7AFA354657336AFC10FB11F57F5594C2F5E0B6380195CF0F8
            259E8619FA063CCE0CC282085000A71CFA6C96C7B1702E33BF30DBCDFAAD16FB
            084FBD3C36382E6B400AB487781391C6757238BD30BED5E58A81B3C7D7394219
            4C213B487D77DF7201AE988B6AE81B6D13C1597757A73D72EF2F7AEBB66C7CDD
            7ABADE00ED8FF875F82A88EFCC7EE2E61A8E01EEF9E9B939FC2DCEF6FB6F87F0
            B369C8A34299FA20B7DEDABAB21C8608F77AACB56BC220E227EA0CC3B5DD81A0
            B57774596B7BBB05823D580019B4BC7C2B2ECC772403F7051D66D08326CA6512
            6EAF6BB30DEC223677442D9CE5B77C24CDB4A26C51CD51434538314217A77A52
            CE24BBD4969B0C5C7CA06990F1807014139941509AC0C987770425CEC5909C2C
            2BE6E047842ECE711BAB1CCCC76E13A42DCD61F3C318C530463E4CB2B33562A5
            E0E7B1540826E26F6D8DDA4C98C1879188FB24B60BA990DA56A24DA76FB4DA54
            5F638FDC737B4F7BE58E972C1C14E135F3D7D3E57A88DF6F5F0903BC8504F815
            79FDDD43775C389D6DDD1750F47E404E0CAF7608327751AC55C11E97D522F65B
            BB4AA9C08D1FDE491AF484421608F4585B4707CCD0C160326B18B4C2FC7C2B2A
            28B01C5EE21033709D6CF8CA86C88D42898F6BDAACAA33C296D2631E5FB66579
            3C71A2329A512481EEF7C95227420072FAA081483203039E8493E1CC6DC25402
            415F73C55C30819BE5CC85E126461B2EA4828BFB83315B30C1EBF450333C512F
            4D23117A4D12617EA9E69D4BCBB97DC40D29A73D4A386DA8AD441F082BB66FB6
            C7EFBFA323D458FD0C9634CD7811FF03D09B20BE23F689275D5A0678E4AE4B56
            8171794E76EEF984FBE5A40B7463F1EB0A7A79C912B11F1B99F8A90D72846C61
            46BF1B49104032B4B677380C11E1C260415EAE958E2B6689C833BF1FDB3D9732
            076E0553EB1A2E1E0C456C4743A7EDE9E4C68EF9CCEFF39BDBA19C59031ABACE
            F813C441D0C208CC7C28E1A2D211E17D78A904838FA9C3654C6A9B59ECB5B831
            C84CCB4F35C7DE081F87498E86F8628C0853700B5ABFF404A71EDAA55A484E6F
            E884601BDFF983BDF0C87D75B1B686A7B982FE3E286FE237E3DB20BE8A12EDEF
            5CD53D6FDB1917DD91843E7EEFE7BFC103FDA3D7EB3B32091C1091781461F5B6
            8B87039A01D94E523812FD3DE801414EEA6A5A3227BE53113F2188A38311ADC9
            DC97E3543064DCF8B2662C675D818079B2D86D2011C615155A5E5E8EF9BDBCD8
            81D9588342F18C5D0752677B439755B35B0E7BFCD61DCBB28680D65C88AE2167
            C0192308B837ADB620850373F268D581813B1C5C8C30392FCB9A83BDAA8C592E
            6CA25057FCB7B0D4EB58FAB6417C4D5FA7CE44DD4E18C77DEDF9C7ED8F2F3CB9
            134DFF19CC3E09E26F03A50BE2C33EC4D238870180BBDA3BDAA666FBB37FC45A
            7F36CA5E31B0219DC4533B6BBA66761E8A9D143C3D48A280CCBC9D81F84C0F47
            3DB6A7096D3FC399AFBA12B35F0FED95915CC03E1F4502F484301F43ACB854E8
            7418C3EFF33ACB43716181E5A244FA60867DDD52AAA986F66EDBD114B477397A
            8EC00C1EEA537F1C0F821342E474A21F1A3AB3986C1803C212E197785C91A438
            770B1CA0D8CA812B7F367BFC1E06390FA5543B87EDACF9D21F9CB628E4844E31
            CE4B22617BFAB7F7D8D6756F6CB4EEB617C97E0FFF367E97990587233EF90603
            FCD1D71DE83ECBE7F5C99C3B83CAB5E0286F441F64767776F3E874468CE0F360
            998AB2C621F23DC4C3CCFC8AC6FD98F9616C088C22AFEA0ED9178749225187F8
            5D5D016B6189E8E8ECE230296639D9BCE88954282C608960EB2466D8D725421D
            D85A8385AEA5C776B3B361CD41F224CCC6225B7C26D25D1449D28C09630961E3
            706869659C02FAB9D9ACB3FC2EB4FD46A48A443BD871E25378D1040FD63D2D3B
            BD569AEBB66DAD481E1A77EA529DD4089A7ED1F43BEC91FB7ED15BBBE5833731
            F0BC0EDA3BF877F19510BE877044E7FAA8FEB9FCFCBCFC77D8621D0E364DF09B
            81D352A0533D1DEF4ACE6471569F97DD6BA1881723CFBECE7CD6427603B01676
            80AC51F74646A410E5823D21DEB8E88E3343571784CAB282BC3C1B575460F95A
            22600631950675D495A7207249D3B6D476D8564EE06A6072AF5FFA429FF228D2
            308AAA3B41288522BE089A20366C813127CC895E9605E002D9F66714F0C42077
            70CA231DA096BB904E3DB40D5835C71985584B53BDFDF6CE9FA1E96F4F68FA9A
            F5EB4195A69FDCE6911ED6B98E5C5DEA2E2D193FF7F2AF5CF69393962C3D1DCD
            9FEE0F5B266D66002DBFB2C16B22BED6E49AD67D9BF931B8485B410DD440B19F
            B6E12180CE12110E5B3018B296B60E7CBB757607E25281E5617C71A1E5E6649B
            7611EAEF10D58C08EEA4FECD755DB6A323666D288F1E298F2847229C16418770
            FC14B1AD2B2F8ADF5AD272C9CD70F3114120B0256477C3A8EB9941B5ED2DBD16
            E0A691EA009C24BAF204ABDAB5DD1EBBEF975D81BADD4FF769FA52F63EA4B38D
            CC7CA90A4447E7C4006AA3D0E7F32C5A7AE2922F9C73C659E72D3EE1C4896A68
            7455F4C7AA6BF69B88CF2AD73FA32FA5ED9D3478248EB325EA0327831EC43EF3
            20A3999F2C9C26023F7181943BFA48852EF485668E599BDBDAAC07E6282AC8E7
            3D83628C4DF98EA1C9E7651643BC34D58C0AD4C849E5D686A0EDE87259C4CB96
            5227951059633915454F1280240485E0D49820A803635603B20FB4CD23A23222
            8C1312C139E536BDF7B63DFFC87D8DD196BA67787955EBFD1F40FF083FA4A64F
            DE90CE55DBF3AE9D7ED1CFAD37F09B1CB0661C73F4D1672C5F76D2DF2C39FEC4
            63A74E999A8342087874AEA3DB673BEA879FF9BA3B17615B1771B41A5EA74383
            F76A816400A4E16B504488D1B5981996F405B521E3523B26E766CEDD3BBBBB69
            D9AC106628415FC8CFC704EDC7048D3D40839F590B7BB1F73476D9F6D69055F5
            C054FE1C5B3889236028AD3AE39281F90E55133B065D0CD17A8FEE17571CC903
            03A26BB120465A9AFEDB2F3E5981A6FF2C4A8EC4FD5BB4B815DFC1CC17AF13CD
            CC251940C560022DB8E388CF3B76D1C24F7EF1737FFB778B162C9C427A4427E2
            EFACCF6CCD17138451E07A796A1965B42EE7B09F1FB1B10380A0F67A900AB22F
            B4B67762686AB72086279DB7176B4BC932A15D841F7D41379118FF7D6A55C6A4
            EA962EE76DA01E7611D93939712B26152688AFAB5D3BDBE3876062104D02489E
            247E2FB79B9E7CE86EDBFAEEEBD2F45FA22322BED6FC9DC403FB4A7CCA9AAB36
            B4CE4EBFF076C51D0F138841B3494CC22F3CF7ECB3BF78D179179C39B37C561E
            E9B44EC4DF35C2CC4F5B10A0D67C89E3A86C9CCC4559C2C5083EB67D1A0C50FE
            A44E52414B52B0276CDA4534B38B68EFE834C1B48B188F54D02E22971D859F2D
            263AD23EF747D2A7AE0D33376723BD581DFDD9D916E3E6F1164EF612E6E67EC4
            27D113E8B647EFFF556FE5A677D1F4BB5235FDAA7FFDDA5783CF3EF6F83EF747
            056180F76080DB14EFE7FB1801E53967EE91471C79CE29CB4FBE64F1F1271C31
            69E2646F2A6247B7D72A1A8617FBA9F803E33D1879A0BB49EC33294C33460325
            E38F669E18410C31B0DC9F22AD5D842452A0A787B3886E0C4DEDD6D6D989AEA2
            B3883CDE482A342D116206498AFD61D06E94C79AB61EFBB0CD65214FAE799134
            622E68AEE160F6BBACADB9D11EBDF7762B0AEDAAEB6C6979A6A92DF478AF79DE
            EA8D796A217E4863B0DF0C50177ACF4EBB703003A872791841049F9095E53AFA
            C2F33EF3C5D5AB4E3F6776F9AC22943897667E85663E3B5FE166EAA5F0712A84
            D935BDE92184AE2082485C8B097C58F7F6C7A89349FF2401C488D217B48BD07D
            BDF6AE6EE728565261C278DE11E42C425281B170889649FDA9B8F5ED01DBD912
            B69A10E3E0CF653278ADB262873DF7DB35B66466CC8E9A5DDA3B654276AD1B62
            747636DEF5EC0B4F6D6A6A6E099E7DF19ADE03C000EB61809FA5F667509C76A5
            1BE492310D7FE237BE7AD9D74F5D79C1F17B9AA73269B56200CDC049EC6B7055
            C499F9D4A2F8505E625ACC107196094ED1501AB545DC9F1938545B03E1EA6B24
            CA756B666C57778F23159ADB5A39A50C6171945428B271C5581D59226468DA5F
            06DDDDD465EF6CDE690F3F72BF2D392CDB8E3EA2CC8E3F7AA61D316B328A6AAE
            5557577EF0E2AB2FFFF85777DF29D9DFECCEB928A36DDFC0E773D58546668044
            211841D260DC85177DEBB32B567EFE46C4A0182391DD2FD460B1B5E49DBDC128
            8ED807DBEF83E3093371521CC53C521C65D5F3A1AD7B60884CEAC814570C1840
            47900492340A6A89E0BA76135BCA760C4D5A3A8A38A1946DA108ABA37407492C
            89F44CDB4AE087423D5653BD8D17613AECF059D936B1A4A8DF58EEACD8F1FAFA
            0D1B6EB9F1A7B73C4399F67D6504577DE87D5B75E14FA96374EE473FFCCE4AAF
            CFFB141A6CCE7025B486CB62A635DD8F42E7CC74B64182AB9C931E61E60B6F28
            AFEDA44E09B54408474CA03AE9979207CCAB1D31AC879319113551B11850C7D5
            5D9C50B6B577996C0B5AD78527FB82968982BE2DA5274B26E344C9CCC368A487
            F71C9AAC38AFCB4A8A5C18B37CDC2988C65ADB5A9AF754573EB77DC78EBB5E7E
            ED953F6CFCF0C38C19212306B80EE263397B02D19B37DAC7100368C66AE6CA08
            A401CA63ED94B233DA3A46C253BDD2277873D63C18722459A43C8E546E34F99A
            F9EA732AF153CBC59788F859842C8D4D5CEDD6E15418835636F6049D508E2BE2
            220B56475DE5DADF252212462975B5584941C0C61578CCC747261A1AEA2AD76F
            DC70D70FAEBB5A33B90E69E02888A9FD1C2AEEAA0F6FB0559FB975A8FC24FCC7
            577F7765A6C44F1626A2F376CD5898C79CAD1E33CA99B14805B20F9813B339FA
            0286263181DA1001336D40840D72DAA865C68F857034E5252D229C4504D01774
            A3492F78E85693EAD2DD05298EC58579BC09E5774CD0FB2BADC2A116F37BDAAC
            B4B007FDC0676D6DADBB377CF0FECD575CFDFD3BE96F0B8C10261CD6B91A6080
            53476080EBAFD93FE24B846A70F800B3B3BD89CF58AE636104D28C954227620D
            DBD30C33D59E961BDE9C754AAA7EB533DA4117F1658C9134712AC8F047CF18C2
            DC2C43534B5BA7D537B7701ED1C98EC7CB259622D6F462CBD7C557A404BA14E3
            92610329E8315E848D849AB861D4CEC592D6605777FBC6CAAADD6B5EFBC36B8F
            BDF0CACB75A086618618E12007036CB4533FF393411909C00DD75CB15F335FA2
            59EBE550163ECD584907114C4A563696C0D11229D1C79142E909920AEA8766B4
            C30C6C29872A278695E2A7BE0C85E36C13B11C4AD48BD0BD10416B3D265AF6F4
            1CFA5050D28EFB948A3956C6CEEE20AF7EB5F1E2479BE9DE63BE6E341517C110
            85ACEB7C770866D89F83291AE2326DC862912673C7EA83D5551F3CB36EFD3BB7
            3CF1CC636F92D70D13F412F673C332C08DD7EE27F131F288B08999DFAFE50109
            E90AB2C6895012D97E760822D400B4FD4AAA2F5A86A42BA8229D41A89D548613
            F18597AECF620A590975A0D4C51902DF3A720E9A52A796B682320A48BFCDCBCD
            43D473AEC07947369753A413C8B2AF9D433D77FC3BB02B043047F7725F508A63
            E938B694E80BDA4568E9CA429F513FF7D54722018B86EA22B5D59B5EB8E1961F
            7DB32BD0B6D5ED3FA33BB53E5763F8035BF9995B52614EFCA61188AFD924A269
            109D02037E3490CAD7CCCF44E1D3604A2A8811B4E5D240680DD675B0014DEC57
            524AA9A493FAA959A79D8A666C989B4679DC124EAD5C84D7D5B3AAAA5AE7CC20
            356F34716D0773B833C08D2B73F17A502BA791921CAAD70FDC8B5938C05DEF0E
            B694528974E1B504DB427C4BC99BC46C75D5B7D1B435144E30D012DD5DB1E5A5
            175E7DE5FBEFBDFFE13A57D6940E70636919E0E61F7D6F44B1AFB5551A32F7CF
            B05CA18DB2D54BCC240DAC18241BDB7926C4A743FD9C1848D7BE442C0D801841
            DAF8FED4D9AF81BE8418AEB33B6462BA7C3EE926D12F29A46C11A9A9A5D5AA6B
            EA11DBFD268FB2FBF92C9615E90DBC1EEF9C2544B8AE1541CF511DFD1053125C
            BBB7491327B26CF87867226CCD2D1DD6C85D47592025314AB8B720C990CBCE29
            176691793CA5F83E457FFFFA1BD7DC75FF239AF5B530C08748809B9315DD725D
            9CF81073545B3DEDF57BB8BE12D51A88C81271348B730FE05ACE6121C4E14C1F
            D370620721E63A505241CF203D240786555C3A8306444B5018834CC5EE2A2E93
            A427BEB67593264C706E267BD92DC82C2C3D40D24B9752C22882BAA5D4C2ABDE
            1D9C2BA43283A38F7081243F37DF4AC6175A21EF3D68E288F8323BD737C5F505
            3168212FC74C292DC1EA18DF524A324A81563F33F11F6EFA2870E34FEF78A037
            E6D64EE12D575364939D72C14D4E1D3FB9EECA95D8B633DAE73B05F9D1B7F134
            5B3B5074725066345BB58E9275405D98ED9D248C08A6599ACDA0EF4F3B89FA44
            FC04438981C504927055B575D6D8D8C8193DABB7B83BE5690AB1FECD2A9FEE68
            F329E07E51115CF6813D5535EC02DA06E5698BC8F69A33065E50C9CFB30925C5
            A67A1DE907F36817D1DAD6C947B19AADB5A3C3B9DE5682E238093C6789E81B6B
            49C87E95A749D4D4D5D9F7AFB9BE36108CF05D5CF7AF40D99864805B7FBCEFC4
            A7A27E4E04EAE6834A127F397C50299799256EEF8774001262826E4CB49A35D9
            1844C40899CC0A31AD88AC72FA80D3C02E89A1775654B1856B6252C79C6C8978
            3D8BB4FB23E6CEE2AEA18E489CACB43FAAA3B2BACEF86717C97CBEA780C4C887
            213AF8366C20593716568711F272736DC6B4C9987EE3A672E925BAE718DF45B4
            3B3B09318696885296889271BC3EC75D472D115A22930DA544F8B2BA5DF5A39B
            DA2A6B1A9E8595D798D96BF87618E023FB60D78489CCFC8D70D1448007CC69ED
            1691B4B64A548A48FC37AE03567FA22211D2D941B0DE6A164BFA48BB97269EC0
            1918AA4C7720C45530F417D6EE81F94ACB16B00BF1CFBFAB511242F16229EB91
            B67CE3C68DB3D933A6C100D94E5EBA1FDD7390EE508D1449E4E7E6E4DA94C913
            D91DF8B918625C5EEDB2AA9A3A5E7E49D86C787B9883A589A5E36DFAD4C98962
            4E2869A1E524BE4404AC812542F717B4D4E471D164C2F8228EAC0BE853FCDD88
            548175EBED6B7BDE59FFE1AB54B416FF1CBE011F7335473EB2932FB8316BE151
            F38E3D76D151FF337FDEE1A7D3780E9907CC490C06318D6AFB156300451C896E
            CDA403D608156980247DE4B595D36CC8F1E9B3EC6E72F73AE54972C8EE20BF37
            A77F4C9753EB9B9A6D5745A563BD4CCD2DC82BB049932771A1D3C3818D0746E2
            CD24AC9B091C95ADAD6FB48ACAAA04089C6C2B83A8B96C0FB53B92D4913D41A6
            E39D157BD073C20EAE9B4B22BC816DA588F9B22993F896F0E00335493DDD60EA
            661BD982F9B9011DA38525C2CB9673F68CA9563E6542B2DCE34F3D1F79E8B167
            747FF06E1A78045F89774E116180CD30C00D2E00E3F10BF04B969C70CCD9272F
            5B7CECFC79738AB5850176C05C88235DCD2C29491EB73EF5CA3B79290377A01A
            4A4A9F54A980BEA0FAF5E68FB67D92144A0FE5C5B8DAABEFD855691DBC6D9B8A
            27EBDDE449136C0A1ABCF408298FCAD772A2FF38D6D0D402E3ECE14D9FF8D2A1
            57CDA64E99C8859202C43CAF82F93C4277BCC663D7EE4AE38C3F898F12CEC558
            9F95F0EADB9C993A857750D3FE88890298ADBBD0BFDA3BBA1D45B1048552B4DB
            F0E1C7B11B6EBDE3634E2C1FA4F0AFF15BF0714E23926000A2325F98E4590989
            19F823274F9CB0E2CCD34E3E0D8628C36A35980D41DA57270E56A7B544481268
            E0A488ED6B7DC395531B6A4B1F75D42E2217C5290FDD64B832893CE93132DC54
            ECA98609BA126027CC45ECCE9D399DB7960B9C349F7AE70396616B686CB1EADA
            6A960C2E7A21877564AD995C58C891AE5712C3EBE0277EC468F530CCCE8ADDBC
            4FE14C4C274B3681E2A2229B3B6B064CE37360C3FD48028A19B40C8AF8B50D8D
            76C50F6FACEEEA0E68D6DF4559DD250C10269DAB25F2B1ADB8E0FA24A02F22F6
            2C223E153F1785E7F8934F3AE1ECE54B4E3C72F6CC69C36B3D14C8D44947E842
            99D37647C4C9CD1E2CB633AD331D7E7B778F33C0620419B0B45515E3A5C34D85
            39CCCA1D80DD9535ACBBCDC92CBDAF28913B614209926082E9AA5813469E2DDB
            76C1087C3696C92FE696949834B1D451EAF273D213B296EF2288C97A6827D900
            11198A66974F331D24911CB5D3B5B6EF5D734B6B65558DEE0BACA5E0EBF8767C
            3F3714032490B478E6909072388BF0A805F30F3FFDE4A5272C3DFE980513FD7E
            DE760078A09CB63EDDC13077F623CE37017211937EFCFED6AF99A1355FF52466
            7E0033B5248366B80C3FD215B4AD144E3AAF592A2D7C4745653F6BA00B641967
            8A0AF4626A36DA7E33AFA9F50045D766F64F2C29B52266311F74E1A519443FF6
            11319DCA39487D3FB50D4DB6637725CA60A40F120F8477E4E1733266809B6EBB
            33F8C7751B5EA596B5F8E7F08D785892DF14E76A896EB115E7FF3805346454AC
            3B8EDCE9F82338E75E72FAA9279DB16CF171B3279596280FF081712298143911
            89B58B1334FEB386CFCBE54CD73E3520E28BB9F4210868D2AF0EC1B515D41ACE
            2EC8C408D20F14EF8748424C20FB7F655D23846EC072172796B686EA9946574B
            0CA88E9B8C818865947764DC5694EB87B1A3A6BEC88A2A2610338AE954AF7422
            D9FE6500D2AEA011EBA39E5D151D366BA64D9D58C289A15AB111FF1E7DEA85C8
            030F3FB90EC4BBF18FE22BF151FC20970903240A6711C9C76B8F329B70D1B213
            8F396BE5F225C71C3DFFF062D207D44999D3A0E93EA0B69239FEA1B76DE91A96
            FD3F84F148A237317C7A29A4070B9F0C3039FE6C44B31E89CFAEB15311D38920
            DA416889D07A9A5AAFF264246A6E6BB75A18411FAF102C1547713EA16733CA26
            3B4A9FEA11A10597D792D285A493F22746D38E40CF25C52F51978E931B5B5B79
            B5ADC7595ED8A6ABE888FEBD8D1FC5AEFFC91D1FC3500F802CBF85308C4FEB5C
            ADD1ADB6FCFCEBD2668E00D478A62A8DF3A74D9DBCE28C5397AF5A7AE2B1655C
            80D0A88E50C5E8B335681A301998348B355373071CDA0CAC4D225E8A5901785A
            8B952F256947459555D73740780F1FB0CA8148B98E2227BBBB0822A613234832
            8870224EAA822A22094F469EDD35B556535BCF75F65E559FF4CACFC9C9B3D9E5
            53AD94770B944E66A644A4FF74A3C18BC175AD4D463399A085926847F1D1786D
            3BBFFD83EBABFA94BEBB29B31EDF4FE923DDCFED33035C76F9379215DD72D30D
            1E1209A5F1B06CBFFFF855272F397BF9D2E3E7CD299F9E4BDE01751AB4CE9E10
            8A568475D587E7831003B69212E9921C12BDA983DFC4CCDDB2ADC2023DC1A448
            55BEC4AF872F8C48AB974125D161319166ABEAD34C4E886DE5EB4C7FC7EE6AAB
            6F6A52B29FD7D2A2192D669DCA567146D924E765D47E48290987C191406A4F84
            979D448633F52B056DC8A8FAF29DAB6F6EC1E4FC2C486BCCEC0D7C3B7E580703
            6C4302FC6858A47499A90C90C88711DCC44570298D33CD6C01CBC2E9A79DBC6C
            D9710B8F2C3DD04AA30C3A9D019446143ACD7011476BABD658CDE05C960BCD60
            FA9174D2B6B7EFACE482465C514B661041AFB145471EE628A024FB3911B42B08
            D3D19688E27245ADA6A6816FF73526F1607C244114C60C3B7B6AF549CC25AF57
            CCA64C2AB1C9EC1874349C2C9426A2FE8B79C5745AF61C65D83BFCC5D2EB7FBA
            26F0D6BB1B7E4F756BF1CFE1D531A925448776AEB6E8363BE9FC1F0D8D31444E
            3A06484585197CA4C7E3A7E1E78D2B2E5C72E6A92B56AF5876FC9C8925E3BDC0
            0E984B288D1A34114AEBFE84E25C3E1523C1D4BF995D9CE9EFDA53C5CD99C13A
            91F6EA73679461A21D5C2E518BDA6AE3C5D29D6C096B59464464E909799878E7
            62B0D1B7022AC86B6E6EE6E66EFF65417B737DD3680EDB3ABD9A9EA873A850D4
            4B2C7B5A224A8B72D32AC20F3DFE2C4ADF5309A5EF11EAABC20F7E408003DD9F
            8C01120DC10859C40BF009A571E1498B8F3D6BD58AA5C72C3AEA4FA434A26025
            670FDB2EADA92E3A20D1BA0383CE2E7CAAB64E96E3E61F3E9BFF4334BCB6AD75
            7F0FB6FB5D9532F418333E862EE13559F9268C1F87F4C8E2A2A6D96E0E80AA6B
            1BB0ECED6502ED16D46E3ECCB268FE61CE3530A7E151FC88B1C5680351D76DF8
            2876EDCDBFD88CD297B0F46D05278C1F958301B62301AE1D15722AD248122015
            577118413490D2584A7A06FEC899D3CB4E5EBD72D9A9CB171F77E02D8D4C55AD
            A712DBECC84D623417234C63739B6DD9B99BCFD40FD68DCACBA6D8ECE9539D23
            57FA37C8C9BE5F55D760DB76EDE16C209EEDF7FA6C3ADABE6EF1E8BB823E5E52
            C9E6068F1447198576EEAEE1FF1C75C791537E75A43B174980B29CD44552B247
            15ADAAADB76F7DFF0694BE6ECDFABB28B41E1FC48FDAB9DA7A6180F3FEF40C90
            DA23984132564A631970298DC79D79EA49521A8F443CCAF004F8C039476964FD
            963297ED735B65B52C7A2D831AD039FC3147CEE1D0C63F284FBB871A8C355B76
            EC66D6F73AF93A48D289DD9449A51CE4F04F226130656829525B3A35D4B78BB5
            4BD09532E525BCF488499CF81D8E9957973B12F0D18652FAFEEBAA1B5BB04E3E
            4399B5F837F0EDF88C9CABBD77872D3BEF9A8C0A09395309A032033D8C90AA34
            CE227FC1A2A38E387DF529CBD8492E28E5868D0BD801730805EBE408B8962BDA
            55D5F57C84B22BF9FD6035A22B5DC7209AF5A108A5135E1A7A2DA7821F6FDF8D
            A52EEC80A59C496798367902D7BF8C1341BE8BCCB53827B3EF4727751DB4B77B
            4F2D26642E9560DCD7CEA02FDB61B4F987CDE45670510234EAF09A9B7F19786B
            DDC65729B016FF3CBE112FB58160F4EEA032406A3761064DBB71C0A6E38F185F
            5CB4E4ACD356AC3E79D9097398295E6007C4490F90F9B7967FBFB26D57A5239E
            4514ADAF22AAA4C04C968109DCD095F6AE4675A77FF3B6DD68F77DD295BD5D19
            842F9F3AC97AF95F269204DA7D0877A0D74EA5125D60F3F65D4809BE7A068294
            41298FDA35CC9B33C326958C073A7AF7E0A3CF44EEFFDD93EF52E26EFCA3F82A
            7C149FB18301762201AECEB8E0819000E91A8511B28017E027E367E317A2249C
            73CAD2E3171D73F4BCCCA70A150C7462025DA2E8E2EBA3DB7655B1956B4259E3
            F3ADCC5059000BF3F26D2A5B3611B993ABDB1F6CD9C517CCF79E044E622B376B
            FA14A407FFB18432DA7E0E6C239196DEB0059DA11289239818420A1D47855C04
            F5DAE1EC1C664D9BA2AC51F977DFDF14FBFEF5B76D06F9813EBF95308CDF27F7
            67C70089A780115CC45395C6F933511A3FB1FAE455F0C2D482FC3C37F9FBE5B4
            AE77F26D416D0DEB1A9B9CB55D265837F714647AD5E99E5E00954F3434A1849B
            40D3501451FE246F0B58F7139222819308C568D5E80D5B77EE417AF424C04EA8
            B2BAF83169D2449BCE0D21C71CECE385123DB58331F8A712A5EF3FBFF7E32A98
            F2617235FBD71306F1FBEC5C1DBD3B6DE9797F3E1220DD93C00C5EE09AFD5309
            511A7D279CB56AF959A7AE583C6FD6F4B21C60FBEC3443B5B5EBE0137235754D
            BCB5D3EA1CF2E8C898AD15B3DCCD0BA77CD58B99AEE5E188D9D3B1E8E53A073B
            C5F9E2CFF44D8BF8BBB94ABE15A393BE2FA0EBF303310B90340B0E9FC93727B3
            1DDD4466EB29E3F26973301774F349DC6F5E717DCB9EEADA67A8672DFEF587D7
            DED471FE172F27BAEF0E06D80503FC30E31AFE544BC0701D811134EB73C19984
            9F6966474B693CF3D4E54B161F7B54A9CFEB7501CBD88958BA8BA033747D304A
            FF99A3B5BD83AD9EBE7C1A730C3A2EAEBCEBD2A5EEE7733906C58DE35FEEEA17
            70BD4BEB7982915AF8BE509B7C5B97738144FBFE741DD20DA1995CFC9C9D22FE
            B534481749877FD54DBF08BCF96EBFE3DDA647D6DE143BEF506280D4818119FC
            A4C7E3A7E18FE01EE332A402668513661197C4009C991323B4F27F0AB672E6DF
            D8DCDAAFB08E664520F91C0E97727C7C519C9B4552208528C5B227AC974BC230
            8C04BCA0E9BD0E7DCA10FDF3E7948FCA0670DFEF9E8CDCF7BBA7DEA53689FD47
            092B1FBDF366672FFAE9BFFB3AC97D77AE8EDEBF1C0990EE31618454A5710E38
            0B4F5BB1F8ECD3B0342E9C7F5821E9513B5DBD16F1F720BA138564C32FC8CBC1
            74DCCBBFB7EB621B184557402AC462497B7F7CD68E4EF8E8C591A30EE37C7FC2
            F016C744FB6FAFFBA0F7CA1BFA297DDB207E52E93B000C50C1127055A2BD5187
            07630918AE73308228900D4EC2D278D4AC1965A79CBBFA94952B961C3B95FF41
            A4E583ECF44E57B82B30DF6ACD4E60E8830E33A74F46DC1741F808EB74906F03
            F5B02308702BA8D351EC241134DF250974195456C744F9D4B090973ECA26975A
            1984E7502C356BC8F86ECE2DBEF9BDEB2B5394BEF71FBBEBE67E4ADFA7FE763F
            254067ACC2967CFA2F9F0152471166D01220A5B10CB894C6E3CF396DC5D9AB56
            2C3962F68CC14AA344BF66BFDEC9D312203D20C419FD8CA9136D16665ECD5AEA
            61E716731840378565E491A5AF97CB26BA20A2770B3BF95C0C26029339585243
            57C5F4E269515E2E1FAA2E74DEA1543DA3F19CE9DBBF5D715DF39EAAA4D2F7C6
            E377DDD231B0EC27FFF6B281A08CD2AEBF4606488C008CA059DF4F695C7CEC82
            334E5BB1E4C425C72D18A4344AEB1771F5DD1F9FC7CBBFB3E5050BD6F9447D43
            85DADB6BAB288B6127DF23E61546E750283FDBCB45515FDA13BCA1EA4AC0AFF8
            F16DB2F4BD427A2DFE797CD31377DF22614374AF3BF70BFBCD00BB91003FD85B
            E328637F6E4BC048DD8619FCE08CC74FC74B695C7AEEEA93CF3879E9F133D359
            1A251586DADF537E4497387FD0D9BE6E20EB3EA24E25472C08C23DBF7D3272EF
            6F1D4BDF5D241FC5577DEA9367F6FEF3A59F26DADF8D3140FFF1183105236481
            54889F8C9F835F783AB797CE5A75D2A20547CC111CD08173322CE9CA7BA00733
            B0CBAC28CF9FF69E42A2C537DED9D07BE5F5B76F26FD409FDFF6E43DB78489A7
            759FF8FC9804483B3023016104C861322295805B8E9F8F7E70CAA7CE5CB9F2E4
            25C78DA834829FB1D32D25BDBC2A8990AE70054ADFBF7DF73A297DBF23FF6EFC
            86A7EEF94990704877CEE7BF3664DE68325C5DB13DB6F8D3DF1F0D6E5A9CA7EE
            FD495AF85F12F09CCF7DCD4B7F8BF065F8C330F49C70F6AA93CEC6D278F89C34
            4A233807DC49E9FBC6B7AF6DAEACA97B9ACAD7E2FFC0D876100EEBE8FBB0F923
            65EE37033CFD57C00089413AFB735F4B551A67013F7AC9B10B569FB172D9622C
            8D25FB6A69A49E619D8C4C57FCF8F6C09BEB36BE02E21A337B01DFC4D8C60887
            75F479D8FC9132F79B019EB9F7D691DAF88BCB3FEB735F75D1691F7E3C7E3A7E
            1ED6C5A59F3AE394D5A7AF5832AB645C9107D80173773DF444E4EE879E78870A
            EFC23F86AF625C1D4B1FF1611D7D1D367FA4CCFD6780FBFEFA182075D0CEFA9B
            AF669196723899700E7ED16A298DA72D5FB470DEDC02D2FBE55EFFE3FBBD6CF9
            3653C9AFF10FE2B73D73DFAD61C25139FA372ABCA190F43F838CEFC70D953F22
            FCD9BF7206480CC0997FE348851CD2494BE3BCB9334F3D7BD5F215A72C3D6E2A
            1F7DD4F241F6E8DD6E3E1B73F9B7AFDDCDF5AE472875377E03E319241CB5A35F
            A3C64D87B8FF0C70FF5FB704483768675EFAD584D2388DFCC3511A8FFFE4EA93
            CF5E79D20987CF292F93391AF0F04E4ADFD7FFEB9A663E1FF334986BF16F3C7B
            FFAD9D841939FA9211FE40E4FD6680E70E4106480CE219977E55B33E8FF444FC
            6CFCD15818579FB36A0596C6A34A3003BB800D7252FAFEFBDA9F75BFF5DE07AF
            90B916FF3CBE99B11C51E903AF9FA30FFDD299265CB2782DF8F457322D97C47F
            EEFE9F26E3876AE48C4BBFE2E2D9A53496104EC34B695C26A5F18C5396CE1CA8
            34AE79E0B130D6BE84D2F738F8558CE3A8943E70FB39DAEE97CE34B1DF0CF0FC
            1803F41BF3D5977E250B403FA5F113A72DE726DBD2A3171E39B7E0F76FAD8F7E
            377EA7EFD7E03D88DFCE188E5AE903BF9FA3BD7EE94C13FBCF00BF1E9300E906
            7DF5258E54C821AF145F8E3F0AA57165654D7D21C7BBEF93FE1D7EE3F3BFFE69
            90709F1DEDEC735915DC6F065025637EC41190D2580C56197E1CBE11BF13DF89
            3FA86E8C01FE7787DF4D735A22628451BC428283E71C063878CD8FB57CB04760
            8C010E36050E72FB630C70900970B09B1F6380834D8183DCFE18031C64021CEC
            E6C718E06053E020B73FC60007990007BBF9310638D81438C8ED8F31C04126C0
            C16EFEFF03A4E305B7CA316CAF0000000049454E44AE426082}
          HightQuality = False
        end
        object sRepTanqueABT: TfrxSubreport
          Align = baWidth
          Top = 586.960629920000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = fxLMC.Page2
        end
        object SysMemo1: TfrxSysMemoView
          Left = 615.307086610000000000
          Top = 68.031496060000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 385.512060000000000000
          Top = 193.889763780000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM_ORD_LMC'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."NUM_ORD_LMC"]')
          ParentFont = False
        end
      end
    end
    object pgLMC: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        Height = 1027.275707720000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        DataSet = FrxDBMaster
        DataSetName = 'FrxDBMaster'
        RowCount = 0
        object Line7: TfrxLineView
          Align = baWidth
          Top = 152.960730000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 1.889763780000000000
          Top = 133.283550000000000000
          Width = 54.047244090000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Produto: ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 57.590600000000000000
          Top = 133.283550000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DESCRICAO'
          DataSet = Frxdbtanque
          DataSetName = 'Frxdbtanque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Frxdbtanque."DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line9: TfrxLineView
          Left = 441.425480000000000000
          Top = 133.283550000000000000
          Height = 19.653543310000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 561.370440000000000000
          Top = 133.283550000000000000
          Height = 19.653543310000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo7: TfrxMemoView
          Left = 565.149970000000000000
          Top = 133.283550000000000000
          Width = 35.149606300000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Data: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 604.724800000000000000
          Top = 133.283550000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."DATA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 445.205010000000000000
          Top = 133.283550000000000000
          Width = 52.157480310000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Unidade:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 503.457020000000000000
          Top = 133.283550000000000000
          Width = 54.047256300000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'DESC_UNIDADE'
          DataSet = Frxdbtanque
          DataSetName = 'Frxdbtanque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Frxdbtanque."DESC_UNIDADE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line11: TfrxLineView
          Align = baWidth
          Top = 172.590636610000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          Top = 153.519790000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Estoque de Abertura (medi'#195#167#195#163'o no in'#195#173'cio do dia)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line12: TfrxLineView
          Align = baWidth
          Top = 192.244179920000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 561.259842520000000000
          Top = 134.795336610000000000
          Height = 533.669315750000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo12: TfrxMemoView
          Left = 564.149970000000000000
          Top = 173.078850000000000000
          Width = 103.181146300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Estoque abertura')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line14: TfrxLineView
          Left = 80.125984250000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 160.251968500000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Left = 240.377952760000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          Left = 320.503937010000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line18: TfrxLineView
          Left = 400.629921260000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          Left = 480.755905510000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo13: TfrxMemoView
          Left = 1.889763780000000000
          Top = 172.968589370000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line20: TfrxLineView
          Align = baWidth
          Top = 211.897723230000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo20: TfrxMemoView
          Left = 51.692950000000000000
          Top = 172.968589370000000000
          Width = 24.566914490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'N_TANQUE'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[FrxDBMaster."N_TANQUE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 1.889763780000000000
          Top = 192.622132680000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'ESTOQUE_ABERT'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."ESTOQUE_ABERT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line21: TfrxLineView
          Align = baWidth
          Top = 231.551266540000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          Left = 1.889763780000000000
          Top = 212.275675980000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Volume recebido no dia (em litros)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line22: TfrxLineView
          Left = 441.448818900000000000
          Top = 212.031496060000000000
          Height = 378.330708661417000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo35: TfrxMemoView
          Left = 444.205010000000000000
          Top = 212.275675980000000000
          Width = 103.181146300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanque descarga')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 563.929500000000000000
          Top = 212.275675980000000000
          Width = 103.181146300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Volume recebido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line23: TfrxLineView
          Align = baWidth
          Top = 363.834880000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo37: TfrxMemoView
          Left = 567.149970000000000000
          Top = 192.622132680000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'ESTOQUE_ABERT'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."ESTOQUE_ABERT"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line24: TfrxLineView
          Left = 441.448818900000000000
          Top = 344.181175590551000000
          Width = 238.866141730000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo41: TfrxMemoView
          Left = 443.984540000000000000
          Top = 344.559128350000000000
          Width = 103.181146300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total recebido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 566.929500000000000000
          Top = 344.559128350000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'QTDE_TOTAL_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."QTDE_TOTAL_RECEBIDO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line25: TfrxLineView
          Align = baWidth
          Top = 383.488262200001000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo43: TfrxMemoView
          Left = 1.889763780000000000
          Top = 363.834880000000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Volume vendido no dia (em litros)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 444.094488190000000000
          Top = 363.834880000000000000
          Width = 110.740206300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Volume Dispon'#195#173'vel')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line26: TfrxLineView
          Align = baWidth
          Top = 403.141805510001000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line27: TfrxLineView
          Left = 50.669274250000000000
          Top = 383.488262200000000000
          Height = 206.740157480000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          Left = 96.897608500000000000
          Top = 383.488262200000000000
          Height = 206.740174570000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          Left = 300.582870000000000000
          Top = 383.488262200000000000
          Height = 206.740157480000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo46: TfrxMemoView
          Left = 1.889763780000000000
          Top = 383.866214960000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 50.252010000000000000
          Top = 383.866214960000000000
          Width = 45.354330710000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Bomba')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 139.944960000000000000
          Top = 383.866214960000000000
          Width = 158.740157480000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Encerrante de Fechamento')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 302.362400000000000000
          Top = 383.866214960000000000
          Width = 137.952814490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Encerrante de abertura')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 443.984540000000000000
          Top = 383.866214960001000000
          Width = 66.141744490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Aferi'#195#167#195#181'es')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 563.149970000000000000
          Top = 383.866214960001000000
          Width = 100.157514490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Vendas no bico')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line30: TfrxLineView
          Align = baWidth
          Top = 590.606680000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line31: TfrxLineView
          Align = baWidth
          Top = 610.259915750000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line32: TfrxLineView
          Align = baWidth
          Top = 629.913459060000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line33: TfrxLineView
          Align = baWidth
          Top = 649.567002360000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo64: TfrxMemoView
          Left = 1.889763780000000000
          Top = 590.984325200000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Valor das vendas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line34: TfrxLineView
          Left = 374.173470000000000000
          Top = 590.606680000000000000
          Height = 311.433070866142000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo65: TfrxMemoView
          Left = 1.889763780000000000
          Top = 610.637868500000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Valor das vendas do dia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 1.889763780000000000
          Top = 630.291411810001000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Valor das vendas do m'#195#170's')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 1.889763780000000000
          Top = 649.944955120000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Para uso do revendedor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 377.952755910000000000
          Top = 590.984325200000000000
          Width = 167.433156300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Vendas no dia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 377.952755910000000000
          Top = 610.637868500000000000
          Width = 167.433156300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Estoque escritural')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 377.952755910000000000
          Top = 630.291411810001000000
          Width = 167.433156300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Estoque de fechamento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line35: TfrxLineView
          Left = 280.440944880000000000
          Top = 610.259915750000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo71: TfrxMemoView
          Left = 377.953000000000000000
          Top = 649.944955120000000000
          Width = 167.433156300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '(-) Perdas / (+) Sobras')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line36: TfrxLineView
          Left = 374.173228350000000000
          Top = 669.220545670000000000
          Width = 305.763779530000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line37: TfrxLineView
          Align = baWidth
          Top = 902.748610000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line38: TfrxLineView
          Align = baWidth
          Top = 922.401657800000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line39: TfrxLineView
          Align = baWidth
          Top = 942.055201100000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line40: TfrxLineView
          Top = 741.787880000000000000
          Width = 374.173228350000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo72: TfrxMemoView
          Left = 1.889763780000000000
          Top = 742.165427560000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Observa'#195#167#195#181'es')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line41: TfrxLineView
          Left = 374.173470000000000000
          Top = 772.024120000000000000
          Width = 305.763779530000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo73: TfrxMemoView
          Left = 377.953000000000000000
          Top = 669.598498430000000000
          Width = 182.551276300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Destinado a fiscaliza'#195#167#195#163'o (ANP)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 377.953000000000000000
          Top = 772.401640710000000000
          Width = 167.433156300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Outros '#195#179'rg'#195#163'os fiscais')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Align = baWidth
          Top = 902.748610000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Concilia'#195#167#195#163'o dos estoques (fechamento f'#195#173'sico)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line42: TfrxLineView
          Left = 551.370078740000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo76: TfrxMemoView
          Left = 553.819266220000000000
          Top = 922.779610550000000000
          Width = 122.078796300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Estoque fechamento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line43: TfrxLineView
          Left = 77.795280470000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line44: TfrxLineView
          Left = 154.921264720000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line45: TfrxLineView
          Left = 234.267718980000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line46: TfrxLineView
          Left = 315.173233230000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line47: TfrxLineView
          Left = 391.740157480000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line48: TfrxLineView
          Left = 470.866141730000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo77: TfrxMemoView
          Left = 1.559060000000000000
          Top = 922.779610550000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 51.362246220000000000
          Top = 922.779610550000000000
          Width = 24.566914490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'TAN_NUM_FIS'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[FrxDBMaster."TAN_NUM_FIS"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line49: TfrxLineView
          Align = baWidth
          Top = 961.708744410000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo91: TfrxMemoView
          Left = 1.779530000000000000
          Top = 942.323440000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'ESTOQUE_FECHAMENTO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."ESTOQUE_FECHAMENTO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 555.701146220000000000
          Top = 942.323440000000000000
          Width = 119.811062680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'ENC_FCT'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."ENC_FCT"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line50: TfrxLineView
          Align = baWidth
          Top = 981.362287720000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo99: TfrxMemoView
          Align = baWidth
          Top = 961.708744410000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              '(*) Aten'#195#167#195#163'o - Se o resultado for negativo, pode estar havendo ' +
              'vazamento de produto para o meio-ambiente')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line51: TfrxLineView
          Align = baRight
          Left = 680.315400000000000000
          Top = 107.338582680000000000
          Height = 873.826771653543000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Top = 107.338582680000000000
          Height = 873.826771653543000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo100: TfrxMemoView
          Left = 566.929500000000000000
          Top = 590.984325200000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'FECHAMENTO_VENDIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."FECHAMENTO_VENDIDO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 566.929500000000000000
          Top = 610.637868500000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'ESTOQUE_ESCRITURAL'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."ESTOQUE_ESCRITURAL"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 566.929500000000000000
          Top = 630.291411810000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'ESTOQUE_FECHAMENTO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."ESTOQUE_FECHAMENTO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 566.929500000000000000
          Top = 649.944955120000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'PERDA_SOBRAS'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."PERDA_SOBRAS"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 283.464750000000000000
          Top = 610.637868500000000000
          Width = 85.795292680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'VALOR_VENDAS_DIA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."VALOR_VENDAS_DIA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 107.488250000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 1.889763780000000000
          Top = 110.488250000000000000
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Livro de Movimenta'#195#167#195#163'o de Combust'#195#173'veis (LMC)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 133.504020000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Left = 561.259842520000000000
          Top = 107.582696690000000000
          Height = 25.322834650000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo3: TfrxMemoView
          Left = 565.039370080000000000
          Top = 110.606318740000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Folha n'#194#186)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line6: TfrxLineView
          Align = baWidth
          Top = 102.488250000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 4.779530000000000000
          Width = 226.771800000000000000
          Height = 90.708720000000000000
          ShowHint = False
          DataField = 'LOGOMARCA'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000008000
            0000800806000000C33E61CB0000000467414D410000AFC837058AE900000019
            74455874536F6674776172650041646F626520496D616765526561647971C965
            3C00003D00494441547801ED9D09989C5595F74F55D7D27B77D29DB593743620
            8490B066218110089BA8802030EA8CFACC378B8A8CF33D33E3378FE38C228A80
            C82A0A2A26EC8228FBBE0B080821241042F64E7ADFF7AAAEA5EBFBFDDFEAAA54
            77572F95C4899AEEE7DEBAF79E7BEEF2DE73EEB9E79E7BDFB75DB158CCC6FE0E
            DD11708D31C0A14B7C3DF9180368140E613FC6008730F1F5E8630CA0513884FD
            18031CC2C4D7A38F318046E110F6630C7008135F8F3EC6001A8543D88F31C021
            4C7C3DFA180368140E613FC6008730F1F5E8630CA0513884FD18031CC2C4D7A3
            8F318046E110F6630C7008135F8F3EC6001A8543D88F31C0214C7C3DFA180368
            140E613FC6008730F1F5E8630CA0513884FD18031CC2C4D7A3EF3703B8FEE715
            D593F447974F4FC63389B84076E947A1B94C71250787E409874C5C1F1E3012EE
            7E7097B981E11C1C77A24E0071BCBDF90E1E0DE14C7989B4E22F6DAB3D3666B1
            2FD2420EF91F13FEEEEC7953760A479EEA68A7AF2E126E9054CEC94BA4153A7D
            8BE3294F782E107194377C3C8FE2F138F8493C95777C1F4E4A5E1CC77846F280
            5F3AAF80DFD1BB7D6200D731E7EE6DE1BCFFD81B279629034C7FE8EB4EE7293A
            6AE7D2288D1A7BDF112BCFBBFABA96EE9EAF87A331AF9A84F8F4D57A2DD67B4F
            5EDB9EEBE7BEF3CBF7CA2FFF05041301FA884873228AF04564C54564F5D989F7
            117220F1E3F803EB80A80EFE5E783F3CF29C34CC9DA8FB924B2EA507A373B1F5
            4FD89F0503A4EBAE062C1D7C2858A6F843D523F8EE4FFD70A2DF93F584CFE33E
            2118895A5D7B00C28BFC101A84493B5EB4893B5EB6AEF1B377070BA7FCDF13CF
            FFF24322B208EE1004C2282EA2108541F61252FD74838C031E276CBF32D4EF94
            03A830E92132A06419C19D3470C5E555F7C5175F420DA373079D01343865BFB9
            CC19DCD174590F381ABC549C4CCBAC3FFD8AC593F2FD4F64FB3CA51A6017EFCD
            D475062D188E9A37DC6533363E6879CD3B529BB0EE71336B828553BFB9ECC2BF
            BF4B8470880F86CA3B711E5470272D82417DA595E7C0942F38613CBD97618427
            D65318F7A4C073E27D6514D7732ABCE8B37F210CC03338D3A9ECC1CB18AAC14E
            0F34189A1E9209AE6A180AFF9D55DFB90C02FCB87C5CBED79305111860B96028
            6AA1EACD3679FDAFCDD3D3A92AD2FA60F18CA660F1B46FADB8E8FFDC266288C0
            F19047E581A58738B39FB8FA90C873E00E2C2E119270C1E8C0DE741FF1693D51
            37FD452AD05770E12BFB4CA60CB0ABFB25AACBCCCD5C76EDDE02FBA003D05746
            C47136E581AF397569409C489A9FEFFFE21F729B9A9BC397FFEBFF8BCCF22D8E
            A54119041AAEBE81C8EF9CF6DD7CFAF42B06F3A2F1397E1B97E743198C0F3630
            F36F7ADEBC1B9F36D6FE8145D3A64345533B82E3665C7BEA25FFF43D95770828
            424221C5D537858E079EC421E2C0E80C6E2F614988E064D3AFBD4CE2A4FBF2A8
            1A496A76C145194A8083C200741AC7A39B4DEE63807423A981BA76ED5767F87C
            BEAB609745B5F5F52FAD5BB7FEC1DB7EB1661DF8DD33BD27F612F2E0AA4DB1E1
            BDEA1B88F1EE69DF3DC662B1875C6EF76CD5323ED767E373FDD4C940477B2CFB
            8DBB2CAB7AD3C062C3A7D1F09A8FB9D0BAA61DBF9E3AAFBC70C1E48734F3E304
            EB9BAD6468E6C761B445C42D181ED78FF8EAB79347AB6204C54107275E2E8E1F
            8F9F77E1C5608DCE393AC0FF3603A8E3EAB0E3494CBCFF2BFD7AAB8715E067BF
            FD66567777E02C9FDF777D9688E37279F41EE3EECAAACD1F7CB869CD0B2FBE7C
            FF479BB756C30461E10FF4897A06C253D3EB4EBFE21FD1826F82F87EBA0243BA
            AC34CF6F45395EF3B4569AFFD53BCCD5DD925AC4890F5777CCE3B3C613BE603D
            93E6C14448119588C536B92D76D5450B27DF2DE2C5676B0A23301822ACFAA03C
            C51D3CE06ACB89538FE00E0EF0388CFA13713204FBD467FE8C19803E32C8CC65
            1E460F466013EEFB6767A0144FF81BEEFBC604E25FCFC9CEFE36615A57595DBD
            61FDFA8D37FCE467BF7814843618214238AC4BB4C9ACCF277E1BFDF91C4348FB
            EA133106B3AC28C70A76FDC17CEB1E36EB8D0E5B5F6A26F55924A7D81A977ED9
            2285539D3A45106A75E2CA6709D9461357B9B3B2D65E7C546954F9712F2CCD60
            F93863D0376638711A49E250381E078F918CE31027827396874F66CE002F5BA6
            7F33975DB3B7C82875007590FED36D065B096A50507AEF3F13DBEB6E79E0DF96
            81F15F3E9FF7137BA1E963816030505D53F3F6E6CD5B6EBDE5A73F7F16AC8E72
            CF0949AA39830E30D5AD5BFDBDF9CCFA875D6ED7611A76F52111BA63BD76D847
            BF315FE586D422C978BAFA1299EE09E5D6B9FCEFADD39D67515EB917AEF3BC34
            808309E2C4141CCEDAED8ED9557E9FF78E0B8E1C178ACFFA38214560E16BB627
            E02A2378C2ABBF89B8F01C7C3A22D8272EC85802BC6C99FE65CA00EAA0331834
            A48721E86304B3F1F7FC9392F6A33BBF9E8FB8FFB2D7E3F9178FC733C7018EF2
            A7AEBEBE66C7CE8AC7367FBC65CD03BFF9DDFB140BC2088E7E403CE9DE3BE3CA
            2F41FC9F39221FA8D32F7ED4377FA0D9CADF5963BEEE26726041E04E64841F3D
            4F56F922CB5EF565338FD79ABAC3D61A8C4270EAE029558D4324EA11AED21372
            BD363EC763596EEBE808846F0E5BD65567CD29EC549EDBD5C708E02B1E87C13C
            0E3C5EA7E0710F2B089EC475D939E77F96D4E89CA3035474BF6C99FE95672001
            F400F491A1A0151289385107567CF73F1AB3FE48D6F9FF86F0E7BADDEE02301D
            17652EF7329BBC1E957240C3FEB4B4B456BFB761E3CFAFB9EEC69F83583F23EB
            F830A1AD3FE34ACCB8AE5BA9E54B0E11003AEDF303CC8AEA365AD9C687CC1575
            D0C94DEF5476608E67FE4ACB3EE9B3E6726521B2CDDA207E7D7708710CD198C2
            59B4214E54589CED71089FE375830BF1A84C84E411BB7A22BD7786C3A1EF9E3A
            B7A48E62D4274690A71E3A1987F5C549AB2F2A2BB8C244FAACF332668057E846
            66AE7CD9D57B0B0CB304B8C0E2F91D42EB899C740A4C79F79EB7FD42887E15C4
            9FAB2C7CD235B7F55A4D53D48AF2DD36719CDB7C5ED590CC4E1B41518C353434
            6EFF78EBB6DB7FFEAB5FDDBDE5A89BC6C7FCE37FC300CDC3AB1BF487C1A72A17
            227FCAA6476DDC9EB7D3D625FCB41902A2E9FB965D64FE05AB92F569A6073018
            D5778521B0590933BDC09F65E148CC14AABE60A4D72ADB43A43D3631CF63391E
            F602EA8B0623663D3D91E86F43E1C87FAC9A535CA9FA1CE2D25E22EEA4C1DD4B
            F8BD4C423576E69F0B03A833F493C1A1F7449C743CEAC0EE3C7773B1D7EBFD16
            FE5F18182F59835C454DC4D66D0A5B77B0D7664CF1D89CE91E2B2D769B240255
            0EC24F05B4B5B577DEF9C748C53D5BCBE69ACBED77D1AACA24424FB8DBCADFBC
            CDFC9DF5C962F423191F2AE2E078FD967DFA3F9877C602663A629987135CC451
            B9EE70AFB50422D6138D59BECF6D13D85AB6F5446C1C62BFA3276A6D3DBD0E23
            16FB3D36A5C06B5EC7E81427A4FA481DE19E70F4895024FA8D55B38B2A464B7C
            E1ADFEF445141F9D8B2F01815746879D8255BE747809E002B7EF4178500D3983
            D407FBED257B5CA150683103762DC43F19F0904E33A7AEB9D7B65544ACB6316A
            D990716659964D9FE4B1718588514D8334A5196BBBEE35BF3DB2C943FB6A9B3E
            D0297E9D746ECB2E9BFEC73BCC1D099126234D1DA920FA9A4CBAF28A2DF79CCB
            2CAB64FA20E2EB9999CF16E98DD9CED61EEA8EB72DC6501DE3B3B3AC331CEBA7
            242E9890E3480BE5C7F160843E66C53E110945634FC308FFB66A76E1C722B01E
            398947834E9CDE39793CCA699FCA98015EA57866AE7CE90FF71618B0042C2C9F
            EE3CB810F450F489C7612088DC73DEB609C02FF579BDDFCCCACA2A233EA2632C
            FDB3ABD776D745ADA23262AD9DBD568214387CA6D7A69466590E4C915AC99E36
            97FDBFA7FCB6BD1952304034EBF427DE9798956C7BC94A3F7E069872524BF68F
            0BBF3F04C28C2F8B13BFA0C4792667F06943A1BCC36014EAC0745CDB1576DA70
            93565DA0C130B4294742F039E3FC968B3EA07C9597571C149882DA88F0140C5E
            2C8A8EF02213E23F56CDCA5F2FBC04C141717005A35A5BF5C90C196077E055BA
            98999B310C032C9A39DDA92CF120EAA03A76FFF9DB4F607DFE77BFDF7F017969
            45BE5370881F0EE5AC1DE2EFA88AD8F63DBD168964C100513B6CA6C7268DCF72
            9685177664D9152FF8AC27A2C19367EC2095DA77A3E04D7BFB9796DBBC738816
            C015E210B99EE94759EE99FF6C6E5F36848519C0131154445E840AF7C6AC1D11
            DF1A8C8043FBE0F0ACC4A99B7E78A0923C2A814D43F48F4322281F304404878A
            345E897A5527A0781E48E4C5581A5E6185F9CF55E5796F02228F76C870E2B4B7
            F26032803A1B9700748ACED02FE7E1EF3B6FDBDFA1E4FD277E1EE07D76D1A8CB
            BA022E6B6C33AB6E085945550F52D26CC6548FBDD8906F4F6EF73AEDA975F525
            11FABA1BADFCF737993B1C4CDBB688903603A0F27C287A39CB2F4195C80262C6
            929D1C78686EDAA94451F5EB3A435C16A0551E5CE5089278DA054CC8F5583E4A
            A19B5A34F393840631155FC4DC9B863100A88C9EC92943F960B8F77518E13BA7
            CDCC7D9E6CA40B78209C72EE85E48ECE393AC0EEC0EF47879D823563E9557B53
            2C01B4EBA479748B33009D01B2F69C4DF9B9B9B95743F82FF140B980F6D9F584
            DDD613CA72089E9713B12033AD06BDE08FDBA276F7F67C6B0CA7277E61D53A9B
            BCEEBEB4EDD2A7B470019D3C34FD9C1597A0E99FE62874ED28173132C767A3B8
            B135ADE9085914452F8B0DBD9840CFAFB150D938C18088B8CC7EC1BDE015F9DD
            3635DF9B640C112F153F91A618388C23001C352075A80407C3997901AA1CBB8E
            F7C391DEEFAC9E95FF30205BF189FF6506709DFF1F0C090FCAAF7AB9081DE091
            4BABBCDDDDDDC77188732BC43F4E59FBE3BB831EB6522ECBCA8A59AE3F6A6ECC
            68AAEFE51D6EFB9FE77D1644E41B23A34123204A7FD8E24D5EFF8015EC7947A8
            FDBC06AE1F202591CCCB82C8ABBE6CB1F2E3ADBE2BAE2C3A75F390920034420C
            0201C4118FEFD1553E9176427E529941DBBEB9ACFD80E304A6A49B8E27CA6986
            3B69FAE4228203636FDDAA0B0065810987B24D815E63E7F18ECF1DFBFE0F2FFF
            E2C38047E59212E09C8BEF1955817448DFBBF27FFA818F98B27E3A33E2A2ECEC
            ECEFB0BF2FEC9799920885E9394FE2F3223B53E08A067A388E75614C71F36041
            BF40287B51EC00715C449FDDF286D7EEDB80964F6E62F020BBE8629E509795FD
            FE66F3763690DBDF09B73F646F2A91D79B5D685DA7FC83854B6639F5B9E8A743
            08A8E6F45A2111C1893AC420092E1022FC02EB630ECA0A47752B2C652B38359F
            7E9300153C9705593FF2BCD80B584FB2912C823B7564C5EB10D155DEE903DD4D
            C4832813E15E9775847AADBCD0631F37472C108EBC6D31FBEE9BB7FEF793A08E
            E85C7B02AFD9D917DF3D22E25008A90CB060FA07CB19856F708833A22AAA59DD
            15745B7E4ED4216EA2FEB62EBF6DAD9E8AA8775934DC8CA1A4D9CA2686AC18A5
            C9E3C9B2DA4EB4FCA73DF6617D164D31408901EE0BB39B77D9D4D77E62AE0107
            391AB4441B03C3D4BC68F154EB58F9158BE58D7788E31043C42222A210A5DDC4
            EC0322384082389C0850E2F42D0DDC87F8983DCE670A8527C5517166B0E5C304
            38740DEAA71E49838ECE80D5B7B4E3DBACAEA9D5EA5BDB6DF9D187DB11B3CB4D
            CB094D30FBCD76B645E2FA070FA7E789F546398A8E5DF9DACDDF7E08D090EE80
            31C0C2F24DFFC48CBF9CBDFDFC215B4BC99042D7DD938591270B9B78CC0AF3C2
            1608F9FA882F9EDF8BDCDB1BB22C6BB4BAAE0EBBFA4DB7056268E2ACA71A400D
            403C8CD9B82D2FDAB80F1FDF5BB02FA601E98B0E0A52F3C253E65BF7C9FFC002
            EB8780AAB58F88104378EA95C2BD6DC6F38784AB5C1F633AE5685D449D57E2EF
            5BC3CDD12DE2B3DE654DAD6DD608B11B2072430B04271E0A8529D5DF5D7ACEA9
            36BF6CBC615260BB1B7142D59FAE1F30C2264A5FF5CA8DDF4A3BCB6180D79100
            7781B36FEEBEDB3F95979F977703FBFA8B61802145FE50B56307B78E6E8F3575
            64E34B41D363100CE19A3A02F6C6AE667BA7B6DB1AA328535E968B58D426BDF9
            4BCBA9FD6850290DCC20208081F0D0ECA51658FA79665F9F78EE239E2376A138
            C9385310116B001A2C2100AAF7AA9BA8484F99FE4C02DFDAFC5218983EA86E31
            04553A780DAD1DF6FAFB9B6D47652DB9E91D8765F6EF5FF8A4E93C614303DB4D
            D006B5A796A9D4813BF95C668AF6BEBAE9ED97CEA97DE3D96E4049E7DA138401
            3E9B3903DC7BDBB9B9ACF347A3E8FD12E2CFA7319A4CD69B51A45D62BF0AB1EF
            6C66465FB4A2A1C3D655D45AC5EF6EB44873ADB935A229C5E9534A6A6F74203C
            78EC79165A700EC3D6472C9E244164E1A612732FC1C048C11B04A710183049BC
            4E5021328A2C1C7224128095803C61D02F709B8328B70A03512441BB7DBC658B
            35343490D9DF4D9A506AA79C741267092EEC1D318BC4A883CAF9A5FEFE6D0106
            460E119C7DBCEE8DBF796ACD4D8F1C3563462051ABAB32F8073BEBB36B13E951
            850FADB9B0DC6576715E5EFE0F29C023F1BB8FAEB5D367DBABA7A0B7EC5735F6
            F17B6FD9A6B77F6F3B3E78D77A235220D3D7278226BA1A43D30F2EFF9245669E
            C040B1CD8205A00171060D24E12A1D37C800E3A1F9253F3ED0E2B7D434D9E4C5
            D7EF7470117D5AA1D78AD90A3A0C4301E1C568ABA62B8A1149670440FAE0FE50
            BBBDBDF123DB5DDB0846DCCD3BFC303BF1E8F936B338CBB63647D5117AED044E
            DB1475C27E7D03633D63F3D26FD65C69C1CE3BA869374C4061CA65CA000FDF75
            F1A966F6B59CEC9C8B08877461B6665DC12C4EF2E2622A1D6273BBDF76D64DEE
            47FCDE5EDEBB6044D849A42B3222AC271880D3DFB40FDF7CC52A36BF8F7E01F9
            44454A8AA0048E8BE5145A60D5D72C3661963360898113AA8B0153984A24A555
            5E78E9E06237271F0427A41585A984284391CDF7B92C9B7540F5D133961C8840
            A2A93BEA9C1374A3D9AB7D955B34D1679C05D8C7558DF687F737596D43B39D7A
            D2625B3E6F9A6D6B893AFD169EF0A9825EC7EB8AC781D217190D5E7EE6615BFF
            FBE7B65A67F31A337B02FF110C1022B48C24C0A3F75C7A19757EC5E7F38FA8E8
            89019ADABCE6F3F45A1E9ABECF17733AA846B5EE37B4665B65E3A441C4EFE8EC
            C6F6DF6D79B939969DED33944A87882A97A9EF6869B68D6FBEEC4886C6EA0A96
            080D39F7710A265AF0AC6F98E54F7006D1C543315CC491022448120742845FE2
            69E07D78E998816271F14E24515ECC206D5F3D98CE962D1F29403675BBC08570
            3C5C2F7E0B5B398DCFC4DC2C9B5A9065156D514E145DA6EDDEF6AA7A2B282CB2
            6C9F8F02D44C05FC5287928A29C433D274CFA291883DF1E09DB11DEBDF7CCF02
            EDAF52FD5BF8D7F03530405C025405DFB4333FBBC686FA7BF6C12FB93BBB3A0B
            39C0B999B5FE9359599EE2A17053E14C620B85D8A306D8DF220D0A7279909C5E
            C7A0D3D8E6B7EAE689FD88AFB251F6C3F58DCD5653DF80850DC6C9CDB6A2C242
            2BC8CFE524D0671895182C9E5AC819FA86EA4ADBF0C68BF6FED69DD6B6E4EFCC
            9D5BC4EC831C54C7AFA354657336AFC10FB11F57F5594C2F5E0B6380195CF0F8
            259E8619FA063CCE0CC282085000A71CFA6C96C7B1702E33BF30DBCDFAAD16FB
            084FBD3C36382E6B400AB487781391C6757238BD30BED5E58A81B3C7D7394219
            4C213B487D77DF7201AE988B6AE81B6D13C1597757A73D72EF2F7AEBB66C7CDD
            7ABADE00ED8FF875F82A88EFCC7EE2E61A8E01EEF9E9B939FC2DCEF6FB6F87F0
            B369C8A34299FA20B7DEDABAB21C8608F77AACB56BC220E227EA0CC3B5DD81A0
            B57774596B7BBB05823D580019B4BC7C2B2ECC772403F7051D66D08326CA6512
            6EAF6BB30DEC223677442D9CE5B77C24CDB4A26C51CD51434538314217A77A52
            CE24BBD4969B0C5C7CA06990F1807014139941509AC0C987770425CEC5909C2C
            2BE6E047842ECE711BAB1CCCC76E13A42DCD61F3C318C530463E4CB2B33562A5
            E0E7B1540826E26F6D8DDA4C98C1879188FB24B60BA990DA56A24DA76FB4DA54
            5F638FDC737B4F7BE58E972C1C14E135F3D7D3E57A88DF6F5F0903BC8504F815
            79FDDD43775C389D6DDD1750F47E404E0CAF7608327751AC55C11E97D522F65B
            BB4AA9C08D1FDE491AF484421608F4585B4707CCD0C160326B18B4C2FC7C2B2A
            28B01C5EE21033709D6CF8CA86C88D42898F6BDAACAA33C296D2631E5FB66579
            3C71A2329A512481EEF7C95227420072FAA081483203039E8493E1CC6DC25402
            415F73C55C30819BE5CC85E126461B2EA4828BFB83315B30C1EBF450333C512F
            4D23117A4D12617EA9E69D4BCBB97DC40D29A73D4A386DA8AD441F082BB66FB6
            C7EFBFA323D458FD0C9634CD7811FF03D09B20BE23F689275D5A0678E4AE4B56
            8171794E76EEF984FBE5A40B7463F1EB0A7A79C912B11F1B99F8A90D72846C61
            46BF1B49104032B4B677380C11E1C260415EAE958E2B6689C833BF1FDB3D9732
            076E0553EB1A2E1E0C456C4743A7EDE9E4C68EF9CCEFF39BDBA19C59031ABACE
            F813C441D0C208CC7C28E1A2D211E17D78A904838FA9C3654C6A9B59ECB5B831
            C84CCB4F35C7DE081F87498E86F8628C0853700B5ABFF404A71EDAA55A484E6F
            E884601BDFF983BDF0C87D75B1B686A7B982FE3E286FE237E3DB20BE8A12EDEF
            5CD53D6FDB1917DD91843E7EEFE7BFC103FDA3D7EB3B32091C1091781461F5B6
            8B87039A01D94E523812FD3DE801414EEA6A5A3227BE53113F2188A38311ADC9
            DC97E3543064DCF8B2662C675D818079B2D86D2011C615155A5E5E8EF9BDBCD8
            81D9588342F18C5D0752677B439755B35B0E7BFCD61DCBB28680D65C88AE2167
            C0192308B837ADB620850373F268D581813B1C5C8C30392FCB9A83BDAA8C592E
            6CA25057FCB7B0D4EB58FAB6417C4D5FA7CE44DD4E18C77DEDF9C7ED8F2F3CB9
            134DFF19CC3E09E26F03A50BE2C33EC4D238870180BBDA3BDAA666FBB37FC45A
            7F36CA5E31B0219DC4533B6BBA66761E8A9D143C3D48A280CCBC9D81F84C0F47
            3DB6A7096D3FC399AFBA12B35F0FED95915CC03E1F4502F484301F43ACB854E8
            7418C3EFF33ACB43716181E5A244FA60867DDD52AAA986F66EDBD114B477397A
            8EC00C1EEA537F1C0F821342E474A21F1A3AB3986C1803C212E197785C91A438
            770B1CA0D8CA812B7F367BFC1E06390FA5543B87EDACF9D21F9CB628E4844E31
            CE4B22617BFAB7F7D8D6756F6CB4EEB617C97E0FFF367E97990587233EF90603
            FCD1D71DE83ECBE7F5C99C3B83CAB5E0286F441F64767776F3E874468CE0F360
            998AB2C621F23DC4C3CCFC8AC6FD98F9616C088C22AFEA0ED9178749225187F8
            5D5D016B6189E8E8ECE230296639D9BCE88954282C608960EB2466D8D725421D
            D85A8385AEA5C776B3B361CD41F224CCC6225B7C26D25D1449D28C09630961E3
            706869659C02FAB9D9ACB3FC2EB4FD46A48A443BD871E25378D1040FD63D2D3B
            BD569AEBB66DAD481E1A77EA529DD4089A7ED1F43BEC91FB7ED15BBBE5833731
            F0BC0EDA3BF877F19510BE877044E7FAA8FEB9FCFCBCFC77D8621D0E364DF09B
            81D352A0533D1DEF4ACE6471569F97DD6BA1881723CFBECE7CD6427603B01676
            80AC51F74646A410E5823D21DEB8E88E3343571784CAB282BC3C1B575460F95A
            22600631950675D495A7207249D3B6D476D8564EE06A6072AF5FFA429FF228D2
            308AAA3B41288522BE089A20366C813127CC895E9605E002D9F66714F0C42077
            70CA231DA096BB904E3DB40D5835C71985584B53BDFDF6CE9FA1E96F4F68FA9A
            F5EB4195A69FDCE6911ED6B98E5C5DEA2E2D193FF7F2AF5CF69393962C3D1DCD
            9FEE0F5B266D66002DBFB2C16B22BED6E49AD67D9BF931B8485B410DD440B19F
            B6E12180CE12110E5B3018B296B60E7CBB757607E25281E5617C71A1E5E6649B
            7611EAEF10D58C08EEA4FECD755DB6A323666D288F1E298F2847229C16418770
            FC14B1AD2B2F8ADF5AD272C9CD70F3114120B0256477C3A8EB9941B5ED2DBD16
            E0A691EA009C24BAF204ABDAB5DD1EBBEF975D81BADD4FF769FA52F63EA4B38D
            CC7CA90A4447E7C4006AA3D0E7F32C5A7AE2922F9C73C659E72D3EE1C4896A68
            7455F4C7AA6BF69B88CF2AD73FA32FA5ED9D3478248EB325EA0327831EC43EF3
            20A3999F2C9C26023F7181943BFA48852EF485668E599BDBDAAC07E6282AC8E7
            3D83628C4DF98EA1C9E7651643BC34D58C0AD4C849E5D686A0EDE87259C4CB96
            5227951059633915454F1280240485E0D49820A803635603B20FB4CD23A23222
            8C1312C139E536BDF7B63DFFC87D8DD196BA67787955EBFD1F40FF083FA4A64F
            DE90CE55DBF3AE9D7ED1CFAD37F09B1CB0661C73F4D1672C5F76D2DF2C39FEC4
            63A74E999A8342087874AEA3DB673BEA879FF9BA3B17615B1771B41A5EA74383
            F76A816400A4E16B504488D1B5981996F405B521E3523B26E766CEDD3BBBBB69
            D9AC106628415FC8CFC704EDC7048D3D40839F590B7BB1F73476D9F6D69055F5
            C054FE1C5B3889236028AD3AE39281F90E55133B065D0CD17A8FEE17571CC903
            03A26BB120465A9AFEDB2F3E5981A6FF2C4A8EC4FD5BB4B815DFC1CC17AF13CD
            CC251940C560022DB8E388CF3B76D1C24F7EF1737FFB778B162C9C427A4427E2
            EFACCF6CCD17138451E07A796A1965B42EE7B09F1FB1B10380A0F67A900AB22F
            B4B67762686AB72086279DB7176B4BC932A15D841F7D41379118FF7D6A55C6A4
            EA962EE76DA01E7611D93939712B26152688AFAB5D3BDBE3876062104D02489E
            247E2FB79B9E7CE86EDBFAEEEBD2F45FA22322BED6FC9DC403FB4A7CCA9AAB36
            B4CE4EBFF076C51D0F138841B3494CC22F3CF7ECB3BF78D179179C39B37C561E
            E9B44EC4DF35C2CC4F5B10A0D67C89E3A86C9CCC4559C2C5083EB67D1A0C50FE
            A44E52414B52B0276CDA4534B38B68EFE834C1B48B188F54D02E22971D859F2D
            263AD23EF747D2A7AE0D33376723BD581DFDD9D916E3E6F1164EF612E6E67EC4
            27D113E8B647EFFF556FE5A677D1F4BB5235FDAA7FFDDA5783CF3EF6F83EF747
            056180F76080DB14EFE7FB1801E53967EE91471C79CE29CB4FBE64F1F1271C31
            69E2646F2A6247B7D72A1A8617FBA9F803E33D1879A0BB49EC33294C33460325
            E38F669E18410C31B0DC9F22AD5D842452A0A787B3886E0C4DEDD6D6D989AEA2
            B3883CDE482A342D116206498AFD61D06E94C79AB61EFBB0CD65214FAE799134
            622E68AEE160F6BBACADB9D11EBDF7762B0AEDAAEB6C6979A6A92DF478AF79DE
            EA8D796A217E4863B0DF0C50177ACF4EBB703003A872791841049F9095E53AFA
            C2F33EF3C5D5AB4E3F6776F9AC22943897667E85663E3B5FE166EAA5F0712A84
            D935BDE92184AE2082485C8B097C58F7F6C7A89349FF2401C488D217B48BD07D
            BDF6AE6EE728565261C278DE11E42C425281B170889649FDA9B8F5ED01DBD912
            B69A10E3E0CF653278ADB262873DF7DB35B66466CC8E9A5DDA3B654276AD1B62
            747636DEF5EC0B4F6D6A6A6E099E7DF19ADE03C000EB61809FA5F667509C76A5
            1BE492310D7FE237BE7AD9D74F5D79C1F17B9AA73269B56200CDC049EC6B7055
            C499F9D4A2F8505E625ACC107196094ED1501AB545DC9F1938545B03E1EA6B24
            CA756B666C57778F23159ADB5A39A50C6171945428B271C5581D59226468DA5F
            06DDDDD465EF6CDE690F3F72BF2D392CDB8E3EA2CC8E3F7AA61D316B328A6AAE
            5557577EF0E2AB2FFFF85777DF29D9DFECCEB928A36DDFC0E773D58546668044
            211841D260DC85177DEBB32B567EFE46C4A0182391DD2FD460B1B5E49DBDC128
            8ED807DBEF83E3093371521CC53C521C65D5F3A1AD7B60884CEAC814570C1840
            47900492340A6A89E0BA76135BCA760C4D5A3A8A38A1946DA108ABA37407492C
            89F44CDB4AE087423D5653BD8D17613AECF059D936B1A4A8DF58EEACD8F1FAFA
            0D1B6EB9F1A7B73C4399F67D6504577DE87D5B75E14FA96374EE473FFCCE4AAF
            CFFB141A6CCE7025B486CB62A635DD8F42E7CC74B64182AB9C931E61E60B6F28
            AFEDA44E09B54408474CA03AE9979207CCAB1D31AC879319113551B11850C7D5
            5D9C50B6B577996C0B5AD78527FB82968982BE2DA5274B26E344C9CCC368A487
            F71C9AAC38AFCB4A8A5C18B37CDC2988C65ADB5A9AF754573EB77DC78EBB5E7E
            ED953F6CFCF0C38C19212306B80EE263397B02D19B37DAC7100368C66AE6CA08
            A401CA63ED94B233DA3A46C253BDD2277873D63C18722459A43C8E546E34F99A
            F9EA732AF153CBC59788F859842C8D4D5CEDD6E15418835636F6049D508E2BE2
            220B56475DE5DADF252212462975B5584941C0C61578CCC747261A1AEA2AD76F
            DC70D70FAEBB5A33B90E69E02888A9FD1C2AEEAA0F6FB0559FB975A8FC24FCC7
            577F7765A6C44F1626A2F376CD5898C79CAD1E33CA99B14805B20F9813B339FA
            0286263181DA1001336D40840D72DAA865C68F857034E5252D229C4504D01774
            A3492F78E85693EAD2DD05298EC58579BC09E5774CD0FB2BADC2A116F37BDAAC
            B4B007FDC0676D6DADBB377CF0FECD575CFDFD3BE96F0B8C10261CD6B91A6080
            53476080EBAFD93FE24B846A70F800B3B3BD89CF58AE636104D28C954227620D
            DBD30C33D59E961BDE9C754AAA7EB533DA4117F1658C9134712AC8F047CF18C2
            DC2C43534B5BA7D537B7701ED1C98EC7CB259622D6F462CBD7C557A404BA14E3
            92610329E8315E848D849AB861D4CEC592D6605777FBC6CAAADD6B5EFBC36B8F
            BDF0CACB75A086618618E12007036CB4533FF393411909C00DD75CB15F335FA2
            59EBE550163ECD584907114C4A563696C0D11229D1C79142E909920AEA8766B4
            C30C6C29872A278695E2A7BE0C85E36C13B11C4AD48BD0BD10416B3D265AF6F4
            1CFA5050D28EFB948A3956C6CEEE20AF7EB5F1E2479BE9DE63BE6E341517C110
            85ACEB7C770866D89F83291AE2326DC862912673C7EA83D5551F3CB36EFD3BB7
            3CF1CC636F92D70D13F412F673C332C08DD7EE27F131F288B08999DFAFE50109
            E90AB2C6895012D97E760822D400B4FD4AAA2F5A86A42BA8229D41A89D548613
            F18597AECF620A590975A0D4C51902DF3A720E9A52A796B682320A48BFCDCBCD
            43D473AEC07947369753A413C8B2AF9D433D77FC3BB02B043047F7725F508A63
            E938B694E80BDA4568E9CA429F513FF7D54722018B86EA22B5D59B5EB8E1961F
            7DB32BD0B6D5ED3FA33BB53E5763F8035BF9995B52614EFCA61188AFD924A269
            109D02037E3490CAD7CCCF44E1D3604A2A8811B4E5D240680DD675B0014DEC57
            524AA9A493FAA959A79D8A666C989B4679DC124EAD5C84D7D5B3AAAA5AE7CC20
            356F34716D0773B833C08D2B73F17A502BA791921CAAD70FDC8B5938C05DEF0E
            B694528974E1B504DB427C4BC99BC46C75D5B7D1B435144E30D012DD5DB1E5A5
            175E7DE5FBEFBDFFE13A57D6940E70636919E0E61F7D6F44B1AFB5551A32F7CF
            B05CA18DB2D54BCC240DAC18241BDB7926C4A743FD9C1848D7BE442C0D801841
            DAF8FED4D9AF81BE8418AEB33B6462BA7C3EE926D12F29A46C11A9A9A5D5AA6B
            EA11DBFD268FB2FBF92C9615E90DBC1EEF9C2544B8AE1541CF511DFD1053125C
            BBB7491327B26CF87867226CCD2D1DD6C85D47592025314AB8B720C990CBCE29
            176691793CA5F83E457FFFFA1BD7DC75FF239AF5B530C08748809B9315DD725D
            9CF81073545B3DEDF57BB8BE12D51A88C81271348B730FE05ACE6121C4E14C1F
            D370620721E63A505241CF203D240786555C3A8306444B5018834CC5EE2A2E93
            A427BEB67593264C706E267BD92DC82C2C3D40D24B9752C22882BAA5D4C2ABDE
            1D9C2BA43283A38F7081243F37DF4AC6175A21EF3D68E288F8323BD737C5F505
            3168212FC74C292DC1EA18DF524A324A81563F33F11F6EFA2870E34FEF78A037
            E6D64EE12D575364939D72C14D4E1D3FB9EECA95D8B633DAE73B05F9D1B7F134
            5B3B5074725066345BB58E9275405D98ED9D248C08A6599ACDA0EF4F3B89FA44
            FC04438981C504927055B575D6D8D8C8193DABB7B83BE5690AB1FECD2A9FEE68
            F329E07E51115CF6813D5535EC02DA06E5698BC8F69A33065E50C9CFB30925C5
            A67A1DE907F36817D1DAD6C947B19AADB5A3C3B9DE5682E238093C6789E81B6B
            49C87E95A749D4D4D5D9F7AFB9BE36108CF05D5CF7AF40D99864805B7FBCEFC4
            A7A27E4E04EAE6834A127F397C50299799256EEF8774001262826E4CB49A35D9
            1844C40899CC0A31AD88AC72FA80D3C02E89A1775654B1856B6252C79C6C8978
            3D8BB4FB23E6CEE2AEA18E489CACB43FAAA3B2BACEF86717C97CBEA780C4C887
            213AF8366C20593716568711F272736DC6B4C9987EE3A672E925BAE718DF45B4
            3B3B09318696885296889271BC3EC75D472D115A22930DA544F8B2BA5DF5A39B
            DA2A6B1A9E8595D798D96BF87618E023FB60D78489CCFC8D70D1448007CC69ED
            1691B4B64A548A48FC37AE03567FA22211D2D941B0DE6A164BFA48BB97269EC0
            1918AA4C7720C45530F417D6EE81F94ACB16B00BF1CFBFAB511242F16229EB91
            B67CE3C68DB3D933A6C100D94E5EBA1FDD7390EE508D1449E4E7E6E4DA94C913
            D91DF8B918625C5EEDB2AA9A3A5E7E49D86C787B9883A589A5E36DFAD4C98962
            4E2869A1E524BE4404AC812542F717B4D4E471D164C2F8228EAC0BE853FCDD88
            548175EBED6B7BDE59FFE1AB54B416FF1CBE011F7335473EB2932FB8316BE151
            F38E3D76D151FF337FDEE1A7D3780E9907CC490C06318D6AFB156300451C896E
            CDA403D608156980247DE4B595D36CC8F1E9B3EC6E72F73AE54972C8EE20BF37
            A77F4C9753EB9B9A6D5745A563BD4CCD2DC82BB049932771A1D3C3818D0746E2
            CD24AC9B091C95ADAD6FB48ACAAA04089C6C2B83A8B96C0FB53B92D4913D41A6
            E39D157BD073C20EAE9B4B22BC816DA588F9B22993F896F0E00335493DDD60EA
            661BD982F9B9011DA38525C2CB9673F68CA9563E6542B2DCE34F3D1F79E8B167
            747FF06E1A78045F89774E116180CD30C00D2E00E3F10BF04B969C70CCD9272F
            5B7CECFC79738AB5850176C05C88235DCD2C29491EB73EF5CA3B79290377A01A
            4A4A9F54A980BEA0FAF5E68FB67D92144A0FE5C5B8DAABEFD855691DBC6D9B8A
            27EBDDE449136C0A1ABCF408298FCAD772A2FF38D6D0D402E3ECE14D9FF8D2A1
            57CDA64E99C8859202C43CAF82F93C4277BCC663D7EE4AE38C3F898F12CEC558
            9F95F0EADB9C993A857750D3FE88890298ADBBD0BFDA3BBA1D45B1048552B4DB
            F0E1C7B11B6EBDE3634E2C1FA4F0AFF15BF0714E23926000A2325F98E4590989
            19F823274F9CB0E2CCD34E3E0D8628C36A35980D41DA57270E56A7B544481268
            E0A488ED6B7DC395531B6A4B1F75D42E2217C5290FDD64B832893CE93132DC54
            ECA98609BA126027CC45ECCE9D399DB7960B9C349F7AE70396616B686CB1EADA
            6A960C2E7A21877564AD995C58C891AE5712C3EBE0277EC468F530CCCE8ADDBC
            4FE14C4C274B3681E2A2229B3B6B064CE37360C3FD48028A19B40C8AF8B50D8D
            76C50F6FACEEEA0E68D6DF4559DD250C10269DAB25F2B1ADB8E0FA24A02F22F6
            2C223E153F1785E7F8934F3AE1ECE54B4E3C72F6CC69C36B3D14C8D44947E842
            99D37647C4C9CD1E2CB633AD331D7E7B778F33C0620419B0B45515E3A5C34D85
            39CCCA1D80DD9535ACBBCDC92CBDAF28913B614209926082E9AA5813469E2DDB
            76C1087C3696C92FE696949834B1D451EAF273D213B296EF2288C97A6827D900
            11198A66974F331D24911CB5D3B5B6EF5D734B6B65558DEE0BACA5E0EBF8767C
            3F3714032490B478E6909072388BF0A805F30F3FFDE4A5272C3DFE980513FD7E
            DE760078A09CB63EDDC13077F623CE37017211937EFCFED6AF99A1355FF52466
            7E0033B5248366B80C3FD215B4AD144E3AAF592A2D7C4745653F6BA00B641967
            8A0AF4626A36DA7E33AFA9F50045D766F64F2C29B52266311F74E1A519443FF6
            11319DCA39487D3FB50D4DB6637725CA60A40F120F8477E4E1733266809B6EBB
            33F8C7751B5EA596B5F8E7F08D785892DF14E76A896EB115E7FF3805346454AC
            3B8EDCE9F82338E75E72FAA9279DB16CF171B3279596280FF081712298143911
            89B58B1334FEB386CFCBE54CD73E3520E28BB9F4210868D2AF0EC1B515D41ACE
            2EC8C408D20F14EF8748424C20FB7F655D23846EC072172796B686EA9946574B
            0CA88E9B8C818865947764DC5694EB87B1A3A6BEC88A2A2610338AE954AF7422
            D9FE6500D2AEA011EBA39E5D151D366BA64D9D58C289A15AB111FF1E7DEA85C8
            030F3FB90EC4BBF18FE22BF151FC20970903240A6711C9C76B8F329B70D1B213
            8F396BE5F225C71C3DFFF062D207D44999D3A0E93EA0B69239FEA1B76DE91A96
            FD3F84F148A237317C7A29A4070B9F0C3039FE6C44B31E89CFAEB15311D38920
            DA416889D07A9A5AAFF264246A6E6BB75A18411FAF102C1547713EA16733CA26
            3B4A9FEA11A10597D792D285A493F22746D38E40CF25C52F51978E931B5B5B79
            B5ADC7595ED8A6ABE888FEBD8D1FC5AEFFC91D1FC3500F802CBF85308C4FEB5C
            ADD1ADB6FCFCEBD2668E00D478A62A8DF3A74D9DBCE28C5397AF5A7AE2B1655C
            80D0A88E50C5E8B335681A301998348B355373071CDA0CAC4D225E8A5901785A
            8B952F256947459555D73740780F1FB0CA8148B98E2227BBBB0822A613234832
            8870224EAA822A22094F469EDD35B556535BCF75F65E559FF4CACFC9C9B3D9E5
            53AD94770B944E66A644A4FF74A3C18BC175AD4D463399A085926847F1D1786D
            3BBFFD83EBABFA94BEBB29B31EDF4FE923DDCFED33035C76F9379215DD72D30D
            1E1209A5F1B06CBFFFF855272F397BF9D2E3E7CD299F9E4BDE01751AB4CE9E10
            8A568475D587E7831003B69212E9921C12BDA983DFC4CCDDB2ADC2023DC1A448
            55BEC4AF872F8C48AB974125D161319166ABEAD34C4E886DE5EB4C7FC7EE6AAB
            6F6A52B29FD7D2A2192D669DCA567146D924E765D47E48290987C191406A4F84
            979D448633F52B056DC8A8FAF29DAB6F6EC1E4FC2C486BCCEC0D7C3B7E580703
            6C4302FC6858A47499A90C90C88711DCC44570298D33CD6C01CBC2E9A79DBC6C
            D9710B8F2C3DD04AA30C3A9D019446143ACD7011476BABD658CDE05C960BCD60
            FA9174D2B6B7EFACE482465C514B661041AFB145471EE628A024FB3911B42B08
            D3D19688E27245ADA6A6816FF73526F1607C244114C60C3B7B6AF549CC25AF57
            CCA64C2AB1C9EC1874349C2C9426A2FE8B79C5745AF61C65D83BFCC5D2EB7FBA
            26F0D6BB1B7E4F756BF1CFE1D531A925448776AEB6E8363BE9FC1F0D8D31444E
            3A06484585197CA4C7E3A7E1E78D2B2E5C72E6A92B56AF5876FC9C8925E3BDC0
            0E984B288D1A34114AEBFE84E25C3E1523C1D4BF995D9CE9EFDA53C5CD99C13A
            91F6EA73679461A21D5C2E518BDA6AE3C5D29D6C096B59464464E909799878E7
            62B0D1B7022AC86B6E6EE6E66EFF65417B737DD3680EDB3ABD9A9EA873A850D4
            4B2C7B5A224A8B72D32AC20F3DFE2C4ADF5309A5EF11EAABC20F7E408003DD9F
            8C01120DC10859C40BF009A571E1498B8F3D6BD58AA5C72C3AEA4FA434A26025
            670FDB2EADA92E3A20D1BA0383CE2E7CAAB64E96E3E61F3E9BFF4334BCB6AD75
            7F0FB6FB5D9532F418333E862EE13559F9268C1F87F4C8E2A2A6D96E0E80AA6B
            1BB0ECED6502ED16D46E3ECCB268FE61CE3530A7E151FC88B1C5680351D76DF8
            2876EDCDBFD88CD297B0F46D05278C1F958301B62301AE1D15722AD248122015
            577118413490D2584A7A06FEC899D3CB4E5EBD72D9A9CB171F77E02D8D4C55AD
            A712DBECC84D623417234C63739B6DD9B99BCFD40FD68DCACBA6D8ECE9539D23
            57FA37C8C9BE5F55D760DB76EDE16C209EEDF7FA6C3ADABE6EF1E8BB823E5E52
            C9E6068F1447198576EEAEE1FF1C75C791537E75A43B174980B29CD44552B247
            15ADAAADB76F7DFF0694BE6ECDFABB28B41E1FC48FDAB9DA7A6180F3FEF40C90
            DA23984132564A631970298DC79D79EA49521A8F443CCAF004F8C039476964FD
            963297ED735B65B52C7A2D831AD039FC3147CEE1D0C63F284FBB871A8C355B76
            EC66D6F73AF93A48D289DD9449A51CE4F04F226130656829525B3A35D4B78BB5
            4BD09532E525BCF488499CF81D8E9957973B12F0D18652FAFEEBAA1B5BB04E3E
            4399B5F837F0EDF88C9CABBD77872D3BEF9A8C0A09395309A032033D8C90AA34
            CE227FC1A2A38E387DF529CBD8492E28E5868D0BD801730805EBE408B8962BDA
            55D5F57C84B22BF9FD6035A22B5DC7209AF5A108A5135E1A7A2DA7821F6FDF8D
            A52EEC80A59C496798367902D7BF8C1341BE8BCCB53827B3EF4727751DB4B77B
            4F2D26642E9560DCD7CEA02FDB61B4F987CDE45670510234EAF09A9B7F19786B
            DDC65729B016FF3CBE112FB58160F4EEA032406A3761064DBB71C0A6E38F185F
            5CB4E4ACD356AC3E79D9097398295E6007C4490F90F9B7967FBFB26D57A5239E
            4514ADAF22AAA4C04C968109DCD095F6AE4675A77FF3B6DD68F77DD295BD5D19
            842F9F3AC97AF95F269204DA7D0877A0D74EA5125D60F3F65D4809BE7A068294
            41298FDA35CC9B33C326958C073A7AF7E0A3CF44EEFFDD93EF52E26EFCA3F82A
            7C149FB18301762201AECEB8E0819000E91A8511B28017E027E367E317A2249C
            73CAD2E3171D73F4BCCCA70A150C7462025DA2E8E2EBA3DB7655B1956B4259E3
            F3ADCC5059000BF3F26D2A5B3611B993ABDB1F6CD9C517CCF79E044E622B376B
            FA14A407FFB18432DA7E0E6C239196DEB0059DA11289239818420A1D47855C04
            F5DAE1EC1C664D9BA2AC51F977DFDF14FBFEF5B76D06F9813EBF95308CDF27F7
            67C70089A780115CC45395C6F933511A3FB1FAE455F0C2D482FC3C37F9FBE5B4
            AE77F26D416D0DEB1A9B9CB55D265837F714647AD5E99E5E00954F3434A1849B
            40D3501451FE246F0B58F7139222819308C568D5E80D5B77EE417AF424C04EA8
            B2BAF83169D2449BCE0D21C71CECE385123DB58331F8A712A5EF3FBFF7E32A98
            F2617235FBD71306F1FBEC5C1DBD3B6DE9797F3E1220DD93C00C5EE09AFD5309
            511A7D279CB56AF959A7AE583C6FD6F4B21C60FBEC3443B5B5EBE0137235754D
            BCB5D3EA1CF2E8C898AD15B3DCCD0BA77CD58B99AEE5E188D9D3B1E8E53A073B
            C5F9E2CFF44D8BF8BBB94ABE15A393BE2FA0EBF303310B90340B0E9FC93727B3
            1DDD4466EB29E3F26973301774F349DC6F5E717DCB9EEADA67A8672DFEF587D7
            DED471FE172F27BAEF0E06D80503FC30E31AFE544BC0701D811134EB73C19984
            9F6966474B693CF3D4E54B161F7B54A9CFEB7501CBD88958BA8BA033747D304A
            FF99A3B5BD83AD9EBE7C1A730C3A2EAEBCEBD2A5EEE7733906C58DE35FEEEA17
            70BD4BEB7982915AF8BE509B7C5B97738144FBFE741DD20DA1995CFC9C9D22FE
            B534481749877FD54DBF08BCF96EBFE3DDA647D6DE143BEF506280D4818119FC
            A4C7E3A7E18FE01EE332A402668513661197C4009C991323B4F27F0AB672E6DF
            D8DCDAAFB08E664520F91C0E97727C7C519C9B4552208528C5B227AC974BC230
            8C04BCA0E9BD0E7DCA10FDF3E7948FCA0670DFEF9E8CDCF7BBA7DEA53689FD47
            092B1FBDF366672FFAE9BFFB3AC97D77AE8EDEBF1C0990EE31618454A5710E38
            0B4F5BB1F8ECD3B0342E9C7F5821E9513B5DBD16F1F720BA138564C32FC8CBC1
            74DCCBBFB7EB621B184557402AC462497B7F7CD68E4EF8E8C591A30EE37C7FC2
            F016C744FB6FAFFBA0F7CA1BFA297DDB207E52E93B000C50C1127055A2BD5187
            07630918AE73308228900D4EC2D278D4AC1965A79CBBFA94952B961C3B95FF41
            A4E583ECF44E57B82B30DF6ACD4E60E8830E33A74F46DC1741F808EB74906F03
            F5B02308702BA8D351EC241134DF250974195456C744F9D4B090973ECA26975A
            1984E7502C356BC8F86ECE2DBEF9BDEB2B5394BEF71FBBEBE67E4ADFA7FE763F
            254067ACC2967CFA2F9F0152471166D01220A5B10CB894C6E3CF396DC5D9AB56
            2C3962F68CC14AA344BF66BFDEC9D312203D20C419FD8CA9136D16665ECD5AEA
            61E716731840378565E491A5AF97CB26BA20A2770B3BF95C0C26029339585243
            57C5F4E269515E2E1FAA2E74DEA1543DA3F19CE9DBBF5D715DF39EAAA4D2F7C6
            E377DDD231B0EC27FFF6B281A08CD2AEBF4606488C008CA059DF4F695C7CEC82
            334E5BB1E4C425C72D18A4344AEB1771F5DD1F9FC7CBBFB3E5050BD6F9447D43
            85DADB6BAB288B6127DF23E61546E750283FDBCB45515FDA13BCA1EA4AC0AFF8
            F16DB2F4BD427A2DFE797CD31377DF22614374AF3BF70BFBCD00BB91003FD85B
            E328637F6E4BC048DD8619FCE08CC74FC74B695C7AEEEA93CF3879E9F133D359
            1A251586DADF537E4497387FD0D9BE6E20EB3EA24E25472C08C23DBF7D3272EF
            6F1D4BDF5D241FC5577DEA9367F6FEF3A59F26DADF8D3140FFF1183105236481
            54889F8C9F835F783AB797CE5A75D2A20547CC111CD08173322CE9CA7BA00733
            B0CBAC28CF9FF69E42A2C537DED9D07BE5F5B76F26FD409FDFF6E43DB78489A7
            759FF8FC9804483B3023016104C861322295805B8E9F8F7E70CAA7CE5CB9F2E4
            25C78DA834829FB1D32D25BDBC2A8990AE70054ADFBF7DF73A297DBF23FF6EFC
            86A7EEF94990704877CEE7BF3664DE68325C5DB13DB6F8D3DF1F0D6E5A9CA7EE
            FD495AF85F12F09CCF7DCD4B7F8BF065F8C330F49C70F6AA93CEC6D278F89C34
            4A233807DC49E9FBC6B7AF6DAEACA97B9ACAD7E2FFC0D876100EEBE8FBB0F923
            65EE37033CFD57C00089413AFB735F4B551A67013F7AC9B10B569FB172D9622C
            8D25FB6A69A49E619D8C4C57FCF8F6C09BEB36BE02E21A337B01DFC4D8C60887
            75F479D8FC9132F79B019EB9F7D691DAF88BCB3FEB735F75D1691F7E3C7E3A7E
            1ED6C5A59F3AE394D5A7AF5832AB645C9107D80173773DF444E4EE879E78870A
            EFC23F86AF625C1D4B1FF1611D7D1D367FA4CCFD6780FBFEFA182075D0CEFA9B
            AF669196723899700E7ED16A298DA72D5FB470DEDC02D2FBE55EFFE3FBBD6CF9
            3653C9AFF10FE2B73D73DFAD61C25139FA372ABCA190F43F838CEFC70D953F22
            FCD9BF7206480CC0997FE348851CD2494BE3BCB9334F3D7BD5F215A72C3D6E2A
            1F7DD4F241F6E8DD6E3E1B73F9B7AFDDCDF5AE472875377E03E319241CB5A35F
            A3C64D87B8FF0C70FF5FB704483768675EFAD584D2388DFCC3511A8FFFE4EA93
            CF5E79D20987CF292F93391AF0F04E4ADFD7FFEB9A663E1FF334986BF16F3C7B
            FFAD9D841939FA9211FE40E4FD6680E70E4106480CE219977E55B33E8FF444FC
            6CFCD15818579FB36A0596C6A34A3003BB800D7252FAFEFBDA9F75BFF5DE07AF
            90B916FF3CBE99B11C51E903AF9FA30FFDD299265CB2782DF8F457322D97C47F
            EEFE9F26E3876AE48C4BBFE2E2D9A53496104EC34B695C26A5F18C5396CE1CA8
            34AE79E0B130D6BE84D2F738F8558CE3A8943E70FB39DAEE97CE34B1DF0CF0FC
            1803F41BF3D5977E250B403FA5F113A72DE726DBD2A3171E39B7E0F76FAD8F7E
            377EA7EFD7E03D88DFCE188E5AE903BF9FA3BD7EE94C13FBCF00BF1E9300E906
            7DF5258E54C821AF145F8E3F0AA57165654D7D21C7BBEF93FE1D7EE3F3BFFE69
            90709F1DEDEC735915DC6F065025637EC41190D2580C56197E1CBE11BF13DF89
            3FA86E8C01FE7787DF4D735A22628451BC428283E71C063878CD8FB57CB04760
            8C010E36050E72FB630C70900970B09B1F6380834D8183DCFE18031C64021CEC
            E6C718E06053E020B73FC60007990007BBF9310638D81438C8ED8F31C04126C0
            C16EFEFF03A4E305B7CA316CAF0000000049454E44AE426082}
          HightQuality = False
        end
        object Line4: TfrxLineView
          Align = baWidth
          Top = 985.898270000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 987.898270000000000000
          Width = 269.480454090000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."RAZAO_SOCIAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 42.370130000000000000
          Top = 1000.575450000000000000
          Width = 235.464684090000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."CNPJ"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 7.559060000000000000
          Top = 1013.252630000000000000
          Width = 79.370078740157500000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Inscri'#195#167#195#163'o Estadual n'#194#186)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 389.291590000000000000
          Top = 988.055159610000000000
          Width = 280.819044090000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'ENDERECO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDbEmpresa."ENDERECO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 389.291590000000000000
          Top = 1000.417364330000000000
          Width = 280.819044090000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'CIDADE'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDbEmpresa."CIDADE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 389.291590000000000000
          Top = 1013.157521810000000000
          Width = 280.819044090000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'TELEFONE'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDbEmpresa."TELEFONE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object sRepVenda: TfrxSubreport
          Align = baWidth
          Top = 404.787401570000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = fxLMC.Page3
        end
        object Memo52: TfrxMemoView
          Left = 7.559060000000000000
          Top = 1000.551181100000000000
          Width = 34.015748031496100000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ n'#194#186)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 87.724490000000000000
          Top = 1013.291338580000000000
          Width = 190.110324090000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'IE'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."IE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 1.889763780000000000
          Top = 766.024120000000000000
          Width = 366.614410000000000000
          Height = 120.944960000000000000
          ShowHint = False
          DataField = 'DESCRICAO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[FrxDBMaster."DESCRICAO"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 98.267780000000000000
          Top = 384.000000000000000000
          Width = 37.795270710000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Bico')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line5: TfrxLineView
          Left = 138.063080000000000000
          Top = 383.622047240000000000
          Height = 206.740174570000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object TfrxSubreport
          Align = baWidth
          Top = 233.330860000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = fxLMC.Page1
        end
        object SysMemo2: TfrxSysMemoView
          Left = 631.622486610000000000
          Top = 113.519687480000000000
          Width = 45.354323390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[PAGE#]')
          ParentFont = False
        end
        object FrxDbTotaisVLR_VDA_MES: TfrxMemoView
          Left = 279.685220000000000000
          Top = 631.181510000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VALOR_VENDAS_MES'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[FrxDBMaster."VALOR_VENDAS_MES"]')
          ParentFont = False
        end
        object FrxDbTotaisENT_TOTAL: TfrxMemoView
          Left = 566.929500000000000000
          Top = 362.834880000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VOLUME_DISPONIVEL'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[FrxDBMaster."VOLUME_DISPONIVEL"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 94.488250000000000000
          Top = 253.228510000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'NOTA1_RECEBIDA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."NOTA1_RECEBIDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Top = 253.228510000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nota Fiscal n'#194#186' ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 483.779840000000000000
          Top = 253.228510000000000000
          Width = 24.566914490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'N_TANQUE'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[FrxDBMaster."N_TANQUE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 176.078850000000000000
          Top = 253.228510000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'de ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 196.535560000000000000
          Top = 253.228510000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'DATA1_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."DATA1_RECEBIDO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 570.709030000000000000
          Top = 253.228510000000000000
          Width = 104.692942680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'QTDE1_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."QTDE1_RECEBIDO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 94.488250000000000000
          Top = 275.905690000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'NOTA2_RECEBIDA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."NOTA2_RECEBIDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Top = 275.905690000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nota Fiscal n'#194#186' ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 176.078850000000000000
          Top = 275.905690000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'de ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 196.535560000000000000
          Top = 275.905690000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'DATA2_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."DATA2_RECEBIDO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 94.488250000000000000
          Top = 298.582870000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'NOTA3_RECEBIDA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."NOTA3_RECEBIDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Top = 298.582870000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nota Fiscal n'#194#186' ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 176.078850000000000000
          Top = 298.582870000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'de ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 196.535560000000000000
          Top = 298.582870000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'NOTA2_RECEBIDA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."NOTA2_RECEBIDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 94.488250000000000000
          Top = 317.480520000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'NOTA4_RECEBIDA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."NOTA4_RECEBIDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Top = 317.480520000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nota Fiscal n'#194#186' ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 176.078850000000000000
          Top = 317.480520000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'de ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 196.535560000000000000
          Top = 317.480520000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'DATA4_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."DATA4_RECEBIDO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 570.709030000000000000
          Top = 275.685220000000000000
          Width = 104.692942680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'QTDE2_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."QTDE2_RECEBIDO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 570.709030000000000000
          Top = 299.141930000000000000
          Width = 104.692942680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'QTDE3_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."QTDE3_RECEBIDO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 570.709030000000000000
          Top = 321.819110000000000000
          Width = 104.692942680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'QTDE4_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."QTDE4_RECEBIDO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 79.370130000000000000
          Top = 922.205320000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 158.740260000000000000
          Top = 922.205320000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 234.330860000000000000
          Top = 922.205320000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 317.480520000000000000
          Top = 922.205320000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 396.850650000000000000
          Top = 922.205320000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 472.441250000000000000
          Top = 922.205320000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 83.149660000000000000
          Top = 172.858380000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 162.519790000000000000
          Top = 173.858380000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 241.889920000000000000
          Top = 173.858380000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 321.260050000000000000
          Top = 173.858380000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 400.630180000000000000
          Top = 173.858380000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 480.000310000000000000
          Top = 173.858380000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object pgFechamento: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData5: TfrxMasterData
        Height = 1026.693570000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDbEmpresa
        DataSetName = 'frxDbEmpresa'
        RowCount = 0
        object Memo145: TfrxMemoView
          Align = baWidth
          Top = 120.472480000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Livro de Movimenta'#195#167#195#163'o de Combust'#195#173'veis (L.M.C.)')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Align = baWidth
          Top = 147.913420000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              '(Portaria n.'#194#186' 26, 13/11/1992 do Departamento Nacional de Combus' +
              't'#195#173'veis)')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Align = baWidth
          Top = 241.535560000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Termo de Encerramento')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Align = baWidth
          Top = 303.921460000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            
              '           Cont'#195#169'm este livro [TOTALPAGES#] folhas numeradas ele' +
              'tronicamente, do n.'#194#186' 1 ao n.'#194#186' [TOTALPAGES#] e serviu para o la' +
              'n'#195#167'amento das opera'#195#167#195#181'es do estabelecimento do contribuinte aba' +
              'ixo identifica:')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          Top = 355.527830000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nome:')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Top = 376.764070000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Endere'#195#167'o:')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          Top = 397.779840000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Bairro:')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          Top = 418.779840000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Cidade:')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          Top = 439.457020000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Estado:')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Top = 461.134200000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Inscri'#195#167#195#163'o Estadual:')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Top = 482.149970000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo157: TfrxMemoView
          Top = 503.165740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Inscri'#195#167#195#163'o Municipal:')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          Top = 523.858690000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Distribuidora com a qual opera:')
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          Top = 564.772110000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Capacidade nominal de armazenamento:')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          Top = 780.362710000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Registrado na junta comercial sob n.'#194#186)
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          Align = baWidth
          Top = 832.953310000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA9'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fxrelatorio."LINHA9"]')
          ParentFont = False
        end
        object Line55: TfrxLineView
          Align = baCenter
          Left = 230.551330000000000000
          Top = 912.528140000000000000
          Width = 257.008040000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo162: TfrxMemoView
          Align = baWidth
          Top = 912.528140000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PROPRIETARIO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDbEmpresa."PROPRIETARIO"]')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          Align = baWidth
          Top = 927.646260000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CPF_PROPRIETARIO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDbEmpresa."CPF_PROPRIETARIO"]')
          ParentFont = False
        end
        object Line56: TfrxLineView
          Align = baCenter
          Left = 230.551330000000000000
          Top = 988.677800000000000000
          Width = 257.008040000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo164: TfrxMemoView
          Align = baWidth
          Top = 988.677800000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOME_CONTADOR'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDbEmpresa."NOME_CONTADOR"]')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          Align = baWidth
          Top = 1003.795920000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CRC_CONTADOR'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDbEmpresa."CRC_CONTADOR"]')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          Left = 48.133890000000000000
          Top = 355.393700790000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'RAZAO_SOCIAL'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          Left = 67.165430000000000000
          Top = 376.692913390000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ENDERECO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."ENDERECO"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          Left = 45.165430000000000000
          Top = 397.614173230000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BAIRRO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."BAIRRO"]')
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          Left = 52.165430000000000000
          Top = 418.913385830000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CIDADE'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."CIDADE"]')
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          Left = 52.165430000000000000
          Top = 439.456692910000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UF'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."UF"]')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          Left = 119.944960000000000000
          Top = 461.133858270000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IE'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."IE"]')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          Left = 45.133890000000000000
          Top = 482.055118110000000000
          Width = 536.693260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CNPJ'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."CNPJ"]')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          Left = 123.740260000000000000
          Top = 503.354330710000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IM'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."IM"]')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          Left = 191.653680000000000000
          Top = 523.897637800000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DISTRIBUIDORA_COMBUSTIVEL'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."DISTRIBUIDORA_COMBUSTIVEL"]')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 400.630180000000000000
          Top = 397.780076770000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CEP:')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          Left = 445.795610000000000000
          Top = 397.614410000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CEP'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."CEP"]')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          Left = 234.330860000000000000
          Top = 780.472433620000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM_JUNT_COM'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."NUM_JUNT_COM"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          Left = 561.259840080000000000
          Top = 68.031488740000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Folha n'#194#186)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line57: TfrxLineView
          Align = baWidth
          Top = 97.708720000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Picture3: TfrxPictureView
          Left = 3.779527560000000000
          Top = 3.779530000000000000
          Width = 226.771800000000000000
          Height = 90.708720000000000000
          ShowHint = False
          DataField = 'LOGOMARCA'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000008000
            0000800806000000C33E61CB0000000467414D410000AFC837058AE900000019
            74455874536F6674776172650041646F626520496D616765526561647971C965
            3C00003D00494441547801ED9D09989C5595F74F55D7D27B77D29DB593743620
            8490B066218110089BA8802030EA8CFACC378B8A8CF33D33E3378FE38C228A80
            C82A0A2A26EC8228FBBE0B080821241042F64E7ADFF7AAAEA5EBFBFDDFEAAA54
            77572F95C4899AEEE7DEBAF79E7BEEF2DE73EEB9E79E7BDFB75DB158CCC6FE0E
            DD11708D31C0A14B7C3DF9180368140E613FC6008730F1F5E8630CA0513884FD
            18031CC2C4D7A38F318046E110F6630C7008135F8F3EC6001A8543D88F31C021
            4C7C3DFA180368140E613FC6008730F1F5E8630CA0513884FD18031CC2C4D7A3
            8F318046E110F6630C7008135F8F3EC6001A8543D88F31C0214C7C3DFA180368
            140E613FC6008730F1F5E8630CA0513884FD18031CC2C4D7A3EF3703B8FEE715
            D593F447974F4FC63389B84076E947A1B94C71250787E409874C5C1F1E3012EE
            7E7097B981E11C1C77A24E0071BCBDF90E1E0DE14C7989B4E22F6DAB3D3666B1
            2FD2420EF91F13FEEEEC7953760A479EEA68A7AF2E126E9054CEC94BA4153A7D
            8BE3294F782E107194377C3C8FE2F138F8493C95777C1F4E4A5E1CC77846F280
            5F3AAF80DFD1BB7D6200D731E7EE6DE1BCFFD81B279629034C7FE8EB4EE7293A
            6AE7D2288D1A7BDF112BCFBBFABA96EE9EAF87A331AF9A84F8F4D57A2DD67B4F
            5EDB9EEBE7BEF3CBF7CA2FFF05041301FA884873228AF04564C54564F5D989F7
            117220F1E3F803EB80A80EFE5E783F3CF29C34CC9DA8FB924B2EA507A373B1F5
            4FD89F0503A4EBAE062C1D7C2858A6F843D523F8EE4FFD70A2DF93F584CFE33E
            2118895A5D7B00C28BFC101A84493B5EB4893B5EB6AEF1B377070BA7FCDF13CF
            FFF24322B208EE1004C2282EA2108541F61252FD74838C031E276CBF32D4EF94
            03A830E92132A06419C19D3470C5E555F7C5175F420DA373079D01343865BFB9
            CC19DCD174590F381ABC549C4CCBAC3FFD8AC593F2FD4F64FB3CA51A6017EFCD
            D475062D188E9A37DC6533363E6879CD3B529BB0EE71336B828553BFB9ECC2BF
            BF4B8470880F86CA3B711E5470272D82417DA595E7C0942F38613CBD97618427
            D65318F7A4C073E27D6514D7732ABCE8B37F210CC03338D3A9ECC1CB18AAC14E
            0F34189A1E9209AE6A180AFF9D55DFB90C02FCB87C5CBED79305111860B96028
            6AA1EACD3679FDAFCDD3D3A92AD2FA60F18CA660F1B46FADB8E8FFDC266288C0
            F19047E581A58738B39FB8FA90C873E00E2C2E119270C1E8C0DE741FF1693D51
            37FD452AD05770E12BFB4CA60CB0ABFB25AACBCCCD5C76EDDE02FBA003D05746
            C47136E581AF397569409C489A9FEFFFE21F729B9A9BC397FFEBFF8BCCF22D8E
            A54119041AAEBE81C8EF9CF6DD7CFAF42B06F3A2F1397E1B97E743198C0F3630
            F36F7ADEBC1B9F36D6FE8145D3A64345533B82E3665C7BEA25FFF43D95770828
            424221C5D537858E079EC421E2C0E80C6E2F614988E064D3AFBD4CE2A4FBF2A8
            1A496A76C145194A8083C200741AC7A39B4DEE63807423A981BA76ED5767F87C
            BEAB609745B5F5F52FAD5BB7FEC1DB7EB1661DF8DD33BD27F612F2E0AA4DB1E1
            BDEA1B88F1EE69DF3DC662B1875C6EF76CD5323ED767E373FDD4C940477B2CFB
            8DBB2CAB7AD3C062C3A7D1F09A8FB9D0BAA61DBF9E3AAFBC70C1E48734F3E304
            EB9BAD6468E6C761B445C42D181ED78FF8EAB79347AB6204C54107275E2E8E1F
            8F9F77E1C5608DCE393AC0FF3603A8E3EAB0E3494CBCFF2BFD7AAB8715E067BF
            FD66567777E02C9FDF777D9688E37279F41EE3EECAAACD1F7CB869CD0B2FBE7C
            FF479BB756C30461E10FF4897A06C253D3EB4EBFE21FD1826F82F87EBA0243BA
            AC34CF6F45395EF3B4569AFFD53BCCD5DD925AC4890F5777CCE3B3C613BE603D
            93E6C14448119588C536B92D76D5450B27DF2DE2C5676B0A23301822ACFAA03C
            C51D3CE06ACB89538FE00E0EF0388CFA13713204FBD467FE8C19803E32C8CC65
            1E460F466013EEFB6767A0144FF81BEEFBC604E25FCFC9CEFE36615A57595DBD
            61FDFA8D37FCE467BF7814843618214238AC4BB4C9ACCF277E1BFDF91C4348FB
            EA133106B3AC28C70A76FDC17CEB1E36EB8D0E5B5F6A26F55924A7D81A977ED9
            2285539D3A45106A75E2CA6709D9461357B9B3B2D65E7C546954F9712F2CCD60
            F93863D0376638711A49E250381E078F918CE31027827396874F66CE002F5BA6
            7F33975DB3B7C82875007590FED36D065B096A50507AEF3F13DBEB6E79E0DF96
            81F15F3E9FF7137BA1E963816030505D53F3F6E6CD5B6EBDE5A73F7F16AC8E72
            CF0949AA39830E30D5AD5BFDBDF9CCFA875D6ED7611A76F52111BA63BD76D847
            BF315FE586D422C978BAFA1299EE09E5D6B9FCEFADD39D67515EB917AEF3BC34
            808309E2C4141CCEDAED8ED9557E9FF78E0B8E1C178ACFFA38214560E16BB627
            E02A2378C2ABBF89B8F01C7C3A22D8272EC85802BC6C99FE65CA00EAA0331834
            A48721E86304B3F1F7FC9392F6A33BBF9E8FB8FFB2D7E3F9178FC733C7018EF2
            A7AEBEBE66C7CE8AC7367FBC65CD03BFF9DDFB140BC2088E7E403CE9DE3BE3CA
            2F41FC9F39221FA8D32F7ED4377FA0D9CADF5963BEEE26726041E04E64841F3D
            4F56F922CB5EF565338FD79ABAC3D61A8C4270EAE029558D4324EA11AED21372
            BD363EC763596EEBE808846F0E5BD65567CD29EC549EDBD5C708E02B1E87C13C
            0E3C5EA7E0710F2B089EC475D939E77F96D4E89CA3035474BF6C99FE95672001
            F400F491A1A0151289385107567CF73F1AB3FE48D6F9FF86F0E7BADDEE02301D
            17652EF7329BBC1E957240C3FEB4B4B456BFB761E3CFAFB9EEC69F83583F23EB
            F830A1AD3FE34ACCB8AE5BA9E54B0E11003AEDF303CC8AEA365AD9C687CC1575
            D0C94DEF5476608E67FE4ACB3EE9B3E6726521B2CDDA207E7D7708710CD198C2
            59B4214E54589CED71089FE375830BF1A84C84E411BB7A22BD7786C3A1EF9E3A
            B7A48E62D4274690A71E3A1987F5C549AB2F2A2BB8C244FAACF332668057E846
            66AE7CD9D57B0B0CB304B8C0E2F91D42EB899C740A4C79F79EB7FD42887E15C4
            9FAB2C7CD235B7F55A4D53D48AF2DD36719CDB7C5ED590CC4E1B41518C353434
            6EFF78EBB6DB7FFEAB5FDDBDE5A89BC6C7FCE37FC300CDC3AB1BF487C1A72A17
            227FCAA6476DDC9EB7D3D625FCB41902A2E9FB965D64FE05AB92F569A6073018
            D5778521B0590933BDC09F65E148CC14AABE60A4D72ADB43A43D3631CF63391E
            F602EA8B0623663D3D91E86F43E1C87FAC9A535CA9FA1CE2D25E22EEA4C1DD4B
            F8BD4C423576E69F0B03A833F493C1A1F7449C743CEAC0EE3C7773B1D7EBFD16
            FE5F18182F59835C454DC4D66D0A5B77B0D7664CF1D89CE91E2B2D769B240255
            0EC24F05B4B5B577DEF9C748C53D5BCBE69ACBED77D1AACA24424FB8DBCADFBC
            CDFC9DF5C962F423191F2AE2E078FD967DFA3F9877C602663A629987135CC451
            B9EE70AFB50422D6138D59BECF6D13D85AB6F5446C1C62BFA3276A6D3DBD0E23
            16FB3D36A5C06B5EC7E81427A4FA481DE19E70F4895024FA8D55B38B2A464B7C
            E1ADFEF445141F9D8B2F01815746879D8255BE747809E002B7EF4178500D3983
            D407FBED257B5CA150683103762DC43F19F0904E33A7AEB9D7B65544ACB6316A
            D990716659964D9FE4B1718588514D8334A5196BBBEE35BF3DB2C943FB6A9B3E
            D0297E9D746ECB2E9BFEC73BCC1D099126234D1DA920FA9A4CBAF28A2DF79CCB
            2CAB64FA20E2EB9999CF16E98DD9CED61EEA8EB72DC6501DE3B3B3AC331CEBA7
            242E9890E3480BE5C7F160843E66C53E110945634FC308FFB66A76E1C722B01E
            398947834E9CDE39793CCA699FCA98015EA57866AE7CE90FF71618B0042C2C9F
            EE3CB810F450F489C7612088DC73DEB609C02FF579BDDFCCCACA2A233EA2632C
            FDB3ABD776D745ADA23262AD9DBD568214387CA6D7A69466590E4C915AC99E36
            97FDBFA7FCB6BD1952304034EBF427DE9798956C7BC94A3F7E069872524BF68F
            0BBF3F04C28C2F8B13BFA0C4792667F06943A1BCC36014EAC0745CDB1576DA70
            93565DA0C130B4294742F039E3FC968B3EA07C9597571C149882DA88F0140C5E
            2C8A8EF02213E23F56CDCA5F2FBC04C141717005A35A5BF5C90C196077E055BA
            98999B310C032C9A39DDA92CF120EAA03A76FFF9DB4F607DFE77BFDF7F017969
            45BE5370881F0EE5AC1DE2EFA88AD8F63DBD168964C100513B6CA6C7268DCF72
            9685177664D9152FF8AC27A2C19367EC2095DA77A3E04D7BFB9796DBBC738816
            C015E210B99EE94759EE99FF6C6E5F36848519C0131154445E840AF7C6AC1D11
            DF1A8C8043FBE0F0ACC4A99B7E78A0923C2A814D43F48F4322281F304404878A
            345E897A5527A0781E48E4C5581A5E6185F9CF55E5796F02228F76C870E2B4B7
            F26032803A1B9700748ACED02FE7E1EF3B6FDBDFA1E4FD277E1EE07D76D1A8CB
            BA022E6B6C33AB6E085945550F52D26CC6548FBDD8906F4F6EF73AEDA975F525
            11FABA1BADFCF737993B1C4CDBB688903603A0F27C287A39CB2F4195C80262C6
            929D1C78686EDAA94451F5EB3A435C16A0551E5CE5089278DA054CC8F5583E4A
            A19B5A34F393840631155FC4DC9B863100A88C9EC92943F960B8F77518E13BA7
            CDCC7D9E6CA40B78209C72EE85E48ECE393AC0EEC0EF47879D823563E9557B53
            2C01B4EBA479748B33009D01B2F69C4DF9B9B9B95743F82FF140B980F6D9F584
            DDD613CA72089E9713B12033AD06BDE08FDBA276F7F67C6B0CA7277E61D53A9B
            BCEEBEB4EDD2A7B470019D3C34FD9C1597A0E99FE62874ED28173132C767A3B8
            B135ADE9085914452F8B0DBD9840CFAFB150D938C18088B8CC7EC1BDE015F9DD
            3635DF9B640C112F153F91A618388C23001C352075A80407C3997901AA1CBB8E
            F7C391DEEFAC9E95FF30205BF189FF6506709DFF1F0C090FCAAF7AB9081DE091
            4BABBCDDDDDDC77188732BC43F4E59FBE3BB831EB6522ECBCA8A59AE3F6A6ECC
            68AAEFE51D6EFB9FE77D1644E41B23A34123204A7FD8E24D5EFF8015EC7947A8
            FDBC06AE1F202591CCCB82C8ABBE6CB1F2E3ADBE2BAE2C3A75F390920034420C
            0201C4118FEFD1553E9176427E529941DBBEB9ACFD80E304A6A49B8E27CA6986
            3B69FAE4228203636FDDAA0B0065810987B24D815E63E7F18ECF1DFBFE0F2FFF
            E2C38047E59212E09C8BEF1955817448DFBBF27FFA818F98B27E3A33E2A2ECEC
            ECEFB0BF2FEC9799920885E9394FE2F3223B53E08A067A388E75614C71F36041
            BF40287B51EC00715C449FDDF286D7EEDB80964F6E62F020BBE8629E509795FD
            FE66F3763690DBDF09B73F646F2A91D79B5D685DA7FC83854B6639F5B9E8A743
            08A8E6F45A2111C1893AC420092E1022FC02EB630ECA0A47752B2C652B38359F
            7E9300153C9705593FF2BCD80B584FB2912C823B7564C5EB10D155DEE903DD4D
            C4832813E15E9775847AADBCD0631F37472C108EBC6D31FBEE9BB7FEF793A08E
            E85C7B02AFD9D917DF3D22E25008A90CB060FA07CB19856F708833A22AAA59DD
            15745B7E4ED4216EA2FEB62EBF6DAD9E8AA8775934DC8CA1A4D9CA2686AC18A5
            C9E3C9B2DA4EB4FCA73DF6617D164D31408901EE0BB39B77D9D4D77E62AE0107
            391AB4441B03C3D4BC68F154EB58F9158BE58D7788E31043C42222A210A5DDC4
            EC0322384082389C0850E2F42D0DDC87F8983DCE670A8527C5517166B0E5C304
            38740DEAA71E49838ECE80D5B7B4E3DBACAEA9D5EA5BDB6DF9D187DB11B3CB4D
            CB094D30FBCD76B645E2FA070FA7E789F546398A8E5DF9DACDDF7E08D090EE80
            31C0C2F24DFFC48CBF9CBDFDFC215B4BC99042D7DD938591270B9B78CC0AF3C2
            1608F9FA882F9EDF8BDCDB1BB22C6BB4BAAE0EBBFA4DB7056268E2ACA71A400D
            403C8CD9B82D2FDAB80F1FDF5BB02FA601E98B0E0A52F3C253E65BF7C9FFC002
            EB8780AAB58F88104378EA95C2BD6DC6F38784AB5C1F633AE5685D449D57E2EF
            5BC3CDD12DE2B3DE654DAD6DD608B11B2072430B04271E0A8529D5DF5D7ACEA9
            36BF6CBC615260BB1B7142D59FAE1F30C2264A5FF5CA8DDF4A3BCB6180D79100
            7781B36FEEBEDB3F95979F977703FBFA8B61802145FE50B56307B78E6E8F3575
            64E34B41D363100CE19A3A02F6C6AE667BA7B6DB1AA328535E968B58D426BDF9
            4BCBA9FD6850290DCC20208081F0D0ECA51658FA79665F9F78EE239E2376A138
            C9385310116B001A2C2100AAF7AA9BA8484F99FE4C02DFDAFC5218983EA86E31
            04553A780DAD1DF6FAFB9B6D47652DB9E91D8765F6EF5FF8A4E93C614303DB4D
            D006B5A796A9D4813BF95C668AF6BEBAE9ED97CEA97DE3D96E4049E7DA138401
            3E9B3903DC7BDBB9B9ACF347A3E8FD12E2CFA7319A4CD69B51A45D62BF0AB1EF
            6C66465FB4A2A1C3D655D45AC5EF6EB44873ADB935A229C5E9534A6A6F74203C
            78EC79165A700EC3D6472C9E244164E1A612732FC1C048C11B04A710183049BC
            4E5021328A2C1C7224128095803C61D02F709B8328B70A03512441BB7DBC658B
            35343490D9DF4D9A506AA79C741267092EEC1D318BC4A883CAF9A5FEFE6D0106
            460E119C7DBCEE8DBF796ACD4D8F1C3563462051ABAB32F8073BEBB36B13E951
            850FADB9B0DC6576715E5EFE0F29C023F1BB8FAEB5D367DBABA7A0B7EC5735F6
            F17B6FD9A6B77F6F3B3E78D77A235220D3D7278226BA1A43D30F2EFF9245669E
            C040B1CD8205A00171060D24E12A1D37C800E3A1F9253F3ED0E2B7D434D9E4C5
            D7EF7470117D5AA1D78AD90A3A0C4301E1C568ABA62B8A1149670440FAE0FE50
            BBBDBDF123DB5DDB0846DCCD3BFC303BF1E8F936B338CBB63647D5117AED044E
            DB1475C27E7D03633D63F3D26FD65C69C1CE3BA869374C4061CA65CA000FDF75
            F1A966F6B59CEC9C8B08877461B6665DC12C4EF2E2622A1D6273BBDF76D64DEE
            47FCDE5EDEBB6044D849A42B3222AC271880D3DFB40FDF7CC52A36BF8F7E01F9
            44454A8AA0048E8BE5145A60D5D72C3661963360898113AA8B0153984A24A555
            5E78E9E06237271F0427A41585A984284391CDF7B92C9B7540F5D133961C8840
            A2A93BEA9C1374A3D9AB7D955B34D1679C05D8C7558DF687F737596D43B39D7A
            D2625B3E6F9A6D6B893AFD169EF0A9825EC7EB8AC781D217190D5E7EE6615BFF
            FBE7B65A67F31A337B02FF110C1022B48C24C0A3F75C7A19757EC5E7F38FA8E8
            89019ADABCE6F3F45A1E9ABECF17733AA846B5EE37B4665B65E3A441C4EFE8EC
            C6F6DF6D79B939969DED33944A87882A97A9EF6869B68D6FBEEC4886C6EA0A96
            080D39F7710A265AF0AC6F98E54F7006D1C543315CC491022448120742845FE2
            69E07D78E998816271F14E24515ECC206D5F3D98CE962D1F29403675BBC08570
            3C5C2F7E0B5B398DCFC4DC2C9B5A9065156D514E145DA6EDDEF6AA7A2B282CB2
            6C9F8F02D44C05FC5287928A29C433D274CFA291883DF1E09DB11DEBDF7CCF02
            EDAF52FD5BF8D7F03530405C025405DFB4333FBBC686FA7BF6C12FB93BBB3A0B
            39C0B999B5FE9359599EE2A17053E14C620B85D8A306D8DF220D0A7279909C5E
            C7A0D3D8E6B7EAE689FD88AFB251F6C3F58DCD5653DF80850DC6C9CDB6A2C242
            2BC8CFE524D0671895182C9E5AC819FA86EA4ADBF0C68BF6FED69DD6B6E4EFCC
            9D5BC4EC831C54C7AFA354657336AFC10FB11F57F5594C2F5E0B6380195CF0F8
            259E8619FA063CCE0CC282085000A71CFA6C96C7B1702E33BF30DBCDFAAD16FB
            084FBD3C36382E6B400AB487781391C6757238BD30BED5E58A81B3C7D7394219
            4C213B487D77DF7201AE988B6AE81B6D13C1597757A73D72EF2F7AEBB66C7CDD
            7ABADE00ED8FF875F82A88EFCC7EE2E61A8E01EEF9E9B939FC2DCEF6FB6F87F0
            B369C8A34299FA20B7DEDABAB21C8608F77AACB56BC220E227EA0CC3B5DD81A0
            B57774596B7BBB05823D580019B4BC7C2B2ECC772403F7051D66D08326CA6512
            6EAF6BB30DEC223677442D9CE5B77C24CDB4A26C51CD51434538314217A77A52
            CE24BBD4969B0C5C7CA06990F1807014139941509AC0C987770425CEC5909C2C
            2BE6E047842ECE711BAB1CCCC76E13A42DCD61F3C318C530463E4CB2B33562A5
            E0E7B1540826E26F6D8DDA4C98C1879188FB24B60BA990DA56A24DA76FB4DA54
            5F638FDC737B4F7BE58E972C1C14E135F3D7D3E57A88DF6F5F0903BC8504F815
            79FDDD43775C389D6DDD1750F47E404E0CAF7608327751AC55C11E97D522F65B
            BB4AA9C08D1FDE491AF484421608F4585B4707CCD0C160326B18B4C2FC7C2B2A
            28B01C5EE21033709D6CF8CA86C88D42898F6BDAACAA33C296D2631E5FB66579
            3C71A2329A512481EEF7C95227420072FAA081483203039E8493E1CC6DC25402
            415F73C55C30819BE5CC85E126461B2EA4828BFB83315B30C1EBF450333C512F
            4D23117A4D12617EA9E69D4BCBB97DC40D29A73D4A386DA8AD441F082BB66FB6
            C7EFBFA323D458FD0C9634CD7811FF03D09B20BE23F689275D5A0678E4AE4B56
            8171794E76EEF984FBE5A40B7463F1EB0A7A79C912B11F1B99F8A90D72846C61
            46BF1B49104032B4B677380C11E1C260415EAE958E2B6689C833BF1FDB3D9732
            076E0553EB1A2E1E0C456C4743A7EDE9E4C68EF9CCEFF39BDBA19C59031ABACE
            F813C441D0C208CC7C28E1A2D211E17D78A904838FA9C3654C6A9B59ECB5B831
            C84CCB4F35C7DE081F87498E86F8628C0853700B5ABFF404A71EDAA55A484E6F
            E884601BDFF983BDF0C87D75B1B686A7B982FE3E286FE237E3DB20BE8A12EDEF
            5CD53D6FDB1917DD91843E7EEFE7BFC103FDA3D7EB3B32091C1091781461F5B6
            8B87039A01D94E523812FD3DE801414EEA6A5A3227BE53113F2188A38311ADC9
            DC97E3543064DCF8B2662C675D818079B2D86D2011C615155A5E5E8EF9BDBCD8
            81D9588342F18C5D0752677B439755B35B0E7BFCD61DCBB28680D65C88AE2167
            C0192308B837ADB620850373F268D581813B1C5C8C30392FCB9A83BDAA8C592E
            6CA25057FCB7B0D4EB58FAB6417C4D5FA7CE44DD4E18C77DEDF9C7ED8F2F3CB9
            134DFF19CC3E09E26F03A50BE2C33EC4D238870180BBDA3BDAA666FBB37FC45A
            7F36CA5E31B0219DC4533B6BBA66761E8A9D143C3D48A280CCBC9D81F84C0F47
            3DB6A7096D3FC399AFBA12B35F0FED95915CC03E1F4502F484301F43ACB854E8
            7418C3EFF33ACB43716181E5A244FA60867DDD52AAA986F66EDBD114B477397A
            8EC00C1EEA537F1C0F821342E474A21F1A3AB3986C1803C212E197785C91A438
            770B1CA0D8CA812B7F367BFC1E06390FA5543B87EDACF9D21F9CB628E4844E31
            CE4B22617BFAB7F7D8D6756F6CB4EEB617C97E0FFF367E97990587233EF90603
            FCD1D71DE83ECBE7F5C99C3B83CAB5E0286F441F64767776F3E874468CE0F360
            998AB2C621F23DC4C3CCFC8AC6FD98F9616C088C22AFEA0ED9178749225187F8
            5D5D016B6189E8E8ECE230296639D9BCE88954282C608960EB2466D8D725421D
            D85A8385AEA5C776B3B361CD41F224CCC6225B7C26D25D1449D28C09630961E3
            706869659C02FAB9D9ACB3FC2EB4FD46A48A443BD871E25378D1040FD63D2D3B
            BD569AEBB66DAD481E1A77EA529DD4089A7ED1F43BEC91FB7ED15BBBE5833731
            F0BC0EDA3BF877F19510BE877044E7FAA8FEB9FCFCBCFC77D8621D0E364DF09B
            81D352A0533D1DEF4ACE6471569F97DD6BA1881723CFBECE7CD6427603B01676
            80AC51F74646A410E5823D21DEB8E88E3343571784CAB282BC3C1B575460F95A
            22600631950675D495A7207249D3B6D476D8564EE06A6072AF5FFA429FF228D2
            308AAA3B41288522BE089A20366C813127CC895E9605E002D9F66714F0C42077
            70CA231DA096BB904E3DB40D5835C71985584B53BDFDF6CE9FA1E96F4F68FA9A
            F5EB4195A69FDCE6911ED6B98E5C5DEA2E2D193FF7F2AF5CF69393962C3D1DCD
            9FEE0F5B266D66002DBFB2C16B22BED6E49AD67D9BF931B8485B410DD440B19F
            B6E12180CE12110E5B3018B296B60E7CBB757607E25281E5617C71A1E5E6649B
            7611EAEF10D58C08EEA4FECD755DB6A323666D288F1E298F2847229C16418770
            FC14B1AD2B2F8ADF5AD272C9CD70F3114120B0256477C3A8EB9941B5ED2DBD16
            E0A691EA009C24BAF204ABDAB5DD1EBBEF975D81BADD4FF769FA52F63EA4B38D
            CC7CA90A4447E7C4006AA3D0E7F32C5A7AE2922F9C73C659E72D3EE1C4896A68
            7455F4C7AA6BF69B88CF2AD73FA32FA5ED9D3478248EB325EA0327831EC43EF3
            20A3999F2C9C26023F7181943BFA48852EF485668E599BDBDAAC07E6282AC8E7
            3D83628C4DF98EA1C9E7651643BC34D58C0AD4C849E5D686A0EDE87259C4CB96
            5227951059633915454F1280240485E0D49820A803635603B20FB4CD23A23222
            8C1312C139E536BDF7B63DFFC87D8DD196BA67787955EBFD1F40FF083FA4A64F
            DE90CE55DBF3AE9D7ED1CFAD37F09B1CB0661C73F4D1672C5F76D2DF2C39FEC4
            63A74E999A8342087874AEA3DB673BEA879FF9BA3B17615B1771B41A5EA74383
            F76A816400A4E16B504488D1B5981996F405B521E3523B26E766CEDD3BBBBB69
            D9AC106628415FC8CFC704EDC7048D3D40839F590B7BB1F73476D9F6D69055F5
            C054FE1C5B3889236028AD3AE39281F90E55133B065D0CD17A8FEE17571CC903
            03A26BB120465A9AFEDB2F3E5981A6FF2C4A8EC4FD5BB4B815DFC1CC17AF13CD
            CC251940C560022DB8E388CF3B76D1C24F7EF1737FFB778B162C9C427A4427E2
            EFACCF6CCD17138451E07A796A1965B42EE7B09F1FB1B10380A0F67A900AB22F
            B4B67762686AB72086279DB7176B4BC932A15D841F7D41379118FF7D6A55C6A4
            EA962EE76DA01E7611D93939712B26152688AFAB5D3BDBE3876062104D02489E
            247E2FB79B9E7CE86EDBFAEEEBD2F45FA22322BED6FC9DC403FB4A7CCA9AAB36
            B4CE4EBFF076C51D0F138841B3494CC22F3CF7ECB3BF78D179179C39B37C561E
            E9B44EC4DF35C2CC4F5B10A0D67C89E3A86C9CCC4559C2C5083EB67D1A0C50FE
            A44E52414B52B0276CDA4534B38B68EFE834C1B48B188F54D02E22971D859F2D
            263AD23EF747D2A7AE0D33376723BD581DFDD9D916E3E6F1164EF612E6E67EC4
            27D113E8B647EFFF556FE5A677D1F4BB5235FDAA7FFDDA5783CF3EF6F83EF747
            056180F76080DB14EFE7FB1801E53967EE91471C79CE29CB4FBE64F1F1271C31
            69E2646F2A6247B7D72A1A8617FBA9F803E33D1879A0BB49EC33294C33460325
            E38F669E18410C31B0DC9F22AD5D842452A0A787B3886E0C4DEDD6D6D989AEA2
            B3883CDE482A342D116206498AFD61D06E94C79AB61EFBB0CD65214FAE799134
            622E68AEE160F6BBACADB9D11EBDF7762B0AEDAAEB6C6979A6A92DF478AF79DE
            EA8D796A217E4863B0DF0C50177ACF4EBB703003A872791841049F9095E53AFA
            C2F33EF3C5D5AB4E3F6776F9AC22943897667E85663E3B5FE166EAA5F0712A84
            D935BDE92184AE2082485C8B097C58F7F6C7A89349FF2401C488D217B48BD07D
            BDF6AE6EE728565261C278DE11E42C425281B170889649FDA9B8F5ED01DBD912
            B69A10E3E0CF653278ADB262873DF7DB35B66466CC8E9A5DDA3B654276AD1B62
            747636DEF5EC0B4F6D6A6A6E099E7DF19ADE03C000EB61809FA5F667509C76A5
            1BE492310D7FE237BE7AD9D74F5D79C1F17B9AA73269B56200CDC049EC6B7055
            C499F9D4A2F8505E625ACC107196094ED1501AB545DC9F1938545B03E1EA6B24
            CA756B666C57778F23159ADB5A39A50C6171945428B271C5581D59226468DA5F
            06DDDDD465EF6CDE690F3F72BF2D392CDB8E3EA2CC8E3F7AA61D316B328A6AAE
            5557577EF0E2AB2FFFF85777DF29D9DFECCEB928A36DDFC0E773D58546668044
            211841D260DC85177DEBB32B567EFE46C4A0182391DD2FD460B1B5E49DBDC128
            8ED807DBEF83E3093371521CC53C521C65D5F3A1AD7B60884CEAC814570C1840
            47900492340A6A89E0BA76135BCA760C4D5A3A8A38A1946DA108ABA37407492C
            89F44CDB4AE087423D5653BD8D17613AECF059D936B1A4A8DF58EEACD8F1FAFA
            0D1B6EB9F1A7B73C4399F67D6504577DE87D5B75E14FA96374EE473FFCCE4AAF
            CFFB141A6CCE7025B486CB62A635DD8F42E7CC74B64182AB9C931E61E60B6F28
            AFEDA44E09B54408474CA03AE9979207CCAB1D31AC879319113551B11850C7D5
            5D9C50B6B577996C0B5AD78527FB82968982BE2DA5274B26E344C9CCC368A487
            F71C9AAC38AFCB4A8A5C18B37CDC2988C65ADB5A9AF754573EB77DC78EBB5E7E
            ED953F6CFCF0C38C19212306B80EE263397B02D19B37DAC7100368C66AE6CA08
            A401CA63ED94B233DA3A46C253BDD2277873D63C18722459A43C8E546E34F99A
            F9EA732AF153CBC59788F859842C8D4D5CEDD6E15418835636F6049D508E2BE2
            220B56475DE5DADF252212462975B5584941C0C61578CCC747261A1AEA2AD76F
            DC70D70FAEBB5A33B90E69E02888A9FD1C2AEEAA0F6FB0559FB975A8FC24FCC7
            577F7765A6C44F1626A2F376CD5898C79CAD1E33CA99B14805B20F9813B339FA
            0286263181DA1001336D40840D72DAA865C68F857034E5252D229C4504D01774
            A3492F78E85693EAD2DD05298EC58579BC09E5774CD0FB2BADC2A116F37BDAAC
            B4B007FDC0676D6DADBB377CF0FECD575CFDFD3BE96F0B8C10261CD6B91A6080
            53476080EBAFD93FE24B846A70F800B3B3BD89CF58AE636104D28C954227620D
            DBD30C33D59E961BDE9C754AAA7EB533DA4117F1658C9134712AC8F047CF18C2
            DC2C43534B5BA7D537B7701ED1C98EC7CB259622D6F462CBD7C557A404BA14E3
            92610329E8315E848D849AB861D4CEC592D6605777FBC6CAAADD6B5EFBC36B8F
            BDF0CACB75A086618618E12007036CB4533FF393411909C00DD75CB15F335FA2
            59EBE550163ECD584907114C4A563696C0D11229D1C79142E909920AEA8766B4
            C30C6C29872A278695E2A7BE0C85E36C13B11C4AD48BD0BD10416B3D265AF6F4
            1CFA5050D28EFB948A3956C6CEEE20AF7EB5F1E2479BE9DE63BE6E341517C110
            85ACEB7C770866D89F83291AE2326DC862912673C7EA83D5551F3CB36EFD3BB7
            3CF1CC636F92D70D13F412F673C332C08DD7EE27F131F288B08999DFAFE50109
            E90AB2C6895012D97E760822D400B4FD4AAA2F5A86A42BA8229D41A89D548613
            F18597AECF620A590975A0D4C51902DF3A720E9A52A796B682320A48BFCDCBCD
            43D473AEC07947369753A413C8B2AF9D433D77FC3BB02B043047F7725F508A63
            E938B694E80BDA4568E9CA429F513FF7D54722018B86EA22B5D59B5EB8E1961F
            7DB32BD0B6D5ED3FA33BB53E5763F8035BF9995B52614EFCA61188AFD924A269
            109D02037E3490CAD7CCCF44E1D3604A2A8811B4E5D240680DD675B0014DEC57
            524AA9A493FAA959A79D8A666C989B4679DC124EAD5C84D7D5B3AAAA5AE7CC20
            356F34716D0773B833C08D2B73F17A502BA791921CAAD70FDC8B5938C05DEF0E
            B694528974E1B504DB427C4BC99BC46C75D5B7D1B435144E30D012DD5DB1E5A5
            175E7DE5FBEFBDFFE13A57D6940E70636919E0E61F7D6F44B1AFB5551A32F7CF
            B05CA18DB2D54BCC240DAC18241BDB7926C4A743FD9C1848D7BE442C0D801841
            DAF8FED4D9AF81BE8418AEB33B6462BA7C3EE926D12F29A46C11A9A9A5D5AA6B
            EA11DBFD268FB2FBF92C9615E90DBC1EEF9C2544B8AE1541CF511DFD1053125C
            BBB7491327B26CF87867226CCD2D1DD6C85D47592025314AB8B720C990CBCE29
            176691793CA5F83E457FFFFA1BD7DC75FF239AF5B530C08748809B9315DD725D
            9CF81073545B3DEDF57BB8BE12D51A88C81271348B730FE05ACE6121C4E14C1F
            D370620721E63A505241CF203D240786555C3A8306444B5018834CC5EE2A2E93
            A427BEB67593264C706E267BD92DC82C2C3D40D24B9752C22882BAA5D4C2ABDE
            1D9C2BA43283A38F7081243F37DF4AC6175A21EF3D68E288F8323BD737C5F505
            3168212FC74C292DC1EA18DF524A324A81563F33F11F6EFA2870E34FEF78A037
            E6D64EE12D575364939D72C14D4E1D3FB9EECA95D8B633DAE73B05F9D1B7F134
            5B3B5074725066345BB58E9275405D98ED9D248C08A6599ACDA0EF4F3B89FA44
            FC04438981C504927055B575D6D8D8C8193DABB7B83BE5690AB1FECD2A9FEE68
            F329E07E51115CF6813D5535EC02DA06E5698BC8F69A33065E50C9CFB30925C5
            A67A1DE907F36817D1DAD6C947B19AADB5A3C3B9DE5682E238093C6789E81B6B
            49C87E95A749D4D4D5D9F7AFB9BE36108CF05D5CF7AF40D99864805B7FBCEFC4
            A7A27E4E04EAE6834A127F397C50299799256EEF8774001262826E4CB49A35D9
            1844C40899CC0A31AD88AC72FA80D3C02E89A1775654B1856B6252C79C6C8978
            3D8BB4FB23E6CEE2AEA18E489CACB43FAAA3B2BACEF86717C97CBEA780C4C887
            213AF8366C20593716568711F272736DC6B4C9987EE3A672E925BAE718DF45B4
            3B3B09318696885296889271BC3EC75D472D115A22930DA544F8B2BA5DF5A39B
            DA2A6B1A9E8595D798D96BF87618E023FB60D78489CCFC8D70D1448007CC69ED
            1691B4B64A548A48FC37AE03567FA22211D2D941B0DE6A164BFA48BB97269EC0
            1918AA4C7720C45530F417D6EE81F94ACB16B00BF1CFBFAB511242F16229EB91
            B67CE3C68DB3D933A6C100D94E5EBA1FDD7390EE508D1449E4E7E6E4DA94C913
            D91DF8B918625C5EEDB2AA9A3A5E7E49D86C787B9883A589A5E36DFAD4C98962
            4E2869A1E524BE4404AC812542F717B4D4E471D164C2F8228EAC0BE853FCDD88
            548175EBED6B7BDE59FFE1AB54B416FF1CBE011F7335473EB2932FB8316BE151
            F38E3D76D151FF337FDEE1A7D3780E9907CC490C06318D6AFB156300451C896E
            CDA403D608156980247DE4B595D36CC8F1E9B3EC6E72F73AE54972C8EE20BF37
            A77F4C9753EB9B9A6D5745A563BD4CCD2DC82BB049932771A1D3C3818D0746E2
            CD24AC9B091C95ADAD6FB48ACAAA04089C6C2B83A8B96C0FB53B92D4913D41A6
            E39D157BD073C20EAE9B4B22BC816DA588F9B22993F896F0E00335493DDD60EA
            661BD982F9B9011DA38525C2CB9673F68CA9563E6542B2DCE34F3D1F79E8B167
            747FF06E1A78045F89774E116180CD30C00D2E00E3F10BF04B969C70CCD9272F
            5B7CECFC79738AB5850176C05C88235DCD2C29491EB73EF5CA3B79290377A01A
            4A4A9F54A980BEA0FAF5E68FB67D92144A0FE5C5B8DAABEFD855691DBC6D9B8A
            27EBDDE449136C0A1ABCF408298FCAD772A2FF38D6D0D402E3ECE14D9FF8D2A1
            57CDA64E99C8859202C43CAF82F93C4277BCC663D7EE4AE38C3F898F12CEC558
            9F95F0EADB9C993A857750D3FE88890298ADBBD0BFDA3BBA1D45B1048552B4DB
            F0E1C7B11B6EBDE3634E2C1FA4F0AFF15BF0714E23926000A2325F98E4590989
            19F823274F9CB0E2CCD34E3E0D8628C36A35980D41DA57270E56A7B544481268
            E0A488ED6B7DC395531B6A4B1F75D42E2217C5290FDD64B832893CE93132DC54
            ECA98609BA126027CC45ECCE9D399DB7960B9C349F7AE70396616B686CB1EADA
            6A960C2E7A21877564AD995C58C891AE5712C3EBE0277EC468F530CCCE8ADDBC
            4FE14C4C274B3681E2A2229B3B6B064CE37360C3FD48028A19B40C8AF8B50D8D
            76C50F6FACEEEA0E68D6DF4559DD250C10269DAB25F2B1ADB8E0FA24A02F22F6
            2C223E153F1785E7F8934F3AE1ECE54B4E3C72F6CC69C36B3D14C8D44947E842
            99D37647C4C9CD1E2CB633AD331D7E7B778F33C0620419B0B45515E3A5C34D85
            39CCCA1D80DD9535ACBBCDC92CBDAF28913B614209926082E9AA5813469E2DDB
            76C1087C3696C92FE696949834B1D451EAF273D213B296EF2288C97A6827D900
            11198A66974F331D24911CB5D3B5B6EF5D734B6B65558DEE0BACA5E0EBF8767C
            3F3714032490B478E6909072388BF0A805F30F3FFDE4A5272C3DFE980513FD7E
            DE760078A09CB63EDDC13077F623CE37017211937EFCFED6AF99A1355FF52466
            7E0033B5248366B80C3FD215B4AD144E3AAF592A2D7C4745653F6BA00B641967
            8A0AF4626A36DA7E33AFA9F50045D766F64F2C29B52266311F74E1A519443FF6
            11319DCA39487D3FB50D4DB6637725CA60A40F120F8477E4E1733266809B6EBB
            33F8C7751B5EA596B5F8E7F08D785892DF14E76A896EB115E7FF3805346454AC
            3B8EDCE9F82338E75E72FAA9279DB16CF171B3279596280FF081712298143911
            89B58B1334FEB386CFCBE54CD73E3520E28BB9F4210868D2AF0EC1B515D41ACE
            2EC8C408D20F14EF8748424C20FB7F655D23846EC072172796B686EA9946574B
            0CA88E9B8C818865947764DC5694EB87B1A3A6BEC88A2A2610338AE954AF7422
            D9FE6500D2AEA011EBA39E5D151D366BA64D9D58C289A15AB111FF1E7DEA85C8
            030F3FB90EC4BBF18FE22BF151FC20970903240A6711C9C76B8F329B70D1B213
            8F396BE5F225C71C3DFFF062D207D44999D3A0E93EA0B69239FEA1B76DE91A96
            FD3F84F148A237317C7A29A4070B9F0C3039FE6C44B31E89CFAEB15311D38920
            DA416889D07A9A5AAFF264246A6E6BB75A18411FAF102C1547713EA16733CA26
            3B4A9FEA11A10597D792D285A493F22746D38E40CF25C52F51978E931B5B5B79
            B5ADC7595ED8A6ABE888FEBD8D1FC5AEFFC91D1FC3500F802CBF85308C4FEB5C
            ADD1ADB6FCFCEBD2668E00D478A62A8DF3A74D9DBCE28C5397AF5A7AE2B1655C
            80D0A88E50C5E8B335681A301998348B355373071CDA0CAC4D225E8A5901785A
            8B952F256947459555D73740780F1FB0CA8148B98E2227BBBB0822A613234832
            8870224EAA822A22094F469EDD35B556535BCF75F65E559FF4CACFC9C9B3D9E5
            53AD94770B944E66A644A4FF74A3C18BC175AD4D463399A085926847F1D1786D
            3BBFFD83EBABFA94BEBB29B31EDF4FE923DDCFED33035C76F9379215DD72D30D
            1E1209A5F1B06CBFFFF855272F397BF9D2E3E7CD299F9E4BDE01751AB4CE9E10
            8A568475D587E7831003B69212E9921C12BDA983DFC4CCDDB2ADC2023DC1A448
            55BEC4AF872F8C48AB974125D161319166ABEAD34C4E886DE5EB4C7FC7EE6AAB
            6F6A52B29FD7D2A2192D669DCA567146D924E765D47E48290987C191406A4F84
            979D448633F52B056DC8A8FAF29DAB6F6EC1E4FC2C486BCCEC0D7C3B7E580703
            6C4302FC6858A47499A90C90C88711DCC44570298D33CD6C01CBC2E9A79DBC6C
            D9710B8F2C3DD04AA30C3A9D019446143ACD7011476BABD658CDE05C960BCD60
            FA9174D2B6B7EFACE482465C514B661041AFB145471EE628A024FB3911B42B08
            D3D19688E27245ADA6A6816FF73526F1607C244114C60C3B7B6AF549CC25AF57
            CCA64C2AB1C9EC1874349C2C9426A2FE8B79C5745AF61C65D83BFCC5D2EB7FBA
            26F0D6BB1B7E4F756BF1CFE1D531A925448776AEB6E8363BE9FC1F0D8D31444E
            3A06484585197CA4C7E3A7E1E78D2B2E5C72E6A92B56AF5876FC9C8925E3BDC0
            0E984B288D1A34114AEBFE84E25C3E1523C1D4BF995D9CE9EFDA53C5CD99C13A
            91F6EA73679461A21D5C2E518BDA6AE3C5D29D6C096B59464464E909799878E7
            62B0D1B7022AC86B6E6EE6E66EFF65417B737DD3680EDB3ABD9A9EA873A850D4
            4B2C7B5A224A8B72D32AC20F3DFE2C4ADF5309A5EF11EAABC20F7E408003DD9F
            8C01120DC10859C40BF009A571E1498B8F3D6BD58AA5C72C3AEA4FA434A26025
            670FDB2EADA92E3A20D1BA0383CE2E7CAAB64E96E3E61F3E9BFF4334BCB6AD75
            7F0FB6FB5D9532F418333E862EE13559F9268C1F87F4C8E2A2A6D96E0E80AA6B
            1BB0ECED6502ED16D46E3ECCB268FE61CE3530A7E151FC88B1C5680351D76DF8
            2876EDCDBFD88CD297B0F46D05278C1F958301B62301AE1D15722AD248122015
            577118413490D2584A7A06FEC899D3CB4E5EBD72D9A9CB171F77E02D8D4C55AD
            A712DBECC84D623417234C63739B6DD9B99BCFD40FD68DCACBA6D8ECE9539D23
            57FA37C8C9BE5F55D760DB76EDE16C209EEDF7FA6C3ADABE6EF1E8BB823E5E52
            C9E6068F1447198576EEAEE1FF1C75C791537E75A43B174980B29CD44552B247
            15ADAAADB76F7DFF0694BE6ECDFABB28B41E1FC48FDAB9DA7A6180F3FEF40C90
            DA23984132564A631970298DC79D79EA49521A8F443CCAF004F8C039476964FD
            963297ED735B65B52C7A2D831AD039FC3147CEE1D0C63F284FBB871A8C355B76
            EC66D6F73AF93A48D289DD9449A51CE4F04F226130656829525B3A35D4B78BB5
            4BD09532E525BCF488499CF81D8E9957973B12F0D18652FAFEEBAA1B5BB04E3E
            4399B5F837F0EDF88C9CABBD77872D3BEF9A8C0A09395309A032033D8C90AA34
            CE227FC1A2A38E387DF529CBD8492E28E5868D0BD801730805EBE408B8962BDA
            55D5F57C84B22BF9FD6035A22B5DC7209AF5A108A5135E1A7A2DA7821F6FDF8D
            A52EEC80A59C496798367902D7BF8C1341BE8BCCB53827B3EF4727751DB4B77B
            4F2D26642E9560DCD7CEA02FDB61B4F987CDE45670510234EAF09A9B7F19786B
            DDC65729B016FF3CBE112FB58160F4EEA032406A3761064DBB71C0A6E38F185F
            5CB4E4ACD356AC3E79D9097398295E6007C4490F90F9B7967FBFB26D57A5239E
            4514ADAF22AAA4C04C968109DCD095F6AE4675A77FF3B6DD68F77DD295BD5D19
            842F9F3AC97AF95F269204DA7D0877A0D74EA5125D60F3F65D4809BE7A068294
            41298FDA35CC9B33C326958C073A7AF7E0A3CF44EEFFDD93EF52E26EFCA3F82A
            7C149FB18301762201AECEB8E0819000E91A8511B28017E027E367E317A2249C
            73CAD2E3171D73F4BCCCA70A150C7462025DA2E8E2EBA3DB7655B1956B4259E3
            F3ADCC5059000BF3F26D2A5B3611B993ABDB1F6CD9C517CCF79E044E622B376B
            FA14A407FFB18432DA7E0E6C239196DEB0059DA11289239818420A1D47855C04
            F5DAE1EC1C664D9BA2AC51F977DFDF14FBFEF5B76D06F9813EBF95308CDF27F7
            67C70089A780115CC45395C6F933511A3FB1FAE455F0C2D482FC3C37F9FBE5B4
            AE77F26D416D0DEB1A9B9CB55D265837F714647AD5E99E5E00954F3434A1849B
            40D3501451FE246F0B58F7139222819308C568D5E80D5B77EE417AF424C04EA8
            B2BAF83169D2449BCE0D21C71CECE385123DB58331F8A712A5EF3FBFF7E32A98
            F2617235FBD71306F1FBEC5C1DBD3B6DE9797F3E1220DD93C00C5EE09AFD5309
            511A7D279CB56AF959A7AE583C6FD6F4B21C60FBEC3443B5B5EBE0137235754D
            BCB5D3EA1CF2E8C898AD15B3DCCD0BA77CD58B99AEE5E188D9D3B1E8E53A073B
            C5F9E2CFF44D8BF8BBB94ABE15A393BE2FA0EBF303310B90340B0E9FC93727B3
            1DDD4466EB29E3F26973301774F349DC6F5E717DCB9EEADA67A8672DFEF587D7
            DED471FE172F27BAEF0E06D80503FC30E31AFE544BC0701D811134EB73C19984
            9F6966474B693CF3D4E54B161F7B54A9CFEB7501CBD88958BA8BA033747D304A
            FF99A3B5BD83AD9EBE7C1A730C3A2EAEBCEBD2A5EEE7733906C58DE35FEEEA17
            70BD4BEB7982915AF8BE509B7C5B97738144FBFE741DD20DA1995CFC9C9D22FE
            B534481749877FD54DBF08BCF96EBFE3DDA647D6DE143BEF506280D4818119FC
            A4C7E3A7E18FE01EE332A402668513661197C4009C991323B4F27F0AB672E6DF
            D8DCDAAFB08E664520F91C0E97727C7C519C9B4552208528C5B227AC974BC230
            8C04BCA0E9BD0E7DCA10FDF3E7948FCA0670DFEF9E8CDCF7BBA7DEA53689FD47
            092B1FBDF366672FFAE9BFFB3AC97D77AE8EDEBF1C0990EE31618454A5710E38
            0B4F5BB1F8ECD3B0342E9C7F5821E9513B5DBD16F1F720BA138564C32FC8CBC1
            74DCCBBFB7EB621B184557402AC462497B7F7CD68E4EF8E8C591A30EE37C7FC2
            F016C744FB6FAFFBA0F7CA1BFA297DDB207E52E93B000C50C1127055A2BD5187
            07630918AE73308228900D4EC2D278D4AC1965A79CBBFA94952B961C3B95FF41
            A4E583ECF44E57B82B30DF6ACD4E60E8830E33A74F46DC1741F808EB74906F03
            F5B02308702BA8D351EC241134DF250974195456C744F9D4B090973ECA26975A
            1984E7502C356BC8F86ECE2DBEF9BDEB2B5394BEF71FBBEBE67E4ADFA7FE763F
            254067ACC2967CFA2F9F0152471166D01220A5B10CB894C6E3CF396DC5D9AB56
            2C3962F68CC14AA344BF66BFDEC9D312203D20C419FD8CA9136D16665ECD5AEA
            61E716731840378565E491A5AF97CB26BA20A2770B3BF95C0C26029339585243
            57C5F4E269515E2E1FAA2E74DEA1543DA3F19CE9DBBF5D715DF39EAAA4D2F7C6
            E377DDD231B0EC27FFF6B281A08CD2AEBF4606488C008CA059DF4F695C7CEC82
            334E5BB1E4C425C72D18A4344AEB1771F5DD1F9FC7CBBFB3E5050BD6F9447D43
            85DADB6BAB288B6127DF23E61546E750283FDBCB45515FDA13BCA1EA4AC0AFF8
            F16DB2F4BD427A2DFE797CD31377DF22614374AF3BF70BFBCD00BB91003FD85B
            E328637F6E4BC048DD8619FCE08CC74FC74B695C7AEEEA93CF3879E9F133D359
            1A251586DADF537E4497387FD0D9BE6E20EB3EA24E25472C08C23DBF7D3272EF
            6F1D4BDF5D241FC5577DEA9367F6FEF3A59F26DADF8D3140FFF1183105236481
            54889F8C9F835F783AB797CE5A75D2A20547CC111CD08173322CE9CA7BA00733
            B0CBAC28CF9FF69E42A2C537DED9D07BE5F5B76F26FD409FDFF6E43DB78489A7
            759FF8FC9804483B3023016104C861322295805B8E9F8F7E70CAA7CE5CB9F2E4
            25C78DA834829FB1D32D25BDBC2A8990AE70054ADFBF7DF73A297DBF23FF6EFC
            86A7EEF94990704877CEE7BF3664DE68325C5DB13DB6F8D3DF1F0D6E5A9CA7EE
            FD495AF85F12F09CCF7DCD4B7F8BF065F8C330F49C70F6AA93CEC6D278F89C34
            4A233807DC49E9FBC6B7AF6DAEACA97B9ACAD7E2FFC0D876100EEBE8FBB0F923
            65EE37033CFD57C00089413AFB735F4B551A67013F7AC9B10B569FB172D9622C
            8D25FB6A69A49E619D8C4C57FCF8F6C09BEB36BE02E21A337B01DFC4D8C60887
            75F479D8FC9132F79B019EB9F7D691DAF88BCB3FEB735F75D1691F7E3C7E3A7E
            1ED6C5A59F3AE394D5A7AF5832AB645C9107D80173773DF444E4EE879E78870A
            EFC23F86AF625C1D4B1FF1611D7D1D367FA4CCFD6780FBFEFA182075D0CEFA9B
            AF669196723899700E7ED16A298DA72D5FB470DEDC02D2FBE55EFFE3FBBD6CF9
            3653C9AFF10FE2B73D73DFAD61C25139FA372ABCA190F43F838CEFC70D953F22
            FCD9BF7206480CC0997FE348851CD2494BE3BCB9334F3D7BD5F215A72C3D6E2A
            1F7DD4F241F6E8DD6E3E1B73F9B7AFDDCDF5AE472875377E03E319241CB5A35F
            A3C64D87B8FF0C70FF5FB704483768675EFAD584D2388DFCC3511A8FFFE4EA93
            CF5E79D20987CF292F93391AF0F04E4ADFD7FFEB9A663E1FF334986BF16F3C7B
            FFAD9D841939FA9211FE40E4FD6680E70E4106480CE219977E55B33E8FF444FC
            6CFCD15818579FB36A0596C6A34A3003BB800D7252FAFEFBDA9F75BFF5DE07AF
            90B916FF3CBE99B11C51E903AF9FA30FFDD299265CB2782DF8F457322D97C47F
            EEFE9F26E3876AE48C4BBFE2E2D9A53496104EC34B695C26A5F18C5396CE1CA8
            34AE79E0B130D6BE84D2F738F8558CE3A8943E70FB39DAEE97CE34B1DF0CF0FC
            1803F41BF3D5977E250B403FA5F113A72DE726DBD2A3171E39B7E0F76FAD8F7E
            377EA7EFD7E03D88DFCE188E5AE903BF9FA3BD7EE94C13FBCF00BF1E9300E906
            7DF5258E54C821AF145F8E3F0AA57165654D7D21C7BBEF93FE1D7EE3F3BFFE69
            90709F1DEDEC735915DC6F065025637EC41190D2580C56197E1CBE11BF13DF89
            3FA86E8C01FE7787DF4D735A22628451BC428283E71C063878CD8FB57CB04760
            8C010E36050E72FB630C70900970B09B1F6380834D8183DCFE18031C64021CEC
            E6C718E06053E020B73FC60007990007BBF9310638D81438C8ED8F31C04126C0
            C16EFEFF03A4E305B7CA316CAF0000000049454E44AE426082}
          HightQuality = False
        end
        object sRepTanqueFCT: TfrxSubreport
          Align = baWidth
          Top = 586.960629920000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = fxLMC.Page4
        end
        object SysMemo3: TfrxSysMemoView
          Left = 615.307086610000000000
          Top = 68.031540000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo144: TfrxMemoView
          Left = 287.244094488189000000
          Top = 193.889763780000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'N.'#194#186' de Ordem:')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          Left = 385.511811020000000000
          Top = 193.889763780000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM_ORD_LMC'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbEmpresa."NUM_ORD_LMC"]')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData3: TfrxMasterData
        Height = 17.007874020000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = FrxDBMaster
        DataSetName = 'FrxDBMaster'
        RowCount = 0
        object Memo58: TfrxMemoView
          Left = 1.889763780000000000
          Width = 47.244094490000000000
          Height = 17.007874020000000000
          ShowHint = False
          DataField = 'N_TANQUE'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[FrxDBMaster."N_TANQUE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 139.842519690000000000
          Width = 158.740157480000000000
          Height = 17.007874020000000000
          ShowHint = False
          DataField = 'FECHAMENTO_VENDIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."FECHAMENTO_VENDIDO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 302.362204720000000000
          Width = 137.952755910000000000
          Height = 17.007874020000000000
          ShowHint = False
          DataField = 'ESTOQUE_ABERT'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."ESTOQUE_ABERT"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 566.929133860000000000
          Width = 108.472472680000000000
          Height = 17.007874020000000000
          ShowHint = False
          DataField = 'QTDE_VENDIDO_DIA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."QTDE_VENDIDO_DIA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 49.133890000000000000
          Width = 47.244094490000000000
          Height = 17.007874020000000000
          ShowHint = False
          DataField = 'BOMBA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[FrxDBMaster."BOMBA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 94.488250000000000000
          Width = 47.244094490000000000
          Height = 17.007874020000000000
          ShowHint = False
          DataField = 'BICO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[FrxDBMaster."BICO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 442.205010000000000000
          Width = 122.834635910000000000
          Height = 17.007874020000000000
          ShowHint = False
          DataField = 'AFERICOES'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBMaster."AFERICOES"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData2: TfrxMasterData
        Height = 17.141732290000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSetName = 'FrxDbRecebido'
        RowCount = 0
        object Memo106: TfrxMemoView
          Left = 568.819266220000000000
          Width = 106.582677170000000000
          Height = 17.007874020000000000
          ShowHint = False
          DataField = 'QTDE'
          DataSetName = 'FrxDbRecebido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDbRecebido."QTDE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 445.984254410000000000
          Top = 0.133858270000000000
          Width = 106.582677170000000000
          Height = 17.007874020000000000
          ShowHint = False
          DataField = 'TAN_NUM_FIS'
          DataSetName = 'FrxDbRecebido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[FrxDbRecebido."TAN_NUM_FIS"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 1.889763780000000000
          Top = 0.133858270000000000
          Width = 428.598637560000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo40OnBeforePrint'
          ShowHint = False
          DataField = 'COD_NOTA_ENT'
          DataSetName = 'FrxDbRecebido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[FrxDbRecebido."COD_NOTA_ENT"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData6: TfrxMasterData
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = Frxdbtanque
        DataSetName = 'Frxdbtanque'
        RowCount = 0
        object Memo180: TfrxMemoView
          Left = 7.559060000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DESCRICAO'
          DataSet = Frxdbtanque
          DataSetName = 'Frxdbtanque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Frxdbtanque."DESCRICAO"]')
          ParentFont = False
        end
        object Memo181: TfrxMemoView
          Left = 434.645950000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LITROS'
          DataSet = Frxdbtanque
          DataSetName = 'Frxdbtanque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Frxdbtanque."LITROS"]')
          ParentFont = False
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData7: TfrxMasterData
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = Frxdbtanque
        DataSetName = 'Frxdbtanque'
        RowCount = 0
        object Memo182: TfrxMemoView
          Left = 7.559060000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DESCRICAO'
          DataSet = Frxdbtanque
          DataSetName = 'Frxdbtanque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Frxdbtanque."DESCRICAO"]')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          Left = 434.645950000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LITROS'
          DataSet = Frxdbtanque
          DataSetName = 'Frxdbtanque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Frxdbtanque."LITROS"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDesigner1: TfrxDesigner
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
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 328
    Top = 85
  end
  object Frxdbtanque: TfrxDBDataset
    UserName = 'Frxdbtanque'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COD_TANQUE=COD_TANQUE'
      'ID_TANQUE=ID_TANQUE'
      'LITROS=LITROS'
      'ULTATUAL=ULTATUAL'
      'ULTATUALCODSETOR=ULTATUALCODSETOR'
      'ULTATUALCODSETORUSER=ULTATUALCODSETORUSER'
      'DATAHORA=DATAHORA'
      'ENABLED=ENABLED'
      'OBS=OBS'
      'COD_PRODUTOS=COD_PRODUTOS'
      'LITROS_ATUAL=LITROS_ATUAL'
      'VLR_SAI=VLR_SAI'
      'VLR_ENT=VLR_ENT'
      'EST_INI=EST_INI'
      'EST_ATU=EST_ATU'
      'DAT_ULT_ENT=DAT_ULT_ENT'
      'NUM_NF=NUM_NF'
      'DAT_ULT_SAI=DAT_ULT_SAI'
      'DESCRICAO=DESCRICAO'
      'DESC_UNIDADE=DESC_UNIDADE')
    DataSet = QryTanque
    BCDToCurrency = False
    Left = 152
    Top = 2
  end
  object FrxDBMaster: TfrxDBDataset
    UserName = 'FrxDBMaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DATA=DATA'
      'COD_PRODUTO=COD_PRODUTO'
      'N_TANQUE=N_TANQUE'
      'BOMBA=BOMBA'
      'BICO=BICO'
      'ESTOQUE_ABERT=ESTOQUE_ABERT'
      'NOTA1_RECEBIDA=NOTA1_RECEBIDA'
      'NOTA2_RECEBIDA=NOTA2_RECEBIDA'
      'NOTA3_RECEBIDA=NOTA3_RECEBIDA'
      'NOTA4_RECEBIDA=NOTA4_RECEBIDA'
      'QTDE1_RECEBIDO=QTDE1_RECEBIDO'
      'QTDE2_RECEBIDO=QTDE2_RECEBIDO'
      'QTDE3_RECEBIDO=QTDE3_RECEBIDO'
      'QTDE4_RECEBIDO=QTDE4_RECEBIDO'
      'FECHAMENTO_VENDIDO=FECHAMENTO_VENDIDO'
      'AFERICOES=AFERICOES'
      'PERDA_SOBRAS=PERDA_SOBRAS'
      'ESTOQUE_ESCRITURAL=ESTOQUE_ESCRITURAL'
      'ESTOQUE_FECHAMENTO=ESTOQUE_FECHAMENTO'
      'QTDE_VENDIDO_DIA=QTDE_VENDIDO_DIA'
      'QTDE_TOTAL_RECEBIDO=QTDE_TOTAL_RECEBIDO'
      'VOLUME_DISPONIVEL=VOLUME_DISPONIVEL'
      'DATA1_RECEBIDO=DATA1_RECEBIDO'
      'DATA2_RECEBIDO=DATA2_RECEBIDO'
      'DATA3_RECEBIDO=DATA3_RECEBIDO'
      'DATA4_RECEBIDO=DATA4_RECEBIDO'
      'VALOR_VENDAS_DIA=VALOR_VENDAS_DIA'
      'VALOR_VENDAS_MES=VALOR_VENDAS_MES')
    DataSet = QryMaster
    BCDToCurrency = False
    Left = 96
  end
  object frxDbEmpresa: TfrxDBDataset
    UserName = 'frxDbEmpresa'
    CloseDataSource = False
    DataSet = DM.SDS_Empresa
    BCDToCurrency = False
    Left = 16
    Top = 1
  end
  object PopupMenu1: TPopupMenu
    Left = 256
    Top = 81
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object QryVEndido: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    SQL.Strings = (
      'select distinct'
      'movimentacao_combustivel.tan_num_fis,'
      'sum(movimentacao_combustivel.qtde) as Q_total,'
      'sum(movimentacao_combustivel.total) as v_total,'
      
        '(select sum(movimentacao_combustivel.enc_abt) AS Enc_abr  from m' +
        'ovimentacao_combustivel'
      'where movimento=3 and data =:datai AND CODPRODUTO =:CODPRO),'
      
        '(select sum(movimentacao_combustivel.enc_fct) AS enc_fct  from m' +
        'ovimentacao_combustivel'
      'where movimento=4 and data =:dataf AND CODPRODUTO =:CODPRO)'
      'from movimentacao_combustivel'
      
        'where movimento=2 and data between :datai and :dataf AND CODPROD' +
        'UTO =:CODPRO'
      'group by'
      'movimentacao_combustivel.tan_num_fis')
    Left = 120
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end>
    object QryVEndidoTAN_NUM_FIS: TIntegerField
      FieldName = 'TAN_NUM_FIS'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.TAN_NUM_FIS'
      Required = True
    end
    object QryVEndidoQ_TOTAL: TIBBCDField
      FieldName = 'Q_TOTAL'
      Precision = 18
      Size = 3
    end
    object QryVEndidoV_TOTAL: TIBBCDField
      FieldName = 'V_TOTAL'
      Precision = 18
      Size = 2
    end
    object QryVEndidoENC_ABR: TIBBCDField
      FieldName = 'ENC_ABR'
      Precision = 18
      Size = 3
    end
    object QryVEndidoENC_FCT: TIBBCDField
      FieldName = 'ENC_FCT'
      Precision = 18
      Size = 3
    end
  end
  object QryTanque1: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    SQL.Strings = (
      'select'
      '  TANQUE.COD_TANQUE,'
      '  TANQUE.ID_TANQUE,'
      '  TANQUE.LITROS,'
      '  TANQUE.ULTATUAL,'
      '  TANQUE.ULTATUALCODSETOR,'
      '  TANQUE.ULTATUALCODSETORUSER,'
      '  TANQUE.DATAHORA,'
      '  TANQUE.ENABLED,'
      '  TANQUE.OBS,'
      '  TANQUE.COD_PRODUTOS,'
      '  TANQUE.LITROS_ATUAL,'
      '  TANQUE.VLR_SAI,'
      '  TANQUE.VLR_ENT,'
      '  TANQUE.EST_INI,'
      '  TANQUE.EST_ATU,'
      '  TANQUE.DAT_ULT_ENT,'
      '  TANQUE.NUM_NF,'
      '  TANQUE.DAT_ULT_SAI,'
      '  PRODUTOS.DESCRICAO'
      'from'
      'tanque'
      ' INNER JOIN PRODUTOS ON (TANQUE.COD_PRODUTOS=PRODUTOS.CODIGO)'
      'where COD_PRODUTOS =:CODPRO')
    Left = 184
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end>
    object QryTanque1COD_TANQUE: TIntegerField
      FieldName = 'COD_TANQUE'
      Origin = 'TANQUE.COD_TANQUE'
      Required = True
    end
    object QryTanque1ID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'TANQUE.ID_TANQUE'
      Required = True
    end
    object QryTanque1LITROS: TIBBCDField
      FieldName = 'LITROS'
      Origin = 'TANQUE.LITROS'
      Required = True
      Precision = 18
      Size = 3
    end
    object QryTanque1ULTATUAL: TDateTimeField
      FieldName = 'ULTATUAL'
      Origin = 'TANQUE.ULTATUAL'
    end
    object QryTanque1ULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'TANQUE.ULTATUALCODSETOR'
    end
    object QryTanque1ULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'TANQUE.ULTATUALCODSETORUSER'
    end
    object QryTanque1DATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'TANQUE.DATAHORA'
    end
    object QryTanque1ENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'TANQUE.ENABLED'
    end
    object QryTanque1OBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'TANQUE.OBS'
      Size = 255
    end
    object QryTanque1COD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'TANQUE.COD_PRODUTOS'
    end
    object QryTanque1LITROS_ATUAL: TIBBCDField
      FieldName = 'LITROS_ATUAL'
      Origin = 'TANQUE.LITROS_ATUAL'
      Precision = 18
      Size = 3
    end
    object QryTanque1VLR_SAI: TIBBCDField
      FieldName = 'VLR_SAI'
      Origin = 'TANQUE.VLR_SAI'
      Precision = 18
      Size = 3
    end
    object QryTanque1VLR_ENT: TIBBCDField
      FieldName = 'VLR_ENT'
      Origin = 'TANQUE.VLR_ENT'
      Precision = 18
      Size = 3
    end
    object QryTanque1EST_INI: TIBBCDField
      FieldName = 'EST_INI'
      Origin = 'TANQUE.EST_INI'
      Precision = 18
      Size = 3
    end
    object QryTanque1EST_ATU: TIBBCDField
      FieldName = 'EST_ATU'
      Origin = 'TANQUE.EST_ATU'
      Precision = 18
      Size = 3
    end
    object QryTanque1DAT_ULT_ENT: TDateField
      FieldName = 'DAT_ULT_ENT'
      Origin = 'TANQUE.DAT_ULT_ENT'
    end
    object QryTanque1NUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = 'TANQUE.NUM_NF'
    end
    object QryTanque1DAT_ULT_SAI: TDateField
      FieldName = 'DAT_ULT_SAI'
      Origin = 'TANQUE.DAT_ULT_SAI'
    end
    object QryTanque1DESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'PRODUTOS.DESCRICAO'
      Size = 70
    end
  end
  object QryMaster: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    Active = True
    SQL.Strings = (
      'select * from MOVIMENTACAO_COMB_LMC'
      'where data between :datai and :dataf and COD_PRODUTO=:codpro')
    Left = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codpro'
        ParamType = ptUnknown
      end>
    object QryMasterDATA: TDateField
      FieldName = 'DATA'
      Origin = '"MOVIMENTACAO_COMB_LMC"."DATA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMasterCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = '"MOVIMENTACAO_COMB_LMC"."COD_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMasterN_TANQUE: TIntegerField
      FieldName = 'N_TANQUE'
      Origin = '"MOVIMENTACAO_COMB_LMC"."N_TANQUE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMasterBOMBA: TIntegerField
      FieldName = 'BOMBA'
      Origin = '"MOVIMENTACAO_COMB_LMC"."BOMBA"'
    end
    object QryMasterBICO: TIBStringField
      FieldName = 'BICO'
      Origin = '"MOVIMENTACAO_COMB_LMC"."BICO"'
      Size = 2
    end
    object QryMasterESTOQUE_ABERT: TIBBCDField
      FieldName = 'ESTOQUE_ABERT'
      Origin = '"MOVIMENTACAO_COMB_LMC"."ESTOQUE_ABERT"'
      Precision = 18
      Size = 4
    end
    object QryMasterNOTA1_RECEBIDA: TIBStringField
      FieldName = 'NOTA1_RECEBIDA'
      Origin = '"MOVIMENTACAO_COMB_LMC"."NOTA1_RECEBIDA"'
    end
    object QryMasterNOTA2_RECEBIDA: TIBStringField
      FieldName = 'NOTA2_RECEBIDA'
      Origin = '"MOVIMENTACAO_COMB_LMC"."NOTA2_RECEBIDA"'
    end
    object QryMasterNOTA3_RECEBIDA: TIBStringField
      FieldName = 'NOTA3_RECEBIDA'
      Origin = '"MOVIMENTACAO_COMB_LMC"."NOTA3_RECEBIDA"'
    end
    object QryMasterNOTA4_RECEBIDA: TIBStringField
      FieldName = 'NOTA4_RECEBIDA'
      Origin = '"MOVIMENTACAO_COMB_LMC"."NOTA4_RECEBIDA"'
    end
    object QryMasterQTDE1_RECEBIDO: TIBBCDField
      FieldName = 'QTDE1_RECEBIDO'
      Origin = '"MOVIMENTACAO_COMB_LMC"."QTDE1_RECEBIDO"'
      Precision = 18
      Size = 4
    end
    object QryMasterQTDE2_RECEBIDO: TIBBCDField
      FieldName = 'QTDE2_RECEBIDO'
      Origin = '"MOVIMENTACAO_COMB_LMC"."QTDE2_RECEBIDO"'
      Precision = 18
      Size = 4
    end
    object QryMasterQTDE3_RECEBIDO: TIBBCDField
      FieldName = 'QTDE3_RECEBIDO'
      Origin = '"MOVIMENTACAO_COMB_LMC"."QTDE3_RECEBIDO"'
      Precision = 18
      Size = 4
    end
    object QryMasterQTDE4_RECEBIDO: TIBBCDField
      FieldName = 'QTDE4_RECEBIDO'
      Origin = '"MOVIMENTACAO_COMB_LMC"."QTDE4_RECEBIDO"'
      Precision = 18
      Size = 4
    end
    object QryMasterFECHAMENTO_VENDIDO: TIBBCDField
      FieldName = 'FECHAMENTO_VENDIDO'
      Origin = '"MOVIMENTACAO_COMB_LMC"."FECHAMENTO_VENDIDO"'
      Precision = 18
      Size = 4
    end
    object QryMasterAFERICOES: TIBBCDField
      FieldName = 'AFERICOES'
      Origin = '"MOVIMENTACAO_COMB_LMC"."AFERICOES"'
      Precision = 18
      Size = 4
    end
    object QryMasterPERDA_SOBRAS: TIBBCDField
      FieldName = 'PERDA_SOBRAS'
      Origin = '"MOVIMENTACAO_COMB_LMC"."PERDA_SOBRAS"'
      Precision = 18
      Size = 4
    end
    object QryMasterESTOQUE_ESCRITURAL: TIBBCDField
      FieldName = 'ESTOQUE_ESCRITURAL'
      Origin = '"MOVIMENTACAO_COMB_LMC"."ESTOQUE_ESCRITURAL"'
      Precision = 18
      Size = 4
    end
    object QryMasterESTOQUE_FECHAMENTO: TIBBCDField
      FieldName = 'ESTOQUE_FECHAMENTO'
      Origin = '"MOVIMENTACAO_COMB_LMC"."ESTOQUE_FECHAMENTO"'
      Precision = 18
      Size = 4
    end
    object QryMasterQTDE_VENDIDO_DIA: TIBBCDField
      FieldName = 'QTDE_VENDIDO_DIA'
      Origin = '"MOVIMENTACAO_COMB_LMC"."QTDE_VENDIDO_DIA"'
      Precision = 18
      Size = 4
    end
    object QryMasterQTDE_TOTAL_RECEBIDO: TIBBCDField
      FieldName = 'QTDE_TOTAL_RECEBIDO'
      Origin = '"MOVIMENTACAO_COMB_LMC"."QTDE_TOTAL_RECEBIDO"'
      Precision = 18
      Size = 4
    end
    object QryMasterVOLUME_DISPONIVEL: TIBBCDField
      FieldName = 'VOLUME_DISPONIVEL'
      Origin = '"MOVIMENTACAO_COMB_LMC"."VOLUME_DISPONIVEL"'
      Precision = 18
      Size = 4
    end
    object QryMasterDATA1_RECEBIDO: TDateField
      FieldName = 'DATA1_RECEBIDO'
      Origin = '"MOVIMENTACAO_COMB_LMC"."DATA1_RECEBIDO"'
    end
    object QryMasterDATA2_RECEBIDO: TDateField
      FieldName = 'DATA2_RECEBIDO'
      Origin = '"MOVIMENTACAO_COMB_LMC"."DATA2_RECEBIDO"'
    end
    object QryMasterDATA3_RECEBIDO: TDateField
      FieldName = 'DATA3_RECEBIDO'
      Origin = '"MOVIMENTACAO_COMB_LMC"."DATA3_RECEBIDO"'
    end
    object QryMasterDATA4_RECEBIDO: TDateField
      FieldName = 'DATA4_RECEBIDO'
      Origin = '"MOVIMENTACAO_COMB_LMC"."DATA4_RECEBIDO"'
    end
    object QryMasterVALOR_VENDAS_DIA: TIBBCDField
      FieldName = 'VALOR_VENDAS_DIA'
      Origin = '"MOVIMENTACAO_COMB_LMC"."VALOR_VENDAS_DIA"'
      Precision = 18
      Size = 2
    end
    object QryMasterVALOR_VENDAS_MES: TIBBCDField
      FieldName = 'VALOR_VENDAS_MES'
      Origin = '"MOVIMENTACAO_COMB_LMC"."VALOR_VENDAS_MES"'
      Precision = 18
      Size = 2
    end
  end
  object QryTotais: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    SQL.Strings = (
      'select distinct'
      'movimentacao_combustivel.tan_num_fis,'
      
        '(select sum(movimentacao_combustivel.qtde) AS Quant_Ent  from mo' +
        'vimentacao_combustivel'
      
        'where movimento=1 and data between :datai and :dataf AND CODPROD' +
        'UTO =:CODPRO),'
      
        '(select sum(movimentacao_combustivel.enc_abt) AS Enc_abr  from m' +
        'ovimentacao_combustivel'
      'where movimento=3 and data =:datai AND CODPRODUTO =:CODPRO),'
      ''
      
        'sum((select sum(movimentacao_combustivel.qtde) AS Quant_Ent  fro' +
        'm movimentacao_combustivel'
      
        'where movimento=1 and data between :datai and :dataf AND CODPROD' +
        'UTO =:CODPRO) +'
      
        '(select sum(movimentacao_combustivel.enc_abt) AS Enc_abr  from m' +
        'ovimentacao_combustivel'
      
        'where movimento=3 and data =:datai AND CODPRODUTO =:CODPRO)) AS ' +
        'ENT_TOTAL,'
      ''
      
        'sum((select sum(movimentacao_combustivel.qtde) AS Quant_Ent  fro' +
        'm movimentacao_combustivel'
      
        'where movimento=1 and data between :datai and :dataf AND CODPROD' +
        'UTO =:CODPRO) +'
      
        '(select sum(movimentacao_combustivel.enc_abt) AS Enc_abr  from m' +
        'ovimentacao_combustivel'
      'where movimento=3 and data =:datai AND CODPRODUTO =:CODPRO) -'
      
        '(select sum(movimentacao_combustivel.total) AS Vlr_total_sai fro' +
        'm movimentacao_combustivel'
      
        'where movimento=2 and data between :datai and :dataf AND CODPROD' +
        'UTO =:CODPRO)) AS SALDO_ESC,'
      ''
      
        '(select sum(movimentacao_combustivel.enc_fct) AS enc_fct  from m' +
        'ovimentacao_combustivel'
      'where movimento=4 and data =:dataf AND CODPRODUTO =:CODPRO),'
      ''
      
        '(select sum(movimentacao_combustivel.qtde) AS Enc_sai  from movi' +
        'mentacao_combustivel'
      
        'where movimento=2 and data between :datai and :dataf AND CODPROD' +
        'UTO =:CODPRO),'
      ''
      
        '(select sum(movimentacao_combustivel.total) AS Vlr_vda_mes from ' +
        'movimentacao_combustivel'
      
        'where movimento=2 and data between :dtmesi and :dtmesf AND CODPR' +
        'ODUTO =:CODPRO),'
      ''
      
        '(select sum(movimentacao_combustivel.total) AS Vlr_total_sai fro' +
        'm movimentacao_combustivel'
      
        'where movimento=2 and data between :datai and :dataf AND CODPROD' +
        'UTO =:CODPRO)'
      'from movimentacao_combustivel'
      'where data between :datai and :dataf AND CODPRODUTO =:CODPRO'
      'group by'
      '  movimentacao_combustivel.tan_num_fis')
    Left = 88
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtmesi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtmesf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end>
    object QryTotaisTAN_NUM_FIS: TIntegerField
      FieldName = 'TAN_NUM_FIS'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.TAN_NUM_FIS'
      Required = True
    end
    object QryTotaisQUANT_ENT: TIBBCDField
      FieldName = 'QUANT_ENT'
      Precision = 18
      Size = 3
    end
    object QryTotaisENC_ABR: TIBBCDField
      FieldName = 'ENC_ABR'
      Precision = 18
      Size = 3
    end
    object QryTotaisENT_TOTAL: TIBBCDField
      FieldName = 'ENT_TOTAL'
      Precision = 18
      Size = 3
    end
    object QryTotaisSALDO_ESC: TIBBCDField
      FieldName = 'SALDO_ESC'
      Precision = 18
      Size = 3
    end
    object QryTotaisENC_FCT: TIBBCDField
      FieldName = 'ENC_FCT'
      Precision = 18
      Size = 3
    end
    object QryTotaisENC_SAI: TIBBCDField
      FieldName = 'ENC_SAI'
      Precision = 18
      Size = 3
    end
    object QryTotaisVLR_VDA_MES: TIBBCDField
      FieldName = 'VLR_VDA_MES'
      Precision = 18
      Size = 2
    end
    object QryTotaisVLR_TOTAL_SAI: TIBBCDField
      FieldName = 'VLR_TOTAL_SAI'
      Precision = 18
      Size = 2
    end
  end
  object QryRecebido: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    SQL.Strings = (
      'select distinct'
      '*'
      'from movimentacao_combustivel'
      
        'where movimento=1 and data between :datai and :dataf AND CODPROD' +
        'UTO =:CODPRO')
    Left = 152
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end>
    object QryRecebidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.CODIGO'
      Required = True
    end
    object QryRecebidoCOD_NOTA_ENT: TIntegerField
      FieldName = 'COD_NOTA_ENT'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.COD_NOTA_ENT'
    end
    object QryRecebidoTAN_NUM_FIS: TIntegerField
      FieldName = 'TAN_NUM_FIS'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.TAN_NUM_FIS'
      Required = True
    end
    object QryRecebidoBOM_NUM_FIS: TIntegerField
      FieldName = 'BOM_NUM_FIS'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.BOM_NUM_FIS'
    end
    object QryRecebidoBIC_NUM_LOG: TIBStringField
      FieldName = 'BIC_NUM_LOG'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.BIC_NUM_LOG'
      Size = 5
    end
    object QryRecebidoENC_ABT: TIBBCDField
      FieldName = 'ENC_ABT'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.ENC_ABT'
      Precision = 18
      Size = 3
    end
    object QryRecebidoENC_FCT: TIBBCDField
      FieldName = 'ENC_FCT'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.ENC_FCT'
      Precision = 18
      Size = 3
    end
    object QryRecebidoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.COD_CLIENTE'
    end
    object QryRecebidoCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.COD_VENDEDOR'
    end
    object QryRecebidoDATA: TDateField
      FieldName = 'DATA'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.DATA'
    end
    object QryRecebidoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.CODPRODUTO'
    end
    object QryRecebidoUNITARIO: TIBBCDField
      FieldName = 'UNITARIO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.UNITARIO'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryRecebidoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.UNIDADE'
      Size = 6
    end
    object QryRecebidoQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.QTDE'
      Required = True
      Precision = 18
      Size = 3
    end
    object QryRecebidoTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.TOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryRecebidoICMS_ALIQUOTA: TIBBCDField
      FieldName = 'ICMS_ALIQUOTA'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.ICMS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object QryRecebidoICMS_BASE: TIBBCDField
      FieldName = 'ICMS_BASE'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.ICMS_BASE'
      Precision = 18
      Size = 2
    end
    object QryRecebidoICMS_VALOR: TIBBCDField
      FieldName = 'ICMS_VALOR'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.ICMS_VALOR'
      Precision = 18
      Size = 2
    end
    object QryRecebidoCREDITO_ICMS: TIBBCDField
      FieldName = 'CREDITO_ICMS'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.CREDITO_ICMS'
      Precision = 18
      Size = 3
    end
    object QryRecebidoIPI_ALIQUOTA: TIBBCDField
      FieldName = 'IPI_ALIQUOTA'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.IPI_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object QryRecebidoIPI_BASE: TIBBCDField
      FieldName = 'IPI_BASE'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.IPI_BASE'
      Precision = 18
      Size = 2
    end
    object QryRecebidoIPI_VALOR: TIBBCDField
      FieldName = 'IPI_VALOR'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.IPI_VALOR'
      Precision = 18
      Size = 2
    end
    object QryRecebidoPIS_ALIQUOTA: TIBBCDField
      FieldName = 'PIS_ALIQUOTA'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.PIS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object QryRecebidoPIS_BASE: TIBBCDField
      FieldName = 'PIS_BASE'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.PIS_BASE'
      Precision = 18
      Size = 2
    end
    object QryRecebidoPIS_VALOR: TIBBCDField
      FieldName = 'PIS_VALOR'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.PIS_VALOR'
      Precision = 18
      Size = 2
    end
    object QryRecebidoCOFINS_ALIQUOTA: TIBBCDField
      FieldName = 'COFINS_ALIQUOTA'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.COFINS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object QryRecebidoCOFINS_BASE: TIBBCDField
      FieldName = 'COFINS_BASE'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.COFINS_BASE'
      Precision = 18
      Size = 2
    end
    object QryRecebidoCOFINS_VALOR: TIBBCDField
      FieldName = 'COFINS_VALOR'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.COFINS_VALOR'
      Precision = 18
      Size = 2
    end
    object QryRecebidoCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.CFOP'
      Size = 6
    end
    object QryRecebidoNUMERO_VDA: TIntegerField
      FieldName = 'NUMERO_VDA'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.NUMERO_VDA'
    end
    object QryRecebidoDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.DESCONTO'
      Precision = 18
      Size = 2
    end
    object QryRecebidoACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object QryRecebidoMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.MOVIMENTO'
    end
    object QryRecebidoBASE_CALCULO: TIBBCDField
      FieldName = 'BASE_CALCULO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.BASE_CALCULO'
      Precision = 18
      Size = 2
    end
    object QryRecebidoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.SITUACAO'
    end
    object QryRecebidoCUPOM_NUMERO: TIBStringField
      FieldName = 'CUPOM_NUMERO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.CUPOM_NUMERO'
      Size = 10
    end
    object QryRecebidoMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.MODELO'
      Size = 5
    end
    object QryRecebidoITEM: TIBStringField
      FieldName = 'ITEM'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.ITEM'
      Size = 5
    end
    object QryRecebidoCST: TIBStringField
      FieldName = 'CST'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.CST'
      Size = 3
    end
    object QryRecebidoMOVIMENTO_ESTOQUE: TIBBCDField
      FieldName = 'MOVIMENTO_ESTOQUE'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.MOVIMENTO_ESTOQUE'
      Required = True
      Precision = 18
      Size = 3
    end
    object QryRecebidoCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.COD_USUARIO'
    end
    object QryRecebidoLANCADO: TIntegerField
      FieldName = 'LANCADO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.LANCADO'
    end
  end
  object Qryperdas: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    SQL.Strings = (
      'SELECT'
      '  DATA_ACE,'
      '  SUM(ITENS_ACERTO_ESTOQUE.QUANT * -1) AS QUANT'
      'FROM'
      ' ITENS_ACERTO_ESTOQUE'
      
        ' INNER JOIN ACERTO_ESTOQUE ON (ITENS_ACERTO_ESTOQUE.COD_ACE=ACER' +
        'TO_ESTOQUE.COD_ACE)'
      'WHERE ACERTO_ESTOQUE.COD_MOT = 2 AND'
      '  (DATA_ACE BETWEEN :DATAI AND :DATAF) AND'
      '  (COD_PRO = :CODPRO)'
      'group by'
      'DATA_ACE')
    Left = 48
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end>
    object QryperdasQUANT: TIBBCDField
      FieldName = 'QUANT'
      Origin = 'ITENS_ACERTO_ESTOQUE.QUANT'
      Precision = 18
      Size = 3
    end
    object QryperdasDATA_ACE: TDateField
      FieldName = 'DATA_ACE'
      Origin = '"ACERTO_ESTOQUE"."DATA_ACE"'
      Required = True
    end
  end
  object QryMaster1: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    SQL.Strings = (
      'select distinct'
      'PRODUTOS.CODIGO,'
      'PRODUTOS.DESCRICAO,'
      'PRODUTOS.DESC_UNIDADE,'
      'movimentacao_combustivel.tan_num_fis,'
      'sum(movimentacao_combustivel.qtde) as Q_total,'
      'sum(movimentacao_combustivel.total) as v_total,'
      
        '(select sum(movimentacao_combustivel.enc_abt) AS Enc_abr  from m' +
        'ovimentacao_combustivel'
      
        'INNER JOIN PRODUTOS ON (MOVIMENTACAO_COMBUSTIVEL.CODPRODUTO=PROD' +
        'UTOS.CODIGO)'
      'where movimento=3 and data =:datai AND CODPRODUTO =:CODPRO),'
      
        '(select sum(movimentacao_combustivel.enc_fct) AS enc_fct  from m' +
        'ovimentacao_combustivel'
      
        'INNER JOIN PRODUTOS ON (MOVIMENTACAO_COMBUSTIVEL.CODPRODUTO=PROD' +
        'UTOS.CODIGO)'
      'where movimento=4 and data =:dataf AND CODPRODUTO =:CODPRO)'
      'from movimentacao_combustivel'
      
        'INNER JOIN PRODUTOS ON (MOVIMENTACAO_COMBUSTIVEL.CODPRODUTO=PROD' +
        'UTOS.CODIGO)'
      'where data between :datai and :dataf AND CODPRODUTO =:CODPRO'
      'group by'
      '  PRODUTOS.CODIGO,'
      '  PRODUTOS.DESCRICAO,'
      '  PRODUTOS.DESC_UNIDADE,'
      '  movimentacao_combustivel.tan_num_fis')
    Left = 16
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end>
  end
  object Dts_Master: TDataSource
    DataSet = QryMaster
    Left = 72
  end
  object QryTanque: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 
      'select'#13#10'  TANQUE.COD_TANQUE,'#13#10'  TANQUE.ID_TANQUE,'#13#10'  TANQUE.LITR' +
      'OS,'#13#10'  TANQUE.ULTATUAL,'#13#10'  TANQUE.ULTATUALCODSETOR,'#13#10'  TANQUE.UL' +
      'TATUALCODSETORUSER,'#13#10'  TANQUE.DATAHORA,'#13#10'  TANQUE.ENABLED,'#13#10'  TA' +
      'NQUE.OBS,'#13#10'  TANQUE.COD_PRODUTOS,'#13#10'  TANQUE.LITROS_ATUAL,'#13#10'  TAN' +
      'QUE.VLR_SAI,'#13#10'  TANQUE.VLR_ENT,'#13#10'  TANQUE.EST_INI,'#13#10'  TANQUE.EST' +
      '_ATU,'#13#10'  TANQUE.DAT_ULT_ENT,'#13#10'  TANQUE.NUM_NF,'#13#10'  TANQUE.DAT_ULT' +
      '_SAI,'#13#10'  PRODUTOS.DESCRICAO,'#13#10'  produtos.desc_unidade'#13#10'from'#13#10'tan' +
      'que'#13#10' INNER JOIN PRODUTOS ON (TANQUE.COD_PRODUTOS=PRODUTOS.CODIG' +
      'O)'#13#10
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'ID_TANQUE'
    MasterFields = 'N_TANQUE'
    MasterSource = Dts_Master
    PacketRecords = 0
    Params = <>
    Left = 128
    object QryTanqueCOD_TANQUE: TIntegerField
      FieldName = 'COD_TANQUE'
      Required = True
    end
    object QryTanqueID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Required = True
    end
    object QryTanqueLITROS: TFMTBCDField
      FieldName = 'LITROS'
      Required = True
      Precision = 15
      Size = 3
    end
    object QryTanqueULTATUAL: TSQLTimeStampField
      FieldName = 'ULTATUAL'
    end
    object QryTanqueULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
    end
    object QryTanqueULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
    end
    object QryTanqueDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
    end
    object QryTanqueENABLED: TIntegerField
      FieldName = 'ENABLED'
    end
    object QryTanqueOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object QryTanqueCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
    end
    object QryTanqueLITROS_ATUAL: TFMTBCDField
      FieldName = 'LITROS_ATUAL'
      Precision = 15
      Size = 3
    end
    object QryTanqueVLR_SAI: TFMTBCDField
      FieldName = 'VLR_SAI'
      Precision = 15
      Size = 3
    end
    object QryTanqueVLR_ENT: TFMTBCDField
      FieldName = 'VLR_ENT'
      Precision = 15
      Size = 3
    end
    object QryTanqueEST_INI: TFMTBCDField
      FieldName = 'EST_INI'
      Precision = 15
      Size = 3
    end
    object QryTanqueEST_ATU: TFMTBCDField
      FieldName = 'EST_ATU'
      Precision = 15
      Size = 3
    end
    object QryTanqueDAT_ULT_ENT: TDateField
      FieldName = 'DAT_ULT_ENT'
    end
    object QryTanqueNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
    end
    object QryTanqueDAT_ULT_SAI: TDateField
      FieldName = 'DAT_ULT_SAI'
    end
    object QryTanqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object QryTanqueDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
  end
end
