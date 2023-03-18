object frmcontaspagar_cheque: Tfrmcontaspagar_cheque
  Left = 377
  Top = 247
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'CONTAS A PAGAR | Pagamento com Cheque de Terceiros'
  ClientHeight = 344
  ClientWidth = 661
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
  object Bevel1: TBevel
    Left = 0
    Top = 259
    Width = 661
    Height = 3
    Align = alBottom
  end
  object Bevel2: TBevel
    Left = 0
    Top = 296
    Width = 661
    Height = 3
    Align = alBottom
  end
  object FlatPanel1: TAdvPanel
    Left = 0
    Top = 299
    Width = 661
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 45
    object Bevel3: TBevel
      Left = 424
      Top = 3
      Width = 2
      Height = 39
    end
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Localizar:'
      Transparent = True
    end
    object RadioButton1: TRadioButton
      Left = 66
      Top = 4
      Width = 73
      Height = 17
      Caption = 'N'#250'mero'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 66
      Top = 21
      Width = 59
      Height = 17
      Caption = 'Titular'
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object loc: TwwIncrementalSearch
      Left = 144
      Top = 12
      Width = 261
      Height = 21
      TabOrder = 2
    end
    object bgravar: TAdvGlowButton
      Left = 430
      Top = -2
      Width = 107
      Height = 48
      Caption = 'F10 | Gravar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      TabOrder = 3
      OnClick = bgravarClick
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
    object bcancelar: TAdvGlowButton
      Left = 543
      Top = -2
      Width = 113
      Height = 48
      Caption = 'ESC | Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 4
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
  object Panel1: TAdvPanel
    Left = 0
    Top = 262
    Width = 661
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    Color = 16445929
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseDockManager = True
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 34
    object Label1: TLabel
      Left = 400
      Top = 11
      Width = 110
      Height = 13
      Caption = 'Valor total selecionado:'
      Transparent = True
    end
    object rtotal: TRxCalcEdit
      Left = 520
      Top = 6
      Width = 121
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
  end
  object wwDBGrid1: TXDBGrid
    Left = 0
    Top = 0
    Width = 661
    Height = 259
    Align = alClient
    DataSource = dscheque
    GridStyle.VisualStyle = vsXPStyle
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
    TabOrder = 2
    OnCellClick = wwDBGrid1CellClick
    Columns = <
      item
        CheckBox = True
        CheckBoxToggle = ctSelectClick
        CheckBoxValues = '1;0'
        Expanded = False
        FieldName = 'CHEK_BOX'
        Title.Caption = '?'
        Visible = True
        Width = 20
      end
      item
        Expanded = False
        FieldName = 'CODIGO_COMPRA'
        Title.Caption = 'Venda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_DEPOSITO'
        Title.Caption = 'Dep'#243'sito'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANCO'
        Title.Caption = 'Banco'
        Visible = True
        Width = 45
      end
      item
        Expanded = False
        FieldName = 'AGENCIA'
        Title.Caption = 'Agencia'
        Visible = True
        Width = 100
      end
      item
        Expanded = False
        FieldName = 'CONTA_CORRENTE'
        Title.Caption = 'C/C'
        Visible = True
        Width = 100
      end
      item
        Expanded = False
        FieldName = 'VALOR_CHEQUE'
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_CHEQUE'
        Title.Caption = 'N'#186' Cheque'
        Visible = True
        Width = 60
      end
      item
        Expanded = False
        FieldName = 'TITULAR'
        Title.Caption = 'Titular'
        Visible = True
        Width = 200
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 40
    Top = 184
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object dscheque: TDataSource
    DataSet = qrcheque
    Left = 248
    Top = 48
  end
  object qrcheque: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from cheques order by DATA_DEPOSITO ASC')
    Left = 312
    Top = 48
    object qrchequeCOD_EMPRESA: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qrchequeCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
    end
    object qrchequeCODIGO_COMPRA: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO_COMPRA'
    end
    object qrchequeBANCO: TStringField
      DisplayWidth = 160
      FieldName = 'BANCO'
      Size = 40
    end
    object qrchequeAGENCIA: TStringField
      DisplayWidth = 60
      FieldName = 'AGENCIA'
      Size = 15
    end
    object qrchequeCONTA_CORRENTE: TStringField
      DisplayWidth = 60
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object qrchequeCONTA_DESDE: TDateField
      DisplayWidth = 10
      FieldName = 'CONTA_DESDE'
    end
    object qrchequeTITULAR: TStringField
      DisplayWidth = 200
      FieldName = 'TITULAR'
      Size = 50
    end
    object qrchequeTIPO_CHEQUE: TStringField
      DisplayWidth = 80
      FieldName = 'TIPO_CHEQUE'
    end
    object qrchequeN_CHEQUE: TStringField
      DisplayWidth = 60
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object qrchequeQNT: TStringField
      DisplayWidth = 40
      FieldName = 'QNT'
      Size = 10
    end
    object qrchequeCOD_CLIENTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_CLIENTE'
    end
    object qrchequeCLIENTE: TStringField
      DisplayWidth = 200
      FieldName = 'CLIENTE'
      Size = 50
    end
    object qrchequeRETORNARDO: TStringField
      DisplayWidth = 3
      FieldName = 'RETORNARDO'
      Size = 3
    end
    object qrchequeRETORNADO_PAGO: TStringField
      DisplayWidth = 3
      FieldName = 'RETORNADO_PAGO'
      Size = 3
    end
    object qrchequeMOTIVO_RETORNO: TStringField
      DisplayWidth = 200
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object qrchequeDATA_CADASTRO: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_CADASTRO'
    end
    object qrchequeDATA_DEPOSITO: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_DEPOSITO'
    end
    object qrchequeDATA_RETORNO: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_RETORNO'
    end
    object qrchequeDATA_BAIXA: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_BAIXA'
    end
    object qrchequeUSUARIO_CADASTRO: TStringField
      DisplayWidth = 80
      FieldName = 'USUARIO_CADASTRO'
    end
    object qrchequeUSUARIO_BAIXA: TStringField
      DisplayWidth = 80
      FieldName = 'USUARIO_BAIXA'
    end
    object qrchequeCOMPENSADO: TStringField
      DisplayWidth = 1
      FieldName = 'COMPENSADO'
      Size = 1
    end
    object qrchequeCODIGO_CC: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO_CC'
    end
    object qrchequeNUMERO_CC: TStringField
      DisplayWidth = 40
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object qrchequeNUMERO: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMERO'
    end
    object qrchequeCOD_BARRAS_CHEQUE: TStringField
      DisplayWidth = 200
      FieldName = 'COD_BARRAS_CHEQUE'
      Size = 50
    end
    object qrchequeCHEK_BOX: TStringField
      DisplayWidth = 4
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object qrchequeVALOR_CHEQUE: TBCDField
      FieldName = 'VALOR_CHEQUE'
      Origin = 'VALOR_CHEQUE'
      currency = True
      Precision = 18
    end
    object qrchequeDESTINO: TStringField
      FieldName = 'DESTINO'
      Origin = 'DESTINO'
      Size = 70
    end
  end
end
