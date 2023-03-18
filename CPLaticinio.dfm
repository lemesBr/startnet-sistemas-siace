object FormContasPagarLaticinio: TFormContasPagarLaticinio
  Left = 315
  Top = 173
  Caption = 'Lan'#231'amento de Contas a Pagar Laticinio'
  ClientHeight = 453
  ClientWidth = 729
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 406
    Width = 729
    Height = 47
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 0
    object ButtonNovo: TsuiButton
      Left = 157
      Top = 4
      Width = 105
      Height = 35
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = '&Novo '
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C6A36A209A2096A361F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
        1F7C1F7C1F7C1F7C6A36A209A209A209A209A2094F3B841EA209A209A209A209
        A2096A361F7C1F7C2926841E841E841E841E841E841E841E841E841E841E841E
        841EA2091F7C1F7C29264F3B4F3B4F3B4F3B4F3B4F3B841E4F3B4F3B4F3B4F3B
        4F3BA2091F7C1F7C6A36292629262926292629264F3B841EA209A209A209A209
        A2096A361F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C6A36292629266A361F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = ButtonNovoClick
      ResHandle = 0
    end
    object ButtonCancelar: TsuiButton
      Left = 272
      Top = 5
      Width = 105
      Height = 35
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Caption = '&Cancelar'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      Enabled = False
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C005800581F7C005800581F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        005800581F7C1F7C0058005800581F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0058
        00581F7C1F7C1F7C00580058005800581F7C1F7C1F7C1F7C1F7C1F7C00580058
        1F7C1F7C1F7C1F7C1F7C0068005C005800581F7C1F7C1F7C1F7C005800581F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C0058005800581F7C0058005800581F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C005800600060006400581F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C00600060006C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C005800680064006C00741F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C0070006C00681F7C1F7C007000741F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C007C006C00741F7C1F7C1F7C1F7C007C00781F7C
        1F7C1F7C1F7C1F7C1F7C00780078007C1F7C1F7C1F7C1F7C1F7C1F7C00780078
        1F7C1F7C1F7C1F7C0078007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        00781F7C1F7C0078007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = ButtonCancelarClick
      ResHandle = 0
    end
    object ButtonLC: TsuiButton
      Left = 613
      Top = 5
      Width = 105
      Height = 35
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = '&Localizar - F2'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C0D4EEB4D1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7CCC724576EB511F7C1F7C1F7C836A836A836A836A836A836A
        836A1F7C1F7C1F7C1F7CEA7E4676EC4D1F7C836A907F717F4F7B2B770977E876
        E772836A1F7C1F7C1F7C1F7CEA7E466EED498A6216671767336F4E7B2A770977
        E876836A1F7C1F7C1F7C1F7C1F7C0E7B964E5C5BFF6BFF6B9E6714674C7B2A7B
        0977836A1F7C1F7C1F7C1F7C1F7C915E5E57DF63FF6FFF73FF7F7D6FD25E4C7B
        4B7B836A1F7C1F7C1F7C1F7C1F7CBA4E5F537F57FF6FFF77FF7BFF6F1A5B6E7B
        6D7B836A1F7C1F7C1F7C1F7C1F7CBA527F531E47DF67FF73FF73FF6F1A5B8F7F
        8F7F836A1F7C1F7C1F7C1F7C1F7C72529D63BF673E4F7E5BFF67BE631463B07F
        B07F836A1F7C1F7C1F7C1F7C1F7C1F7CB756BE6F9F5B5F537E571863917FB07F
        B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C6C5A39635B67596BB67FB17FB07F
        B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836AF67FFB7FFB7FD77FB27FB07F
        B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836AD67FB77F957B727B6E7B6E7B
        B07F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A2E772F774F774F772D772B77
        2A77836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A7277D77FD57FD47FD27FB17F
        6E7B836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A836A
        836A1F7C1F7C}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = ButtonLCClick
      ResHandle = 0
    end
    object suiButton6: TsuiButton
      Left = 500
      Top = 5
      Width = 105
      Height = 35
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = '&Excluir'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 3
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7CB54E73427342734213361336753E1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C7D6BBF5F7F5B7F577F5BBF5FDF677F5B13361F7C
        1F7C1F7C1F7C1F7C1F7C7D6BFF6B7F575F4F3F478516DF6FDF6FFF6FFF6B1336
        1F7C1F7C1F7C1F7C1F7CDB427F53DF675F533F47851600020002220AB75BFF6B
        13361F7C1F7C1F7C1F7CDE3ABE36FF427F57DF5F85160002A71EFD7785167F5B
        753E1F7C1F7C1F7C7D6BDF3EDF3EDF3EDF3E5F5385168516220ABA672E3B3747
        753E1F7C1F7C1F7C5D5B3F473F473F473F477F5FED32DF6FCB2E851685167A57
        F94E1F7C1F7C1F7C5E575F535F535F535F537F57A71EED32ED36000285167F5B
        F94E1F7C1F7C1F7C7F57BF5BBF5BBF5BBF5BBF5BBA5B220A000200028516BF67
        F94E1F7C1F7C1F7C7F57FF6BFF6BFF6BFF6BFF6BFF6BFD6B7553B75B8516FF6F
        5A5B1F7C1F7C1F7C3F4FFF6BFF6BFF6BFF6BDF67BF5B5F537F53BF5FFF6BFF6B
        5A5B1F7C1F7C1F7C7F5F3F4F3F4F3F4FFD469D2E9D2A9D2EBE32BE32DE3A7F57
        5A5B1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C3F4FFD46BE36BE36DE3ADE3A
        5F4F1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C3F4FDF3EDF3E
        FE461F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton6Click
      ResHandle = 0
    end
    object suiDBNavigator11: TsuiDBNavigator
      Left = 7
      Top = 5
      Width = 144
      Height = 30
      Cursor = crDefault
      UIStyle = FromThemeFile
      DataSource = DM.DTS_ContasPagar
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 4
    end
    object ButtonSP: TsuiButton
      Left = 387
      Top = 5
      Width = 105
      Height = 35
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Caption = '&Salvar'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      Enabled = False
      TabOrder = 5
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C131DF21CD118F23DF65AF75EF85EF75AF65E1442B014
        B014D2181F7C1F7C7529382538251421903135461B63DF7BFF7FDD7B784E6F0C
        700C1621F31C1F7C75293725382514219031B014742D5C6BFF7BFF7F99526F0C
        700C1521F31C1F7C7529372538251421B23590109010B756BD77FF7FDB5A6F0C
        700C1521F31C1F7C7529372538251421D339B1146F0C12425967FF7FFB5E6F0C
        6F0CF51CF31C1F7C7529372538251521D639F63DB335D2393446FB5E5A4A9110
        91101621F31C1F7C752937253725372537253725372537251721172117213725
        37253825F21C1F7C7529F418131DB6353846594A594A594A3946594A594A794A
        18423725F21C1F7C7529D318FB5EDF7BDE77DE7BDE7BDE7BDE7BDE7BDE7BFF7F
        BA561621F31C1F7C7529D3183C67FF7FBE77BE77BE77BE77BE77BE77BE77DF7B
        BA561621F31C1F7C7529D3183C63BD7739633967396739673967396739679C73
        BA561621F31C1F7C7529D3183C67BD773A675A6B5A6B5A6B5A6B5A6B3A67BD77
        BA561621F31C1F7C7529D3183C67DE775B6B7B6B7B6B7B6B7B6B7B6B5B6BBD77
        BA561621F31C1F7C7529D3183C67BD7739673967396739673967396739679C73
        BB561621F31C1F7C7529D3183C63FF7FBF77BF77BF77BF77BF77BF77BF77FF7B
        BA561621F31C1F7C1F7CD2189752386318631863186318631863186318631863
        774ED1181F7C}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = ButtonSPClick
      ResHandle = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 369
    Width = 729
    Height = 37
    Align = alBottom
    Color = 15263976
    TabOrder = 1
    object suiDBNavigator21: TsuiDBNavigator
      Left = 4
      Top = 6
      Width = 328
      Height = 25
      Cursor = crDefault
      UIStyle = FromThemeFile
      DataSource = DM.DTS_Contas_Pagar
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 198
    Width = 729
    Height = 171
    Align = alClient
    Color = 15263976
    TabOrder = 2
    object Bevel1: TBevel
      Left = 5
      Top = 5
      Width = 713
      Height = 134
    end
    object DBGridCP: TsuiDBGrid
      Left = 1
      Top = 1
      Width = 727
      Height = 169
      Align = alClient
      BorderStyle = bsNone
      Color = 15198183
      Ctl3D = False
      DataSource = DM.DTS_Contas_Pagar
      FixedColor = 15490654
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UIStyle = BlueGlass
      BorderColor = clBlack
      FocusedColor = clGreen
      SelectedColor = clYellow
      FontColor = clBlack
      TitleFontColor = clWhite
      FixedBGColor = 15490654
      BGColor = 15198183
      Columns = <
        item
          Expanded = False
          FieldName = 'FORNECEDOR'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Observa'#231#245'es da Parcela'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 291
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'N_DOCUMENTO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Doc.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 69
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SERIE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'S'#233'rie'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 54
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PARCELA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Parcela'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 61
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA_VENCIMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Data (Vencimento)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_PARCELA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Valor (Parcela)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 112
          Visible = True
        end>
    end
  end
  object Pnldados: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 198
    Align = alTop
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 3
    object RxLabel2: TRxLabel
      Left = 107
      Top = 58
      Width = 122
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tipo de Documento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel3: TRxLabel
      Left = 7
      Top = 10
      Width = 225
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Documento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel4: TRxLabel
      Left = 383
      Top = 107
      Width = 125
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor das Parcelas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 7
      Top = 104
      Width = 225
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data do Primeiro Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel6: TRxLabel
      Left = 382
      Top = 83
      Width = 125
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor do Documento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel9: TRxLabel
      Left = 5
      Top = 37
      Width = 225
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'S'#233'rie:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel7: TRxLabel
      Left = 5
      Top = 78
      Width = 225
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data de Emiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel8: TRxLabel
      Left = 383
      Top = 60
      Width = 125
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'N'#250'mero de Parcelas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel13: TRxLabel
      Left = 377
      Top = 37
      Width = 129
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Condi'#231#227'o de Pagto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object suiDBComboBox1: TsuiDBComboBox
      Left = 240
      Top = 53
      Width = 120
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TIPO_DOCUMENTO'
      DataSource = DM.DTS_ContasPagar
      Items.Strings = (
        'LEITE'
        ''
        '')
      TabOrder = 2
      UIStyle = FromThemeFile
      BorderColor = clBlack
      ArrowColor = clBlack
      ButtonColor = 15263976
    end
    object suiDBEdit2: TsuiDBEdit
      Left = 240
      Top = 30
      Width = 120
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'SERIE'
      DataSource = DM.DTS_ContasPagar
      TabOrder = 1
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object DBDateEdit1: TDBDateEdit
      Left = 241
      Top = 76
      Width = 120
      Height = 19
      DataField = 'DATA_EMISSAO'
      DataSource = DM.DTS_ContasPagar
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 3
    end
    object DBDateEdit2: TDBDateEdit
      Left = 242
      Top = 100
      Width = 120
      Height = 19
      DataField = 'DATA_VENCIMENTO'
      DataSource = DM.DTS_ContasPagar
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 4
    end
    object suiDBEdit3: TsuiDBEdit
      Left = 513
      Top = 56
      Width = 88
      Height = 21
      BevelInner = bvLowered
      BevelKind = bkTile
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'PARCELA'
      DataSource = DM.DTS_ContasPagar
      TabOrder = 6
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object suiDBEdit4: TsuiDBEdit
      Left = 513
      Top = 79
      Width = 200
      Height = 21
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'VALOR_DOCUMENTO'
      DataSource = DM.DTS_ContasPagar
      TabOrder = 7
      OnKeyPress = suiDBEdit4KeyPress
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object suiDBEdit5: TsuiDBEdit
      Left = 513
      Top = 102
      Width = 200
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'VALOR_PARCELA'
      DataSource = DM.DTS_ContasPagar
      TabOrder = 8
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object Panel4: TPanel
      Left = 5
      Top = 126
      Width = 714
      Height = 45
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 9
      TabStop = True
      object Label1: TLabel
        Left = 7
        Top = 3
        Width = 401
        Height = 39
        Caption = 
          'Ap'#243's GERAR AS PARCELAS  a Grid '#233' habilitada para que possa ser f' +
          'eita altera'#231#245'es'#13#10'nos valores das parcelas e datas de vencimento.' +
          ' Fa'#231'a as altera'#231#245'es necess'#225'rias na '#13#10'Grid e salve o registro.'
        Transparent = True
      end
      object ButtonGP: TsuiButton
        Left = 507
        Top = 6
        Width = 202
        Height = 36
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Caption = '&Gerar Parcelas'
        AutoSize = False
        ParentFont = False
        UIStyle = FromThemeFile
        Enabled = False
        TabOrder = 0
        Transparent = False
        ModalResult = 0
        FocusedRectMargin = 2
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF05710AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF05710A05710AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF05710A14A82405710AFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF05710A24B63C1CAF3005710A05710A05
          710A05710A05710A05710A05710A05710AFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05710A39C6592FBF4C27B7
          3F1FB13318AA2811A6200EA31B0EA31B0EA31B0EA31B05710AFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05710A4BD575
          44CF693BC85D32C14F29B94321B33618AC2B12A6220EA31B0EA31B0EA31B0571
          0AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF05710A4ED77746D16C3DCA5F34C3532BBB4522B4391BAD2E14A824
          0FA31C0EA31B05710AFF00FFFF00FFFF00FFFF00FF1C78D51C78D51C78D51C78
          D51C78D51C78D51C78D51C5996FF00FF05710A4FD87A48D26F05710A05710A05
          710A05710A05710A05710A05710A05710A1C78D51C78D5FF00FF1C78D5A7DAFF
          4EB3FE4CB1FE4AAFFF48ADFF46ABFF44A9FF1C5996FF00FFFF00FF05710A50D9
          7C05710AFF00FFFF00FFE4F0FC3499FF3499FF3499FF3499FF3499FF3499FF1C
          78D51C78D5A8DBFF50B5FE4EB3FE4CB1FE4AAFFF48ADFF46ABFF1C5996FF00FF
          FF00FFFF00FF05710A05710AFF00FFFF00FFE4F0FC3499FF3499FF3499FF3499
          FF3499FF3499FF1C78D51C78D5A9DCFF52B7FE50B5FE4EB3FE4CB1FE4AAFFF48
          FDFF1C5996FF00FFFF00FFFF00FFFF00FF05710AFF00FFFF00FFE4F0FC3499FF
          3499FF3499FF3499FF3499FF3499FF1C78D51C78D5AADDFF54B9FE52B7FE50B5
          FE4EB3FE4CB1FE4AAFFF1C5996FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFE4F0FC3499FF3499FF3499FF3499FF3499FF3499FF1C78D51C78D5ABDEFF
          56BBFE54B9FE52B7FE50B5FE4EB3FE4CB1FE1C5996FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFE4F0FC3499FF3499FF3499FF3499FF3499FF3499FF1C
          78D51C78D5ACDFFF58BDFE56BBFE54B9FE52B7FE50B5FE4EB3FE1C5996FF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE4F0FC3499FF3499FF3499FF3499
          FF3499FF3499FF1C78D51C78D5ADE0FF5ABFFE58BDFE56BBFE54B9FE52B7FE50
          B5FE1C5996FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE4F0FCE4F0FC
          E4F0FCE4F0FCE4F0FCE4F0FCE4F0FCE4F0FC1C78D5629DCF398DCF388CCF378B
          CF368ACF3589CF3488CF1C59961C59961C59961C59961C59961C59961C59961C
          59961C5996FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C78D5AFE2FF
          5EC3FE5CC1FE5ABFFE58BDFE56BBFE54B9FE3488CF50B5FE4EB3FE4CB1FE4AAF
          FF48ADFF46ABFF44A9FF1C78D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF1C78D5B0E2FF5FC4FE5EC3FE5CC1FE5ABFFE58BDFE56BBFE3589CF52B7FE
          50B5FE4EB3FE4CB1FE4AAFFF48ADFF46ABFF1C78D5FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF1C78D5B0E3FF61C6FE5FC4FE5DC2FE5CC1FE5ABFFE58
          BDFE368ACF54B9FE52B7FE50B5FE4EB3FE4CB1FE4AAFFF48ADFF1C78D5FF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C78D5B0E3FF61C6FE61C6FE5FC4
          FE5DC2FE5BC0FE59BEFE378BCF56BBFE54B9FE52B7FE50B5FE4EB3FE4CB1FE4A
          AFFF1C78D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C78D5B0E3FF
          61C6FE61C6FE61C6FE5FC4FE5DC2FE5BC0FE388CCF58BDFE56BBFE54B9FE52B7
          FE50B5FE4EB3FE4CB1FE1C78D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF1C78D5BAE6FF61C6FE61C6FE61C6FE61C6FE5FC4FE5DC2FE398DCF59BEFE
          58BDFE56BBFE54B9FE52B7FE50B5FE4EB3FE1C78D5FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF1C78D5E7F3FCBAE6FFB0E3FFB0E3FFB0E3FFB0E2FFAF
          E1FF629DCFADDFFFACDEFFABDEFFAADDFFA9DCFFA8DBFFA7DAFF1C78D5FF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C78D51C78D51C78D51C78
          D51C78D51C78D51C78D51C78D51C78D51C78D51C78D51C78D51C78D51C78D51C
          78D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Layout = blGlyphLeft
        Spacing = 4
        MouseContinuouslyDownInterval = 100
        OnClick = ButtonGPClick
        ResHandle = 0
      end
    end
    object suiDBLookupComboBox1: TsuiDBLookupComboBox
      Left = 513
      Top = 33
      Width = 201
      Height = 21
      DataField = 'COND_PAGTO'
      DataSource = DM.DTS_ContasPagar
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = DM.DTS_CondPagamento
      TabOrder = 5
      OnKeyDown = suiDBLookupComboBox1KeyDown
      UIStyle = FromThemeFile
      BorderColor = clBlack
      ArrowColor = clBlack
      ButtonColor = 15263976
    end
    object DBnota: TRxDBComboEdit
      Left = 238
      Top = 6
      Width = 122
      Height = 21
      DataField = 'N_DOCUMENTO'
      DataSource = DM.DTS_ContasPagar
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      TabOrder = 0
    end
    object FORNECEDOR2: TsuiDBEdit
      Left = 421
      Top = 6
      Width = 293
      Height = 21
      TabStop = False
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'FORNECEDOR'
      DataSource = DM.DTS_ContasPagar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object fornecedor1: TsuiDBEdit
      Left = 359
      Top = 6
      Width = 55
      Height = 21
      TabStop = False
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'CODIGO_FORNECEDOR'
      DataSource = DM.DTS_ContasPagar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
  end
  object MSG_TC: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 2
    Button1Caption = 'Fornecedor'
    Button2Caption = 'Pl. Contas'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 6
    Button3ModalResult = 2
    IconType = suiInformation
    Text = 
      'Informe o Tipo de Lan'#231'amento                 ( Fornecedores - Pl' +
      'ano de Contas )'
    Left = 283
    Top = 2
  end
  object MessageErroFornecedor: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiStop
    Text = 'Este Fornecedor N'#227'o Est'#225' Cadastrado!'
    Left = 319
    Top = 3
  end
  object MessageCanClose: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 0
    Button3ModalResult = 0
    IconType = suiInformation
    Text = 'Antes de Sair Voc'#234' Deve Salvar ou Cancelar!'
    Left = 349
    Top = 2
  end
  object Exclusao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Confirma'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 2
    Button1Caption = 'Sim'
    Button2Caption = 'N'#227'o'
    Button3Caption = 'Cancel'
    Button1ModalResult = 6
    Button2ModalResult = 7
    Button3ModalResult = 2
    IconType = suiHelp
    Text = 'Confirma Exclus'#227'o da Conta e todas as Parcelas Correspondentes ?'
    Left = 380
    Top = 2
  end
  object PerExcluir: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Aten'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiWarning
    Text = 
      'Usuario n'#227'o tem acesso para excluir registro! Consulte o adminis' +
      'trador do sistema.'
    Left = 410
    Top = 2
  end
  object ErroGravacao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiStop
    Text = 
      'Ocorreu um Erro! Tente Novamente, Verifique a Data de Vencimento' +
      '!'
    Left = 440
    Top = 2
  end
  object MSG_ERRO: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiStop
    Text = 'Hello world!'
    Left = 470
    Top = 2
  end
  object PerInserir: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Aten'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiWarning
    Text = 
      'Usuario n'#227'o tem acesso para inserir registro! Consulte o adminis' +
      'trador do sistema.'
    Left = 500
    Top = 1
  end
  object PerEditar: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Aten'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiWarning
    Text = 
      'Usuario n'#227'o tem acesso para editar registro! Consulte o administ' +
      'rador do sistema.'
    Left = 542
    Top = 1
  end
end
