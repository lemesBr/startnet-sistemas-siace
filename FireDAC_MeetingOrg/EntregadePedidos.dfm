object FormEntregadePedidos: TFormEntregadePedidos
  Left = 306
  Top = 133
  BorderStyle = bsDialog
  Caption = 'Almoxarifado - Entrega de Pedidos'
  ClientHeight = 508
  ClientWidth = 767
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
  object RxLabel1: TRxLabel
    Left = 0
    Top = 0
    Width = 767
    Height = 12
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Pedido(s) a Ser(em) Entregue(s)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'BatmanForeverAlternate'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 11
    Top = 21
    Width = 744
    Height = 112
    BevelOuter = bvLowered
    BevelWidth = 2
    Color = 15263976
    TabOrder = 0
    object suiDBGrid1: TsuiDBGrid
      Left = 2
      Top = 2
      Width = 740
      Height = 108
      Align = alClient
      BorderStyle = bsNone
      Color = 15263976
      DataSource = DTS_PedidosA
      FixedColor = 10504772
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
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
          FieldName = 'NOME_CLIENTE'
          Title.Caption = 'Nome do Cliente'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 307
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA_PEDIDO'
          Title.Alignment = taCenter
          Title.Caption = 'Data do Pedido'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Title.Caption = 'Vendedor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 168
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor Total'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 135
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 3
    Top = 162
    Width = 759
    Height = 295
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 1
    object Panel6: TPanel
      Left = 2
      Top = 2
      Width = 755
      Height = 124
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      Enabled = False
      TabOrder = 0
      object RxLabel4: TRxLabel
        Left = 3
        Top = 5
        Width = 37
        Height = 13
        Caption = 'Cliente:'
      end
      object RxLabel5: TRxLabel
        Left = 3
        Top = 74
        Width = 96
        Height = 13
        Caption = 'Valor Total a Pagar:'
      end
      object RxLabel6: TRxLabel
        Left = 3
        Top = 28
        Width = 99
        Height = 13
        Caption = 'Valor Total dos Itens'
      end
      object RxLabel7: TRxLabel
        Left = 3
        Top = 51
        Width = 93
        Height = 13
        Caption = 'Valor do Desconto:'
      end
      object RxLabel8: TRxLabel
        Left = 265
        Top = 74
        Width = 59
        Height = 13
        Caption = 'Pagamento:'
      end
      object RxLabel10: TRxLabel
        Left = 3
        Top = 97
        Width = 68
        Height = 13
        Caption = 'Observa'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel11: TRxLabel
        Left = 265
        Top = 51
        Width = 92
        Height = 13
        Caption = 'Data para Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel12: TRxLabel
        Left = 265
        Top = 28
        Width = 79
        Height = 13
        Caption = 'Data do Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object suiDBEdit1: TsuiDBEdit
        Left = 103
        Top = 51
        Width = 147
        Height = 20
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'VALOR_DESCONTO'
        DataSource = DTS_PedidosA
        Enabled = False
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
        Left = 103
        Top = 28
        Width = 147
        Height = 20
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'VALOR_ITENS'
        DataSource = DTS_PedidosA
        Enabled = False
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
        Left = 103
        Top = 5
        Width = 94
        Height = 20
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'CODIGO_CLIENTE'
        DataSource = DTS_PedidosA
        Enabled = False
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
        Left = 103
        Top = 74
        Width = 147
        Height = 20
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'VALOR_TOTAL'
        DataSource = DTS_PedidosA
        Enabled = False
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
        Left = 360
        Top = 74
        Width = 387
        Height = 20
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'PAGAMENTO'
        DataSource = DTS_PedidosA
        Enabled = False
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
      object DBDateEdit1: TDBDateEdit
        Left = 360
        Top = 51
        Width = 110
        Height = 21
        DataField = 'DATA_ENTREGA'
        DataSource = DTS_PedidosA
        Color = 15263976
        NumGlyphs = 2
        TabOrder = 5
      end
      object DBEdit1: TDBEdit
        Left = 40
        Top = 192
        Width = 121
        Height = 21
        TabOrder = 6
      end
      object DBDateEdit2: TDBDateEdit
        Left = 360
        Top = 28
        Width = 110
        Height = 21
        DataField = 'DATA_PEDIDO'
        DataSource = DTS_PedidosA
        Color = 15263976
        NumGlyphs = 2
        TabOrder = 7
      end
      object suiDBEdit6: TsuiDBEdit
        Left = 103
        Top = 97
        Width = 644
        Height = 20
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'OBSERVACOES'
        DataSource = DTS_PedidosA
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object suiDBEdit7: TsuiDBEdit
        Left = 201
        Top = 5
        Width = 411
        Height = 20
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'NOME_CLIENTE'
        DataSource = DTS_PedidosA
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
    end
    object Panel7: TPanel
      Left = 2
      Top = 126
      Width = 755
      Height = 167
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 1
      object RxLabel2: TRxLabel
        Left = 2
        Top = 2
        Width = 751
        Height = 12
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Itens do Pedido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'BatmanForeverAlternate'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel2: TPanel
        Left = 5
        Top = 16
        Width = 743
        Height = 116
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15263976
        TabOrder = 0
        object suiDBGrid2: TsuiDBGrid
          Left = 2
          Top = 2
          Width = 739
          Height = 112
          Align = alClient
          BorderStyle = bsNone
          Color = 15263976
          DataSource = DTS_ItensPA
          FixedColor = 10504772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
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
              FieldName = 'DESCRICAO_PRODUTO'
              Title.Caption = 'Descri'#231#227'o do Produto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 259
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QUANTIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'Qnt.'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_UNITARIO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor Unit'#225'rio'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENC_FINANCEIRO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor E.F.'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor Desconto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_TOTAL'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor Total'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 112
              Visible = True
            end>
        end
      end
      object suiDBNavigator1: TsuiDBNavigator
        Left = 522
        Top = 134
        Width = 224
        Height = 23
        Cursor = crDefault
        UIStyle = FromThemeFile
        DataSource = DTS_ItensPA
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 1
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 455
    Width = 767
    Height = 53
    Align = alBottom
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 2
    object RxLabel9: TRxLabel
      Left = 43
      Top = 12
      Width = 395
      Height = 31
      Alignment = taCenter
      AutoSize = False
      Caption = 'Entrega de Pedidos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object suiButton2: TsuiButton
      Left = 488
      Top = 6
      Width = 271
      Height = 40
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Confirma Entrega do Pedido'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        A2040000424DA204000000000000620200002800000018000000180000000100
        08000000000040020000210B0000210B00008B0000008B000000003100000038
        0000003803000040030003400300004803000050030003500300005803000060
        03000360030003500600006A0600036A06000073060003730600007B0600037B
        06000384060000A1060003500B0003600B0003730B0006730B0003980B0000A1
        0B0003A10B0003AB0B00066A110003A1110006A1110003AB110006A1160006AB
        160006731C000B8F1C000B981C0006A11C0006AB1C000BAB1C0006B61C000B84
        23001198230011A123000BAB2300118F2A001CA12A000BAB2A001CAB2A000BB6
        2A001CB62A00118F3100168F31001698310016A1310023A1310011AB310023B6
        31001C98380011AB380016AB380016B6380023B638002AB6380011C0380023A1
        400011AB400016AB400023AB400011B6400016B640002AB6400023AB480011B6
        480016B648001CB648001CB6500023B650001CC050002AC0500038C0500023B6
        58002AB658001CC058002AC0580031C0580048C058002AC0600031C0600040C0
        600048C0600038C06A0040C06A0048C06A0038CA6A0040CA6A0060CA6A0040CA
        730050CA730050CA7B0073D47B007BD47B0058CA840060CA840058D484007BD4
        840058D48F006AD48F0084E08F006AD4980073D498008FE0980098E0980073E0
        A10084E0A10098E0A10084E0AB008FE0AB00ABEAAB0098EAB600A1EAB60098EA
        C000A1EAC000ABEAC000B6EACA00B6EAD400C0EAD400C0F4D400CAF4D400D4F4
        D400D4F4E000E0F4E000E0F4EA00E0FFEA00EAFFEA00EAFFF400F4FFF400FF00
        FF00FFFFFF008989898989898989000002040402000089898989898989898989
        898989890000040D111212120F050200898989898989898989898905030F181B
        1A1A1A1A1B1A1107028989898989898989890B0B181A1A1A1A1A1A1A1A1A1A1A
        0D02898989898989891415211E1A1A1A13131A1A1A1A1A1A1B0D028989898989
        04152F27201E1A181A1A1A1A1A1A1A1A1A1B0D0289898989042F382C2720181A
        1A608686701E1A1A1A1A1A058989890B223D382F251D1E1A1A648A8A8A731E1A
        1A1A1B110289890B3C463B2F201D1A1A1A1E6F8A8A8A6F1E1A1A1A1A0489071C
        4C4A432F1E1A1A1A1A1A1A698A8A8A6F1E1A1A1B0A020729514B434F47393E3F
        39393930768A8A8A6C1A1A1B0F020A33574C4D848888888888888888868A8A8A
        8A641A1B11020D3A61514D8A8A8A8A8A8A8A8A8A8A8A8A8A8A861A1A12050D3A
        685B4D7C8484848484848380838A8A8A88561D1B11020F356D664D5152525252
        524D3B4F7E8A8A875A2F201B0F0289236D725B4A4D4D4D4D4D4C5C828A8A8459
        2F2C1E1B088989235D7B6E524A4C4D4D4D66878A8A84502C2C20201D04898989
        36777C674D4A4C4D4D788A8A8255382F2C25261689898989375D7C7C66524A4C
        4D63847E52423B382F2F270489898989892A6B7E7E6E5C4C4C524D4B4B4A463C
        383815898989898989892A6D7E827A6E635B58585B5B524D461C898989898989
        8989892E62777E7E7C7775726E665B481C89898989898989898989892E366372
        7777756E6658341589898989898989898989898989892E36444448412D1C8989
        898989898989}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton2Click
      ResHandle = 0
    end
  end
  object suiDBNavigator2: TsuiDBNavigator
    Left = 529
    Top = 135
    Width = 224
    Height = 23
    Cursor = crDefault
    UIStyle = FromThemeFile
    DataSource = DTS_PedidosA
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 3
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
    Text = 'Ocorreu um Erro! Tente Novamente!'
    Left = 472
    Top = 65518
  end
  object DTS_ItensPA: TDataSource
    DataSet = SDS_ITensPA
    Left = 681
    Top = 65518
  end
  object SDS_ITensPA: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.Active = True
    DataSet.CommandText = 'select *  from PEDIDOS_ITENS ORDER BY DESCRICAO_PRODUTO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_ID'
        ParamType = ptInput
        Value = 307
      end>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_PedidosA
    PacketRecords = 0
    Params = <>
    Left = 649
    Top = 65518
    object SDS_ITensPACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ITensPACODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object SDS_ITensPACODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object SDS_ITensPADESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object SDS_ITensPAPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
    end
    object SDS_ITensPADESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_ITensPAQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object SDS_ITensPAPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
    end
    object SDS_ITensPAENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
    end
  end
  object DTS_PedidosA: TDataSource
    DataSet = SDS_PedidosA
    Left = 599
    Top = 65518
  end
  object SDS_PedidosA: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select *  from V_PEDIDOS_ALMOXARIFADO ORDER BY CODIGO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 569
    Top = 65518
    object SDS_PedidosACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_PedidosAVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object SDS_PedidosAVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_PedidosAVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object SDS_PedidosAVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
    end
    object SDS_PedidosAUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SDS_PedidosAUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object SDS_PedidosADATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SDS_PedidosADATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object SDS_PedidosACODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SDS_PedidosANOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SDS_PedidosAPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
    end
    object SDS_PedidosASTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object SDS_PedidosAENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
    end
    object SDS_PedidosATP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object SDS_PedidosAOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
  end
  object MSGC: TsuiMessageDialog
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
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiHelp
    Text = 
      'Confirma Entrega deste Pedido ?                                 ' +
      '                                                '
    Left = 538
    Top = 65518
  end
  object SPC_BAIXA_ESTOQUE: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_BARRAS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'QUANT'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_EXCLUIR_ESTOQUE_VENDIDO'
    Left = 510
    Top = 65517
  end
end
