object FormProdutos: TFormProdutos
  Left = -1139
  Top = 16
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Produtos '
  ClientHeight = 555
  ClientWidth = 916
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = _c
  PixelsPerInch = 96
  TextHeight = 13
  object Pc: TRzPageControl
    Left = 0
    Top = 257
    Width = 916
    Height = 255
    Hint = ''
    ActivePage = Produtos
    Align = alClient
    Color = 16119543
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FlatColor = 10263441
    HotTrackStyle = htsTabBar
    ParentColor = False
    ParentFont = False
    TabColors.HighlightBar = 1350640
    TabIndex = 0
    TabOrder = 0
    TabStyle = tsBackSlant
    OnChange = PcChange
    FixedDimension = 19
    object Produtos: TRzTabSheet
      Color = 16119543
      ImageIndex = 19
      Caption = 'C'#225'lculo/Pre'#231'os'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnldados: TPanel
        Left = 0
        Top = 0
        Width = 912
        Height = 232
        Align = alClient
        BevelOuter = bvNone
        Color = 15263976
        TabOrder = 0
        object lUltimaLeitura: TLabel
          Left = 625
          Top = 6
          Width = 139
          Height = 19
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 11
          Font.Name = 'MS Sans Serif'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 912
          Height = 105
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object Bevel2: TBevel
            Left = 744
            Top = 4
            Width = 154
            Height = 65
          end
          object RxLabel7: TRxLabel
            Left = 4
            Top = 5
            Width = 88
            Height = 13
            Caption = 'Pre'#231'o Custo (R$):'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object RxLabel8: TRxLabel
            Left = 4
            Top = 27
            Width = 79
            Height = 13
            Caption = 'Mar. Lucro (%):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel9: TRxLabel
            Left = 273
            Top = 78
            Width = 78
            Height = 13
            Caption = 'Descontos (%):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel10: TRxLabel
            Left = 4
            Top = 78
            Width = 73
            Height = 13
            Caption = 'Comiss'#227'o (%):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel13: TRxLabel
            Left = 273
            Top = 53
            Width = 71
            Height = 13
            Caption = 'Sit. Tribut'#225'ria:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel16: TRxLabel
            Left = 525
            Top = 5
            Width = 65
            Height = 13
            Caption = 'Custo M'#233'dio:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel18: TRxLabel
            Left = 273
            Top = 5
            Width = 81
            Height = 13
            Caption = 'Pre'#231'o de Venda:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel19: TRxLabel
            Left = 746
            Top = 18
            Width = 72
            Height = 13
            Caption = 'Estoq. Minimo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel20: TRxLabel
            Left = 746
            Top = 44
            Width = 76
            Height = 13
            Caption = 'Estoq. M'#225'ximo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel11: TRxLabel
            Left = 525
            Top = 27
            Width = 72
            Height = 13
            Caption = 'Desc. M'#225'ximo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel50: TRxLabel
            Left = 4
            Top = 53
            Width = 88
            Height = 13
            Caption = 'Mar. Lucro (%) 2:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel51: TRxLabel
            Left = 273
            Top = 27
            Width = 90
            Height = 13
            Caption = 'Pre'#231'o de Venda 2:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel59: TRxLabel
            Left = 525
            Top = 77
            Width = 60
            Height = 13
            Caption = 'Localiza'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel111: TRxLabel
            Left = 525
            Top = 50
            Width = 18
            Height = 13
            Caption = 'pE:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit22: TDBEdit
            Left = 612
            Top = 74
            Width = 285
            Height = 21
            Hint = 'Referencia do Produto'
            CharCase = ecUpperCase
            Color = clBtnFace
            DataField = 'LOCALIZACAO'
            DataSource = DM.DTS_PRODUTOS
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            OnEnter = db_nomeEnter
            OnExit = DBEdit22Exit
          end
          object suiDBEdit8: TDBComboBox
            Left = 383
            Top = 50
            Width = 110
            Height = 21
            Hint = 'Situa'#231#227'o Tribut'#225'ria  do cupom fiscal(Al'#237'quota do ICMS, ISS) '
            DataField = 'SIT_TRIBUTARIA'
            DataSource = DM.DTS_PRODUTOS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'II'
              'FF'
              'NN'
              '0,01'
              '2,00'
              '2,50'
              '3,00'
              '3,50'
              '4,00'
              '4,5'
              '5,00'
              '7,00'
              '12,00'
              '17,00'
              '25,00')
            ParentColor = True
            ParentFont = False
            TabOrder = 6
            OnEnter = suiDBEdit8Enter
            OnExit = suiDBEdit8Exit
          end
          object suiDBEdit3: TRxDBCalcEdit
            Left = 111
            Top = 26
            Width = 110
            Height = 21
            DataField = 'MARGEM_LUCRO'
            DataSource = DM.DTS_PRODUTOS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GlyphKind = gkCustom
            Glyph.Data = {
              46010000424D460100000000000076000000280000001A0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
              88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
              88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
              88888888888888000000}
            ButtonWidth = 0
            NumGlyphs = 2
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            OnEnter = suiDBEdit3Enter
            OnExit = suiDBEdit3Exit
          end
          object DBEdit14: TRxDBCalcEdit
            Left = 111
            Top = 50
            Width = 110
            Height = 21
            DataField = 'MARGEM_LUCRO2'
            DataSource = DM.DTS_PRODUTOS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GlyphKind = gkCustom
            Glyph.Data = {
              46010000424D460100000000000076000000280000001A0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
              88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
              88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
              88888888888888000000}
            ButtonWidth = 0
            NumGlyphs = 2
            ParentColor = True
            ParentFont = False
            TabOrder = 2
            OnEnter = DBEdit14Enter
            OnExit = DBEdit14Exit
          end
          object suiDBEdit5: TRxDBCalcEdit
            Left = 111
            Top = 75
            Width = 110
            Height = 21
            DataField = 'COMISSAO'
            DataSource = DM.DTS_PRODUTOS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GlyphKind = gkCustom
            Glyph.Data = {
              46010000424D460100000000000076000000280000001A0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
              88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
              88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
              88888888888888000000}
            ButtonWidth = 0
            NumGlyphs = 2
            ParentColor = True
            ParentFont = False
            TabOrder = 3
            OnEnter = suiDBEdit5Enter
            OnExit = suiDBEdit5Exit
          end
          object suiDBEdit4: TRxDBCalcEdit
            Left = 382
            Top = 75
            Width = 110
            Height = 21
            DataField = 'DESCONTOS'
            DataSource = DM.DTS_PRODUTOS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GlyphKind = gkCustom
            Glyph.Data = {
              46010000424D460100000000000076000000280000001A0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
              88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
              88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
              88888888888888000000}
            ButtonWidth = 0
            NumGlyphs = 2
            ParentColor = True
            ParentFont = False
            TabOrder = 7
            OnEnter = suiDBEdit4Enter
            OnExit = suiDBEdit4Exit
          end
          object suiDBEdit12: TRxDBCalcEdit
            Left = 612
            Top = 2
            Width = 110
            Height = 21
            DataField = 'CUSTO_MEDIO'
            DataSource = DM.DTS_PRODUTOS
            DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GlyphKind = gkCustom
            Glyph.Data = {
              46010000424D460100000000000076000000280000001A0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
              88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
              88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
              88888888888888000000}
            ButtonWidth = 0
            NumGlyphs = 2
            ParentColor = True
            ParentFont = False
            TabOrder = 8
            OnEnter = suiDBEdit12Enter
            OnExit = suiDBEdit12Exit
          end
          object suiDBEdit14: TRxDBCalcEdit
            Left = 383
            Top = 2
            Width = 110
            Height = 21
            HelpType = htKeyword
            DataField = 'PRECO_VENDA'
            DataSource = DM.DTS_PRODUTOS
            DecimalPlaces = 3
            DisplayFormat = 'R$ ,0.000;-R$ ,0.000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GlyphKind = gkCustom
            Glyph.Data = {
              46010000424D460100000000000076000000280000001A0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
              88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
              88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
              88888888888888000000}
            ButtonWidth = 0
            NumGlyphs = 2
            ParentColor = True
            ParentFont = False
            TabOrder = 4
            OnEnter = suiDBEdit14Enter
            OnExit = suiDBEdit14Exit
          end
          object DBEdit20: TRxDBCalcEdit
            Left = 383
            Top = 26
            Width = 110
            Height = 21
            HelpType = htKeyword
            DataField = 'PRECO_VENDA2'
            DataSource = DM.DTS_PRODUTOS
            DecimalPlaces = 3
            DisplayFormat = 'R$ ,0.000;-R$ ,0.000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GlyphKind = gkCustom
            Glyph.Data = {
              7E050000424D7E0500000000000036000000280000001A0000000D0000000100
              2000000000004805000000000000000000000000000000000000FFC0C000FFC0
              C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
              C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
              C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
              C000FFC0C0008040400080404000804040008040400080404000804040008040
              4000804040008040400080404000FFC0C000FFC0C000FFC0C000FFFFFF008080
              8000808080008080800080808000808080008080800080808000808080008080
              8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
              6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
              C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
              C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF406000FFC0
              0000FFFFFF00FFC00000FFFFFF00FFC00000FFFFFF00FF40600080404000FFC0
              C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF0080808000FFFF
              FF0080808000FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
              0000FF406000FF406000FF406000FF406000FF406000FF406000FF406000FF40
              600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C000FFC0C000FFC0
              C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C00080808000FFC0C000FFC0
              C000FFC0C000FFC00000FF406000FFC00000FFFFFF00FFC00000FFFFFF00FFC0
              0000FFFFFF00FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
              C00080808000FFFFFF0080808000FFFFFF0080808000FFFFFF00FFC0C0008080
              8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
              6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
              C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
              C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF4060004000
              0000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FF40600080404000FFC0
              C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
              0000FF40600040000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FF40
              600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0
              C000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0C000FFC0
              C000FFC0C000FFC00000FF406000400000004000000040000000400000004000
              000040000000FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
              C000808080008080800080808000808080008080800080808000FFC0C0008080
              8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
              6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
              C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
              C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FFC00000FFC0
              0000FFC00000FFC00000FFC00000FFC00000FFC00000FFC0000080404000FFC0
              C000FFC0C000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FFC0C000FFC0C000FFC0
              C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
              C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
              C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
              C000}
            ButtonWidth = 0
            NumGlyphs = 2
            ParentColor = True
            ParentFont = False
            TabOrder = 5
            OnEnter = DBEdit20Enter
            OnExit = DBEdit20Exit
          end
          object suiDBEdit6: TRxDBCalcEdit
            Left = 612
            Top = 26
            Width = 110
            Height = 21
            DataField = 'DESCONTO_MAXIMO'
            DataSource = DM.DTS_PRODUTOS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GlyphKind = gkCustom
            Glyph.Data = {
              46010000424D460100000000000076000000280000001A0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
              88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
              88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
              88888888888888000000}
            ButtonWidth = 0
            NumGlyphs = 2
            ParentColor = True
            ParentFont = False
            TabOrder = 9
            OnEnter = suiDBEdit6Enter
            OnExit = suiDBEdit6Exit
          end
          object suiDBEdit15: TRxDBCalcEdit
            Left = 823
            Top = 15
            Width = 71
            Height = 21
            DataField = 'ESTOQUE_MINIMO'
            DataSource = DM.DTS_PRODUTOS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GlyphKind = gkCustom
            Glyph.Data = {
              46010000424D460100000000000076000000280000001A0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
              88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
              88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
              88888888888888000000}
            ButtonWidth = 0
            NumGlyphs = 2
            ParentColor = True
            ParentFont = False
            TabOrder = 11
            OnEnter = suiDBEdit15Enter
            OnExit = suiDBEdit15Exit
          end
          object suiDBEdit16: TRxDBCalcEdit
            Left = 824
            Top = 42
            Width = 71
            Height = 21
            DataField = 'ESTOQUE_MAXIMO'
            DataSource = DM.DTS_PRODUTOS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GlyphKind = gkCustom
            Glyph.Data = {
              46010000424D460100000000000076000000280000001A0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
              88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
              88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
              88888888888888000000}
            ButtonWidth = 0
            NumGlyphs = 2
            ParentColor = True
            ParentFont = False
            TabOrder = 12
            OnEnter = suiDBEdit16Enter
            OnExit = suiDBEdit16Exit
          end
          object suiDBEdit1: TRxDBCalcEdit
            Left = 111
            Top = 2
            Width = 110
            Height = 21
            DataField = 'PRECO_CUSTO'
            DataSource = DM.DTS_PRODUTOS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GlyphKind = gkCustom
            Glyph.Data = {
              46010000424D460100000000000076000000280000001A0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
              88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
              88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
              88888888888888000000}
            ButtonWidth = 0
            NumGlyphs = 2
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            OnEnter = suiDBEdit1Enter
            OnExit = suiDBEdit1Exit
          end
          object RxDBCalcEdit5: TRxDBCalcEdit
            Left = 612
            Top = 49
            Width = 110
            Height = 21
            DataField = 'DESCONTO_MAXIMO'
            DataSource = DM.DTS_PRODUTOS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            GlyphKind = gkCustom
            Glyph.Data = {
              46010000424D460100000000000076000000280000001A0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
              88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
              88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
              88888888888888000000}
            ButtonWidth = 0
            NumGlyphs = 2
            ParentColor = True
            ParentFont = False
            TabOrder = 13
            OnEnter = suiDBEdit6Enter
            OnExit = suiDBEdit6Exit
          end
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 105
          Width = 912
          Height = 61
          Align = alTop
          Caption = 'Produtos em Promo'#231#227'o:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object RxLabel52: TRxLabel
            Left = 111
            Top = 13
            Width = 57
            Height = 13
            Caption = 'Data Inicio:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel54: TRxLabel
            Left = 251
            Top = 15
            Width = 54
            Height = 13
            Caption = 'Data Final:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel55: TRxLabel
            Left = 384
            Top = 17
            Width = 90
            Height = 13
            Caption = 'Valor Promocional:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object suiDBCheckBox1: TDBCheckBox
            Left = 6
            Top = 22
            Width = 68
            Height = 19
            Hint = 'Marque se utiliza Exporta'#231#227'o para Balan'#231'as'
            Caption = 'Promo'#231#227'o'
            DataField = 'FLAG_PROMOCAO'
            DataSource = DM.DTS_PRODUTOS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBDateEdit2: TDBDateEdit
            Left = 248
            Top = 30
            Width = 121
            Height = 21
            DataField = 'DT_FIM_PROMO'
            DataSource = DM.DTS_PRODUTOS
            GlyphKind = gkCustom
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
              8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
              F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
              D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
              BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
              F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
              8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
              CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
              F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
              95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
              E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
              F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
              A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
              FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
              FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
              B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
              FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
              FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
              F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
              F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
              7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            NumGlyphs = 1
            ParentColor = True
            TabOrder = 1
          end
          object DBDateEdit3: TDBDateEdit
            Left = 111
            Top = 30
            Width = 121
            Height = 21
            DataField = 'DT_INICIO_PROMO'
            DataSource = DM.DTS_PRODUTOS
            GlyphKind = gkCustom
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
              8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
              F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
              D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
              BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
              F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
              8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
              CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
              F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
              95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
              E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
              F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
              A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
              FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
              FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
              B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
              FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
              FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
              F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
              F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
              7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            NumGlyphs = 1
            ParentColor = True
            TabOrder = 2
          end
          object RxDBCalcEdit1: TRxDBCalcEdit
            Left = 383
            Top = 30
            Width = 178
            Height = 21
            DataField = 'PRECO_PROMOCAO'
            DataSource = DM.DTS_PRODUTOS
            DecimalPlaces = 3
            DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            ButtonWidth = 0
            NumGlyphs = 2
            ParentColor = True
            TabOrder = 3
            OnExit = RxDBCalcEdit1Exit
          end
          object suiDBCheckBox2: TDBCheckBox
            Left = 601
            Top = 29
            Width = 82
            Height = 19
            Hint = 'Marque se utiliza Exporta'#231#227'o para Balan'#231'as'
            Caption = 'Cesta B'#225'sica'
            DataField = 'CESTA'
            DataSource = DM.DTS_PRODUTOS
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object pcomposicao: TPanel
          Left = 0
          Top = 166
          Width = 912
          Height = 66
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object Label34: TLabel
            Left = 6
            Top = 12
            Width = 52
            Height = 12
            Caption = 'RECEITA:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel79: TRxLabel
            Left = 6
            Top = 37
            Width = 101
            Height = 13
            Caption = 'Qtde Caixa Entrada:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel80: TRxLabel
            Left = 223
            Top = 38
            Width = 72
            Height = 13
            Caption = 'Unid. Entrada:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel78: TRxLabel
            Left = 384
            Top = 38
            Width = 64
            Height = 13
            Caption = 'Propriedade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit61: TDBEdit
            Left = 111
            Top = 8
            Width = 496
            Height = 21
            Color = clBtnFace
            DataField = 'ESP_COD_AUX'
            DataSource = DM.DTS_PRODUTOS
            TabOrder = 0
            OnEnter = DBEdit1Enter
            OnExit = DBEdit61Exit
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 297
            Top = 34
            Width = 70
            Height = 21
            Hint = 'Unidade de Medida'
            Color = 15263976
            DataField = 'UNIDADE_ENT'
            DataSource = DM.DTS_PRODUTOS
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'CODIGO'
            ListField = 'ABREVIATURA'
            ListFieldIndex = 1
            ListSource = DataSource1
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnEnter = suiDBLookupComboBox1Enter
            OnExit = suiDBLookupComboBox1Exit
          end
          object RxDBCalcEdit6: TRxDBCalcEdit
            Left = 111
            Top = 34
            Width = 109
            Height = 21
            DataField = 'MULTIP_FRACAO'
            DataSource = DM.DTS_PRODUTOS
            GlyphKind = gkCustom
            Glyph.Data = {
              46010000424D460100000000000076000000280000001A0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
              88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
              88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
              88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
              88888888888888000000}
            ButtonWidth = 0
            NumGlyphs = 2
            ParentColor = True
            TabOrder = 2
            OnEnter = REdit17Enter
            OnExit = DBEdit17Exit
          end
          object RzDBComboBox1: TRzDBComboBox
            Left = 462
            Top = 34
            Width = 433
            Height = 21
            DataField = 'PRODUTO_PROPRIEDADE'
            DataSource = DM.DTS_PRODUTOS
            TabOrder = 3
            Items.Strings = (
              '0-Estoque de propriedade do informante e em seu poder'
              '1-Estoque de propriedade do informante e em posse de terceiros'
              '2-Estoque de propriedade de terceiros e em posse do informante')
            Values.Strings = (
              '0'
              '1 '
              '2 '
              '')
          end
        end
      end
    end
    object Complem: TRzTabSheet
      Color = 16119543
      ImageIndex = 0
      Caption = 'FDicionais'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 912
        Height = 380
        Align = alTop
        TabOrder = 0
        object RxLabel37: TRxLabel
          Left = 388
          Top = 83
          Width = 69
          Height = 13
          Caption = 'Peso Liquido.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel36: TRxLabel
          Left = 217
          Top = 83
          Width = 58
          Height = 13
          Caption = 'Peso Bruto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel28: TRxLabel
          Left = 4
          Top = 85
          Width = 81
          Height = 13
          Caption = 'Garantia/Meses:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel38: TRxLabel
          Left = 4
          Top = 57
          Width = 78
          Height = 13
          Caption = 'Cod. Auxiliares:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel26: TRxLabel
          Left = 4
          Top = 44
          Width = 70
          Height = 13
          Caption = 'Especifica'#231#227'o,'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel27: TRxLabel
          Left = 8
          Top = 11
          Width = 51
          Height = 13
          Caption = 'Aplica'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel53: TRxLabel
          Left = 573
          Top = 84
          Width = 70
          Height = 13
          Caption = 'Validade/Dias:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Panel2: TPanel
          Left = 728
          Top = 3
          Width = 173
          Height = 160
          Align = alCustom
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = 15263976
          TabOrder = 4
          object Bevel1: TBevel
            Left = 3
            Top = 4
            Width = 167
            Height = 128
          end
          object DBImage1: TDBImage
            Left = 5
            Top = 6
            Width = 163
            Height = 125
            Hint = 'Foto do Produto'
            Color = 15263976
            DataField = 'FOTO'
            DataSource = DM.DTS_PRODUTOS
            Stretch = True
            TabOrder = 2
            TabStop = False
            OnEnter = DBImage1Enter
            OnExit = DBImage1Exit
          end
          object suiButton1: TAdvGlowButton
            Left = 4
            Top = 135
            Width = 73
            Height = 23
            Hint = 'Inserir Foto'
            Caption = 'Inserir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Spacing = 4
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = suiButton1Click
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
            Enabled = False
          end
          object suiButton2: TAdvGlowButton
            Left = 91
            Top = 134
            Width = 73
            Height = 23
            Hint = 'Apagar Foto'
            Caption = 'Apagar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Spacing = 4
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
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
            Enabled = False
          end
        end
        object DBEdit21: TDBEdit
          Left = 648
          Top = 79
          Width = 73
          Height = 22
          Hint = 'Lote do Medicamento'
          CharCase = ecUpperCase
          DataField = 'VALIDADE_PRODUTO'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnEnter = db_nomeEnter
          OnExit = DBEdit21Exit
        end
        object suiDBEdit11: TDBEdit
          Left = 107
          Top = 79
          Width = 86
          Height = 22
          Hint = 'Lote do Medicamento'
          CharCase = ecUpperCase
          DataField = 'GARANTIA'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnEnter = db_nomeEnter
          OnExit = suiDBEdit11Exit
        end
        object DBEdit5: TRxDBCalcEdit
          Left = 464
          Top = 80
          Width = 100
          Height = 21
          DataField = 'PESOLIQUIDO'
          DataSource = DM.DTS_PRODUTOS
          GlyphKind = gkCustom
          Glyph.Data = {
            46010000424D460100000000000076000000280000001A0000000D0000000100
            040000000000D000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
            88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
            88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
            88888888888888000000}
          ButtonWidth = 0
          NumGlyphs = 2
          ParentColor = True
          TabOrder = 2
          OnEnter = DBEdit5Enter
          OnExit = DBEdit5Exit
        end
        object DBEdit4: TRxDBCalcEdit
          Left = 288
          Top = 79
          Width = 93
          Height = 21
          DataField = 'PESOBRUTO'
          DataSource = DM.DTS_PRODUTOS
          GlyphKind = gkCustom
          Glyph.Data = {
            46010000424D460100000000000076000000280000001A0000000D0000000100
            040000000000D000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
            88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
            88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
            88888888888888000000}
          ButtonWidth = 0
          NumGlyphs = 2
          ParentColor = True
          TabOrder = 1
          OnEnter = DBEdit5Enter
          OnExit = DBEdit4Exit
        end
        object DBMemo1: TDBEdit
          Left = 107
          Top = 45
          Width = 614
          Height = 21
          Color = clBtnFace
          DataField = 'ESP_COD_AUX'
          DataSource = DM.DTS_PRODUTOS
          TabOrder = 5
        end
        object DBMemo2: TDBEdit
          Left = 107
          Top = 8
          Width = 614
          Height = 21
          Color = clBtnFace
          DataField = 'APLICACAO'
          DataSource = DM.DTS_PRODUTOS
          MaxLength = 500
          TabOrder = 6
        end
        object DBCheckBox5: TDBCheckBox
          Left = 425
          Top = 120
          Width = 184
          Height = 19
          Hint = 'Marque se utiliza Exporta'#231#227'o para Balan'#231'as'
          Caption = 'Visualiza no Android/IOS'
          DataField = 'CESTA'
          DataSource = DM.DTS_PRODUTOS
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object GroupBox11: TGroupBox
          Left = 6
          Top = 115
          Width = 225
          Height = 70
          Caption = 'Alertas Modulos Copa/Cozinha '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          object DBCheckBox4: TDBCheckBox
            Left = 8
            Top = 41
            Width = 208
            Height = 19
            Hint = 'Marque se utilizar copa ou cozinha'
            Caption = 'Alertar no M'#243'dulo Cozinha'
            DataField = 'ALERTA_COPA'
            DataSource = DM.DTS_PRODUTOS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 7
            Top = 17
            Width = 202
            Height = 19
            Hint = 'Marque se utilizar copa ou cozinha'
            Caption = 'Alertar no M'#243'dulo Copa'
            DataField = 'ALERTA_COZINHA'
            DataSource = DM.DTS_PRODUTOS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GroupBox12: TGroupBox
          Left = 238
          Top = 116
          Width = 171
          Height = 69
          Caption = ' Tempo de Preparo : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          object RzDBDateTimeEdit1: TRzDBDateTimeEdit
            Left = 8
            Top = 24
            Width = 121
            Height = 21
            DataSource = DM.DTS_PRODUTOS
            DataField = 'TEMPO_PREPARO'
            TabOrder = 0
            EditType = etTime
          end
        end
      end
    end
    object Agregados: TRzTabSheet
      Color = 16119543
      ImageIndex = 153
      TabVisible = False
      Caption = 'Agregados'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 912
        Height = 33
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 80
          Top = 3
          Width = 376
          Height = 27
          Caption = 'Cadastro de Agregados ao produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -24
          Font.Name = 'BatmanForeverAlternate'
          Font.Style = []
          ParentFont = False
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 33
        Width = 912
        Height = 199
        Align = alClient
        Color = 15198183
        TabOrder = 1
        object suiDBGrid2: TDBAdvGrid
          Left = 1
          Top = 1
          Width = 910
          Height = 163
          Cursor = crDefault
          Align = alClient
          BorderStyle = bsNone
          Color = 14609391
          ColCount = 3
          DrawingStyle = gdsClassic
          FixedColor = 15717318
          RowCount = 2
          FixedRows = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          HoverRowCells = [hcNormal, hcSelected]
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ControlLook.FixedGradientHoverFrom = clGray
          ControlLook.FixedGradientHoverTo = clWhite
          ControlLook.FixedGradientDownFrom = clGray
          ControlLook.FixedGradientDownTo = clSilver
          ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
          ControlLook.DropDownHeader.Font.Color = clWindowText
          ControlLook.DropDownHeader.Font.Height = -11
          ControlLook.DropDownHeader.Font.Name = 'Tahoma'
          ControlLook.DropDownHeader.Font.Style = []
          ControlLook.DropDownHeader.Visible = True
          ControlLook.DropDownHeader.Buttons = <>
          ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
          ControlLook.DropDownFooter.Font.Color = clWindowText
          ControlLook.DropDownFooter.Font.Height = -11
          ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
          ControlLook.DropDownFooter.Font.Style = []
          ControlLook.DropDownFooter.Visible = True
          ControlLook.DropDownFooter.Buttons = <>
          Filter = <>
          FilterDropDown.Font.Charset = DEFAULT_CHARSET
          FilterDropDown.Font.Color = clWindowText
          FilterDropDown.Font.Height = -11
          FilterDropDown.Font.Name = 'MS Sans Serif'
          FilterDropDown.Font.Style = []
          FilterDropDownClear = '(All)'
          FilterEdit.TypeNames.Strings = (
            'Starts with'
            'Ends with'
            'Contains'
            'Not contains'
            'Equal'
            'Not equal'
            'Larger than'
            'Smaller than'
            'Clear')
          FixedColWidth = 30
          FixedRowHeight = 22
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
          HoverButtons.Buttons = <>
          HoverButtons.Position = hbLeftFromColumnLeft
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'MS Sans Serif'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'MS Sans Serif'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'MS Sans Serif'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'MS Sans Serif'
          PrintSettings.FooterFont.Style = []
          PrintSettings.PageNumSep = '/'
          ScrollWidth = 16
          SearchFooter.FindNextCaption = 'Find &next'
          SearchFooter.FindPrevCaption = 'Find &previous'
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'MS Sans Serif'
          SearchFooter.Font.Style = []
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurence'
          SearchFooter.HintFindPrev = 'Find previous occurence'
          SearchFooter.HintHighlight = 'Highlight occurences'
          SearchFooter.MatchCaseCaption = 'Match case'
          SortSettings.DefaultFormat = ssAutomatic
          Version = '2.4.0.2'
          AutoCreateColumns = True
          AutoRemoveColumns = True
          Columns = <
            item
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = 14609391
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlack
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clBlack
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 30
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = 14609391
              FieldName = 'CODIGO_AGREG'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'C'#243'digo'
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlack
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clBlack
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 151
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = 14609391
              FieldName = 'AGREGADOS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Descri'#231#227'o de Agregados'
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlack
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clBlack
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 718
            end>
          DataSource = DM.DTS_AGREGADOS
          InvalidPicture.Data = {
            055449636F6E0000010001002020040000000000E80200001600000028000000
            2000000040000000010004000000000000020000000000000000000000000000
            0000000000000000000080000080000000808000800000008000800080800000
            80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
            FFFFFF000000000000777777777777000000000000000000777788FFFF887777
            000000000000007778F8887117788F877700000000000778F87111111111178F
            877000000000778871111111111999178877000000077F811111111111199999
            18F7700000778811111111111119999991887700007881111111111111119199
            99188700077F711111811111111198719997F7700788111118FF111111118FF7
            1991887077F71111888FF1111118FFFF19997F77778111118888FF1111888FF8
            911918777881111118888FF1188888811111188778811111118888FF88888811
            111117877F7111111118888888888111111117F77F7999111111888888881111
            111111F77F7999991111788888F71111111111F77F7999999917888888FF7111
            111117F778879999917FFF88888FF111111117877887999997FFFFF88888FF11
            11111887778799997FFFFFF798888FF11111187777F87997FFFFFF71178F88FF
            71117F7707887997FFFFF7999978F88871118870077F87997FFF799999978F87
            1117F77000788879978799999999787111188700007788879999999999999999
            1188770000077F88799999999999999778F77000000077888879999999999778
            8877000000000778F88877799777788F877000000000007778F8888878888F87
            7700000000000000777788FFFF88777700000000000000000077777777777700
            00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
            C000000380000001800000010000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000080000001
            80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
            FFC003FF}
          ShowUnicode = False
          ColWidths = (
            30
            151
            718)
        end
        object Panel9: TPanel
          Left = 1
          Top = 164
          Width = 910
          Height = 34
          Align = alBottom
          TabOrder = 1
          object BtnRelacionar: TAdvGlowButton
            Left = 377
            Top = 3
            Width = 121
            Height = 24
            Hint = 'Clique para Relacionar os Agregados do Produto..'
            Caption = 'Agregar Produto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000000467414D410000AFC837058AE90000001974455874536F6674776172
              650041646F626520496D616765526561647971C9653C0000012D4944415478DA
              62FCFFFF3F032500208098182804000144B101000144B1010001C472EAD4298A
              02012080584084B1B131599ADFBC79C3001040702F9C3D7B962C43000288E230
              0008208A0D000820166215EE3EBB9161DF85CD0C1FBFBE67F8FDE737838B911F
              83B34E00034000C10DC01790DB4EAE6238FF6C3783BDB529838C902AC3FEAB1B
              18365D9ECAF0E8F93D068000629197970787263EB0FEE86286004F7786BF4C7F
              19F4255D19F65C5BCD60A16BC5B06EF34A0680006200E50542D8A7DAF0FFB62B
              73FE23834D97A6FE37CF96FC0F10404405E2DB8FAF7E5C7D768CA163772298DF
              B12B91E1EEAB4B20E60F800022CA807FFFFFF59EB8748C818D818561F3E5690C
              6C8C2C0C472E1C04494D0508204662B3B3458E540790CA02625E20FE0CC4D34E
              4C7956011060001F5A84A9D97C28CD0000000049454E44AE426082}
            TabOrder = 0
            OnClick = BtnRelacionarClick
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
      end
    end
    object Similares: TRzTabSheet
      Color = 16119543
      ImageIndex = 286
      Caption = 'Similares'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object suiDBGrid1: TDBAdvGrid
        Left = 0
        Top = 33
        Width = 912
        Height = 199
        Cursor = crDefault
        Hint = 'Mostra os Produtos Similares'
        Align = alClient
        BorderStyle = bsNone
        Color = 14609391
        ColCount = 4
        DrawingStyle = gdsClassic
        FixedColor = 15717318
        RowCount = 2
        FixedRows = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ScrollBars = ssBoth
        ShowHint = True
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'MS Sans Serif'
        FilterDropDown.Font.Style = []
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Larger than'
          'Smaller than'
          'Clear')
        FixedColWidth = 54
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'MS Sans Serif'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        ScrollWidth = 16
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'MS Sans Serif'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurence'
        SearchFooter.HintFindPrev = 'Find previous occurence'
        SearchFooter.HintHighlight = 'Highlight occurences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SortSettings.DefaultFormat = ssAutomatic
        Version = '2.4.0.2'
        AutoCreateColumns = True
        AutoRemoveColumns = True
        Columns = <
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = 14609391
            FieldName = 'CODIGO_SEQ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clBlack
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 54
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = 14609391
            FieldName = 'CODIGO_PROD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'C'#243'd Prod'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clBlack
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 94
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = 14609391
            FieldName = 'CODIGO_SIMILAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Cod. Similar'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clBlack
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 107
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = 14609391
            FieldName = 'DESC_SIMILAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Descri'#231#227'o do Produto Similar / Compat'#237'vel'
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clBlack
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 604
          end>
        DataSource = DM.DTS_SIMILARES
        InvalidPicture.Data = {
          055449636F6E0000010001002020040000000000E80200001600000028000000
          2000000040000000010004000000000000020000000000000000000000000000
          0000000000000000000080000080000000808000800000008000800080800000
          80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
          FFFFFF000000000000777777777777000000000000000000777788FFFF887777
          000000000000007778F8887117788F877700000000000778F87111111111178F
          877000000000778871111111111999178877000000077F811111111111199999
          18F7700000778811111111111119999991887700007881111111111111119199
          99188700077F711111811111111198719997F7700788111118FF111111118FF7
          1991887077F71111888FF1111118FFFF19997F77778111118888FF1111888FF8
          911918777881111118888FF1188888811111188778811111118888FF88888811
          111117877F7111111118888888888111111117F77F7999111111888888881111
          111111F77F7999991111788888F71111111111F77F7999999917888888FF7111
          111117F778879999917FFF88888FF111111117877887999997FFFFF88888FF11
          11111887778799997FFFFFF798888FF11111187777F87997FFFFFF71178F88FF
          71117F7707887997FFFFF7999978F88871118870077F87997FFF799999978F87
          1117F77000788879978799999999787111188700007788879999999999999999
          1188770000077F88799999999999999778F77000000077888879999999999778
          8877000000000778F88877799777788F877000000000007778F8888878888F87
          7700000000000000777788FFFF88777700000000000000000077777777777700
          00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
          C000000380000001800000010000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000080000001
          80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
          FFC003FF}
        ShowUnicode = False
        ColWidths = (
          54
          94
          107
          604)
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 912
        Height = 33
        Align = alTop
        Color = 15198183
        TabOrder = 1
        object Label2: TLabel
          Left = 136
          Top = 3
          Width = 419
          Height = 27
          Caption = 'Lista de produtos similares/compativeis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -24
          Font.Name = 'BatmanForeverAlternate'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object TabSheet1: TRzTabSheet
      Color = 16119543
      Caption = 'Farm'#225'cias'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 912
        Height = 232
        Align = alClient
        Caption = 'Dados Para Farmacias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object RxLabel43: TRxLabel
          Left = 8
          Top = 40
          Width = 61
          Height = 13
          Caption = 'Laborat'#243'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel44: TRxLabel
          Left = 8
          Top = 18
          Width = 73
          Height = 13
          Caption = 'Principio Ativo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel5: TRxLabel
          Left = 8
          Top = 115
          Width = 72
          Height = 13
          Caption = 'Data Validade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel45: TRxLabel
          Left = 8
          Top = 67
          Width = 86
          Height = 13
          Caption = 'Med. Controlado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel46: TRxLabel
          Left = 9
          Top = 91
          Width = 75
          Height = 13
          Caption = 'Med. Gen'#233'rico:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel47: TRxLabel
          Left = 200
          Top = 67
          Width = 92
          Height = 13
          Caption = 'Qtde Caixa/Apres:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel48: TRxLabel
          Left = 200
          Top = 91
          Width = 86
          Height = 13
          Caption = 'Qtde Fracionada:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel49: TRxLabel
          Left = 612
          Top = 91
          Width = 27
          Height = 13
          Caption = 'Lote:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel60: TRxLabel
          Left = 405
          Top = 91
          Width = 84
          Height = 13
          Caption = 'Data Fabrica'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel61: TRxLabel
          Left = 202
          Top = 115
          Width = 39
          Height = 13
          Caption = 'Fra'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel62: TRxLabel
          Left = 402
          Top = 67
          Width = 46
          Height = 13
          Caption = 'Cod. MS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel63: TRxLabel
          Left = 10
          Top = 137
          Width = 84
          Height = 13
          Caption = 'Lista ABC Farma:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit13: TDBEdit
          Left = 200
          Top = 39
          Width = 697
          Height = 22
          Hint = 'Descri'#231#227'o do Laborat'#243'rio'
          CharCase = ecUpperCase
          DataField = 'LABORATORIO'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 70
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnEnter = db_nomeEnter
          OnExit = db_nomeExit
        end
        object DBEdit3: TDBEdit
          Left = 108
          Top = 14
          Width = 790
          Height = 22
          Hint = 'Principio Ativo  - Produtos de Farmacias'
          CharCase = ecUpperCase
          DataField = 'PRINCIPIO_ATIVO'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 70
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnEnter = db_nomeEnter
          OnExit = db_nomeExit
        end
        object DBEdit19: TDBEdit
          Left = 648
          Top = 88
          Width = 249
          Height = 22
          Hint = 'Lote do Medicamento'
          CharCase = ecUpperCase
          DataField = 'LOTE_MED'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnEnter = db_nomeEnter
          OnExit = DBEdit19Exit
        end
        object DBDateEdit1: TDBDateEdit
          Left = 108
          Top = 113
          Width = 87
          Height = 21
          DataField = 'VALIDADE'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GlyphKind = gkCustom
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
            8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
            F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
            D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
            BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
            F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
            8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
            CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
            F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
            95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
            E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
            F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
            A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
            FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
            FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
            B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
            FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
            FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
            F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
            F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
            7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          NumGlyphs = 1
          ParentColor = True
          ParentFont = False
          TabOrder = 5
        end
        object DBDateEdit4: TDBDateEdit
          Left = 509
          Top = 89
          Width = 100
          Height = 21
          DataField = 'DATA_FABRICACAO'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GlyphKind = gkCustom
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
            8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
            F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
            D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
            BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
            F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
            8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
            CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
            F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
            95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
            E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
            F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
            A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
            FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
            FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
            B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
            FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
            FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
            F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
            F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
            7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          NumGlyphs = 1
          ParentColor = True
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit24: TDBEdit
          Left = 480
          Top = 64
          Width = 417
          Height = 22
          Hint = 'Lote do Medicamento'
          CharCase = ecUpperCase
          DataField = 'COD_MS'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnEnter = db_nomeEnter
          OnExit = db_nomeExit
        end
        object DBEdit15: TDBEdit
          Left = 108
          Top = 62
          Width = 87
          Height = 22
          Hint = 'Lote do Medicamento'
          CharCase = ecUpperCase
          DataField = 'MED_CONTROLADO'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnEnter = db_nomeEnter
          OnExit = DBEdit15Exit
        end
        object DBEdit16: TDBEdit
          Left = 108
          Top = 88
          Width = 87
          Height = 22
          Hint = 'Lote do Medicamento'
          CharCase = ecUpperCase
          DataField = 'MED_GENERICO'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnEnter = db_nomeEnter
          OnExit = DBEdit19Exit
        end
        object DBEdit12: TDBEdit
          Left = 108
          Top = 38
          Width = 87
          Height = 22
          DataField = 'COD_LABORATORIO'
          DataSource = DM.DTS_PRODUTOS
          ParentColor = True
          TabOrder = 1
          OnEnter = DBEdit12Enter
          OnExit = DBEdit12Exit
        end
        object DBEdit17: TRxDBCalcEdit
          Left = 306
          Top = 62
          Width = 95
          Height = 22
          DataField = 'QTD_CAIXA'
          DataSource = DM.DTS_PRODUTOS
          GlyphKind = gkCustom
          Glyph.Data = {
            46010000424D460100000000000076000000280000001A0000000D0000000100
            040000000000D000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
            88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
            88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
            88888888888888000000}
          ButtonWidth = 0
          NumGlyphs = 2
          ParentColor = True
          TabOrder = 6
          OnEnter = REdit17Enter
          OnExit = DBEdit17Exit
        end
        object DBEdit18: TRxDBCalcEdit
          Left = 306
          Top = 86
          Width = 95
          Height = 22
          DataField = 'QTD_FRACIONADA'
          DataSource = DM.DTS_PRODUTOS
          GlyphKind = gkCustom
          Glyph.Data = {
            46010000424D460100000000000076000000280000001A0000000D0000000100
            040000000000D000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
            88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
            88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
            88888888888888000000}
          ButtonWidth = 0
          NumGlyphs = 2
          ParentColor = True
          TabOrder = 7
          OnEnter = REdit17Enter
          OnExit = DBEdit18Exit
        end
        object DBEdit23: TRxDBCalcEdit
          Left = 306
          Top = 110
          Width = 95
          Height = 22
          DataField = 'FRACAO'
          DataSource = DM.DTS_PRODUTOS
          Enabled = False
          GlyphKind = gkCustom
          Glyph.Data = {
            46010000424D460100000000000076000000280000001A0000000D0000000100
            040000000000D000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
            88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
            88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
            88888888888888000000}
          ButtonWidth = 0
          NumGlyphs = 2
          ParentColor = True
          TabOrder = 8
          OnEnter = REdit17Enter
          OnExit = DBEdit23Exit
        end
        object EvDBComboBox1: TRxDBComboBox
          Left = 108
          Top = 134
          Width = 293
          Height = 22
          Color = clBtnFace
          DataField = 'LISTA_ABC'
          DataSource = DM.DTS_PRODUTOS
          Items.Strings = (
            '+  Positiva'
            '-   Negativa'
            'N  Neutra'
            'O Correlato')
          TabOrder = 12
          OnEnter = RxDBComboBox1Enter
          OnExit = RxDBComboBox1Exit
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Color = 16119543
      Caption = 'Bebidas'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 912
        Height = 232
        Align = alClient
        TabOrder = 0
        object RxLabel14: TRxLabel
          Left = 8
          Top = 20
          Width = 87
          Height = 13
          Caption = 'Qtde na Caixa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel15: TRxLabel
          Left = 8
          Top = 42
          Width = 112
          Height = 13
          Caption = 'Unidade Tributaria:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel17: TRxLabel
          Left = 9
          Top = 64
          Width = 125
          Height = 13
          Caption = 'Qtde Embalagem/ML:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 240
          Top = 16
          Width = 207
          Height = 13
          Caption = 'Obs: Quantidade no fardo ou caixa -- Ex. 12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 240
          Top = 64
          Width = 304
          Height = 13
          Caption = 'Obs: Quantidade em ML da unidade dentro da caixa -- Ex: 0,350'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 240
          Top = 40
          Width = 214
          Height = 13
          Caption = 'Obs: Unidade Tributaria geralmente Litros  LT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RxDBCalcEdit2: TRxDBCalcEdit
          Left = 138
          Top = 14
          Width = 95
          Height = 21
          DataField = 'QTD_CAIXA'
          DataSource = DM.DTS_PRODUTOS
          GlyphKind = gkCustom
          Glyph.Data = {
            46010000424D460100000000000076000000280000001A0000000D0000000100
            040000000000D000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
            88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
            88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
            88888888888888000000}
          ButtonWidth = 0
          NumGlyphs = 2
          ParentColor = True
          TabOrder = 0
          OnEnter = REdit17Enter
          OnExit = DBEdit17Exit
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 139
          Top = 37
          Width = 94
          Height = 21
          Hint = 'Unidade de Medida'
          Color = 15263976
          DataField = 'UND_TRIB'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'ABREVIATURA'
          ListField = 'ABREVIATURA'
          ListFieldIndex = 1
          ListSource = DM.Dts_unidade
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnEnter = suiDBLookupComboBox1Enter
          OnExit = suiDBLookupComboBox1Exit
        end
        object EvDBNumEdit1: TRxDBCalcEdit
          Left = 139
          Top = 61
          Width = 94
          Height = 21
          HelpType = htKeyword
          DataField = 'ML_QUANT_BEB'
          DataSource = DM.DTS_PRODUTOS
          DecimalPlaces = 3
          DisplayFormat = ',0.###'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GlyphKind = gkCustom
          Glyph.Data = {
            46010000424D460100000000000076000000280000001A0000000D0000000100
            040000000000D000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
            88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
            88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
            88888888888888000000}
          ButtonWidth = 0
          NumGlyphs = 2
          ParentColor = True
          ParentFont = False
          TabOrder = 2
          OnEnter = DBEdit20Enter
        end
      end
    end
    object TabSheet4: TRzTabSheet
      Color = 16119543
      Caption = 'Inf. Nutricionais'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnutricional: TPanel
        Left = 0
        Top = 0
        Width = 908
        Height = 200
        Align = alCustom
        BevelOuter = bvNone
        TabOrder = 0
        object Image2: TImage
          Left = 568
          Top = 8
          Width = 185
          Height = 185
          Picture.Data = {
            0A544A504547496D616765C5760000FFD8FFE000104A46494600010101006000
            600000FFDB004300020101020101020202020202020203050303030303060404
            0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
            0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800ED00BF03012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDCD
            BDD4278254549E645114780AE401F22D45FDAB75FF003F371FF7F0D7CB5FF059
            8F8E1F12FF00658FD8EA6F8B3F0CAE6FE6BBF85DACE8FE23F1168367A5C57927
            8B3418E68E3D474F32BC729B28FC994DC3DDA46CD125AB9E14B32FCFFE29FF00
            82BEDC681F17FF006A7F8C767E27B0D7FF0066AFD9DFC1BA4E8DA25BE90B06A3
            A3FC41F14DF85BA12C1AC5BC12343244F35A69F240A678E337493C9E5E31401F
            A4BFDAB75FF3F371FF007F0D1FDAB75FF3F371FF007F0D7E38F8AFFE0AA7FB45
            FC25FF0082327ED0D6DE3FD57FE111FDAFBF673D5343B4D7EF3ECBA65FEEB4D6
            352B29AC6EF6416EDA70F32CEE67B6F2E3F3597ECBE63EC79140FB4BFE0AE7FB
            4D78DFF676F047C10D27C09ADFFC2317FF0017BE32786BE1E6A3AD43676F757D
            A569F7D24CF712DA2DCA4B6E2E0AC01034D0CA81647F9376D6500FAF3FB56EBF
            E7E6E3FEFE1A3FB56EBFE7E6E3FEFE1AFC80FDB2BFE0A39F1DFF00656F841FB7
            DF86B48F8977FADEB5FB3ADD7802E3C1FE2CD5F44D25B588D35D3686F209E382
            D22B19635FDE08CFD943A899F73B90853ADF107EDFDF14FE1FFC4EFDA43C39E1
            9F895E3CF15786FC15FB39EA5F11749D47E24F832D3C31E27D1BC4304B7B1C2D
            6961269BA73DDD818E3569257B3B885658A24332190C52007EA97F6ADD7FCFCD
            C7FDFC347F6ADD7FCFCDC7FDFC35F03FEC09F1C3E29FC6BFD852E7E24E85F103
            E2D7C4FF008AF71F0BEDF56B4F0C78E3C0F69E1BF0C5DF886EB4F17300B2B91A
            569C6EEDCDCC6D1078AFA5844530667F9E296AFF00FC12A7F689F17FC4BF13D8
            687F10BE34F8B7C41E3E9BE1CE8FAF7897E1D78EFE1B8F0AEBBA0EA723BA5DDE
            E9F30B4B0173A679DE65B328B7BA0924509FB52EFD92007DD3FDAB75FF003F37
            1FF7F0D1FDAB75FF003F371FF7F0D7C0FF00B477C4BF8C7F16BFE0B1175F01BC
            13F1975EF853E1B1F01DFC71652E97E1FD1B53D9ADFF006DC9631CD38BEB495E
            5B711BA178639212DE50DB2464B31F34FD987FE0AD7F12FF006BAF891FF04F4D
            614D8784345FDA02D7C7C9E38D06C608AE6D751B8D16D5A38248A59A369E08FE
            D10BCCB1A49902511BBCC1773007EA1FF6ADD7FCFCDC7FDFC347F6ADD7FCFCDC
            7FDFC35F91FF00F04D0FDB6BFE175FFC164BC71F12FC45E19F2BC0DFB52E9779
            A1FC0BF155DEA3F6E9AEF4FF000ACAD0EA1676D018BED1616F78C64D45E29D6D
            D04B005C4F232BD707FB0EFF00C152FE37FC45F821FB2578C751F8AFE3CF14F8
            CFE2CFC508BC29E2FD1FC4FE06B0D13C112E9325C6A90C8D63AB2E976914B7EB
            15B40F1430EA32C925C2BC62094EE80007ED67F6ADD7FCFCDC7FDFC347F6ADD7
            FCFCDC7FDFC35F91FA97FC14D3E37DF7823C4DA4C5E36FB15FEBDFB6E3FC09B1
            D6A1D1EC0DF786FC32D246E23B45781ADDEE1551904D750DC1DB2BE4330464EB
            7C6DFB5EFED3DE0E83F6F6F861F0DB57BFF8B9E3EF80D6BE14BCF026A1AAE8BA
            7B6BAE9ABE9E93EA00C3670DADADD496D1C73CD6D18B62EF261196E7291100FD
            43FED5BAFF009F9B8FFBF868FED5BAFF009F9B8FFBF86BE61FF827B7C66FF859
            7E21F8A1A47FC2EDD7BE2BFF00C231AA58C7FD93E2EF02FF00C225E2FF0007F9
            D651CBE4DF43F66B2F3ADE7FF5D6F2FD820E0CC9E6DC6CCC7F16FC7EFF008383
            7FE1817FE0A9BFB54FC38F8A9A87F6A7833C2DE17D3355F871A7791E47FC4D97
            48B5B87D27CDB6B3965FF4E96ECB7DA6E5CC76FF0067C018930003F5C3FB56EB
            FE7E6E3FEFE1A3FB56EBFE7E6E3FEFE1AFC44F899FB71FC67FDBBFFE080BF063
            E1DD85E5FF008F3F695FDAD6EB5DD1AD1ACEEADBC3B25CE99A4EA7793EA32974
            486CC47F62B582D1E06784CC978E7F79B6446F78D7FF00E0AD69FB3CFECD3F03
            7F6AED28D80FD933C4DE0D87C23A9FC32D0A0D3EC752F086BC92BAC7369A6E63
            B66D46381EDA7D3DED6268152283ED71C72C6AE6300FD43FED5BAFF9F9B8FF00
            BF868FED5BAFF9F9B8FF00BF86BF32FE147ED59FB45F87BF6C7FD8F74AF1DFC4
            1D06FF0041FDA6354F1E78AEF3C3BA2C1A66A363A2E891E8D6D7BA2E911EA904
            2BF6DFB2EF321BC84A09DA665DD3468923FC1FFF001153F8DFFE1D09FD9DFF00
            095FFC657FFC251FD95FDB1FD996FF00F209F37ED9FDADE47D83FB3FEE7FC4BB
            ECD9F33FE5E339E2803FA24FED5BAFF9F9B8FF00BF868FED5BAFF9F9B8FF00BF
            86BF32FF00695FDAE3E31F8BBE3C7EDE967E1DF8A5AF7C3CD2BF651F01E93AD7
            85B4FD0747D1AE21D5EEEE341BDD56497506D42CAEA593F7B14718581E051120
            18DE5A4343E2EFEDC9F1CBC67E18F849E39D6FC5FE2DF821F077C5FF00B3EC7E
            3CBFF1C7813E1DFF00C25D6B61E2E992D67920D4207B4D424B7D32DAD6469D77
            7D9BCC06606ED8A7EEC03F467E31EA13CFE10B5579E6753ADE9390CE483FF132
            B6AE8ABCE6EFC43FF0977C05F08EADFDBBA0F8A7FB527F0FDDFF006D6871F97A
            5EAFE65E5A3FDAAD57CE9B6DBCB9DF18F3A5C232FEF1FEF1F46A0083C77E15D2
            FC75A06A1A26B7A6D86B1A2EB3606C6FEC2FADD2E2D6FADE5842490CB1B82AF1
            BA332B2B0218120820D7C95E01FF008218FC26F87DFB17F81BE04E9D278D1FC0
            1E12F18DBF8DB5189DACCBF8F2786E5EE16D75C55B510DFDA31302346D18252C
            ED46E1E529AFB1352FF8F85FFAE51FFE80B5F39C7AFD96A7FF000505F13F81BC
            4DE1AF0BEADA77893C3EBAEF87AEDF4F59EF61974D874B83538EE5E43B444575
            5D24DBAC6A4965BF3215C441803CE7E3D7FC1017E09FC6BB5F1E69FA558789BE
            16786FE24785F4FF000C6B9E1DF00C161A1E8D77F61D59354B7D45AD56D191EF
            D6443009E40D8825911554B6EAEF3E2B7FC130DFE3F78234ED27C7FF00167E31
            78C6FF00C33E28D27C67E15D6AEEDF41B4BEF096ADA74923C5736CB69A5436F3
            6F595D1E3BC86E632B8DAA8DF3573DF0A3F689F864FF00B34FC3FF0088DF103C
            1DA368DA67C4EB5B8F126977BA6F816F2F34DD17439A5FB4584BABDD4304D6FA
            6C91E9D3DA35D4D733476CB2A5D32486188B2D0F867FB59FC1F83C2B7B278FFC
            3FE17D3355B3F1478A34DB93A47836EAFAC743D2F4DF11EA9A55AEA1AA4F0C33
            45A6DBBC5A7BB35D5E49040CD6F76EACA904823007FC43FF008220F80BE30FC2
            0F8E3E1AF1878A7E29F8975AFDA1EEB45B8F18F8B2E26D3EDF58B84D20DB9D3E
            0863B7B28AC618E3F2304ADAEF71349B9D8EC29DE7C7DFF825EF83BF68BF8EDE
            35F885ADDEF8D6D75AF1DFC25BEF8377F0D8CD025AC3A3DDDC497124F12BC0EC
            2EC3C8C15D99A3000CC44F35CF7C72F8CDF0EB4AFD8AFE3AFC4DF87BE12F0BEA
            F7FF000874BF13C69FDADE139AD6C67D5B4682E3CE847991426E6DD2E60689A5
            B7731B3472A2CBB91B6E0FC1EF8C7F0BFC31F043C49F12FE20FC54FD97FC7BF0
            F74CD52C345FF8493C0FE144B0D2F44BBB8B88ADFCABD9FF00B4B514F9A4BCB3
            CB130AC08E6490EC6DC801E9DFB38FEC097FFB3B7C31B5F02FFC2D6F8C5E2DF0
            3699E174F0969BA2EA8DA5587F655A471470452417BA669F677E9711C31EC497
            ED2586F2FF00EB023AD0FD9A7FE099FA57ECF3F1D8FC4DD4BC69F14FE28F8FA1
            F06DAF802CB5BF195DDA4F7563A34170D73F67CDA5ADB09E49262AF25C5D09A7
            6318FDE0DCFBF36E3F695FD9EE0F0C59EA31F87E5BCBBBCBA9ECFF00B06CBE1A
            6A977E26B478121798DCE8D158B6A36D1A25CD9B9926B7440B7D66DBB6DD4064
            1FF69BFD9BE5835C96C2D346D7E3D06EB4EB12FA1782AEF585D5AE2FF4F5D4ED
            A1D34DADAC9FDA721B075BB75B1F3CC36E7CD942460B5003FF0068EFF825BD97
            ED01FB4EDD7C5DD3FE247C62F869E33BFF0001BFC38B9B9F085C69D6FE6692F7
            725DB847BAB1B8960B832C8089E078E44F2D0A14209343C79FF0470F865E2183
            E10C1E16FF0084D7E16DA7C0DD07C45A078422F06DE258369E9ADE9E6C6EAEBC
            D9229263768099E3B8DE1CDC132C8656273CF78BFF006BEF81FA8F87FC2BA878
            56C3C2F1586A3AA3B7886F756F879ABFFC527A5DA5EDD5A5ECFA8C0964A74CCD
            CD8DD5AACFA9BD9C1179377705A65B292090F007ED67F07FC4F7DA85CEBDE1FF
            000BF83E1D0F54F18E89368D73E0DBABBBBD6E5D13C4167A3C773A7DCAC28971
            E6C9776B1ADAC114F2CF73A8C76F0BB4B6B32380697857FE0881F04FE1B691F0
            73FE10DF0BDC780FC49F06754D3354B3F15F86B4DB0D2FC43E25FB1DB3DB3DBE
            A97915A87B9B7BC8E47FB520D9E71639201228F04FFC1163E1D780FF00659F81
            9F08ACF54F8892786FF67EF1E5B7C43F0EDCCD736C6FAF35082EEF2ED22BB716
            C11EDCC97B282B1A46FB550070412DB771FB4AFECF707862CF518FC3F2DE5DDE
            5D4F67FD8365F0D354BBF135A3C090BCC6E7468AC5B51B68D12E6CDCC935BA20
            5BEB36DDB6EA0327AD7857E1D7C37F1D78634DD6F44D0BC11ACE8BACDAC57D61
            7F63656B716B7D6F2A078E68A4452AF1BA32B2B29218104120D007856A5FF045
            8F8757DE08F1369316A9F112CAFF005EF8C8FF001DAC75A86E6D8DF786FC4CD2
            46E24B457B66B77B75546410DD437036CAF92CC11937BC23FF0004ACD0BC33A4
            7C68B89FC71F18B50F1CFC77FB0FFC249E3A87598F45F10C3F60B65B7B0FB23E
            996F6B6F6FF67552C36C1FBD323ACFE7467CBAF66FF8521E0BFF00A143C2FF00
            F82A83FF0089AC9D6BE167863FE13BF0D69BFF0008E683FD9DF60D5AE7ECBFD9
            F1791E6F99A62F99B36EDDFB78DD8CE38A00E73F65BFD82B4AFD97BE247C49F1
            C2EB7E35F1BF8FBE2CDD585C789BC47E22FB22DD5EA585A8B5B38161B2B6B6B5
            8E38A3DF829007632B1777C205E4B56FF8243FC2AF167ED4DE30F8BBE22D2BC4
            DE22F1278B7C51E18F19ADB5DDFC90D8E8BAB787AD26B4D3AE6D92DD627388E7
            90BC73BCD1BB107680315E91F137E085937822F93C1BE10F8729E249BCB86CE6
            D6B4A56B1B4DF22ABDC491C4A1E6F2A32F20803C5E7346B119ADC399A3F96BC1
            DF107C5DF13BE2F8F849A468BF032CFC536175E21793C7B278026BCF0FF882DF
            471A0A5C4769A62EA11C9148979AF4965249FDA1388E7D0EE95937CC63B500E8
            7E02FF00C1017E09FC14B5F01E9FAAD8789BE29F86FE1BF85F50F0C687E1DF1F
            4161AE68D69F6ED59F54B8D456D5AD1512FDA471019E30B98228D1958AEEADEF
            D973FE08B1F0EBF64DFDA764F89BA16A9F11356FB07F6D7FC22FE14D62E6DAE3
            C31F0FFF00B5AED6E6F3FB12CD2D93FB3F76D68BF74E331492236FDD9AF22F83
            FF00B5F4FF001CFC03A37C54B0F875F0AB43F00AEBDE06F0C6A5E16B8D00DEEB
            17571E26B3F0F5C2DD43AAAC91430C76A7C4902985AC25330D3E4FDEC5F695FB
            3F79FB1B7C529FE33789FE174BE2CF06FC2A9745F8EBF0E6E7E25F87ED749F0C
            1B2BAF09DBC2FA39FECEBB9E59E65D46464D6E11F698E2B300D9B9F2089C2C20
            1D0FC1CFF822C7C3AF819F1BFC05E36D0B54F8891FFC2B0F1478AFC4FE17D01E
            E6D8687A1FFC2456F1C379A75B5B25B2F91610EC692082264D924D2B3349BB15
            C1FF00C437FF0000FF00E193FF00E155791F113FE457FF008433FE12AFED55FE
            DCFEC9FF00848BFE122FB36DF27EC5FF001FFCF99F65F33CBF97777AF48FD9E3
            E367C2FF001F7857C4D278BF48F873A26ABE16D53C5D36A45349482C747D1347
            F11EA5A5417B7B3B868AD7CC8AC59B74D22099ADEF5E25D96F308B7BC3FF001A
            FE07F89FC11E21D72CFC1BAA37FC22DF666D4B4797E16EAF0788628AE2431C13
            A690F6035096DE475955678EDDA226DEE70DFB89B600627C78FF008247787BE3
            47C48F8BBE24D37C6FF14FE1F49F1EF41B5F0EFC41B2F0EFF65CB6BE25B7B7B5
            9ECA266FB7D85D496F27D96E1A126D5E1042AB6DF332E6C7C7DFF825FF00867C
            7FF0A34BF07E99F103E2DFC2AF0358F819BE184DA2681AE452693A968B32476D
            15BCB6FA9C17710B9541E4A5DC4B1DDB2CC51A671B02C9F027E21780FE3F7ED1
            BE2DD0342F0B7822F7C21A3F837C3FAFD95C8D045BEA09797BA8F882CAF6D6EA
            39555A19207D2238DADE48A39A1985C24A032EC4F58F18FC3AF0F7847C32D73A
            4E85A369772FA9693134B6965140EC8756B3254955071900E3D850052BBF865A
            1FC14F80BE11F06F866C7FB33C37E129FC3FA2E9367E74937D92D2DAF2D21862
            DF2333BED8D146E766638C924E4D7A3572FF0017BFE454B4FF00B0DE93FF00A7
            1B6AEA2802C6A5FF001F0BFF005CA3FF00D016BC1FF69FFD8A2C7F6C8F0DEBFE
            1FD7A0BBB4B35F1359DFC3706DE665BAB19747B7D3B54B65D8F1E45DE9975AA5
            879A18980DD99A3C4D0C657DE352FF008F85FF00AE51FF00E80B5F36E9D7FA50
            FDBFBC53E02D77C27E11BED2BC4DA19F11787EE574C496EE3B8B18F4C8F565BA
            77F9446E757D2DE011A92CFF00DA0D232FEEB78073BFF051CFF8256DD7EDEDFD
            ABFF00132F0541FDB5E179BC31FF00159780CF8B3FE119DFF68FF898E87FE996
            BFD9B7EFF69FDF4FFBDF37EC5A7FCA9F66FDE50D6BFE0939AEB68BF11347D27C
            796F67A2FC67B5D6F43F1D25DF85A4BABA9B47D435DD7F5548B4C956EE35B3BB
            893C477F09B89E3BB8DCC76D27D9D02491CB73E147ED13F0C9FF00669F87FF00
            11BE20783B46D1B4CF89D6B71E24D2EF74DF02DE5E69BA2E8734BF68B09757BA
            8609ADF4D923D3A7B46BA9AE668ED9654BA6490C31165A1F0CFF006B3F83F078
            56F64F1FF87FC2FA66AB67E28F1469B72748F06DD5F58E87A5E9BE23D534AB5D
            43549E18668B4DB778B4F766BABC920819ADEEDD59520904601E9DACFEC2375A
            BFEC43F15FE0D7F6EDC47FF0B3FF00E134FF0089C7F6513FD9BFF0915FEA579F
            EA3CCFDEFD9FFB4367FAC4F37C9CFEEF7614F107ECB9F163E317C3E7D0BE23F8
            E7C15AA7D97C51E19F1269D3F86FC0979A3F91FD91AD5AEA92C32ACFAA5DF9BE
            7FD923895D4C7E56E662B2F0A38FF8E5F19BE1D695FB15FC75F89BF0F7C25E17
            D5EFFE10E97E278D3FB5BC2735AD8CFAB68D05C79D08F32284DCDBA5CC0D134B
            6EE63668E545977236DC1F83DF18FE17F863E087893E25FC41F8A9FB2FF8F7E1
            EE99AA5868BFF092781FC28961A5E8977717115BF957B3FF00696A29F3497967
            962615811CC921D8DB9001FF00B427FC120ED7E36FC68F10F8FA5FF8577E21D6
            B58D7AEF53B5D37E207C3B1E2CD0B4FB7BAD23C3FA7CEA2D0DDDBB35D87F0F5B
            C91DC895424775731185CB2CAB43E23FEC1DE2AFD993C096FAB7C31D37C4DE35
            F15691E3CD3BC51E1BB5D3FC39A32DBE93E478360F0B38BCB37D4348B69ADCDA
            413B85B39AD3CB9EEADF6426181D1FB9B8FDA57F67B83C3167A8C7E1F96F2EEF
            2EA7B3FEC1B2F869AA5DF89AD1E0485E6373A34562DA8DB46897366E649ADD10
            2DF59B6EDB7501907FDA6FF66F960D725B0B4D1B5F8F41BAD3AC4BE85E0ABBD6
            1756B8BFD3D753B6874D36B6B27F69C86C1D6EDD6C7CF30DB9F36509182D401E
            15F0F3FE08B5AD7C4DF0AE9DE26F891A6FC2C9FC73E28FED5FF84963F127C33B
            3F134DA3DB5EF88F5AD6E1FEC813DD4D6FA65FAAEB7324DE69D52DBCD82D80FB
            447033DCFAD78CFF00E094975E23F125B5F59F8C2E2CE1F0FEA9AFEBFE1D8A6D
            08CED6BA86A7E29D0FC588D76C2741736F0EADA44AA628D60792D2ED2212C72C
            26EA6CDF17FED7DF03F51F0FF85750F0AD8785E2B0D475476F10DEEADF0F357F
            F8A4F4BB4BDBAB4BD9F51812C94E999B9B1BAB559F537B3822F26EEE0B4CB652
            4121E00FDACFE0FF0089EFB50B9D7BC3FE17F07C3A1EA9E31D126D1AE7C1B757
            777ADCBA27882CF478EE74FB958512E3CD92EED635B58229E59EE7518EDE1769
            6D664700EFF59FD917E306A1E27F0E78EE3F89DE1997E29E856BAAE91F6BBDF0
            0CD2F8662D33507D3649ADEDB4E8B518AEA39049A4D9C8259B50B83BA6BC1B76
            490476BEB5F00BE035AFECE9F027C15F0F7445D5EEB45F0268363E1DB09AF807
            BA9ADED2DE3B78DA56444532148D4B1555049385038AF13B8FDA57F67B83C316
            7A8C7E1F96F2EEF2EA7B3FEC1B2F869AA5DF89AD1E0485E6373A34562DA8DB46
            897366E649ADD102DF59B6EDB750193D6BC2BF0EBE1BF8EBC31A6EB7A2685E08
            D6745D66D62BEB0BFB1B2B5B8B5BEB79503C73452229578DD195959490C08209
            06803BFF00ECABAFF9F6B8FF00BF66B0B57F0FDFCBF12BC3D3AD8DE3410699AA
            47248216291B3CBA7945271805823900F5D8D8E86B33FE148782FF00E850F0BF
            FE0AA0FF00E26B0F57F837E108BE25787A05F0AF86D609F4CD5249231A642124
            64974F08C46DC12A1DC027A6F6C753401A1FB4D7C1FF0018FC62F821ADF86BC1
            DE28B8F01EBDAAF911C7AD7F67CF77E4402E237B8876C33DB4EBE7DBACB079B0
            5C433C5E779914B1C888C3C974EFD8ABE2C683FF000856B9A4F8D3E16689E33F
            87FA5EA1E15D1469DF0C2F2DBC316BA05E7F663B5A2E98BAC0952E239749B6F2
            A64BB589226923FB3125644F66FF008521E0BFFA143C2FFF0082A83FF89AF92F
            F6EAF8F765FB357C4EBFD2749F0FFC1BD1BFB1BC2F0F88B45D17C45A02CDAA7C
            60D41E5BD46F0EE84CB7107977E9F64B642C90DFBEFD6ACFFD1C6156E003B0F8
            7BFF0004A4BAF843A468FE0AF0E78C2E17E145B6A9E15D7F51D3752D08DCF886
            EF50F0E5B68F6F60D0EA51CF15BC36EEBA06986689AC657726EF64B179D17D9F
            FDFD963F608D77F67DF13F82E5D5BC536FE23D17E13F8367F87FE05B5B4F0F49
            A75D5AE8F33E9C5CEA73B5CCCB7B77B348B0025822B38C1FB49F248963587C4F
            F690FDB3FC3DF04BF696F89BE1BD2FE1178235EF087C25F84BE25F1BEAB7AF04
            56D75A86BDA545A45E9D1D3311F2635B0D5ACA67B8D932B9D422542AD6D3A31E
            26F883E2EF00FC7FB0F81B7FA2FC0CD4FC7DE26BAD21F4DF185BF8026B5D1F4C
            B7BEB1F13DE3473690DA84935C4883C2D3A0917508413A946DB07D9596E403D3
            B4FF00F82565AE9BF0DFE22F852DFC4BABD868BF19AEBC5FFF0009E4363A6889
            75BB7D7AEB51B88E689599D60D4ECD2F62B75BDDAE27B7B711CD0384B33657FE
            2E7EC37F137F68CF8632E97F113C7BE0AF14DFC1AA5B5FDA68F2FC3973E08BC8
            A18AE63316A5A44BA84B717FB9AE8CC035FA451DC5869B2A448D04BF69E3E1F8
            B564BFB23693E3393C03F0E5FC490FC50B2F86DA995D1156C6EF678E22F0BDE5
            EC316E2F0F9B189AE2289A597C96923467B8085A4EB7E327C42F01E99FB3B787
            7E20780FC2DE08D734CF10F8CBC33A05ADDDD68205ADED9EA5E25B0D267BA832
            B19963686E6596DEE10B432830CC86685D4B803FFE09FDFF0004DFBAFD872FB5
            CB9FED8D2354FEDCD2E3D3BEC1A1F858E83A5E9BB7C41E23D676DADBFDA27F2A
            DD7FE120FB3C70EE3B12CD4EF6F336A7B97C59B29ADBC121A48658D4EADA40CB
            29033FDAB6954FFE148782FF00E850F0BFFE0AA0FF00E26B23C75F0A7C2FE1DF
            0FC37DA7F86F40B1BDB7D5B49315C5BE9F0C52C44EA76AA76B2A8232A4838EC4
            8EF401AFF17BFE454B4FFB0DE93FFA71B6AEA2B97F8BDFF22A5A7FD86F49FF00
            D38DB57514016352FF008F85FF00AE51FF00E80B5E0FFB4FFEC5163FB64786F5
            FF000FEBD05DDA59AF89ACEFE1B836F332DD58CBA3DBE9DAA5B2EC78F22EF4CB
            FD52C3CD0C4C06ECCD1E268632BEF1A97FC7C2FF00D728FF00F405AF957E3D5F
            EB5E2CFDAD93E1E784ECBE1CD8788BC4B67A8F88A4F1078B7C2F2788A0B7B5D3
            2CFC396E6CD2D62BAB47DF2C9AC2C825371B6316CEBE539983C40157FE0A39FF
            0004ADBAFDBDBFB57FE265E0A83FB6BC2F37863FE2B2F019F167FC233BFED1FF
            00131D0FFD32D7FB36FDFED3FBE9FF007BE6FD8B4FF953ECDFBCA1AD7FC12735
            D6D17E2268FA4F8F2DECF45F8CF6BADE87E3A4BBF0B497575368FA86BBAFEAA9
            16992ADDC6B677712788EFE13713C7771B98EDA4FB3A0492397B9F107897C0DF
            B3AF823C3C7E307857C2F65AADEFDA52FB59F0EF822FEF7C3D6D15BC814DFDE5
            C25B4B16916ED13473B8BD9C456E0CCBF699D2DDEE1BCD3C61FB687C22D0FF00
            68DF0D681A7781A5D77C217B6BE30D3F54B9D23E14EB3AB6A11EB3A16A3A3593
            C70476B66ED25A23DF5EC725CA44F019A04459832B23007AEEB3FB08DD6AFF00
            B10FC57F835FDBB711FF00C2CFFF0084D3FE271FD944FF0066FF00C2457FA95E
            7FA8F33F7BF67FED0D9FEB13CDF273FBBDD853C41FB2E7C58F8C5F0F9F42F88F
            E39F056A9F65F147867C49A74FE1BF025E68FE47F646B56BAA4B0CAB3EA977E6
            F9FF00648E257531F95B998ACBC28CD87E3C7ECF17DE38D2743B283C2FAAFF00
            6D7D896DF58D37C3125F787925BD8E292CA09B5786DDB4F82E2E527B5686096E
            125985EDA6C56FB4C1E6792F8D3F6CEF855A6FC27F86B2F85347F0BF8F7C49E3
            2D53C0F6571AB69BF0CF534F0F2C1AE6A3A5C52C934C237874CB87B1BFFB4C36
            97B7427417169BD6512A09403A1FDA13FE09076BF1B7E347887C7D2FFC2BBF10
            EB5AC6BD77A9DAE9BF103E1D8F16685A7DBDD691E1FD3E751686EEDD9AEC3F87
            FDE48EE44AA123BAB988C2E59655A1F11FF60EF157ECC9E04B7D5BE18E9BE26F
            1AF8AB48F1E69DE28F0DDAE9FE1CD196DF49F23C1B07859C5E59BEA1A45B4D6E
            6D209DC2D9CD69E5CF756FB2130C0E8FDCDAFED2BFB3DDE7C20F06FC404F0FCA
            3C0FE3BB59350D375D7F869AA269F6D6685775EDF4CD62174EB428C255B9BD30
            42D086995CC4ACE307C0FF00B5AFC17D6BC1DA96A1AD7C3E974ED4EC3C65E25F
            08C5A3E91E03D43C43A85F8D175496C65BF820B3B179A6B4205B34971146F6F0
            4D7696CF31986D201E51F0F3FE08B5AD7C4DF0AE9DE26F891A6FC2C9FC73E28F
            ED5FF84963F127C33B3F134DA3DB5EF88F5AD6E1FEC813DD4D6FA65FAAEB7324
            DE69D52DBCD82D80FB447033DCFAD78CFF00E094975E23F125B5F59F8C2E2CE1
            F0FEA9AFEBFE1D8A6D08CED6BA86A7E29D0FC588D76C2741736F0EADA44AA628
            D60792D2ED2212C72C26EA6EE7C2BF153E0078EBE2469BE16D117C11ACEA3ACD
            AC575617563A32DC6957C65B517B1DB45A82446CDEEDEC996F16D166370D6845
            C88CC07CCAF4BFF8521E0BFF00A143C2FF00F82A83FF0089A00F28D67F645F8C
            1A8789FC39E3B8FE2778665F8A7A15AEABA47DAEF7C0334BE198B4CD41F4D926
            B7B6D3A2D462BA8E4126936720966D42E0EE9AF06DD92411DAFAD7C02F80D6BF
            B3A7C09F057C3DD11757BAD17C09A0D8F876C26BE01EEA6B7B4B78EDE3695911
            14C852352C5554124E140E299FF0A43C17FF00428785FF00F05507FF001347FC
            290F05FF00D0A1E17FFC1541FF00C4D00761FD9575FF003ED71FF7ECD616AFE1
            FBF97E25787A75B1BC6820D33548E49042C52367974F28A4E300B047201EBB1B
            1D0D667FC290F05FFD0A1E17FF00C1541FFC4D64EB5F0B3C31FF0009DF86B4DF
            F847341FECEFB06AD73F65FECF8BC8F37CCD317CCD9B76EFDBC6EC671C5007A3
            7F655D7FCFB5C7FDFB35F3C7ED4FFB046BBFB41789FC692E93E29B7F0E68BF16
            3C1B07C3FF001D5ADDF87A4D46EAEB4785F512874C9D6E615B2BBD9ABDF832CF
            15E464FD98F9204522CDEAFF00F0A43C17FF00428785FF00F05507FF001347FC
            290F05FF00D0A1E17FFC1541FF00C4D007CF7F13FF00E08C5E01F88BF13B5AD6
            EDF51F889A0E95E29F0BF8D3C3FACE9369E26D5A7B7967F13CB6F2DEDE5BC371
            7325A5B6196EE436EB6C60927B886664DF6B0917F56FF827C7C45F16FC4887E2
            86B3F107C3337C62D1EEB4D7D1750B2F03DCDBF866DEDECAD75CB48E3B9D35F5
            292E6791A2F11EAA4C897F08DC2CC84021956E3C8BE21FC7BD6BE0EFC45D47C1
            FA9787FF0067DF16F89350FECAB49E0F0DE8123C3F0A750D575CD174BB1B5D5D
            9AE19F50F363D69EEA1263D29EEA2D1AE7647189CB5ADFF0CFC41F1778FBE3FD
            FF00C0DB0D17E06699E3EF0CDD6AEFA978C2E3C0135D68FA9DBD8D8F862F1638
            7485D4239ADE471E29810C8DA84C01D3646D87ED4AB6C01ED9E23FF8273DAF8E
            3F63F8FE136BF796FADDA6A5E32B7F1AF88A4BCD084DA7EB370DE284F11EA368
            2CDDD825A5C4DE7DBA47249318A19503B5C32319286ABFF04F7F18EB9E2EB1B7
            D43E2A789B59F87F67AA6877A344D5AC67BED4218343D49757D3238AF9EE76FD
            A3EDB98AEAEE7B79A7BCB2B7B289D96E6192FEE19F0F7E377C27D73F63BF863F
            173C49E06D1B418FE26E83A56AD65A1E9BE1F7D7F5292E2FAC56F3EC76B6F696
            CD737B247179AEDE4C0488ADE69595238DCAF79F03CFC27FDA2FE1BDB78B3C27
            E19D1AEB45BABABCB106FBC2CFA5DD43716975359DCC32DB5D4114F0C91DC413
            46CB246A4143C6306803D77FB2AEBFE7DAE3FEFD9AE6FE2CD94D6DE090D2432C
            6A756D206594819FED5B4AA7FF000A43C17FF428785FFF0005507FF1359DE31F
            875E1EF08F865AE749D0B46D2EE5F52D262696D2CA281D90EAD664A92AA0E320
            1C7B0A00D1F8BDFF0022A5A7FD86F49FFD38DB57515CBFC5EFF9152D3FEC37A4
            FF00E9C6DABA8A00B1A97FC7C2FF00D728FF00F405AF07F8A7FB3278D7C67F1E
            5FE2178175ED33C29E2DD016EF45B49FC41E199F5CD26FB4DD42CB4392E71043
            7767279C2E349B60928B828A05C2344ECCAD17BC6A5FF1F0BFF5CA3FFD016BE1
            9FDB9FF683B2F845FB5B691E1CD47C69FB3EFC32D3BC5967AB6A571E25F8A3A1
            AEA30492E9F67E198E0B1B72DA8D82ABBAEA5732906473880E107CC680353F6C
            FF00F8246F89BF6CFF00044F67E25F19782BC45AF6B1E17B9F0EDF6A5E30F868
            BAEC3E1F96792EA437DE1D812F2DFF00B26E07DAFCB323BDD4B245A769824924
            92D9E69FADB7FF00827C7C45F873E35F0CF893E1EFC41F0CE93AD68375E3C798
            F88BC0F73AC5ADD5BF89FC4506B8D1AC706A568D1C96CF6D1C2242EE24059B62
            1200E7BE037ED67F07FC4FF0F98F8D3C3FE17B2F12695A5CBAC5CCFA57836EA6
            D2F5BD35B5ABCD1F4BD4AC5D21951FFB664B4F3EC2C639EE2E274B84584DD002
            57BEBFB5DFC0BB8F8BFE14F0FA785346B2D175ED07C4BACEABAB6B1E199F4793
            C22FA28D2E5962D56D6EAD23934E8DED75217027BDFB3A6C16C5778BC809007F
            C3DFF82525D7C21D2347F057873C6170BF0A2DB54F0AEBFA8E9BA96846E7C437
            7A87872DB47B7B0687528E78ADE1B775D034C3344D632BB9377B258BCE8BECF8
            3F0DBFE0927E31F841F0C7C23E03D03E246907C1961AA78235FF001247A8782A
            7B8D5357D43C35168702359DC26A11C5676F711787ECB314B05D3C6F25C3095C
            32247D5789FE38FC2AF14FC27D62FBC1BA1F85F44F125BEA9A36851DBF8E3C05
            A9E8B369D3EAFA8C3A7595DCBA74F690DECD6EF3CAEB110B141712DBCB11BAB7
            0934F06F7C38F8F1FB3C7C5AF89D71E0FF000F41E17D435BB4D5351D0651FF00
            08C4915A26A9612CF1DDE99F6B7B75B737F1ADB4D3FD9049E7B5B27DA5636B72
            B3100F19F8EDFF000440BAF8BFFB317837E1C7FC24BE0AD53FE119F85F65F0CF
            FB47C65F0E8F88FF00B23ECD68F6FF00DAFA1C5F6E83FB2AFE6F3774D26FB8F3
            3EC7A78E3ECB993D6A3FD803C63F0EBC5D6DE23F877E35D2347D7B49D53C5736
            9ADE23F09CFACDA45A7F89352B5D6352B79A282FAD1E5B85D4AD83413AC91A47
            6CFE4BC33483ED2596FF00B4AFECF73F862F35193C3F2D9DDD9DD4167FD837BF
            0D354B4F135DBCE933C26DB4696C5751B98DD2DAF1C490DBBA15B1BC6DDB6D67
            31FAD7857E1D7C37F1D78634DD6F44D0BC11ACE8BACDAC57D617F63656B716B7
            D6F2A078E68A4452AF1BA32B2B29218104120D0079BFC02FF827CEA5FB397C48
            F055C683E32D5E4F07781BC1B63E0EB6D3AE347886ABA8DAD9DAC76D6F6F797B
            16C86E2D2328F771A35A7DAA1BBB9BA315DC76B713593FD0FF00D9575FF3ED71
            FF007ECD71FF00F0A43C17FF00428785FF00F05507FF001347FC290F05FF00D0
            A1E17FFC1541FF00C4D00761FD9575FF003ED71FF7ECD1FD9575FF003ED71FF7
            ECD71FFF000A43C17FF428785FFF0005507FF1347FC290F05FFD0A1E17FF00C1
            541FFC4D00761FD9575FF3ED71FF007ECD616AFE1FBF97E25787A75B1BC6820D
            33548E49042C52367974F28A4E300B047201EBB1B1D0D667FC290F05FF00D0A1
            E17FFC1541FF00C4D64EB5F0B3C31FF09DF86B4DFF00847341FECEFB06AD73F6
            5FECF8BC8F37CCD317CCD9B76EFDBC6EC671C5007A37F655D7FCFB5C7FDFB347
            F655D7FCFB5C7FDFB35C7FFC290F05FF00D0A1E17FFC1541FF00C4D1FF000A43
            C17FF428785FFF0005507FF13401E15F103FE09D3E39F8D5AF5A6AFE38F8956F
            AE6B5E0BB58EDFC117D6DE10FB0C903C5ACE8FACA4FACA2DD18F5091AEB40D33
            CC1669A6A3235E2A2446684DB1A4FF00C13E3E22F84BE244DF14346F883E1987
            E316B175A93EB5A85EF81EE6E3C33716F7B6BA1DA491DB69A9A94773048B1787
            34A2247BF986E3784A11344B6F9BFB76784FC5DF0A74FD3350F86507C0CB7BBD
            7AEACFC3BA2786FC41F0E26D5AF359D62E67650C2E6DF52B631DA450E6E6E0A5
            ACF25BDAD95E5C6D9563F2C707FB27FC686F8E3FB46EABA3F8817E1568BA2DB7
            8CBC55E1BB1D0A4F82DABE9F26AC9A5EA3A8D9C115A788EE2EFF00B36F2ECC36
            62EA486DE077D90DD0F2D0432491807A77C7BFD95FC45F027F65BF825A07C26F
            0F78D7C59E20F81175616FE14DB65A6EA2C120D12F34733EA305D6A1A4C77119
            B3BA98116F750B8B892090234492467BCFF827DFC15F1CFC1EFD97EC34EF1F5A
            5BC7E2FD5F5EF10789F528ACED7C88EDDF56D6EFB54588C6B35C2C72225E2A3C
            69717088EAEA93CEA1667E7BE23FC71F807F0A7E275BF84758D0ED4EAB36A9A7
            68734FA7F80AFB52D2F4DD42FE5822B3B3BCD42DAD24B4B3B895AEAD488AE268
            DC25D5BB901268D9BD6BFE148782FF00E850F0BFFE0AA0FF00E26803B0FECABA
            FF009F6B8FFBF66B9BF8B36535B78243490CB1A9D5B4819652067FB56D2A9FFC
            290F05FF00D0A1E17FFC1541FF00C4D6778C7E1D787BC23E196B9D2742D1B4BB
            97D4B4989A5B4B28A07643AB5992A4AA838C8071EC280347E2F7FC8A969FF61B
            D27FF4E36D5D4572FF0017BFE454B4FF00B0DE93FF00A71B6AEA2802C6A5FF00
            1F0BFF005CA3FF00D016BC96DBF675BED6BF6C75F89AD3DDC10F87F49D53C3F0
            591B162BA826A50786A6370B36E00089B4768F6856DC653F3298C86F5AD4BFE3
            E17FEB947FFA02D7C8DFB5278E27B1FDA3EFBC2FA74BF0ABC31737BA4EADE30D
            53C5FE3BF0F9D6B4FD274DD1EC7C3B14D0B44B7766630C756131B86B90912DAC
            80C6FE6EF8803D07E397EC2375F193E22F8D3C4D1EBB71A5DFF88B4BF07C3A64
            6DA51B8874DD43C35AE5FEB7677130F310DC5BCB73770A4B02985CC504816646
            943C5C1EB5FF0004A4BAF89375E2ED5BC69E30B8BFF127C50D2FC49A078D6E34
            4D08E9B6373A7EB3A4E93A64ABA7412CF70F6771147A0692EB2CF35DA1617B98
            B13C5F65B9E12F8F1F07F46F821E11D7FC4307C39F1CDFF89BED896573F0B7C3
            175E2EB7D7A2B3B8304D7F6D6BA7DBDD5C476E18C22604CB15A4F7296ED73331
            8E49AFBFED37FB37CB06B92D85A68DAFC7A0DD69D625F42F055DEB0BAB5C5FE9
            EBA9DB43A69B5B593FB4E4360EB76EB63E7986DCF9B2848C16A00C4F867FF04A
            75F037C3ED5B4C48FE16785AFF0057F1478535F987C3CF85B6FE13D2E48B41D6
            A0D56349205B89EE26B899A39616964BA68A3468CC76E8C26371BDE24FF826B5
            D789FE18E81E19FF0084DBC4DA27F62F8F3C63E35FED6D0ED4D8EA917FC24117
            8922F2ED66DEDF67B8B5FF0084877C77187CBD929F2D7CCC271FFB347ED67F07
            FE297C07F1F78CBC57E1FF000BE85FF0AEBFE120D7B5A85BC1B75673697E1EB3
            D7B5ED3ECAEA6B69A1338B86B7D0EE0CB06DF39658A40618F722577937C6BF81
            FF00F0846ADE22B3F06EA9ADE95A278A2F7C1D74FA2FC2DD5F559BFB4ACE4962
            BA58E1B6B092596DE39619623751AB5BF9B1B46252E36D00794781BFE08E7AEF
            80F4FF00888FA4EB1F077C2377E39B5D06D574EF067C2393C3BE1F53A5CFA9CC
            973716D0EA86E9AEFCCD4639A1BBB3BDB3B8B79F4DB19164658DE37FB4BC2BE1
            3D4BC3DE18D36C2EEF357D76EEC6D62B79B52BE8224BAD41D102B4F2AC11C708
            91C82CC228D10163B51570A3C4FC2BF153E0078EBE2469BE16D117C11ACEA3AC
            DAC575617563A32DC6957C65B517B1DB45A82446CDEEDEC996F16D166370D684
            5C88CC07CCAE0FE22784FC5DA5FEDF7E0CF02E9107C0CB6F00F8AB41D53C4F25
            BDE7C389AE758B7B7D2EEB44B6B8B5176BA9470992E0EAB23A4DF66C40224568
            A7C96A00FADFFB2AEBFE7DAE3FEFD9A3FB2AEBFE7DAE3FEFD9AF923F683FDAEF
            E05FC14F00FC4BBFB1F0A68DAF6B5F0FB41D6F5482DE4F0CCF61A3F882F34AB3
            B8BAB9D2ED3587B43633DDA7D96E1648609269A136B75BE2CDB4E13BCD47E247
            C17D0FC4FE14D2B52F08CBA449E33B5B4BAD3AEF52F875A85969B19BB731DB5B
            5D5ECB66B6D657724BB625B4BA922B832CB0C7E5F992C6AC01EF7FD9575FF3ED
            71FF007ECD1FD9575FF3ED71FF007ECD7CCDF00BE37FC0BF8BF0782B47B497C1
            1E23F1078A341B1D4E1D46C7C193E99A56A935C69F1DFAC3134E8F1DBDDC966E
            2F574D96E1EF52D184CC8D10329F69FF008521E0BFFA143C2FFF0082A83FF89A
            00EC3FB2AEBFE7DAE3FEFD9AC2D5FC3F7F2FC4AF0F4EB6378D041A66A91C9208
            58A46CF2E9E5149C601608E403D76363A1ACCFF8521E0BFF00A143C2FF00F82A
            83FF0089AC9D6BE167863FE13BF0D69BFF0008E683FD9DF60D5AE7ECBFD9F179
            1E6F99A62F99B36EDDFB78DD8CE38A00F46FECABAFF9F6B8FF00BF668FECABAF
            F9F6B8FF00BF66B8FF00F8521E0BFF00A143C2FF00F82A83FF0089A3FE148782
            FF00E850F0BFFE0AA0FF00E268029F8C3F67DBAF19FED0DE07F1BDD5D5C4961E
            08D2F57B6B7D165B332C2FA85EB59245A92316C47716F6D0DF5B2B042E62D52E
            543A2B3AC9C95E7ECABE39F16FC7FF000D788BC51E37B7D73C21E02D7AF3C4FE
            19D2E3F0C7D9358B7BCB8B1BDB0F2AEEFD27305C5A436FA95DA471A59433612D
            4C93CAD1CCD71F3AFED61F1A1BE187ED89AAF8074B5F855E03F0B68BE0DD1BC4
            971ACEB3F05B57F175AC0F7B7DAC4134B7B7D61776D6BA55A431E9D1399AF0A2
            61E67320489CA9FB27FC686F8E3FB46EABA3F8817E1568BA2DB78CBC55E1BB1D
            0A4F82DABE9F26AC9A5EA3A8D9C115A788EE2EFF00B36F2ECC3662EA486DE077
            D90DD0F2D043249180697ED03FB33FC65F177ED5BAAE81E09F0AEAF67F0E3C65
            F11BC25F103C51ADEB7A4E9D359CD71A3C9A24B28B2BC87595BC8236B6D12DA1
            58A5D1E72D75E6E668E0996583EE1FECABAFF9F6B8FF00BF66BE75F88FF1C7E0
            1FC29F89D6FE11D6343B53AACDAA69DA1CD3E9FE02BED4B4BD3750BF9608ACEC
            EF350B6B492D2CEE256BAB5222B89A3709756EE4049A366F5AFF008521E0BFFA
            143C2FFF0082A83FF89A00EC3FB2AEBFE7DAE3FEFD9AE6FE2CD94D6DE090D243
            2C6A756D206594819FED5B4AA7FF000A43C17FF428785FFF0005507FF1359DE3
            1F875E1EF08F865AE749D0B46D2EE5F52D262696D2CA281D90EAD664A92AA0E3
            201C7B0A00D1F8BDFF0022A5A7FD86F49FFD38DB57515CBFC5EFF9152D3FEC37
            A4FF00E9C6DABA8A00B1A97FC7C2FF00D728FF00F405AF07F8A7FB3278D7C67F
            1E5FE2178175ED33C29E2DD016EF45B49FC41E199F5CD26FB4DD42CB4392E710
            437767279C2E349B60928B828A05C2344ECCAD17BC6A5FF1F0BFF5CA3FFD016B
            E46FDA93C713D8FED1F7DE17D3A5F855E18B9BDD2756F186A9E2FF001DF87CEB
            5A7E93A6E8F63E1D8A685A25BBB331863AB098DC35C84896D640637F377C401A
            9E06FF008274F8E7E0B68BE13BFF00077C4AB7BAF1F785EEBC60ADAEF8B7C21F
            DA76BAA59F88F5D4D6AE84D6765756216ED26B7B4559A29238485B8FF465F363
            1050F86FFF0004A4BAF805E04D334EF00F8C2E2D355F06F8A34CF12784AEFC41
            A11D4EDECFEC7E0DB4F08986FE1867B66BCDF650DC4DBE196D76CF34476B244C
            92DCF097C78F83FA37C10F08EBFE2183E1CF8E6FFC4DF6C4B2B9F85BE18BAF17
            5BEBD159DC1826BFB6B5D3EDEEAE23B70C611302658AD27B94B76B9998C724D7
            DFF69BFD9BE5835C96C2D346D7E3D06EB4EB12FA1782AEF585D5AE2FF4F5D4ED
            A1D34DADAC9FDA721B075BB75B1F3CC36E7CD942460B50079BEB5FF047CF1CEA
            9F05FE227862DBE2EDBE91A9FC65D075BD0FC71AA59F81F72DC25EEAFAFEAF00
            D3A19AF241691ACDE21BC867599AE5E7B758D6192CE61F68AEB7E267FC12B6EB
            C71F0FB49D1FFB4BC15E23FECBF1478B3C43FD97E3DF019F13F862E3FB775A9F
            55F31F4CFB65BE6FECFCDFB3C179E77CB14F7C3CAFF4AFDD66FECD1FB59FC1FF
            008A5F01FC7DE32F15F87FC2FA17FC2BAFF84835ED6A16F06DD59CDA5F87ACF5
            ED7B4FB2BA9ADA684CE2E1ADF43B832C1B7CE5962901863DC895DE4DF1AFE07F
            FC211AB788ACFC1BAA6B7A5689E28BDF075D3E8BF0B757D566FED2B39258AE96
            386DAC24965B78E586588DD46AD6FE6C6D1894B8DB4014FF00658FF8278F89BF
            666F10FC3874F1F5C6ABA3F80BC07A6782E6821F0E2D95DEB4B656515AC71CF3
            2CAC8F60B224B7914324325DDBDCDD5C88EFD6DAE26B493D6BC43FB3EDD6BDFB
            4EF843E23FDAAE22FF008453C2FAE786FF00B3BEC65BED5FDA577A3DC79DE6EE
            1B3CBFEC9DBB361DFF0068CEE5D987E03C2BF153E0078EBE2469BE16D117C11A
            CEA3ACDAC575617563A32DC6957C65B517B1DB45A82446CDEEDEC996F16D1663
            70D6845C88CC07CCAF34BCF88365A8FEDBDA8FC3AB783F67DF0CFF0064EA96B6
            361E0AF11E96B6FE27F1DE9EF616F7973AD699702618B783CFBB8844B6170924
            BA35CA35CC1E63B5A00697C42FF82525D7C5ED2358F05788FC6170DF0A2E754F
            156BFA769BA6E846DBC4369A8788EDB58B7BF69B5292796DE6B745D7F5330C4B
            6313A1169BE597C997ED143E327FC12975DF8DBF1DBC3BE3CD6F5DF877A96B56
            3AF7867C497FAA6A5F0DE4BDD774FB8D22E2C2792CB42BF7D437693A65CBD8B3
            9B564BA2926A17EE6590CF85DBFDA9FF00691F83FF00B31F847E23C973E02B5B
            9F12780FC2FA9F88AD2C750F08DD693A5F88E5B3D365D44D8D9EAD2D9FD8AE2E
            1A08A4631DBC934A890DC398C8B794275BA6FC4EF817A9F86350D5FF00B1F46B
            4B4D275ED1BC2F7D1DF78427B2BAB2D4F564D35EC2D65B79ADD668E4906AFA7E
            E0C8044672B298DA394200627ECB1FF04F1F137ECCDE21F870E9E3EB8D5747F0
            1780F4CF05CD043E1C5B2BBD696CACA2B58E39E659591EC164496F22864864BB
            B7B9BAB911DFADB5C4D6927D2DFD9575FF003ED71FF7ECD7CCD6BFB4AFECF779
            F083C1BF1013C3F28F03F8EED64D434DD75FE1A6A89A7DB59A15DD7B7D335885
            D3AD0A30956E6F4C10B421A657312B38C1F1DFED13F0C97F6A0F861F0DFC25E0
            ED1B5793C4FE32BFF0DEBBA949E05BC3A3C2969A26B17934569AAF90BA7CB771
            5E69F141242934AE852EA368D6489CC401F5BFF655D7FCFB5C7FDFB3585ABF87
            EFE5F895E1E9D6C6F1A0834CD52392410B148D9E5D3CA2938C02C11C807AEC6C
            7435E076FF00B4AFECF73F862F35193C3F2D9DDD9DD4167FD837BF0D354B4F13
            5DBCE933C26DB4696C5751B98DD2DAF1C490DBBA15B1BC6DDB6D6731FA258785
            7C09E3AD53C1173A269BE12D67C29AC68DA96AF612D8DBDBDC69F7C929D2CC77
            511406370F1B2959173B948C120D007AAFF655D7FCFB5C7FDFB347F655D7FCFB
            5C7FDFB35C7FFC290F05FF00D0A1E17FFC1541FF00C4D1FF000A43C17FF42878
            5FFF0005507FF13401C37ED71FB2AF8E7F697F0C6B9E12B1F1BDBE81E01F1D68
            33F863C57A4DDF863FB42E9ECE749629E5D32E92780DA5DC90CF22192E52F610
            62B6658176CC2E0BCFD957C73E2DF8FF00E1AF1178A3C6F6FAE7843C05AF5E78
            9FC33A5C7E18FB26B16F7971637B61E55DDFA4E60B8B486DF52BB48E34B2866C
            25A992795A399AE380FDB6F4CD6BE03782358F1BF853C29F06CF86FC21A58BE7
            D1752F0DC97FACF8E750691921D16C9A39204B1B8B8905BDB5BCBB2F9E69EFD5
            45B030AADC9AA699AD780BF6A6F07683AE7853E0DEA7E1BF889AA6A76363A068
            DE1B90EB3E1ED3ECED2E2E06B5757CF26CB8B76922B3B79625B281209F5AB58B
            ED3318D1AEC0386FDA07F667F8CBE2EFDAB755D03C13E15D5ECFE1C78CBE2378
            4BE2078A35BD6F49D3A6B39AE3479344965165790EB2B79046D6DA25B42B14BA
            3CE5AEBCDCCD1C132CB07DC3FD9575FF003ED71FF7ECD7CEBF11FE38FC03F853
            F13ADFC23AC6876A7559B54D3B439A7D3FC057DA9697A6EA17F2C1159D9DE6A1
            6D6925A59DC4AD756A44571346E12EADDC809346CDEB5FF0A43C17FF00428785
            FF00F05507FF0013401D87F655D7FCFB5C7FDFB35CDFC59B29ADBC121A48658D
            4EADA40CB29033FDAB6954FF00E148782FFE850F0BFF00E0AA0FFE26B3BC63F0
            EBC3DE11F0CB5CE93A168DA5DCBEA5A4C4D2DA594503B21D5ACC9525541C6403
            8F61401A3F17BFE454B4FF00B0DE93FF00A71B6AEA2B97F8BDFF0022A5A7FD86
            F49FFD38DB57514016352FF8F85FFAE51FFE80B5E0FF0014FF00664F1AF8CFE3
            CBFC42F02EBDA67853C5BA02DDE8B693F883C333EB9A4DF69BA85968725CE208
            6EECE4F385C6936C1251705140B84689D995A2F78D4BFE3E17FEB947FF00A02D
            7C8DFB5278E27B1FDA3EFBC2FA74BF0ABC31737BA4EADE30D53C5FE3BF0F9D6B
            4FD274DD1EC7C3B14D0B44B7766630C756131B86B90912DAC80C6FE6EF880353
            C0DFF04E9F1CFC16D17C277FE0EF8956F75E3EF0BDD78C15B5DF16F843FB4ED7
            54B3F11EBA9AD5D09ACECAEAC42DDA4D6F68AB345247090B71FE8CBE6C620A1F
            0DFF00E094975F00BC09A669DE01F185C5A6ABE0DF14699E24F095DF883423A9
            DBD9FD8FC1B69E1130DFC30CF6CD79BECA1B89B7C32DAED9E688ED6489925B9E
            12F8F1F07F46F821E11D7FC4307C39F1CDFF0089BED896573F0B7C3175E2EB7D
            7A2B3B8304D7F6D6BA7DBDD5C476E18C22604CB15A4F7296ED733318E49AFBFE
            D37FB37CB06B92D85A68DAFC7A0DD69D625F42F055DEB0BAB5C5FE9EBA9DB43A
            69B5B593FB4E4360EB76EB63E7986DCF9B2848C16A00F37D6BFE08F9E39D53E0
            BFC44F0C5B7C5DB7D2353F8CBA0EB7A1F8E354B3F03EE5B84BDD5F5FD5E01A74
            335E482D2359BC43790CEB335CBCF6EB1AC3259CC3ED15D6FC4CFF008256DD78
            E3E1F693A3FF0069782BC47FD97E28F167887FB2FC7BE033E27F0C5C7F6EEB53
            EABE63E99F6CB7CDFD9F9BF6782F3CEF9629EF8795FE95FBACDFD9A3F6B3F83F
            F14BE03F8FBC65E2BF0FF85F42FF008575FF000906BDAD42DE0DBAB39B4BF0F5
            9EBDAF69F657535B4D099C5C35BE877065836F9CB2C52030C7B912BBC9BE35FC
            0FFF00842356F1159F83754D6F4AD13C517BE0EBA7D17E16EAFAACDFDA56724B
            15D2C70DB58492CB6F1CB0CB11BA8D5ADFCD8DA312971B68029FECB1FF0004F1
            F137ECCDE21F870E9E3EB8D5747F01780F4CF05CD043E1C5B2BBD696CACA2B58
            E39E659591EC164496F22864864BBB7B9BAB911DFADB5C4D69275BF1ABF655F1
            CFC6AF1F59DBDF78DEDD7E1926BDA3789E7D064F0C6ED620BCD2AF2D6FADA2B4
            D452748E3B47BAB1B79248E7B4B89984B74A93C6B2402DB37C2BF153E0078EBE
            2469BE16D117C11ACEA3ACDAC575617563A32DC6957C65B517B1DB45A82446CD
            EEDEC996F16D166370D6845C88CC07CCAF34F16AEB43F6BDF175869D75FB3EE8
            7F067E1AE9767ACF8BF50D6BC01235C695E6289A4D3FFB497538ED96E16D219E
            EE6926B78FEC705E698C61BA4B867400C4F8CDFF000448B5F8E9F1A354D6F5BD
            67C33FD8BAD5D788A6BFD561F030FF0085837B6FACE91AA699258C9E217BA657
            B4B64D5185B42D624450D858C2778877B779E34FF8274F8E7C71E279EEA5F895
            6FA7699E21F19785BE22F8A6C6C7C2186D675CD15F46568E2965BA90DB699343
            A35B95B701EE62B82243793421ED64DBD6BE35FC0FF0CF87FC13AAEA9E0DD534
            9B0F883AA47A2E932DFF00C2DD5ED7C9BB96F62B1862BD125829D3BCDB99E18E
            26BD10ACBBC32165CB550F875FB50FECC9F1635ED1AC740BBF045FC7E24B5BBB
            CD1F523A0343A3EB096DACC7A1CA2D7509205B49E4FED29A081638E56790DCDB
            BA2B473C4EE01E51F1DBFE088175F17FF662F06FC38FF8497C15AA7FC233F0BE
            CBE19FF68F8CBE1D1F11FF00647D9AD1EDFF00B5F438BEDD07F655FCDE6EE9A4
            DF71E67D8F4F1C7D9732779E30FF008262F8C7C55E21B0D22DFE275C787FE1BE
            95E28F13F8BEC20D1FC3D3DA78BEC750D7ACB5C86E5E2D645E1823F26E35EBB9
            A02B601E310DBA3348C8F2C9EAFF0003CFC27FDA2FE1BDB78B3C27E19D1AEB45
            BABABCB106FBC2CFA5DD43716975359DCC32DB5D4114F0C91DC41346CB246A41
            43C6306BADFF008521E0BFFA143C2FFF0082A83FF89A00F93BC0DFF0473D77C0
            7A7FC447D2758F83BE11BBF1CDAE836ABA77833E11C9E1DF0FA9D2E7D4E64B9B
            8B68754374D77E66A31CD0DDD9DED9DC5BCFA6D8C8B232C6F1BFD6BA6781F57D
            0FC47E0DB7B99F5BD7E4D2F42BFB3BAD5AF6DA359EF65DDA6812CDE4451C2B2C
            BE5C8E4471C6990FB11546047FF0A43C17FF00428785FF00F05507FF0013593A
            D7C2CF0C7FC277E1AD37FE11CD07FB3BEC1AB5CFD97FB3E2F23CDF334C5F3366
            DDBBF6F1BB19C71401E8DFD9575FF3ED71FF007ECD1FD9575FF3ED71FF007ECD
            7E7EFEC5FF00B63D97ED3DF033F671D6B57F85DF0E7C3FE2DF88FE285F0DF8DB
            4B874C5B8874CF33C23A8788ED66B49380BF69B68F4AB908CD379315F3C0EC66
            8DD937BE0AFC718747F89DF10ECBE33E87F06FC33A578577CDA65869BE02D7AD
            354D5F7CB676DF67B33A85A42BAAFD9AF64368B3E98971FDA0FA969ACB0D8BC9
            15BDD007B67C7CFD973E2C7C40FDA1B43F1BF847C73E0AD2AC3C39A5FD9B4BD1
            7C53E04BCD7E1D2B5076B84B9D4ADDADF54B102E26B6963B6DD2A4AF144932C2
            F1ADDDD2CA7C19FD973E2C7C32FDA1BC53E2BD57C73E0AF12E89E2DD52E2E6F5
            25F025E43E211A7AB5C1D374D4D43FB51ADD2DEC9660AAB1D8AA484DCCAC82E2
            EE7B87B9E04F15FC13F883F0C759F18DB697E17D2B41F0D79FFDBB27883C3DFD
            8371E1EF26259E4FB7DBDF430CF678B778E7FF004848F304B14A331C88EDE2DE
            16FDB43E116AFF001DBC77A55F781A5D33C2DE1CD07C3971A55B5EFC29D66CBC
            4DAC6A7A8DC6BC2782DB4C9ACD6F2F234B6D2A3981B6B560AB1DE3B394864F28
            029FED03FB33FC65F177ED5BAAE81E09F0AEAF67F0E3C65F11BC25F103C51ADE
            B7A4E9D359CD71A3C9A24B28B2BC87595BC8236B6D12DA158A5D1E72D75E6E66
            8E0996583EE1FECABAFF009F6B8FFBF66BE2ABCFDAABE1978A3F6835F0DE87A5
            F82349F0B5BE83E1CD51B56BEF00DE5FB5E5E6AFE2893431A5CBB1611A65DC53
            59CD6AD0DD8332DC5E17789134CBB8A5DEF0DFED79FB37FC65F07691AA782353
            F041B4D6EEB437D3751BDF035DC967ADDBDF6A96362D1D9168A1171209AF60B3
            9A485E41A75D5D442ED1195A1600FADFFB2AEBFE7DAE3FEFD9AE6FE2CD94D6DE
            090D2432C6A756D206594819FED5B4AF93AEBF6D6F82F77FB46E8BA269FE1BD1
            9BC03378375BF115DEB973F0FF0050823D5EE2DF51D0ACF4E5D1AE1ED961D5A3
            BA3AA4AB18B01726E1E4B310B1F3A3137B3F82FC57F0EBE26FC31B9D7BC0BA5D
            AE9F25AEB9A5E997F0CFE1E9B42D574E946A7612FD9EEED2E6186EADDDA37826
            549A342F14B0CAA0A491BB0077DF17BFE454B4FF00B0DE93FF00A71B6AEA2B97
            F8BDFF0022A5A7FD86F49FFD38DB57514016352FF8F85FFAE51FFE80B5E0FF00
            14FF00664F1AF8CFE3CBFC42F02EBDA67853C5BA02DDE8B693F883C333EB9A4D
            F69BA85968725CE2086EECE4F385C6936C1251705140B84689D995A2F78D4BFE
            3E17FEB947FF00A02D7C33FB73FED0765F08BF6B6D23C39A8F8D3F67DF865A77
            8B2CF56D4AE3C4BF147435D460925D3ECFC331C1636E5B51B055775D4AE6520C
            8E7101C20F98D007A0F81BFE09D3E39F82DA2F84EFFC1DF12ADEEBC7DE17BAF1
            82B6BBE2DF087F69DAEA967E23D7535ABA1359D95D5885BB49ADED15668A48E1
            216E3FD197CD8C4143E1BFFC1292EBE0178134CD3BC03E30B8B4D57C1BE28D33
            C49E12BBF10684753B7B3FB1F836D3C2261BF8619ED9AF37D9437136F865B5DB
            3CD11DAC91324BC7EBDFB4E7847E0C7ED4DA57C3CF15E83E17F1A431E97AC47A
            FC9E0BF841AC5EDF699AB595A785278E1FB3DA8BE736F2C7AE5C5C197698E359
            ECEDCCA658A479FD6B4BF8E3F00FC4DA478C750D0743B5F16D87813FB33FB4EE
            7C35E02BED7219BFB46DADEEED3EC6F676928BFDD6D756D3B7D8CCDE5453C6F2
            6C5606803CA35AFF00823E78E754F82FF113C316DF176DF48D4FE32E83ADE87E
            38D52CFC0FB96E12F757D7F578069D0CD7920B48D66F10DE433ACCD72F3DBAC6
            B0C96730FB4575BF133FE095B75E38F87DA4E8FF00DA5E0AF11FF65F8A3C59E2
            1FECBF1EF80CF89FC3171FDBBAD4FAAF98FA67DB2DF37F67E6FD9E0BCF3BE58A
            7BE1E57FA57EEBB9F157C42F837E1EFD9A752F8A969E16D1B5DF0FD8DACB2436
            563A0C29AAEA178929B75D2A2B59D63906A6F78059AD9CA126176C20655972A3
            C1FE20FED3FA57C37FD9F3C0DAB788FC37F0ABC25E29B7D7B5CF09FC49B9BAF0
            94B7F65E19BCD27C2FAE6AB717B058C72A5D3DA4926996D796E9232CD71A75E4
            2C023CE8E801EBBFB2C7FC13C7C4DFB337887E1C3A78FAE355D1FC05E03D33C1
            73410F8716CAEF5A5B2B28AD638E79965647B059125BC8A192192EEDEE6EAE44
            77EB6D7135A49BDFF0C2375AA7C10FF843358D76E352FF0084AFC51FF093FC43
            BFFECA2B2F8CB75C7DA66D3B0D23F9760FE5DAD8791706EF1A4DBFD84B3656E2
            3E3E6FDAFBF667B4D5F56B39EC2D6D7FB0F54BDD2AF6EAE3E1E6A30D8C2D6373
            2DAEA1742E9AC840D616571118EEAFD5CDA5A33C2279A2F3A2DF7FC61FB4DFEC
            DFE00D43C4F16B169A3585A7842D752BABFD524F055DFF0063CC74E8269EFEDA
            D2FC5A9B5BDBBB78EDAE8C9696B2CB7086CEE818C35BCC1003CDFE2FFF00C11A
            B5DFDA1BC7CBACF8DBC6DE19D4EEF44D7B55D5BC2FE24B7F01491F8DFC3F6F7D
            79A84B159AEB335FCC4C7610EA9726C3CA82116B776BA6DC8575B56B79FD2FE2
            E7FC137EEBE24788654B2D6348D1FC1975A5DB781A7F092F858B6971F827EC57
            306A1A25A98AE2296C6E2EE5B88A46BCB478942693A5446DE416ACD373DAAFED
            77F02EF3C63F0EF4BF0C785346F14C7E3BF1941E13696DBC333A496D0DCE97AA
            5F59EAD6F17D90B5EE9970FA6491C77F0FFA1320B8985C18ED65C6F78D7F695F
            D9EFE1BCFE22875FF0FCBA3DDF86AEA2B392D2EFE1A6A915D6ACF2EA1069A874
            C84D8F99AAC7F6CBAB488C960B3A29BCB62CC16788B007D15E15F09EA5E1EF0C
            69B617779ABEBB77636B15BCDA95F41125D6A0E8815A795608E38448E4166114
            6880B1DA8AB8517FFB2AEBFE7DAE3FEFD9AE3FFE148782FF00E850F0BFFE0AA0
            FF00E268FF008521E0BFFA143C2FFF0082A83FF89A00EC3FB2AEBFE7DAE3FEFD
            9AE735AD3E7FF85B5E1A4F226DFF00D91AB36DD8738F3B4CE7154BFE148782FF
            00E850F0BFFE0AA0FF00E26B275AF859E18FF84EFC35A6FF00C239A0FF00677D
            8356B9FB2FF67C5E479BE6698BE66CDBB77EDE376338E2803C83E1FF00FC12B2
            D7C05AD7ECB3AC45E25D5FFB6BF66DD062F0EDD3DBE9A2DED7C6F6F168573A54
            0D751062C925BBDDDC4D6E4C920805E5F46149B96917CD3C35FF000440BAF0EF
            C458FC431F897C156D7FA3696B6DA66AF61F0E8DAF8875FD42DF5CD135AB3D4B
            C4BA87DB98EB571F69D0E1370CB1DA3DC1BCBC657B769414FB03FE148782FF00
            E850F0BFFE0AA0FF00E268FF008521E0BFFA143C2FFF0082A83FF89A00F37D23
            F611BAF13FC03F8CDE11F1F6BB71AD6ABF1F7EDBFF00096EA5E1FD28E8F6F17D
            A347B6D147D82DE692EDA0DB65676E7F7D34F99FCD7E119614F25F8B7FF049CF
            18FED2BE38D4FC5FF147C53F0B3C6DE244FEC2FEC6D3EEBE15CF2F8563FECD8F
            C410FF00C4C34DB8D5677BDDF1F88AE99365CDBF9535B5AC9F384647EABF6DBD
            335AF80DE08D63C6FE14F0A7C1B3E1BF086962F9F45D4BC3725FEB3E39D41A46
            48745B268E4812C6E2E2416F6D6F2ECBE79A7BF5516C0C2AB73E69FB27FC686F
            8E3FB46EABA3F8817E1568BA2DB78CBC55E1BB1D0A4F82DABE9F26AC9A5EA3A8
            D9C115A788EE2EFF00B36F2ECC3662EA486DE077D90DD0F2D04324918077FE11
            FF00824F2F83F4C92DAC75BD2349867FF842656B1D0FC196FA3E97672F87BC5B
            7FE25952D6D2DDD521B7B892FDEDA346DF2C291AC92CD792B48EE5C7FC1292EA
            7F87DFB3CE85FF000985C0FF00850BE17D1FC37E7FF611FF0089E7D835AF0AEA
            9E76DF3FF71E67FC233E56CCC9B7EDBBB73793B64EABE23FC71F807F0A7E275B
            F84758D0ED4EAB36A9A768734FA7F80AFB52D2F4DD42FE5822B3B3BCD42DAD24
            B4B3B895AEAD488AE268DC25D5BB901268D9BD6BFE148782FF00E850F0BFFE0A
            A0FF00E26803E5DB4FF8249F8C5AD7C0BA4DEFC48D226F0DFC1AF0BC1E1BF87B
            6F0F82A78AFAD3EC7AB787F53D3E6D5A73A8325FEC93C396493A5BC363E72CD7
            1B1ADCB2797EC7E04FD9F75AF825E02F186ABE27D66D7C41E2DF887E34D1FC43
            AEDEE9FA449A4E986E125D1F4D892D6D649EE2486316BA75B6E125C4A5A53338
            645758A3EFFF00E148782FFE850F0BFF00E0AA0FFE26B3BC63F0EBC3DE11F0CB
            5CE93A168DA5DCBEA5A4C4D2DA594503B21D5ACC9525541C64038F61401A3F17
            BFE454B4FF00B0DE93FF00A71B6AEA2B97F8BDFF0022A5A7FD86F49FFD38DB57
            514016352FF8F85FFAE51FFE80B5E4B6DFB3ADF6B5FB63AFC4D69EEE087C3FA4
            EA9E1F82C8D8B15D4135283C3531B859B700044DA3B47B42B6E329F994C6437A
            D6A5FF001F0BFF005CA3FF00D016BE37FDB5BE31597C2BF8D06CB51D5BE0DFC3
            FD3B5FB8B89EE3C7FF0012F475D4345B396D74ED1560D1D435E58A8BABA5BBB9
            B88C9BAC88F4CBAC43265A48403A3F13FF00C13E3E22E87FB5BEBBF17FE1EFC4
            1F0CE83AD6BF75AA3CD65E22F03DCEB56B1DBDF69BE16B268D7C8D4ACDBCC47F
            0C4720909208BC64D80C61DB074DFF00823D5AF833F67CD43E1EE89AFDBEABA2
            AEBDA36AD61A778C7C3435ED16FEDF4DF0BE9BE1D8ECF59B149ADD7528F669EB
            7ABB5EDC4778B6B20522DB6C9B7F1DBE2B781BE087FC21BA4EBBE1BF873A0789
            2F3EC5A9F8C5A1F0E5FF008834BF07E96779B9B99EE6D6C912DEDE49209A08AF
            3516B181523B9BA3BC594B6AFC1FED71FB677C2AF83BE2AD1744F0EE8FE17B38
            46A9AED97893C51A97C33D4F53F0F68B0699E1CD6F519E486EE08E1B5BDB8B6B
            BD3638E6B482E5A7C45770ED8E58D9A200EFFE1F7FC12EDBC3DFB247833E0F6A
            DAE5B8F0B68BE32BFF00166B769E15D12E3C316BA824DA96A1AB5A59587D9EEC
            DC6951D9EA371613C4F05C3381A62479D92B81C97C78FF00822EC3F137C37E27
            F0F7873C73E26F0F786FC4FF006CBF9ADB5A5BEF14DF1D5AEFC2DAEF86AE6FE4
            BFBEBC6BA9775A6A7A6010B49E5C6BA2AAA05372EE9EAFE1CF89DF02FC59F17E
            4F03D8E8FA349AD0BAB8D3E0B993C213C3A3EA3796C1CDCD95A6A6F6E2C6EAEE
            1F26E3CCB682779A3369741D14DB4FE5FA5FFC290F05FF00D0A1E17FFC1541FF
            00C4D007CF7E3BFF0082525D78D7E1F78A342FF84C2E2DBFE124F0BFC50F0DF9
            FF00D845FECFFF0009A6B50EA9E76DF3C6EFB1795E56CC8F3F76EDD0E369E4BC
            7BFF000442D2BC5BA87C535B17F877A347F10ED7C58D06BD1FC30B49BC676F79
            E2182FD2E4DDEB2F316B8B485F52B831C30436937970DAC2F72F1A4E2E3EB1FF
            008521E0BFFA143C2FFF0082A83FF89A3FE148782FFE850F0BFF00E0AA0FFE26
            803CDFE24FEC2375E3BFDAF74CF8C16FAEDC58EABA1FFC23FF0060B0934A33DB
            8FECF5F125B5CF9A448ACFE7D97896ED23DBB3C89E08256F3D37DBB783F853FE
            088175E1CF8B9A2F893FE125F0543FD81F604FED1D3BE1D1B3F13F8AFECBE25D
            035CFB56BFAA7DB9BFB52FE5FEC2F2DEE7C88732DFDC4FB39F28FD81FF000A43
            C17FF428785FFF0005507FF1347FC290F05FFD0A1E17FF00C1541FFC4D00761F
            D9575FF3ED71FF007ECD1FD9575FF3ED71FF007ECD71FF00F0A43C17FF004287
            85FF00F05507FF001347FC290F05FF00D0A1E17FFC1541FF00C4D00761FD9575
            FF003ED71FF7ECD739AD69F3FF00C2DAF0D279136FFEC8D59B6EC39C79DA6738
            AA5FF0A43C17FF00428785FF00F05507FF0013593AD7C2CF0C7FC277E1AD37FE
            11CD07FB3BEC1AB5CFD97FB3E2F23CDF334C5F3366DDBBF6F1BB19C71401E8DF
            D9575FF3ED71FF007ECD1FD9575FF3ED71FF007ECD71FF00F0A43C17FF004287
            85FF00F05507FF00135E0FAA699AD780BF6A6F07683AE7853E0DEA7E1BF889AA
            6A76363A068DE1B90EB3E1ED3ECED2E2E06B5757CF26CB8B76922B3B79625B28
            1209F5AB58BED3318D1AEC03B0F8F9FB2E7C58F881FB43687E37F08F8E7C15A5
            5878734BFB3697A2F8A7C0979AFC3A56A0ED70973A95BB5BEA96205C4D6D2C76
            DBA5495E28926585E35BBBA596FDE7ECABE39F16FC7FF0D788BC51E37B7D73C2
            1E02D7AF3C4FE19D2E3F0C7D9358B7BCB8B1BDB0F2AEEFD27305C5A436FA95DA
            471A59433612D4C93CAD1CCD71F2BFC1AFDAFA7FDA7F4B9E2F0B7C3AF855E169
            3C65F169BC11E06D6352D00EAD6A3413E104F1459EB17568925B493497B6A84A
            DBF9B6CD6C2FA1120792DA449A86A5FB5B6B57DF0FBE286BBA7781BE0DDA7FC3
            3B785F54F1278BE0B9F0AC971FF09CFF0067EB5E25D2E4874F65B94FEC8F3BFE
            1179E557986A3E5FF6946A564FB2B35C8077FF00B40FECCFF197C5DFB56EABA0
            7827C2BABD9FC38F197C46F097C40F146B7ADE93A74D6735C68F26892CA2CAF2
            1D656F208DADB44B6856297479CB5D79B99A38265960FB87FB2AEBFE7DAE3FEF
            D9AF04F8EBF13BE05FECD7E27D0348F19E8FA369777E23B5BCD42DE487C213DE
            DADA59D9BDB25DDEDE5C5BDBC90D8DA406F2DBCCB9BA78A18C49B99C2862306E
            3F695FD9EE0F0C59EA31F87E5BCBBBCBA9ECFF00B06CBE1A6A977E26B4781217
            98DCE8D158B6A36D1A25CD9B9926B7440B7D66DBB6DD406400FA67FB2AEBFE7D
            AE3FEFD9AE6FE2CD94D6DE090D2432C6A756D206594819FED5B4AE57E167877E
            17FC6BF863E1CF197867C3BE17D4FC37E2DD2EDB5AD26F3FB1121FB5DA5CC4B3
            432EC923574DD1BA9DAEAAC338201C8ABBE31F875E1EF08F865AE749D0B46D2E
            E5F52D262696D2CA281D90EAD664A92AA0E3201C7B0A00D1F8BDFF0022A5A7FD
            86F49FFD38DB57515CBFC5EFF9152D3FEC37A4FF00E9C6DABA8A00B1A97FC7C2
            FF00D728FF00F405AF25F887F0C7E28EBDE2BD6F50F87BE2CD33C21723524F32
            3F10784E4D7B49D5607D374F5F344715CD9DC09A292164474B9F2B125C2C90C8
            FE53C1EB5A97FC7C2FFD728FFF00405AE52FBE0F784753BD9AE6E7C2DE1CB8B9
            B876965965D3617795D8E4B312B924924927AD007CEDE2AFF82525D5B7C311E0
            3F0778C2E347F066BBF0BF4AF83BE2A8F59D08EA9AA5FE81A7457D040F637114
            F6D159DFB45A9DEEF9A582EA22FF0067616EA23749B07F683FF8249F8C7E3878
            4755F03DBFC48D2347F86F71AA78C75FB0B393C153DD6B96BA878934DD7AD6E5
            A5BE1A82412DBC571E20BB9A3896D237F2E1822694B0799FEA2FF8521E0BFF00
            A143C2FF00F82A83FF0089A3FE148782FF00E850F0BFFE0AA0FF00E26803CA3C
            09FB046BBE11F8BFA15EDC78A6DEF3C03E0DF196B9F103C3DA347E1E921D621D
            63581AA7DAC5DEA06E5A19ED14EB7A918E28ECE09147D9434D2793219FE87FEC
            ABAFF9F6B8FF00BF66B8FF00F8521E0BFF00A143C2FF00F82A83FF0089A3FE14
            8782FF00E850F0BFFE0AA0FF00E26803B0FECABAFF009F6B8FFBF668FECABAFF
            009F6B8FFBF66B8FFF008521E0BFFA143C2FFF0082A83FF89A3FE148782FFE85
            0F0BFF00E0AA0FFE26803B0FECABAFF9F6B8FF00BF668FECABAFF9F6B8FF00BF
            66B8FF00F8521E0BFF00A143C2FF00F82A83FF0089A3FE148782FF00E850F0BF
            FE0AA0FF00E26803B0FECABAFF009F6B8FFBF668FECABAFF009F6B8FFBF66B8F
            FF008521E0BFFA143C2FFF0082A83FF89A3FE148782FFE850F0BFF00E0AA0FFE
            26803B0FECABAFF9F6B8FF00BF66B9CD6B4F9FFE16D78693C89B7FF646ACDB76
            1CE3CED339C552FF008521E0BFFA143C2FFF0082A83FF89A3FE148782FFE850F
            0BFF00E0AA0FFE26803B0FECABAFF9F6B8FF00BF66BE69D33F60FF001EEBDE38
            F899078EFC59E0AF1BFC3FF8B5FDA3A7788AC25F056A165E21BAD1278EEA2B3D
            213548F56F2A1B7B48AE4A2F93671872D7336D5B9BA9EE1FD9BFE148782FFE85
            0F0BFF00E0AA0FFE268FF8521E0BFF00A143C2FF00F82A83FF0089A00F9EFC3F
            FF00049F97E1578ABC43E27F02F8DBC4D6DE2A9FC796DE3AD027F175CEB1E2DB
            1D3658FC387C3F2417515D6A227BBDF6F717D20992E2DE50CF668CD243651C4D
            4354FF00824E6BA7C1DE2ED134DF1E5BDADA7C61D06FBC3BF135EE7C2D25C49A
            95BDEEA9AD6A774DA315BB41A649E7788B5558CDD0D40220B30CB23432B5C7D2
            7FF0A43C17FF00428785FF00F05507FF001347FC290F05FF00D0A1E17FFC1541
            FF00C4D0079BFED91FB08DD7ED6BFDAFFF0013DB8F0FFF006AFC2FF17FC36FF9
            051BBF2BFB7BFB33FD37FD6267C8FECEFF0055C799E77DF8F67CDE4BFB467ECB
            DF147E067ED1FAAFC5AF84BA0F89BC63E33F18EA9A94CE90F87B4CD434BD0F4F
            B9D2BC336535BCF0DE6BBA4CB2DC492F872D658A78A664447B98E4849314B5F5
            17FC290F05FF00D0A1E17FFC1541FF00C4D1FF000A43C17FF428785FFF000550
            7FF1340189FB17FC06D77F674FD8EFE13FC3DD6D6DEEB5AF02783747F0EDFCD6
            2247B59AE2D2C61B791A26744631978D8A9655241195078AE9FE2CD94D6DE090
            D2432C6A756D206594819FED5B4AA7FF000A43C17FF428785FFF0005507FF135
            2D8FC1EF08E997B0DCDB785BC396F736EEB2C52C5A6C28F13A9C865217208201
            0474A008BE2F7FC8A969FF0061BD27FF004E36D5D4572FF17BFE454B4FFB0DE9
            3FFA71B6AEA28039CBEF83DE11D4EF66B9B9F0B7872E2E6E1DA5965974D85DE5
            76392CC4AE49249249EB517FC290F05FFD0A1E17FF00C1541FFC4D739E23FDB4
            3E0EF83BE2FC7F0F757F8B1F0D34AF1F4D756F631F86AF3C4F6306B0F717010D
            BC22D1A513192512C65176E5C489B41DC33E97401CBFFC290F05FF00D0A1E17F
            FC1541FF00C4D1FF000A43C17FF428785FFF0005507FF135B36FE2AD2EF3C4F7
            9A245A9584BAD69F6B05F5D5825C235D5B5BCEF324133C60EE58E47B7B854620
            06304A01251B17E80397FF008521E0BFFA143C2FFF0082A83FF89A3FE148782F
            FE850F0BFF00E0AA0FFE26BA8A280397FF008521E0BFFA143C2FFF0082A83FF8
            9A3FE148782FFE850F0BFF00E0AA0FFE26B6758F15697E1ED434AB4BFD4AC2C6
            EF5DBA6B1D361B8B848A4D42E16096E1A18558832482182794AAE4848646C6D4
            622FD0072FFF000A43C17FF428785FFF0005507FF1347FC290F05FFD0A1E17FF
            00C1541FFC4D6CF873C55A5F8C74F92EF48D4AC355B486EAE2C649ACEE1278D2
            E2DE77B7B884B29204914D14913AF5478DD58065205FA00E5FFE148782FF00E8
            50F0BFFE0AA0FF00E268FF008521E0BFFA143C2FFF0082A83FF89AEA28A00E5F
            FE148782FF00E850F0BFFE0AA0FF00E268FF008521E0BFFA143C2FFF0082A83F
            F89AD9B7F1569779E27BCD122D4AC25D6B4FB582FAEAC12E11AEADADE7799209
            9E30772C723DBDC2A31003182500928D83C2BE2AD2FC75E18D375BD1352B0D67
            45D66D62BEB0BFB1B84B8B5BEB79503C73452212AF1BA32B2B29218104120D00
            637FC290F05FFD0A1E17FF00C1541FFC4D1FF0A43C17FF00428785FF00F05507
            FF00135B3E1CF15697E31D3E4BBD2352B0D56D21BAB8B1926B3B849E34B8B79D
            EDEE212CA481245345244EBD51E37560194817E80397FF008521E0BFFA143C2F
            FF0082A83FF89A3FE148782FFE850F0BFF00E0AA0FFE26BA8AA1E23F15697E0E
            D3E3BBD5F52B0D2AD26BAB7B18E6BCB848237B8B89D2DEDE10CC40324B34B1C4
            8BD5DE4455059802018DFF000A43C17FF428785FFF0005507FF1347FC290F05F
            FD0A1E17FF00C1541FFC4D751450072FFF000A43C17FF428785FFF0005507FF1
            347FC290F05FFD0A1E17FF00C1541FFC4D751583E3BF8A7E18F85BFD8DFF0009
            3788F41F0E7FC247AA41A1E93FDA9A84567FDA9A84FBBC9B383CC61E6DC49B5B
            6449976DA700E0D004563F07BC23A65EC3736DE16F0E5BDCDBBACB14B169B0A3
            C4EA7219485C82080411D2BA3AA1E15F15697E3AF0C69BADE89A9586B3A2EB36
            B15F585FD8DC25C5ADF5BCA81E39A29109578DD195959490C0820906AFD00783
            FC42FF00949D7C21FF00B25FE38FFD3B783EBE69F893FB73FC53F097887C5D75
            E0FF0014FF00C26FF15EC754F1BD8DCFC18FECDB4BBFF84774BD2ECB5C9743D5
            7EC56D126B0BF6E974FD0879B3DCBC13FF006EE2144FB45A795F70EB1F1F7C09
            E1EF8BFA57C3DBFF001AF84AC7C7DAEDAB5F69BE1AB8D62DE2D6350B7512969A
            1B467134918104E4B2A90043273F236307E1D7EDA1F077E2FEA1A35A784BE2C7
            C34F145DF88EEAEEC7498748F13D8DEC9AA5C5A411DC5D4302C52B1964861962
            96454C9449119805604807C01A67ED2BA6F87FF6BDF1ADEF85FF006A7FF84CBC
            0DAE697E0AD17C5FF16BEDDE16BAFF008412D157C75751C5F69B6B14D2ADFCCB
            D834EB7DD796F231FED5D8A4492DB347EB5F0D3F6C7F1BEBDF117E0D5A6A9F12
            7CBB4F11EA9A9E99A65B45E1EB7966F1F69F0EB97D6967AC3A7968751B7BAD26
            D60BA6B8D1648134E96F2DAFAE2DA7D2EEC0B4FB0FE21FC7DF027C22F13F86B4
            4F1678D7C25E18D6BC6775F61F0FD86ADAC5BD95D6BB71BE34F26D6395D5A793
            7CD0AED8C31CCA8319619A1A97ED4FF0C746F1C789BC3379F11FC0769E24F056
            96FAE788B499B5FB48EFB41D3D238E57BCBB84C9BEDEDD63962732C81502CA84
            9C302403E69FF82867ED59E2CF82BF13BC5967A6FC41FF008416FF00C37E03B6
            F10FC39F0F791A71FF0085BFE247975412E85B2EE192E2F76B5A6931FD9F4B78
            2E87F6BE0C85A6B631F79FB34FC7AD73C73FB6A7C53F096A1E3CFF008486DB43
            F3655D0A2D123861D02259D62B647C225DE9F70CAB33326A06E22D5227B6BED3
            668A05BAB483ADF8A5FB757813C0FA87846C748F11784BC4377E2AF88D17C319
            258FC416F1D9E8DAC0827B9B8B4BB957CC315DAC36D22476BB3CC96EA6B585BC
            A598CD1EF5D7EDA1F076C74FF195DCDF163E1A4369F0E6EA3B1F164CFE27B158
            FC317124ED6F1C37CC65C5AC8D323C4AB2ED25D5940DC08A00F87BE2A7ED592B
            7ED61F0DB5AF12FC41D7BC47E39F047C50F1ACCFF03F4383499754B4D2F4DF0E
            F8BA1D3EF6D74F10AEAAF717B650D94D1B4F74D04CFAA2B46A91CB6E23C1F841
            FF000512F1E6AFE21D67C1FAFF00C7DF01DC781ACB54D065D7BE2B786FC5DA0F
            89BFE10CB4BFB2F12B9497521A3586956BBEF745D2AD952EB4F9587F6B32899A
            4B9B516FF7FDBFEDA1F076F3C4F79A245F163E1A4BAD69FAF41E15BAB04F13D8
            B5D5B6B13BCC9069AF189772DDC8F6F70A9010246304A02928D8E0FF006A3FF8
            28E7813F646FD9A7C55E39F1678A3E1A43AD6976BE249BC3FA08F1A5BC4DE2BB
            8D2659E3FB0DBCB2A231BB2F1C30CF0C714A6DAE2568BF7A5033807C3DF077F6
            BEF107C2EFD9F7C55FF08EFC68F2BFB1BFE131F13FC30F97459BFE17F6BF2F8D
            3C5BBB4EE6D8FDBFCCFB2691FB8D17ECB2FF00C4EBE561E7DAF97F697ECD3F1E
            B5CF1CFEDA9F14FC25A878F3FE121B6D0FCD957428B448E18740896758AD91F0
            8977A7DC32ACCCC9A81B88B5489EDAFB4D9A2816EAD20F69D1FE3EF813C43F17
            F55F87B61E35F095F78FB42B55BED4BC356FAC5BCBAC69F6EC222B34D68AE668
            E32278086650089A3E7E75CF92F81BFE0A7BF077C7FE3EF8891587C45F86973E
            01F86FA0E83AB6A5E36B7F1858CDA3C371AA5E6A76AB6734CADE4C12466C2023
            74B9737D18DAB852E01F2D7ED1FF00F0529F8A7F0E3F6B0F12D8F80357D07C41
            7F73FF00093E8DA5FC2BD6359B4BEF124177A5787756BDB5BB5D02D34D83518E
            DEF6F34A81E19A4D56E567B5D4E2648236BA87ECB7FC0FFB7D1F057ED6F15AE9
            BFB50587C5BF81DA15D7876E3C5BE2DD4AEFC332E9BE1D4BED37C6A8F05D6A1A
            6DA5B5BDB46F7DA7F87C299487F3668630F8B9F2DFEFFF00F85A7E18FF008563
            FF0009B7FC247A0FFC219FD97FDB9FDBFF00DA117F65FF0067F95E77DB3ED3BB
            CAFB3F95FBCF3776CD9F3671CD79A4FF00B41FC01F04E9EFF1D2E3E25FC34D37
            45F1DDAD9F85E3F18DC78B6D5347D5D2C27D465B7B586769BECCD2472DC6A448
            8CEF24481891100801E4BFF04D0FDAF7C5FF00B50FC63F89D0EBBABDFDF787F4
            BB57BCD16D2FB451A55D592378D7C6FA6C62585E18AE239058E93A6C4D1CEA1D
            4DB12CA25794B78B7EC81FB63FC6FF00891F00F48F8A9E22F893FDA76DA778A3
            E18F86CF87D7C3D6105BEABFF091E8FE0EFED39AF2648C4A76CBAE5CDCDB25B1
            B7F2A72E256B980C76D0FDC3E35FDB43E0EFC35F13F88B44F11FC58F869A06B5
            E0FB58AFB5EB0D4BC4F636B75A25BCAF024535D4724A1A08DDEEAD955A40A18D
            CC2012645CF5BF137E29F863E0A7822FBC4DE32F11E83E12F0DE99E5FDB356D6
            B508AC2C6D3CC91624F326959513748E88324659D40E481401F989F06BF694F1
            A7ECF3FB027C22D36DFE2B5FF87753F0FF00ECFBE19F14FC38D16F2D748593E2
            E7886E2D6F9CF86C472DA99AF63B716DA3DAA41A6182F766A49E6CF2CD3C12AF
            5BF147F6B8F8C7E14F0AF89BC5767F14B5E5FF0084534BF8D9E398F4A6D1F466
            B1BE5F09F88ECB4ED2B4898FD8BCFF00B07D9FCDF35A3952EE46B8908BA5C462
            3FBFED7E3EF812FB50F06DA43E35F094D77F11AD64BEF09C29AC5BB49E27B78E
            05B8926B150F9BA8D6174959A2DC0232B13B483478ABE3EF813C0BE27D4B44D6
            FC6BE12D1B5AD1B4197C557F617DAC5BDBDD58E8F13949352963770C9688EACA
            D3B011A90416045007C3DF1EFF006BFF001E7C29B1F16FC39B9F8B3FF08E5FF8
            33C79269169F127C5DAFE83E10B3BFB44F0FE8BA99B0BEBE9744BEB037F2CDAE
            49F6782DF4F81A5B6D2E673286B794DCF9A6B7FB6AEB1FB55FC37F85FAAFC43F
            8A761E03F14EBFE32F845AA787FE18D89D2ECAD7C6B677B75E14D4EE3538A1BB
            8A5D5278E2BFBBD4E1592D6E92151A48460CF15CB49FA3BA6FED4FF0C759F047
            867C4D67F11FC0777E1BF1AEA89A1F87756875FB492C75ED41E49224B3B49849
            B2E2E1A48A54114659CB44E00CA90392FDA3FF006EAF027C09F00FC5B96C3C45
            E12F1478FBE11783751F196A5E09B7F105BC7AC0B7B4B3FB52F9D0AEF9ADE390
            3C004AD11004F19C36E50403E4BF86FF00B70FC40F137C37FB6C1F192C2F3C41
            AC7C399BC43F10ADEFB4FB192D7E06788C5D6911AE9129B3B369B488F17BAC23
            4BAD477ED68348373324D1595F473FB4FC47FDA6BC6FA7FF00C12CADFE22783B
            5BFEDAF115EFF67431F8835CB3B7D27EC5A6DC6AF05A5C6AB752C297562BF65D
            3E496E64D4A0867D35FECED7B14125932427E96B3F8A7E18D43FB3BECFE23D06
            7FED7D52EB43B0F2F5089BEDBA85AFDA3ED367161BE7B887EC777E644B974FB2
            CFB80F2DF1E2DF1DFF00E0A21E14F0BFECA5AFFC52F859ABFC34F8B3A6683746
            C6E2F23F889A5693E1FB3B8118904377AAC8EF0DBC92178208D76B969EF6D438
            8A1792E2200F9A746FDB4BE25E99F027C2DA9EB1F1B7C25776F378CAE74FD2F5
            FF000D411789D7C5D10B7B2305BA5F1D2B4FD3F5A912F2E6E525D334782D2FAE
            EDEDE48ECEE5AFB4DBB82EB83F8DB69A2E95FB3B6B7E0EF156AFE12D2351D67E
            2D7C4396EF52F8897BE1DD1342F0E58C9E256D422D064BBD4F43D51564D4526D
            2F59B7B59AD8CB731DBBDCA5C2C16F044DF7FF00833F6C6F064FE08F877A978C
            FC4DE03F02EABF16312F84B49BBF17585C4DAE452C89F654B6911C457770F15C
            5A174B469E25967091CD709E5CD2779E1FF8A7E18F1678E3C43E19D2BC47A0EA
            7E24F097D9BFB7349B4D4229AFB45FB4C665B7FB4C2AC5E1F36305D3CC0BBD41
            2B91CD007C01F037FE0A21F103E3341E00F12EABE3AB0D03C7DE27BAF01FF63F
            C28B1B5B14B5F18687ACE9FA15C6B1ADC56D3C726AD34766DA8EB6567B6BA5B6
            846883CD593ECF77E6FE8ED145007C79E3BFF82766B5E24FDB3B5DF18986C357
            F0B78B7C65A1F8E2E6E6F3C7FE22B08F46B8D2EDB4B8A3B71E1DB474D3B5190B
            E910CA979733A18DEE537C13A59A477183F0DBFE09A5E3BF077C2EF06E8975AB
            784A4BBF0F7837E0DF876E5E2BAB831BDC783FC433EA7A9B213002639619556D
            C900BB82245857E63E69FB50F8C3C4FA6FC4AFDAE3C4F6761F1E05FF00C39D50
            49E1DF1AE9BF10A5B4F057807C9F07E8B7C935EE8C3558CDD5BDBDCCD2DE5C45
            1E9779E7C72B208AE58982BBCF8CD7BABF8323FDB47E345878B3C791F8B7E05E
            A92EA1E17B16F15EA4DE1E482CBC13A1EA66C66D20CFF6092DEE269AE84ADE40
            9C0BA91E296199629A300F69F8EBFB3CF8EF55F8EDE2EF10F84F49F869E28D17
            E2978374DF03F882D3C653DC0B5D1ADECAE35693ED1F628ADE55D5A399359984
            96724D6408B509E7E2E0B41E2DFB457FC136BE277C67F835E2AF8616775E03B3
            F0DC1AA78FBC55E1DD7E6D5AECDF6A7A87896C3C476E96377622D365A5BDBC9E
            24973751DD5CBC8B60845BA1B82B07A5F85BE13BFED45FB44FC76BAD6BC67F12
            F45D47E1D78CACFC3BE169BC3DE2FD434AB5D1EDFF00E11BD1352566D3E29469
            F7B22DE6A1752937D6D70240CB14AB2408910EF3F686FDA57C5FF0E7E3B7827E
            1CF81BC0161E34F1078DF41D6B5C8EEB52F118D174DD2534DB8D2A2737520B7B
            89BCB906A5B55A0866712AC2A6311492CF6E01C1F88FF60CD520FDBBBC01F10B
            C349E12D0FC03E08B5F0FD8DBE8F6C1EDA4B4B7D3749F1B58986DE08E2F25230
            7C47A788D43280905C70BB23593CD347FF00826D7C4ED43C2BF067C3DAADD780
            EC6C3F67CD2FC3DE15D0EF6D356BBBA9BC5DA7D8F88FC2DA95C5F5CC2D6918D3
            AE3ECDE19012D6392F11A5BE2AD708B0F9929FB0EF8FBC5DFB417FC14575CF8A
            56BABF8F13E1478FFC076FE24D0749D59FC4AB636F06A1A6785A5B484432DAFF
            006047716EF0EA9233D8DECD3BB6A72AB2FEE242A7FC142FE1FF00C43F07F8AA
            E74CF863AF7C5A8BC79F1574BF13E9B65AD5F78C5A3D1B55BB97C39AECFA7E85
            A6D92DC8834DBFB7B8B4B0B98EF459DAAF91612799A849733CA972017FE24FFC
            134BC77E31F85DE32D12D756F094777E21F06FC64F0EDB3CB7570234B8F18788
            60D4F4C672202447143132DC1009472046B32FCC307E217FC138BE31689F0BBE
            3BE89E0F5F869AF5DFC7ED07C4BE18BD7D67C437DA4C7E1BB7BDF10F8AB53B2B
            A8CC5A7DC9BC90C3E26DB2C2C2011BD961659965DD196BE00F1B68FA86B5F0FA
            1F0C7C4BFEDAD06EB44F13F8DFC3FE19F8EDAF7892F3C43E1CBC835DB5B18B4B
            D5B59B8D3E5B0BB4D56CD2E2E638A4B4592D6D554CF726436B5DE7C15FDB4754
            F82FFF0004D0BCF88BE28D17C5BABEA7A178CB59F0769BA2EA12BEA3AC4657C6
            175A0695657735A7DB26B99211F638A79E117B71288A49145E4CC04A01C1FED4
            FF00F04BDF8A5FB55FC51D42D75AF12587FC23FA8DD78A0378AAE3C73ADDCC90
            58EABE1ED6F49B3B687C27E52E930C964BAA5B446E62B9596E12C6495CACB772
            A8BFF1ABF611F8CBFB4DFC6FBAF899E2AD1FC07E1ED5745FF8477FB1FC3DE1BF
            8A3AED8FF6B7D82DFC576D3F9BADDAE9B6977A7E57C4AB22F9104FE67D89A17D
            A93974FA1FF660F8F5AFFED7FF00027C4173A9786FC5BF09BC4105D5CE886E1B
            4DBCB764736F1491DFE9C359D3AD669A34170AA1EEB4F44FB45BCE9E5CD12092
            5F8F3E2FF8C3C4FF0009FF0068F83E12E8761F1E2FFC19ADF8A347B3B9F058F8
            852DCF8BF5A81F4AF19DCBEA763ADDD6ABE6DAD85D4BA2E9AE907F69DB4EA349
            BC592D6117456F003E9687F62AD5F4AFD86349F87DA52E83A6789347F145978E
            A2B46D5F52D46C67D42DBC4D1788CD9CDA95EB4F7B379D3C66096FE446766964
            B85B441B6D1685D7C0AF8C5A7FC5FD17E31587847E0B0F1F2DAEB7A4EA5E18B7
            D7EFB4ED3E5B7D4068416F26D6574E966BEBB8C681020DDA7C03C9BA8E2DDFE8
            4AF75F3C7C4EF8B579E28F84FF001D75EF0DF8E7E2D41FF0CF5F06DBC53E1187
            51F12DCDB5F683E218351F175BDDDB6A7F659441ACFD92E341B4B4FF004F6BE8
            665B177325CFDAAE27B9FB4BE3EFC7DF13F81FE277853C07E03F0A683E2AF19F
            8A74BD4F5F8E3D7FC412E85A5DBE9FA74B6105C31B886CEF2537065D4ECF645E
            46C6413B34A85112500F07FD963FE0993E27FD9A26F871A77FC245A0EB7A57C3
            FF001E699AFF00DAF6CB6D717FA7D9FC338BC23BBC9DAEB1DC3DEC7E7795E6B2
            2C0D9F34B8D87AD83F645F88DE12FF008276FC18F85BA3EB36127883E1D683A2
            691E22B0B1F146A3E1AB5F14259E99F6492DE2D66CA137F611ADD086E965861D
            F28B416EEAB15C4A57C97F65DFF829D5FF00807E04FECC5A2EB5A5DFF8EED3C5
            1E0DF03E99E29F144336B3A8EA5A66B9ACDBD9430A5E4ABA6C9A72C8EF7B6571
            27DAF5482E4C577E62C12B3DBADCEF7FC14B7FE0A17A5FECC1F1DB49B4B9F1FF
            0084BC191FC27D061F893AAE8FACEB89A75EF8F6DEE2E2E6C4E99A7C0664FB7C
            8B616FAE4A2DDF601A8FF6036F31F9EA000FD9C7FE09E3F11BE1227C3E8EFAD3
            E1A2C769AF6A7AAF895A6D6351F104E2D64F136A5AEDA5A4D2DE401B5B9227BC
            B77B6BC9FEC575A75EC13DCA4B791DDDCDA4BDE7ED6FFB09EBFF00B4578D7E27
            6A769A9D85ADA78A341F0243A6429AA5E6997535E7873C45A9EB5242F776CA26
            B28EE05CDB409776E649A02D2CAB133448B27CF1FB5CFED41F10FE0447FB7A6A
            5A978C75EB5F87EDA5DFE8BE12D456E9ADD7E1F78860F04E8D756B1437099962
            FED397517313168A186EF4F8D10B5CEA71AB7AD7C4EF8A7E27F0DFFC2CCF8051
            F88F5E8FC67E35F1E5869FE11BEFED097FB713C33E22F3AFEFEFADEF837956D7
            16115978BD6C558A1863D0AC50C531687ED401420FF827378DAC7C02874CD13E
            1A69FE22F126BD7973AF26B3E29D7BC5F241677767A7584F1DCEA5AA0924D76D
            26B5D3963B8D2E7B6B286747B4115C59DC69B15F4D43F68AFF00826D7C4EF8CF
            F06BC55F0C2CEEBC0767E1B8354F1F78ABC3BAFCDAB5D9BED4F50F12D8788EDD
            2C6EEC45A6CB4B7B793C492E6EA3BAB97916C108B7437056034AD3BE21FC5FF8
            6BA56A77567F16BE23F8334DF1E7C4CD3755D17C17E376F0EF885AEE2F185DC1
            A3CFF6D7D474F636169656F7D6C6DC5E6D067B3C5BC82157B7C1FDAC7FE0A81E
            18F855FF000AD358D33E316829A0F81BC07A5FC5B9A6F136A7168BABFC58D3EF
            BCDB58EDED2CD7ECC97970FA6C3ADDC1B530DBA26A4FA0901631346A01BDF1E3
            FE0993F13BE38F8464F867FF00091780F45F86E9E28F1DEBFF00DB3B6EEEF5CB
            CFF84A74DF1345BBECBB63820FB05C6BFE5F95E7CBF6C8D3CEF36C9A3FB3CDBD
            E05D23E2D7ED89A4783FE3949F0D3C07E02F19F83BC50F73A3F863589B54D3EF
            BC4369696DE21D1B7DFEA771A6C5776B6EEBAC4D79696EDA63B22A12C41BF616
            9F6951401F9E3E2BFF00824478BBC417DAD5CDEB683AFF00FC2D0D2EFF004EF1
            4587FC2C2F12F8774BF0EFDBBC41AFEB332FD9F4CF27FE123B75FF00848A5B7F
            26EDAC37A58643C1F6D916DFE96F813FB38F89FE1CFED3BE32F126A36BE03B6F
            0ADE7DB64D1974D8A592F3CFBFBB4B9BA9A38A54FF00895F9BE4C02F2286E2E6
            0D46E608EF84561335C4773EF1450014514500707E24FD997C11E2EF08FC4DD0
            B51D13ED1A57C63F3BFE12F83ED9709FDAFE769B6FA5C9F32B86873656B045FB
            9298D9B861CB31C1BCFD87FE1BEA1F1BF51F88371A66BD3EBDABEA96BAE5FDAC
            9E28D55B43BDD42D6DEDEDEDAF25D24DCFF67BDC42967686395ADCBA496B04AA
            4491A38F5AA2803C97E26FEC3FF0DFE2F78E2FB5ED734CD79E6D63CBFED9D3EC
            7C51AAE9DA3788F646B0FF00C4CB4DB7B98ECB50DF0247049F6B865F3608A385
            F7C48A83BCD47E19687AAFC4ED1FC657163E6789341D2EFB45B0BCF3A41E45A5
            ECB6735CC5B036C6DF2585A1DCCA597CAC2950CE1B7A8A00C1F859F0CB43F829
            F0C7C39E0DF0CD8FF66786FC25A5DB68BA4D9F9D24DF64B4B68961862DF2333B
            ED8D146E766638C924E4D70737EC31F0B2FBC71AB6B97BE16FED5FEDAFB6B5C6
            8FA96A5777DE1E496F63963BD9E1D22695B4F82E2E527BA59A78ADD25985EDDE
            F66FB4CFE67AD51401E2D6FF00F04FBF85F07862F34E92C3C5B7977797505E7F
            6F5EF8DB5BBBF135A3C0932422DB5996EDB51B68D12E6F10470DC2205BEBC5DB
            B6EA71275BFF000CCBE08FF8521FF0AEBFB13FE295FF0059E4FDB2E3ED9F69FB
            47DABEDFF6CDFF0069FB7FDAFF00D2BEDBE6FDA7ED3FE91E6F9DFBCAEF28A00E
            0FC09FB32F823E1F7C31D67C1D6DA27F6AE83E25F3FF00B763F105E5C6BD71E2
            1F3A25824FB7DC5F3CD3DE66DD2383FD21E4C4114510C471A22F256FFF0004FB
            F85F07862F34E92C3C5B7977797505E7F6F5EF8DB5BBBF135A3C0932422DB599
            6EDB51B68D12E6F10470DC2205BEBC5DBB6EA7127B4D1401E2DAC7FC13D7E126
            B7A7E95693786EFE2B4D3AD5AC6EA1B6F106A56D1F892DDA796E24875958EE14
            6B31C935C5DCB22EA5F69123DF5E33866BA9CC9D6FC6DFD9AFC27FB417F6649E
            218B5EB6BFD1BCD5B2D4F40F116A3E1ED52DE297679D00BCD3E782E3ECF23450
            B3C064F29DEDE07652D14657BCA2803C1ECBFE09A5F0734AFF00844E3B0F0FEB
            DA5D87833FB15B4FD334FF00176B367A5CF2E8FF0066FECD9EF2CE2BA5B7BFB8
            816CACD44F771CD2B25A5BA3332C4817D6BC21F0CB43F01F887C55AAE9363F64
            BFF1AEA89AD6B52F9D249F6DBB4B2B5B15970CC4262DACADA3DA8157F75BB1B9
            999B7A8A00F16B3FF8277FC18B3FD9CBC4DF090F816C2EBE1DF8C2D6CECF56D1
            AF2EAE6EA3B94B4D3ACB4DB52249646923921B5D36C55248D95D5ED9250C25CC
            87D2F51F865A1EABF13B47F195C58F99E24D074BBED16C2F3CE90791697B2D9C
            D7316C0DB1B7C961687732965F2B0A543386DEA2803C97C4DFB0FF00C37F13F8
            7AD34EFECCD7B46FB0EA9AB6B16F7DA078A355D0F548A7D56F64BFD4505F59DC
            C573F67B8BB93CE7B7F37C82F1407CBFDC43B3ADF84DF023C21F0260D621F076
            8161E1CB4D76EADEF2EAD2C54C56A1EDF4FB4D36011420F970471D9D85A44B1C
            4A880420EDDC589EB68A00E4BE0A7C0FF0DFECF3E01B1F0B784ADAFF004FF0FE
            956B6963636571AA5D5F47636F6B67059410C3F689243146B0DB459542033F99
            2B0696591DFADA28A0028A28A0028A28A00FFFD9}
        end
        object GroupBox5: TGroupBox
          Left = 8
          Top = 2
          Width = 241
          Height = 103
          Caption = 'Por'#231#227'o'
          TabOrder = 0
          object RxLabel72: TRxLabel
            Left = 8
            Top = 20
            Width = 30
            Height = 13
            Caption = 'Qtde:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel73: TRxLabel
            Left = 128
            Top = 20
            Width = 25
            Height = 13
            Caption = 'Und:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel74: TRxLabel
            Left = 8
            Top = 44
            Width = 67
            Height = 13
            Caption = 'Parte Inteira:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel75: TRxLabel
            Left = 110
            Top = 44
            Width = 71
            Height = 13
            Caption = 'Parte Decimal:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel76: TRxLabel
            Left = 8
            Top = 68
            Width = 69
            Height = 13
            Caption = 'Medida Utiliz.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit39: TDBEdit
            Left = 40
            Top = 17
            Width = 57
            Height = 21
            DataField = 'PORCAO'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit33: TDBEdit
            Left = 76
            Top = 41
            Width = 32
            Height = 21
            DataField = 'PARTE_INTEIRA'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object EvDBComboBox4: TRxDBComboBox
            Left = 79
            Top = 65
            Width = 157
            Height = 21
            DataField = 'MEDIDA_CASEIRA'
            DataSource = qrinfnutricional_produto
            EnableValues = False
            Items.Strings = (
              'Colher(es) de Sopa'
              'Colher(es) de Caf'#233#9#9#9
              'Colher(es) de Ch'#225#9#9#9#9
              'X'#237'cara(s)'#9#9#9
              'De X'#237'cara(s)'#9#9#9
              'Unidade(s)'#9#9#9#9
              'Pacote(s)'#9#9#9
              'Fatia(s)'#9#9#9#9
              'Fatia(s) Fina(s)'#9#9#9#9
              'Peda'#231'o(s)'#9#9#9
              'Folha(s)'#9#9#9#9
              'P'#227'o(es)'#9#9#9
              'Biscoito(s)'#9
              'Bisnaguinha(s)'
              'Disco(s)'#9
              'Copo(s)'
              'Por'#231#227'o('#245'es)'
              'Tablete(s)'#9
              'Sach'#234'(s)'
              'Alm'#244'dega(s)'
              'Bife(s)'#9
              'Fil'#233'(s)'
              'Concha(s)'#9#9#9#9#9#9
              'Bala(s)'#9
              'Prato(s) Fundo(s)'
              'Pitada(s)'#9
              'Lata(s)')
            TabOrder = 2
            Values.Strings = (
              '00'
              '01'
              '02'
              '03'
              '04'
              '05'
              '06'
              '07'
              '08'
              '09'
              '10'
              '11'
              '12'
              '13'
              '14'
              '15'
              '16'
              '17'
              '18'
              '19'
              '20'
              '21'
              '22'
              '23'
              '24'
              '25'
              '26')
          end
          object EvDBComboBox2: TRxDBComboBox
            Left = 187
            Top = 16
            Width = 49
            Height = 21
            DataField = 'UNIDADE_PORCAO'
            DataSource = qrinfnutricional_produto
            EnableValues = False
            Items.Strings = (
              'GR'
              'ML'
              'UN')
            TabOrder = 3
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object EvDBComboBox3: TRxDBComboBox
            Left = 194
            Top = 40
            Width = 41
            Height = 21
            DataField = 'PARTE_DECIMAL'
            DataSource = qrinfnutricional_produto
            EnableValues = False
            Items.Strings = (
              '0'#9' '#9#9#9
              '1/4'#9' '#9#9#9
              '1/3'#9' '#9#9#9
              '1/2'#9' '#9#9#9
              '2/3'#9' '#9#9#9
              '3/4')
            TabOrder = 4
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5')
          end
        end
        object FlatPanel3: TFlatPanel
          Left = 255
          Top = 9
          Width = 137
          Height = 17
          Caption = 'Informa'#231#227'o'
          ParentColor = True
          ColorHighLight = clBlack
          ColorShadow = clBlack
          TabOrder = 2
        end
        object FlatPanel4: TFlatPanel
          Left = 391
          Top = 9
          Width = 105
          Height = 17
          Caption = 'Por'#231#227'o'
          ParentColor = True
          ColorHighLight = clBlack
          ColorShadow = clBlack
          TabOrder = 3
        end
        object FlatPanel5: TFlatPanel
          Left = 495
          Top = 9
          Width = 62
          Height = 17
          Caption = '% VD'
          ParentColor = True
          ColorHighLight = clBlack
          ColorShadow = clBlack
          TabOrder = 4
        end
        object FlatPanel6: TFlatPanel
          Left = 255
          Top = 25
          Width = 137
          Height = 162
          ParentColor = True
          ColorHighLight = clBlack
          ColorShadow = clBlack
          TabOrder = 5
          object Shape6: TShape
            Left = 0
            Top = 128
            Width = 137
            Height = 17
            Brush.Color = 16381926
          end
          object Shape5: TShape
            Left = 0
            Top = 96
            Width = 137
            Height = 17
            Brush.Color = 16381926
          end
          object Shape4: TShape
            Left = 0
            Top = 64
            Width = 137
            Height = 17
            Brush.Color = 16381926
          end
          object Shape3: TShape
            Left = 0
            Top = 32
            Width = 137
            Height = 17
            Brush.Color = 16381926
          end
          object Shape1: TShape
            Left = 0
            Top = 0
            Width = 137
            Height = 17
            Brush.Color = 16381926
          end
          object Label145: TLabel
            Left = 2
            Top = 2
            Width = 101
            Height = 12
            Caption = 'VALOR CAL'#211'RICO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label148: TLabel
            Left = 2
            Top = 18
            Width = 89
            Height = 12
            Caption = 'CARBOIDRATOS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label149: TLabel
            Left = 2
            Top = 34
            Width = 65
            Height = 12
            Caption = 'PROTE'#205'NAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label150: TLabel
            Left = 2
            Top = 50
            Width = 107
            Height = 12
            Caption = 'GORDURAS TOTAIS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label151: TLabel
            Left = 2
            Top = 66
            Width = 132
            Height = 12
            Caption = 'GORDURAS SATURADAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label152: TLabel
            Left = 2
            Top = 83
            Width = 114
            Height = 12
            Caption = 'Colesterol/Gord. Trans'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label153: TLabel
            Left = 2
            Top = 99
            Width = 100
            Height = 12
            Caption = 'FIBRA ALIMENTAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label154: TLabel
            Left = 2
            Top = 115
            Width = 44
            Height = 12
            Caption = 'C'#193'LCIO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label155: TLabel
            Left = 2
            Top = 131
            Width = 36
            Height = 12
            Caption = 'FERRO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label156: TLabel
            Left = 2
            Top = 147
            Width = 38
            Height = 12
            Caption = 'S'#211'DIO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
        end
        object FlatPanel7: TFlatPanel
          Left = 391
          Top = 25
          Width = 166
          Height = 162
          ParentColor = True
          ColorHighLight = clBlack
          ColorShadow = clBlack
          TabOrder = 1
          object Shape10: TShape
            Left = 0
            Top = 128
            Width = 166
            Height = 17
            Brush.Color = 16381926
          end
          object Shape9: TShape
            Left = 0
            Top = 96
            Width = 166
            Height = 17
            Brush.Color = 16381926
          end
          object Shape8: TShape
            Left = 0
            Top = 64
            Width = 166
            Height = 17
            Brush.Color = 16381926
          end
          object Shape7: TShape
            Left = 0
            Top = 32
            Width = 166
            Height = 17
            Brush.Color = 16381926
          end
          object Shape2: TShape
            Left = 0
            Top = 0
            Width = 166
            Height = 17
            Brush.Color = 16381926
          end
          object Label158: TLabel
            Left = 75
            Top = 2
            Width = 21
            Height = 12
            Caption = 'kcal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label159: TLabel
            Left = 75
            Top = 18
            Width = 6
            Height = 12
            Caption = 'g'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label160: TLabel
            Left = 75
            Top = 34
            Width = 6
            Height = 12
            Caption = 'g'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label161: TLabel
            Left = 75
            Top = 50
            Width = 6
            Height = 12
            Caption = 'g'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label162: TLabel
            Left = 75
            Top = 66
            Width = 6
            Height = 12
            Caption = 'g'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label163: TLabel
            Left = 75
            Top = 82
            Width = 15
            Height = 12
            Caption = 'mg'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label165: TLabel
            Left = 75
            Top = 146
            Width = 15
            Height = 12
            Caption = 'mg'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 75
            Top = 130
            Width = 15
            Height = 12
            Caption = 'mg'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label32: TLabel
            Left = 75
            Top = 114
            Width = 15
            Height = 12
            Caption = 'mg'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 75
            Top = 98
            Width = 6
            Height = 12
            Caption = 'g'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object FlatPanel8: TFlatPanel
            Left = 104
            Top = 0
            Width = 1
            Height = 188
            ParentColor = True
            ColorHighLight = clBlack
            ColorShadow = clBlack
            TabOrder = 0
          end
          object DBEdit40: TDBEdit
            Left = 5
            Top = 1
            Width = 67
            Height = 14
            BorderStyle = bsNone
            Color = 16381926
            DataField = 'VALOR_CALORICO'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = DBEdit1Enter
            OnExit = DBEdit40Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit41: TDBEdit
            Left = 107
            Top = 1
            Width = 55
            Height = 14
            BiDiMode = bdRightToLeft
            BorderStyle = bsNone
            Color = 16381926
            DataField = 'VALOR_CALORICO_VD'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 2
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit42: TDBEdit
            Left = 5
            Top = 17
            Width = 67
            Height = 14
            BorderStyle = bsNone
            Color = clBtnFace
            DataField = 'CARBOIDRATOS'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnEnter = DBEdit1Enter
            OnExit = DBEdit42Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit43: TDBEdit
            Left = 107
            Top = 17
            Width = 55
            Height = 14
            BorderStyle = bsNone
            Color = clBtnFace
            DataField = 'CARBOIDRATOS_VD'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit44: TDBEdit
            Left = 5
            Top = 33
            Width = 67
            Height = 14
            BorderStyle = bsNone
            Color = 16381926
            DataField = 'PROTEINAS'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnEnter = DBEdit1Enter
            OnExit = DBEdit44Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit45: TDBEdit
            Left = 107
            Top = 33
            Width = 55
            Height = 14
            BorderStyle = bsNone
            Color = 16381926
            DataField = 'PROTEINAS_VD'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit46: TDBEdit
            Left = 5
            Top = 49
            Width = 67
            Height = 14
            BorderStyle = bsNone
            Color = clBtnFace
            DataField = 'GORDURASTOTAIS'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnEnter = DBEdit1Enter
            OnExit = DBEdit46Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit47: TDBEdit
            Left = 107
            Top = 49
            Width = 55
            Height = 14
            BorderStyle = bsNone
            Color = clBtnFace
            DataField = 'GORDURASTOTAIS_VD'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit48: TDBEdit
            Left = 5
            Top = 65
            Width = 67
            Height = 14
            BorderStyle = bsNone
            Color = 16381926
            DataField = 'GORDURASSATURADAS'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnEnter = DBEdit1Enter
            OnExit = DBEdit48Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit49: TDBEdit
            Left = 107
            Top = 65
            Width = 55
            Height = 14
            BorderStyle = bsNone
            Color = 16381926
            DataField = 'GORDURASSATURADAS_VD'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit50: TDBEdit
            Left = 5
            Top = 81
            Width = 67
            Height = 14
            BorderStyle = bsNone
            Color = clBtnFace
            DataField = 'COLESTEROL'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit51: TDBEdit
            Left = 107
            Top = 81
            Width = 55
            Height = 14
            BorderStyle = bsNone
            Color = clBtnFace
            DataField = 'COLESTEROL_VD'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit52: TDBEdit
            Left = 5
            Top = 97
            Width = 67
            Height = 14
            BorderStyle = bsNone
            Color = 16381926
            DataField = 'FIBRA'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
            OnEnter = DBEdit1Enter
            OnExit = DBEdit52Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit53: TDBEdit
            Left = 107
            Top = 97
            Width = 55
            Height = 14
            BorderStyle = bsNone
            Color = 16381926
            DataField = 'FIBRA_VD'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit54: TDBEdit
            Left = 5
            Top = 113
            Width = 67
            Height = 14
            BorderStyle = bsNone
            Color = clBtnFace
            DataField = 'CALCIO'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit55: TDBEdit
            Left = 107
            Top = 113
            Width = 55
            Height = 14
            BorderStyle = bsNone
            Color = clBtnFace
            DataField = 'CALCIO_VD'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit56: TDBEdit
            Left = 5
            Top = 129
            Width = 67
            Height = 14
            BorderStyle = bsNone
            Color = 16381926
            DataField = 'FERRO'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit57: TDBEdit
            Left = 107
            Top = 129
            Width = 55
            Height = 14
            BorderStyle = bsNone
            Color = 16381926
            DataField = 'FERRO_VD'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 18
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit58: TDBEdit
            Left = 5
            Top = 145
            Width = 67
            Height = 14
            BorderStyle = bsNone
            Color = clBtnFace
            DataField = 'SODIO'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 19
            OnEnter = DBEdit1Enter
            OnExit = DBEdit58Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit59: TDBEdit
            Left = 107
            Top = 145
            Width = 55
            Height = 14
            BorderStyle = bsNone
            Color = clBtnFace
            DataField = 'SODIO_VD'
            DataSource = qrinfnutricional_produto
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 20
            OnEnter = DBEdit1Enter
          end
        end
      end
      object ptampainfnutricional: TFlatPanel
        Left = 568
        Top = 8
        Width = 340
        Height = 180
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        TabOrder = 1
        object Label44: TLabel
          Left = 8
          Top = 16
          Width = 317
          Height = 13
          Caption = 'Produto sem tabela de informa'#231#245'es nutricionais.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object bitbtn6: TAdvGlowButton
          Left = 5
          Top = 44
          Width = 277
          Height = 24
          Caption = 'Criar...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 49
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000467414D410000AFC837058AE90000001974455874536F6674776172
            650041646F626520496D616765526561647971C9653C000002954944415478DA
            62FCFFFF3F03250020805870497895A79AB2B3BCDDC922FC83EF073733C3EF0F
            5C1F1DEFDE3BFFFFF34B67A0F416209E5EB1FCD1368000C26900A7D6C553EAE2
            9A0C9E46790C5F7EBF6738F576BFD0E9C31F9D5724EF6638D0EBEE73E6CA7390
            B26D0001C46291DECE24A0C87895556EAD0603E35F0646B0F6FF0C9E4A410C06
            9A8E0CAC4C6C0C7F197E31D8887931382818333C3F3A9DE1E5BB1F2045EB4104
            4000B1FC6164E364613D2B55E2D2C9F0E7DF6FB06676162E065646568617DF1F
            31F0B10A313CFBFE80E1D75F3E869FBBA632A8044731BC7EFB19A47707880008
            20965FAC82D21C1CEF385F7E7FC270FEFD61B0FD529C0A0C826CC20C221C920C
            3FFFFD001AF99FE1C7E7E70C62DC0C0CDFDFDD67F8F1F30F03D0FFCF406A0102
            884991E3B51707EB7F66264646062620646180040B13230B0333231BC3CFBFDF
            18FEFDFFCBC0F38B9F414498978185831F25AC000288E91DBB84BE9F5514D387
            5FEF801A5818989880981168142333032F2B3F0327330F83188734C3BB471F18
            C4C444185EDC3E09D2771566004000B17CE164D46517E064B8F3FA30C3DFFF7F
            80CE576490E65264E062E16578F2E51EC3A9A747197E33F1FFB7E1306564F87E
            92E1E59B2FF0000401800062E116B826F7F5B70A83B1900358809D9983E1D4AB
            FD0C179F9D6610FF62FAC3D4C06FF183A77F35DAB2926D1735DA32BC7AF311A4
            6C37CC0080006261FFF8E8F382A3474599F8BF83228081E10B2BC3DF87A25F77
            579EE28129EA68940BCDF213B36562616678FBEE1328000FC1E4000288656FD5
            32652252AC8DA8A80056098000622232C9BB4B8A0B6295000820620D50E7E1E6
            6478F1EA3D03341FC0014000319192F3DEBD07A7C0A3C862000144AC01D3376E
            3BCE70FBEED3E92036B204408001003701CA9BF04011740000000049454E44AE
            426082}
          TabOrder = 0
          OnClick = bitbtn6Click
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
    end
    object TabSheet5: TRzTabSheet
      Color = 16119543
      Caption = 'Seriais'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pficha5: TPanel
        Left = 0
        Top = 0
        Width = 912
        Height = 232
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Bevel19: TBevel
          Left = 0
          Top = 181
          Width = 912
          Height = 2
          Align = alBottom
        end
        object Panel13: TPanel
          Left = 0
          Top = 183
          Width = 912
          Height = 49
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object Label42: TLabel
            Left = 192
            Top = 10
            Width = 77
            Height = 13
            Caption = 'Seriais Vendidos'
          end
          object Label43: TLabel
            Left = 192
            Top = 24
            Width = 77
            Height = 13
            Caption = 'Seriais Baixados'
          end
          object Bevel14: TBevel
            Left = 440
            Top = 6
            Width = 2
            Height = 34
          end
          object Label67: TLabel
            Left = 456
            Top = 16
            Width = 45
            Height = 13
            Caption = 'Localizar:'
          end
          object Shape11: TShape
            Left = 176
            Top = 11
            Width = 13
            Height = 12
            Brush.Color = clRed
            Shape = stRoundRect
          end
          object Shape12: TShape
            Left = 176
            Top = 25
            Width = 13
            Height = 12
            Brush.Color = clYellow
            Shape = stRoundRect
          end
          object button3: TAdvGlowButton
            Left = 285
            Top = 12
            Width = 140
            Height = 24
            Caption = 'Baixar / Retornar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000000467414D410000AFC837058AE90000001974455874536F6674776172
              650041646F626520496D616765526561647971C9653C000002A74944415478DA
              62F8FFFF3F03211CBED8AF2270B627333639800062622002FCF8F633EAC7B71F
              33B1C901041023C81410C83F9822FBE7F79FE0DF3FFFB8FFFAF9DBF8F7CF5FA2
              3F7FFC66F8F5E31783B49034C3AF5FBF196EDCB939F168E3E902640300028805
              44E4ED4FB6FCFDFB4FB93497B43F3FBF0003171B3703132323C3EF7FBF197EFF
              F903A67FFCFEC9F0E9F3E77CDD3C8D2F9727DDA881190010402CB97B13657FFF
              FA53AE2EACE92FC62DC6F0E5D717867FFFFF31FCFCF31B6A00D01540FAD75FA0
              213F7E32005DC586EC02800062010A044B724BF90B730A836DF9FAF33BC38D07
              37186EDFBF0D74FE6FA0865F0C3252D20C401732DCBA717BCAED39F7CB900D00
              0820969FDF7FBA73F373036DFECAF0F5C737865DC7773D02FA7BCDC19A13C530
              451AE92A9780E173F6CEBC07B9E8810810402CDFBFFD343C76EDF84FA0A67F3F
              BFFFFA0EA4171DAE3F558BAC0818A82BFFFEF9DB11BF263411E4A25FD0C005B1
              010288E5C7D71F9510C15F7027971CCF60066AA8E8B79DDD0A32E0DE8287603A
              6C919F12505D161073022D6302D21F0002081E8DC80018A5F3814E369EEAB240
              0F261632DFA717A821C4D1C0518E919989E1F9ABE70C7B0FEFDF0110402CE89A
              81513A59825332E10FD31F06A093FFC39C2C2528C5A0A0AAC0C0C8CC088C915F
              0C0F9E3C640086DF4E800042310018A55DE21C92394A02CA0C7FFFFE65901350
              60F80D8C3E300646E5A71F9F18987FB330DC7B709FE1CA956B1B81D1BF162080
              500C0046E9AF9F8CBF187EFCFAC1F0F7DF3F70FC833483D2C0B7EF5F195EBF7F
              CDF0F4E933861BD76E6E04466B27304A1F0304104618442CF19F20CE2B910F4A
              BA771EDE818636D0A09FBF5E0363E32C30A9EF0486CF5A60943E06A9070820AC
              B9CF73A2E31CA70EEB4BC4E4548000C29A1BBF7FFD910ECC81CB88C9A9000106
              00A6B9DD3A774369CA0000000049454E44AE426082}
            TabOrder = 0
            OnClick = button3Click
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
          object eserial: TRzEdit
            Left = 512
            Top = 12
            Width = 257
            Height = 21
            Text = ''
            FocusColor = 10550008
            TabOrder = 1
            OnChange = eserialChange
          end
          object DBCheckBox3: TDBCheckBox
            Left = 8
            Top = 16
            Width = 153
            Height = 17
            Caption = 'Utilizar controle de seriais'
            DataField = 'USA_SERIAL'
            DataSource = DM.DTS_PRODUTOS
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 912
          Height = 41
          Align = alTop
          TabOrder = 1
          object FDvGlowButton2: TAdvGlowButton
            Left = 9
            Top = 7
            Width = 64
            Height = 24
            Caption = 'Incluir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = FDvGlowButton2Click
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
          object FDvGlowButton5: TAdvGlowButton
            Left = 81
            Top = 7
            Width = 64
            Height = 24
            Caption = 'Excluir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = FDvGlowButton5Click
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
        object wwDBGrid2: TDBGrid
          Left = 0
          Top = 41
          Width = 912
          Height = 140
          Align = alClient
          DataSource = Dts_Serial
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -9
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawDataCell = wwDBGrid2DrawDataCell
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SERIAL'
              Width = 667
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESTOQUE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SITUACAO'
              Visible = True
            end>
        end
      end
    end
    object TabSheet7: TRzTabSheet
      Color = 16119543
      Caption = 'Rentabilidade'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pficha9: TPanel
        Left = 0
        Top = 0
        Width = 912
        Height = 232
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label55: TLabel
          Left = 8
          Top = 136
          Width = 224
          Height = 65
          Caption = 
            'Esta fun'#231#227'o faz com que este produto '#13#10'ao ser comprado, n'#227'o alim' +
            'ente o seu '#13#10'estoque, atribuindo aos produtos listados '#13#10'os resp' +
            'ectivos percentuais aos seus estoques.'#13#10'Ex.: Animal Bovino, divi' +
            'do em carnes.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Bevel11: TBevel
          Left = 379
          Top = 0
          Width = 3
          Height = 232
          Align = alRight
        end
        object Panel6: TPanel
          Left = 382
          Top = 0
          Width = 530
          Height = 232
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object Bevel12: TBevel
            Left = 0
            Top = 40
            Width = 530
            Height = 3
            Align = alTop
          end
          object Bevel13: TBevel
            Left = 0
            Top = 37
            Width = 530
            Height = 3
            Align = alTop
          end
          object Label37: TLabel
            Left = 284
            Top = 204
            Width = 107
            Height = 13
            Caption = 'Total dos Percentuais:'
          end
          object FDvGlowButton3: TAdvGlowButton
            Left = 5
            Top = 198
            Width = 83
            Height = 24
            Caption = 'Limpar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000000467414D410000AFC837058AE90000001974455874536F6674776172
              650041646F626520496D616765526561647971C9653C000002734944415478DA
              62FCFFFF3F0325002080587049BC3D60C7FCFFEFFF8BFFFFFD7BFFEFDF7F0771
              F7637FB1A9030820265C0600354F6293F0D46613F7B0F9FFF75F1A2E750001C4
              00F2023A7EBDC746E8E52EAB4F7F7F7DFCFFEBFDD5FFCF3699BE7DB2DE58089B
              5A8000C2EA827F7FFF2DE2948BE26564626260E11662E0528C1202BAA2059B5A
              8000C230F1E54E2B8317DB2DFEFEFFFBF3FFCF9753FEFF7A3DEFFFBF5F6FFE3F
              5CA9FFE7C1325D0374F5000184E10260A02DE1D12864FAF7E70BC3DD5DAB18EE
              EC58C0F0EFF70B0601BD6266A0CB26A3AB07082014035E6EB78C6215B4D4E696
              0F60F8FEB8900114C320FCE3490703AF8A3703BB84ADCD9DB9EA51C87A000288
              094933CFBF7FFF2671298533FCFBF316181050DD40FCEFDF6F867F3F6E31F06B
              4480C2A7EBE674651E983E800062420AB8795C7261C2EC824A0CBFDFAC037986
              8143800BE631869F2FA632708ACA31F0A9474AFFF9F1BB1AA60F2080184101F1
              7C8BB90AD0EFD725BDF6B3FCFD7E81E1F7AB99405B191898583918BEBEF9CCC0
              CEFD8F8199F93F03339F030333AF3FC3D5C926BFFEFEFCA36D54FFE60E400031
              4112CDBF653C6A992CFFFF7D61F8FBF9042824C1B6DE3F7493E1D5B567603648
              ECCFFB3D0C8C4C5F19442D0AD9FEFCFC3D01A4172080189F6E30F166E6D7DB22
              663B89E1CFE7830CBF5F2F8678E91F289A18C17A9980B633FEFF05E4FF05B245
              1838143B18AECC8862F878EB900F4000B1FCFBFB7786804A0C2463F05801B125
              D4738C30EF4389FFF0F06060646390B44E67787F757F2F4000B1009DBFFFF591
              FC58200D0A480664FAEFEFBF0C7F7FFE66003A174C03FDCDF0F7D71FB0F8BF3F
              607C0A20801829CDCE00010600944C63D900D526150000000049454E44AE4260
              82}
            TabOrder = 0
            OnClick = FDvGlowButton3Click
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
          object FDvGlowButton4: TAdvGlowButton
            Left = 93
            Top = 198
            Width = 83
            Height = 24
            Caption = 'Excluir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000000467414D410000AFC837058AE90000001974455874536F6674776172
              650041646F626520496D616765526561647971C9653C000002E04944415478DA
              62FCFFFF3F032500208058D0051EE7E529FFFFFB2FEA0FC3DFB8FFBF7E4BFC63
              F8C7F0FFFF9F177F19FE2DFAF7FFEF32EDB9CBEF22AB0708204664173CC9CD0B
              FEF3EFEF643E4D15496E03030646013E06861F3F187EBF7CC6F06ECF1E86F7EF
              DE3EFFFBFF6FAEE1A2F56B617A0002086E0048F3DFBF7F170AB9387073EBEB31
              FCBD778D81E1E56306865FBF181879041918E5E418DE6ED9C6F0F8C19DAFFFFE
              FE89375DBE1D6C084000810D78949BAB0474F661613B4B292E134386BFFB3733
              7CFBFE8381F1EF6F0676365606C67FFF19FEFFFAC1C0A065C4F07AC76E86272F
              1F3DFBF7FF8FADD5CA7DF700028809640A50730C9794B014A7AE16C3DF43DB19
              FEFEFCCEF0EFE73706D66F9F18FE7D78CBF0F7D33B867F3FBE31FC3EBC9B41D4
              D19181F3C74FA9BFFFFEC680F40204103810FF31FE8DE5D6D160F877FD02C3B7
              F76F18FE5C8684D337B4006693E067F873FF2E83A48115C3872B876281424D00
              010436001830D22C5C5C0C0CB76E3130FCFCC920BC6035D6287B15E5C7C0FAF9
              370387B105C3BF0B7FA44162000104F1C2AFDF0CFF3E019DFBF92303DBDF1F78
              E3FDCF9F7F400D2057FF01F3010208E682A7DF1F3E50E1E4E663F8FBE82DD826
              AC808989814D569EE1E3FDFB0CFF7EFF790A12020820B00BFEFEFBB3F8EDA953
              0CFFA55418FE7EFCC9C0CACB8AA1F72F30B6FEFE6766605550617874753F0330
              161683C40102086C0090B3E40B37C7B3B707F633B07A780363808981919919A2
              918191E1EF5F909B5918F83C7C181EEEDDCAF0E5D7B7677F19FF2F01C9030410
              3C219D8BF60B061AB4509447985BD4D195E1D783BB0CBFEEDE65F8F7EB1F03BB
              BA0A039B8C22C3E3BD9B191EBCBDF5F51FE3BF78AF2DD7C0090920805092F2C9
              48F760602A9BCCF6F797A48C862530DAA420D1F9EC11C3DDAB8718BEFDFDF11C
              A83917A61904000288113D371E097550FEFFE777D41FE67F71FFFFFD9500C510
              90FD02C85EF4EFCF9F655EDB6FA06426800062A4343B03041800C3755C60AB63
              B7520000000049454E44AE426082}
            TabOrder = 1
            OnClick = FDvGlowButton4Click
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
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 530
            Height = 37
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object Label15: TLabel
              Left = 336
              Top = 13
              Width = 69
              Height = 13
              Caption = 'Rentabilidade:'
            end
            object elocproduto: TRzButtonEdit
              Left = 72
              Top = 9
              Width = 73
              Height = 21
              Text = ''
              FocusColor = 10550008
              TabOrder = 0
              OnKeyPress = elocprodutoKeyPress
              AltBtnWidth = 15
              ButtonWidth = 15
              OnButtonClick = elocprodutoButtonClick
            end
            object eproduto: TRzEdit
              Left = 152
              Top = 9
              Width = 177
              Height = 21
              Text = ''
              Enabled = False
              TabOrder = 1
            end
            object erentabilidade: TRzNumericEdit
              Left = 408
              Top = 9
              Width = 65
              Height = 21
              FocusColor = 10550008
              TabOrder = 2
              IntegersOnly = False
              DisplayFormat = '###,##0.00%'
            end
            object brent_gravar: TAdvGlowButton
              Left = 488
              Top = 7
              Width = 33
              Height = 24
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ImageIndex = 49
              FocusType = ftHot
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              Picture.Data = {
                89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                610000000467414D410000AFC837058AE90000001974455874536F6674776172
                650041646F626520496D616765526561647971C9653C000003274944415478DA
                62FCFFFF3F032500208058D005924F392AFFF9F33BEAEFDF7F713F7FFF90F8F7
                EF0F03C3BF7F2F18FE312CFAF3F7EFB28DDED7EF22AB070820466417249EB00B
                FEF9FBE764690665497D515B066E567EB0F8E75F1F184E3EDECD70E3D3F9E740
                8372F7863D580BD30310407003E28FD9047FFFFD73A1359F37B7BAB001C3B3EF
                8F199E7D7B0A9693E2926690E09461B8F6FC14C3F2AB4BBF029D1D7F32E911D8
                108000021B107BD84AE9E79FDF87AD05BCA55485F5198EBEDECFF0E7DF5F20FE
                C7C0045204F22B233383B59823C3D5A7A718965C5AF60CE812DB4BD98FEF0104
                10489EE1EF9FDF31D28CCA52209B419A7FFCF9CDF0EBEF6F863F40FCEBCF2F06
                609830B84A79339C7A71984147DA8CC1505847EAE76F8618905E8000021BF0FB
                EFCF5843093B8627DF1E0135FD61F80B0CB87F409A11E802C67FFF19FC15C218
                1C653C1932744B189E7CBACF60AFEACCF0EB27432C482F4000810DF8FEF3A7B4
                009B10C3D3AF0F819AFF327848FB306468150235333104288633D84BBB810DDD
                7C6725C3D30FF7180439C518FE7DFF2F0DD20B10402C500318FE01C3E23FD046
                5E665E062B0907063E367E865AB30E06210E11B0E659177A196EBFB9CCC0C3CA
                030C1360C0FF86C4024000815DC0F00768F0B7D70CD25CB20C5F7E7E649876A1
                93E1EBEFCF60CDFFFEFF639875AE9BE1FAABF3E0C094E2936378FDE139D0750C
                E0280208204818FCFEBFF8E8BDDD0C529CB20CACFF18185E7D7DC630F17433C3
                FDB75719E69CEF65B8F6FA02500323031310CBF229326CB9B28B01E888C520BD
                00010436E0E7F7FF4B4E3FBBF0ECF2D3130C96522E0C6C4085EFBE3E67987EA6
                95E1DA8BF30CCCFF9918D8989819EC953C194EDF3BCC70E1DACD670CBF189680
                F40204103C21E94C920DFEFAF3FFC26493206E23596B86C71FEF03FD751F1C2E
                32824A0C327CF20C27EF1D6458B075CB572656C6F8077D4FC0090920805092B2
                52B76CF0BF9FFF271BCBAA4B7A68B902435B04E45486D75F5F306CBBB08BE1D2
                F5BBCF199918731FF43F81276580006244CF8D0A4DB2CA0C7FFF47010336EEFF
                CFFF120C7F81299191F105506A1130E4973D98FC04253301041023A5D91920C0
                00B9755E16835EC02B0000000049454E44AE426082}
              TabOrder = 3
              OnClick = brent_gravarClick
              Appearance.BorderColor = 12179676
              Appearance.BorderColorHot = clHighlight
              Appearance.BorderColorDown = clHighlight
              Appearance.BorderColorChecked = clBlack
              Appearance.ColorTo = 12179676
              Appearance.ColorChecked = 12179676
              Appearance.ColorCheckedTo = 12179676
              Appearance.ColorDisabled = 15921906
              Appearance.ColorDisabledTo = 15921906
              Appearance.ColorDown = 11899524
              Appearance.ColorDownTo = 11899524
              Appearance.ColorHot = 15717318
              Appearance.ColorHotTo = 15717318
              Appearance.ColorMirror = 12179676
              Appearance.ColorMirrorTo = 12179676
              Appearance.ColorMirrorHot = 15717318
              Appearance.ColorMirrorHotTo = 15717318
              Appearance.ColorMirrorDown = 11899524
              Appearance.ColorMirrorDownTo = 11899524
              Appearance.ColorMirrorChecked = 12179676
              Appearance.ColorMirrorCheckedTo = 12179676
              Appearance.ColorMirrorDisabled = 11974326
              Appearance.ColorMirrorDisabledTo = 15921906
              Appearance.GradientHot = ggVertical
              Appearance.GradientMirrorHot = ggVertical
              Appearance.GradientDown = ggVertical
              Appearance.GradientMirrorDown = ggVertical
              Appearance.GradientChecked = ggVertical
            end
            object RadioButton1: TRadioButton
              Left = 5
              Top = 2
              Width = 61
              Height = 17
              Caption = 'Produto:'
              Checked = True
              TabOrder = 4
              TabStop = True
            end
            object RadioButton2: TRadioButton
              Left = 5
              Top = 18
              Width = 61
              Height = 17
              Caption = 'Perda:'
              TabOrder = 5
            end
          end
          object rtotal_rent: TRzNumericEdit
            Left = 400
            Top = 200
            Width = 105
            Height = 21
            TabOrder = 3
            IntegersOnly = False
            DisplayFormat = '###,###,##0.00%'
          end
          object wwDBGrid6: TDBGrid
            Left = 0
            Top = 43
            Width = 530
            Height = 150
            Align = alTop
            TabOrder = 4
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clMenuText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object check_rentabilidade: TDBCheckBox
          Left = 8
          Top = 208
          Width = 209
          Height = 17
          Caption = 'Utiliza Rentabilidade'
          DataField = 'USA_RENTABILIDADE'
          DataSource = DM.DTS_PRODUTOS
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object FDvShapeButton1: TAdvShapeButton
          Left = 4
          Top = -12
          Width = 221
          Height = 159
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            474946383961C8009D00C4000035352AD5D5AAF3F3C200000086866B444437BA
            BA95EDEDBDFCFCCA535343686853CCCCA3C3C39C9B9B7CE2E2B5A2A28172725B
            DCDCB07B7B62191914ACAC8A91917425251DB2B28EF7F7C68C8C7060604DE7E7
            B90E0E0BA8A886969678FFFFCC21F9040100001F002C00000000C8009D000005
            FFE0278E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A070482C1A8F
            C8A472C96C3A9FD0A8744AAD5AAFD8AC76CBED7ABFE0B0784C2E9BCFE8B47ACD
            6EBB2C83022B321834DC781CA7CE62D43979813475032D7B0304828A2F842D02
            8D8B912A902C8792972775162E1E751D98A022942B740310A1A0962E75A7A897
            AA2D7589AE92057C2D0B9EB479020A1E2312751222071001281D750FBB787003
            1C7718841B1F007508271A750E241405161613751ACC5F1610020787750C0487
            C11C0628E203D81084F87FE55D0803130B1F10642004C896BF01008E9DB0D420
            1F800204E07CDAC745DF88751B2C70802301DB890A139C7150D8CD83478A2D0E
            FF1820900FA10101411A0E9037E2C133850666AED8B3C9442E4428534460A0A0
            258775F818FCD8500740890C0DB021A83080E4093A13689660396062D0121700
            209D004041850A0A0A882568758741AD2536583B79028302144C9F9538A0F628
            80B2191E1838100981830A09F215F06033C5027AFE7C603028C74400BD34F624
            241121714BA313C8162820E1C26031011A4850ABB1250398231270208C97E00F
            423D49EC2127C35D1D0C28102010B06143040ACF9C7DCE773434E006D01B4408
            40BDAD8F081D1A28D0006EC2D1E575203A005E6082895BC1E959A0BD23599D04
            DC46289351CAD40B047B300810408100046BE08177D480044E90C0810766A060
            FF06062CE0E002EC8980C102065490C1811A0D18603E0910B00106275D66C21E
            2234509902B37CC0003D29EEA0C03A2338801E0C87B4F2C2050300844B051A24
            E0DD771B0629E486039245000311A6000E6CC470F08B08891870D708FDFCF683
            021354F6813809CC10000149BAE04E0EB69410810368A6E940076CB6D9150470
            C609E75F7402E019050E308982010944308953243C00C807B9A568501DE6FD40
            017BCF2C83C40185E000C70C91AE92DB0A03043349A5C4445AA808EEC9C42910
            4C4D99C4004ADD40A20CA362EAD50A4E697982A6252052C75D7CF8E127A175E8
            E90302932E910107D4D83023232F88F842442B58300C09AD7E708F561B8823AB
            FF0F1DACAA04A419DC80590CD1A270C1A0C8AA305AAD0B8D9AD804D6ED208EA9
            4A1CCB6AA2E0BE20680F0D902B020736CAD72567E189204044A1F54B03574EB0
            E42BB8809670C7072866721EAD242CC001702D38C08007122890805A7516E0B1
            BE1F40AA6F0613D0254A64142065110D70342C030332CFE00034C6D6FC414322
            C0D1A228E77D706DC9559580C0060F780C807743120280A32288E315382A7FA0
            8F01CA254543431DD17081380FD780A30A1C28B06B26FFA20B65ABAD72608D4F
            025A0080061574101F0A111040C01D7C0DD0ED087400A0D4213A5E84DED9F75C
            234330E1BE70CF0418D7508F0A11C0552B6F6A7F3066E6F27D90B6085441906A
            FF0EA6D261827202E0D8AF41679350D44C55AF60ED0D39156DACE5255C7A1EBC
            9D7F20819D4197600DC97FF1F073AB53D50190355A1A343A09E30E90C0C2E63E
            133BB8F6D9302CF58462CA7B0BD2B8D050021A10D00192C6D6DAAEB48956B06A
            E2B88B3010AA2F04934098944A8F0342837CCF8204F4628101FE92A10D858434
            0D48D2CFAC76B71278208070A80057FE660219E9AF05D12BD6FE2EC88206E84C
            14246304E65E003C1A2020001D408B5A7EF4998D2480025593C6F5F24582CB70
            80710BECD4007487020B426D8339444110133388A1AD8025F8F381001EF03B97
            1D420E61230100CD04A0018CB056F2B2CC33FC4783523CEF882810C0048288A9
            FF0FA6C082251040003CD0A370B82C487E295F1245801F0D38001B932280AC4A
            5882437CAE8F5924C18AFCC683647060570C78C017B792820498115301548100
            22B0870238B235702C526834B41CB25CA02EB6D35CB426F0AC12508583230AA4
            FCEA10451C1C000EADF803212A108347E4AF697F200BF932C080EBD54000AB39
            04072830827B90802599D020161FE98C46BAA40700EAA11DC0E5CB14682B0BA7
            DCC43559F9BADE8D408F72688A9202A90D23D2EE3D8EC9DE1BFED8022276E131
            886241B67A26022D69C29A81B486327500A0F58922922B8000403B38B92EE485
            8B24500B94EA1907ABF10F05A320C106CC5983BE3D749CE05A46001253807D9E
            FFC002089D01A01011C21BC0A19599E8498B12214E88AAB20779D1C90A1A0383
            1DEE6102EA40E50994A58359888C8736F849E34A54076AB0D2168068A90920F5
            D21D88F1652A9011F75C6A0A6A44C016F1A3D2507B23023B6D1506AF24CB5005
            C08102DCD0A5E614EA100E00199239887A1CA0E51B9E113911F8013E29104BE1
            6E308B42A0B40624226B294D208E0FD08182D0D2694D225A020870E087306880
            6758293C42804978ECFCE80E3795D50FEC61AA50488C8EFC8082CBF0268BE310
            226375735118308E10DFABA23AEBF9C811CC0FB4D9E2C0F55862302A644AAB28
            280F3730704DF9FCF604891B2A80323B4E7C34A08182E4CA005A27D0A8DA628E
            FFB9E34010C3770570700E7003204E3E2C0017599C6003935541951042CC5834
            850275ADCDB73E30CF1434D504B6F86B3528DA049BA8AC5536F1803566F11038
            38AA147F658033804A026DFC01B228B0063AAA4902679C84B4F6656E0A102016
            14E46B018924800420B01D0D9858030A8080042AD000037894078FD159DB0A81
            1E8162A0C32AAAC3274D10BDCD56221F219D4104AC51B87EA440A014862873FF
            C08190C8AD4E0000871BDF48100B142003D8556F23A417A95115E501568E9C00
            7A32805FF841A6A6749A98D6D25A1D2047668DD3AEE4325B5C132E00023E7248
            674B401623172211C90018880A3A02D8E4E2015CD9EB085E37DB0E8EC69F3590
            FF51001B47BF4194F46D3D708037F061010D64B96885F8CE981B969142F07404
            72B51A44EA80BFC9A61A0A7BD8B1D5EC6BAC685D26CB3608462F943358A24EA9
            52CFE014218075C559EF2B0E45D52CABA70007CC7505A2C62A29A182EC2DAB58
            4C18F2012A912F62819B35646195E2A8E25219075C1F2131B97908B425674685
            066102BCE3F0AD3A8366ADB69768C79880364ED0A53B0CA49999780F68932093
            421FF7BB8C4C01725EFC819631A2D72C38755A1271B32C16C546BCED59B0E8B9
            B20F08355AD2D071929130237154AD719886A8AC25D68206589955D02A4100B8
            4402196949D2230007A7FA3AEB9846CB82D3ADC28C1A32B470E16A12D5FC2A94
            FFB00673E396C0829133EBD9CC3A3AB9ED7C6576B8CC6AEBC3F026EC01BA37ED
            8047C2B55A113816532F30007F21DA3AA199802518E3542EF45436619B22A91F
            985F16853A7025EC01B1767D5153861AAE4EB43D7841E080ACEB2C020D706001
            1E205730566E35B25A0E0291534E496D725F251485C13167D557952E030418A0
            018E0F89779C0C00092CA0AE9A688534005A08055C6A031CB85BB0E7BBE87B56
            A113A0F7664D830FB41CA8843B54060F00008201380C1354D3FC80DA81960B12
            74025A0629A967D6BE0469481B5AF115E000BA2EFC6425206B9A308BB93D7E28
            7A28447A972A808C44313A6D95E71191216C1D002F05774E62913B4146A1B702
            FF178025F830379016030E36009F2422297217EE6613ADE02022A02CF1741E75
            B0674D3010E4E75910862987C7727B22500401117D270364856DD59522A12657
            F8573214700C07B0342B0350EBA56853D06826A2159D562FB140021830405596
            01E1F70318801C23812AD1244B9C610D068200DAA05B1F807F3C147203B07E49
            D00F16B048951233C9427A76D05678C5046A8581267066CFC024A5C0434C457A
            4AD00F1C00787A6438DFF776DF27000B607B90B14306508449E0602AF308C5F6
            081460395A37346D98054A35025A124D6FA0000CF01F546601092001BD6405B6
            10492F6702C5630232F13D16545B4F801CE3675C0D7366E6D60F01607B09D001
            FF21B805398139B69409F8734AC5468AD4D60416746F26500A38780232E28760
            B0078E2201D26674CFF03308C038104705E25087D8C602C8C405DC4179005315
            D7F53665D1652850148F6534C3C38B56503BE29858A2280245C105F887100028
            7DF4D025D3C874561326CDD728251072F2A705071085BFE850C4D7786ED80450
            082327B00099E827D3683A56F32A22503B23914602B705EB883F50950265E205
            9E6101B1633277804C89702200254C6D872384C4055A1774253059F8A0494CD3
            7953601098770248E54BA3720F379524AFD38E56400F0060398C032401325059
            B00070F00F27408AAF683567230D790650ACE30576E134A3530A1F582B757805
            FF54380F0D8502C618006C650A8314922E390524F907F2002C8A751E5779050E
            463D83E44F84A0017EE200E22063BCC705CB880F898000B6908F93B096E3B80D
            75A10D0450848CD33074A9581738061A9001B0419236221C017112F92705C221
            8C02C30A28002913206B7C715387E785B9939663C0540DE3119219103ED60418
            E0005FC26BB2A34AF7F0174EF36A259089988906EB38020F735567191E069094
            3E1000060001E8870F0C69028923144D219C23C08F82608544250A04F09B7F50
            00C9D903C4D94402A261C0306E4B550709F89D1C909D6BB05EC51229DF200FF5
            910F59528917A0931157804B132094F800CE2948F9911E65E6024CE59D697008
            FF34216C9E030018C000872220A1B1A03F4220C9D742AE075DF6F252F7C07DC6
            25946B601013112928520820450C57854B228A0F1AB00011909B2B1079579802
            C9007A7AC38277D906F3D35BF2F162C281000B40002A894B1C90001070012032
            722FF013BE1401FB963B249036F4909F66F013345A7C6320282B1A1C64C53B86
            921B2469A165500A4F3A8B636000E2D0818ED5402C585E6DD6064C654EDC6102
            89516C56401518AA5576271D70513B028806F8085138B80780F904D6F08F0DF7
            6CB062258190A7995035F4C0059AE10251F663013906215752D5A77F8FBA04E6
            B50A128A454FBA06216783FC920D75508E42576F292AA805B96CD1B998238023
            FF2128139B1A05F8379ED0027A39412C8A209D5884379A21A44B40157DFA9DA2
            2A4A0580856480AB23002908250E1310AC51200E806A263B341A2756458579AB
            111579FEE484D6689901237AE06112D6CA7B95C695FEB0AD516073F299029062
            9B06B007B27A0621772939B1027E206756909706C0ABD0DA229CF7AE6610AF1F
            030E1BB10226D38C503064533A08972213FE5A0691FA100AE0317DF70C06FB04
            9FA72A9CC2B08B901755B9296EFA0421C7AC2EE07F1FD009A114083FA18101A7
            A548C03838801C24A0B18A503BE9BAB256E07C3830A94475B279F03A4C8A452C
            6B049731011DFB025EFA01D153B368400F2708B454B000D6A0011D98129CD2AE
            FF76A0AF63306C31500A1FCB0482E79838307F2360B5512108EB2503B93001E6
            B9046D88B52800B3231000D650B681807FE7A89C3B34B5E7B6883670A42210A2
            749B074CD5B5E374B7468000F4F0AA30709112A20D81EB0602C18731D0320707
            0565B903D724006DDAB4636041B95859392205585391C61249F0A0B764C015FA
            A502F4E0B640B08084CB3025C038C41A068480A21858A94090532599037EB04F
            A4C87F6BE07B30F03AABFB875AAB03F066025989073F11BB2700209C2B0468B9
            953A10BAB99B07B00003262B056539BD2BC0142800706D503B71DA0514F08CB6
            69525D9BAF906B10C20B060E9600A8BB0AFD18089EF1B9591053F5DB0267970A
            50639905AFA3B831600DE09B06158A060671BF94F2AB5F210519F0A1EED26D0F
            BC0BB2E1BA15AC06DA50B119BC08E071BE1D1CC2223CC2245CC2267CC2289CC2
            2ABCC22CDCC22EFCC2301CC332EC042100003B}
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          Version = '6.1.0.6'
        end
      end
    end
    object TabSheet8: TRzTabSheet
      Color = 16119543
      Caption = 'Ve'#237'culo'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 912
        Height = 232
        Align = alClient
        TabOrder = 0
        object RxLabel31: TRxLabel
          Left = 8
          Top = 34
          Width = 37
          Height = 13
          Hint = 'Marque se utiliza Exporta'#231#227'o para Balan'#231'as'
          Caption = 'Chassi:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel29: TRxLabel
          Left = 8
          Top = 82
          Width = 58
          Height = 13
          Hint = 'Marque se utiliza Exporta'#231#227'o para Balan'#231'as'
          Caption = 'Peso Bruto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel30: TRxLabel
          Left = 8
          Top = 106
          Width = 69
          Height = 13
          Hint = 'Marque se utiliza Exporta'#231#227'o para Balan'#231'as'
          Caption = 'Peso Liquido.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel32: TRxLabel
          Left = 265
          Top = 34
          Width = 49
          Height = 13
          Caption = 'Cod. Cor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel33: TRxLabel
          Left = 396
          Top = 34
          Width = 53
          Height = 13
          Caption = 'Desc. Cor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel34: TRxLabel
          Left = 8
          Top = 58
          Width = 50
          Height = 13
          Hint = 'Marque se utiliza Exporta'#231#227'o para Balan'#231'as'
          Caption = 'Ano Fab.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel39: TRxLabel
          Left = 238
          Top = 58
          Width = 77
          Height = 13
          Caption = 'Ano Mod. Fab.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel40: TRxLabel
          Left = 255
          Top = 82
          Width = 60
          Height = 13
          Caption = 'N'#186' de S'#233'rie:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel41: TRxLabel
          Left = 251
          Top = 106
          Width = 64
          Height = 13
          Caption = 'N'#186' do Motor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel67: TRxLabel
          Left = 396
          Top = 57
          Width = 62
          Height = 13
          Caption = 'Tipo Ve'#237'culo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel68: TRxLabel
          Left = 532
          Top = 34
          Width = 66
          Height = 13
          Caption = 'Cod. Modelo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel69: TRxLabel
          Left = 532
          Top = 58
          Width = 63
          Height = 13
          Caption = 'Esp. Ve'#237'culo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel70: TRxLabel
          Left = 532
          Top = 82
          Width = 75
          Height = 13
          Caption = 'Cor. Denatran:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel71: TRxLabel
          Left = 532
          Top = 105
          Width = 87
          Height = 13
          Caption = 'Tipo Combustivel:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit6: TDBEdit
          Left = 83
          Top = 30
          Width = 174
          Height = 21
          Hint = 'Referencia do Produto'
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'CHASSI'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnEnter = db_nomeEnter
        end
        object RxDBCalcEdit3: TRxDBCalcEdit
          Left = 83
          Top = 79
          Width = 93
          Height = 21
          DataField = 'PESOBRUTO'
          DataSource = DM.DTS_PRODUTOS
          GlyphKind = gkCustom
          Glyph.Data = {
            46010000424D460100000000000076000000280000001A0000000D0000000100
            040000000000D000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
            88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
            88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
            88888888888888000000}
          ButtonWidth = 0
          NumGlyphs = 2
          ParentColor = True
          TabOrder = 1
          OnEnter = DBEdit5Enter
          OnExit = DBEdit4Exit
        end
        object RxDBCalcEdit4: TRxDBCalcEdit
          Left = 82
          Top = 103
          Width = 94
          Height = 21
          DataField = 'PESOLIQUIDO'
          DataSource = DM.DTS_PRODUTOS
          GlyphKind = gkCustom
          Glyph.Data = {
            46010000424D460100000000000076000000280000001A0000000D0000000100
            040000000000D000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
            88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
            88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
            88888888888888000000}
          ButtonWidth = 0
          NumGlyphs = 2
          ParentColor = True
          TabOrder = 2
          OnEnter = DBEdit5Enter
          OnExit = DBEdit5Exit
        end
        object suiDBCheckBox3: TDBCheckBox
          Left = 8
          Top = 5
          Width = 63
          Height = 19
          Hint = 'Marque se utiliza Exporta'#231#227'o para Balan'#231'as'
          Caption = #201' Ve'#237'culo'
          DataField = 'VEICULO'
          DataSource = DM.DTS_PRODUTOS
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit7: TDBEdit
          Left = 323
          Top = 30
          Width = 62
          Height = 21
          Hint = 'Referencia do Produto'
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'COR'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnEnter = db_nomeEnter
        end
        object DBEdit8: TDBEdit
          Left = 459
          Top = 30
          Width = 62
          Height = 21
          Hint = 'Referencia do Produto'
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'COR_DESC'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnEnter = db_nomeEnter
        end
        object DBEdit9: TDBEdit
          Left = 83
          Top = 54
          Width = 92
          Height = 21
          Hint = 'Referencia do Produto'
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'ANO_FAB'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnEnter = db_nomeEnter
        end
        object DBEdit10: TDBEdit
          Left = 323
          Top = 54
          Width = 62
          Height = 21
          Hint = 'Referencia do Produto'
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'ANO_MOD_FAB'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnEnter = db_nomeEnter
        end
        object DBEdit11: TDBEdit
          Left = 323
          Top = 79
          Width = 198
          Height = 21
          Hint = 'Referencia do Produto'
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'N_SERIE'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnEnter = db_nomeEnter
        end
        object DBEdit27: TDBEdit
          Left = 323
          Top = 103
          Width = 198
          Height = 21
          Hint = 'Referencia do Produto'
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'N_MOTOR'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnEnter = db_nomeEnter
        end
        object DBEdit28: TDBEdit
          Left = 459
          Top = 54
          Width = 62
          Height = 21
          Hint = 'Referencia do Produto'
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'TIPO_VEIC'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnEnter = db_nomeEnter
        end
        object DBEdit29: TDBEdit
          Left = 619
          Top = 30
          Width = 62
          Height = 21
          Hint = 'Referencia do Produto'
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'COD_MODELO'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnEnter = db_nomeEnter
        end
        object DBEdit30: TDBEdit
          Left = 619
          Top = 54
          Width = 62
          Height = 21
          Hint = 'Referencia do Produto'
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'ESPECIE_VEICULO'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnEnter = db_nomeEnter
        end
        object DBEdit31: TDBEdit
          Left = 619
          Top = 79
          Width = 62
          Height = 21
          Hint = 'Referencia do Produto'
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'COD_COR_DENATRAN'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnEnter = db_nomeEnter
        end
        object DBEdit32: TDBEdit
          Left = 619
          Top = 103
          Width = 62
          Height = 21
          Hint = 'Referencia do Produto'
          CharCase = ecUpperCase
          Color = 15263976
          DataField = 'TIPO_COMBUSTIVEL'
          DataSource = DM.DTS_PRODUTOS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          OnEnter = db_nomeEnter
        end
      end
    end
    object TabSheet6: TRzTabSheet
      Color = 16119543
      Caption = 'Grade'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 912
        Height = 232
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DBCheckBox1: TDBCheckBox
          Left = 16
          Top = 16
          Width = 105
          Height = 17
          Caption = 'Utilizar Grade'
          DataField = 'USA_GRADE'
          DataSource = DM.DTS_PRODUTOS
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object FDvGlowButton1: TAdvGlowButton
          Left = 8
          Top = 60
          Width = 121
          Height = 24
          Caption = 'FDiciona  Grade...  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 49
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000467414D410000AFC837058AE90000001974455874536F6674776172
            650041646F626520496D616765526561647971C9653C0000012D4944415478DA
            62FCFFFF3F032500208098182804000144B101000144B1010001C472EAD4298A
            02012080584084B1B131599ADFBC79C3001040702F9C3D7B962C43000288E230
            0008208A0D000820166215EE3EBB9161DF85CD0C1FBFBE67F8FDE737838B911F
            83B34E00034000C10DC01790DB4EAE6238FF6C3783BDB529838C902AC3FEAB1B
            18365D9ECAF0E8F93D068000629197970787263EB0FEE86286004F7786BF4C7F
            19F4255D19F65C5BCD60A16BC5B06EF34A0680006200E50542D8A7DAF0FFB62B
            73FE23834D97A6FE37CF96FC0F10404405E2DB8FAF7E5C7D768CA163772298DF
            B12B91E1EEAB4B20E60F800022CA807FFFFFF59EB8748C818D818561F3E5690C
            6C8C2C0C472E1C04494D0508204662B3B3458E540790CA02625E20FE0CC4D34E
            4C7956011060001F5A84A9D97C28CD0000000049454E44AE426082}
          TabOrder = 1
          OnClick = FDvGlowButton1Click
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
        object FDvGlowButton6: TAdvGlowButton
          Left = 8
          Top = 92
          Width = 121
          Height = 24
          Caption = 'Limpar Grade...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 49
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000467414D410000AFC837058AE90000001974455874536F6674776172
            650041646F626520496D616765526561647971C9653C0000012F4944415478DA
            62FCFFFF3F032500208098182804000144B101000144B1010001C472EAD4298A
            02012080584084B1B131599ADFBC79C3001040702F9C3D7B962C43000288E230
            0008208A0D0008201662153EDB3C83E1E9E6690C5F1FDE666015976290F6C960
            E0714A64000820B801F80212A4F9C3F1950C06C1C90CEC8ADA0CDF2FED62B87E
            7405C38FDF0C0C0001C4F8E2C50B82D178BDC88AC13C3A9B81F3EE010686A747
            1818F80518DEB0C8335C39FF900120801840798110DEE3C4F2EFDFD975FF91C1
            FB7A89FF20718000222A0CFE32FF7FFAEDC25619EE4D590C3FBFBF60F80614FB
            FC891928CEF00C2080888A052E21F1B9578F1FFAF3FC0727C327665686F7EF18
            19EE3C65FC0BF4FB3480006224363B1F8D90ABF8FAEE593AF35F4679908B80BA
            A6BBEFFAD306106000B64A8BAC40D9D8800000000049454E44AE426082}
          TabOrder = 2
          OnClick = FDvGlowButton6Click
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
        object DBAdvGrid2: TDBAdvGrid
          Left = 138
          Top = 0
          Width = 774
          Height = 232
          Cursor = crDefault
          Hint = 'Mostra os Produtos Similares'
          Align = alRight
          BorderStyle = bsNone
          Color = 14609391
          ColCount = 3
          DrawingStyle = gdsClassic
          FixedColor = 15717318
          RowCount = 2
          FixedRows = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ScrollBars = ssBoth
          ShowHint = True
          TabOrder = 3
          HoverRowCells = [hcNormal, hcSelected]
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ControlLook.FixedGradientHoverFrom = clGray
          ControlLook.FixedGradientHoverTo = clWhite
          ControlLook.FixedGradientDownFrom = clGray
          ControlLook.FixedGradientDownTo = clSilver
          ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
          ControlLook.DropDownHeader.Font.Color = clWindowText
          ControlLook.DropDownHeader.Font.Height = -11
          ControlLook.DropDownHeader.Font.Name = 'Tahoma'
          ControlLook.DropDownHeader.Font.Style = []
          ControlLook.DropDownHeader.Visible = True
          ControlLook.DropDownHeader.Buttons = <>
          ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
          ControlLook.DropDownFooter.Font.Color = clWindowText
          ControlLook.DropDownFooter.Font.Height = -11
          ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
          ControlLook.DropDownFooter.Font.Style = []
          ControlLook.DropDownFooter.Visible = True
          ControlLook.DropDownFooter.Buttons = <>
          Filter = <>
          FilterDropDown.Font.Charset = DEFAULT_CHARSET
          FilterDropDown.Font.Color = clWindowText
          FilterDropDown.Font.Height = -11
          FilterDropDown.Font.Name = 'MS Sans Serif'
          FilterDropDown.Font.Style = []
          FilterDropDownClear = '(All)'
          FilterEdit.TypeNames.Strings = (
            'Starts with'
            'Ends with'
            'Contains'
            'Not contains'
            'Equal'
            'Not equal'
            'Larger than'
            'Smaller than'
            'Clear')
          FixedColWidth = 14
          FixedRowHeight = 22
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
          HoverButtons.Buttons = <>
          HoverButtons.Position = hbLeftFromColumnLeft
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'MS Sans Serif'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'MS Sans Serif'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'MS Sans Serif'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'MS Sans Serif'
          PrintSettings.FooterFont.Style = []
          PrintSettings.PageNumSep = '/'
          ScrollWidth = 16
          SearchFooter.FindNextCaption = 'Find &next'
          SearchFooter.FindPrevCaption = 'Find &previous'
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'MS Sans Serif'
          SearchFooter.Font.Style = []
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurence'
          SearchFooter.HintFindPrev = 'Find previous occurence'
          SearchFooter.HintHighlight = 'Highlight occurences'
          SearchFooter.MatchCaseCaption = 'Match case'
          SortSettings.DefaultFormat = ssAutomatic
          Version = '2.4.0.2'
          AutoCreateColumns = True
          AutoRemoveColumns = True
          Columns = <
            item
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = 14609391
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlack
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clBlack
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 14
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = 14609391
              FieldName = 'COD_BARRAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'C'#243'digo Barras'
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlack
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clBlack
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 94
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = 14609391
              FieldName = 'PRECO_VENDA_GRADE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Pre'#231'o de Venda'
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlack
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clBlack
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 90
            end>
          DataSource = dts_grade
          InvalidPicture.Data = {
            055449636F6E0000010001002020040000000000E80200001600000028000000
            2000000040000000010004000000000000020000000000000000000000000000
            0000000000000000000080000080000000808000800000008000800080800000
            80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
            FFFFFF000000000000777777777777000000000000000000777788FFFF887777
            000000000000007778F8887117788F877700000000000778F87111111111178F
            877000000000778871111111111999178877000000077F811111111111199999
            18F7700000778811111111111119999991887700007881111111111111119199
            99188700077F711111811111111198719997F7700788111118FF111111118FF7
            1991887077F71111888FF1111118FFFF19997F77778111118888FF1111888FF8
            911918777881111118888FF1188888811111188778811111118888FF88888811
            111117877F7111111118888888888111111117F77F7999111111888888881111
            111111F77F7999991111788888F71111111111F77F7999999917888888FF7111
            111117F778879999917FFF88888FF111111117877887999997FFFFF88888FF11
            11111887778799997FFFFFF798888FF11111187777F87997FFFFFF71178F88FF
            71117F7707887997FFFFF7999978F88871118870077F87997FFF799999978F87
            1117F77000788879978799999999787111188700007788879999999999999999
            1188770000077F88799999999999999778F77000000077888879999999999778
            8877000000000778F88877799777788F877000000000007778F8888878888F87
            7700000000000000777788FFFF88777700000000000000000077777777777700
            00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
            C000000380000001800000010000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000080000001
            80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
            FFC003FF}
          ShowUnicode = False
          ColWidths = (
            14
            94
            90)
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Color = 16119543
      Caption = 'Movimento'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object graf_venda: TChart
        Left = 0
        Top = 0
        Width = 912
        Height = 118
        BackWall.Brush.Style = bsClear
        Legend.Visible = False
        Title.Text.Strings = (
          'V E N D A S')
        View3D = False
        Align = alTop
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series1: TBarSeries
          Marks.Style = smsValue
          SeriesColor = clRed
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
        end
      end
      object Chart1: TChart
        Left = 0
        Top = 118
        Width = 912
        Height = 117
        BackWall.Brush.Style = bsClear
        Legend.Visible = False
        Title.Text.Strings = (
          'C O M P R A S')
        View3D = False
        Align = alTop
        TabOrder = 1
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object BarSeries1: TBarSeries
          Marks.Style = smsValue
          SeriesColor = clRed
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
        end
      end
    end
    object tbImovel: TRzTabSheet
      Color = 16119543
      Caption = 'Im'#243'vel'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object RxLabel82: TRxLabel
        Left = 5
        Top = 8
        Width = 67
        Height = 13
        Caption = 'Valor aluguel:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel83: TRxLabel
        Left = 224
        Top = 8
        Width = 59
        Height = 13
        Caption = 'Valor Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel84: TRxLabel
        Left = 4
        Top = 32
        Width = 65
        Height = 13
        Caption = 'C'#243'digo IPTU:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel85: TRxLabel
        Left = 4
        Top = 80
        Width = 67
        Height = 13
        Caption = 'C'#243'digo '#193'gua:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel86: TRxLabel
        Left = 4
        Top = 104
        Width = 78
        Height = 13
        Caption = 'C'#243'digo Energia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel87: TRxLabel
        Left = 226
        Top = 129
        Width = 58
        Height = 13
        Caption = 'Refer'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel88: TRxLabel
        Left = 4
        Top = 152
        Width = 45
        Height = 13
        Caption = 'Cart'#243'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel89: TRxLabel
        Left = 68
        Top = 128
        Width = 14
        Height = 13
        Caption = 'N'#176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel90: TRxLabel
        Left = 226
        Top = 153
        Width = 49
        Height = 13
        Caption = 'Matr'#237'cula:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel91: TRxLabel
        Left = 438
        Top = 8
        Width = 39
        Height = 13
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShadowColor = clWhite
        ShadowSize = 0
      end
      object RxLabel92: TRxLabel
        Left = 438
        Top = 33
        Width = 25
        Height = 13
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShadowColor = clWhite
        ShadowSize = 0
      end
      object RxLabel93: TRxLabel
        Left = 593
        Top = 36
        Width = 19
        Height = 13
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShadowColor = clWhite
        ShadowSize = 0
      end
      object RxLabel94: TRxLabel
        Left = 664
        Top = 35
        Width = 50
        Height = 13
        Caption = 'Cod Ibge:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShadowColor = clWhite
        ShadowSize = 0
      end
      object RxLabel95: TRxLabel
        Left = 438
        Top = 58
        Width = 51
        Height = 13
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShadowColor = clWhite
        ShadowSize = 0
      end
      object RxLabel96: TRxLabel
        Left = 725
        Top = 58
        Width = 21
        Height = 13
        Caption = 'N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel97: TRxLabel
        Left = 438
        Top = 85
        Width = 34
        Height = 13
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShadowColor = clWhite
        ShadowSize = 0
      end
      object RxLabel98: TRxLabel
        Left = 5
        Top = 56
        Width = 70
        Height = 13
        Caption = #193'rea Terreno:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel99: TRxLabel
        Left = 5
        Top = 176
        Width = 77
        Height = 13
        Caption = 'Lado esquerdo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel100: TRxLabel
        Left = 5
        Top = 200
        Width = 62
        Height = 13
        Caption = 'Lado direito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel101: TRxLabel
        Left = 226
        Top = 177
        Width = 45
        Height = 13
        Caption = 'Testada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel102: TRxLabel
        Left = 227
        Top = 201
        Width = 41
        Height = 13
        Caption = 'Fundos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel103: TRxLabel
        Left = 227
        Top = 57
        Width = 57
        Height = 13
        Caption = 'N'#186' Quadra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel104: TRxLabel
        Left = 226
        Top = 32
        Width = 42
        Height = 13
        Caption = 'N'#186' Lote:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel105: TRxLabel
        Left = 439
        Top = 129
        Width = 56
        Height = 13
        Caption = 'N'#186' Quartos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel106: TRxLabel
        Left = 440
        Top = 153
        Width = 50
        Height = 13
        Caption = 'N'#186' Suites:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel107: TRxLabel
        Left = 440
        Top = 177
        Width = 46
        Height = 13
        Caption = 'N'#186' Salas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel108: TRxLabel
        Left = 440
        Top = 201
        Width = 68
        Height = 13
        Caption = 'N'#186' Banheiros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel109: TRxLabel
        Left = 438
        Top = 107
        Width = 67
        Height = 13
        Caption = 'N'#186' Garagens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel112: TRxLabel
        Left = 645
        Top = 108
        Width = 59
        Height = 13
        Caption = '% Imposto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit36: TDBEdit
        Left = 83
        Top = 5
        Width = 134
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'VALOR_ALUGUEL'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit37: TDBEdit
        Left = 291
        Top = 5
        Width = 134
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'VALOR_VENDA'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 790
        Top = 6
        Width = 120
        Height = 103
        Hint = 'Selecione Ativo ou Inativo'
        BiDiMode = bdRightToLeft
        Caption = 'Situa'#231#227'o'
        DataField = 'SITUACAO'
        DataSource = dsImovel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'ALUGAR'
          'ALUGADO'
          'VENDER'
          'VENDIDO'
          'EM CONSTRU'#199#195'O')
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 35
        TabStop = True
        Values.Strings = (
          'ALUGAR'
          'ALUGADO'
          'VENDER'
          'VENDIDO'
          'EM CONSTRUCAO')
      end
      object DBEdit38: TDBEdit
        Left = 83
        Top = 29
        Width = 134
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'COD_IPTU'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit60: TDBEdit
        Left = 83
        Top = 77
        Width = 134
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'COD_AGUA'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit62: TDBEdit
        Left = 83
        Top = 101
        Width = 134
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'COD_ENERGIA'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBCheckBox6: TDBCheckBox
        Left = 224
        Top = 80
        Width = 81
        Height = 17
        Caption = #193'gua ativo'
        DataField = 'AGUA_ATIVO'
        DataSource = dsImovel
        TabOrder = 8
        ValueChecked = 'SIM'
        ValueUnchecked = 'NAO'
      end
      object DBCheckBox7: TDBCheckBox
        Left = 224
        Top = 102
        Width = 81
        Height = 17
        Caption = 'Energia Ativo'
        DataField = 'ENERGIA_ATIVO'
        DataSource = dsImovel
        TabOrder = 9
        ValueChecked = 'SIM'
        ValueUnchecked = 'NAO'
      end
      object DBDateEdit5: TDBDateEdit
        Left = 311
        Top = 76
        Width = 114
        Height = 21
        DataField = 'DATA_AGUA'
        DataSource = dsImovel
        GlyphKind = gkCustom
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
          8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
          F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
          D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
          BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
          F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
          8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
          CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
          F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
          95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
          E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
          F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
          A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
          FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
          FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
          B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
          FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
          FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
          F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
          F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
          7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 1
        ParentColor = True
        TabOrder = 10
      end
      object DBDateEdit6: TDBDateEdit
        Left = 311
        Top = 100
        Width = 114
        Height = 21
        DataField = 'DATA_ENERGIA'
        DataSource = dsImovel
        GlyphKind = gkCustom
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
          8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
          F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
          D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
          BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
          F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
          8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
          CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
          F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
          95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
          E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
          F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
          A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
          FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
          FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
          B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
          FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
          FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
          F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
          F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
          7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 1
        ParentColor = True
        TabOrder = 11
      end
      object DBCheckBox8: TDBCheckBox
        Left = 6
        Top = 126
        Width = 49
        Height = 17
        Caption = 'Placa'
        DataField = 'PLACA'
        DataSource = dsImovel
        TabOrder = 12
        ValueChecked = 'SIM'
        ValueUnchecked = 'NAO'
      end
      object DBEdit63: TDBEdit
        Left = 83
        Top = 125
        Width = 134
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'PLACA_NUMERO'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit64: TDBEdit
        Left = 289
        Top = 126
        Width = 136
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'PLACA_REFERENCIA'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit65: TDBEdit
        Left = 83
        Top = 149
        Width = 134
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'CARTORIO'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit66: TDBEdit
        Left = 289
        Top = 150
        Width = 136
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'MATRICULA'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit67: TDBEdit
        Left = 539
        Top = 8
        Width = 240
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'CIDADE'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 21
        OnEnter = suiDBEdit8Enter
        OnExit = Sds_c
      end
      object FDvGlowButton7: TAdvGlowButton
        Left = 505
        Top = 6
        Width = 31
        Height = 23
        Hint = 'Pesquisa o Municipio,IBGE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D494844520000001E0000001B08060000006BFD3F
          11000000097048597300000B1300000B1301009A9C180000000467414D410000
          B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
          75300000EA6000003A980000176F925FC546000006C74944415478DA62FCFFFF
          3FC3400080006262182000104003663140000D98C500013460160304D080590C
          10402CD8041F3C79059164616678F0F815FBDD872F5CD8D8584C801900230B30
          323230FCFDFBEF3D273BDB3E2E4EB67B9FBFFE08FDF3F79F2250F81F3717C727
          A019FF7FFCF875EECDFB4FB724C4045EC9488880D433000410568BBF7EFB0924
          FF33B0B2B2307CFBFED318E89059CCCC4C528C0C8C186AFFFEFBC7C0C6CAB259
          5B5576E1874FDF5C6FDF7F3E17A8166CEE3F5056056146C64FEC6CAC7B850579
          2B9999986E8284000208ABC5EF3F7E01AA65046BBCFBE845342B0BB314131366
          ACFCFBF71F64E9115303D57C1E4EF64F8F2EBF8902590AC46079668452BE5FBF
          7E07BE7BFFE5D95BFECFB9C010F90F10402CF8E20158B8887DFEF25D1FE4084C
          4BFF313031319E06FA340318CCF7AFDE7A2C040C1D2B6C0E042726A0F8F71FBF
          4C9FBD7CC70274F06F8000C2AAEAD79F3FE0207CF4F4B5DE9F3FFFACD12D06C5
          11C8206D35B91C692991ABEF3F7C61F8F9EB0F231323D3070686FFB83CC1C0CE
          CEFA5C4488EF8FA8301F03400061B5F8F7EF3F20CCF8EDC72F3758910AA2FFFC
          FDCBF0EBD71F067E5E2E06171B7D900F026EDD7B5A0B8C1A5D61419E77ACACCC
          CB7E031D0D8A02907A640C12E3E4605B25252EF49F878B83012080B00635D097
          0C1F3F7D137AF5FA833BC8DABF40CB80863208F2F330A8294A319819A8325CBF
          F384E1F683E795FF80BE077AD51D985AD38D7494D75FBC7EBF1D9438415101D2
          CB040C2D5080313333BF11E0E3BEF2FAED4786E72FDF33000410568BF979B941
          AED3FAF9EBB70C1F3727030F0F278394B82083B48430031F0F1758CD959B8FC0
          BE00A57C60D05B7FFAF26D8E9EA6FC7D3D4D3986CF5F7E00F13706602A07E68A
          1F0C3F7EFDF90FCC6A7DF2D2A2976EDE7BC6000C15268000C26A315013F3EF3F
          7F9579B93985988029F4D7EFBF0C8F9FBD6578FAE23D030F370783A6B234032F
          907E0AF2D57F26A0C57F198049D902E8580B506A78F1FA03C3C3676F189EBD78
          07CC9A3F80FAFF7C55969738FC9EE72BB86C00266A1E8000C26A31308B889EBF
          7AAF08A8001C4CE06806C715246F02F3EA6B6539F1A4771FBE047CFEFADD8F83
          9DEB9B9589BAE49D072FD88E9DBD0EB618940099A1291C68D90BA0E577418950
          495E9C71EBDE33CC000184C3C7DF9D80966A00F32FD6D4F9F4C55B163E5ECE93
          065A8A3B9EBE7CD7A9A624F50C1877974F5EB8ADF8E7CF5F06903E66561678B6
          039660AB80C1FC02E48BCB371EB2EC3F7E85052080B0A6EAD7EF3E59333331B2
          62936304271646AE078F5EAB007DF2474B45E6F6ED7BCF5C8F9DBD29CE08092D
          06E4EC0774E7375161DE8B9FBE7CFFFFF9F33786376F3FF1DFBAFB8C07208098
          B01BCEF015E4585CF91168F06721419E8FC00284E1D6FDE741D76E3F5E008C63
          2EF4FC0E8A1AA09A87922282DB39D859199EBC78CBB461E7295066FB09104058
          2D0626A04DC0A0FE012A44FE61C98F405F6D959312B971E1DA03F5ABB71EF502
          B30A3FA8E040CFBB7F80795A5880F7280707DB67A0C31864A544788145F04FA0
          196F0002086B1CAB2B499FFAF8F97BE18F9FBFC2818A5480F1048F6CA0BDEF79
          B8D85703A343ECEBD7EF71C05AEB3FD0574F215E84945B607F83F32E1383B4A4
          F02271510150AA673878E2EA576061F35F889F9B0D2080B05A0CCC77BF4485F9
          67898BF02F7BF5E6031F30E5B2018BC8FF205F000B042660283CFEF8F92BAF90
          20EF6260E8CE018A43A385115C60804A38A083198196FD979716790ACD520C9F
          3E7FFDAB2023FE9F8B83ED2F400061B518986A8196FF06168FBFBF7CFEF6E30B
          A85C06590AB4089C373555644035D87B60B6790F8A577636166891C8CAA0AFA9
          C870F3DE5370360417BDC0542E2D21C000CA4A06DA8AFF9FBD7A0FCA8EBF0002
          880957CA056503A04F195EBDF9083498155C09B0B2B03002F32E83A49820C872
          C60F1FBF00F157783E07FA8A1918E78C4202DC204BC0E6DCBAFB14AC1F182560
          6C6DA2C16066A8CA00104038AAC5FFCCC0A2105483FF03662B7E6041F00B5856
          FF7CF6FCED7F60826102D6A7FF1E3F7BCDC4C6C60A0C59C63FE04407D4C4CBC9
          FEF7EBB7EF8C4F5FFE0515B9C0907B072EE980A99EE1FFBFFF4C40DF339EBA78
          E72F073B0B03400031E128B9D881F1F01FE4E20F9FBEFE04169BBFE5A5C5FE7D
          F8FCF5BFA498F0BFDBF79F31DE7DF8F23FA87A03D6C5209FFD070529C8A2FB8F
          5F830A20C68327AF3102132013304533DF7BF81228FE8AE1FBCF9FFF81C530A7
          86B22C2B4000BAEA2505401806C2B0A3AE7DA094EC2C8AF7BF5EA452FCD3BD37
          089319BEBFA895B6A575D49FE2D0F772482391E976EE453456F1FB11B5AE6CBA
          B3855C3D02C5BC15429D87695FA70A1EA233A437544BB378953E010600C1D442
          6D06AD16470000000049454E44AE426082}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
        OnClick = FDvGlowButton7Click
        Appearance.BorderColor = 12631218
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 14671574
        Appearance.ColorTo = 15000283
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 14144974
        Appearance.ColorMirrorTo = 15197664
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
      object suiDBEdit7: TDBEdit
        Left = 506
        Top = 33
        Width = 77
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'CEP'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
      end
      object DBEdit68: TDBEdit
        Left = 618
        Top = 33
        Width = 41
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'UF'
        DataSource = dsImovel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 24
      end
      object DBEdit69: TDBEdit
        Left = 720
        Top = 33
        Width = 59
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'COD_INGE'
        DataSource = dsImovel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        ReadOnly = True
        TabOrder = 25
      end
      object DBEdit70: TDBEdit
        Left = 505
        Top = 58
        Width = 226
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'ENDERECO'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 26
        OnEnter = suiDBEdit4Enter
        OnExit = suiDBEdit4Exit
      end
      object DBEdit71: TDBEdit
        Left = 744
        Top = 58
        Width = 34
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'NUMERO'
        DataSource = dsImovel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 27
      end
      object RxDBComboEdit1: TRxDBComboEdit
        Left = 505
        Top = 83
        Width = 274
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = dsImovel
        GlyphKind = gkEllipsis
        NumGlyphs = 1
        ParentColor = True
        TabOrder = 28
        OnEnter = DBEdit5Enter
        OnExit = DBEdit5Exit
      end
      object DBEdit72: TDBEdit
        Left = 83
        Top = 53
        Width = 134
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'AREA_TERRENO'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit73: TDBEdit
        Left = 83
        Top = 173
        Width = 134
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'LADO_ESQUERDO'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit74: TDBEdit
        Left = 83
        Top = 197
        Width = 134
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'LADO_DIREIRO'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit75: TDBEdit
        Left = 289
        Top = 174
        Width = 136
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'TESTADA'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit76: TDBEdit
        Left = 289
        Top = 198
        Width = 136
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'PROFUNDIDADE'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit77: TDBEdit
        Left = 290
        Top = 54
        Width = 135
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'QUADRA'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit78: TDBEdit
        Left = 291
        Top = 29
        Width = 134
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'N_LOTE'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit79: TDBEdit
        Left = 505
        Top = 126
        Width = 136
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'N_QUARTOS'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 30
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit80: TDBEdit
        Left = 505
        Top = 150
        Width = 136
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'N_SUITES'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 31
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit81: TDBEdit
        Left = 505
        Top = 174
        Width = 136
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'N_SALAS'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 32
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit82: TDBEdit
        Left = 505
        Top = 198
        Width = 136
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'N_BANHEIROS'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 33
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object DBEdit83: TDBEdit
        Left = 505
        Top = 104
        Width = 136
        Height = 21
        Hint = 'Referencia do Produto'
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'N_GARAGENS'
        DataSource = dsImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 29
        OnEnter = db_nomeEnter
        OnExit = DBEdit2Exit
      end
      object RxDBCalcEdit7: TRxDBCalcEdit
        Left = 704
        Top = 106
        Width = 73
        Height = 21
        DataField = 'PERC_IMPOSTO'
        DataSource = dsImovel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GlyphKind = gkCustom
        Glyph.Data = {
          46010000424D460100000000000076000000280000001A0000000D0000000100
          040000000000D000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
          88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
          88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
          88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
          88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
          88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
          88888888888888000000}
        ButtonWidth = 0
        NumGlyphs = 2
        ParentColor = True
        ParentFont = False
        TabOrder = 34
        OnEnter = suiDBEdit6Enter
        OnExit = suiDBEdit6Exit
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 512
    Width = 916
    Height = 43
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 1
    object dbfirst: TDBAdvGlowButton
      Left = 104
      Top = 5
      Width = 44
      Height = 32
      Hint = 'Primeiro Registro'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000033E494441544889
        8D95C18B1C4514C67FDFA43D444583E061BDE9218B2B314E6FE2450FEA5E82D9
        83DDA241C583202222994E0E4A349B109218D643B65B4444041121829A690F4A
        F660CC1FB0D84D4232620E7A5B0F8210317871E7F390EA75323B339B7729AAEA
        BDEFABEFD57B55B2CD386B77BA0F487ACEF653C00C70AF246CFF21A967FB47E0
        EBBA487F1D87A151047156DE6FFB14904ABACD034E9264DBCD08FC2BA96BFB50
        5DA4BF6D4A1067E5CBC087C05D401FB80074819F80DF83DB14B00B4880278116
        F017F06695275F8C256877BA878013925AB62F0007EA22BD384E7E88D92969C9
        F61380251DAEF2E4D40682382B5FB1FD6948C3A2ED85BA48D726810FA8DE62FB
        38F076B8A357EB22FD6C9D20CECAED21057700EF557972F8568047109D04DE01
        FE0666AB3CB91A01D85E9474A7ED1FEA225D07DF7DF05B03AC9C7E464369E907
        A5B24D5DA40A3847243D6A7B0E580492A8DDE94E03F3C01AD0D9EC940D78005C
        0707A88B742DCECA0E7009988FB3723A92B40F8880737591F63649415F5273DA
        9BC01BABF2A41767E532B017D817053996F4CD66271FA87D8D021F50D6059E96
        3417013BC2FACA24F0C179DFBCB8737FF78561BF8B1FA45F0E61ED88806D61B2
        DAEE745B7591F6870387AD25CE0084925C1F818660358CDBA2905242C056E0FA
        30A0069C9ACA9964839891ED6BC0DD92A6AA3CB93C2AA0798B9A3BE89B97C206
        378DFFFB4F05FF6B91A4CBC0E3C02C3092A02ED2569C95EB242D7C66D2254B9A
        05045C89C293FB98A46781CFC7055579A2382BDDA86977BA1E47623BE546659E
        D723FBCFCE009782FA87EA22BDDA388EEAE4A18ADA50AE71566EB77D25887D38
        AA8BB41767E539605ED212371A64AC0DA66B58499C952D20971401DF5579D293
        6DDA9DEE8CA415DB5B812375919E984432CEDA9DEE82A463B6FF0176D745DA1B
        7CAE5FB7FD11D00F4E276FA5279A93DB7E17381AFE9237EA22FD18863E9C382B
        8F010B61BA0C1CA8F2E4974DC0A78125604F583A5EE5C9D1667F43D3B43BDDD7
        249DB67D3BB02669D9F659A0025643D7DE276997ED04D82329B27D1D385817E9
        278378E33EFD69DBEF037B256DD9E4D3EF4BFADEF65B75916E503BB1EDE3AC9C
        019E07E68007817BC2D69FC0CFC079E0AB2A4FC63EF3FF018B09C93EC7530589
        0000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = DM.DTS_PRODUTOS
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object dbprior: TDBAdvGlowButton
      Left = 150
      Top = 5
      Width = 44
      Height = 32
      Hint = 'Registro Anterior'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000340494441544889
        9595CF6B5C551CC53F27792EAC9A14A10BB3D385C569A99DA15DB850B411AC48
        C5F750BB722188884867EAC2506C2CFD114A5CD879202222BA70A7E40D82962E
        8CFD0324F3B0D1885DE8CE2E44DBFAA35998CC7131F70D332F9964FA36F7BDFB
        BEF79CF33DF77BBF57B619F6D41AAD0AF022300D3C04DC1B7EFD09FC042C029F
        B79BF1CA300C6D46506BB476DB7E177846D2B8FB8224C9B68B11E848FADAF65B
        799AFCBC2D41B59EBD2AE93DDB3B807549976C2F006DE03749D89E9274C0760C
        1C9614D9FE1778334F938F8612D41AADD3C06CF8BC041C6F37E30DAACAD90217
        80C361EA6CBB199FDA40506BB45EB3FD4148F9B4EDB93C4D3A5B81F7918CD97E
        1B382569CCF6EB799A7CD823A8D6B38AA4EF6CDF09BC93A7C9B9926D11300910
        2C42D26ABB19DF2AC5CD0671ABC0C13C4D56A2B0681ED821E9223057527737F0
        B7A401D5ED663C38D1C599031E91F434300F1CD1FE630B15E04A288A3D799A5C
        ED533401DC04FA2B41799A6C00EF13F4A0ED1FBB7CDA1701478131E0AB12F83D
        C0CDC29251C0436657ABF5EC227004381A493A040858E85331518087D4659BED
        C07B2AA40C7816988E6CEF052C692928DF095C071C36B33850AAD6B3CE2607AD
        1793A7C918DD854B01734F246932105FAB355A7701D78372F5292ACAB9982B8F
        E5F86BE175322AFC0D5EAF861FEE9BEF65308A3D61710F33026E003B81A93C4D
        FEA8D6B3C8F61A839573BBCF54186F44C032F028701058CED364BDD6688DDB5E
        2F938CBAC9010B603992B4083C063C0F7C02D06EC69D5AA3D5CB446153AAF5CC
        A390484AE85ABAA8FDC71676033F04AFF7E569D2EBEDA145FCC7ED1DB48AED2B
        41D8DEA217B5243D67FB1BE0A9FE261732E9916C7526AAF56C3CB4F769E0CB3C
        4DE2A217CD004F4A9A06CE00278B45ED66BCC6881524E94CC0F9079881C176FD
        B2ED8F43E0BCEDD93C4DD647010E4571169809E5FE4A9E269F0E1084144F00E7
        424FBF0C1CCFD3E4FBADC0ABF5EC6149176C3F4ED7F793ED667CBE9755F9CAAC
        355A2F01EF03134007B80C64C012509CD0FB8003400C3C41B759FE05BCD16EC6
        9F0DD836E4D2BFDFF679209174C73697FE9AA4CCF6893C4D7E2D636D4AD097FE
        03925EB07D08A800BB82C7BF4B5AB1FD2DF0459E26BF0CC3F81F2CDECA019C51
        98710000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = DM.DTS_PRODUTOS
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object dbnext: TDBAdvGlowButton
      Left = 196
      Top = 5
      Width = 44
      Height = 32
      Hint = 'Proximo Registro'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000033A494441544889
        9D95316C1C451486BFDFDE14108843040574A188852141B72E90A04A4CE18029
        7623E82890104208E936148982935896035128C89E8410424808D101BA2D4820
        0509F4843D113941A4802E1408241B42C3D93FC5CD1ECBE5EE1C31CDEEBC79F3
        BFF7BF79F38F6C336A349AED078167251DB03D23E9BEE0FF2B704DD225DB9F76
        5AE94FA330342C40A3D9DE2DE9B4ED148824C9B6AB6F7F736FFE37D09674ACCC
        939FB70C1067C5F3C03BC00E6013F81A2880CBC02FC1ED7E60164881FDC004B0
        0EBC5AE6C9C72303C45971CCF6A990DC37B60F775AE9F7A3E807B68F026725ED
        B7BD091CEFB4D2D3B7046834DB2F48FA20CCCF483A51E6C9C638F05A9049492B
        B68FD2CBEEC5324F3EEC0788B3620FF01D7017F06699278BB7033C38E2AC3805
        BC0EDC0466CB3CB91E01D83E036C97F495ED9323B2B4246A872C49DBCA3CE956
        3E61EF63929E0C98891ACDF6B4EDD5B0615F9927D7C694C240BD2B046CEBB4D2
        6ECD6746D29590C8236A34DB278165E07C99270B5B95A162F26FD296A4A87E5E
        71567C011C049622602E446B6F050ED069A5AA98A817C9B6BB71564C9679B219
        DC3EB33D0FCC45C0DE60FC7630CBAADCD57FDD36306C7BA3D16C479D56BA51C3
        DA1B013BC3E4C6ED301835C225EF8696ADB076465586FF0350F56FCD7E471D33
        02D66C4FD1BBFEBF053FD3EB907E4B0ED8866993807BCA3CB91967C5EE605E8B
        80AB929EA0A72DAB009D563A312EFB70467D06E17CA6CA3C590F2EB3617D3502
        2EDA7E9C9E707DB45569AA0E0AA095D4EC28F3E48F9ADBA1C0EC921ACDF68CED
        2BF4DAEEE1324FAE6F055E330998EAB4D2F59ACF1E49576D0BD85769D1E7C002
        F025B050EBE7C1B2F4E781C1DD659EFC59D9E2AC10700E780A3857E6C9339516
        1D050E489AB7BD08ACD4C1E3ACB813B8B7020E63ADAE43616D113828E9AFBEB2
        D6E4FA6549EF064D5F96F4C63026234A372169D1F6123021E995324FDEFB4F80
        90E93270224C2F0087CB3CF9711C789C15D3C059603E9856CA3C59AAD66F7932
        1BCDF64BC0DB92B6DBEE02172415B62F4BBA11FC1F0062498782E64C86B2BCD6
        69A5EFD7F1463DFAD392DEB2FD74A03CEED1DF00CE4B3A328CEDD00035FA33C0
        73C01CF010B02B2CFD0EFC005C043E19F786FC03BD8CC929AE4BAB2900000000
        49454E44AE426082}
      Transparent = True
      TabOrder = 2
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = DM.DTS_PRODUTOS
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object dblast: TDBAdvGlowButton
      Left = 242
      Top = 5
      Width = 44
      Height = 32
      Hint = 'Ultimo Registro'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000033A494441544889
        8D9541881C451486BF7FB62F12D12078D05B3CECE2620CD38B087A4AD6C34673
        B0266830E041101111A7938321EE26216C34C443B646444404118912956E0F06
        8398E83DB196C83A620E7A4B0EA210215E4CE67998AAB1333B339B7769AAEBD5
        FFBFFF55D55F3233C645B35D3E003C23698799CD4ABA37E6FF0174259D37B32F
        563BADDFC661681441B35D6E9174DCCC5A4026496666E93B58DC1FFF0B94920E
        06EF7EDF90202FAAE7817781BB801EF03D50011781AB31ED3E600E6801DB8106
        F037F06AF0EE93B10479511D34B363B1B81FCC6CDF6AA775699CFCA8761BB022
        69BB99F580A5D54EEBF83A8266BB7C41D287717C42D2A1E0DDCD49E035922949
        CB6676807E752F06EF3E1A10E445350DFC08DC09BC15BC5BBC1DE0E1C88BEA18
        F006701D980BDE5DCE00CCEC04B049D2776676B8569949226DEC6AA7D5A8033E
        B2FF2B03B870F2690104EF969AEDF251494F444CA766BB9C31B3B5BE323D1CBC
        EB0EC93760B05175926182983F2BE9A758D44319B04752069C19068F804A4A62
        1B7AC1BBC6705E2DBF9B17D5B79276027B32603EB2951316292991A466BBEC0D
        B76B28BE34B305603E03B6C69F17D2ECB6D7CAE7462CDADB10A7D2A0D92E7BD9
        D4588E84B5350336C7C19534DB109FC6CD257D638CF795FF891B9212D6E60C20
        F577A3504CD4840592EEA86366C03533BB9BFEF5FF13A067EC25555DBBE90DEC
        D4AD7EB49E2878773D2FAA2D31E55A06FC2CE971FADEB20670E99DD66723A40F
        4E922405EF948EE988988B2AD732E09C993D46DFB83E1E959D4E50DC1305EF36
        EAE9EEA8F27C069C06168127F3A29A0EDE5D1E055E6BC144F066BB9C8E77A007
        9CCE8277DDBCA8BE0176013E2FAA5DC1BB5E024FFB7A3BE0009256E8BF215F07
        EFBAC98B0E003B242D98D922B00CFD0B3609AC6E11B1A02560A7A47F06CE5AB3
        EB9725BD173DFDA8A43793928D229EFD45333B023424BD12BC7BFF160280BCA8
        8E0287E2F02CB02F78F7EB24F0BCA86680156021FE5A0EDE1D49F3EB9ECC66BB
        7C093829699399DD00CE4AAACCECA2A42B31FF7E2097B43B7ACE546CCBFED54E
        EB833ADEB8477F46D2DB66F654943CE9D1BF099C91F4FA28B523096AF2678167
        8179E041E09E38F517F00B700EF87C94CDA7F80FC741A7152023101900000000
        49454E44AE426082}
      Transparent = True
      TabOrder = 3
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = DM.DTS_PRODUTOS
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object btnNovo: TAdvGlowButton
      Left = 284
      Top = 4
      Width = 100
      Height = 32
      Caption = 'F3 | Incluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000264494441544889
        CD94D14B535118C07FC7DD24F72246C1E64BF6E0831ABE2D6A8B89CF19C42531
        E8A588200385106E25046552B4B0078365427FC0446E42317A0822DB6694BE44
        6D0561BE2D30586BB41973F7F4B0DDEDEEA6605E8CBEA77BCFEF9CEFF79DEF1C
        8E085E79F21370B341BCBCDD277AAE3E75C415C02DA59400420861FDAECC73C4
        1580F6D6661E0D07CD05E2DCE43C9FD33FAA9538E10A40B0CB23B044B0CB5397
        C009572A63524A69DD62DD02275C6187A32C10B5331342883FEA73C0CB0269DB
        A2B4A570C0FF518B765CF09F9FC17324EFA494520871504A1944D25427C8158A
        D5054208912B14EBF26FC025F070400F357A7C3C8B6693C1E86304F062E4F089
        B3B942F132305C15CCC496E54C6C79B3B7C6CE0DE0BCF750CA05E480464B2DC7
        275ECFDD0446A0F34CAD4520BC2D6E54FF01F4C41791CEE46D4DAEE3D3B42FB9
        8069139EEC08604803FDE302C02E60D2E34B5E82BEB2C0DBE2E6FE053FABD935
        7ABBBD0C4D25F8FABD50CD6EE1BFDAF68BF17B8B4BCB567B7F478075A3640ACC
        B83BA087A61500D5DFC66A768D8B0FE2840703A8FE36C2D15475A685CF7B7CC9
        53B6B66C160AA029007A6285DEEE56C28301F635EF464FACD4CDB4F0F7638BC9
        1EB32DFD1D815AB6061711550320F2E115FAA70580A30A403A9367682A61F698
        74268FE58CADDC001AB650BD194201F240533A93271C4D566F11B527D7CA3B3D
        3E62C0B1D9549CD954BC5CB1AAB16E94383D376117BC11B57C5B8B013DE406B2
        589E994D042560EF5F0B2A120DB863FEDBAEA9193722AA767D5B828A64141803
        5C366400B722AA760D60DB828A640F300A1CA90CBD05C623AAF6CD9CF31BC8BC
        79F17028A33D0000000049454E44AE426082}
      Transparent = True
      TabOrder = 4
      OnClick = btnNovoClick
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
    object btnEditar: TAdvGlowButton
      Left = 389
      Top = 4
      Width = 100
      Height = 32
      Caption = 'F4 | Alterar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000262494441544889
        B594BD4B5B5118879FB75C41333438081A178D5407C1A4632389097611324890
        3A3A74D1D2244397FA1738D7426A878E1DEAC75D2AD96DF476F4164497E2C7D2
        4805AF517A23083D1DCC4D6E62EA07575FB8DCC379CEEFF7BEE7BC8723B1B75F
        FF003E9AC4DA5C524666573D710DF029A5148088887B5C59E7896B004F027E3E
        65628E405ECE7FE367F1B45A8917AE01C4063B0557C4063BEB0CBC70AD32A794
        52EE2DD609BC708D078ECB0452EB9988C895FA3CF0CB04AA618BAAC1C2037F88
        23B2800DA0E521126C02CFA746FB8FA746FBA925B89F1EFC00C644E4389CD515
        80F92E25F7D5834DA5545C444E1DE3705657E1ACAE3480B3F2455520227256BE
        A8D3DFC0CDB3F24542444EDD953B493480C5F55DB5B8BEFBBFB7E6261E7F9D1C
        2C39E600E1ACAE9C244E93A5ABDD472AD28B6EEC49D1B21B0EB9293701D6E692
        75E64E8CCCAE06D6E692BF3480AE761FEFA7231C95CE490C75915E30383C2957
        1737E1E6E14939EE54DB683E10F0771F9E940B409F06908AF470543AE7D5870D
        7233C3A4223DE4F23B5541033753919EF864B4AF69E59FDF24BAB70E8E0BB9FC
        4E102AD75437F6490C05C8CD0CD3E16F4537F6EB442E6E76F85BAF35EFF0B716
        74633FE8CC690045CB26BD6038674CD1B271F5D8E1662AD21B9F8C069B9A0F04
        FCDD5B07564137F6826EBD06D8405BD1B2C9E5B7ABB784DA936B03BF8B963D36
        190D96C299E571E4519DF9E3B69640D1B20BB9FC76F08A5E2975EB2F945EFA5E
        F98F87322B2A9459513769EE9620B3FCD7310DA597C66FA391DA8EAE8FA759FD
        8B42BD00CE51CA34E7279EDD467797D7348A521FCDF989E93B68F8076C820F3F
        0EDA78CB0000000049454E44AE426082}
      Transparent = True
      TabOrder = 5
      OnClick = btnEditarClick
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
    object btnexcluir: TAdvGlowButton
      Left = 593
      Top = 4
      Width = 100
      Height = 32
      Caption = 'F6 | Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000258494441544889
        D595BF6E134110C67FB3BB17DB97B353E08837A0A0A044A24034A991E8E0116C
        A54F859012D1A4CC5340C3134015898257499138B6734ED6BB4391BBD3F9ECE4
        22080553CD7EFA66BED9D93F23AA4A9BED1D9DBEBB9E9D7F33C6841863149124
        E90DBEFEF8F4E67D5BAC6BCD7E6BE3FA425503F0F62181A2AAEC1D9DFE045EDD
        45F2571380002820056C927447364728205FBE7F7CFDC1015CCFCE9F19830281
        88011403C43255E11BA4C220FAABF326473044302EC6F81C8A1675B29D270067
        6767B72D6B265E15A126B28963769FEE02E645D5A2C6DE1EC3AAD6AD1CF2783C
        26CFF3B29E7ABF4BBF89D1E4F4FB7D73727252E55C11E8F7FB18634219A8AA51
        44B0D64A0821024655438125C0D27B1F4504E79C8410B4DBED9A7ACEB56B6AAD
        15EFBD1B0E8778EFB9BCBC0420C6B81C0E87EABD97E9740A409D379D4EB1D606
        91D58BB526B05C2E35CB320E0F0F01D8DFDF278440815980D1681400068341C5
        1B8D4600DA7CB86B02AA4AB7DBADD649927073735362026892248410E8743A15
        6F6B6B8B104233DDE6975CAFA2F4377D299B78AD02C6983B5E67BB1963A4F50C
        628C7FFC1642085155EDBD027FB3036BADF9A73B8831B6DFA2C7B6FFEB901FDC
        A27A15A5FF50AC696B02CE39B9B8B80020CF73F23CC7394781699EE72C160B92
        2461329954BCC56241A7D3596BD1CA3C383838D0F97CEE8B2001B4D7EB61AD4D
        5495F97C8E8890A6292282AA2E67B3998A08DBDBDB1263244D53777C7CBC791E
        D42DCB32092154EA22429665ABD51562855FCE8B7B5BF4CB5AFB92DB018FB5B6
        FCDB9777D421D6DAAA5A6BAD1391CF75C26F811B1AE2CFD9697F000000004945
        4E44AE426082}
      Transparent = True
      TabOrder = 6
      OnClick = btnExcluirClick
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
    object btnLocalizar: TAdvGlowButton
      Left = 802
      Top = 4
      Width = 100
      Height = 32
      Caption = 'F7 | Localizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B000002A9494441544889
        FD954F888E5114C67F8F99301AA230D813126527CA580C1622CD42E4BB57187F
        9A2436165264A758208D523A9732A32924B1B0C142CA92EC280B16983EA5FC9B
        712CBEFB8DB76FE69D197136EF39A7739EE79EF39E7BAEDC9D894808A10DD82E
        69BDBB2F9234C3DDABC02B49F7DDBD37A5546DCCD3780431C6C9EE7E1C3802B4
        4A92BB7BFD0B90F501E0B4A40B663634218218E32CE016B07642658203B7811D
        66F66D4C8210C214E0A1A435FE27A82AA9D7DD9F491A70F736A043D266779F52
        A8A61FD89652FAD53CC6694E00AB0B763FD06D661F1AE2AEC4181703D78195D9
        D70974019747AD20C6D806BC015AB2AB17D859ECED2839338147C0F2EC7A072C
        2CAB20B8FB54C0257D70F70329A552700033AB8610F6487AEAEE4DC07C499BCA
        08D617F4AB29A5CF6381D725A5F43CC6F80468CFAE8E3282259294F5C713012F
        C86349EBB2BE780441086192A4D6C28C37FED4F1E4632177FA088294D2AF18E3
        17604676CDFD4B823905BD5AD6A297C082ACB703F7FE82605D417F5536A64780
        73D9FC042C32B381F190638CAB80274053766D292398EBEEAF8169F966DEA276
        337F9681871066038F242DCDFFE08DA4A5A5AB22C6F800D8904DA7D6A67D66F6
        7E94D815D46EF2B242FC7633EB1B4190A7E88CBB1F85E1DD520FFA2AA93FEFA2
        4FEE3E8FDA2EDAE8EE930AF13D29A58300CD8DE0C059E07049275A80005400E5
        93D2A05F060ED513862B88310A380F74E784BA0C01066C0566951003BC058E01
        7D6636DC16B93B2184264917DD7D7F435B06257599998510A6039D923AF28BD6
        9A5FB417F945BB3BDA10A852A93401972475D5ABC9043F80BD29A56B639C7A5C
        6996D403ECC9B875FFA0A45D6676E35FC0019ADD7D373574725B7E480A6676F3
        5FC1A13645A78093D9FE0E54CCACFF7F8043AD45A7A94D4AB7A4836676E77F81
        03FC064CBD449B10DE8C1C0000000049454E44AE426082}
      Transparent = True
      TabOrder = 7
      OnClick = btnLocalizarClick
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
    object btnSalvar: TAdvGlowButton
      Left = 698
      Top = 4
      Width = 96
      Height = 32
      Caption = 'F10 | Gravar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000026B494441544889
        D594CF6B134114C7BFCF2C4DCCC1928290F41445055BC8612FC206B684F80321
        1ECCC19B1515B511E2C585A4FF80510C28566284B6C2DC5231979478F112A98B
        A8E4A6112935B74482A6B19844DA663C24BBD9C4D6B62E157CA7613EF3BEDF99
        F786477234F303801D1B442E16A0B1C979535C0060E79C7300202232AE3BE74C
        7101000E0F0F62E686AC25D0E5072FB158FAAEDFC40C1700401E75120C218F3A
        7B04CC70A1B3C739E7C627F62498E1027639DA06D4ED1911D16FF733C1DB06BC
        EF89BC4FC204FF4725DA7583FFAC072D70BC057054375869ACEA0944442B8DD5
        9EFC1DF07522BA74C17F84CDBEF8745037985B58E2730B4B9BCD9AEDF216115D
        C9C5024C640AC7081D02027A93C9E5B023281D405AFD4CA56ABDAFC85B72B81C
        F66BA988FF89C894F576D9F8A2C89411A103313521A1526BC2E771219C54515E
        6E1893313521BDABD49A577D1E97379C54EF97971B16AD032E873D948AF86744
        A63400ECD1F2F2E3F182000041C98D4AAD89EB8F5E2111F22228B991C8167483
        A0E4CE576ACD53175FDF3DFBE6DCAD8741C9BD92C816663BF8662AE27F2C32A5
        06C06610EF8EEBB45A84CF338C44C88BFD8336A4D5A2F1F5E5B45A3C71A7983C
        0ECEA745A64CE7C7E394C8162C00908B05EE894CF90A609F517C6C72FE4C2E16
        C8080050AAD6114EAA5A8D51AAD661E8E1FB54C4FF4D64CF53DA86C8949FF958
        DCDA5997000C19C5E568E634113D05601300D401EC2D55EB48643FE8BF04DD91
        7B4C8E66CEE76FC749648AC60644A67C04F00580B34FFC24806700AC00405DBD
        ED85C1A427B49AF7C78E0D3632D94CFCAF0D8C267F12074C4C538B75C0DA5A5B
        1BDAEADC2FEC698185CDD5A5E80000000049454E44AE426082}
      Transparent = True
      TabOrder = 8
      OnClick = btnSalvarClick
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
    object btnCancelar: TAdvGlowButton
      Left = 495
      Top = 4
      Width = 100
      Height = 32
      Caption = 'F5 | Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B000002E9494441544889
        CD945B6C0C6114C77FDFEE543B5B8968DAD0150915D7A5AE21DA74A984266E91
        BEE285884BB48D884413A94B88F0865825C183274523080F08DDB0B66949088A
        54DB905851EDA2ECAC6ECDF1D0BDCC140F6C88934C3233BF39E77FBEFFF9E653
        DEED97BF002E7E120DFB97AA79D557D2E21AE0121101504A29EB7DFCBBB4B806
        30D63D849395DE44825A7BD84F6BE853B29374B806E0F50C5758C2EB196E2B90
        0ED7E2EF4444AC4BB425A4C335FE72F40BA8D4CC9452EA87FED2E0FD02326089
        32A0441AFC1F59F4D705FEF319DC40782422A2949A2C225E04DD26D063C49209
        4A29D563C46CF57FC205380E70FAC5DE6DBC6061BB0F05EC28B8106CEB316235
        406552A0EE4E9BD4DD69FBD55933909BC0BAA32D7B2E362FA911E570D89A695E
        328312A7D37DCEB3F341CA2250F9435D94178DA63ED0AE42E1C800936DFC44CD
        BDEA8B466FACEB5B6F14891A64E4E401D0DBF50E879E0D99996F0E3DD9351296
        F60BE40F75716443119D1FA39416E653511BE0ED072359DDC2BF9616E6D7BCF2
        F7757DEBEB65CECD67BCBF7E89962DABC0143CB5E7C9F196D1B86022E88ED780
        D200CA8B46D1F931CAA66377F16D2CA6BC6814BEAB2D49010BF79F69DDE7560E
        85F9F90BE17BB7C85DB89C82EA833832B3C8F196D1DD700D331A41CBCEE6FEB2
        59D33480FA4007A5856E7C1B8BC91B92457DA0C3E68F853F662B65A018949BCB
        E335CB1977E00423566E002054778AD6DD55B80AC62752BD1A40281CA1A23690
        F09850388265C6566ECE05677C2CA004F36BCA4A33160365DBE14A0322801E0A
        47F05D7D9ADC45A48E5C2B9F341776F70FB413CFF17A724A16113A7B1287EE62
        C4CAF5640E73D3BA737362F04144E4B7AFA6C5D325583A5E4444BA6E5F13FFA4
        C1E29F3058BA1B1B444424387FAC342D9E2E22F26767919EA18D31447FD9B860
        0266D4887B2E3CAB5A8D43D771EAD964389D530054CA91DF8B272B668F33627D
        CFED3F9A20A690E1744E9B7AA9E9615A0289B8BF6C563150127F0CCEBCDC7CDB
        CABF03DAB5D9F78C9DC2190000000049454E44AE426082}
      Transparent = True
      TabOrder = 9
      OnClick = btnCancelarClick
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
    object LMDButton1: TAdvGlowMenuButton
      Left = 3
      Top = 2
      Width = 100
      Height = 32
      Caption = 'Menu'
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B000000DC494441544889
        634C685EB6EFDE575E470602408BF7C3A3E95531F20C0C0C0C892DCB89D6C342
        8C42060606866B9F05E4606C52F4B0C038AB2B9C19C4F8393114BDFAF89D21B4
        632F560388D103B7408C9F93E1DCDBFF188A8D84310D20450F0B862C95C1A805
        C45BF0EAE377AC11FAEAE3779C9A89D103B7005752C40788D1C3A2CBF7FED3E5
        4F827C84146AF17E78046393A287F1FF7FCC744C4D40FB4826A5E0821576996D
        4B1E22974DB8802EDFFB4F641576C418CEC0C0C070F99320DF686147108C5A40
        BC0523ABB0D3E37BFFEBD2274136427A74F9DE7F0200B9EE8BB2752B68380000
        000049454E44AE426082}
      PopupMenu = popmenu1
      Transparent = True
      TabOrder = 10
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
      DropDownButton = True
      DropDownSplit = False
      DropDownMenu = popmenu1
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 916
    Height = 113
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object RxLabel6: TRxLabel
      Left = 226
      Top = 38
      Width = 45
      Height = 13
      Caption = 'Unidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 4
      Top = 87
      Width = 52
      Height = 13
      Caption = 'Descri'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 4
      Top = 13
      Width = 62
      Height = 13
      Caption = 'C'#243'digo EAN:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel35: TRxLabel
      Left = 4
      Top = 38
      Width = 58
      Height = 13
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel56: TRxLabel
      Left = 403
      Top = 14
      Width = 54
      Height = 13
      Caption = 'Cod. NCM:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 588
      Top = 40
      Width = 39
      Height = 13
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Image1: TImage
      Left = 828
      Top = 16
      Width = 72
      Height = 72
      AutoSize = True
      ParentShowHint = False
      Picture.Data = {
        07544269746D6170F63C0000424DF63C00000000000036000000280000004800
        0000480000000100180000000000C03C0000120B0000120B0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCFCFCFDFDFDFE
        FEFEFFFFFFFDFDFDF8F8F8EEEEEEE6E6E6E2E2E2E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E6E6E6EDEDEDF8F8F8FFFFFFFAFAFA
        ECECECD3D3D3BEBEBEB5B5B5B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
        B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
        B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
        B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
        B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
        B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
        B4B4B4B4B4B4B4B4B4BDBDBDCFCFCFEAEAEAFFFFFFF6F6F6E2E2E2B0AFAF9090
        9085858583828383838383838283838383838383838283838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383838383838383838383838383
        8383838383838383838383838383838383838383828383838383838383838484
        84929292ABABABD9D9D9FFFFFFF6F6F6A9A6A49B938F928B86928A85918A8692
        8B86928B87928B87938C88938C88938D88938D88938D88938D88938D88938D88
        938D88938D88938D88938D88938D88938D88938D88938D88938D88938D88938D
        88938D88938D88938D88938D88938D88938D88938D88938D88938D88938D8893
        8D88938D88938D88938D88938D88938D88938D88938D88938D88938D88938D88
        938D88938D88938D88938D88938D88938D88938D88938D88938D88938D88938D
        88938C88938C88928B87928B87928B86918A86918985958D88827D7A969696CD
        CDCDFFFFFFDBDBDAD2C6BED4C6BECFC2BBD3C6BED4C8C0D4C8C1D3C7C0D5C9C2
        D6CBC3D4C9C3D4C9C1D4C9C2D4C9C2D4C9C2D4CAC2D5CAC3D5CAC3D5CAC3D5CA
        C3D5CAC3D5CAC3D5CAC3D5CAC3D5CAC3D5CAC3D5CAC3D5CAC3D5CAC3D5CAC3D5
        CAC3D5CAC3D5CAC3D5CAC3D5CAC3D5CAC3D5CAC3D5CAC3D5CAC3D5CAC3D5CAC3
        D5CAC3D5CAC3D5CAC3D5CAC3D4CAC3D5CAC3D5CAC3D5CAC3D5CAC3D5CAC3D5CA
        C3D5CAC3D5CAC3D5CAC3D4CAC3D4C9C2D4C9C2D4C9C2D4C9C2D3C8C2D3C7C0D2
        C7BFD2C7BFD2C6BED1C5BDD1C4BCCDC0B8B6AAA4888786CDCDCDFFFFFFD3D2D2
        E1D8D1E4D7CFE1D4CBDDD1C8DCD0C7DDD1CAE3D7CFE0D4CDDDD2CBE3D8D1E6DB
        D4E6DBD4E7DBD5E9DED7EBE0D8E9DED6E7DCD5E7DCD5E8DDD5EADFD8EADFD7E8
        DDD5E7DCD5E8DDD5EADFD8EBE0D9E8DED6E7DCD5E7DDD5E7DCD5E7DCD5EADFD7
        EBE0D8E8DDD6E7DCD5E9DED7EBE0D8EBE0D8E8DDD6E7DCD5E7DDD5E7DCD5E7DD
        D5E9DED7EBE0D9EADFD7E7DCD5E7DCD5E7DCD5E9DED7EADFD8E8DDD5E7DCD5E7
        DCD5E7DCD5E9DED7E8DDD6E6DBD4E6DBD4E5DAD3E4D9D1E7DBD2F2E5DDF2E6DD
        EFDED5E2D5CDE0D3CABEB3AB878584CDCDCDFFFFFFD4D4D3E1D7D0E5D8D0E1D4
        CB4945421F1E1D272523B3A9A34744421E1C1B968F8AF1E5DEE5DAD3EDE2DBE2
        D7D0DDD2CCECE1DAE7DDD6E6DCD5E6DBD5E3D9D2E3D9D3E6DBD4E6DBD5EDE2DB
        E3D9D2DDD3CDEEE2DCEADFD8E6DBD4E6DCD5E7DCD5E2D7D1DFD4CEE5DBD4E7DD
        D6E2D7D1DED4CDDFD5CEE5DBD4E7DCD5E6DCD5E6DBD4EBE0D9E8DDD7DDD3CCE7
        DDD6ECE2DBE6DBD4E7DCD5E4D9D3E3D8D2E6DBD4E7DCD5E6DCD5E6DBD4E3D8D1
        E4D9D2E6DAD4E5DAD3E4D9D2E8DCD5D4C9C2756F6B6A6561A19892E7DAD1E0D3
        CBBFB3AC878585CDCDCDFFFFFFD4D4D3E2D8D1E6D9D2E2D5CD28262400000000
        0000AAA19C26252400000086807DF5E9E3EEE4DE9D96921E1D1C0E0D0D686461
        EFE5DFEAE1DBE1D8D23D3B393B3937E1D7D2F7ECE5AEA7A221201F0D0C0B5D59
        56E3D9D3EAE0DAE8DED8EEE4DE65615E181717CAC1BDF8EDE6726C6917161520
        1E1ECBC2BDEEE4DDE7DDD7EFE5DFC7BEB93836340A0909333130C5BCB7F0E5DF
        EEE4DE6A6663262423D6CCC7ECE1DCECE1DCD0C7C1232221686360EEE3DDE7DC
        D6E5DAD4EDE1DBC3BAB4000000000000585452EEE1D9E1D4CDBFB4AD878685CD
        CDCDFFFFFFD4D4D3E2D9D2E7DAD2E3D6CF2D2B2A000000040404ACA49F2C2A29
        0000008B8481F7EDE6E6DDD72220202F2E2D575451000000B2ABA6F5ECE5E1D9
        D3191918171716E5DDD7E4DBD52624232524225956540000007F7A77F4EBE4EA
        E0DAF0E8E1534F4D000000C6C0BAFCF2EB605C5A000000020202C7C1BBF0E7E0
        E9E0DAF2E9E25D5A560000005E5A58060606514D4BF2E9E3F2E8E2504E4C0000
        00D3CBC6EDE5DEEEE5DECBC4BF0000004D4A48F1E7E1E8DED7E7DCD6EEE3DDC6
        BDB7070707000000605C59EEE1DAE2D6CEBFB5AE878685CDCDCDFFFFFFD4D4D4
        E3D9D3E8DBD4E4D7D02E2B2A000000050404ADA5A02D2B2A0000008B8581FEF4
        EDC6BEB90000009D9794DCD3CE00000054514FF8EEE8E4DBD51F1E1D1D1C1BF0
        E6E1A59E9A0000007A7572F2E9E4090909413E3DEFE5E0EDE3DDF2E8E3565351
        000000C9C1BCFDF2ED64605E000000070707CAC2BDF2E8E2EEE4DFDCD3CE0D0D
        0C272524FBF1EC524E4C1B1A19EAE0DBF4EAE5555250030303D5CCC8EFE5E0F0
        E5E0CDC6C1000000514E4CF2E8E3E9DFDAE8DED8F0E4DEC7BEB9070707000000
        615C59EFE2DBE3D7CFC0B6AF878685CDCDCDFFFFFFD4D4D4E3DAD3E9DCD5E5D8
        D12E2C2A000000050404AEA7A12D2B2A0000008B8682FFFAF3ADA6A2000000A3
        9D9ADDD5D00000003D3B39F3EAE4F0E7E12120201D1C1CF3EAE586817E000000
        87827FF6ECE6161515363332EDE4DEEEE5E0F3EAE5575451000000CAC3BEFEF4
        EF64615E000000070707CBC4BFF3EAE4F0E7E2CFC8C3000000413E3DFFF6F066
        6360100F0FE5DDD8FEF5EF5A5654020202D6CEC9EFE7E1F3EAE4D9D1CC000000
        524F4DF3EAE4EAE1DBE9DFD9F0E6DFC8BFBA070707000000625D5AF0E4DCE4D8
        D0C1B7B0878685CDCDCDFFFFFFD4D4D4E4DAD5E9DED6E5DAD22E2C2B00000005
        0404AEA7A22D2B2A0000008B8683FFF9F4B6AEAA000000A5A09DE0D8D4000000
        484644F1E9E4A59F9C1515141F1F1EF3EBE78F8A8700000086827FFAF1EC1010
        0F3B3938EEE6E2EEE6E2F3ECE7575452000000CAC3C0FFF6F165615F00000007
        0707CBC4C1F3ECE7F0E8E4D4CDC8000000393836FFFBF6615E5C141413EBE3DF
        C4BEBA393737070707D6D0CBF4ECE7E1D9D58D888600000054504FF4EBE5EBE2
        DCE9E1DBF0E8E1C8C1BC070707000000625D5BF0E5DEE4D8D2C1B7B1888685CD
        CDCDFFFFFFD4D4D4E5DBD6EADFD8E5DBD42E2C2B000000050404AFA7A42D2B2A
        0000008D8884FEF5EFE0D8D30F0E0E6B6765A29E9A000000948F8CF1E9E43D3B
        3A000000232121EDE5E1CFC8C40C0C0C53504FABA6A200000063605EF8EFEAEF
        E7E2F5EDE8575553000000CCC5C1FFF7F2656160000000070707CDC6C2F5EDE8
        EEE7E2EFE7E23B39380B0B0AB5AFAB2524233A3837F9F1EC7774710606060D0D
        0CD7D1CCF9F1ECCCC5C1252424000000555250F6EDE8EDE3DEEAE2DDF2E9E3C9
        C2BD070707000000625E5CF1E6E0E5D9D3C3B9B3888685CDCDCDFFFFFFD4D4D4
        E5DCD6EBDFD8E7DBD42E2C2B000000050404AFA9A42D2B2A0000008D8885FBF2
        EDF7EFEB74706D000000000000363433EEE7E2F3EBE6EFE7E33B3939171615E7
        E0DBFFF8F4888481000000000000262524D5CECAF4ECE8EFE7E3F6EEEA585553
        000000CDC6C3FFF8F4656260000000070707CEC7C4F6EEEAEDE6E1FAF2EDB1AB
        A8040303000000030303A6A19EF9F1ECF9F1EC64615F000000D8D1CDF3EBE7F2
        EAE5DDD6D20F0F0F4E4B49F6EEE9EDE4E0EBE3DEF3EAE4CAC2BE070707000000
        635E5CF2E7E1E6DBD4C3B9B3888685CDCDCDFFFFFFD4D4D4E5DCD7EBE0DAE7DC
        D62E2C2B000000050404B0A9A62D2C2B0000008E8986FBF3EEEFE8E3EBE4DFAA
        A5A29D9896D7D0CDF3ECE8EEE7E3F5EEEAC7C1BEAEAAA7ECE6E2F1EAE6ECE6E2
        ABA7A49D9996D7D1CDF7F0ECEEE7E3EFE8E4F6EFEB585654000000CDC6C4FFFA
        F5656361000000070707CEC7C5F6EFEBEEE7E3EFE8E4F1EAE6BCB7B49B9794B9
        B4B1F4EDE9EFE8E4F4EEE9D0CAC7A9A4A2E8E1DDF0E9E5EFE8E4F2EAE6B6B1AE
        BEB8B5F0E9E4EDE5E1ECE4DFF3EBE6CBC4BF070707000000635F5CF2E8E2E6DC
        D5C3BAB4888686CDCDCDFFFFFFD4D4D4E6DDD7ECE1DAE8DDD72F2D2B00000005
        0404B0AAA62D2C2B0000008E8987FCF4EFEEE6E2F1E9E5FBF3EFFDF6F1F4EDE9
        EFE8E4EFE8E4EEE8E4F7F0ECFAF3EFEFE8E4EEE8E4F0EAE6FBF3EFFDF6F2F4ED
        E9EFE8E4EFE8E4F0E9E5F7F0EC585654000000CDC7C4FFFBF666636100000007
        0707CFC8C5F7F0ECEFE8E4EFE8E4F0E9E5F8F1EDFDF6F2F9F2EDEFE8E5EFE8E4
        EEE8E4F5EEEAFBF4F0F0E9E5EFE8E4EFE8E4EFE8E4F9F1EDF7EFEAEEE6E1EEE6
        E1EDE5E0F4ECE6CCC4C0070707000000635F5CF4E9E2E7DDD6C4BBB5888686CD
        CDCDFFFFFFD4D4D4E6DED8ECE2DBE8DED82F2D2C000000050404B1ABA72E2C2B
        0000008F8A87FEF6F1EFE9E4EFE8E4F0EAE6F1EBE7F0EAE6F1EBE7F2ECE8F2EC
        E8F1EBE7F0EAE6F0EAE6F0EAE6F1EBE7F2ECE8F2EBE7F2ECE8F2ECE8F1EBE7F1
        EBE7F9F2EE595655000000CEC9C6FFFDF8666462000000070707D0CAC7F8F2EE
        F1EBE7F2ECE8F2ECE8F2ECE8F2ECE8F1EBE7F0EAE6F2ECE8F2ECE8F0EAE6F0EA
        E6F0EAE6F2ECE7F1EBE7F1EBE7F1EBE7F0E9E5EFE8E4EFE8E4EFE8E3F5EEE9CC
        C5C1070707000000635F5DF4EAE4E7DED7C4BBB6888686CDCDCDFFFFFFD4D4D4
        E7DED9EDE2DCEADFD92F2D2C000000050404B2ACA82E2C2B0000008F8A87FFF7
        F3F2EBE7F0E9E5F2EBE8F3EDE9F1EBE7F2ECE8F3EDE9F3EDE9F3EDE9F1EAE7F1
        EAE7F1EAE7F3ECE9F3EDE9F4EEE9F4EEE9F3EDE9F3EDE9F2EBE8F9F2EF595655
        000000CFC9C6FFFDF9666463000000070707D0CAC7F9F2EFF3EDE9F3EDE9F4EE
        E9F4EEE9F3EDE9F3ECE9F1EBE7F4EEE9F3EDE9F2EBE8F1EAE6F1EBE7F3EDE9F3
        EDE9F3EDE9F2ECE8F2ECE8F0E8E5F1EAE6F0E9E4F8F0ECCDC6C2070707000000
        64605DF5EBE5E8DED7C5BCB5888686CDCDCDFFFFFFD4D4D4E7DFD9EDE3DCEAE0
        D92F2D2C000000050404B2ACA82E2C2B0000009A96939F9A9763605FF7F1ED85
        8280434240E1DBD7908D8B41403E424140676563F2ECE9F3EDE9F9F3EF7D7A79
        42403F44434244434242403F6E6B69F4EDEAFBF4F1595755000000CFCAC6FFFE
        FA666463000000070707D1CCC9FBF4F16D6B6942403F44434244434241403E8B
        8785E0DAD74B494842403FB6B2AFFCF9F5E6E0DD52504F434241444342434140
        605D5CEAE4DF615E5C403E3D7B7775CFC8C408080800000064605DF5ECE5E9DF
        D9C5BDB7888686CDCDCDFFFFFFD4D4D4E8DFDAEEE4DDEBE1DA2F2D2C00000005
        0504B2ADA92E2C2B0000009F9B9974716F232222FAF5F0545251000000DAD5D1
        656260000000000000282727F3EEEAF5EFEBFCF7F34947470000000000000000
        00000000323030F5EFEBFCF6F2595756000000D0CBC7FFFFFB67656300000007
        0707D3CECAFCF6F231302F0000000000000000000000005C5A59D8D3D0000000
        0000009B9896FFFFFCE2DCD80B0B0A0000000000000000001F1E1DE8E2DF201F
        1F000000434241D1CAC609090900000064605EF6EDE6EAE0D9C6BDB8888686CD
        CDCDFFFFFFD4D4D4E8DFDBEEE4DEEBE1DB2F2D2C000000050504B2ADA92E2C2C
        0000009F9B987A77752C2B2AFAF5F15B5958000000DCD6D36B68670000000000
        00302F2FF3EEEBF5EFECFCF7F4514F4E0000000000000000000000003A3838F5
        EFECFCF6F3595756000000D0CBC8FFFFFC676563000000070707D3CECBFDF6F3
        3A383800000000000000000000000062615FDAD5D20909090000009F9C9AFFFF
        FCE3DDDA151514000000000000000000282727E9E3E02928270000004B4948D1
        CBC709090900000064605EF6EDE7EAE0DAC6BDB9888686CDCDCDFFFFFFD4D4D4
        E8E0DCEEE5DFEBE2DC2F2D2C000000050404B2ADA92E2D2C0000009F9B987A77
        762C2B2AFAF6F25B5958000000DCD7D46B696700000000000030302FF3EFECF5
        F0EDFCF8F5514F4E0000000000000000000000003A3938F5F0EDFCF7F4595756
        000000D0CCC9FFFFFD676564000000070707D3CFCCFDF7F43A39380000000000
        0000000000000062615FDAD6D30909090000009F9D9BFFFFFDE3DEDB15151400
        0000000000000000282727E9E4E12928270000004B4A48D1CCC7090909000000
        64615FF6EDE8EAE1DBC6BEB9888786CDCDCDFFFFFFD4D4D4E8E1DCEFE6DFEBE3
        DC2F2D2C000000050404B3ADAA2E2D2C000000A09B997B77762C2B2AFBF7F35B
        5958000000DDD8D46B696700000000000030302FF3F0ECF6F1EDFDF9F5514F4E
        0000000000000000000000003A3938F6F1EDFDF8F4595856000000D1CDC9FFFF
        FD676564000000080707D4D0CCFEF8F43A393800000000000000000000000063
        615FDAD6D30909090000009F9D9BFFFFFDE4DFDB151514000000000000000000
        282727E9E4E12928270000004C4A48D2CCC709090900000064615FF7EDE8EAE2
        DBC6BFB9888786CDCDCDFFFFFFD4D4D4E8E1DCEFE6E0EBE3DD2F2D2D00000005
        0504B3AEAB2E2D2C000000A09C9A7B77762C2B2BFBF7F45B5958000000DDD8D5
        6B696800000000000030302FF3F0EDF6F1EEFDF9F6504F4E0000000000000000
        000000003A3938F6F1EEFDF8F5595857000000D1CDCAFFFFFE67656400000008
        0707D4D0CDFEF8F53A3938000000000000000000000000636160DAD6D4090909
        0000009F9D9BFFFFFEE4DFDC151514000000000000000000282727E9E4E22928
        280000004C4A49D2CCC809090900000064615FF7EEE9EAE2DCC6BFBA888786CD
        CDCDFFFFFFD4D4D4E9E2DDF0E7E1ECE4DE2F2E2D000000050404B4AFAC2E2D2C
        000000A19D9A7B78772C2B2BFCF8F55B5A59000000DED9D66C6A680000000000
        0031302FF4F1EEF7F2EFFDFAF751504F0000000000000000000000003B3A38F7
        F2EFFEF9F6595857000000D2CDCBFFFFFF676665000000080707D5D1CEFFF9F6
        3B3938000000000000000000000000636261DBD7D50909090000009F9E9CFFFF
        FFE5E0DD151515000000000000000000282727EAE5E32928280000004C4A49D3
        CDC9090909000000656260F8EFEAEBE3DDC7C0BB888786CDCDCDFFFFFFD4D4D4
        E9E2DEF0E7E2ECE4DF2F2E2D000000050405B4AFAC2E2D2C000000A19D9B7B78
        772C2B2BFCF8F65B5A59000000DED9D76C6A69000000000000313030F4F1EFF8
        F2F0FDFAF851504F0000000000000000000000003B3A39F8F2F0FEF9F7595857
        000000D2CDCCFFFFFF676665000000080707D5D1CFFFFAF73B39390000000000
        00000000000000636261DBD7D60909090000009F9E9DFFFFFFE5E0DE15151500
        0000000000000000282727EAE5E42928280000004C4A49D3CDCA090909000000
        656260F8EFEBEBE3DEC7C0BB888786CDCDCDFFFFFFD4D4D4EAE3DEF1E8E2EDE4
        DF302E2D000000050505B5B0AC2F2D2C000000A19D9B7C78772C2C2BFDF9F65B
        5A59000000DFDAD76C6A69000000000000313030F4F1EFF9F3F0FEFBF851504F
        0000000000000000000000003B3A39F8F3F0FFFBF7595957000000D3CECCFFFF
        FF676665000000080707D6D2CFFFFAF73B393900000000000000000000000063
        6261DBD8D60909090000009F9E9DFFFFFFE6E1DE151515000000000000000000
        292727EAE6E42929280000004D4B49D3CECB090909000000656260F9F0EBECE3
        DEC8C0BB888786CDCDCDFFFFFFD4D4D4EAE3DEF1E9E3EDE4E0302E2D00000005
        0504B5B0AD2F2D2D000000A19E9B7C78782C2C2BFDFAF75B5B59000000DFDBD8
        6C6A69000000000000313130F4F1F0F9F4F1FEFCF951504F0000000000000000
        000000003B3A39F8F4F1FFFBF8595958000000D3CFCDFFFFFF67666500000008
        0707D6D2D0FFFAF83B3939000000000000000000000000636261DBD9D6090909
        0000009F9F9DFFFFFFE6E2DF151515000000000000000000292827EAE7E42929
        280000004D4B49D3CFCB090909000000656260F9F1ECECE3DFC8C0BC888786CD
        CDCDFFFFFFD4D4D4EAE3DFF1E9E4EDE5E1302E2D000000050505B5B0AE2F2D2D
        000000A19E9C7C79782C2C2BFDFAF85B5B5A000000DFDBD96C6A6A0000000000
        00313130F4F2F1F9F4F2FEFCFA5150500000000000000000000000003B3A3AF8
        F4F2FFFBF9595958000000D3CFCDFFFFFF676666000000080707D6D2D1FFFBF9
        3B3939000000000000000000000000636262DBD9D70909090000009F9F9EFFFF
        FFE6E2E0151515000000000000000000292827EAE7E52929280000004D4B4AD3
        CFCC090909000000656261F9F1EDECE4E0C8C1BD888786CDCDCDFFFFFFD4D4D4
        EAE4E0F1EAE4EEE6E1302E2D000000050505B5B1AF2F2E2D000000A29E9D7C7A
        782C2C2CFDFAF85C5B5A000000DFDCD96C6B6A000000000000313030F5F3F1FA
        F5F2FEFCFA5151500000000000000000000000003B3A3AF9F5F2FFFCFA595959
        000000D3D0CDFFFFFF686766000000080707D6D3D2FFFDFA3B3A390000000000
        00000000000000636262DCDAD70909090000009F9F9EFFFFFFE7E3E015151500
        0000000000000000292827EBE8E52929290000004C4B4AD4D0CC090909000000
        666361FAF2EDEDE5E0C9C2BE888886CDCDCDFFFFFFD4D4D4EAE5E0F1EAE6EEE7
        E3302F2D000000050505B5B2AF2F2E2D000000A29E9D7C7A792C2C2CFDFAFA5C
        5B5B000000DFDDDB6C6B6A000000000000313031F5F3F1FAF5F4FEFDFC515150
        0000000000000000000000003B3A3AF9F5F4FFFDFB595959000000D3D1CFFFFF
        FF686766000000080807D6D4D2FFFEFA3B3A3900000000000000000000000063
        6362DCDAD90909090000009F9F9FFFFFFFE7E4E2151515000000000000000000
        292828EBE9E72929290000004C4B4BD4D0CE090909000000666362FAF3EFEDE6
        E2C9C3BE888887CDCDCDFFFFFFD4D4D4EAE5E0F2EAE6EFE7E3302F2D00000005
        0505B6B2AF2F2E2D000000A29F9D7D7A792C2C2CFEFBFA5C5B5B000000DFDDDB
        6D6B6A000000000000313031F5F3F2FBF6F4FFFDFC5150500000000000000000
        000000003B3A3AFAF6F4FFFDFB595959000000D4D1CFFFFFFF68676600000008
        0807D7D4D2FFFEFB3B3A39000000000000000000000000636362DCDAD9090909
        000000A09F9FFFFFFFE8E4E2151515000000000000000000292828EBE9E72929
        290000004D4B4BD4D0CE0A0909000000666362FBF4EFEEE6E2CAC3BE888887CD
        CDCDFFFFFFD4D4D4EAE6E1F2EBE6EFE8E3302F2E000000050505B6B2B02F2E2D
        000000A2A09E7D7B792C2C2CFEFCFA5C5B5B000000DFDEDC6D6C6B0000000000
        00313131F5F4F3FBF8F5FFFDFC5151510000000000000000000000003B3B3AFA
        F8F5FFFEFC595959000000D4D2D0FFFFFF686767000000080807D7D5D3FFFFFC
        3B3B3A000000000000000000000000636362DCDBDA090909000000A09F9FFFFF
        FFE8E5E3151515000000000000000000292828EBE9E82929290000004D4C4BD4
        D2CF0A0909000000666462FBF5F0EEE7E2CAC4BF888887CDCDCDFFFFFFD4D4D4
        EBE6E2F3ECE6F0E9E3302F2E000000050505B6B2B12F2E2E000000A3A19F7D7B
        792C2C2CFFFDFA5C5B5B000000E0DFDD6D6C6B000000000000313130F6F4F3FC
        F9F5FFFEFD5151510000000000000000000000003B3B3AFAF8F5FFFFFD595959
        000000D5D3D1FFFFFF686767000000080808D7D6D4FFFFFE3B3B3A0000000000
        00000000000000646363DDDBDA090909000000A09F9FFFFFFFE9E6E415151500
        0000000000000000292828ECEAE92929290000004D4C4BD5D2CF0A0909000000
        666462FCF6F1EFE8E2CBC5C0898887CDCDCDFFFFFFD4D4D4EBE6E2F3ECE7F0E9
        E4302F2E000000050505B6B3B12F2E2E000000A3A19F7D7B7A2C2C2CFFFDFB5C
        5B5B000000E0DFDD6D6C6B000000000000313130F6F4F3FCF9F6FFFEFD515150
        0000000000000000000000003B3B3AFAF8F6FFFFFD595959000000D5D3D1FFFF
        FF686767000000080808D7D6D4FFFFFE3B3B3A00000000000000000000000064
        6363DDDBDA090909000000A09F9FFFFFFFE9E6E4151515000000000000000000
        292828ECEAE92929290000004D4C4BD5D2CF0A0909000000666462FCF6F1EFE8
        E3CBC5C0898887CDCDCDFFFFFFD4D4D4ECE7E3F4EDE8F1EAE5302F2E00000005
        0505B7B4B12F2E2E000000A4A19F7E7C7B2D2C2CFFFDFC5C5C5B000000E0DFDE
        6E6C6C000000000000313131F6F5F4FDFAF8FFFEFD5251510000000000000000
        000000003B3B3BFBF9F8FFFFFE595959000000D5D3D2FFFFFF68686700000008
        0808D8D6D5FFFFFF3B3B3B000000000000000000000000646363DEDCDB090909
        000000A09F9FFFFFFFEAE7E51515150000000000000000002A2928ECEAE92929
        290000004D4C4BD5D3D00A0909000000676463FDF7F2F0E9E4CCC5C1898887CD
        CDCDFFFFFFD4D4D4ECE7E3F4EEE9F1EBE6302F2E000000050505B7B5B22F2F2E
        000000A4A2A07E7C7B2D2C2CFFFDFD5C5C5B000000E0DFDF6E6D6C0000000000
        00313131F6F5F4FDFBF9FFFFFE5251510000000000000000000000003B3B3BFB
        FAF8FFFFFF595959000000D5D3D3FFFFFF686867000000080808D8D7D6FFFFFF
        3B3B3B000000000000000000000000646363DEDCDB090909000000A0A09FFFFF
        FFEAE8E61515150000000000000000002A2928ECEBEA2929290000004D4D4CD5
        D3D10A0909000000676563FDF7F3F0EAE5CCC6C1898887CDCDCDFFFFFFD4D4D4
        EDE7E3F5EEEAF2EBE7312F2F000000050505B7B5B32F2F2E000000A4A2A17E7C
        7C2D2C2CFFFEFD5C5C5C000000E0DFDF6E6D6C000000000000313131F7F5F5FE
        FBFAFFFFFE5251510000000000000000000000003B3B3BFBFAF8FFFFFF5A5959
        000000D6D4D3FFFFFF686868000000080808D8D7D6FFFFFF3B3B3B0000000000
        00000000000000646363DEDCDC090909000000A0A09FFFFFFFEAE8E716151500
        00000000000000002A2929EDEBEA2929290000004D4D4CD5D3D20A0909000000
        676563FEF7F4F1EAE6CDC6C1898888CDCDCDFFFFFFD4D4D4EDE8E4F5EFEAF2EC
        E7312F2F000000050505B7B5B32F2F2E000000A4A2A17E7D7C2D2C2CFFFFFD5C
        5C5C000000E0E0DF6E6D6C000000000000313131F7F6F5FEFCFAFFFFFE525151
        0000000000000000000000003B3B3BFBFAF9FFFFFF5A5959000000D6D5D3FFFF
        FF686868000000080808D8D7D6FFFFFF3B3B3B00000000000000000000000064
        6463DEDDDC090909000000A0A09FFFFFFFEAE9E7161515000000000000000000
        2A2929EDEBEA2929290000004D4D4CD5D4D20A0909000000676563FEF8F4F1EB
        E6CDC6C2898888CDCDCDFFFFFFD4D4D4EDE8E4F5EFEAF2ECE8312F2F00000005
        0505B7B5B32F2F2E000000A4A2A17E7D7C2D2C2CFFFFFE5C5C5C000000E0E0DF
        6E6D6D000000000000313131F7F6F5FEFCFBFFFFFF5251510000000000000000
        000000003B3B3BFBFAFAFFFFFF5A5959000000D6D5D4FFFFFF68686800000008
        0808D8D7D7FFFFFF3B3B3B000000000000000000000000646463DEDDDC090909
        000000A0A0A0FFFFFFEAE9E81615150000000000000000002A2929ECEBEB2929
        290000004D4D4CD5D4D20A0909000000676564FEF8F5F1EBE7CCC6C3898888CD
        CDCDFFFFFFD4D4D4EDE9E4F6EFEAF2ECE8312F2F000000050505B7B5B32F2F2E
        000000A4A2A17E7D7C2D2C2CFFFFFE5C5C5C000000E0E0DF6E6D6D0000000000
        00313131F7F6F5FEFCFBFFFFFF5251510000000000000000000000003B3B3BFB
        FAFAFFFFFF5A5959000000D6D5D4FFFFFF686868000000080808D8D7D7FFFFFF
        3B3B3B000000000000000000000000646463DEDDDC090909000000A0A0A0FFFF
        FFEAE9E81615150000000000000000002A2929ECECEB2929290000004E4D4CD6
        D4D20A0A09000000676564FFF9F5F2EBE7CDC7C3898888CDCDCDFFFFFFD4D4D4
        EDE9E5F6EFEBF2ECE8312F2F000000050505B7B5B32F2F2E000000A4A2A17E7D
        7C2D2C2CFFFFFE5C5C5C000000E0E0DF6E6D6D000000000000313131F7F6F5FE
        FCFBFFFFFF5251510000000000000000000000003B3B3BFBFAFAFFFFFF5A5959
        000000D6D5D4FFFFFF686868000000080808D8D7D7FFFFFF3B3B3B0000000000
        00000000000000646463DEDDDC090909000000A0A0A0FFFFFFEAE9E816151500
        00000000000000002A2929EDECEB2929290000004E4D4CD6D4D30A0909000000
        676564FFF9F5F2EBE7CDC7C3898888CDCDCDFFFFFFD4D4D4EEE9E6F7F0EBF2ED
        E9312F2F000000050505B7B5B42F2F2E000000A5A2A27F7D7C2D2C2CFFFFFE5C
        5C5C000000E1E0DF6E6D6D000000000000313131F8F6F5FFFCFBFFFFFF525151
        0000000000000000000000003B3B3BFCFAFAFFFFFF5A5959000000D6D5D4FFFF
        FF686868000000080808D9D7D7FFFFFF3B3B3B00000000000000000000000064
        6463DFDDDC090909000000A1A0A0FFFFFFEBE9E8161515000000000000000000
        2A2929EDECEB2929290000004D4D4DD5D4D30A0A09000000676564FEF9F6F2EC
        E8CEC8C4898888CDCDCDFFFFFFD4D4D4EEE9E5F7F0EBF2EDE9312F2F00000005
        0505B7B5B42F2F2E000000A5A2A17F7D7C2D2C2CFFFFFE5C5C5C000000E1E0DF
        6E6D6D000000000000313131F8F6F5FFFCFBFFFFFF5251510000000000000000
        000000003B3B3BFCFAFAFFFFFF5A5959000000D6D5D4FFFFFF68686800000008
        0808D9D7D7FFFFFF3B3B3B000000000000000000000000646463DFDDDC090909
        000000A1A0A0FFFFFFEBE9E81615150000000000000000002A2929EDECEB2929
        290000004E4D4DD6D4D30A0A09000000676564FFF9F6F2ECE8CEC8C4898888CD
        CDCDFFFFFFD4D4D4EDE9E6F6F0EBF2EDE931302F000000050505B7B5B42F2F2E
        000000A4A2A17E7D7C2D2C2CFFFFFD5C5C5C000000E0E0DF6E6D6D0000000000
        00313131F7F6F5FEFCFBFFFFFF5251510000000000000000000000003B3B3BFB
        FAFAFFFFFF5A5959000000D6D5D4FFFFFF686868000000080808D8D7D7FFFFFF
        3B3B3B000000000000000000000000646463DEDDDC090909000000A0A0A0FFFF
        FFEAE9E81615150000000000000000002A2929ECECEB2929290000004D4D4CD5
        D4D30A0A09000000676564FEF9F6F2ECE8CDC8C4898888CDCDCDFFFFFFD4D4D4
        EEE9E6F7F0EBF2EDE931302F000000050505B7B5B42F2F2E000000A4A2A17E7D
        7C2D2C2CFFFEFD5C5C5C000000E0DFDF6E6D6C000000000000313131F7F6F5FE
        FCFAFFFFFE5251510000000000000000000000003B3B3BFBFAF9FFFFFF5A5959
        000000D6D5D3FFFFFF686868000000080808D8D7D6FFFFFF3B3B3B0000000000
        00000000000000646463DEDDDC090909000000A0A09FFFFFFFEAE9E716151500
        00000000000000002A2929ECEBEA2929290000004E4D4CD6D4D30A0909000000
        676564FFF9F6F2ECE8CEC8C4898888CDCDCDFFFFFFD4D4D4EEE9E5F7EFEBF2ED
        E931302F000000050505B7B5B32F2F2E000000A4A2A17E7D7B2D2C2CFFFDFD5C
        5C5B000000E0DFDF6E6D6C000000000000313131F7F5F4FEFBF9FFFFFE525151
        0000000000000000000000003B3B3BFBFAF8FFFFFF5A5959000000D6D4D3FFFF
        FF686867000000080808D8D7D6FFFFFF3B3B3B00000000000000000000000064
        6363DEDCDB090909000000A0A09FFFFFFFEAE8E6161515000000000000000000
        2A2929ECEBEA2929290000004E4D4CD6D4D20A0909000000676564FFF9F5F2EB
        E7CEC7C3898888CDCDCDFFFFFFD4D4D4EDE9E5F6EFEBF2ECE8312F2F00000005
        0505B7B5B32F2F2E000000A4A1A07E7C7B2D2C2CFFFDFC5C5C5B000000E0DFDE
        6E6C6C000000000000313131F6F5F4FCFAF8FFFEFE5251510000000000000000
        000000003B3B3BFBF9F8FFFFFE595959000000D5D3D2FFFFFF68686700000008
        0808D8D6D5FFFFFF3B3B3B000000000000000000000000646363DEDCDB090909
        000000A09F9FFFFFFFEAE7E51515150000000000000000002A2928ECEBEA2929
        290000004D4D4CD5D3D10A0909000000676564FEF9F5F2EBE7CDC7C3898888CD
        CDCDFFFFFFD4D4D4EDE9E5F6EFEAF2ECE8312F2F000000050505B7B4B22F2E2E
        000000A4A19F7E7C7A2C2C2CFFFDFB5C5B5B000000E0DFDD6D6C6B0000000000
        00313130F6F5F3FCFAF6FFFEFD5151500000000000000000000000003B3B3AFA
        F9F6FFFFFD595959000000D5D3D1FFFFFF686867000000080808D7D6D4FFFFFE
        3B3B3A000000000000000000000000646363DDDCDA090909000000A09F9FFFFF
        FFE9E7E4151515000000000000000000292928ECEAE92929290000004D4D4BD5
        D3D00A0909000000676563FEF8F4F1EBE6CDC7C3898888CDCDCDFFFFFFD4D4D4
        EDE8E5F6EEE9F2ECE7312F2F000000050505B6B4B12F2E2E000000A3A19F7D7B
        7A2C2C2CFFFCFA5C5B5B000000E0DEDC6D6C6A000000000000313131F6F3F3FC
        F7F5FFFDFD5150500000000000000000000000003B3B3AFAF7F5FFFEFC595959
        000000D5D2D0FFFFFF686767000000080808D7D5D3FFFFFD3B3B390000000000
        00000000000000646363DDDADA090909000000A09F9FFFFFFFE9E5E315151500
        0000000000000000292828ECEAE92929290000004D4C4BD5D3D00A0909000000
        676563FEF7F3F1EAE5CDC6C3898888CDCDCDFFFFFFD5D5D5ECE8E4F4EEE9F1EA
        E62E2D2C000000030303B6B2B02D2C2B000000A19F9D7B79782A2A2AFEFBF95B
        5959000000DFDCDA6B6A690000000000002F2E2FF5F3F2FAF5F3FFFDFC4F4F4E
        000000000000000000000000393838F9F5F3FFFDFB575757000000D3D0CEFFFF
        FF666665000000060505D6D3D2FFFEFB39383700000000000000000000000061
        6161DCDAD80707070000009F9E9EFFFFFFE7E3E1131313000000000000000000
        272626EBE9E72727270000004B4A49D4D1CF080707000000656361FDF7F2F0EA
        E5CCC6C28A8888CECECEFFFFFFD6D6D6EDE7E3F4EDE9F0EAE531302F01010106
        0606B5B1AF2F2E2D000000A19E9C7C7A782C2C2BFCFAF75C5B5A010101DFDBD8
        6D6B6A010000010101323131F4F3F0F9F4F1FEFBF95151500101000101010101
        010101013C3B3AF8F4F1FFFBF95A5958010101D3D0CDFFFFFF68676601000009
        0808D6D3D0FFFCF93C3B3A010101010101010101010100636262DBD9D70A0A0A
        0101009F9F9EFFFFFFE6E2DF151515010101010101010101292828EAE8E52A2A
        290000004D4B4BD4D0CD0B0A0A000000676563FCF5F1EFE8E4CBC5C191908FD5
        D5D5FFFFFFD9D9D9EDE6E3F2EAE5EFE7E2C7C2BDBCB7B3BFBAB6E5DEDAC9C3C1
        BCB8B5E2DCD8D9D5D2C9C5C2F6F0EDD3CFCDBEBCB9F0EAE7D6D3D0BDBBB8BEBC
        B9CAC7C5F4F0EDF5F0EDF7F1EED1CECBBDBBB9BFBDBBBFBDBBBDBCB9CCC9C6F5
        F0EDF7F1EED3CFCDBEBCBAEDE8E5F8F3F0D6D3D0BCBAB8C1BFBCEEE9E6F7F1EE
        CCC9C6BDBCB9BFBDBBBFBDBBBDBBB9D5D1CFEFEAE8C2BFBCBDBBB9E2DEDBF8F3
        F0F1ECE9C4C1BFBEBCBABFBDBABEBBB9C8C4C2F2ECE9C8C4C1BCB9B6CFCAC7EB
        E5E1C1BBB8BBB6B3D3CDC9F3EAE6EEE6E2CCC5C1A1A0A0E5E5E5FFFFFFE5E5E5
        F6F2F0FFFAF7FBF5F1FFFFFAFFFFFEFFFFFEFFFBF8FFFFFEFFFFFFFFFDFBFFFF
        FDFFFFFFFFFAF8FFFFFEFFFFFFFFFCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFBF8FF
        FBF8FFFAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8FFFAF8FFFFFF
        FFFFFFFFFDFAFEFAF7FFFFFFFFFFFFFFFFFFFFFCFAFFFAF8FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFAFFFFFFFFFFFFFFFFFCFEFAF7FFFCF9FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFAF8FFFFFFFFFFFFFFFFFDFFFAF7FFFFFCFFFFFD
        FFFAF6F8F3EFFAF4F0E2DAD5C1C1C1F6F6F6FFFFFFFFFFFFD3D2D1D6D6D5D3D1
        D0D4D1D1D4D2D1D4D2D1D4D2D1D4D2D1D4D2D1D5D3D1D5D3D2D4D3D2D5D3D2D4
        D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2
        D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3
        D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5
        D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D5D3D2D4D3D1
        D4D3D2D5D3D2D4D3D2D4D3D1D4D2D1D4D2D1E2E0DFE2E0DFE2E0DFE2E0DFE5E4
        E3C5C2C1F6F6F6FBFBFBFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCF6F6F6F6F6F6F6F6F6F6F6F6F7F7F7FFFFFFFFFFFFFE
        FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      ShowHint = False
      Stretch = True
      Transparent = True
    end
    object RxLabel65: TRxLabel
      Left = 588
      Top = 64
      Width = 51
      Height = 13
      Caption = 'Data Cad:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 671
      Top = 64
      Width = 84
      Height = 17
      Alignment = taRightJustify
      Color = 15263976
      DataField = 'DATACAD'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel64: TRxLabel
      Left = 588
      Top = 88
      Width = 66
      Height = 13
      Caption = 'Dt Altera'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 669
      Top = 88
      Width = 87
      Height = 17
      Alignment = taRightJustify
      Color = 15263976
      DataField = 'DATAULTALTERACAO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel58: TRxLabel
      Left = 403
      Top = 39
      Width = 54
      Height = 13
      Caption = 'C'#243'd. Cest:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object suibutton11: TSpeedButton
      Left = 469
      Top = 10
      Width = 23
      Height = 21
      Hint = 'Consultar Ncm'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF314B62
        AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
        106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
        00FF925D5AB48C80C9A391C28F88FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF3BABFFA1CAE78C7775A38372EBE0B8FEFCCFFEFCCEFCFBCCE3CF
        B1C0998CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBDA4A4CEA58FFF
        EDB2FFFCCAFFFFCFFFFFCFFFFFD5FFFFEAF3EBE5A0746FFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFB67F76F4D9A1F6D095FCF4C2FFFFCFFFFFD8FFFFEEFFFF
        FAFFFFFFD5C2ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD0A792FBDC9AEE
        B87FFBF0BDFFFFD0FFFFDCFFFFF7FFFFFAFFFFE6EEEAC2B7847EFF00FFFF00FF
        FF00FFFF00FFFF00FFDCB79AFAD796EAA76CF7DAA3FFFFCEFFFFD4FFFFE1FFFF
        E3FFFFD7F8F6CBB69782FF00FFFF00FFFF00FFFF00FFFF00FFD5AF96FEE2A1EA
        A96AEFBD80FAE9B4FFFFD0FFFFD3FFFFD1FFFFD1F3EEC5B88B80FF00FFFF00FF
        FF00FFFF00FFFF00FFBB8980FCEBB1F8E2B5F0C690F0C286F7DCA5FEF3C1FEF8
        C6FFFFCFDDCEA9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD3B499FF
        FFFFFFF4E2EFBD80EBAB6FF0C086FBDEA3FCF3B8AC8676FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFC6ADA7F3EBD1FFEEAFFCDE9DFEE2A1F0D4
        A4C29886FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFBB987EC19983D3AD93D1A592FF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = suiButton11Click
    end
    object RxLabel77: TRxLabel
      Left = 226
      Top = 64
      Width = 90
      Height = 13
      Caption = 'C'#243'digo de f'#225'brica:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel81: TRxLabel
      Left = 4
      Top = 64
      Width = 65
      Height = 13
      Caption = 'Cod. Pacote:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 589
      Top = 7
      Width = 108
      Height = 24
      Hint = 'Consultar Ncm'
      Caption = 'Validar NCM'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFDFDFDFDFDFDFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFEFEFCFCFCF9F9F9F6F6F6F2F2F2EDEDEDE4E4E4C8C9C9
        92B9A3CFD0CFEAEAEAEFEFEFF2F2F2F4F4F4F7F7F7F9F9F9FCFCFCFDFDFDFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDFC
        FCFCFBFBFB98D9B315BE5DB7E3CAFCFCFCFCFCFCFDFDFDFDFDFDFEFEFEFEFEFE
        FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFA2E0BC18C05F18C46133C470F5FBF8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFBFEFC7ED6A311C05B10C25B11C25B10C15A74D3
        9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F5EA49C87F0CC0580CC15812BE5A
        52C9840CC1580EBF58B1E5C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8E7CC1BBF600CC1580C
        C1580CC15863CF90D9F2E411BE5A0CC1581ABF60D2EFDEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F4
        E955CB8713C05C17C36014BF5CD8F1E2FFFFFF63D09117C36018C4612CC26CDC
        F2E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFBEE9D047C87D6DD197FFFFFFFFFFFFDEF3E729C4
        6B34CC7533CB7439C775CBEDDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFFFFFFFFFF
        FFFFFFFFFFFF87D8A94AD08457D48D53D38A43CB7D97DDB4F9FDFBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FBF756CD896BD99A71DB9F6FDB9D5CD590
        68CF94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCEDDA56D08A7A
        DDA57DDEA774DCA183D8A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA6E2BF61D49381DFA96EDA9DACE3C3FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93DBB163D59458D18CDEF2E6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2E0BC3FC377
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE8F6EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 701
      Top = 7
      Width = 108
      Height = 24
      Hint = 'Consultar Ncm'
      Caption = 'At. Tab. NCM'
      Enabled = False
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000002AF51
        0057AB4A00B4B95809E5BB5909EDAD4A01D1A03C008AAF44001FFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C65A0023B95A00C9DF82
        27FFFFA43FFFFFA33BFFFFA036FFFFA030FFF48B21FFBD5708F6B644006FFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00D3660030C3660AEAFEA74DFFFFAA
        4CFFFFA344FFFFA13FFFFFA33BFFFF9D33FFFD9429FFFF9F29FFDC7213FEB645
        0085FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CB63
        004FC96200A8D96C004BFF00FF00DB66001CC36909E7FFB05BFFFFAD56FFFFA9
        4EFFFFA94CFFF39839FFC5660EF4B54F00ADB4490092B14900B2C55F09F5BF58
        07FEB947004EFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C871
        14EFFFCA8DFFCE7718F2C7650027C06300C1FBB468FFFFB366FFFFAD5AFFFFAF
        5AFFE48E33FFAE5900ABC0500015FF00FF00FF00FF00FF00FF00C5430015B047
        00A4B14600D700000001FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C975
        15DFFFCF9AFFFDC285FFBC6000ECE8A053FFFFC487FFFFBA74FFFFB567FFEE9B
        43FFB15D009EFF000001FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00C14B0088CB470016FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C165
        00B7FFD4A4FFFFCD9BFFF6BB7EFFFFCB95FFFFC58BFFFFC283FFFFBA73FFC264
        00CEBF600006FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C164
        008FFCCC9BFFFFD1A2FFFFD0A0FFFFCC99FFFFC991FFFFC990FFDA8D32FDCE6A
        0037FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C56B
        0067F2BF87FFFFD7AEFFFFD2A5FFFFD0A0FFFFCA98FFFDC488FFBD6100DEC466
        0039DB410004FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C972
        003FE7AD65FFFFE4C8FFFFD5ACFFFFD1A3FFFFCD9AFFFFC993FFF4B26CFFE293
        39FFC9720BE0D8720017FF00FF00FF00FF00FF00FF00C545000CB1490028B13F
        0047AA3C0065A9370082A736008FBA3E0020FF00FF00FF00FF00FF00FF00D87A
        0018E39C3FFEFFF3E4FFFFDCBAFFFFD3A6FFFFCF9FFFFFCC97FFFFC990FFFFC5
        83FFEA9841FFBE66004EB55B000CBE5400B4C96918EBC6712EFDCF8447FFDB98
        62FFE6AE7FFFF3C599FFFACC9FFFAE4505C8FF00FF00FF00FF00FF00FF00FF00
        FF00E58B09CFFEDBB6FFFAD6ADFFF3C388FFEDAE62FFE39D46FFDC8D2DFEE285
        17EED57401B7D059000CB04C0052E89F5BFFFFD397FFFFD19BFFFFD4A3FFFFD7
        ABFFFFD9B0FFFFD8B1FFFFDFB6FFC06D34FEAC350013FF00FF00FF00FF00FF00
        FF00FA8B0024E3840095E5830087E4830068DF7E004ADB7B002CED72000FFF00
        FF00FF00FF00FF00FF00CE61001BBF610BE4DB9350FFF2B67DFFFFCE9BFFFFD0
        A0FFFFD3A6FFFFD4A9FFFFDAAEFFD08850FF9A33003AFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C2610006B24A003FA74200E2FDC791FFFFCC
        9AFFFFCF9EFFFFD0A0FFFFD4A3FFE3A36AFF9D330062FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00BB570039D38237FDFFCB92FFFFC7
        8FFFFFCA95FFFFCC97FFFFCC96FFF5B981FF9A32008AFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D0500007B85A00D0FFBB77FFFFC383FFFFC5
        88FFFFC98FFFF4B578FFFFCA8FFFFFCC8EFF9C3700B2FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00EC7D001AEA7F0080FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF000001B35E009EEC9A44FFFFB567FFFFBA72FFFFC3
        81FFDF914BFFA44000EEFEC58DFFFFC987FFAE4E0ED9FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0088970002D27400DDD97A009DE5830012FF00FF00FF00
        FF00FF00FF00D5690013B66500AAE79033FFFFAF59FFFFAC57FFFFB362FFFBAF
        63FFAF4F00C0B447002BBE641BF5FFCF8AFFB2530FEBFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00EC830055DD7E09FEDC7D08F2D57700ABD374
        008AD06F00A8D1760CF2F69838FFFFA84BFFFFA64BFFFFAA50FFFFAC54FFBC5D
        08E6C54F001CFF00FF00C44D0051B14500AFAF410050FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EC89008DEF8B15FFFF982BFFFB94
        27FFFF9A31FFFF9F38FFFFA03BFFFFA13FFFFFA84CFFFDAA55FFC26309EACE60
        0030FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E9860076DD7F0CF8FB98
        32FFFFA94AFFFFA94EFFFFAF58FFFFB15EFFE5903AFFBC5C00CBD1630023FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D57A0024C56D
        0091CC7100D8D2780EF6CE710AECBC5F00BABA5C005BB55A0003FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object BtnAddPro: TSpeedButton
      Left = 211
      Top = 9
      Width = 84
      Height = 21
      Hint = 'Cadastrar Codigo Barras Caixa/Pacote'
      Caption = 'Agregados'
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
    object RxLabel110: TRxLabel
      Left = 427
      Top = 63
      Width = 62
      Height = 13
      Caption = 'Em Estoque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 469
      Top = 34
      Width = 23
      Height = 21
      Hint = 'Consulta Cest - Verificar Relacionamento Cest X Ncm'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF314B62
        AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
        106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
        00FF925D5AB48C80C9A391C28F88FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF3BABFFA1CAE78C7775A38372EBE0B8FEFCCFFEFCCEFCFBCCE3CF
        B1C0998CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBDA4A4CEA58FFF
        EDB2FFFCCAFFFFCFFFFFCFFFFFD5FFFFEAF3EBE5A0746FFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFB67F76F4D9A1F6D095FCF4C2FFFFCFFFFFD8FFFFEEFFFF
        FAFFFFFFD5C2ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD0A792FBDC9AEE
        B87FFBF0BDFFFFD0FFFFDCFFFFF7FFFFFAFFFFE6EEEAC2B7847EFF00FFFF00FF
        FF00FFFF00FFFF00FFDCB79AFAD796EAA76CF7DAA3FFFFCEFFFFD4FFFFE1FFFF
        E3FFFFD7F8F6CBB69782FF00FFFF00FFFF00FFFF00FFFF00FFD5AF96FEE2A1EA
        A96AEFBD80FAE9B4FFFFD0FFFFD3FFFFD1FFFFD1F3EEC5B88B80FF00FFFF00FF
        FF00FFFF00FFFF00FFBB8980FCEBB1F8E2B5F0C690F0C286F7DCA5FEF3C1FEF8
        C6FFFFCFDDCEA9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD3B499FF
        FFFFFFF4E2EFBD80EBAB6FF0C086FBDEA3FCF3B8AC8676FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFC6ADA7F3EBD1FFEEAFFCDE9DFEE2A1F0D4
        A4C29886FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFBB987EC19983D3AD93D1A592FF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object suiButton5: TAdvGlowButton
      Left = 297
      Top = 10
      Width = 105
      Height = 20
      Hint = 'Verifica se o C'#243'digo EAN 13 '#233' Verdadeiro'
      Caption = 'Verificar EAN 13'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = suiButton5Click
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
      Enabled = False
    end
    object suiButton6: TAdvGlowButton
      Left = 358
      Top = 36
      Width = 38
      Height = 19
      Hint = 'Cadastro de Unidades de Medida'
      Caption = 'U'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = suiButton6Click
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
      Enabled = False
    end
    object DBEdit1: TDBEdit
      Left = 83
      Top = 9
      Width = 126
      Height = 21
      Hint = 'C'#243'digo EAN'
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CODIGO_BARRAS'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object db_nome: TDBEdit
      Left = 83
      Top = 84
      Width = 499
      Height = 22
      Hint = 'Descri'#231#227'o do Produto'
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'DESCRICAO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnEnter = db_nomeEnter
      OnExit = db_nomeExit
    end
    object suiDBLookupComboBox1: TDBLookupComboBox
      Left = 283
      Top = 35
      Width = 70
      Height = 21
      Hint = 'Unidade de Medida'
      Color = 15263976
      DataField = 'UNIDADE'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'CODIGO'
      ListField = 'ABREVIATURA'
      ListFieldIndex = 1
      ListSource = DM.DTS_Unidades
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnEnter = suiDBLookupComboBox1Enter
      OnExit = suiDBLookupComboBox1Exit
    end
    object DBEdit2: TDBEdit
      Left = 83
      Top = 34
      Width = 142
      Height = 21
      Hint = 'Referencia do Produto'
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'REFERENCIA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnEnter = db_nomeEnter
      OnExit = DBEdit2Exit
    end
    object Edit3: TRxDBCalcEdit
      Left = 493
      Top = 60
      Width = 89
      Height = 21
      DataField = 'ESTOQUE'
      DataSource = DM.DTS_PRODUTOS
      DecimalPlaces = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GlyphKind = gkCustom
      Glyph.Data = {
        46010000424D460100000000000076000000280000001A0000000D0000000100
        040000000000D000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
        88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
        88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
        88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
        88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
        88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
        88888888888888000000}
      ButtonWidth = 0
      MaxLength = 9
      NumGlyphs = 2
      ParentColor = True
      ParentFont = False
      TabOrder = 6
      OnExit = Edit3Exit
    end
    object dbt_codigo: TDBEdit
      Left = 671
      Top = 37
      Width = 85
      Height = 18
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      Ctl3D = True
      DataField = 'CODIGO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      OnChange = dbt_codigoChange
    end
    object DBEdit25: TDBEdit
      Left = 493
      Top = 10
      Width = 89
      Height = 21
      Hint = 'Referencia do Produto'
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'NCM_SH'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnEnter = db_nomeEnter
      OnKeyPress = DBEdit25KeyPress
    end
    object DBEdit34: TDBEdit
      Left = 320
      Top = 60
      Width = 105
      Height = 21
      Hint = 'C'#243'digo original de f'#225'brica'
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CODORIGINAL'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnEnter = db_nomeEnter
      OnExit = DBEdit2Exit
    end
    object DBEdit35: TDBEdit
      Left = 83
      Top = 60
      Width = 142
      Height = 21
      Hint = 'C'#243'digo do pacote'
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'COD_PACOTE'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnEnter = db_nomeEnter
      OnExit = DBEdit2Exit
    end
    object DBEdit84: TDBEdit
      Left = 493
      Top = 34
      Width = 89
      Height = 21
      Hint = 'Tabela Cest'
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CEST'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnEnter = db_nomeEnter
      OnKeyPress = DBEdit25KeyPress
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 113
    Width = 916
    Height = 144
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object RxLabel22: TRxLabel
      Left = 4
      Top = 7
      Width = 35
      Height = 13
      Caption = 'Grupo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel23: TRxLabel
      Left = 460
      Top = 7
      Width = 57
      Height = 13
      Caption = 'Sub-Grupo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel24: TRxLabel
      Left = 4
      Top = 29
      Width = 35
      Height = 13
      Caption = 'Marca:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel25: TRxLabel
      Left = 460
      Top = 29
      Width = 61
      Height = 13
      Caption = 'Fornecedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 4
      Top = 50
      Width = 53
      Height = 13
      Caption = 'Categoria:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel21: TRxLabel
      Left = 460
      Top = 50
      Width = 40
      Height = 13
      Caption = 'Sec'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel57: TRxLabel
      Left = 386
      Top = 112
      Width = 26
      Height = 13
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel42: TRxLabel
      Left = 4
      Top = 69
      Width = 57
      Height = 13
      Caption = 'L. Estoque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel66: TRxLabel
      Left = 460
      Top = 71
      Width = 57
      Height = 13
      Caption = 'Tributa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel12: TRxLabel
      Left = 730
      Top = 109
      Width = 52
      Height = 13
      Caption = 'C'#243'd. ANP:'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Grupo: TRxDBComboEdit
      Left = 83
      Top = 3
      Width = 70
      Height = 21
      Hint = 'C'#243'digo do Grupo'
      CharCase = ecUpperCase
      ClickKey = 113
      Color = 15263976
      Ctl3D = True
      DataField = 'CODIGO_GRUPO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnButtonClick = RxDBComboEdit1ButtonClick
      OnEnter = GrupoEnter
      OnExit = GrupoExit
      OnKeyPress = GrupoKeyPress
    end
    object SubGrupo: TRxDBComboEdit
      Left = 531
      Top = 3
      Width = 70
      Height = 21
      Hint = 'C'#243'digo do Sub-Grupo'
      CharCase = ecUpperCase
      ClickKey = 113
      Color = 15263976
      Ctl3D = True
      DataField = 'CODIGO_SUBGRUPO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnButtonClick = SubGrupoButtonClick
      OnEnter = SubGrupoEnter
      OnExit = SubGrupoExit
      OnKeyPress = SubGrupoKeyPress
    end
    object Marca: TRxDBComboEdit
      Left = 83
      Top = 25
      Width = 70
      Height = 21
      Hint = 'C'#243'digo da Marca'
      CharCase = ecUpperCase
      ClickKey = 113
      Color = 15263976
      Ctl3D = True
      DataField = 'CODIGO_MARCA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnButtonClick = MarcaButtonClick
      OnEnter = MarcaEnter
      OnExit = MarcaExit
      OnKeyPress = MarcaKeyPress
    end
    object suiButton7: TAdvGlowButton
      Left = 419
      Top = 3
      Width = 38
      Height = 19
      Hint = 'Cadastro de Grupo de Produtos'
      Caption = 'G'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = suiButton7Click
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
      Enabled = False
    end
    object suiButton8: TAdvGlowButton
      Left = 869
      Top = 3
      Width = 38
      Height = 19
      Hint = 'Cadastro de Sub-Grupo de Produtos'
      Caption = 'S'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = suiButton8Click
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
      Enabled = False
    end
    object suiButton9: TAdvGlowButton
      Left = 419
      Top = 25
      Width = 38
      Height = 19
      Hint = 'Cadastro de Marcas de Produtos'
      Caption = 'M'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = suiButton9Click
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
      Enabled = False
    end
    object FORNECEDOR: TRxDBComboEdit
      Left = 531
      Top = 25
      Width = 70
      Height = 21
      Hint = 'C'#243'digo do Fornecedor'
      CharCase = ecUpperCase
      ClickKey = 113
      Color = 15263976
      Ctl3D = True
      DataField = 'CODIGO_FORNECEDORES'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnButtonClick = FORNECEDORButtonClick
      OnEnter = FORNECEDOREnter
      OnExit = FORNECEDORExit
      OnKeyPress = FORNECEDORKeyPress
    end
    object suiButton3: TAdvGlowButton
      Left = 869
      Top = 25
      Width = 38
      Height = 19
      Hint = 'Cadastro de Fornecedor'
      Caption = 'F'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
      OnClick = suiButton3Click
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
      Enabled = False
    end
    object suiButton4: TAdvGlowButton
      Left = 419
      Top = 47
      Width = 38
      Height = 19
      Hint = 'Cadastro de Categorias'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
      OnClick = suiButton4Click
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
      Enabled = False
    end
    object suiButton10: TAdvGlowButton
      Left = 869
      Top = 47
      Width = 38
      Height = 19
      Hint = 'Cadastro de Sec'#231#245'es'
      Caption = 'SC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 22
      OnClick = suiButton10Click
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
      Enabled = False
    end
    object CheckBox1: TDBCheckBox
      Left = 265
      Top = 94
      Width = 87
      Height = 19
      Hint = 'Marque se utiliza Emiss'#227'o de Etiquetas'
      Caption = 'Gera Etiqueta'
      Color = 15263976
      DataField = 'ETIQUETA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object CheckBox2: TDBCheckBox
      Left = 265
      Top = 116
      Width = 112
      Height = 19
      Hint = 'Marque se utiliza Exporta'#231#227'o para Balan'#231'as'
      Caption = 'Exporta p/ Balan'#231'a'
      DataField = 'BALANCA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object suiDBRadioGroup2: TDBRadioGroup
      Left = 138
      Top = 90
      Width = 124
      Height = 45
      Hint = 'Selecione Ativo ou Inativo'
      BiDiMode = bdRightToLeft
      Caption = 'Produto/Servi'#231'o'
      Columns = 2
      DataField = 'PROD_SERV'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Produto'
        'Servi'#231'o')
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 13
      TabStop = True
      Values.Strings = (
        'P'
        'S')
    end
    object suiDBRadioGroup1: TDBRadioGroup
      Left = 6
      Top = 90
      Width = 120
      Height = 45
      Hint = 'Selecione Ativo ou Inativo'
      BiDiMode = bdRightToLeft
      Caption = 'Produto Ativo'
      Columns = 2
      DataField = 'ATIVO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Ativo '
        'Inativo')
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 12
      TabStop = True
      Values.Strings = (
        'A'
        'I')
    end
    object Categoria: TRxDBComboEdit
      Left = 83
      Top = 48
      Width = 70
      Height = 21
      Hint = 'C'#243'digo da Categoria'
      CharCase = ecUpperCase
      ClickKey = 113
      Color = 15263976
      Ctl3D = True
      DataField = 'CATEGORIA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnButtonClick = CategoriaButtonClick
      OnEnter = CategoriaEnter
      OnExit = CategoriaExit
      OnKeyPress = CategoriaKeyPress
    end
    object Seccao: TRxDBComboEdit
      Left = 531
      Top = 47
      Width = 70
      Height = 21
      Hint = 'C'#243'digo da Categoria'
      CharCase = ecUpperCase
      ClickKey = 113
      Color = 15263976
      Ctl3D = True
      DataField = 'SECCAO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnButtonClick = SeccaoButtonClick
      OnEnter = SeccaoEnter
      OnExit = SeccaoExit
      OnKeyPress = SeccaoKeyPress
    end
    object lEstoque: TRxDBComboEdit
      Left = 83
      Top = 70
      Width = 70
      Height = 21
      Hint = 'C'#243'digo do Local do Estoque'
      CharCase = ecUpperCase
      ClickKey = 113
      Color = 15263976
      Ctl3D = True
      DataField = 'CODIGO_LOCAL_ESTOQUE'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnButtonClick = lEstoqueButtonClick
      OnChange = lEstoqueChange
      OnExit = lEstoqueExit
      OnKeyPress = lEstoqueKeyPress
    end
    object suiButton12: TAdvGlowButton
      Left = 419
      Top = 69
      Width = 38
      Height = 19
      Hint = 'Cadastro de Locais de Estoque'
      Caption = 'LC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = suiButton12Click
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
      Enabled = False
    end
    object Edit1: TAlignEdit
      Left = 851
      Top = 112
      Width = 57
      Height = 21
      Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar'
      Alignment = taRightJustify
      ParentShowHint = False
      ShowHint = True
      TabOrder = 23
      Visible = False
    end
    object grupo2: TDBEdit
      Left = 157
      Top = 3
      Width = 260
      Height = 21
      TabStop = False
      DataField = 'NOME_GRUPO'
      DataSource = DM.DTS_PRODUTOS
      ParentColor = True
      TabOrder = 24
    end
    object SubGrupo2: TDBEdit
      Left = 605
      Top = 3
      Width = 260
      Height = 21
      TabStop = False
      DataField = 'NOME_SUBGRUPO'
      DataSource = DM.DTS_PRODUTOS
      ParentColor = True
      TabOrder = 25
    end
    object marca2: TDBEdit
      Left = 157
      Top = 25
      Width = 260
      Height = 21
      TabStop = False
      DataField = 'NOME_MARCA'
      DataSource = DM.DTS_PRODUTOS
      ParentColor = True
      TabOrder = 26
    end
    object fornecedor2: TDBEdit
      Left = 605
      Top = 25
      Width = 260
      Height = 21
      TabStop = False
      DataField = 'NOME_FORNECEDOR'
      DataSource = DM.DTS_PRODUTOS
      ParentColor = True
      TabOrder = 27
    end
    object Categoria2: TEdit
      Left = 157
      Top = 47
      Width = 260
      Height = 21
      TabStop = False
      Color = clBtnFace
      TabOrder = 28
    end
    object seccao2: TEdit
      Left = 605
      Top = 47
      Width = 260
      Height = 21
      TabStop = False
      Color = clBtnFace
      TabOrder = 29
    end
    object Lestoque2: TEdit
      Left = 157
      Top = 70
      Width = 260
      Height = 21
      TabStop = False
      Color = clBtnFace
      TabOrder = 30
    end
    object Grupo_Trib: TRxDBComboEdit
      Left = 531
      Top = 69
      Width = 70
      Height = 21
      Hint = 'C'#243'digo do Grupo Icms'
      CharCase = ecUpperCase
      ClickKey = 113
      Color = 15263976
      Ctl3D = True
      DataField = 'GRUPO_TRIBUTACAO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnButtonClick = Grupo_TribButtonClick
      OnExit = Grupo_TribExit
    end
    object D_grupo_t: TEdit
      Left = 605
      Top = 69
      Width = 260
      Height = 21
      Color = clBtnFace
      TabOrder = 31
    end
    object suiButton13: TAdvGlowButton
      Left = 869
      Top = 68
      Width = 38
      Height = 19
      Hint = 'Cadastro de Locais de Estoque'
      Caption = 'GT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
      OnClick = suiButton13Click
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
      Enabled = False
    end
    object suiDBRadioGroup3: TDBRadioGroup
      Left = 606
      Top = 90
      Width = 120
      Height = 45
      Hint = 'Selecione Ativo ou Inativo'
      BiDiMode = bdRightToLeft
      Caption = 'Combustivel'
      Columns = 2
      DataField = 'COMBUSTIVEL'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 17
      TabStop = True
      Values.Strings = (
        'S'
        'N')
      OnChange = suiDBRadioGroup3Change
    end
    object DBEdit26: TDBEdit
      Left = 784
      Top = 106
      Width = 119
      Height = 21
      Hint = 'Referencia do Produto'
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'COD_ANP'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
      OnEnter = db_nomeEnter
    end
    object RxDBComboBox1: TRzDBComboBox
      Left = 416
      Top = 109
      Width = 181
      Height = 21
      DataField = 'TIPO_ATIVIDADE'
      DataSource = DM.DTS_PRODUTOS
      TabOrder = 16
      Items.Strings = (
        '00-Mercadoria para Revenda'
        '01-Mat'#233'ria-Prima '
        '02-Embalagem'
        '03- Produto em Processo'
        '04-Produto Acabado '
        '05-Subproduto'
        '06- Produto Intermedi'#225'rio'
        '07-Material de Uso e Consumo'
        '08-Ativo Imobilizado'
        '09-Servi'#231'os'
        '10-Outros insumos'
        '99-Outras')
      Values.Strings = (
        '00'
        '01 '
        '02 '
        '03 '
        '04 '
        '05 '
        '06'
        '07'
        '08 '
        '09 '
        '10 '
        '99')
    end
  end
  object OpenDialog1: TOpenPictureDialog
    Filter = 
      'Bitmaps (*.bmp)|*.bmp|CompuServe GIF Image (*.gif)|*.gif|JPEG Im' +
      'age File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Metafiles' +
      ' (*.wmf)|*.wmf|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.' +
      'emf|All (*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.gif;*.jpg' +
      ';*.jpeg;*.bmp;*.ico;*.emf;*.wmf'
    Left = 314
    Top = 21
  end
  object ACBrLCB3: TACBrLCB
    Porta = 'COM1'
    Sufixo = ' '
    Intervalo = 300
    OnLeCodigo = ACBrLCB3LeCodigo
    Left = 822
    Top = 25
  end
  object IBTRPro: TIBTransaction
    DefaultDatabase = DM.IBDatabase
    Left = 856
    Top = 16
  end
  object IBSQLPro: TIBSQL
    Database = DM.IBDatabase
    Transaction = IBTRPro
    Left = 864
    Top = 64
  end
  object qrinfnutricional_produto: TDataSource
    DataSet = DM.qrinfnutricional_produto
    Left = 969
    Top = 777
  end
  object popmenu1: TAdvPopupMenu
    Version = '2.6.2.1'
    Left = 708
    Top = 272
    object Indstrializao1: TMenuItem
      Caption = 'Industrializa'#231#227'o'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Inventrio1: TMenuItem
      Caption = 'Invent'#225'rio'
      OnClick = Inventrio1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MovimentarEstoque1: TMenuItem
      Caption = 'Movimentar Estoque'
      OnClick = MovimentarEstoque1Click
    end
    object ConsultaSerial1: TMenuItem
      Caption = 'Consulta Serial'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object GrupoSubgrupo1: TMenuItem
      Caption = 'Grupo'
      OnClick = suiButton7Click
    end
    object Fornecedor1: TMenuItem
      Caption = 'Fornecedor'
      OnClick = suiButton3Click
    end
    object MarcaFabricanteLaboratrio1: TMenuItem
      Caption = 'Marca / Fabricante / Laborat'#243'rio'
      OnClick = suiButton9Click
    end
    object Receitas1: TMenuItem
      Caption = 'Receitas'
    end
    object NaturezadeOperaoCFOP1: TMenuItem
      Caption = 'Natureza de Opera'#231#227'o - CFOP'
      OnClick = NaturezadeOperaoCFOP1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Exportarparaarquivo1: TMenuItem
      Caption = 'Exportar para arquivo'
    end
    object ImportardeArquivo1: TMenuItem
      Caption = 'Importar de Arquivo'
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object otalizarestoque1: TMenuItem
      Caption = 'Totalizar estoque'
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object AtualizaodePreos1: TMenuItem
      Caption = 'Atualiza'#231#227'o de Pre'#231'os'
      OnClick = AtualizaodePreos1Click
    end
    object AtualizarPreosdeVendasRemarcados1: TMenuItem
      Caption = 'Atualizar Pre'#231'os de Vendas Remarcados'
    end
  end
  object QRRENTABILIDADE: TFDQuery
    BeforeInsert = QRRENTABILIDADEBeforeInsert
    BeforeEdit = QRRENTABILIDADEBeforeEdit
    BeforeDelete = QRRENTABILIDADEBeforeDelete
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from PRODUTO_RENTABILIDADE')
    Left = 856
    Top = 472
    object QRRENTABILIDADERENTABILIDADE: TIntegerField
      FieldName = 'RENTABILIDADE'
      Origin = 'RENTABILIDADE'
    end
    object QRRENTABILIDADECOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      Required = True
    end
    object QRRENTABILIDADEPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 70
    end
    object QRRENTABILIDADERENDIMENTO: TBCDField
      FieldName = 'RENDIMENTO'
      Origin = 'RENDIMENTO'
      Precision = 18
      Size = 2
    end
    object QRRENTABILIDADEQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object QRRENTABILIDADEVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRRENTABILIDADECODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsrentabilidade: TDataSource
    DataSet = QRRENTABILIDADE
    Left = 808
    Top = 408
  end
  object dts_grade: TDataSource
    Left = 848
    Top = 408
  end
  object qrproduto_loc: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.IbTransaction1
    SQL.Strings = (
      'select * from produtos')
    Left = 786
    Top = 469
    object qrproduto_locCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qrproduto_locCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      Size = 13
    end
    object qrproduto_locDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 280
    end
  end
  object Dts_Serial: TDataSource
    Left = 776
    Top = 408
  end
  object qrvenda_mes: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select sum(qtde) sum_0, '
      '(select sum(qtde) from V_VENDAS_PRODUTOS) , '
      '(select sum(qtde) from V_VENDAS_PRODUTOS) , '
      '(select sum(qtde) from V_VENDAS_PRODUTOS) , '
      '(select sum(qtde) from V_VENDAS_PRODUTOS) , '
      '(select sum(qtde) from V_VENDAS_PRODUTOS) , '
      '(select sum(qtde) from V_VENDAS_PRODUTOS) , '
      '(select sum(qtde) from V_VENDAS_PRODUTOS) , '
      '(select sum(qtde) from V_VENDAS_PRODUTOS) , '
      '(select sum(qtde) from V_VENDAS_PRODUTOS) , '
      '(select sum(qtde) from V_VENDAS_PRODUTOS) , '
      '(select sum(qtde) from V_VENDAS_PRODUTOS)  '
      ' from V_VENDAS_PRODUTOS')
    Left = 824
    Top = 472
    object qrvenda_mesCOLUMN_0: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_0'
      Origin = 'SUM_0'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object qrvenda_mesCOLUMN: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object qrvenda_mesCOLUMN_1: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_1'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object qrvenda_mesCOLUMN_2: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_2'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object qrvenda_mesCOLUMN_3: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_3'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object qrvenda_mesCOLUMN_4: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_4'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object qrvenda_mesCOLUMN_5: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_5'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object qrvenda_mesCOLUMN_6: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_6'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object qrvenda_mesCOLUMN_7: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_7'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object qrvenda_mesCOLUMN_8: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_8'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object qrvenda_mesCOLUMN_9: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_9'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
    object qrvenda_mesCOLUMN_10: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_10'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
    end
  end
  object Sds_unidades: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.IbTransaction1
    SQL.Strings = (
      'select * from unidades')
    Left = 649
    Top = 448
    object Sds_unidadesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Sds_unidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object Sds_unidadesUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object Sds_unidadesABREVIATURA: TStringField
      FieldName = 'ABREVIATURA'
      Origin = 'ABREVIATURA'
      Size = 6
    end
    object Sds_unidadesDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
  end
  object DataSource1: TDataSource
    DataSet = Sds_unidades
    Left = 833
    Top = 440
  end
  object ACBrNCMs1: TACBrNCMs
    ProxyPort = '8080'
    UrlConsulta = 'http://www4.receita.fazenda.gov.br/simulador/PesquisarNCM.jsp?'
    CacheArquivo = 'ACBrNCM.json'
    Left = 776
    Top = 32
  end
  object qrProdutos_Imovel: TFDQuery
    IndexFieldNames = 'ID_PRODUTOS'
    MasterSource = DM.DTS_PRODUTOS
    MasterFields = 'CODIGO'
    Connection = DM.Coneccao
    Transaction = DM.IbTransaction1
    SQL.Strings = (
      'SELECT * FROM PRODUTOS_IMOVEL WHERE ID_PRODUTOS =:CODIGO')
    Left = 674
    Top = 413
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrProdutos_ImovelID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrProdutos_ImovelID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = 'ID_PRODUTOS'
    end
    object qrProdutos_ImovelVALOR_ALUGUEL: TBCDField
      FieldName = 'VALOR_ALUGUEL'
      Origin = 'VALOR_ALUGUEL'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrProdutos_ImovelVALOR_VENDA: TBCDField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrProdutos_ImovelCOD_IPTU: TStringField
      FieldName = 'COD_IPTU'
      Origin = 'COD_IPTU'
      Size = 100
    end
    object qrProdutos_ImovelCOD_AGUA: TStringField
      FieldName = 'COD_AGUA'
      Origin = 'COD_AGUA'
      Size = 100
    end
    object qrProdutos_ImovelCOD_ENERGIA: TStringField
      FieldName = 'COD_ENERGIA'
      Origin = 'COD_ENERGIA'
      Size = 100
    end
    object qrProdutos_ImovelAGUA_ATIVO: TStringField
      FieldName = 'AGUA_ATIVO'
      Origin = 'AGUA_ATIVO'
      FixedChar = True
      Size = 3
    end
    object qrProdutos_ImovelENERGIA_ATIVO: TStringField
      FieldName = 'ENERGIA_ATIVO'
      Origin = 'ENERGIA_ATIVO'
      FixedChar = True
      Size = 3
    end
    object qrProdutos_ImovelDATA_ENERGIA: TDateField
      FieldName = 'DATA_ENERGIA'
      Origin = 'DATA_ENERGIA'
    end
    object qrProdutos_ImovelDATA_AGUA: TDateField
      FieldName = 'DATA_AGUA'
      Origin = 'DATA_AGUA'
    end
    object qrProdutos_ImovelPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      FixedChar = True
      Size = 3
    end
    object qrProdutos_ImovelPLACA_NUMERO: TIntegerField
      FieldName = 'PLACA_NUMERO'
      Origin = 'PLACA_NUMERO'
    end
    object qrProdutos_ImovelPLACA_REFERENCIA: TStringField
      FieldName = 'PLACA_REFERENCIA'
      Origin = 'PLACA_REFERENCIA'
      Size = 100
    end
    object qrProdutos_ImovelCARTORIO: TStringField
      FieldName = 'CARTORIO'
      Origin = 'CARTORIO'
      Size = 100
    end
    object qrProdutos_ImovelMATRICULA: TStringField
      FieldName = 'MATRICULA'
      Origin = 'MATRICULA'
      Size = 100
    end
    object qrProdutos_ImovelAREA_TERRENO: TIntegerField
      FieldName = 'AREA_TERRENO'
      Origin = 'AREA_TERRENO'
    end
    object qrProdutos_ImovelLADO_ESQUERDO: TIntegerField
      FieldName = 'LADO_ESQUERDO'
      Origin = 'LADO_ESQUERDO'
    end
    object qrProdutos_ImovelLADO_DIREIRO: TIntegerField
      FieldName = 'LADO_DIREIRO'
      Origin = 'LADO_DIREIRO'
    end
    object qrProdutos_ImovelCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object qrProdutos_ImovelCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object qrProdutos_ImovelUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object qrProdutos_ImovelCOD_INGE: TStringField
      FieldName = 'COD_INGE'
      Origin = 'COD_INGE'
      Size = 40
    end
    object qrProdutos_ImovelENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object qrProdutos_ImovelNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qrProdutos_ImovelBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object qrProdutos_ImovelSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 30
    end
    object qrProdutos_ImovelTESTADA: TIntegerField
      FieldName = 'TESTADA'
      Origin = 'TESTADA'
    end
    object qrProdutos_ImovelPROFUNDIDADE: TIntegerField
      FieldName = 'PROFUNDIDADE'
      Origin = 'PROFUNDIDADE'
    end
    object qrProdutos_ImovelN_LOTE: TStringField
      FieldName = 'N_LOTE'
      Origin = 'N_LOTE'
      Size = 5
    end
    object qrProdutos_ImovelQUADRA: TStringField
      FieldName = 'QUADRA'
      Origin = 'QUADRA'
      Size = 5
    end
    object qrProdutos_ImovelN_SUITES: TIntegerField
      FieldName = 'N_SUITES'
      Origin = 'N_SUITES'
    end
    object qrProdutos_ImovelN_QUARTOS: TIntegerField
      FieldName = 'N_QUARTOS'
      Origin = 'N_QUARTOS'
    end
    object qrProdutos_ImovelN_SALAS: TIntegerField
      FieldName = 'N_SALAS'
      Origin = 'N_SALAS'
    end
    object qrProdutos_ImovelN_BANHEIROS: TIntegerField
      FieldName = 'N_BANHEIROS'
      Origin = 'N_BANHEIROS'
    end
    object qrProdutos_ImovelN_GARAGENS: TIntegerField
      FieldName = 'N_GARAGENS'
      Origin = 'N_GARAGENS'
    end
    object qrProdutos_ImovelPERC_IMPOSTO: TBCDField
      FieldName = 'PERC_IMPOSTO'
      Origin = 'PERC_IMPOSTO'
      Precision = 18
      Size = 2
    end
  end
  object dsImovel: TDataSource
    DataSet = qrProdutos_Imovel
    Left = 712
    Top = 408
  end
end
