object frmTitulos: TfrmTitulos
  Left = 419
  Top = 200
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsDialog
  Caption = 'T'#237'tulos - Banc'#225'rios'
  ClientHeight = 350
  ClientWidth = 580
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TsPanel
    Left = 0
    Top = 312
    Width = 580
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object butConfirmar: TsBitBtn
      Left = 16
      Top = 8
      Width = 89
      Height = 25
      Caption = '&Confirmar'
      Default = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
      OnClick = butConfirmarClick
      SkinData.SkinSection = 'BUTTON'
    end
    object butCancelar: TsBitBtn
      Left = 128
      Top = 8
      Width = 89
      Height = 25
      Cancel = True
      Caption = 'C&ancelar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 1
      OnClick = butCancelarClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object pnlInformacoes: TsPanel
    Left = 0
    Top = 0
    Width = 580
    Height = 311
    Align = alTop
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      580
      311)
    object Label35: TsLabel
      Left = 18
      Top = 16
      Width = 134
      Height = 13
      Caption = 'Banco Cedente -Layout'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object Label22: TsLabel
      Left = 184
      Top = 56
      Width = 115
      Height = 13
      Caption = 'Data do vencimento'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object Label18: TsLabel
      Left = 16
      Top = 136
      Width = 80
      Height = 13
      Caption = 'Dados do cliente'
    end
    object Label19: TsLabel
      Left = 184
      Top = 176
      Width = 160
      Height = 13
      Caption = 'Nosso n'#250'mero (c'#243'digo no banco) '
      FocusControl = EditNossoNumero
    end
    object Label17: TsLabel
      Left = 468
      Top = 136
      Width = 98
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Valor de juros / mora'
    end
    object Label16: TsLabel
      Left = 470
      Top = 96
      Width = 96
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Valor do Acrescimos'
    end
    object Label15: TsLabel
      Left = 480
      Top = 56
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Valor do desconto'
    end
    object Label13: TsLabel
      Left = 452
      Top = 16
      Width = 114
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Valor do documento'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object lblDataDocumento: TsLabel
      Left = 16
      Top = 56
      Width = 79
      Height = 13
      Caption = 'Data documento'
    end
    object Label1: TLabel
      Left = 16
      Top = 96
      Width = 119
      Height = 13
      Caption = 'Data do recebimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDataCredito: TsLabel
      Left = 184
      Top = 96
      Width = 74
      Height = 13
      Caption = 'Banco Portador'
    end
    object lblValorLiquidoRecebido: TsLabel
      Left = 440
      Top = 216
      Width = 126
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Valor l'#237'quido recebido'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object lblValorPagoPeloCliente: TsLabel
      Left = 458
      Top = 176
      Width = 108
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Valor pago pelo cliente'
    end
    object lblObservacoes: TsLabel
      Left = 16
      Top = 216
      Width = 63
      Height = 13
      Caption = 'Observa'#231#245'es'
      FocusControl = EditNossoNumero
    end
    object Label2: TsLabel
      Left = 16
      Top = 176
      Width = 156
      Height = 13
      Caption = 'Seu n'#250'mero (c'#243'digo na empresa)'
      FocusControl = EditSeuNumero
    end
    object Label5: TsLabel
      Left = 357
      Top = 184
      Width = 8
      Height = 32
      Caption = '-'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object Label3: TsLabel
      Left = 370
      Top = 176
      Width = 29
      Height = 13
      Caption = 'Dig'#237'to'
      FocusControl = EditNossoNumero
    end
    object Label4: TsLabel
      Left = 311
      Top = 98
      Width = 30
      Height = 13
      Caption = 'Qtde:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Label6: TsLabel
      Left = 312
      Top = 57
      Width = 42
      Height = 13
      Caption = 'Layout:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object EditSeuNumero: TsDBEdit
      Left = 16
      Top = 192
      Width = 155
      Height = 21
      TabStop = False
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object EditNossoNumero: TsDBEdit
      Left = 184
      Top = 192
      Width = 169
      Height = 21
      AutoSelect = False
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object cboCliente: TsDBLookupComboBox
      Left = 16
      Top = 152
      Width = 422
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clWhite
      DataField = 'CODIGO_CLIENTE'
      DataSource = DMCOB.DTS_Titulos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'CODIGO'
      ListField = 'NOME_RS'
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      SkinData.SkinSection = 'COMBOBOX'
    end
    object DataDocumento: TsDBEdit
      Left = 16
      Top = 72
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'DATA_COMPRA'
      DataSource = DMCOB.DTS_Titulos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object DataVencimento: TsDBEdit
      Left = 184
      Top = 72
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'DATA_VENCIMENTO'
      DataSource = DMCOB.DTS_Titulos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object ValorDocumento: TsDBEdit
      Left = 448
      Top = 32
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'VALOR_COMPRA'
      DataSource = DMCOB.DTS_Titulos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object ValorDesconto: TsDBEdit
      Left = 448
      Top = 72
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'VALOR_DESCONTO'
      DataSource = DMCOB.DTS_Titulos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object ValorAcrescimo: TsDBEdit
      Left = 448
      Top = 112
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'VALOR_ACRESCIMO'
      DataSource = DMCOB.DTS_Titulos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object ValorMoraJuros: TsDBEdit
      Left = 448
      Top = 152
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'VALOR_JUROS'
      DataSource = DMCOB.DTS_Titulos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object ValorPagoPeloCliente: TsDBEdit
      Left = 448
      Top = 192
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'VALOR_PAGO'
      DataSource = DMCOB.DTS_Titulos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object ValorLiquidoRecebido: TsDBEdit
      Left = 448
      Top = 232
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'VALOR_TOTAL'
      DataSource = DMCOB.DTS_Titulos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object DataRecebimento: TsDBEdit
      Left = 16
      Top = 112
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'DATA_BAIXA'
      DataSource = DMCOB.DTS_Titulos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object txtDigitoNossoNumero: TsEdit
      Left = 368
      Top = 192
      Width = 41
      Height = 21
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object MaskEdit1: TsMaskEdit
      Left = 311
      Top = 111
      Width = 33
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      Text = '1'
      CheckOnExit = True
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      SkinData.SkinSection = 'EDIT'
    end
    object txtObservacoes: TsMemo
      Left = 16
      Top = 230
      Width = 425
      Height = 74
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'txtObservacoes')
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 14
      Text = 'txtObservacoes'#13#10
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      SkinData.SkinSection = 'EDIT'
    end
    object ComboBox3: TsComboBox
      Left = 313
      Top = 71
      Width = 97
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taAlignTop
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 15
      Text = 'Boleto PFDr'#227'o'
      Items.Strings = (
        'Boleto PFDr'#227'o'
        'Carn'#234)
    end
    object Edit1: TsEdit
      Left = 184
      Top = 112
      Width = 49
      Height = 21
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object Edit2: TsEdit
      Left = 232
      Top = 111
      Width = 33
      Height = 21
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object Edit3: TsEdit
      Left = 264
      Top = 111
      Width = 33
      Height = 21
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object cboCedente: TsDBLookupComboBox
      Left = 18
      Top = 35
      Width = 262
      Height = 21
      Hint = 'Selecione o Banco'
      Color = clWhite
      DataField = 'ID_PORTADOR'
      DataSource = DMCOB.DTS_Titulos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'CODIGO_BOLETO'
      ListField = 'DESCRICAO'
      ListFieldIndex = 1
      ListSource = DMCOB.Dts_Cedentes
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
      OnEnter = cboCedenteEnter
      OnExit = cboCedenteExit
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      SkinData.SkinSection = 'COMBOBOX'
    end
    object CheckBox1: TCheckBox
      Left = 312
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Com Registro'
      TabOrder = 20
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 305
      Top = 39
      Width = 97
      Height = 17
      Caption = 'Sem Registro'
      Checked = True
      State = cbChecked
      TabOrder = 21
      OnClick = CheckBox2Click
    end
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Documento Word Rtf'
    Left = 449
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 473
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport(Open Source) v3.24(BETA10) \251 Copyright '#169' 1999-20' +
      '06 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 489
  end
  object RLBRemessa1: TRLBRemessa
    NumeroArquivo = 0
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRetorno
    Left = 128
  end
  object gBTitulo1: TRLBTitulo
    PrintDialog = True
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaFisica
    Sacado.TipoInscricao = tiPessoaFisica
    AceiteDocumento = adNao
    EspecieDocumento = edDuplicataMercantil
    EmissaoBoleto = ebClienteEmite
    LayoutNN = lnN11
    Versao = '1.1.5'
    Left = 224
  end
end
