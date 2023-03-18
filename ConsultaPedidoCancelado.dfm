object FormConsultaPedidoCancelado: TFormConsultaPedidoCancelado
  Left = 334
  Top = 112
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consulta - Pedidos Cancelados'
  ClientHeight = 536
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pc: TsuiPageControl
    Left = 0
    Top = 0
    Width = 787
    Height = 536
    Align = alClient
    UIStyle = WinXP
    LeftMargin = 10
    BorderColor = 6842472
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    TabPosition = suiTop
    PageDrawFocused = True
    ParentFont = False
    TabOrder = 0
    TabStop = True
    ActivePage = TBCPP
    Pages = (
      TBCPP
      TabSheet1
      TabSheet2
      suiTabSheet1)
    object TabSheet1: TsuiTabSheet
      Left = 3
      Top = 22
      Width = 781
      Height = 511
      PageIndex = 1
      Caption = 'Pedidos Cancelados por Cliente'
      TabVisible = True
      ImageIndex = -1
      Color = clWhite
      Enabled = False
      TabOrder = 2
      OnShow = TabSheet1Show
      PageControl = pc
      object Panel1: TPanel
        Left = 0
        Top = 470
        Width = 781
        Height = 41
        Align = alBottom
        BevelInner = bvRaised
        Color = 15263976
        TabOrder = 0
        DesignSize = (
          781
          41)
        object suiButton4: TsuiButton
          Left = 859
          Top = 0
          Width = 22
          Height = 21
          Anchors = [akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ShowHint = True
          Caption = 'BitBtn3'
          AutoSize = False
          ParentShowHint = False
          ParentFont = False
          TabStop = False
          UIStyle = WinXP
          TabOrder = 0
          Transparent = False
          ModalResult = 0
          FocusedRectMargin = 2
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
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          ResHandle = 0
        end
        object suiDBNavigator4: TsuiDBNavigator
          Left = 5
          Top = 5
          Width = 348
          Height = 30
          Cursor = crDefault
          UIStyle = WinXP
          DataSource = DMC5.DTS_PedidosCliente
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 1
        end
        object suiDBNavigator5: TsuiDBNavigator
          Left = 410
          Top = 5
          Width = 348
          Height = 20
          Cursor = crDefault
          UIStyle = WinXP
          DataSource = DMC5.DTS_ItensPedidoCliente
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 2
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 781
        Height = 43
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15198177
        TabOrder = 1
        object Bevel2: TBevel
          Left = 4
          Top = 4
          Width = 770
          Height = 34
        end
        object Label1: TLabel
          Left = 6
          Top = 10
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
        object Label3: TLabel
          Left = 187
          Top = 10
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
        object Label10: TLabel
          Left = 362
          Top = 10
          Width = 98
          Height = 13
          Caption = 'Nome do Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DateEdit3: TDateEdit
          Left = 77
          Top = 10
          Width = 100
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = DateEdit1Enter
          OnExit = DateEdit1Exit
        end
        object DateEdit4: TDateEdit
          Left = 251
          Top = 10
          Width = 100
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = DateEdit2Enter
          OnExit = DateEdit2Exit
        end
        object suiButton7: TsuiButton
          Left = 680
          Top = 7
          Width = 89
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Caption = 'Consultar'
          AutoSize = False
          ParentFont = False
          UIStyle = WinXP
          TabOrder = 3
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
          OnClick = suiButton7Click
          ResHandle = 0
        end
        object Edit1: TsuiEdit
          Left = 463
          Top = 10
          Width = 186
          Height = 19
          UIStyle = WinXP
          BorderColor = 6842472
          CharCase = ecUpperCase
          TabOrder = 2
          OnEnter = Edit2Enter
          OnExit = Edit2Exit
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 300
        Width = 781
        Height = 170
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvNone
        Color = 15263976
        Enabled = False
        TabOrder = 2
        object suiDBGrid3: TsuiDBGrid
          Left = 1
          Top = 1
          Width = 779
          Height = 168
          Align = alClient
          BorderStyle = bsNone
          Color = 14609391
          DataSource = DMC5.DTS_ItensPedidoCliente
          FixedColor = 15717318
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UIStyle = WinXP
          BorderColor = 6842472
          FocusedColor = clGreen
          SelectedColor = clYellow
          FontColor = clBlack
          TitleFontColor = clBlack
          FixedBGColor = 15717318
          BGColor = 14609391
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO_PRODUTO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo EAN'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO_PRODUTO'
              Title.Caption = 'Descri'#231#227'o do Produto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 285
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_UNITARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Unit'#225'rio'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Title.Alignment = taCenter
              Title.Caption = 'Desconto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'Qnt'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Total'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 122
              Visible = True
            end>
        end
      end
      object Panel14: TPanel
        Left = 0
        Top = 174
        Width = 781
        Height = 126
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvNone
        BevelWidth = 2
        Color = 15263976
        Enabled = False
        TabOrder = 3
        object RxLabel8: TRxLabel
          Left = 5
          Top = 4
          Width = 46
          Height = 13
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel9: TRxLabel
          Left = 5
          Top = 24
          Width = 86
          Height = 13
          Caption = 'N'#186' do Pedido: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel10: TRxLabel
          Left = 5
          Top = 44
          Width = 95
          Height = 13
          Caption = 'Data do Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel11: TRxLabel
          Left = 5
          Top = 69
          Width = 142
          Height = 13
          Caption = 'Observa'#231#245'es do Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel12: TRxLabel
          Left = 177
          Top = 24
          Width = 61
          Height = 13
          Caption = 'Vendedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel13: TRxLabel
          Left = 227
          Top = 44
          Width = 99
          Height = 13
          Caption = 'Data p/ Entrega:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel14: TRxLabel
          Left = 447
          Top = 4
          Width = 70
          Height = 13
          Caption = 'Pagamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel16: TRxLabel
          Left = 447
          Top = 24
          Width = 177
          Height = 13
          Caption = 'Valor dos Itens com Desconto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel34: TRxLabel
          Left = 447
          Top = 44
          Width = 133
          Height = 13
          Caption = 'Desconto / Acrescimo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel35: TRxLabel
          Left = 447
          Top = 64
          Width = 69
          Height = 13
          Caption = 'Valor Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel15: TPanel
          Left = 2
          Top = 106
          Width = 777
          Height = 18
          Align = alBottom
          BevelInner = bvRaised
          Color = 15263976
          TabOrder = 0
          object Label5: TLabel
            Left = 2
            Top = 2
            Width = 773
            Height = 14
            Align = alClient
            Alignment = taCenter
            Caption = 'ITENS DO PEDIDO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 111
            ExplicitHeight = 13
          end
        end
        object suiDBMemo1: TsuiDBMemo
          Left = 6
          Top = 84
          Width = 769
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'OBSERVACOES'
          DataSource = DMC5.DTS_PedidosCliente
          ReadOnly = True
          TabOrder = 1
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit11: TsuiDBEdit
          Left = 105
          Top = 44
          Width = 109
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'DATA_PEDIDO'
          DataSource = DMC5.DTS_PedidosCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit12: TsuiDBEdit
          Left = 105
          Top = 24
          Width = 71
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'CODIGO'
          DataSource = DMC5.DTS_PedidosCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit13: TsuiDBEdit
          Left = 105
          Top = 4
          Width = 70
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'CODIGO_CLIENTE'
          DataSource = DMC5.DTS_PedidosCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit14: TsuiDBEdit
          Left = 179
          Top = 4
          Width = 261
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'NOME_CLIENTE'
          DataSource = DMC5.DTS_PedidosCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit15: TsuiDBEdit
          Left = 238
          Top = 24
          Width = 202
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'USUARIO'
          DataSource = DMC5.DTS_PedidosCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit16: TsuiDBEdit
          Left = 331
          Top = 44
          Width = 109
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'DATA_ENTREGA'
          DataSource = DMC5.DTS_PedidosCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit17: TsuiDBEdit
          Left = 624
          Top = 64
          Width = 150
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'VALOR_TOTAL'
          DataSource = DMC5.DTS_PedidosCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit18: TsuiDBEdit
          Left = 624
          Top = 44
          Width = 150
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'VALOR_DESCONTO'
          DataSource = DMC5.DTS_PedidosCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit19: TsuiDBEdit
          Left = 624
          Top = 24
          Width = 150
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'VALOR_ITENS'
          DataSource = DMC5.DTS_PedidosCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit20: TsuiDBEdit
          Left = 624
          Top = 4
          Width = 150
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'PAGAMENTO'
          DataSource = DMC5.DTS_PedidosCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          UIStyle = WinXP
          BorderColor = 6842472
        end
      end
      object Panel16: TPanel
        Left = 0
        Top = 43
        Width = 781
        Height = 131
        Align = alTop
        Color = 15263976
        TabOrder = 4
        object Panel17: TPanel
          Left = 1
          Top = 1
          Width = 779
          Height = 4
          Align = alTop
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Color = clLime
          TabOrder = 0
        end
        object suiDBGrid4: TsuiDBGrid
          Left = 1
          Top = 5
          Width = 779
          Height = 125
          Align = alClient
          BorderStyle = bsNone
          Color = 14609391
          DataSource = DMC5.DTS_PedidosCliente
          FixedColor = 15717318
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
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
          UIStyle = WinXP
          BorderColor = 6842472
          FocusedColor = clGreen
          SelectedColor = clYellow
          FontColor = clBlack
          TitleFontColor = clBlack
          FixedBGColor = 15717318
          BGColor = 14609391
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA_PEDIDO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Data do Pedido'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo do Pedido'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_CLIENTE'
              Title.Alignment = taCenter
              Title.Caption = 'Cliente'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Vendedor'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 131
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Valor Total'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 111
              Visible = True
            end>
        end
      end
    end
    object TabSheet2: TsuiTabSheet
      Left = 3
      Top = 22
      Width = 781
      Height = 511
      PageIndex = 2
      Caption = 'Pedidos Cancelador por Usu'#225'rio'
      TabVisible = True
      ImageIndex = -1
      Color = clWhite
      Enabled = False
      TabOrder = 3
      OnShow = TabSheet2Show
      PageControl = pc
      object Panel6: TPanel
        Left = 0
        Top = 469
        Width = 781
        Height = 42
        Align = alBottom
        BevelInner = bvRaised
        Color = 15263976
        TabOrder = 0
        object Navigator3: TsuiDBNavigator
          Left = 5
          Top = 5
          Width = 348
          Height = 30
          Cursor = crDefault
          UIStyle = WinXP
          DataSource = DMC5.DTS_PedidosUsuario
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 0
        end
        object suiDBNavigator6: TsuiDBNavigator
          Left = 410
          Top = 5
          Width = 348
          Height = 20
          Cursor = crDefault
          UIStyle = WinXP
          DataSource = DMC5.DTS_ItensPedidoUsuario
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 1
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 781
        Height = 43
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15198177
        TabOrder = 1
        object Bevel3: TBevel
          Left = 4
          Top = 4
          Width = 770
          Height = 34
        end
        object Label6: TLabel
          Left = 6
          Top = 10
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
        object Label7: TLabel
          Left = 187
          Top = 10
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
        object Label8: TLabel
          Left = 362
          Top = 10
          Width = 102
          Height = 13
          Caption = 'Nome do Usu'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DateEdit5: TDateEdit
          Left = 77
          Top = 10
          Width = 100
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = DateEdit1Enter
          OnExit = DateEdit1Exit
        end
        object DateEdit6: TDateEdit
          Left = 251
          Top = 10
          Width = 100
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = DateEdit2Enter
          OnExit = DateEdit2Exit
        end
        object suiButton8: TsuiButton
          Left = 680
          Top = 7
          Width = 89
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Caption = 'Consultar'
          AutoSize = False
          ParentFont = False
          UIStyle = WinXP
          TabOrder = 3
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
          OnClick = suiButton8Click
          ResHandle = 0
        end
        object Edit2: TsuiEdit
          Left = 463
          Top = 10
          Width = 186
          Height = 19
          UIStyle = WinXP
          BorderColor = 6842472
          CharCase = ecUpperCase
          TabOrder = 2
          OnEnter = Edit2Enter
          OnExit = Edit2Exit
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 43
        Width = 781
        Height = 131
        Align = alTop
        Color = 15263976
        TabOrder = 2
        object Panel18: TPanel
          Left = 1
          Top = 1
          Width = 779
          Height = 4
          Align = alTop
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Color = clLime
          TabOrder = 0
        end
        object suiDBGrid5: TsuiDBGrid
          Left = 1
          Top = 5
          Width = 779
          Height = 125
          Align = alClient
          BorderStyle = bsNone
          Color = 14609391
          DataSource = DMC5.DTS_PedidosUsuario
          FixedColor = 15717318
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
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
          UIStyle = WinXP
          BorderColor = 6842472
          FocusedColor = clGreen
          SelectedColor = clYellow
          FontColor = clBlack
          TitleFontColor = clBlack
          FixedBGColor = 15717318
          BGColor = 14609391
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA_PEDIDO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Data do Pedido'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo do Pedido'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_CLIENTE'
              Title.Alignment = taCenter
              Title.Caption = 'Cliente'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Vendedor'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 131
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Valor Total'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 111
              Visible = True
            end>
        end
      end
      object Panel19: TPanel
        Left = 0
        Top = 174
        Width = 781
        Height = 126
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvNone
        BevelWidth = 2
        Color = 15263976
        Enabled = False
        TabOrder = 3
        object RxLabel17: TRxLabel
          Left = 5
          Top = 4
          Width = 46
          Height = 13
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel18: TRxLabel
          Left = 5
          Top = 24
          Width = 86
          Height = 13
          Caption = 'N'#186' do Pedido: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel19: TRxLabel
          Left = 5
          Top = 44
          Width = 95
          Height = 13
          Caption = 'Data do Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel20: TRxLabel
          Left = 5
          Top = 69
          Width = 142
          Height = 13
          Caption = 'Observa'#231#245'es do Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel21: TRxLabel
          Left = 177
          Top = 24
          Width = 61
          Height = 13
          Caption = 'Vendedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel22: TRxLabel
          Left = 227
          Top = 44
          Width = 99
          Height = 13
          Caption = 'Data p/ Entrega:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel23: TRxLabel
          Left = 447
          Top = 64
          Width = 69
          Height = 13
          Caption = 'Valor Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel25: TRxLabel
          Left = 447
          Top = 44
          Width = 133
          Height = 13
          Caption = 'Desconto / Acrescimo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel37: TRxLabel
          Left = 447
          Top = 24
          Width = 177
          Height = 13
          Caption = 'Valor dos Itens com Desconto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel38: TRxLabel
          Left = 447
          Top = 4
          Width = 70
          Height = 13
          Caption = 'Pagamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel20: TPanel
          Left = 2
          Top = 107
          Width = 777
          Height = 17
          Align = alBottom
          BevelInner = bvRaised
          Color = 15263976
          TabOrder = 0
          object Label11: TLabel
            Left = 2
            Top = 2
            Width = 773
            Height = 13
            Align = alClient
            Alignment = taCenter
            Caption = 'ITENS DO PEDIDO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            ExplicitWidth = 111
          end
        end
        object suiDBMemo3: TsuiDBMemo
          Left = 6
          Top = 84
          Width = 769
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'OBSERVACOES'
          DataSource = DMC5.DTS_PedidosUsuario
          ReadOnly = True
          TabOrder = 1
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit21: TsuiDBEdit
          Left = 105
          Top = 44
          Width = 109
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'DATA_PEDIDO'
          DataSource = DMC5.DTS_PedidosUsuario
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit22: TsuiDBEdit
          Left = 105
          Top = 24
          Width = 71
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'CODIGO'
          DataSource = DMC5.DTS_PedidosUsuario
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit23: TsuiDBEdit
          Left = 105
          Top = 4
          Width = 70
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'CODIGO_CLIENTE'
          DataSource = DMC5.DTS_PedidosUsuario
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit24: TsuiDBEdit
          Left = 179
          Top = 4
          Width = 261
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'NOME_CLIENTE'
          DataSource = DMC5.DTS_PedidosUsuario
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit25: TsuiDBEdit
          Left = 238
          Top = 24
          Width = 202
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'USUARIO'
          DataSource = DMC5.DTS_PedidosUsuario
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit26: TsuiDBEdit
          Left = 331
          Top = 44
          Width = 109
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'DATA_ENTREGA'
          DataSource = DMC5.DTS_PedidosUsuario
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit27: TsuiDBEdit
          Left = 624
          Top = 4
          Width = 150
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'PAGAMENTO'
          DataSource = DMC5.DTS_PedidosUsuario
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit28: TsuiDBEdit
          Left = 624
          Top = 24
          Width = 150
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'VALOR_ITENS'
          DataSource = DMC5.DTS_PedidosUsuario
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit29: TsuiDBEdit
          Left = 624
          Top = 44
          Width = 150
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'VALOR_DESCONTO'
          DataSource = DMC5.DTS_PedidosUsuario
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit30: TsuiDBEdit
          Left = 624
          Top = 64
          Width = 150
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'VALOR_TOTAL'
          DataSource = DMC5.DTS_PedidosUsuario
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          UIStyle = WinXP
          BorderColor = 6842472
        end
      end
      object Panel21: TPanel
        Left = 0
        Top = 300
        Width = 781
        Height = 169
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvNone
        Color = 15263976
        Enabled = False
        TabOrder = 4
        object suiDBGrid6: TsuiDBGrid
          Left = 1
          Top = 1
          Width = 779
          Height = 167
          Align = alClient
          BorderStyle = bsNone
          Color = 14609391
          DataSource = DMC5.DTS_ItensPedidoUsuario
          FixedColor = 15717318
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UIStyle = WinXP
          BorderColor = 6842472
          FocusedColor = clGreen
          SelectedColor = clYellow
          FontColor = clBlack
          TitleFontColor = clBlack
          FixedBGColor = 15717318
          BGColor = 14609391
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO_PRODUTO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo EAN'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO_PRODUTO'
              Title.Caption = 'Descri'#231#227'o do Produto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 285
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_UNITARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Unit'#225'rio'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Title.Alignment = taCenter
              Title.Caption = 'Desconto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'Qnt'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Total'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 122
              Visible = True
            end>
        end
      end
    end
    object suiTabSheet1: TsuiTabSheet
      Left = 3
      Top = 22
      Width = 781
      Height = 511
      PageIndex = 3
      Caption = 'Pedidos Cancelador por Op'#231#227'o de Pagamento'
      TabVisible = True
      ImageIndex = -1
      Color = clWhite
      Enabled = False
      TabOrder = 4
      OnShow = suiTabSheet1Show
      PageControl = pc
      object Panel12: TPanel
        Left = 0
        Top = 470
        Width = 781
        Height = 41
        Align = alBottom
        BevelInner = bvRaised
        Color = 15263976
        TabOrder = 0
        DesignSize = (
          781
          41)
        object suiButton3: TsuiButton
          Left = 859
          Top = 0
          Width = 22
          Height = 21
          Anchors = [akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ShowHint = True
          Caption = 'BitBtn3'
          AutoSize = False
          ParentShowHint = False
          ParentFont = False
          TabStop = False
          UIStyle = WinXP
          TabOrder = 0
          Transparent = False
          ModalResult = 0
          FocusedRectMargin = 2
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
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          ResHandle = 0
        end
        object suiDBNavigator2: TsuiDBNavigator
          Left = 5
          Top = 5
          Width = 348
          Height = 30
          Cursor = crDefault
          UIStyle = WinXP
          DataSource = DMC5.DTS_Pedidos_Pagamento
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 1
        end
        object suiDBNavigator7: TsuiDBNavigator
          Left = 410
          Top = 5
          Width = 348
          Height = 20
          Cursor = crDefault
          UIStyle = WinXP
          DataSource = DMC5.DTS_ItensPedido_Pagamento
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 2
        end
      end
      object Panel22: TPanel
        Left = 0
        Top = 0
        Width = 781
        Height = 43
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15198177
        TabOrder = 1
        object Bevel4: TBevel
          Left = 4
          Top = 4
          Width = 770
          Height = 34
        end
        object Label12: TLabel
          Left = 6
          Top = 10
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
        object Label13: TLabel
          Left = 187
          Top = 10
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
        object Label14: TLabel
          Left = 362
          Top = 10
          Width = 115
          Height = 13
          Caption = 'Tipo de Pagamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DateEdit7: TDateEdit
          Left = 77
          Top = 10
          Width = 100
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = DateEdit1Enter
          OnExit = DateEdit1Exit
        end
        object DateEdit8: TDateEdit
          Left = 251
          Top = 10
          Width = 100
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = DateEdit2Enter
          OnExit = DateEdit2Exit
        end
        object suiButton9: TsuiButton
          Left = 680
          Top = 7
          Width = 89
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Caption = 'Consultar'
          AutoSize = False
          ParentFont = False
          UIStyle = WinXP
          TabOrder = 3
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
          OnClick = suiButton9Click
          ResHandle = 0
        end
        object Edit3: TsuiEdit
          Left = 482
          Top = 10
          Width = 171
          Height = 19
          UIStyle = WinXP
          BorderColor = 6842472
          CharCase = ecUpperCase
          TabOrder = 2
          OnEnter = Edit2Enter
          OnExit = Edit2Exit
        end
      end
      object Panel23: TPanel
        Left = 0
        Top = 43
        Width = 781
        Height = 131
        Align = alTop
        Color = 15263976
        TabOrder = 2
        object Panel24: TPanel
          Left = 1
          Top = 1
          Width = 779
          Height = 4
          Align = alTop
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Color = clLime
          TabOrder = 0
        end
        object suiDBGrid7: TsuiDBGrid
          Left = 1
          Top = 5
          Width = 779
          Height = 125
          Align = alClient
          BorderStyle = bsNone
          Color = 14609391
          DataSource = DMC5.DTS_Pedidos_Pagamento
          FixedColor = 15717318
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
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
          UIStyle = WinXP
          BorderColor = 6842472
          FocusedColor = clGreen
          SelectedColor = clYellow
          FontColor = clBlack
          TitleFontColor = clBlack
          FixedBGColor = 15717318
          BGColor = 14609391
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA_PEDIDO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Data do Pedido'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo do Pedido'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_CLIENTE'
              Title.Alignment = taCenter
              Title.Caption = 'Cliente'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Vendedor'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 131
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Valor Total'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 111
              Visible = True
            end>
        end
      end
      object Panel25: TPanel
        Left = 0
        Top = 174
        Width = 781
        Height = 126
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvNone
        BevelWidth = 2
        Color = 15263976
        Enabled = False
        TabOrder = 3
        object RxLabel26: TRxLabel
          Left = 5
          Top = 4
          Width = 46
          Height = 13
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel27: TRxLabel
          Left = 5
          Top = 24
          Width = 86
          Height = 13
          Caption = 'N'#186' do Pedido: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel28: TRxLabel
          Left = 5
          Top = 44
          Width = 95
          Height = 13
          Caption = 'Data do Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel29: TRxLabel
          Left = 5
          Top = 69
          Width = 142
          Height = 13
          Caption = 'Observa'#231#245'es do Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel30: TRxLabel
          Left = 177
          Top = 24
          Width = 61
          Height = 13
          Caption = 'Vendedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel31: TRxLabel
          Left = 227
          Top = 44
          Width = 99
          Height = 13
          Caption = 'Data p/ Entrega:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel32: TRxLabel
          Left = 447
          Top = 4
          Width = 70
          Height = 13
          Caption = 'Pagamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel36: TRxLabel
          Left = 447
          Top = 24
          Width = 177
          Height = 13
          Caption = 'Valor dos Itens com Desconto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel39: TRxLabel
          Left = 447
          Top = 44
          Width = 133
          Height = 13
          Caption = 'Desconto / Acrescimo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel40: TRxLabel
          Left = 447
          Top = 64
          Width = 69
          Height = 13
          Caption = 'Valor Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel26: TPanel
          Left = 2
          Top = 106
          Width = 777
          Height = 18
          Align = alBottom
          BevelInner = bvRaised
          Color = 15263976
          TabOrder = 0
          object Label15: TLabel
            Left = 2
            Top = 2
            Width = 773
            Height = 14
            Align = alClient
            Alignment = taCenter
            Caption = 'ITENS DO PEDIDO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 111
            ExplicitHeight = 13
          end
        end
        object suiDBMemo4: TsuiDBMemo
          Left = 6
          Top = 84
          Width = 769
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'OBSERVACOES'
          DataSource = DMC5.DTS_Pedidos_Pagamento
          ReadOnly = True
          TabOrder = 1
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit31: TsuiDBEdit
          Left = 105
          Top = 44
          Width = 109
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'DATA_PEDIDO'
          DataSource = DMC5.DTS_Pedidos_Pagamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit32: TsuiDBEdit
          Left = 105
          Top = 24
          Width = 71
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'CODIGO'
          DataSource = DMC5.DTS_Pedidos_Pagamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit33: TsuiDBEdit
          Left = 105
          Top = 4
          Width = 70
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'CODIGO_CLIENTE'
          DataSource = DMC5.DTS_Pedidos_Pagamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit34: TsuiDBEdit
          Left = 179
          Top = 4
          Width = 261
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'NOME_CLIENTE'
          DataSource = DMC5.DTS_Pedidos_Pagamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit35: TsuiDBEdit
          Left = 238
          Top = 24
          Width = 202
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'USUARIO'
          DataSource = DMC5.DTS_Pedidos_Pagamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit36: TsuiDBEdit
          Left = 331
          Top = 44
          Width = 109
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'DATA_ENTREGA'
          DataSource = DMC5.DTS_Pedidos_Pagamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit37: TsuiDBEdit
          Left = 624
          Top = 64
          Width = 150
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'VALOR_TOTAL'
          DataSource = DMC5.DTS_Pedidos_Pagamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit38: TsuiDBEdit
          Left = 624
          Top = 44
          Width = 150
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'VALOR_DESCONTO'
          DataSource = DMC5.DTS_Pedidos_Pagamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit39: TsuiDBEdit
          Left = 624
          Top = 24
          Width = 150
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'VALOR_ITENS'
          DataSource = DMC5.DTS_Pedidos_Pagamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit40: TsuiDBEdit
          Left = 624
          Top = 4
          Width = 150
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'PAGAMENTO'
          DataSource = DMC5.DTS_Pedidos_Pagamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          UIStyle = WinXP
          BorderColor = 6842472
        end
      end
      object Panel27: TPanel
        Left = 0
        Top = 300
        Width = 781
        Height = 170
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvNone
        Color = 15263976
        Enabled = False
        TabOrder = 4
        object suiDBGrid8: TsuiDBGrid
          Left = 1
          Top = 1
          Width = 779
          Height = 168
          Align = alClient
          BorderStyle = bsNone
          Color = 14609391
          DataSource = DMC5.DTS_ItensPedido_Pagamento
          FixedColor = 15717318
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UIStyle = WinXP
          BorderColor = 6842472
          FocusedColor = clGreen
          SelectedColor = clYellow
          FontColor = clBlack
          TitleFontColor = clBlack
          FixedBGColor = 15717318
          BGColor = 14609391
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO_PRODUTO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo EAN'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO_PRODUTO'
              Title.Caption = 'Descri'#231#227'o do Produto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 285
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_UNITARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Unit'#225'rio'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Title.Alignment = taCenter
              Title.Caption = 'Desconto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'Qnt'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Total'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 122
              Visible = True
            end>
        end
      end
    end
    object TBCPP: TsuiTabSheet
      Left = 3
      Top = 22
      Width = 781
      Height = 511
      PageIndex = 0
      Caption = 'Pedidos Cancelados (Geral)'
      TabVisible = True
      ImageIndex = -1
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      PageControl = pc
      object pnpesq: TPanel
        Left = 0
        Top = 0
        Width = 781
        Height = 43
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15198177
        TabOrder = 0
        object Bevel1: TBevel
          Left = 4
          Top = 4
          Width = 770
          Height = 34
        end
        object Label2: TLabel
          Left = 6
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
          Left = 195
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
        object myLabel3d1: TsLabelFX
          Left = 493
          Top = 5
          Width = 276
          Height = 41
          Caption = 'Pedidos Cancelados'
          ParentColor = False
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Shadow.OffsetKeeper.LeftTop = -3
          Shadow.OffsetKeeper.RightBottom = 5
        end
        object DateEdit1: TDateEdit
          Left = 77
          Top = 11
          Width = 100
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = DateEdit1Enter
          OnExit = DateEdit1Exit
        end
        object DateEdit2: TDateEdit
          Left = 262
          Top = 11
          Width = 100
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = DateEdit2Enter
          OnExit = DateEdit2Exit
        end
        object suiButton1: TsuiButton
          Left = 372
          Top = 7
          Width = 100
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Caption = 'Consultar'
          AutoSize = False
          ParentFont = False
          UIStyle = WinXP
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
          OnClick = suiButton1Click
          ResHandle = 0
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 300
        Width = 781
        Height = 170
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvNone
        Color = 15263976
        Enabled = False
        TabOrder = 1
        object suiDBGrid2: TsuiDBGrid
          Left = 1
          Top = 1
          Width = 779
          Height = 168
          Align = alClient
          BorderStyle = bsNone
          Color = 14609391
          DataSource = DMC5.DTS_ItensPedidoGeral
          FixedColor = 15717318
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UIStyle = WinXP
          BorderColor = 6842472
          FocusedColor = clGreen
          SelectedColor = clYellow
          FontColor = clBlack
          TitleFontColor = clBlack
          FixedBGColor = 15717318
          BGColor = 14609391
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO_PRODUTO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo EAN'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO_PRODUTO'
              Title.Caption = 'Descri'#231#227'o do Produto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 285
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_UNITARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Unit'#225'rio'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Title.Alignment = taCenter
              Title.Caption = 'Desconto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'Qnt'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Total'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 122
              Visible = True
            end>
        end
      end
      object Panel: TPanel
        Left = 0
        Top = 470
        Width = 781
        Height = 41
        Align = alBottom
        BevelInner = bvRaised
        Color = 15263976
        TabOrder = 2
        DesignSize = (
          781
          41)
        object BitBtn3: TsuiButton
          Left = 859
          Top = 0
          Width = 22
          Height = 21
          Anchors = [akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ShowHint = True
          Caption = 'BitBtn3'
          AutoSize = False
          ParentShowHint = False
          ParentFont = False
          TabStop = False
          UIStyle = WinXP
          TabOrder = 0
          Transparent = False
          ModalResult = 0
          FocusedRectMargin = 2
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
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          ResHandle = 0
        end
        object Navigator: TsuiDBNavigator
          Left = 5
          Top = 5
          Width = 348
          Height = 30
          Cursor = crDefault
          UIStyle = WinXP
          DataSource = DMC5.DTS_PedidosGeral
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 1
        end
        object suiDBNavigator1: TsuiDBNavigator
          Left = 410
          Top = 5
          Width = 348
          Height = 20
          Cursor = crDefault
          UIStyle = WinXP
          DataSource = DMC5.DTS_ItensPedidoGeral
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 2
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 174
        Width = 781
        Height = 126
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvNone
        BevelWidth = 2
        Color = 15263976
        Enabled = False
        TabOrder = 3
        object RxLabel2: TRxLabel
          Left = 5
          Top = 24
          Width = 86
          Height = 13
          Caption = 'N'#186' do Pedido: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel3: TRxLabel
          Left = 5
          Top = 4
          Width = 46
          Height = 13
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel4: TRxLabel
          Left = 447
          Top = 4
          Width = 70
          Height = 13
          Caption = 'Pagamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel5: TRxLabel
          Left = 447
          Top = 24
          Width = 177
          Height = 13
          Caption = 'Valor dos Itens com Desconto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel6: TRxLabel
          Left = 447
          Top = 44
          Width = 133
          Height = 13
          Caption = 'Desconto / Acrescimo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel7: TRxLabel
          Left = 447
          Top = 64
          Width = 69
          Height = 13
          Caption = 'Valor Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel33: TRxLabel
          Left = 177
          Top = 24
          Width = 61
          Height = 13
          Caption = 'Vendedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel1: TRxLabel
          Left = 227
          Top = 44
          Width = 99
          Height = 13
          Caption = 'Data p/ Entrega:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel15: TRxLabel
          Left = 5
          Top = 44
          Width = 95
          Height = 13
          Caption = 'Data do Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel24: TRxLabel
          Left = 5
          Top = 69
          Width = 142
          Height = 13
          Caption = 'Observa'#231#245'es do Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel11: TPanel
          Left = 2
          Top = 105
          Width = 777
          Height = 19
          Align = alBottom
          BevelInner = bvRaised
          Color = 15263976
          TabOrder = 0
          object Label9: TLabel
            Left = 2
            Top = 2
            Width = 773
            Height = 15
            Align = alClient
            Alignment = taCenter
            Caption = 'ITENS DO PEDIDO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 111
            ExplicitHeight = 13
          end
        end
        object suiDBEdit1: TsuiDBEdit
          Left = 238
          Top = 24
          Width = 202
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'USUARIO'
          DataSource = DMC5.DTS_PedidosGeral
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit2: TsuiDBEdit
          Left = 105
          Top = 24
          Width = 71
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'CODIGO'
          DataSource = DMC5.DTS_PedidosGeral
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit3: TsuiDBEdit
          Left = 179
          Top = 4
          Width = 261
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'NOME_CLIENTE'
          DataSource = DMC5.DTS_PedidosGeral
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit4: TsuiDBEdit
          Left = 105
          Top = 4
          Width = 70
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'CODIGO_CLIENTE'
          DataSource = DMC5.DTS_PedidosGeral
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit5: TsuiDBEdit
          Left = 624
          Top = 4
          Width = 150
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'PAGAMENTO'
          DataSource = DMC5.DTS_PedidosGeral
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit6: TsuiDBEdit
          Left = 331
          Top = 44
          Width = 109
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'DATA_ENTREGA'
          DataSource = DMC5.DTS_PedidosGeral
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit7: TsuiDBEdit
          Left = 624
          Top = 64
          Width = 150
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'VALOR_TOTAL'
          DataSource = DMC5.DTS_PedidosGeral
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit8: TsuiDBEdit
          Left = 624
          Top = 24
          Width = 150
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'VALOR_ITENS'
          DataSource = DMC5.DTS_PedidosGeral
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit9: TsuiDBEdit
          Left = 624
          Top = 44
          Width = 150
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'VALOR_DESCONTO'
          DataSource = DMC5.DTS_PedidosGeral
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit10: TsuiDBEdit
          Left = 105
          Top = 44
          Width = 109
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'DATA_PEDIDO'
          DataSource = DMC5.DTS_PedidosGeral
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBMemo2: TsuiDBMemo
          Left = 6
          Top = 84
          Width = 769
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'OBSERVACOES'
          DataSource = DMC5.DTS_PedidosGeral
          ReadOnly = True
          TabOrder = 11
          UIStyle = WinXP
          BorderColor = 6842472
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 43
        Width = 781
        Height = 131
        Align = alTop
        Color = 15263976
        TabOrder = 4
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 779
          Height = 4
          Align = alTop
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Color = clLime
          TabOrder = 0
        end
        object suiDBGrid1: TsuiDBGrid
          Left = 1
          Top = 5
          Width = 779
          Height = 125
          Align = alClient
          BorderStyle = bsNone
          Color = 14609391
          DataSource = DMC5.DTS_PedidosGeral
          FixedColor = 15717318
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
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
          UIStyle = WinXP
          BorderColor = 6842472
          FocusedColor = clGreen
          SelectedColor = clYellow
          FontColor = clBlack
          TitleFontColor = clBlack
          FixedBGColor = 15717318
          BGColor = 14609391
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA_PEDIDO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Data do Pedido'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo do Pedido'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_CLIENTE'
              Title.Alignment = taCenter
              Title.Caption = 'Cliente'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 303
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Vendedor'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 131
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Valor Total'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 111
              Visible = True
            end>
        end
      end
    end
  end
  object MSG_NR: TsuiMessageDialog
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
    Text = 'Nenhum Registro Foi Localizado !!!'
    Left = 698
    Top = 4
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
    Text = 'Erro na Consulta'
    Left = 731
    Top = 4
  end
end
