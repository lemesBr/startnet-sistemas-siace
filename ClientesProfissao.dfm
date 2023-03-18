object FormClienteProfissao: TFormClienteProfissao
  Left = 446
  Top = 118
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Profiss'#227'o'
  ClientHeight = 399
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    457
    399)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 440
    Height = 383
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
  end
  object RxLabel4: TRxLabel
    Left = 17
    Top = 19
    Width = 102
    Height = 13
    Caption = 'Profiss'#227'o/Ocupa'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel1: TRxLabel
    Left = 16
    Top = 43
    Width = 116
    Height = 13
    Caption = 'Natureza da Ocupa'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel2: TRxLabel
    Left = 16
    Top = 67
    Width = 76
    Height = 13
    Caption = 'Nivel do Cargo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel3: TRxLabel
    Left = 16
    Top = 91
    Width = 99
    Height = 13
    Caption = 'Descri'#231#227'o do Cargo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel5: TRxLabel
    Left = 16
    Top = 115
    Width = 109
    Height = 13
    Caption = 'Empresa/Empregador:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel6: TRxLabel
    Left = 16
    Top = 187
    Width = 54
    Height = 13
    Caption = 'CPF/CNPJ:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel7: TRxLabel
    Left = 16
    Top = 211
    Width = 39
    Height = 13
    Caption = 'Cidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel8: TRxLabel
    Left = 17
    Top = 236
    Width = 72
    Height = 13
    Caption = 'Data de Inicio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel9: TRxLabel
    Left = 16
    Top = 259
    Width = 66
    Height = 13
    Caption = 'Renda Bruta:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel10: TRxLabel
    Left = 16
    Top = 283
    Width = 97
    Height = 13
    Caption = 'Gastos com Veiculo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel11: TRxLabel
    Left = 16
    Top = 307
    Width = 75
    Height = 13
    Caption = 'Outros Gastos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object db_nome: TDBEdit
    Left = 135
    Top = 16
    Width = 300
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'PROFISSAO_OCUPACAO'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 135
    Top = 40
    Width = 300
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'NATUREZA_OCUPACAO'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 135
    Top = 64
    Width = 300
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'NIVEL_CARGO'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 135
    Top = 88
    Width = 300
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'DESCRICAO_CARGO'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 135
    Top = 112
    Width = 300
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'EMPRESA_EMPREGADOR'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object suiDBRadioGroup2: TDBRadioGroup
    Left = 136
    Top = 137
    Width = 142
    Height = 40
    Hint = 'Selecione Ativo ou Inativo'
    BiDiMode = bdRightToLeft
    Caption = 'Tipo de Pessoa'
    Columns = 2
    DataField = 'TIPO'
    DataSource = FormClientes.dsProfissao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica')
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 5
    TabStop = True
    Values.Strings = (
      'F'
      'J')
  end
  object DBEdit5: TDBEdit
    Left = 135
    Top = 184
    Width = 300
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'CPF_CNPJ'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 135
    Top = 208
    Width = 300
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'CIDADE'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object DBDateEdit5: TDBDateEdit
    Left = 135
    Top = 232
    Width = 122
    Height = 21
    DataField = 'DATA_INICIO'
    DataSource = FormClientes.dsProfissao
    Color = 15263976
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
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
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit7: TDBEdit
    Left = 135
    Top = 256
    Width = 122
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'RENDA_BRUTA'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit8: TDBEdit
    Left = 135
    Top = 280
    Width = 122
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'GASTOS_VEICULO'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object DBEdit9: TDBEdit
    Left = 135
    Top = 304
    Width = 122
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'OUTROS_GASTOS'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object btnSalvar: TAdvGlowButton
    Left = 317
    Top = 345
    Width = 122
    Height = 32
    Caption = 'F10 | Gravar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 10
    Images = FormPrincipal.sAlphaImageList2
    FocusType = ftHot
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    Transparent = True
    TabOrder = 12
    OnClick = btnSalvarClick
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
  object btnCancelar: TAdvGlowButton
    Left = 20
    Top = 345
    Width = 117
    Height = 32
    Caption = 'F5 | Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 12
    Images = FormPrincipal.sAlphaImageList2
    FocusType = ftHot
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    Transparent = True
    TabOrder = 13
    OnClick = btnCancelarClick
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
