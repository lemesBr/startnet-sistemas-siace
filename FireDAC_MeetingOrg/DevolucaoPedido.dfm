object FormDevolucaoPedido: TFormDevolucaoPedido
  Left = 347
  Top = 67
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Devolu'#231#227'o de Itens / Cancelamento de Vendas'
  ClientHeight = 537
  ClientWidth = 787
  Color = 15263976
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 537
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel: TPanel
      Left = 1
      Top = 472
      Width = 785
      Height = 64
      Align = alBottom
      BevelInner = bvRaised
      Color = 15263976
      TabOrder = 0
      DesignSize = (
        785
        64)
      object Bevel2: TBevel
        Left = 5
        Top = 3
        Width = 286
        Height = 33
      end
      object BitBtn3: TsBitBtn
        Left = 859
        Top = 0
        Width = 22
        Height = 21
        Anchors = [akTop, akRight]
        Caption = 'BitBtn3'
        Glyph.Data = {
          0E030000424D0E030000000000003600000028000000110000000E0000000100
          180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
          BFBFBF0000000000000000000000000000000000000000000000000000000000
          00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
          BF00BFBFBF000000000000000000000000000000000000000000000000000000
          000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
          000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
          BF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
          BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
          00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
          BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
          000000000000000000000000000000FFFFFF000000000000000000000000BFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
          BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
          0000000000000000000000BFBFBFBFBFBF00}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        SkinData.SkinSection = 'BUTTON'
      end
      object Navigator: TsDBNavigator
        Left = 8
        Top = 6
        Width = 280
        Height = 27
        FullRepaint = False
        TabOrder = 1
        SkinData.SkinSection = 'TOOLBAR'
        DataSource = DTS_ItensPedidoGeral
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      end
      object GroupBox2: TGroupBox
        Left = 521
        Top = 2
        Width = 256
        Height = 57
        Caption = 'Cancelamento:'
        TabOrder = 2
        object suiButton2: TsBitBtn
          Left = 9
          Top = 17
          Width = 239
          Height = 32
          Caption = 'Cancelar Pedido'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FF92635DA46769A46769A46769A46769A46769A46769A46769A46769A467
            69A46769A46769A46769A46769A46769A46769A46769A46769A46769FF00FFFF
            00FFFF00FFFF00FFFF00FF93655EEFD3B4F6DAB6F3D5ADF2D1A5F0CE9EEFCB97
            EFC791EEC589EBC182EBC080EBC080EBC080EBC080EBC080EBC080EDC180EABF
            7F9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FEED4B8F4DABBF2D5B1F0
            D1AAA5BB70E0C793DEC48CEDC58FEBC188EABF82E9BD7FE9BD7FE9BD7FE9BD7F
            E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FEED7
            C0F6E0C1F2D9B8F2D4B1C0C588008201E0C79352A035259217259116519D2EB2
            B262DABB77E9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
            FF00FF93655FEFDAC5F7E2C7F3DCBFF2D8B7E3D0A50082010686050082010082
            010082010082010082017AA643DABB77E9BD7FEABF7FE7BC7E9F6F60FF00FFFF
            00FFFF00FFFF00FFFF00FF936560F0DECCF8E6CFF6E0C6F3DCBDE3D4AC008201
            008201008201008201008201008201008201008201AFB15FE9BD7FEABF7FE7BC
            7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF956660F2E2D3FAEAD7F6E3CEF4
            DEC5E5D8B200820100820100820126931BB2BC76B1BA72529F33008201249015
            E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF986963F2E6
            DAFAEEDEF7E7D4F6E2CBE5DAB80082010082010082011C9014E1CA99E0C793DE
            C48C90AF57068604E9BD81EABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
            FF00FF9E6E64F4EAE1FBF2E6F8EADCF7E6D3E6DDC00082010082010082010082
            01008201E1CA9AEDCB9CEDC796EBC58F5FC065EABF82E7BB7E9F6F60FF00FFFF
            00FFFF00FFFF00FFFF00FFA37266F6EEE9FCF6EDF8EFE3F7EADAE7E1C6E6DDC0
            E5D9B8E5D8B2E3D4ABE2D1A5E2CE9FEFCEA3EECA9CEDC7955FC065EBC288E7BC
            809F6F60FF00FFFF00FFFF00FFFF00FFFF00FFA77568F8F3F0FEFBF6FBF3EB5F
            C065F8EBDCF7E7D3F6E2CCE5DAB8E5D8B2E3D4ACE3D0A6E2CE9EE1CA99DEC792
            EDC795EDC58FE9BF879F6F62FF00FFFF00FFFF00FFFF00FFFF00FFAC7969FAF6
            F4FFFFFEFEF8F35FC065F8EEE3F8EBDAF7E6D3E7DDC000820100820100820100
            8201008201E1CA99EECB9CEEC996EAC18EA07063FF00FFFF00FFFF00FFFF00FF
            FF00FFB17E6BFAF6F4FFFFFFFFFEFBFEF7F006880698CB8BE9E5CCE7E2C6E6DD
            BF1C9217008201008201008201E2CE9EEFCEA1EECB9CEBC592A07264FF00FFFF
            00FFFF00FFFF00FFFF00FFB6816CFAF6F4FFFFFFFFFFFFFFFCFB289D27008201
            56B04FBAD5A5BAD19E279821008201008201008201E3D0A4F0D1A9F0CFA3EDC9
            999D7065FF00FFFF00FFFF00FFFF00FFFF00FFBB846EFAF6F4FFFFFFFFFFFFFF
            FFFFBFE3BC008201008201008201008201008201008201008201008201E3D4AB
            F0D4AFEFD0A7CEB491896A63FF00FFFF00FFFF00FFFF00FFFF00FFC0896FFBF7
            F4FFFFFFFFFFFFFFFFFFEFF8EF87CC8400820100820100820100820100820106
            8706008201E5D8B2E5CEAFC4B096A1927F806762FF00FFFF00FFFF00FFFF00FF
            FF00FFC58C70FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFEFF8EFC4E5C157B554289C
            25279A2456AF4CE9E2C7008201B2C495B8AB9AA79C8BA49786846964FF00FFFF
            00FFFF00FFFF00FFFF00FFCB9173FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFEFBFCF7F0FBF2E9FBF2E5DACFB7956856696C4095655B96655B9665
            5B986859FF00FFFF00FFFF00FFFF00FFFF00FFCF9674FBF7F6FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFCF7F0FFFAEFDAC0B69F675BDAA16B
            DD984FE2903AEA8923A5686BFF00FFFF00FFFF00FFFF00FFFF00FFD49875FCF8
            F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFFFEF7DD
            C4BC9F675BEAB474EFA952F6A036A5686BFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFD49875FCF8F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFDDC7C29F675BEAB273EFA751A5686BFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFD49875FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D0CE9F675BEDB572A5686BFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68CF8E68CF8E68CF8E68CF
            8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E689F675BA5686B
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentFont = False
          TabOrder = 0
          OnClick = suiButton2Click
          SkinData.SkinSection = 'BUTTON'
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 356
      Width = 785
      Height = 116
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvNone
      Color = 15263976
      TabOrder = 1
      object suiDBGrid2: TDBGrid
        Left = 1
        Top = 1
        Width = 783
        Height = 114
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DTS_ItensPedidoGeral
        FixedColor = clHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODIGO_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Codigo EAN'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Caption = 'Ref/C'#243'd Fab.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o do Produto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 212
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Alignment = taCenter
            Title.Caption = 'Qnt'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 29
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_UNITARIO'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Unit'#225'rio'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Desconto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QNT_DEV'
            Title.Alignment = taCenter
            Title.Caption = 'Q. Dev'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAL_DEV'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Dev.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end>
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 195
      Width = 785
      Height = 161
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = 15263976
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object RxLabel2: TRxLabel
        Left = 5
        Top = 23
        Width = 71
        Height = 13
        Caption = 'N'#186' do Pedido: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel3: TRxLabel
        Left = 5
        Top = 4
        Width = 39
        Height = 13
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel4: TRxLabel
        Left = 200
        Top = 23
        Width = 60
        Height = 13
        Caption = 'Pagamento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel5: TRxLabel
        Left = 490
        Top = 4
        Width = 78
        Height = 13
        Caption = 'Valor dos Itens:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel6: TRxLabel
        Left = 490
        Top = 23
        Width = 93
        Height = 13
        Caption = 'Valor do Desconto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel7: TRxLabel
        Left = 490
        Top = 42
        Width = 57
        Height = 13
        Caption = 'Valor Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel33: TRxLabel
        Left = 200
        Top = 42
        Width = 52
        Height = 13
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel1: TRxLabel
        Left = 5
        Top = 42
        Width = 79
        Height = 13
        Caption = 'Data do Pedido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel10: TRxLabel
        Left = 5
        Top = 61
        Width = 85
        Height = 13
        Caption = 'Data da Entrega:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel11: TRxLabel
        Left = 200
        Top = 61
        Width = 68
        Height = 13
        Caption = 'Aut. Entrega:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel12: TRxLabel
        Left = 5
        Top = 80
        Width = 69
        Height = 13
        Caption = 'Observa'#231#245'es:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Panel11: TPanel
        Left = 2
        Top = 101
        Width = 781
        Height = 58
        Align = alBottom
        BevelInner = bvRaised
        Color = 15263976
        TabOrder = 0
        object RxLabel8: TRxLabel
          Left = 350
          Top = 15
          Width = 136
          Height = 13
          Caption = 'Quantidade a devolver:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel3: TBevel
          Left = 304
          Top = 8
          Width = 475
          Height = 47
          Align = alCustom
        end
        object suiButton5: TsBitBtn
          Left = 518
          Top = 18
          Width = 125
          Height = 32
          Caption = 'Confirmar'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            5A010000424D5A01000000000000760000002800000012000000130000000100
            040000000000E4000000C40E0000C40E00001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
            3333330000003333422433333333330000003334222243333333330000003342
            2222243333333300000034222A2222433333330000003222A2A2224333333300
            00003A2A222A222433333300000034A22222A2224333330000004222A2222A22
            243333000000222A3A2224A2224333000000A2A333A2224A2224330000003A33
            333A2224A2224300000033333333A2224A2243000000333333333A2224A22300
            00003333333333A2224A3300000033333333333A222433000000333333333333
            A224330000003333333333333A223300000033333333333333A333000000}
          ParentFont = False
          TabOrder = 0
          OnClick = suiButton5Click
          SkinData.SkinSection = 'BUTTON'
        end
        object suiButton7: TsBitBtn
          Left = 647
          Top = 18
          Width = 125
          Height = 32
          Caption = 'Cancelar'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
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
          ParentFont = False
          TabOrder = 1
          OnClick = suiButton7Click
          SkinData.SkinSection = 'BUTTON'
        end
        object suiNumberEdit1: TRzNumericEdit
          Left = 353
          Top = 29
          Width = 131
          Height = 21
          Enabled = False
          FocusColor = 15263976
          TabOrder = 2
          OnEnter = suiNumberEdit1Enter
          OnExit = suiNumberEdit1Exit
          DisplayFormat = ',0;(,0)'
        end
        object GroupBox1: TGroupBox
          Left = 2
          Top = 2
          Width = 302
          Height = 54
          Align = alLeft
          Caption = 'Devolu'#231#227'o:'
          TabOrder = 3
          object suiButton3: TsBitBtn
            Left = 6
            Top = 14
            Width = 139
            Height = 32
            Caption = 'ITEM - Parcial'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0156
              03FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF015603015603FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FF015603058C0D015603FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FF015603015603015603015603015603015603015603015603068E0E058C0D01
              5603FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FF0156033DD56B36CE622FC55426BB451DAF3515A4280D9A
              1C099213058C0D058C0D015603FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FF0156033ED76D3CD46A35CC5F2DC451
              24B8411BAD3313A3250C981A089111058C0D058C0D015603FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0156033ED76D3E
              D76D3BD36834CB5D2BC14E22B6401AAB3011A0230C9718078F10015603FF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D5DC90D5DC90D5DC90D5D
              C901560301560301560301560301560301560301560301560318A92D109E2001
              5603DCEBFB0D5DC90D5DC90D5DC90D5DC90D5DC90D5DC9FF00FF0D5DC991CFFF
              359FFE339DFE319AFF2F98FF2D96FF2C93FF0D3F7EFF00FFFF00FFFF00FF0156
              031FB138015603FF00FFDCEBFB1F81FF1F81FF1F81FF1F81FF1F81FF1F81FF0D
              5DC90D5DC992D0FF36A1FE359FFE339DFE319AFF2F98FF2D96FF0D3F7EFF00FF
              FF00FFFF00FF015603015603FF00FFFF00FFDCEBFB1F81FF1F81FF1F81FF1F81
              FF1F81FF1F81FF0D5DC90D5DC993D1FF38A4FE36A1FE359FFE339DFE319AFF2F
              98FF0D3F7EFF00FFFF00FFFF00FF015603FF00FFFF00FFFF00FFDCEBFB1F81FF
              1F81FF1F81FF1F81FF1F81FF1F81FF0D5DC90D5DC995D3FF3AA6FE38A4FE36A1
              FE359FFE339DFE319AFF0D3F7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFDCEBFB1F81FF1F81FF1F81FF1F81FF1F81FF1F81FF0D5DC90D5DC996D4FF
              3CA9FE3AA6FE38A4FE36A1FE359FFE339DFE0D3F7EFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFDCEBFB1F81FF1F81FF1F81FF1F81FF1F81FF1F81FF0D
              5DC90D5DC997D5FF3EABFE3CA9FE3AA6FE38A4FE36A1FE359FFE0D3F7EFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDCEBFB1F81FF1F81FF1F81FF1F81
              FF1F81FF1F81FF0D5DC90D5DC998D7FF40ADFE3EABFE3CA9FE3AA6FE38A4FE36
              A1FE0D3F7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDCEBFBDCEBFB
              DCEBFBDCEBFBDCEBFBDCEBFBDCEBFBDCEBFB0D5DC94786C12374C12273C12172
              C12070C11F6FC11F6EC10D3F7E0D3F7E0D3F7E0D3F7E0D3F7E0D3F7E0D3F7E0D
              3F7E0D3F7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D5DC99AD9FF
              43B2FE41B0FE40ADFE3EABFE3CA9FE3AA6FE1F6EC136A1FE359FFE339DFE319A
              FF2F98FF2D96FF2C93FF0D5DC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF0D5DC99CD9FF44B4FE43B2FE41B0FE40ADFE3EABFE3CA9FE1F6FC138A4FE
              36A1FE359FFE339DFE319AFF2F98FF2D96FF0D5DC9FF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF0D5DC99CDAFF46B6FE44B4FE42B1FE41B0FE40ADFE3E
              ABFE2070C13AA6FE38A4FE36A1FE359FFE339DFE319AFF2F98FF0D5DC9FF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D5DC99CDAFF46B6FE46B6FE44B4
              FE42B1FE41AFFE3FACFE2172C13CA9FE3AA6FE38A4FE36A1FE359FFE339DFE31
              9AFF0D5DC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D5DC99CDAFF
              46B6FE46B6FE46B6FE44B4FE42B1FE41AFFE2273C13EABFE3CA9FE3AA6FE38A4
              FE36A1FE359FFE339DFE0D5DC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF0D5DC9A7DEFF46B6FE46B6FE46B6FE46B6FE44B4FE42B1FE2374C13FACFE
              3EABFE3CA9FE3AA6FE38A4FE36A1FE359FFE0D5DC9FF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF0D5DC9E0EFFBA7DEFF9CDAFF9CDAFF9CDAFF9CD9FF9A
              D8FF4786C198D5FF97D4FF96D4FF95D3FF93D1FF92D0FF91CFFF0D5DC9FF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D5DC90D5DC90D5DC90D5D
              C90D5DC90D5DC90D5DC90D5DC90D5DC90D5DC90D5DC90D5DC90D5DC90D5DC90D
              5DC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            ParentFont = False
            TabOrder = 0
            OnClick = suiButton3Click
            SkinData.SkinSection = 'BUTTON'
          end
          object suiButton4: TsBitBtn
            Left = 148
            Top = 14
            Width = 139
            Height = 32
            Caption = 'ITEM - Total'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFCB6601CB6601CB6601CB6601CB6601CB6601CB66
              01CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB
              6601FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCB6601FFFFFFFFFBF4FFF7EB
              FFF3E3FFEFDAFFEBD1FFE7C9FFE4C2FFE1BBFFDEB6FFDCB3FFDCB3FFDCB3FFDC
              B3FFDCB3FFE5C0CB6601FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCB6601FF
              FFFFFEF9F1FFF4EAFEF1E2FFEEDAFEEAD2FEE6C9FEE2C2FEDEBAFEDBB4FED9AF
              FED7ABFED7ABFED7ABFED7ABFFE0B8CB6601FF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFCB6601FFFFFFFFFCF7FFF8F1FFF5EBFEF1E3FFEEDBFEEAD2FEE6CAFE
              E2C2FEDEBBFEDBB4FED9AEFED7ABFED7ABFED7ABFFE0B8CB6601FF00FFFF00FF
              FF00FFCB6601CB6601CB6601CB6601FFFFFFFFFEFDFFFCF7FFF9F2FFF5EBFEF2
              E3FEEEDBFFEAD3FEE6CBFEE2C2FEDEBBFEDCB5FED9AFFED7ACFED7ABFFE0B8CB
              6601FF00FFFF00FFFF00FFCB6601FFFFFFFFFBF4CB6601FFFFFFFFFFFFFFFEFD
              FFFCF8FFF9F3FFF6EBFEF3E3FFEEDBFFEAD3FFE6CBFFE2C4FEDFBCFEDCB5FED9
              AFFED8ACFFE0B8CB6601FF00FFFF00FFFF00FFCB6601FFFFFFFEF9F1CB6601FF
              FFFFFFFFFFFFFFFFFFFEFEFFFCF8FEF9F3FEF7EDFFF2E4FEEFDCFEEBD3FFE7CC
              FFE2C3FEDEBCFFDDB5FED9B0FFE0B9CB6601FF00FFFF00FFFF00FFCB6601FFFF
              FFFFFCF7CB6601FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFCF9FFFAF4FFF6ECFF
              F2E4FEEEDCFFEBD4FEE6CCFFE3C4FEE0BDFFDCB6FFE2BECB6601CB6601CB6601
              CB6601CB6601FFFFFFFFFEFDCB6601FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
              FEFFFDFAFFF9F4FEF6EDFEF2E5FEEFDEFFECD5FFE7CCFEE3C5FFDFBDFFE5C4CB
              6601CB6601FFFFFFFFFBF4CB6601FFFFFFFFFFFFCB6601FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFEFFFCFAFFFAF4FFF6EDFFF3E6FFEFDEFEEBD5FEE7
              CEFEE4C5FFE8CBCB6601CB6601FFFFFFFEF9F1CB6601FFFFFFFFFFFFCB6601FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFAFFF9F4FFF6EE
              FFF3E7FEF0DEFEEBD6FEE8CEFFECD4CB6601CB6601FFFFFFFFFCF7CB6601FFFF
              FFFFFFFFCB6601FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FEFEFFFDFAFFFAF4FFF7EEFFF3E6FEF0DFFEECD7FFF1DDCB6601CB6601FFFFFF
              FFFEFDCB6601FFFFFFFFFFFFCB6601FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFBF4FFFFFCCB
              6601CB6601FFFFFFFFFFFFCB6601FFFFFFFFFFFFCB6601F3BE7AF2BD7AF2BD7A
              F2BD7AF2BD7AF2BD7AF2BD7AF2BD7AF2BD7AF2BD7AF2BC79F2BC77F2BB74F2B9
              71F2B76EF3BB72CB6601CB6601FFFFFFFFFFFFCB6601FFFFFFFFFFFFCD6600D1
              6300D06300D06300D06300D06300D06300D06300D06300D06300D06300D06300
              D06300D06300D06300D06400D16400CD6700CB6601FFFFFFFFFFFFCB6601FFFF
              FFFFFFFFFFFFFFCB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB
              6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601FF00FFCB6601FFFFFF
              FFFFFFCB6601FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFBF4FFFFFCCB6601FF00FFFF00FFFF
              00FFCB6601FFFFFFFFFFFFCB6601F3BE7AF2BD7AF2BD7AF2BD7AF2BD7AF2BD7A
              F2BD7AF2BD7AF2BD7AF2BD7AF2BC79F2BC77F2BB74F2B971F2B76EF3BB72CB66
              01FF00FFFF00FFFF00FFCB6601FFFFFFFFFFFFCD6600D16300D06300D06300D0
              6300D06300D06300D06300D06300D06300D06300D06300D06300D06300D06300
              D06400D16400CD6700FF00FFFF00FFFF00FFCB6601FFFFFFFFFFFFFFFFFFCB66
              01CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB
              6601CB6601CB6601CB6601CB6601FF00FFFF00FFFF00FFFF00FFCB6601FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFDFFFBF4FFFFFCCB6601FF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFCB6601F3BE7AF2BD7AF2BD7AF2BD7AF2BD7AF2BD7AF2BD7AF2BD7AF2BD7A
              F2BD7AF2BC79F2BC77F2BB74F2B971F2B76EF3BB72CB6601FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFCD6600D16300D06300D06300D06300D06300D06300D0
              6300D06300D06300D06300D06300D06300D06300D06300D06400D16400CD6700
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCB6601CB6601CB6601CB66
              01CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB6601CB
              6601CB6601FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            ParentFont = False
            TabOrder = 1
            OnClick = suiButton4Click
            SkinData.SkinSection = 'BUTTON'
          end
        end
      end
      object suiDBEdit1: TDBEdit
        Left = 278
        Top = 42
        Width = 200
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'USUARIO'
        DataSource = DTS_PedidosGeral
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object suiDBEdit2: TDBEdit
        Left = 100
        Top = 23
        Width = 95
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'CODIGO'
        DataSource = DTS_PedidosGeral
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object suiDBEdit3: TDBEdit
        Left = 177
        Top = 4
        Width = 301
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'NOME_CLIENTE'
        DataSource = DTS_PedidosGeral
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object suiDBEdit4: TDBEdit
        Left = 100
        Top = 4
        Width = 74
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'CODIGO_CLIENTE'
        DataSource = DTS_PedidosGeral
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object suiDBEdit5: TDBEdit
        Left = 278
        Top = 23
        Width = 200
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'PAGAMENTO'
        DataSource = DTS_PedidosGeral
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object suiDBEdit6: TDBEdit
        Left = 100
        Top = 42
        Width = 95
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'DATA_PEDIDO'
        DataSource = DTS_PedidosGeral
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object suiDBEdit7: TDBEdit
        Left = 586
        Top = 42
        Width = 192
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'VALOR_TOTAL'
        DataSource = DTS_PedidosGeral
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object suiDBEdit8: TDBEdit
        Left = 586
        Top = 4
        Width = 192
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'VALOR_ITENS'
        DataSource = DTS_PedidosGeral
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object suiDBEdit9: TDBEdit
        Left = 586
        Top = 23
        Width = 192
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'VALOR_DESCONTO'
        DataSource = DTS_PedidosGeral
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object suiDBEdit10: TDBEdit
        Left = 100
        Top = 61
        Width = 95
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'DATA_ENTREGA'
        DataSource = DTS_PedidosGeral
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object suiDBEdit11: TDBEdit
        Left = 278
        Top = 61
        Width = 200
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'USUARIO_ENTREGA'
        DataSource = DTS_PedidosGeral
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
      object suiDBEdit12: TDBEdit
        Left = 100
        Top = 80
        Width = 678
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'OBSERVACOES'
        DataSource = DTS_PedidosGeral
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
    end
    object Panel9: TPanel
      Left = 1
      Top = 44
      Width = 785
      Height = 151
      Align = alClient
      Color = 15263976
      TabOrder = 3
      object Panel10: TPanel
        Left = 1
        Top = 1
        Width = 783
        Height = 4
        Align = alTop
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Color = clLime
        TabOrder = 0
      end
      object suiDBGrid1: TDBGrid
        Left = 1
        Top = 5
        Width = 783
        Height = 145
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DTS_PedidosGeral
        FixedColor = clHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' do Pedido'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Data do Pedido'
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
            FieldName = 'CODIGO_CLIENTE'
            Title.Caption = 'C'#243'd. Cli.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Cliente'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 255
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Title.Alignment = taCenter
            Title.Caption = 'Usu'#225'rio (Vendedor)'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 149
            Visible = True
          end>
      end
    end
    object pnpesq: TPanel
      Left = 1
      Top = 1
      Width = 785
      Height = 43
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15198177
      TabOrder = 4
      object Bevel1: TBevel
        Left = 4
        Top = 4
        Width = 774
        Height = 34
      end
      object Label2: TLabel
        Left = 174
        Top = 13
        Width = 70
        Height = 13
        Caption = 'Data Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 349
        Top = 13
        Width = 63
        Height = 13
        Caption = 'Data Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 9
        Top = 15
        Width = 41
        Height = 13
        Caption = 'Venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DateEdit1: TDateEdit
        Left = 244
        Top = 11
        Width = 98
        Height = 20
        Ctl3D = True
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = DateEdit1Enter
        OnExit = DateEdit1Exit
      end
      object DateEdit2: TDateEdit
        Left = 421
        Top = 11
        Width = 98
        Height = 20
        Ctl3D = True
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 1
        OnEnter = DateEdit2Enter
        OnExit = DateEdit2Exit
      end
      object suiButton1: TsBitBtn
        Left = 524
        Top = 7
        Width = 141
        Height = 28
        Caption = 'Pesquisar Vendas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
        ParentFont = False
        TabOrder = 2
        OnClick = suiButton1Click
        SkinData.SkinSection = 'BUTTON'
      end
      object suiDBNavigator1: TsDBNavigator
        Left = 672
        Top = 7
        Width = 100
        Height = 28
        FullRepaint = False
        TabOrder = 3
        SkinData.SkinSection = 'TOOLBAR'
        DataSource = DTS_PedidosGeral
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      end
      object Edit2: TEdit
        Left = 57
        Top = 10
        Width = 104
        Height = 21
        TabOrder = 4
      end
    end
  end
  object MSG_NR: TsuiMessageDialog
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
    Text = 'Nenhum registro foi localizado neste per'#237'odo !!!'
    Left = 482
    Top = 41
  end
  object SQLD_PedidosGeral1: TSQLDataSet
    CommandText = 
      'select * from SP_CANCELA_PEDIDOS(:Datai:,:Dataf) order by DATA_P' +
      'EDIDO  ASC'
    DataSource = DTS_PedidosGeral
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai:'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 300
    Top = 97
    object SQLD_PedidosGeral1TP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object SQLD_PedidosGeral1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_PedidosGeral1VALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
    end
    object SQLD_PedidosGeral1VALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object SQLD_PedidosGeral1VALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object SQLD_PedidosGeral1VALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
    end
    object SQLD_PedidosGeral1USUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SQLD_PedidosGeral1USUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object SQLD_PedidosGeral1DATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SQLD_PedidosGeral1DATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object SQLD_PedidosGeral1CODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SQLD_PedidosGeral1NOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SQLD_PedidosGeral1OBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object SQLD_PedidosGeral1PAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
    end
  end
  object DTSP_PedidosGeral: TDataSetProvider
    DataSet = SQLD_PedidosGeral
    Left = 328
    Top = 41
  end
  object CDS_PedidosGeral: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_PedidosGeral'
    Left = 354
    Top = 41
    object CDS_PedidosGeralCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDS_PedidosGeralVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 2
    end
    object CDS_PedidosGeralVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object CDS_PedidosGeralVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object CDS_PedidosGeralVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object CDS_PedidosGeralENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object CDS_PedidosGeralUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_PedidosGeralUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object CDS_PedidosGeralDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object CDS_PedidosGeralDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object CDS_PedidosGeralCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object CDS_PedidosGeralNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 70
    end
    object CDS_PedidosGeralPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object CDS_PedidosGeralTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object CDS_PedidosGeralOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 250
    end
    object CDS_PedidosGeralSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
  end
  object DTS_PedidosGeral: TDataSource
    DataSet = CDS_PedidosGeral
    Left = 382
    Top = 41
  end
  object SDS_ItensPedidoGeral: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_PEDIDO_ITENS Order by DESCRICAO_PRODUTO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_PedidosGeral
    PacketRecords = 0
    Params = <>
    Left = 410
    Top = 41
    object SDS_ItensPedidoGeralCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ItensPedidoGeralCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object SDS_ItensPedidoGeralCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object SDS_ItensPedidoGeralDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object SDS_ItensPedidoGeralPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
    end
    object SDS_ItensPedidoGeralDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_ItensPedidoGeralQUANTIDADE: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object SDS_ItensPedidoGeralPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
    end
    object SDS_ItensPedidoGeralCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
    end
    object SDS_ItensPedidoGeralDEV: TStringField
      FieldName = 'DEV'
      FixedChar = True
      Size = 1
    end
    object SDS_ItensPedidoGeralQNT_DEV: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QNT_DEV'
      Precision = 15
    end
    object SDS_ItensPedidoGeralVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      currency = True
      Precision = 15
    end
    object SDS_ItensPedidoGeralENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
    end
    object SDS_ItensPedidoGeralITEN: TIntegerField
      FieldName = 'ITEN'
    end
    object SDS_ItensPedidoGeralCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object SDS_ItensPedidoGeralUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object SDS_ItensPedidoGeralSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_ItensPedidoGeralVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object SDS_ItensPedidoGeralFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_ItensPedidoGeralCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object SDS_ItensPedidoGeralPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object SDS_ItensPedidoGeralPERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralPERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralPERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralBASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralVL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_ItensPedidoGeralIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Size = 3
    end
    object SDS_ItensPedidoGeralCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_ItensPedidoGeralID_BICO: TIntegerField
      FieldName = 'ID_BICO'
    end
    object SDS_ItensPedidoGeralID_TANQUE: TStringField
      FieldName = 'ID_TANQUE'
      Size = 5
    end
    object SDS_ItensPedidoGeralID_BOMBA: TStringField
      FieldName = 'ID_BOMBA'
      Size = 5
    end
    object SDS_ItensPedidoGeralBICO: TStringField
      FieldName = 'BICO'
      Size = 2
    end
    object SDS_ItensPedidoGeralAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 500
    end
    object SDS_ItensPedidoGeralREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 15
    end
    object SDS_ItensPedidoGeralNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
  end
  object DTS_ItensPedidoGeral: TDataSource
    DataSet = SDS_ItensPedidoGeral
    Left = 446
    Top = 41
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
    Left = 510
    Top = 25
  end
  object SPC_Estoque: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'QUANT'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'QUANT_FRACAO'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_ESTOQUE_SOMAI'
    Left = 578
    Top = 49
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
    Text = 'Antes de sair voc'#234' deve confirmar ou cancelar!'
    Left = 530
    Top = 25
  end
  object MSG: TsuiMessageDialog
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
    Left = 550
    Top = 41
  end
  object SPC_PAG_RET_PEDIDOS: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_AUT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO_AUT'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PAGAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_P'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_C'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'TP'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_PAG_RET_PEDIDOS'
    Left = 606
    Top = 41
  end
  object SPC_EstComRetPedidos: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO_EST'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PAGAMENTO'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_EST_COM_RET_PEDIDOS'
    Left = 635
    Top = 41
  end
  object MSG_CDI: TsuiMessageDialog
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
    Text = 'Confirma devolu'#231#227'o total do item selecionado ?'
    Left = 655
    Top = 41
  end
  object MSG_NCDI: TsuiMessageDialog
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
    Button1Caption = 'Ok'
    Button2Caption = 'N'#227'o'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 7
    Button3ModalResult = 2
    IconType = suiInformation
    Text = 
      'Este item n'#227'o pode ser devovido por completo! Tente a devolu'#231#227'o ' +
      'parcial !!!'
    Left = 682
    Top = 41
  end
  object deliten1: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'delete FROM crediario where codigo_compra = :venda')
    Left = 504
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'venda'
        ParamType = ptUnknown
      end>
  end
  object SQLD_PedidosGeral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from V_PEDIDOS_CANCELAR')
    SQLConnection = DM.SQLC
    Left = 298
    Top = 45
    object SQLD_PedidosGeralCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SQLD_PedidosGeralVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosGeralVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosGeralVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosGeralVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosGeralENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosGeralUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SQLD_PedidosGeralUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object SQLD_PedidosGeralDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SQLD_PedidosGeralDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object SQLD_PedidosGeralCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object SQLD_PedidosGeralNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 70
    end
    object SQLD_PedidosGeralPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object SQLD_PedidosGeralTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object SQLD_PedidosGeralOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 250
    end
    object SQLD_PedidosGeralSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
  end
  object logEst: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'INSERT INTO PRODUTOS_ESTOQUES_LOG ('
      '    ID_EMPRESA,'
      '    ID_FILIAL,'
      '    ID_AJUSTE,'
      '    ID_PRODUTO,'
      '    ID_LOTE,'
      '    ID_PRODUTO_SERIE,'
      '    DATA,'
      '    ID_USUARIO,'
      '    ID_MOVIMENTO,'
      '    FRACAO,'
      '    ESTOQUE_ANTERIOR,'
      '    QUANTIDADE,'
      '    ESTOQUE_POSTERIOR,'
      '    SITUACAO_ESTOQUE,'
      '    OPERACAO,'
      '    ACAO_BD,'
      '    SITUACAO_ESTOQUE_OLD)'
      '  VALUES ('
      '    :ID_EMPRESA,'
      '    :ID_FILIAL,'
      '    :ID_AJUSTE,'
      '    :ID_PRODUTO,'
      '    :ID_LOTE,'
      '    :ID_PRODUTO_SERIE,'
      '    :DATA,'
      '    :ID_USUARIO,'
      '    :ID_MOVIMENTO,'
      '    :FRACAO,'
      '    :ESTOQUE_ANTERIOR,'
      '    :QUANTIDADE,'
      '    :ESTOQUE_POSTERIOR,'
      '    :SITUACAO_ESTOQUE,'
      '    :OPERACAO,'
      '    :ACAO_BD,'
      '    :SITUACAO_ESTOQUE_OLD);')
    Left = 240
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_FILIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_AJUSTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_PRODUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_LOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_PRODUTO_SERIE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_MOVIMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FRACAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTOQUE_ANTERIOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'QUANTIDADE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTOQUE_POSTERIOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SITUACAO_ESTOQUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OPERACAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACAO_BD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SITUACAO_ESTOQUE_OLD'
        ParamType = ptUnknown
      end>
  end
end
