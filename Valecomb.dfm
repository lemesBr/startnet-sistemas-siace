inherited FormValeComb: TFormValeComb
  Left = 461
  Top = 228
  Caption = 'Gerenciamento de Vale Cr'#233'dito/D'#233'bito'
  ClientHeight = 272
  ClientWidth = 674
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 680
  ExplicitHeight = 301
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TAdvPanel
    Width = 674
    Height = 221
    ExplicitWidth = 674
    ExplicitHeight = 221
    FullHeight = 152
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 65
      Height = 13
      Caption = 'Sequencia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 178
      Top = 11
      Width = 28
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 8
      Top = 74
      Width = 118
      Height = 13
      Caption = 'Cod. Cliente/Fretista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object BtnAddPro: TSpeedButton
      Left = 136
      Top = 90
      Width = 25
      Height = 21
      Hint = 'Cadastrar Produto'
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000D0000000D0000000100
        0400000000006800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        700077777777777770007777700077777000777770C077777000777770C07777
        7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
        7000777770C07777700077777000777770007777777777777000777777777777
        7000}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnAddProClick
    end
    object Label11: TLabel
      Left = 170
      Top = 74
      Width = 171
      Height = 13
      Caption = 'Descri'#231#227'o do Cliente/Frertista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 517
      Top = 116
      Width = 59
      Height = 13
      Caption = 'Valor Vale'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 458
      Top = 11
      Width = 45
      Height = 13
      Caption = 'DB/CR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 338
      Top = 11
      Width = 28
      Height = 13
      Caption = 'Hora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 9
      Top = 174
      Width = 55
      Height = 13
      Caption = 'Historico:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 8
      Top = 34
      Width = 75
      Height = 13
      Caption = 'Cod. Ve'#237'culo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 170
      Top = 33
      Width = 171
      Height = 13
      Caption = 'Descri'#231#227'o do Cliente/Frertista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object SpeedButton1: TSpeedButton
      Left = 136
      Top = 49
      Width = 25
      Height = 21
      Hint = 'Cadastrar Produto'
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000D0000000D0000000100
        0400000000006800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        700077777777777770007777700077777000777770C077777000777770C07777
        7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
        7000777770C07777700077777000777770007777777777777000777777777777
        7000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object DBEdit1: TDBEdit
      Left = 76
      Top = 8
      Width = 85
      Height = 21
      Color = cl3DLight
      DataField = 'CODIGO'
      DataSource = DM1.dts_vale_troco
      TabOrder = 0
    end
    object dt_venda: TDBDateEdit
      Left = 212
      Top = 8
      Width = 109
      Height = 21
      DataField = 'DATA'
      DataSource = DM1.dts_vale_troco
      NumGlyphs = 2
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 552
      Top = 80
      Width = 57
      Height = 21
      TabOrder = 9
      Visible = False
    end
    object RxDBComboEdit1: TRxDBComboEdit
      Left = 9
      Top = 87
      Width = 121
      Height = 21
      ClickKey = 113
      DataField = 'COD_CLIENTE'
      DataSource = DM1.dts_vale_troco
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      TabOrder = 5
      OnButtonClick = RxDBComboEdit1ButtonClick
      OnExit = RxDBComboEdit1Exit
      OnKeyDown = RxDBComboEdit1KeyDown
      OnKeyPress = RxDBComboEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 168
      Top = 90
      Width = 495
      Height = 21
      TabStop = False
      Color = cl3DLight
      DataField = 'NOME_CLIENTE'
      DataSource = DM1.dts_vale_troco
      Enabled = False
      TabOrder = 10
    end
    object DBEdit3: TDBEdit
      Left = 9
      Top = 193
      Width = 649
      Height = 21
      CharCase = ecUpperCase
      DataField = 'HISTORICO'
      DataSource = DM1.dts_vale_troco
      TabOrder = 8
    end
    object EvDBComboBox1: TRxDBComboBox
      Left = 504
      Top = 8
      Width = 159
      Height = 21
      Color = clWhite
      DataField = 'DEBITOCREDITO'
      DataSource = DM1.dts_vale_troco
      Items.Strings = (
        'D'#233'bito'
        'Cr'#233'dito')
      TabOrder = 3
      OnChange = EvDBComboBox1Change
    end
    object EvDBTimeEdit1: TRzDBDateTimeEdit
      Left = 376
      Top = 8
      Width = 57
      Height = 21
      DataSource = DM1.dts_vale_troco
      DataField = 'HORA'
      TabOrder = 2
      EditType = etDate
    end
    object EvDBNumEdit1: TRzDBNumericEdit
      Left = 517
      Top = 135
      Width = 87
      Height = 21
      DataSource = DM1.dts_vale_troco
      DataField = 'VALOR_VALETROCO'
      Alignment = taLeftJustify
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      DisplayFormat = ',0;(,0)'
    end
    object veiculo: TRzButtonEdit
      Left = 9
      Top = 49
      Width = 120
      Height = 21
      Text = ''
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 10550008
      ParentFont = False
      TabOrder = 4
      OnChange = veiculoChange
      OnExit = veiculoExit
      ButtonGlyph.Data = {
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
      ButtonNumGlyphs = 1
      ButtonKind = bkCustom
      ButtonShortCut = 113
      AltBtnWidth = 15
      ButtonWidth = 22
      OnButtonClick = veiculoButtonClick
    end
    object DBEdit4: TEdit
      Left = 168
      Top = 49
      Width = 497
      Height = 21
      TabStop = False
      Color = cl3DLight
      Enabled = False
      TabOrder = 11
    end
    object suiDBRadioGroup2: TDBRadioGroup
      Left = 9
      Top = 114
      Width = 343
      Height = 55
      Hint = 'Selecione Ativo ou Inativo'
      BiDiMode = bdRightToLeft
      Caption = 'Tipo do Vale'
      Columns = 2
      DataField = 'TIPO'
      DataSource = DM1.dts_vale_troco
      Items.Strings = (
        '&Combust'#237'vel'
        '&Vale'
        '&Ped'#225'gio'
        'Cr'#233'dito do &Freteiro')
      ParentBiDiMode = False
      TabOrder = 6
      TabStop = True
      Values.Strings = (
        'C'
        'V'
        'P'
        'A')
      OnEnter = suiDBRadioGroup2Enter
    end
  end
  inherited Panel2: TAdvPanel
    Top = 221
    Width = 674
    ExplicitTop = 221
    ExplicitWidth = 674
    FullHeight = 51
    inherited btnLocalizar: TAdvGlowButton
      Left = 572
      TabOrder = 6
      OnClick = BtnConsultarClick
      ExplicitLeft = 572
      ExplicitTop = 2
      ExplicitHeight = 47
    end
    inherited btnSalvar: TAdvGlowButton
      TabOrder = 3
      OnClick = BtnGravarClick
      ExplicitLeft = 402
      ExplicitTop = 2
      ExplicitHeight = 47
    end
    inherited btnexcluir: TAdvGlowButton
      TabOrder = 4
      OnClick = BtnExcluirClick
      ExplicitLeft = 302
      ExplicitTop = 2
    end
    inherited btnCancelar: TAdvGlowButton
      TabOrder = 2
      OnClick = BtnCancelarClick
      ExplicitLeft = 202
    end
    inherited btnEditar: TAdvGlowButton
      TabOrder = 1
      OnClick = BtnAlterarClick
      ExplicitLeft = 102
    end
    inherited btnNovo: TAdvGlowButton
      TabOrder = 0
      OnClick = btnNovoClick
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitHeight = 47
    end
    object FDvGlowButton1: TAdvGlowButton
      Left = 576
      Top = 3
      Width = 90
      Height = 48
      Caption = 'Localizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 20
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 5
      OnClick = BtnConsultarClick
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
  object MsgErro: TsuiMessageDialog
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
    Text = 'Ocorreu um Erro! Tente Novamente!'
    Left = 338
    Top = 27
  end
  object MsgAtencao: TsuiMessageDialog
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
    Button2ModalResult = 0
    Button3ModalResult = 0
    IconType = suiWarning
    Text = 'Antes de sair voc'#234' deve salvar ou cancelar!'
    Left = 366
    Top = 27
  end
  object MsgConfirmacao: TsuiMessageDialog
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
    Text = 'Confirma Exclus'#227'o?'
    Left = 394
    Top = 27
  end
  object MsgInformacao: TsuiMessageDialog
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
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiInformation
    Text = 'Hello world!'
    Left = 422
    Top = 27
  end
  object zQuery1: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'UPDATE valetroco set valetroco.situacao = 0 where situacao is nu' +
        'll')
    Left = 464
    Top = 32
  end
end
