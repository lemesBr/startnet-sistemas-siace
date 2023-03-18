object FormEntregadePedidos: TFormEntregadePedidos
  Left = 306
  Top = 133
  BorderStyle = bsDialog
  Caption = 'Almoxarifado - Entrega de Pedidos'
  ClientHeight = 552
  ClientWidth = 765
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
    Width = 765
    Height = 18
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
    object suiDBGrid1: TXDBGrid
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
      GridStyle.VisualStyle = vsXPStyle
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
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
          Visible = True
          Width = 307
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
          Visible = True
          Width = 96
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
          Visible = True
          Width = 168
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
          Visible = True
          Width = 135
        end>
    end
  end
  object Panel3: TPanel
    Left = 3
    Top = 162
    Width = 759
    Height = 337
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
      object suiDBEdit1: TDBEdit
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
      end
      object suiDBEdit2: TDBEdit
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
      end
      object suiDBEdit3: TDBEdit
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
      end
      object suiDBEdit4: TDBEdit
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
      end
      object suiDBEdit5: TDBEdit
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
      object suiDBEdit6: TDBEdit
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
      end
      object suiDBEdit7: TDBEdit
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
      end
    end
    object Panel7: TPanel
      Left = 2
      Top = 132
      Width = 755
      Height = 203
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 1
      object RxLabel2: TRxLabel
        Left = 2
        Top = 2
        Width = 751
        Height = 18
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
        Height = 161
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15263976
        TabOrder = 0
        object suiDBGrid2: TXDBGrid
          Left = 2
          Top = 2
          Width = 739
          Height = 157
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
          GridStyle.VisualStyle = vsXPStyle
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
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
              Visible = True
              Width = 259
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
              Visible = True
              Width = 65
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
              Visible = True
              Width = 89
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
              Visible = True
              Width = 86
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
              Visible = True
              Width = 91
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
              Visible = True
              Width = 112
            end>
        end
      end
      object suiDBNavigator1: TXDBNavigator
        Left = 522
        Top = 176
        Width = 224
        Height = 23
        DataSource = DTS_ItensPA
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 1
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 499
    Width = 765
    Height = 53
    Align = alBottom
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 2
    ExplicitTop = 455
    ExplicitWidth = 767
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
    object suiButton2: TAdvGlowButton
      Left = 489
      Top = 6
      Width = 271
      Height = 40
      Caption = 'Confirma Entrega do Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA79300000414494441545809ED965F
        48D35114C7EFB6B6C19682B6A01E8AFE5916A2291165D1430532820A7C50A710
        59492FF5585104125450F4D053640F85FF4604513D6494414F41852065453072
        3D281425C6FCC35CDBAFCFB9FA1BFBB9D46D562F35CEF777FEDC73CE3DF7DE73
        7FBF29F5AFFF6CF5F5F5C7D884269BCDE680CF97E224881986D1DDD1D1710279
        4E92021278D9C0EFA6528A783357D2053898931BECC20FF49C8995DB09367752
        760375769202B4079377B5B7B7EFD14A8E8F4020B08F3CF7241C9E5D0112345F
        D8ED7637BBA0D3C05FD25FBF2AE20B0EAFF0BDD0D6D6F65E7AC0C0A0A8F86134
        1ADDEB76BB4FA26F0419139385272626CE399DCEA3E4B99C61E0482291D8963C
        020962F29D243B2F72B670B95C9F4818A2001DCA0A6F906B08C5073F04170AF1
        78895E8DDF427CCE4AD3609B24127826A59C9E5E92EADD946826B9424F9D823F
        115D40FE6A6E463D7ED7450755960230FC09F2A6241D9C9207A678DEF4023E31
        905C057236F4311B67D3D7D2039D9D9DBD5CA50A067D2063E22CC7D8EEE7C4EE
        CB3868CAD15280D8A408E17F0B6905D4D4D4AC76381C2BCD02585DD4E3F1F4B4
        B4B48C353636E68D8F8F57D0444E735C38FA679A6BCED7AEF84E87A5005E1C1B
        70780D1C40135DAC464747EFA3ECE7AE3FA4A0EDC869545757B737CD9881C1D2
        845C13DB6C311433E338BB36E3D86C392D050483C1B7ACB0888936A5C2EBF506
        24092F2A7FAADD9489D940133E109F6C613902826DEC421509CB9135A18F4722
        911B286F63B1D83AF801C65DF024E113F6FBFDF3BF860D0D0DDB59D535904C4E
        83C9776233864A26EA44971D42B5524141C1172C5F415664D90156F62E1E8FBF
        20C36290240ABA2B0AFC0E05D48A3C0D63F4C07362D74EB3CFA95A0A686D6DFD
        46C416F04BE21D718601012C9D7811CDAF0049C955F4C32F010F108AB2EAAB34
        D9752638897C10A3E53D80FE99DD6980A711FE838C893D323C3C1C1181A35CC4
        6E8BA892B70027B7B62855072F01ABA6B09E319954117404DB3A608E997C2BB6
        DD8C47E19A88718940E18FE0D2D8955D5D5D7A1CBF626C42861C410CC949A5CB
        E08AC066A5D4779C7402E43815DF5293BFC3B05A7C6DF02411F38D1EE8C0B01C
        19A6690DCF3740F1967C2CDC043E23E4107550FE11F523AD504AE6362A38E75E
        E49C88ABE82E2C2C1C20781178565454B4ABB9B939819C246EDA520AF880210F
        041DE5E5E5110CF215935535969595C548D2130E877FE090158542A178696969
        3E413BC08AA1A1A14D252525FD7D7D7D034D4D4DCEE2E262F9D31A646C0930C0
        21995451D5538AD8894113B2DC7D71D07A0E0F9D37254E7209EC29B6D31CCD45
        6DA051767126371934804CAE190F49940B08B590E4D073611D60AE804C8EAC64
        40B8066798EFF3F98EB303B2857246DA9EEB833C4E62F3E12334F56BF86DBE2B
        DD7CDAA5F119FA4F4AFD0402D69CAE1128CDC60000000049454E44AE426082}
      Spacing = 4
      TabOrder = 0
      OnClick = suiButton2Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
  end
  object suiDBNavigator2: TXDBNavigator
    Left = 529
    Top = 135
    Width = 224
    Height = 23
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
