object FormPagDevolucaoPedidos: TFormPagDevolucaoPedidos
  Left = 296
  Top = 221
  BorderStyle = bsDialog
  Caption = 'Pagamento de Devolu'#231#245'es / Cancelamento de Vendas'
  ClientHeight = 252
  ClientWidth = 625
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 625
    Height = 59
    Align = alBottom
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 0
    object Bevel1: TBevel
      Left = 12
      Top = 8
      Width = 233
      Height = 34
    end
    object suiDBNavigator1: TsuiDBNavigator
      Left = 14
      Top = 10
      Width = 228
      Height = 30
      Cursor = crDefault
      UIStyle = FromThemeFile
      DataSource = DTS_Pagamentos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
    object suiButton1: TsuiButton
      Left = 272
      Top = 11
      Width = 337
      Height = 40
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Pagar Devolu'#231#227'o de Item / Cancelamento de Venda'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      Enabled = False
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000330B0000330B00000001000000010000007B00000094
        000000C6000000314A00084263006363630084848400085A940010849C002194
        9C00A5FFA5001873AD002984BD002184C600429CC60042A5C6004AA5C600C6C6
        C600C6FFC6005A5ACE003963CE00107BCE0042A5CE005AA5CE0073B5D6006BBD
        D6007BBDD6006BC6D6004A5ADE0073C6DE007BCEDE0039A5E700299CEF007B9C
        EF008CCEEF0094DEEF0052C6F700FF00FF008C94FF0084A5FF004ABDFF007BE7
        FF0094E7FF009CE7FF008CF7FF00BDFFFF00C6FFFF00D6FFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00252525252525
        2525252525252525252525252525252525252525252525252525252525252525
        2525252525252525252525252525252525252525252525252525252525252525
        2525252525252525252525252506070404040306252525252525252525250607
        0404030625282F2D2C2C201525252525252525252525282F2D2C201525062828
        282828060403252525252525252506282828280625252525272A2D1E100C1325
        2525252525252525252525252525252526222D190E0D1C252525252525252525
        2525252525252525250704040403252525252525252525252525252525252525
        21222D190E0D14252525252500000000000000000000000018232D190E0D0B00
        000025250001010101020A121212121212170404040301010100252500010101
        020A1212120505051A1D2D1B0F0D080101002525000101020A121212052E112E
        222B2D29241F0901010025250001020A121212052E1111111128282828281202
        0100252500010212121212052E2E11112E2E051212121202010025250001020A
        12121212051111111105121212120A0201002525000101020A12121212050505
        05121212120A02010100252500010101020A121212121212121212120A020101
        010025250001010101021212121212121212120A020101010100252500000000
        0000000000000000000000000000000000002525252525252525252525252525
        2525252525252525252525252525252525252525252525252525252525252525
        2525252525252525252525252525252525252525252525252525}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton1Click
      ResHandle = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 625
    Height = 119
    Align = alTop
    Color = 15263976
    TabOrder = 1
    object suiDBGrid1: TsuiDBGrid
      Left = 1
      Top = 1
      Width = 623
      Height = 117
      Align = alClient
      BorderStyle = bsNone
      Color = 15263976
      DataSource = DTS_Pagamentos
      FixedColor = 10504772
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UIStyle = FromThemeFile
      BorderColor = clBlack
      FocusedColor = clGreen
      SelectedColor = clYellow
      FontColor = clBlack
      TitleFontColor = clWhite
      FixedBGColor = 10504772
      BGColor = 15263976
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA_AUT'
          Title.Alignment = taCenter
          Title.Caption = 'Data da Aut.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Caption = 'Cliente'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 314
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor Total'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 161
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 119
    Width = 625
    Height = 74
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    Enabled = False
    TabOrder = 2
    object RxLabel1: TRxLabel
      Left = 5
      Top = 4
      Width = 120
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Hist'#243'rico da Devolu'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 5
      Top = 24
      Width = 120
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'N'#186' da Autoriza'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 242
      Top = 24
      Width = 103
      Height = 13
      Caption = 'Usu'#225'rio-Autoriza'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 242
      Top = 44
      Width = 60
      Height = 13
      Caption = 'Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 1
      Top = 44
      Width = 120
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'N'#186' do Pedido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 517
      Top = 44
      Width = 53
      Height = 13
      Caption = 'Opera'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object suiDBEdit1: TsuiDBEdit
      Left = 130
      Top = 4
      Width = 469
      Height = 19
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'HISTORICO'
      DataSource = DTS_Pagamentos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object suiDBEdit2: TsuiDBEdit
      Left = 130
      Top = 24
      Width = 110
      Height = 19
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'CODIGO'
      DataSource = DTS_Pagamentos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object suiDBEdit3: TsuiDBEdit
      Left = 130
      Top = 44
      Width = 110
      Height = 19
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'CODIGO_P'
      DataSource = DTS_Pagamentos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object suiDBEdit4: TsuiDBEdit
      Left = 344
      Top = 44
      Width = 171
      Height = 19
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'PAGAMENTO'
      DataSource = DTS_Pagamentos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object suiDBEdit5: TsuiDBEdit
      Left = 344
      Top = 24
      Width = 255
      Height = 19
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'USUARIO_AUT'
      DataSource = DTS_Pagamentos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
    object suiDBEdit6: TsuiDBEdit
      Left = 570
      Top = 44
      Width = 29
      Height = 19
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'TIPO'
      DataSource = DTS_Pagamentos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
  end
  object SDS_Pagamentos: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 
      'select * from PAG_RET_PEDIDOS where STATUS = '#39'A'#39'  order by CODIG' +
      'O asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 362
    Top = 3
    object SDS_PagamentosCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_PagamentosDATA_AUT: TDateField
      Alignment = taCenter
      FieldName = 'DATA_AUT'
    end
    object SDS_PagamentosDATA_PAG: TDateField
      Alignment = taCenter
      FieldName = 'DATA_PAG'
    end
    object SDS_PagamentosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object SDS_PagamentosUSUARIO_AUT: TStringField
      FieldName = 'USUARIO_AUT'
    end
    object SDS_PagamentosUSUARIO_PAG: TStringField
      FieldName = 'USUARIO_PAG'
    end
    object SDS_PagamentosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 15
    end
    object SDS_PagamentosSTATUS: TStringField
      Alignment = taCenter
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object SDS_PagamentosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_PagamentosPAGAMENTO: TStringField
      Alignment = taCenter
      FieldName = 'PAGAMENTO'
    end
    object SDS_PagamentosTIPO: TStringField
      Alignment = taCenter
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_PagamentosCODIGO_P: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_P'
    end
    object SDS_PagamentosPAG: TStringField
      Alignment = taCenter
      FieldName = 'PAG'
      Size = 30
    end
    object SDS_PagamentosCODIGO_C: TIntegerField
      FieldName = 'CODIGO_C'
    end
    object SDS_PagamentosTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
  end
  object DTS_Pagamentos: TDataSource
    DataSet = SDS_Pagamentos
    Left = 390
    Top = 3
  end
end
