object frmcaixa_ficha: Tfrmcaixa_ficha
  Left = 502
  Top = 218
  BorderStyle = bsToolWindow
  Caption = 'CAIXA | Ficha de Lan'#231'amento'
  ClientHeight = 217
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 7
    Top = 75
    Width = 55
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Tipo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 7
    Top = 108
    Width = 55
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Conta:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 7
    Top = 132
    Width = 55
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Hist'#243'rico:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 7
    Top = 156
    Width = 55
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Valor-R$:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 0
    Top = 184
    Width = 489
    Height = 3
    Align = alBottom
  end
  object Bevel5: TBevel
    Left = 0
    Top = 34
    Width = 489
    Height = 3
    Align = alTop
  end
  object Label9: TLabel
    Left = 16
    Top = 44
    Width = 40
    Height = 13
    Caption = 'Per'#237'odo:'
  end
  object GroupBox1: TGroupBox
    Left = 80
    Top = 63
    Width = 397
    Height = 33
    TabOrder = 0
    object RadioButton1: TRadioButton
      Left = 11
      Top = 11
      Width = 74
      Height = 17
      Caption = 'Entrada'
      TabOrder = 0
      OnKeyPress = RadioButton1KeyPress
    end
    object RadioButton2: TRadioButton
      Left = 107
      Top = 11
      Width = 61
      Height = 17
      Caption = 'Sa'#237'da'
      TabOrder = 1
      OnKeyPress = RadioButton2KeyPress
    end
  end
  object blocconta: TBitBtn
    Left = 144
    Top = 103
    Width = 25
    Height = 21
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
      9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
      C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
      A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
      E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
      F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
      DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
      F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
      D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
      F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
      DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
      F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
      E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 1
    OnClick = bloccontaClick
  end
  object Panel4: TPanel
    Left = 0
    Top = 187
    Width = 489
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object bgravar: TAdvGlowButton
      Left = 140
      Top = 2
      Width = 107
      Height = 24
      Caption = 'F2 | Confirmar'
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
        650041646F626520496D616765526561647971C9653C000003274944415478DA
        62FCFFFF3F032500208058D005924F392AFFF9F33BEAEFDF7F713F7FFF90F8F7
        EF0F03C3BF7F2F18FE312CFAF3F7EFB28DDED7EF22AB070820466417249EB00B
        FEF9FBE764690665497D515B066E567EB0F8E75F1F184E3EDECD70E3D3F9E740
        8372F7863D580BD30310407003E28FD9047FFFFD73A1359F37B7BAB001C3B3EF
        8F199E7D7B0A9693E2926690E09461B8F6FC14C3F2AB4BBF029D1D7F32E911D8
        108000021B107BD84AE9E79FDF87AD05BCA55485F5198EBEDECFF0E7DF5F20FE
        C7C0045204F22B233383B59823C3D5A7A718965C5AF60CE812DB4BD98FEF0104
        10489EE1EF9FDF31D28CCA52209B419A7FFCF9CDF0EBEF6F863F40FCEBCF2F06
        609830B84A79339C7A71984147DA8CC1505847EAE76F8618905E8000021BF0FB
        EFCF5843093B8627DF1E0135FD61F80B0CB87F409A11E802C67FFF19FC15C218
        1C653C1932744B189E7CBACF60AFEACCF0EB27432C482F4000810DF8FEF3A7B4
        009B10C3D3AF0F819AFF327848FB306468150235333104288633D84BBB810DDD
        7C6725C3D30FF7180439C518FE7DFF2F0DD20B10402C500318FE01C3E23FD046
        5E665E062B0907063E367E865AB30E06210E11B0E659177A196EBFB9CCC0C3CA
        030C1360C0FF86C4024000815DC0F00768F0B7D70CD25CB20C5F7E7E649876A1
        93E1EBEFCF60CDFFFEFF639875AE9BE1FAABF3E0C094E2936378FDE139D0750C
        E0280208204818FCFEBFF8E8BDDD0C529CB20CACFF18185E7D7DC630F17433C3
        FDB75719E69CEF65B8F6FA02500323031310CBF229326CB9B28B01E888C520BD
        00010436E0E7F7FF4B4E3FBBF0ECF2D3130C96522E0C6C4085EFBE3E67987EA6
        95E1DA8BF30CCCFF9918D8989819EC953C194EDF3BCC70E1DACD670CBF189680
        F40204103C21E94C920DFEFAF3FFC26493206E23596B86C71FEF03FD751F1C2E
        32824A0C327CF20C27EF1D6458B075CB572656C6F8077D4FC0090920805092B2
        52B76CF0BF9FFF271BCBAA4B7A68B902435B04E45486D75F5F306CBBB08BE1D2
        F5BBCF199918731FF43F81276580006244CF8D0A4DB2CA0C7FFF47010336EEFF
        CFFF120C7F81299191F105506A1130E4973D98FC04253301041023A5D91920C0
        00B9755E16835EC02B0000000049454E44AE426082}
      TabOrder = 0
      OnClick = bgravarClick
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
      Left = 254
      Top = 2
      Width = 105
      Height = 24
      Caption = 'ESC | Cancelar'
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
      TabOrder = 1
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 489
    Height = 34
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    object myLabel3d1: TmyLabel3d
      Left = 27
      Top = 5
      Width = 434
      Height = 25
      Caption = 'Lan'#231'amentos no Caixa ( Entrada e Sa'#237'da)'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      AStyle3D = Raised3d
      AShadeLTSet = False
    end
  end
  object DBEdit1: TEdit
    Left = 80
    Top = 127
    Width = 397
    Height = 21
    TabOrder = 3
    OnEnter = econtaEnter
    OnExit = DBEdit1Exit
    OnKeyPress = DBEdit1KeyPress
  end
  object econta: TEdit
    Left = 80
    Top = 103
    Width = 60
    Height = 21
    TabOrder = 2
    OnEnter = econtaEnter
    OnExit = econtaExit
    OnKeyPress = econtaKeyPress
  end
  object plano_desc: TEdit
    Left = 176
    Top = 103
    Width = 302
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object ed_valor: TCurrencyEdit
    Left = 79
    Top = 152
    Width = 130
    Height = 21
    AutoSize = False
    TabOrder = 7
    OnExit = ed_valorExit
    OnKeyPress = ed_valorKeyPress
  end
  object DateEdit1: TDateEdit
    Left = 79
    Top = 40
    Width = 101
    Height = 21
    Enabled = False
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
    TabOrder = 9
    Text = '01/01/2013'
  end
  object CheckBox1: TCheckBox
    Left = 217
    Top = 153
    Width = 97
    Height = 17
    Caption = 'Saldo Inicial'
    TabOrder = 8
  end
  object dscaixa_mov: TDataSource
    Left = 256
    Top = 96
  end
  object PopupMenu1: TPopupMenu
    Left = 384
    Top = 64
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = Gravar1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object frxReport: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42500.977985636600000000
    ReportOptions.LastChange = 42597.683460636570000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 312
    Top = 105
    Datasets = <
      item
        DataSet = qrRel
        DataSetName = 'qrRel'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 91.338590000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Gradient1: TfrxGradientView
          Left = 10.118120000000000000
          Top = 45.456710000000000000
          Width = 517.795610000000000000
          Height = 3.779530000000000000
          BeginColor = -4144960
          EndColor = -4144960
          Style = gsHorizontal
          Color = clSilver
        end
        object Memo1: TfrxMemoView
          Left = 12.118120000000000000
          Top = 21.118120000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ficha de Lan'#231'amento - [TIPO_LANCAMENTO]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 51.574830000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Date] [Time] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Picture1: TfrxPictureView
          Left = 627.401980000000000000
          Top = 6.000000000000000000
          Width = 80.000000000000000000
          Height = 80.000000000000000000
          AutoSize = True
          Center = True
          DataField = 'LOGO'
          DataSet = qrRel
          DataSetName = 'qrRel'
          HightQuality = False
          Transparent = False
          TransparentColor = -1
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 449.764070000000000000
        Width = 718.110700000000000000
        object Memo22: TfrxMemoView
          Left = 550.252320000000000000
          Top = 0.559060000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 219.212740000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = qrRel
        DataSetName = 'qrRel'
        RowCount = 0
        object Memo31: TfrxMemoView
          Width = 716.220472440000000000
          Height = 98.267780000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Gradient2: TfrxGradientView
          Left = 1.456710000000000000
          Top = 0.118120000000000000
          Width = 715.086614170000000000
          Height = 18.897650000000000000
          BeginColor = -5658199
          EndColor = -4144960
          Style = gsHorizontal
          Frame.Color = -4144960
          Color = 11842740
        end
        object Gradient3: TfrxGradientView
          Left = 1.511811020000000000
          Top = 18.897650000000000000
          Width = 715.086614170000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Color = 14474460
        end
        object Memo4: TfrxMemoView
          Left = 6.000000000000000000
          Top = 18.897650000000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Hist'#243'rico')
          ParentFont = False
        end
        object Gradient4: TfrxGradientView
          Left = 1.511811020000000000
          Top = 37.929133860000000000
          Width = 715.086614170000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Color = clWhite
        end
        object Memo3: TfrxMemoView
          Left = 5.779530000000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[USUARIO]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 5.559060000000000000
          Top = 37.795275590000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[qrRel."HISTORICO"]')
          ParentFont = False
        end
        object Gradient5: TfrxGradientView
          Left = 2.000000000000000000
          Top = 57.590600000000000000
          Width = 397.606094170000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Color = 14474460
        end
        object Memo5: TfrxMemoView
          Left = 6.488188980000000000
          Top = 57.590600000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Plano de Conta')
          ParentFont = False
        end
        object Gradient6: TfrxGradientView
          Left = 2.000000000000000000
          Top = 77.401613860000000000
          Width = 397.606094170000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Color = clWhite
        end
        object Memo6: TfrxMemoView
          Left = 6.047248980000000000
          Top = 76.488225590000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[qrRel."NOME_PLANO"]')
          ParentFont = False
        end
        object Gradient7: TfrxGradientView
          Left = 401.630180000000000000
          Top = 57.692950000000000000
          Width = 314.456434170000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Color = 14474460
        end
        object Memo7: TfrxMemoView
          Left = 406.118368980000000000
          Top = 56.692950000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Gradient8: TfrxGradientView
          Left = 401.630180000000000000
          Top = 76.503963860000000000
          Width = 314.456434170000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Color = clWhite
        end
        object Memo8: TfrxMemoView
          Left = 405.677428980000000000
          Top = 75.590575590000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[qrRel."VALOR"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baCenter
          Left = 88.818955000000000000
          Top = 139.842610000000000000
          Width = 540.472790000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          Align = baCenter
          Left = 175.748145000000000000
          Top = 143.622140000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura Respons'#225'vel')
          ParentFont = False
        end
      end
    end
  end
  object qrRel: TfrxDBDataset
    UserName = 'qrRel'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'PERIDO=PERIDO'
      'TIPO=TIPO'
      'NOME_PLANO=NOME_PLANO'
      'HISTORICO=HISTORICO'
      'VALOR=VALOR'
      'LOGO=LOGO')
    DataSet = qrRelLanc
    BCDToCurrency = False
    Left = 312
    Top = 141
  end
  object qrRelLanc: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT'
      '    MD.CODIGO AS CODIGO,'
      '    MD.DATA AS PERIDO,'
      '    coalesce(MD.TIPO,'#39#39') AS TIPO,'
      '    PC.NOME AS NOME_PLANO,'
      '    MD.HISTORICO AS HISTORICO,'
      '    MD.VALOR_ENTRADA + MD.VALOR_SAIDA AS VALOR,'
      '    EP.LOGOMARCA AS LOGO'
      'FROM MOVIMENTO_DIARIO MD'
      '    LEFT JOIN PLANOCONTAS PC ON (PC.CODIGO = MD.COD_PLANO)'
      '    LEFT JOIN EMPRESA EP ON (EP.CODIGO = 1)'
      '    WHERE MD.CODIGO = :CODIGO')
    Left = 240
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrRelLancCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrRelLancPERIDO: TDateField
      FieldName = 'PERIDO'
      Origin = '"DATA"'
    end
    object qrRelLancTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qrRelLancNOME_PLANO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_PLANO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object qrRelLancHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 150
    end
    object qrRelLancVALOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrRelLancLOGO: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'LOGO'
      Origin = 'LOGOMARCA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
