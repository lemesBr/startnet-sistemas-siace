object frmcaixa_abertura: Tfrmcaixa_abertura
  Left = 713
  Top = 249
  BorderStyle = bsToolWindow
  Caption = 'CAIXA | Abertura do Caixa Geral'
  ClientHeight = 144
  ClientWidth = 369
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
  object Label1: TLabel
    Left = 64
    Top = 27
    Width = 80
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Data Caixa:'
  end
  object Label2: TLabel
    Left = 64
    Top = 51
    Width = 80
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Saldo Anterior:'
  end
  object Bevel2: TBevel
    Left = 0
    Top = 93
    Width = 369
    Height = 3
    Align = alBottom
    ExplicitTop = 85
  end
  object rsaldo: TRxCalcEdit
    Left = 156
    Top = 48
    Width = 117
    Height = 21
    AutoSize = False
    DisplayFormat = '###,###,##0.00'
    GlyphKind = gkCustom
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90909088878786858586868687878688
      8887888787878787878786868585868584969696FFFFFFFFFFFFFFFFFFFFFFFF
      878787C1C1C0BBBBBBBBBBBBBBBBBABBBBBABBBBBABBBBBABBBBBABBBBBAC1C1
      C08A8A89FFFFFFFFFFFFFFFFFFFFFFFF8B8B8AFEFEFEEAEAEAEAEAEAE8E8E8E7
      E7E7E6E6E6E6E6E6E5E5E5E5E5E5FEFEFE8D8C8BFFFFFFFFFFFFFFFFFFFFFFFF
      919090FEFEFEB3B3B3939393E6E6E6B1B1B1929292E2E2E2AFAFAF909090FAFA
      FA919190FFFFFFFFFFFFFFFFFFFFFFFF949494FEFEFEE7E7E7E6E6E6E4E4E4E2
      E2E2E1E1E1DFDFDFDEDEDEDBDBDBFEFEFE949494FFFFFFFFFFFFFFFFFFFFFFFF
      999998FEFEFEB0B0B0909090E1E1E1ACACAC8E8E8EDBDBDBA8A8A88C8C8CFAFA
      FA999898FFFFFFFFFFFFFFFFFFFFFFFF9D9C9CFEFEFEE2E2E2E0E0E0DBDBDBDA
      DADAD6D6D6D2D2D2D2D2D2D0D0D0FEFEFE9D9C9BFFFFFFFFFFFFFFFFFFFFFFFF
      9F9F9FFEFEFEACACAC8D8D8DD7D7D7A4A4A4898989CDCDCD7273E75157DAFAFA
      FA9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFA2A2A2FBFBFBD9D9D9D6D6D6D1D1D1CD
      CDCDC8C8C8C4C4C4C1C1C1BEBEBEFEFEFE9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF
      A2A2A2FEFEFEAF7A55C28C66C48E67C58F68C7916AC9936BC9946DAF7A55FEFE
      FEA09F9EFFFFFFFFFFFFFFFFFFFFFFFFA3A3A3FEFEFEAF7A55C08A63C28C65C4
      8E66C58F68C7916AC9936BAF7A55FEFEFE9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF
      A2A2A2FEFEFEA6714CA6714CA6714CA6714CA6714CA6714CA6714CA6714CFEFE
      FE9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9FEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEA2A2A2FFFFFFFFFFFFFFFFFFFFFFFF
      B2B2B2A8A8A8A7A7A7AAAAAAABABABACACACABABABAAAAAAA7A7A7A3A3A3A2A2
      A2B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    NumGlyphs = 1
    TabOrder = 1
    OnEnter = edataEnter
    OnExit = rsaldoExit
    OnKeyPress = rsaldoKeyPress
  end
  object edata: TDateEdit
    Left = 156
    Top = 24
    Width = 117
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
    TabOrder = 0
    OnEnter = edataEnter
    OnExit = edataExit
    OnKeyPress = edataKeyPress
  end
  object Panel4: TPanel
    Left = 0
    Top = 96
    Width = 369
    Height = 48
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bgravar: TAdvGlowButton
      Left = 76
      Top = 2
      Width = 107
      Height = 40
      Caption = 'F2 | Confirmar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 11
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
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
      Left = 189
      Top = 2
      Width = 105
      Height = 40
      Caption = 'ESC | Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 8
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bcancelarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
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
  object DataSource1: TDataSource
    DataSet = qrdata
    Left = 280
    Top = 80
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 72
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
  object qrdata: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'select * from MOVIMENTO_DIARIO')
    Left = 304
    Top = 24
  end
end
