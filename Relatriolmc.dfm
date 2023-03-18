object FormrelatLmc: TFormrelatLmc
  Left = 228
  Top = 271
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
    ItemIndex = 0
    TabOrder = 1
    OnChange = combo_produtoChange
    Items.Strings = (
      ''
      'SELECIONAR'
      'TODOS')
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
    TabOrder = 2
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
    TabOrder = 3
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
  object DateEdit1: TDateEdit
    Left = 114
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
    TabOrder = 4
    Text = '01/01/1900'
  end
  object fxLMC: TfrxReport
    Version = '6.8.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40290.575864421300000000
    ReportOptions.LastChange = 41614.638779305600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      '  '
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
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
      Frame.Typ = []
      MirrorMode = []
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 1026.693570000000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        DataSet = frxDbEmpresa
        DataSetName = 'frxDbEmpresa'
        RowCount = 0
        object Memo57: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 120.472480000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Livro de Movimenta'#231#227'o de Combust'#237'veis (L.M.C.)')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 147.913420000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '(Portaria n.'#186' 26, 13/11/1992 do Departamento Nacional de Combust' +
              #237'veis)')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 193.740260000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N.'#186' de Ordem:')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 241.535560000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Termo de Abertura')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 303.921460000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              '           Cont'#233'm este livro  [TOTALPAGES#]   folhas numeradas e' +
              'letronicamente, do n.'#186' 1 ao n.'#186' [TOTALPAGES#] e serviu para o la' +
              'n'#231'amento das opera'#231#245'es do estabelecimento do contribuinte abaixo' +
              ' identifica:')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Top = 355.527830000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Top = 376.764070000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Top = 397.779840000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Top = 418.779840000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Top = 439.457020000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Top = 461.134200000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Inscri'#231#227'o Estadual:')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Top = 482.149970000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Top = 503.165740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Inscri'#231#227'o Municipal:')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Top = 523.858690000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Distribuidora com a qual opera:')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Top = 564.772110000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Capacidade nominal de armazenamento:')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Top = 780.362710000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Registrado na junta comercial sob n.'#186)
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 832.953310000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA8'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxrelatorio."LINHA8"]')
          ParentFont = False
        end
        object Line52: TfrxLineView
          Align = baCenter
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 912.528140000000000000
          Width = 257.008040000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo127: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 912.528140000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          DataField = 'PROPRIETARIO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."PROPRIETARIO"]')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 927.646260000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          DataField = 'CPF_PROPRIETARIO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."CPF_PROPRIETARIO"]')
          ParentFont = False
        end
        object Line53: TfrxLineView
          Align = baCenter
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 988.677800000000000000
          Width = 257.008040000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo129: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 988.677800000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          DataField = 'NOME_CONTADOR'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."NOME_CONTADOR"]')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 1003.795920000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          DataField = 'CRC_CONTADOR'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."CRC_CONTADOR"]')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Left = 48.133890000000000000
          Top = 355.393700790000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          DataField = 'RAZAO_SOCIAL'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 67.165430000000000000
          Top = 376.692913390000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."ENDERECO"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          AllowVectorExport = True
          Left = 45.165430000000000000
          Top = 397.614173230000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."BAIRRO"]')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 52.165430000000000000
          Top = 418.913385830000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."CIDADE"]')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Left = 52.165430000000000000
          Top = 439.456692910000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."UF"]')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 119.944960000000000000
          Top = 461.133858270000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          DataField = 'IE'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."IE"]')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 45.133890000000000000
          Top = 482.055118110000000000
          Width = 536.693260000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."CNPJ"]')
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Left = 123.740260000000000000
          Top = 503.354330710000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          DataField = 'IM'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."IM"]')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 191.653680000000000000
          Top = 523.897637800000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          DataField = 'DISTRIBUIDORA_COMBUSTIVEL'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."DISTRIBUIDORA_COMBUSTIVEL"]')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 397.780076770000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 445.795610000000000000
          Top = 397.614410000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."CEP"]')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 780.472433620000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'NUM_JUNT_COM'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NUM_JUNT_COM"]')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          AllowVectorExport = True
          Left = 561.259840080000000000
          Top = 68.031488740000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Folha n'#186)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line54: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 97.708720000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 3.779530000000000000
          Width = 226.771800000000000000
          Height = 90.708720000000000000
          DataField = 'LOGOMARCA'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object sRepTanqueABT: TfrxSubreport
          Align = baWidth
          AllowVectorExport = True
          Top = 586.960629920000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Page = fxLMC.Page2
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 615.307086610000000000
          Top = 68.031496060000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 193.889763780000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'NUM_ORD_LMC'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
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
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 1027.275707720000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        DataSet = FrxDBMaster
        DataSetName = 'FrxDBMaster'
        RowCount = 0
        object Line7: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 152.960730000000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 133.283550000000000000
          Width = 54.047244090000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto: ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 57.590600000000000000
          Top = 133.283550000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = Frxdbtanque
          DataSetName = 'Frxdbtanque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Frxdbtanque."DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 441.425480000000000000
          Top = 133.283550000000000000
          Height = 19.653543310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 561.370440000000000000
          Top = 133.283550000000000000
          Height = 19.653543310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 565.149970000000000000
          Top = 133.283550000000000000
          Width = 35.149606300000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 133.283550000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'DATA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."DATA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 445.205010000000000000
          Top = 133.283550000000000000
          Width = 52.157480310000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Unidade:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 503.457020000000000000
          Top = 133.283550000000000000
          Width = 54.047256300000000000
          Height = 18.897637800000000000
          DataField = 'DESC_UNIDADE'
          DataSet = Frxdbtanque
          DataSetName = 'Frxdbtanque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Frxdbtanque."DESC_UNIDADE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line11: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 172.590636610000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 153.519790000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Estoque de Abertura (medi'#231#227'o no in'#237'cio do dia)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line12: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 192.244179920000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 561.259842520000000000
          Top = 134.795336610000000000
          Height = 533.669315750000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 564.149970000000000000
          Top = 173.078850000000000000
          Width = 103.181146300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Estoque abertura')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 80.125984250000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 160.251968500000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 240.377952760000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 320.503937010000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 400.629921260000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 480.755905510000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 172.968589370000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line20: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 211.897723230000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 51.692950000000000000
          Top = 172.968589370000000000
          Width = 24.566914490000000000
          Height = 18.897637800000000000
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
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxDBMaster."N_TANQUE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 192.622132680000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          DataField = 'ESTOQUE_ABERT'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."ESTOQUE_ABERT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line21: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 231.551266540000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 212.275675980000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Volume recebido no dia (em litros)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 441.448818900000000000
          Top = 212.031496060000000000
          Height = 378.330708661417000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 444.205010000000000000
          Top = 212.275675980000000000
          Width = 103.181146300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanque descarga')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 563.929500000000000000
          Top = 212.275675980000000000
          Width = 103.181146300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Volume recebido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line23: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 363.834880000000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 567.149970000000000000
          Top = 192.622132680000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          DataField = 'ESTOQUE_ABERT'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."ESTOQUE_ABERT"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 441.448818900000000000
          Top = 344.181175590551000000
          Width = 238.866141730000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 443.984540000000000000
          Top = 344.559128350000000000
          Width = 103.181146300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total recebido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 344.559128350000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          DataField = 'QTDE_TOTAL_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."QTDE_TOTAL_RECEBIDO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line25: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 383.488262200001000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 363.834880000000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Volume vendido no dia (em litros)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 444.094488190000000000
          Top = 363.834880000000000000
          Width = 110.740206300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Volume Dispon'#237'vel')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line26: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 403.141805510001000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 50.669274250000000000
          Top = 383.488262200000000000
          Height = 206.740157480000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Left = 96.897608500000000000
          Top = 383.488262200000000000
          Height = 206.740174570000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          AllowVectorExport = True
          Left = 300.582870000000000000
          Top = 383.488262200000000000
          Height = 206.740157480000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 383.866214960000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 50.252010000000000000
          Top = 383.866214960000000000
          Width = 45.354330710000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bomba')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 139.944960000000000000
          Top = 383.866214960000000000
          Width = 158.740157480000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Encerrante de Fechamento')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 383.866214960000000000
          Width = 137.952814490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Encerrante de abertura')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 443.984540000000000000
          Top = 383.866214960001000000
          Width = 66.141744490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Aferi'#231#245'es')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 383.866214960001000000
          Width = 100.157514490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendas no bico')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line30: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 590.606680000000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line31: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 610.259915750000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line32: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 629.913459060000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line33: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 649.567002360000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 590.984325200000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor das vendas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line34: TfrxLineView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 590.606680000000000000
          Height = 311.433070866142000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 610.637868500000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor das vendas do dia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 630.291411810001000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor das vendas do m'#234's')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 649.944955120000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Para uso do revendedor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 377.952755910000000000
          Top = 590.984325200000000000
          Width = 167.433156300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendas no dia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 377.952755910000000000
          Top = 610.637868500000000000
          Width = 167.433156300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Estoque escritural')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 377.952755910000000000
          Top = 630.291411810001000000
          Width = 167.433156300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Estoque de fechamento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line35: TfrxLineView
          AllowVectorExport = True
          Left = 280.440944880000000000
          Top = 610.259915750000000000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 649.944955120000000000
          Width = 167.433156300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '(-) Perdas / (+) Sobras')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line36: TfrxLineView
          AllowVectorExport = True
          Left = 374.173228350000000000
          Top = 669.220545670000000000
          Width = 305.763779530000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line37: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 902.748610000000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line38: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 922.401657800000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line39: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 942.055201100000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line40: TfrxLineView
          AllowVectorExport = True
          Top = 741.787880000000000000
          Width = 374.173228350000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 742.165427560000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#245'es')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line41: TfrxLineView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 772.024120000000000000
          Width = 305.763779530000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 669.598498430000000000
          Width = 182.551276300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Destinado a fiscaliza'#231#227'o (ANP)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 772.401640710000000000
          Width = 167.433156300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Outros '#243'rg'#227'os fiscais')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 902.748610000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Concilia'#231#227'o dos estoques (fechamento f'#237'sico)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line42: TfrxLineView
          AllowVectorExport = True
          Left = 551.370078740000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 553.819266220000000000
          Top = 922.779610550000000000
          Width = 122.078796300000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Estoque fechamento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line43: TfrxLineView
          AllowVectorExport = True
          Left = 77.795280470000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line44: TfrxLineView
          AllowVectorExport = True
          Left = 154.921264720000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line45: TfrxLineView
          AllowVectorExport = True
          Left = 234.267718980000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line46: TfrxLineView
          AllowVectorExport = True
          Left = 315.173233230000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line47: TfrxLineView
          AllowVectorExport = True
          Left = 391.740157480000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line48: TfrxLineView
          AllowVectorExport = True
          Left = 470.866141730000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 1.559060000000000000
          Top = 922.779610550000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 51.362246220000000000
          Top = 922.779610550000000000
          Width = 24.566914490000000000
          Height = 18.897637800000000000
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
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxDBMaster."TAN_NUM_FIS"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line49: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 961.708744410000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 942.323440000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          DataField = 'ESTOQUE_FECHAMENTO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."ESTOQUE_FECHAMENTO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 555.701146220000000000
          Top = 942.323440000000000000
          Width = 119.811062680000000000
          Height = 18.897637800000000000
          DataField = 'ENC_FCT'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."ENC_FCT"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line50: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 981.362287720000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo99: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 961.708744410000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '(*) Aten'#231#227'o - Se o resultado for negativo, pode estar havendo va' +
              'zamento de produto para o meio-ambiente')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line51: TfrxLineView
          Align = baRight
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 107.338582680000000000
          Height = 873.826771653543000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Top = 107.338582680000000000
          Height = 873.826771653543000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 590.984325200000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          DataField = 'FECHAMENTO_VENDIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."FECHAMENTO_VENDIDO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 610.637868500000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          DataField = 'ESTOQUE_ESCRITURAL'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."ESTOQUE_ESCRITURAL"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 630.291411810000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          DataField = 'ESTOQUE_FECHAMENTO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."ESTOQUE_FECHAMENTO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 649.944955120000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          DataField = 'PERDA_SOBRAS'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."PERDA_SOBRAS"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Top = 610.637868500000000000
          Width = 85.795292680000000000
          Height = 18.897637800000000000
          DataField = 'VALOR_VENDAS_DIA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."VALOR_VENDAS_DIA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 107.488250000000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 110.488250000000000000
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Livro de Movimenta'#231#227'o de Combust'#237'veis (LMC)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 133.504020000000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 561.259842520000000000
          Top = 107.582696690000000000
          Height = 25.322834650000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 565.039370080000000000
          Top = 110.606318740000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Folha n'#186)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line6: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 102.488250000000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 4.779530000000000000
          Width = 226.771800000000000000
          Height = 90.708720000000000000
          DataField = 'LOGOMARCA'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line4: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 985.898270000000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 987.898270000000000000
          Width = 269.480454090000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."RAZAO_SOCIAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 42.370130000000000000
          Top = 1000.575450000000000000
          Width = 235.464684090000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."CNPJ"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 1013.252630000000000000
          Width = 79.370078740157500000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Inscri'#231#227'o Estadual n'#186)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 988.055159610000000000
          Width = 280.819044090000000000
          Height = 11.338582680000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbEmpresa."ENDERECO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 1000.417364330000000000
          Width = 280.819044090000000000
          Height = 11.338582680000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbEmpresa."CIDADE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 1013.157521810000000000
          Width = 280.819044090000000000
          Height = 11.338582680000000000
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbEmpresa."TELEFONE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object sRepVenda: TfrxSubreport
          Align = baWidth
          AllowVectorExport = True
          Top = 404.787401570000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Page = fxLMC.Page3
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 1000.551181100000000000
          Width = 34.015748031496100000
          Height = 11.338590000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ n'#186)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 87.724490000000000000
          Top = 1013.291338580000000000
          Width = 190.110324090000000000
          Height = 11.338590000000000000
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
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."IE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 766.024120000000000000
          Width = 366.614410000000000000
          Height = 120.944960000000000000
          DataField = 'OBSERVACOES'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxDBMaster."OBSERVACOES"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 384.000000000000000000
          Width = 37.795270710000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bico')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 138.063080000000000000
          Top = 383.622047240000000000
          Height = 206.740174570000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object TfrxSubreport
          Align = baWidth
          AllowVectorExport = True
          Top = 233.330860000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Page = fxLMC.Page1
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 631.622486610000000000
          Top = 113.519687480000000000
          Width = 45.354323390000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[PAGE#]')
          ParentFont = False
        end
        object FrxDbTotaisVLR_VDA_MES: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 631.181510000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_VENDAS_MES'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxDBMaster."VALOR_VENDAS_MES"]')
          ParentFont = False
        end
        object FrxDbTotaisENT_TOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 362.834880000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'VOLUME_DISPONIVEL'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxDBMaster."VOLUME_DISPONIVEL"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 253.228510000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          DataField = 'NOTA1_RECEBIDA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."NOTA1_RECEBIDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 253.228510000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nota Fiscal n'#186' ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 253.228510000000000000
          Width = 24.566914490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DataField = 'TANQUE1_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxDBMaster."TANQUE1_RECEBIDO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 176.078850000000000000
          Top = 253.228510000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'de ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 253.228510000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          DataField = 'DATA1_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."DATA1_RECEBIDO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 253.228510000000000000
          Width = 104.692942680000000000
          Height = 18.897637800000000000
          DataField = 'QTDE1_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."QTDE1_RECEBIDO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 275.905690000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          DataField = 'NOTA2_RECEBIDA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."NOTA2_RECEBIDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Top = 275.905690000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nota Fiscal n'#186' ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 176.078850000000000000
          Top = 275.905690000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'de ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 275.905690000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          DataField = 'DATA2_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."DATA2_RECEBIDO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 298.582870000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          DataField = 'NOTA3_RECEBIDA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."NOTA3_RECEBIDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Top = 298.582870000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nota Fiscal n'#186' ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 176.078850000000000000
          Top = 298.582870000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'de ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 298.582870000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          DataField = 'NOTA2_RECEBIDA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."NOTA2_RECEBIDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 317.480520000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          DataField = 'NOTA4_RECEBIDA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."NOTA4_RECEBIDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Top = 317.480520000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nota Fiscal n'#186' ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 176.078850000000000000
          Top = 317.480520000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'de ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 317.480520000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          DataField = 'DATA4_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."DATA4_RECEBIDO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 275.685220000000000000
          Width = 104.692942680000000000
          Height = 18.897637800000000000
          DataField = 'QTDE2_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."QTDE2_RECEBIDO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 299.141930000000000000
          Width = 104.692942680000000000
          Height = 18.897637800000000000
          DataField = 'QTDE3_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."QTDE3_RECEBIDO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 321.819110000000000000
          Width = 104.692942680000000000
          Height = 18.897637800000000000
          DataField = 'QTDE4_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."QTDE4_RECEBIDO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 922.205320000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 922.205320000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 922.205320000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 922.205320000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 922.205320000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 922.205320000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 172.858380000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 173.858380000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 173.858380000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 173.858380000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 173.858380000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 173.858380000000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 274.126160000000000000
          Width = 24.566914490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DataField = 'TANQUE2_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxDBMaster."TANQUE2_RECEBIDO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 298.582870000000000000
          Width = 24.566914490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DataField = 'TANQUE3_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxDBMaster."TANQUE3_RECEBIDO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 317.480520000000000000
          Width = 24.566914490000000000
          Height = 18.897637800000000000
          AutoWidth = True
          DataField = 'TANQUE4_RECEBIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[FrxDBMaster."TANQUE4_RECEBIDO"]')
          ParentFont = False
          WordWrap = False
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
      Frame.Typ = []
      MirrorMode = []
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 1026.693570000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDbEmpresa
        DataSetName = 'frxDbEmpresa'
        RowCount = 0
        object Memo145: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 120.472480000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Livro de Movimenta'#231#227'o de Combust'#237'veis (L.M.C.)')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 147.913420000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '(Portaria n.'#186' 26, 13/11/1992 do Departamento Nacional de Combust' +
              #237'veis)')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 241.535560000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Termo de Encerramento')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 303.921460000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              '           Cont'#233'm este livro [TOTALPAGES#] folhas numeradas elet' +
              'ronicamente, do n.'#186' 1 ao n.'#186' [TOTALPAGES#] e serviu para o lan'#231'a' +
              'mento das opera'#231#245'es do estabelecimento do contribuinte abaixo id' +
              'entifica:')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          AllowVectorExport = True
          Top = 355.527830000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          AllowVectorExport = True
          Top = 376.764070000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          AllowVectorExport = True
          Top = 397.779840000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          AllowVectorExport = True
          Top = 418.779840000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          AllowVectorExport = True
          Top = 439.457020000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          AllowVectorExport = True
          Top = 461.134200000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Inscri'#231#227'o Estadual:')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          AllowVectorExport = True
          Top = 482.149970000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo157: TfrxMemoView
          AllowVectorExport = True
          Top = 503.165740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Inscri'#231#227'o Municipal:')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          AllowVectorExport = True
          Top = 523.858690000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Distribuidora com a qual opera:')
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          AllowVectorExport = True
          Top = 564.772110000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Capacidade nominal de armazenamento:')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          AllowVectorExport = True
          Top = 780.362710000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Registrado na junta comercial sob n.'#186)
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 832.953310000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataField = 'LINHA9'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxrelatorio."LINHA9"]')
          ParentFont = False
        end
        object Line55: TfrxLineView
          Align = baCenter
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 912.528140000000000000
          Width = 257.008040000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo162: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 912.528140000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          DataField = 'PROPRIETARIO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."PROPRIETARIO"]')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 927.646260000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          DataField = 'CPF_PROPRIETARIO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."CPF_PROPRIETARIO"]')
          ParentFont = False
        end
        object Line56: TfrxLineView
          Align = baCenter
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 988.677800000000000000
          Width = 257.008040000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo164: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 988.677800000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          DataField = 'NOME_CONTADOR'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."NOME_CONTADOR"]')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 1003.795920000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          DataField = 'CRC_CONTADOR'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."CRC_CONTADOR"]')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 48.133890000000000000
          Top = 355.393700790000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          DataField = 'RAZAO_SOCIAL'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 67.165430000000000000
          Top = 376.692913390000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."ENDERECO"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 45.165430000000000000
          Top = 397.614173230000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."BAIRRO"]')
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          AllowVectorExport = True
          Left = 52.165430000000000000
          Top = 418.913385830000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."CIDADE"]')
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Left = 52.165430000000000000
          Top = 439.456692910000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."UF"]')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          AllowVectorExport = True
          Left = 119.944960000000000000
          Top = 461.133858270000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          DataField = 'IE'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."IE"]')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          AllowVectorExport = True
          Left = 45.133890000000000000
          Top = 482.055118110000000000
          Width = 536.693260000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."CNPJ"]')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          AllowVectorExport = True
          Left = 123.740260000000000000
          Top = 503.354330710000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          DataField = 'IM'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."IM"]')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          AllowVectorExport = True
          Left = 191.653680000000000000
          Top = 523.897637800000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          DataField = 'DISTRIBUIDORA_COMBUSTIVEL'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."DISTRIBUIDORA_COMBUSTIVEL"]')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 397.780076770000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          AllowVectorExport = True
          Left = 445.795610000000000000
          Top = 397.614410000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."CEP"]')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 780.472433620000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'NUM_JUNT_COM'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NUM_JUNT_COM"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          AllowVectorExport = True
          Left = 561.259840080000000000
          Top = 68.031488740000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Folha n'#186)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line57: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 97.708720000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Picture3: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 3.779530000000000000
          Width = 226.771800000000000000
          Height = 90.708720000000000000
          DataField = 'LOGOMARCA'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object sRepTanqueFCT: TfrxSubreport
          Align = baWidth
          AllowVectorExport = True
          Top = 586.960629920000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Page = fxLMC.Page4
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 615.307086610000000000
          Top = 68.031540000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo144: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244094488189000000
          Top = 193.889763780000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'N.'#186' de Ordem:')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Left = 385.511811020000000000
          Top = 193.889763780000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'NUM_ORD_LMC'
          DataSet = frxDbEmpresa
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
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
      Frame.Typ = []
      MirrorMode = []
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.007874020000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = FrxDBMaster
        DataSetName = 'FrxDBMaster'
        RowCount = 0
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Width = 47.244094490000000000
          Height = 17.007874020000000000
          DataField = 'N_TANQUE'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxDBMaster."N_TANQUE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842519690000000000
          Width = 158.740157480000000000
          Height = 17.007874020000000000
          DataField = 'FECHAMENTO_VENDIDO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."FECHAMENTO_VENDIDO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362204720000000000
          Width = 137.952755910000000000
          Height = 17.007874020000000000
          DataField = 'ESTOQUE_ABERT'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."ESTOQUE_ABERT"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929133860000000000
          Width = 108.472472680000000000
          Height = 17.007874020000000000
          DataField = 'QTDE_VENDIDO_DIA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDBMaster."QTDE_VENDIDO_DIA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Width = 47.244094490000000000
          Height = 17.007874020000000000
          DataField = 'BOMBA'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxDBMaster."BOMBA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 47.244094490000000000
          Height = 17.007874020000000000
          DataField = 'BICO'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxDBMaster."BICO"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Width = 122.834635910000000000
          Height = 17.007874020000000000
          DataField = 'AFERICOES'
          DataSet = FrxDBMaster
          DataSetName = 'FrxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
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
      Frame.Typ = []
      MirrorMode = []
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.141732290000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSetName = 'FrxDbRecebido'
        RowCount = 0
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 568.819266220000000000
          Width = 106.582677170000000000
          Height = 17.007874020000000000
          DataField = 'QTDE'
          DataSetName = 'FrxDbRecebido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FrxDbRecebido."QTDE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984254410000000000
          Top = 0.133858270000000000
          Width = 106.582677170000000000
          Height = 17.007874020000000000
          DataField = 'TAN_NUM_FIS'
          DataSetName = 'FrxDbRecebido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxDbRecebido."TAN_NUM_FIS"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 0.133858270000000000
          Width = 428.598637560000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo40OnBeforePrint'
          DataField = 'COD_NOTA_ENT'
          DataSetName = 'FrxDbRecebido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
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
      Frame.Typ = []
      MirrorMode = []
      object MasterData6: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = Frxdbtanque
        DataSetName = 'Frxdbtanque'
        RowCount = 0
        object Memo180: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = Frxdbtanque
          DataSetName = 'Frxdbtanque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Frxdbtanque."DESCRICAO"]')
          ParentFont = False
        end
        object Memo181: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'LITROS'
          DataSet = Frxdbtanque
          DataSetName = 'Frxdbtanque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
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
      Frame.Typ = []
      MirrorMode = []
      object MasterData7: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = Frxdbtanque
        DataSetName = 'Frxdbtanque'
        RowCount = 0
        object Memo182: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = Frxdbtanque
          DataSetName = 'Frxdbtanque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Frxdbtanque."DESCRICAO"]')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'LITROS'
          DataSet = Frxdbtanque
          DataSetName = 'Frxdbtanque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
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
    GradientEnd = 11982554
    GradientStart = clWindow
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
    Left = 224
    Top = 2
  end
  object FrxDBMaster: TfrxDBDataset
    UserName = 'FrxDBMaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'TANQUE=TANQUE'
      'BOMBA=BOMBA'
      'BICO=BICO'
      'ABERTURA=ABERTURA'
      'ENCERRANTE=ENCERRANTE'
      'COMBUSTIVEL=COMBUSTIVEL'
      'DATA=DATA'
      'PRECO=PRECO'
      'QUANTIDADE=QUANTIDADE'
      'TOTAL=TOTAL'
      'SITUACAO=SITUACAO'
      'NR_NOTA=NR_NOTA'
      'NOTAFISCAL1=NOTAFISCAL1'
      'NOTAFISCAL2=NOTAFISCAL2'
      'NOTAFISCAL3=NOTAFISCAL3'
      'NOTAFISCAL4=NOTAFISCAL4'
      'QUANTNF1=QUANTNF1'
      'QUANTNF2=QUANTNF2'
      'QUANTNF3=QUANTNF3'
      'QUANTNF4=QUANTNF4'
      'BICO1=BICO1'
      'BICO2=BICO2'
      'BICO3=BICO3'
      'BICO4=BICO4'
      'BICO5=BICO5'
      'BICO6=BICO6'
      'BICO7=BICO7'
      'BICO8=BICO8'
      'ABER_BICO1=ABER_BICO1'
      'ABER_BICO2=ABER_BICO2'
      'ABER_BICO3=ABER_BICO3'
      'ABER_BICO4=ABER_BICO4'
      'ABER_BICO5=ABER_BICO5'
      'ABER_BICO6=ABER_BICO6'
      'ABER_BICO7=ABER_BICO7'
      'ABER_BICO8=ABER_BICO8'
      'ENC_BICO1=ENC_BICO1'
      'ENC_BICO2=ENC_BICO2'
      'ENC_BICO3=ENC_BICO3'
      'ENC_BICO4=ENC_BICO4'
      'ENC_BICO5=ENC_BICO5'
      'ENC_BICO6=ENC_BICO6'
      'ENC_BICO7=ENC_BICO7'
      'ENC_BICO8=ENC_BICO8'
      'AFER_BICO1=AFER_BICO1'
      'AFER_BICO2=AFER_BICO2'
      'AFER_BICO3=AFER_BICO3'
      'AFER_BICO4=AFER_BICO4'
      'AFER_BICO5=AFER_BICO5'
      'AFER_BICO6=AFER_BICO6'
      'AFER_BICO7=AFER_BICO7'
      'AFER_BICO8=AFER_BICO8'
      'QTEVEND_1=QTEVEND_1'
      'QTEVEND_2=QTEVEND_2'
      'QTEVEND_3=QTEVEND_3'
      'QTEVEND_4=QTEVEND_4'
      'QTEVEND_5=QTEVEND_5'
      'QTEVEND_6=QTEVEND_6'
      'QTEVEND_7=QTEVEND_7'
      'QTEVEND_8=QTEVEND_8'
      'TOTALVEND_1=TOTALVEND_1'
      'TOTALVEND_2=TOTALVEND_2'
      'TOTALVEND_3=TOTALVEND_3'
      'TOTALVEND_4=TOTALVEND_4'
      'TOTALVEND_5=TOTALVEND_5'
      'TOTALVEND_6=TOTALVEND_6'
      'TOTALVEND_7=TOTALVEND_7'
      'TOTALVEND_8=TOTALVEND_8'
      'ESTOQ_ABERTURA=ESTOQ_ABERTURA'
      'ESTOQ_ESCRITURAL=ESTOQ_ESCRITURAL'
      'ESTOQ_FECHAMENTO=ESTOQ_FECHAMENTO'
      'PERDA_SOBRA=PERDA_SOBRA'
      'OBSERVACAO=OBSERVACAO'
      'PAGINA=PAGINA'
      'ID_BICO1=ID_BICO1'
      'ID_BICO2=ID_BICO2'
      'ID_BICO3=ID_BICO3'
      'ID_BICO4=ID_BICO4'
      'ID_BICO5=ID_BICO5'
      'ID_BICO6=ID_BICO6'
      'ID_BICO7=ID_BICO7'
      'ID_BICO8=ID_BICO8'
      'VENDAS_DIA=VENDAS_DIA'
      'RECEBIDO_DIA=RECEBIDO_DIA'
      'DISPONIVEL_DIA=DISPONIVEL_DIA'
      'TOTALVENDAS_DIA=TOTALVENDAS_DIA'
      'TOTALVENDAS_ACU=TOTALVENDAS_ACU')
    DataSet = QryMaster
    BCDToCurrency = False
    Left = 96
  end
  object frxDbEmpresa: TfrxDBDataset
    UserName = 'frxDbEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'RAZAO_SOCIAL=RAZAO_SOCIAL'
      'NOME_FANTASIA=NOME_FANTASIA'
      'ENDERECO=ENDERECO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'TELEFONE=TELEFONE'
      'FAX=FAX'
      'EMAIL=EMAIL'
      'HOMEPAGE=HOMEPAGE'
      'CNPJ=CNPJ'
      'IE=IE'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'IM=IM'
      'LOGOMARCA=LOGOMARCA'
      'CNAE=CNAE'
      'COD_CID_IBGE=COD_CID_IBGE'
      'URS_INDEA=URS_INDEA'
      'ULE_INDEA=ULE_INDEA'
      'MATRICULA_INDEA=MATRICULA_INDEA'
      'PROPRIETARIO=PROPRIETARIO'
      'RESPONSAVEL_TECINICO=RESPONSAVEL_TECINICO'
      'CRMV_N=CRMV_N'
      'FLAG_VETERINARIA=FLAG_VETERINARIA'
      'REGIME=REGIME'
      'ALIC_SIMPLES=ALIC_SIMPLES'
      'ALIC_PIS=ALIC_PIS'
      'ALIC_COFINS=ALIC_COFINS'
      'ALIC_IRPJ=ALIC_IRPJ'
      'ALIC_CSLL=ALIC_CSLL'
      'SUFRAMA=SUFRAMA'
      'NOME_CONTADOR=NOME_CONTADOR'
      'CNPJ_CONTADOR=CNPJ_CONTADOR'
      'CRC_CONTADOR=CRC_CONTADOR'
      'ENDERECO_CONTADOR=ENDERECO_CONTADOR'
      'CEP_CONTADOR=CEP_CONTADOR'
      'NUM_CONTADOR=NUM_CONTADOR'
      'BAIRRO_CONTADOR=BAIRRO_CONTADOR'
      'COMPL_CONTADOR=COMPL_CONTADOR'
      'FONE_CONTADOR=FONE_CONTADOR'
      'FAX_CONTADOR=FAX_CONTADOR'
      'EMAIL_CONTADOR=EMAIL_CONTADOR'
      'COD_IBGE_CONTADOR=COD_IBGE_CONTADOR'
      'CPF_CONTADOR=CPF_CONTADOR'
      'CIDADE_CONTADOR=CIDADE_CONTADOR'
      'UF_CONTADOR=UF_CONTADOR'
      'CPF_RESPONSAVEL=CPF_RESPONSAVEL'
      'COMPLEMENTO=COMPLEMENTO'
      'TIPO_SEGMENTO=TIPO_SEGMENTO'
      'CPF_PROPRIETARIO=CPF_PROPRIETARIO'
      'DISTRIBUIDORA_COMBUSTIVEL=DISTRIBUIDORA_COMBUSTIVEL'
      'NUM_JUNT_COM=NUM_JUNT_COM'
      'DATA_INICIO_LMC=DATA_INICIO_LMC'
      'DATA_FIM_LMC=DATA_FIM_LMC'
      'NUM_ORD_LMC=NUM_ORD_LMC')
    DataSet = DM.SDS_Empresa
    BCDToCurrency = False
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
  object QryMaster: TFDQuery
    Active = True
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      
        'select * from lmc where data between :datai and :dataf and COMBU' +
        'STIVEL =:codpro order by data, COMBUSTIVEL')
    Left = 32
    ParamData = <
      item
        Name = 'datai'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'dataf'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'codpro'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryMasterCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMasterTANQUE: TIntegerField
      FieldName = 'TANQUE'
      Origin = 'TANQUE'
    end
    object QryMasterBOMBA: TIntegerField
      FieldName = 'BOMBA'
      Origin = 'BOMBA'
    end
    object QryMasterBICO: TStringField
      FieldName = 'BICO'
      Origin = 'BICO'
      Size = 5
    end
    object QryMasterABERTURA: TIntegerField
      FieldName = 'ABERTURA'
      Origin = 'ABERTURA'
    end
    object QryMasterENCERRANTE: TIntegerField
      FieldName = 'ENCERRANTE'
      Origin = 'ENCERRANTE'
    end
    object QryMasterCOMBUSTIVEL: TIntegerField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
    end
    object QryMasterDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object QryMasterPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 3
    end
    object QryMasterQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object QryMasterTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 3
    end
    object QryMasterSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object QryMasterNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Origin = 'NR_NOTA'
    end
    object QryMasterNOTAFISCAL1: TStringField
      FieldName = 'NOTAFISCAL1'
      Origin = 'NOTAFISCAL1'
      Size = 10
    end
    object QryMasterNOTAFISCAL2: TStringField
      FieldName = 'NOTAFISCAL2'
      Origin = 'NOTAFISCAL2'
      Size = 10
    end
    object QryMasterNOTAFISCAL3: TStringField
      FieldName = 'NOTAFISCAL3'
      Origin = 'NOTAFISCAL3'
      Size = 10
    end
    object QryMasterNOTAFISCAL4: TStringField
      FieldName = 'NOTAFISCAL4'
      Origin = 'NOTAFISCAL4'
      Size = 10
    end
    object QryMasterQUANTNF1: TIntegerField
      FieldName = 'QUANTNF1'
      Origin = 'QUANTNF1'
    end
    object QryMasterQUANTNF2: TIntegerField
      FieldName = 'QUANTNF2'
      Origin = 'QUANTNF2'
    end
    object QryMasterQUANTNF3: TIntegerField
      FieldName = 'QUANTNF3'
      Origin = 'QUANTNF3'
    end
    object QryMasterQUANTNF4: TIntegerField
      FieldName = 'QUANTNF4'
      Origin = 'QUANTNF4'
    end
    object QryMasterBICO1: TIntegerField
      FieldName = 'BICO1'
      Origin = 'BICO1'
    end
    object QryMasterBICO2: TIntegerField
      FieldName = 'BICO2'
      Origin = 'BICO2'
    end
    object QryMasterBICO3: TIntegerField
      FieldName = 'BICO3'
      Origin = 'BICO3'
    end
    object QryMasterBICO4: TIntegerField
      FieldName = 'BICO4'
      Origin = 'BICO4'
    end
    object QryMasterBICO5: TIntegerField
      FieldName = 'BICO5'
      Origin = 'BICO5'
    end
    object QryMasterBICO6: TIntegerField
      FieldName = 'BICO6'
      Origin = 'BICO6'
    end
    object QryMasterBICO7: TIntegerField
      FieldName = 'BICO7'
      Origin = 'BICO7'
    end
    object QryMasterBICO8: TIntegerField
      FieldName = 'BICO8'
      Origin = 'BICO8'
    end
    object QryMasterABER_BICO1: TIntegerField
      FieldName = 'ABER_BICO1'
      Origin = 'ABER_BICO1'
    end
    object QryMasterABER_BICO2: TIntegerField
      FieldName = 'ABER_BICO2'
      Origin = 'ABER_BICO2'
    end
    object QryMasterABER_BICO3: TIntegerField
      FieldName = 'ABER_BICO3'
      Origin = 'ABER_BICO3'
    end
    object QryMasterABER_BICO4: TIntegerField
      FieldName = 'ABER_BICO4'
      Origin = 'ABER_BICO4'
    end
    object QryMasterABER_BICO5: TIntegerField
      FieldName = 'ABER_BICO5'
      Origin = 'ABER_BICO5'
    end
    object QryMasterABER_BICO6: TIntegerField
      FieldName = 'ABER_BICO6'
      Origin = 'ABER_BICO6'
    end
    object QryMasterABER_BICO7: TIntegerField
      FieldName = 'ABER_BICO7'
      Origin = 'ABER_BICO7'
    end
    object QryMasterABER_BICO8: TIntegerField
      FieldName = 'ABER_BICO8'
      Origin = 'ABER_BICO8'
    end
    object QryMasterENC_BICO1: TIntegerField
      FieldName = 'ENC_BICO1'
      Origin = 'ENC_BICO1'
    end
    object QryMasterENC_BICO2: TIntegerField
      FieldName = 'ENC_BICO2'
      Origin = 'ENC_BICO2'
    end
    object QryMasterENC_BICO3: TIntegerField
      FieldName = 'ENC_BICO3'
      Origin = 'ENC_BICO3'
    end
    object QryMasterENC_BICO4: TIntegerField
      FieldName = 'ENC_BICO4'
      Origin = 'ENC_BICO4'
    end
    object QryMasterENC_BICO5: TIntegerField
      FieldName = 'ENC_BICO5'
      Origin = 'ENC_BICO5'
    end
    object QryMasterENC_BICO6: TIntegerField
      FieldName = 'ENC_BICO6'
      Origin = 'ENC_BICO6'
    end
    object QryMasterENC_BICO7: TIntegerField
      FieldName = 'ENC_BICO7'
      Origin = 'ENC_BICO7'
    end
    object QryMasterENC_BICO8: TIntegerField
      FieldName = 'ENC_BICO8'
      Origin = 'ENC_BICO8'
    end
    object QryMasterAFER_BICO1: TIntegerField
      FieldName = 'AFER_BICO1'
      Origin = 'AFER_BICO1'
    end
    object QryMasterAFER_BICO2: TIntegerField
      FieldName = 'AFER_BICO2'
      Origin = 'AFER_BICO2'
    end
    object QryMasterAFER_BICO3: TIntegerField
      FieldName = 'AFER_BICO3'
      Origin = 'AFER_BICO3'
    end
    object QryMasterAFER_BICO4: TIntegerField
      FieldName = 'AFER_BICO4'
      Origin = 'AFER_BICO4'
    end
    object QryMasterAFER_BICO5: TIntegerField
      FieldName = 'AFER_BICO5'
      Origin = 'AFER_BICO5'
    end
    object QryMasterAFER_BICO6: TIntegerField
      FieldName = 'AFER_BICO6'
      Origin = 'AFER_BICO6'
    end
    object QryMasterAFER_BICO7: TIntegerField
      FieldName = 'AFER_BICO7'
      Origin = 'AFER_BICO7'
    end
    object QryMasterAFER_BICO8: TIntegerField
      FieldName = 'AFER_BICO8'
      Origin = 'AFER_BICO8'
    end
    object QryMasterQTEVEND_1: TIntegerField
      FieldName = 'QTEVEND_1'
      Origin = 'QTEVEND_1'
    end
    object QryMasterQTEVEND_2: TIntegerField
      FieldName = 'QTEVEND_2'
      Origin = 'QTEVEND_2'
    end
    object QryMasterQTEVEND_3: TIntegerField
      FieldName = 'QTEVEND_3'
      Origin = 'QTEVEND_3'
    end
    object QryMasterQTEVEND_4: TIntegerField
      FieldName = 'QTEVEND_4'
      Origin = 'QTEVEND_4'
    end
    object QryMasterQTEVEND_5: TIntegerField
      FieldName = 'QTEVEND_5'
      Origin = 'QTEVEND_5'
    end
    object QryMasterQTEVEND_6: TIntegerField
      FieldName = 'QTEVEND_6'
      Origin = 'QTEVEND_6'
    end
    object QryMasterQTEVEND_7: TIntegerField
      FieldName = 'QTEVEND_7'
      Origin = 'QTEVEND_7'
    end
    object QryMasterQTEVEND_8: TIntegerField
      FieldName = 'QTEVEND_8'
      Origin = 'QTEVEND_8'
    end
    object QryMasterTOTALVEND_1: TFMTBCDField
      FieldName = 'TOTALVEND_1'
      Origin = 'TOTALVEND_1'
      Precision = 18
      Size = 3
    end
    object QryMasterTOTALVEND_2: TFMTBCDField
      FieldName = 'TOTALVEND_2'
      Origin = 'TOTALVEND_2'
      Precision = 18
      Size = 3
    end
    object QryMasterTOTALVEND_3: TFMTBCDField
      FieldName = 'TOTALVEND_3'
      Origin = 'TOTALVEND_3'
      Precision = 18
      Size = 3
    end
    object QryMasterTOTALVEND_4: TFMTBCDField
      FieldName = 'TOTALVEND_4'
      Origin = 'TOTALVEND_4'
      Precision = 18
      Size = 3
    end
    object QryMasterTOTALVEND_5: TFMTBCDField
      FieldName = 'TOTALVEND_5'
      Origin = 'TOTALVEND_5'
      Precision = 18
      Size = 3
    end
    object QryMasterTOTALVEND_6: TFMTBCDField
      FieldName = 'TOTALVEND_6'
      Origin = 'TOTALVEND_6'
      Precision = 18
      Size = 3
    end
    object QryMasterTOTALVEND_7: TFMTBCDField
      FieldName = 'TOTALVEND_7'
      Origin = 'TOTALVEND_7'
      Precision = 18
      Size = 3
    end
    object QryMasterTOTALVEND_8: TFMTBCDField
      FieldName = 'TOTALVEND_8'
      Origin = 'TOTALVEND_8'
      Precision = 18
      Size = 3
    end
    object QryMasterESTOQ_ABERTURA: TIntegerField
      FieldName = 'ESTOQ_ABERTURA'
      Origin = 'ESTOQ_ABERTURA'
    end
    object QryMasterESTOQ_ESCRITURAL: TIntegerField
      FieldName = 'ESTOQ_ESCRITURAL'
      Origin = 'ESTOQ_ESCRITURAL'
    end
    object QryMasterESTOQ_FECHAMENTO: TIntegerField
      FieldName = 'ESTOQ_FECHAMENTO'
      Origin = 'ESTOQ_FECHAMENTO'
    end
    object QryMasterPERDA_SOBRA: TIntegerField
      FieldName = 'PERDA_SOBRA'
      Origin = 'PERDA_SOBRA'
    end
    object QryMasterOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 255
    end
    object QryMasterPAGINA: TIntegerField
      FieldName = 'PAGINA'
      Origin = 'PAGINA'
    end
    object QryMasterID_BICO1: TStringField
      FieldName = 'ID_BICO1'
      Origin = 'ID_BICO1'
      Size = 2
    end
    object QryMasterID_BICO2: TStringField
      FieldName = 'ID_BICO2'
      Origin = 'ID_BICO2'
      Size = 2
    end
    object QryMasterID_BICO3: TStringField
      FieldName = 'ID_BICO3'
      Origin = 'ID_BICO3'
      Size = 2
    end
    object QryMasterID_BICO4: TStringField
      FieldName = 'ID_BICO4'
      Origin = 'ID_BICO4'
      Size = 2
    end
    object QryMasterID_BICO5: TStringField
      FieldName = 'ID_BICO5'
      Origin = 'ID_BICO5'
      Size = 2
    end
    object QryMasterID_BICO6: TStringField
      FieldName = 'ID_BICO6'
      Origin = 'ID_BICO6'
      Size = 2
    end
    object QryMasterID_BICO7: TStringField
      FieldName = 'ID_BICO7'
      Origin = 'ID_BICO7'
      Size = 2
    end
    object QryMasterID_BICO8: TStringField
      FieldName = 'ID_BICO8'
      Origin = 'ID_BICO8'
      Size = 2
    end
    object QryMasterVENDAS_DIA: TLargeintField
      FieldName = 'VENDAS_DIA'
      Origin = 'VENDAS_DIA'
    end
    object QryMasterRECEBIDO_DIA: TLargeintField
      FieldName = 'RECEBIDO_DIA'
      Origin = 'RECEBIDO_DIA'
    end
    object QryMasterDISPONIVEL_DIA: TLargeintField
      FieldName = 'DISPONIVEL_DIA'
      Origin = 'DISPONIVEL_DIA'
    end
    object QryMasterTOTALVENDAS_DIA: TFMTBCDField
      FieldName = 'TOTALVENDAS_DIA'
      Origin = 'TOTALVENDAS_DIA'
      Precision = 18
      Size = 3
    end
    object QryMasterTOTALVENDAS_ACU: TFMTBCDField
      FieldName = 'TOTALVENDAS_ACU'
      Origin = 'TOTALVENDAS_ACU'
      Precision = 18
      Size = 3
    end
  end
  object Dts_Master: TDataSource
    DataSet = QryMaster
    Left = 64
  end
  object QryTanque: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.Active = True
    DataSet.CommandText = 
      'select'#13#10'  TANQUE.COD_TANQUE,'#13#10'  TANQUE.ID_TANQUE,'#13#10'  TANQUE.LITR' +
      'OS,'#13#10'  TANQUE.ULTATUAL,'#13#10'  TANQUE.ULTATUALCODSETOR,'#13#10'  TANQUE.UL' +
      'TATUALCODSETORUSER,'#13#10'  TANQUE.DATAHORA,'#13#10'  TANQUE.ENABLED,'#13#10'  TA' +
      'NQUE.OBS,'#13#10'  TANQUE.COD_PRODUTOS,'#13#10'  TANQUE.LITROS_ATUAL,'#13#10'  TAN' +
      'QUE.VLR_SAI,'#13#10'  TANQUE.VLR_ENT,'#13#10'  TANQUE.EST_INI,'#13#10'  TANQUE.EST' +
      '_ATU,'#13#10'  TANQUE.DAT_ULT_ENT,'#13#10'  TANQUE.NUM_NF,'#13#10'  TANQUE.DAT_ULT' +
      '_SAI,'#13#10'  PRODUTOS.DESCRICAO,'#13#10'  produtos.desc_unidade'#13#10'from'#13#10'tan' +
      'que'#13#10' INNER JOIN PRODUTOS ON (TANQUE.COD_PRODUTOS=PRODUTOS.CODIG' +
      'O)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'ID_TANQUE'
    MasterFields = 'N_TANQUE'
    MasterSource = Dts_Master
    PacketRecords = 0
    Params = <>
    Left = 144
    Top = 8
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
  object Qry_abert: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'select * from  LMC_ABERFECH where COD_COMBUSTIVEL =:cod_pro')
    Top = 32
    ParamData = <
      item
        Name = 'cod_pro'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Qry_abertCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_abertCOD_FILIAL: TStringField
      FieldName = 'COD_FILIAL'
      Origin = 'COD_FILIAL'
      Size = 6
    end
    object Qry_abertFILIAL: TStringField
      FieldName = 'FILIAL'
      Origin = 'FILIAL'
      Size = 50
    end
    object Qry_abertENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 60
    end
    object Qry_abertBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object Qry_abertCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object Qry_abertCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 30
    end
    object Qry_abertUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object Qry_abertIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 14
    end
    object Qry_abertCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 25
    end
    object Qry_abertIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
    end
    object Qry_abertDISTRIBUIDORA: TStringField
      FieldName = 'DISTRIBUIDORA'
      Origin = 'DISTRIBUIDORA'
      Size = 50
    end
    object Qry_abertCAPACIDADE: TIntegerField
      FieldName = 'CAPACIDADE'
      Origin = 'CAPACIDADE'
    end
    object Qry_abertCOD_COMBUSTIVEL: TIntegerField
      FieldName = 'COD_COMBUSTIVEL'
      Origin = 'COD_COMBUSTIVEL'
    end
    object Qry_abertNOME_COMBUSTIVEL: TStringField
      FieldName = 'NOME_COMBUSTIVEL'
      Origin = 'NOME_COMBUSTIVEL'
      Size = 30
    end
    object Qry_abertNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object Qry_abertNUMERO_JUNTACOM: TStringField
      FieldName = 'NUMERO_JUNTACOM'
      Origin = 'NUMERO_JUNTACOM'
      Size = 10
    end
    object Qry_abertDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object Qry_abertNUMERO_ORDEM: TIntegerField
      FieldName = 'NUMERO_ORDEM'
      Origin = 'NUMERO_ORDEM'
    end
    object Qry_abertPAGINA_ATUAL: TIntegerField
      FieldName = 'PAGINA_ATUAL'
      Origin = 'PAGINA_ATUAL'
    end
  end
  object DataSource1: TDataSource
    DataSet = QryMaster
    Left = 40
    Top = 32
  end
end
