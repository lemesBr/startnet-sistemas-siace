object frmTitulos: TfrmTitulos
  Left = 419
  Top = 200
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsDialog
  Caption = 'T'#237'tulos - Banc'#225'rios'
  ClientHeight = 526
  ClientWidth = 594
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
    Top = 488
    Width = 594
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object butConfirmar: TsBitBtn
      Left = 13
      Top = 6
      Width = 102
      Height = 25
      Caption = '&Gerar Boletos'
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
    end
    object butCancelar: TsBitBtn
      Left = 491
      Top = 6
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
    end
    object sBitBtn1: TsBitBtn
      Left = 255
      Top = 7
      Width = 89
      Height = 25
      Caption = '&Gera Html'
      Default = True
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 2
      OnClick = sBitBtn1Click
    end
    object sBitBtn2: TsBitBtn
      Left = 376
      Top = 7
      Width = 89
      Height = 25
      Caption = '&Gera Pdf'
      Default = True
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 3
      OnClick = sBitBtn2Click
    end
    object sBitBtn3: TsBitBtn
      Left = 139
      Top = 7
      Width = 89
      Height = 25
      Caption = '&lmprimir'
      Default = True
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 4
      OnClick = sBitBtn3Click
    end
  end
  object pnlInformacoes: TsPanel
    Left = 0
    Top = 0
    Width = 594
    Height = 345
    Align = alTop
    TabOrder = 1
    DesignSize = (
      594
      345)
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
      Left = 482
      Top = 136
      Width = 98
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Valor de juros / mora'
      ExplicitLeft = 468
    end
    object Label16: TsLabel
      Left = 484
      Top = 96
      Width = 96
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Valor do Acrescimos'
      ExplicitLeft = 470
    end
    object Label15: TsLabel
      Left = 494
      Top = 56
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Valor do desconto'
      ExplicitLeft = 480
    end
    object Label13: TsLabel
      Left = 466
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
      ExplicitLeft = 452
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
      Left = 454
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
      ExplicitLeft = 440
    end
    object lblValorPagoPeloCliente: TsLabel
      Left = 472
      Top = 176
      Width = 108
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Valor pago pelo cliente'
      ExplicitLeft = 458
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
    object sLabel3: TsLabel
      Left = 31
      Top = 287
      Width = 76
      Height = 13
      Caption = 'C'#243'd. Avalista:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object sLabel4: TsLabel
      Left = 141
      Top = 287
      Width = 150
      Height = 13
      Caption = 'Nome do Sacador Avalista:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object sLabel5: TsLabel
      Left = 420
      Top = 287
      Width = 58
      Height = 13
      Caption = 'Cpf / Cnpj:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
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
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
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
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
    object cboCliente: TsDBLookupComboBox
      Left = 16
      Top = 152
      Width = 359
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
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
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
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
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
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
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
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
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
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
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
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
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
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
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
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
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
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
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
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
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
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
    object txtObservacoes: TsMemo
      Left = 16
      Top = 230
      Width = 425
      Height = 51
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
      TabOrder = 13
      Text = 'txtObservacoes'#13#10
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
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
      TabOrder = 14
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
    object Edit2: TsEdit
      Left = 239
      Top = 112
      Width = 78
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
      TabOrder = 15
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
    object Edit3: TsEdit
      Left = 323
      Top = 112
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
      TabOrder = 16
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
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
      TabOrder = 17
      OnEnter = cboCedenteEnter
      OnExit = cboCedenteExit
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
      SkinData.SkinSection = 'COMBOBOX'
    end
    object CheckBox2: TCheckBox
      Left = 305
      Top = 34
      Width = 97
      Height = 17
      Caption = 'Protestar'
      TabOrder = 18
    end
    object cbxLayOut: TComboBox
      Left = 311
      Top = 72
      Width = 114
      Height = 21
      Style = csDropDownList
      TabOrder = 19
      OnChange = cbxLayOutChange
    end
    object sPanel2: TsPanel
      Left = 140
      Top = 303
      Width = 273
      Height = 31
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 20
      object sLabel1: TsLabel
        Left = 1
        Top = 5
        Width = 375
        Height = 15
        AutoSize = False
        Caption = 'CLIENTE'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
      end
    end
    object sPanel3: TsPanel
      Left = 415
      Top = 303
      Width = 162
      Height = 31
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 21
      object sLabel2: TsLabel
        Left = 2
        Top = 4
        Width = 155
        Height = 15
        AutoSize = False
        Caption = 'CPF'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
      end
    end
    object sPanel1: TsPanel
      Left = 18
      Top = 301
      Width = 117
      Height = 34
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 22
      object ComboEdit1: TComboEdit
        Left = 7
        Top = 3
        Width = 104
        Height = 24
        CharCase = ecUpperCase
        ClickKey = 113
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        GlyphKind = gkEllipsis
        NumGlyphs = 1
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = ''
        OnButtonClick = ComboEdit1ButtonClick
        OnExit = ComboEdit1Exit
      end
    end
    object sEdit1: TsEdit
      Left = 392
      Top = 7
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
      TabOrder = 23
      Visible = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 345
    Width = 594
    Height = 143
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    object XDBGrid1: TXDBGrid
      Left = 1
      Top = 1
      Width = 592
      Height = 141
      Align = alClient
      DataSource = DMCOB.DTS_Titulos
      GridStyle.VisualStyle = vsXPStyle
      TabOrder = 0
      Columns = <
        item
          CheckBox = True
          CheckBoxStyle = cbMild
          CheckBoxValues = 'T;F'
          Expanded = False
          FieldName = 'CHEK_BOX'
          Title.Caption = 'X'
          Visible = True
          Width = 18
        end
        item
          Expanded = False
          FieldName = 'CODIGO_COMPRA'
          Title.Caption = 'Venda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCELA'
          Title.Caption = 'Parc.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_VENCIMENTO'
          Title.Caption = 'Vencimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMBOLETO'
          Title.Caption = 'Num. Boleto'
          Visible = True
          Width = 64
        end
        item
          Expanded = False
          FieldName = 'BANCO_PORTADOR'
          Title.Caption = 'Banco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_COMPRA'
          Title.Caption = 'Data Vda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_COMPRA'
          Title.Caption = 'Valor'
          Visible = True
          Width = 82
        end
        item
          Expanded = False
          FieldName = 'VALOR_JUROS'
          Title.Caption = 'Juros'
          Visible = True
          Width = 75
        end
        item
          Expanded = False
          FieldName = 'VALOR_ACRESCIMO'
          Title.Caption = 'Multa'
          Visible = True
          Width = 78
        end
        item
          Expanded = False
          FieldName = 'VALOR_DESCONTO'
          Title.Caption = 'Desconto'
          Visible = True
          Width = 72
        end
        item
          Expanded = False
          FieldName = 'VALOR_PAGAR'
          Title.Caption = 'Valor Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Title.Caption = 'Hist'#243'rico'
          Visible = True
          Width = 218
        end
        item
          Expanded = False
          FieldName = 'NOME_SACADO'
          Title.Caption = 'Nome do Sacado'
          Visible = True
          Width = 269
        end>
    end
  end
end
