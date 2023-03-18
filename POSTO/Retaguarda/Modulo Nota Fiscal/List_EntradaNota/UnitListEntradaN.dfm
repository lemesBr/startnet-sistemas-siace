object EntradaNFListFrm: TEntradaNFListFrm
  Left = 86
  Top = 97
  Width = 808
  Height = 608
  ActiveControl = Edit1
  Caption = 'Listagem :: Entrada de Nota Fiscal'
  Color = clBtnFace
  Constraints.MinHeight = 476
  Constraints.MinWidth = 752
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 8
    Top = 0
    Width = 257
    Height = 441
    Caption = ' Filtros: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label6: TLabel
      Left = 16
      Top = 16
      Width = 73
      Height = 16
      Cursor = crHandPoint
      Caption = 'Fornecedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label6Click
      OnMouseEnter = Label6MouseEnter
      OnMouseLeave = Label6MouseLeave
    end
    object Label4: TLabel
      Left = 16
      Top = 112
      Width = 50
      Height = 16
      Caption = 'N'#186' Nota:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 160
      Width = 120
      Height = 16
      Caption = 'Controle Formul'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 256
      Width = 72
      Height = 16
      Caption = 'N'#186' de S'#233'rie:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 208
      Width = 69
      Height = 16
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 64
      Width = 38
      Height = 16
      Caption = 'CNPJ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 16
      Top = 32
      Width = 169
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit1KeyPress
    end
    object GroupBox4: TGroupBox
      Left = 16
      Top = 304
      Width = 225
      Height = 129
      Caption = ' Per'#237'odo: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = True
      OnEnter = GroupBox4Enter
      object Label5: TLabel
        Left = 16
        Top = 72
        Width = 69
        Height = 16
        Caption = 'Data Inicial:'
      end
      object Label7: TLabel
        Left = 16
        Top = 104
        Width = 64
        Height = 16
        Caption = 'Data Final:'
      end
      object DateEdit1: TDateEdit
        Left = 96
        Top = 64
        Width = 113
        Height = 24
        NumGlyphs = 2
        TabOrder = 2
        OnChange = DateEdit1Change
        OnEnter = Edit1Enter
        OnExit = DateEdit1Exit
        OnKeyPress = Edit2KeyPress
      end
      object DateEdit2: TDateEdit
        Left = 96
        Top = 96
        Width = 113
        Height = 24
        NumGlyphs = 2
        TabOrder = 3
        OnChange = DateEdit1Change
        OnEnter = Edit1Enter
        OnExit = DateEdit2Exit
        OnKeyPress = DateEdit2KeyPress
      end
      object RadioButton1: TRadioButton
        Left = 80
        Top = 16
        Width = 129
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Data de Emiss'#227'o'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton1Click
        OnKeyPress = RadioButton1KeyPress
      end
      object RadioButton2: TRadioButton
        Left = 80
        Top = 40
        Width = 129
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Data de Entrada'
        TabOrder = 1
        OnClick = RadioButton2Click
        OnKeyPress = Edit2KeyPress
      end
    end
    object BitBtn1: TBitBtn
      Left = 192
      Top = 32
      Width = 49
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      TabStop = False
      OnClick = BitBtn1Click
      OnKeyPress = BitBtn1KeyPress
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777770000000777777777770000070000000777777777770BFB0700000007777
        77700000FBF07000000077777770BFB0BFB07000000077000000FBF000007000
        0000770FBFB0BFBFB07770000000770BFBF0FBFBF07770000000770FBFB0BFBF
        B07770000000770BFBF00000007770000000770FBFBFBFB0777770000000770B
        FBFBFBF0777770000000770FBFBFBFB0777770000000770BFBFBFBF077777000
        0000770000000000777770000000777777777777777770000000777777777777
        777770000000}
    end
    object Edit2: TEdit
      Left = 16
      Top = 176
      Width = 225
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 28
      ParentFont = False
      TabOrder = 3
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 16
      Top = 128
      Width = 225
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 28
      ParentFont = False
      TabOrder = 2
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit2KeyPress
    end
    object Edit4: TEdit
      Left = 16
      Top = 272
      Width = 225
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 28
      ParentFont = False
      TabOrder = 5
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit4KeyPress
    end
    object Edit5: TEdit
      Left = 16
      Top = 224
      Width = 225
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 28
      ParentFont = False
      TabOrder = 4
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit4KeyPress
    end
    object Edit6: TEdit
      Left = 16
      Top = 80
      Width = 225
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 28
      ParentFont = False
      TabOrder = 1
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit6KeyPress
    end
  end
  object Panel7: TPanel
    Left = 272
    Top = 8
    Width = 473
    Height = 433
    Caption = '(Nenhum registro encontrado)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 1
      Top = 311
      Width = 471
      Height = 1
      Cursor = crVSplit
      Align = alBottom
      Color = clBtnFace
      ParentColor = False
      Visible = False
    end
    object Splitter1: TSplitter
      Left = 1
      Top = 177
      Width = 471
      Height = 1
      Cursor = crVSplit
      Align = alTop
      Color = clBtnFace
      ParentColor = False
      Visible = False
    end
    object Panel9: TPanel
      Left = 1
      Top = 178
      Width = 471
      Height = 133
      Align = alClient
      Caption = 'Panel6'
      TabOrder = 1
      Visible = False
      object Panel11: TPanel
        Left = 1
        Top = 1
        Width = 469
        Height = 17
        Align = alTop
        BevelOuter = bvLowered
        Caption = 'Produtos Nota Fiscal'
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 18
        Width = 469
        Height = 114
        Align = alClient
        Constraints.MinHeight = 50
        DataSource = DtsQryProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGrid1KeyDown
        OnTitleClick = DBGrid2TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Caption = 'Refer'#234'ncia'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_CUSTO'
            Title.Caption = 'Pre'#231' Unid.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBTOTAL'
            Title.Caption = 'Valor Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_DESCONTO'
            Title.Caption = 'Desconto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CL_FIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'S_TRIB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTA_ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTA_IPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_IPI'
            Title.Caption = 'Valor IPI'
            Visible = True
          end>
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 409
      Width = 471
      Height = 23
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvLowered
      Caption = '  Listagem de Entrada de Notas Fiscais'
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Locked = True
      ParentFont = False
      TabOrder = 3
      DesignSize = (
        471
        23)
      object SpeedButton4: TSpeedButton
        Left = 368
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Suprimir Visualiza'#231#227'o'
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          7A030000424D7A0300000000000036000000280000000E000000130000000100
          18000000000044030000C40E0000C40E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
          BFBF003FBF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF
          BFBFBFBFBFBFBFBF0000BFBFBFBF003FBF7F00BF003FBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBF003FBF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBF003FBF7F00BF
          003FBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF003FBFBFBFBFBFBFBFBFBF
          0000BFBFBFBF003FBF7F00BF003FBFBFBFBFBFBFBFBFBFBF003FBF003FBF7F00
          BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBF003FBF7F00BF003FBFBFBFBFBFBF
          BF003FBF003FBF7F00BF7F00BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBF003F
          BF7F00BF003FBFBFBFBF003FBF003FBF7F00BF7F00BF7F00BF003FBFBFBFBFBF
          BFBFBFBF0000BFBFBFBF003FBF7F00BF003FBF003FBF003FBF7F00BF7F00BF7F
          00BF7F00BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFFFFF00BF7F00BF003FFFFF
          00FFFF00BF7F00BF7F00BF7F00BF7F00BF003FBFBFBFBFBFBFBFBFBF0000BFBF
          BFFFFF00BF7F00BF003FBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF003FBF
          BFBFBFBFBFBFBFBF0000BFBFBFFFFF00BF7F00BF003FBFBFBFBFBFBFFFFF00FF
          FF00BF7F00BF7F00BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFFFFF00BF7F00BF
          003FBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF003FBFBFBFBFBFBFBFBFBF
          0000BFBFBFFFFF00BF7F00BF003FBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00
          BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFFFFF00BF7F00FFFF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFFFFF00FFFF00BFBFBFBFBFBFBFBFBF0000BFBFBFFFFF00
          FFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00BFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
        ParentShowHint = False
        ShowHint = True
        OnClick = ResizeGrid
      end
      object SpeedButton2: TSpeedButton
        Left = 392
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Suprimir Visualiza'#231#227'o'
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          7A030000424D7A0300000000000036000000280000000E000000130000000100
          18000000000044030000C40E0000C40E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF
          BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBF003FBF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF003FBFBFBFBFBFBFBFBFBF
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF7F00
          BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BF003FBF003FBF7F00BF7F00BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF003FBF003FBF7F00BF7F00BF7F00BF003FBFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF7F00BF7F00BF7F
          00BF7F00BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFFFFF
          00FFFF00BF7F00BF7F00BF7F00BF7F00BF003FBFBFBFBFBFBFBFBFBF0000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF003FBF
          BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FF
          FF00BF7F00BF7F00BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF003FBFBFBFBFBFBFBFBFBF
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00
          BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFFFFF00FFFF00BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00BFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
        ParentShowHint = False
        ShowHint = True
        OnClick = ResizeGrid
      end
      object SpeedButton1: TSpeedButton
        Left = 416
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Expandir Visualiza'#231#227'o'
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          7A030000424D7A0300000000000036000000280000000E000000130000000100
          18000000000044030000C40E0000C40E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFFFFF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
          BFBFBFBFBFBFBFFFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FFFFF00FFFF00BFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
          003FBF7F00FFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          0000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00FFFF00FFFF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00
          BF7F00FFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
          BFBFBFBF003FBF7F00BF7F00BF7F00BF7F00FFFF00FFFF00BFBFBFBFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00BF7F00BF7F00BF00
          3FBF003FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBF7F
          00BF7F00BF7F00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
          BFBFBFBFBFBFBFBF003FBF7F00BF7F00BF003FBF003FBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF003FBF003FBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
          003FBF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          0000BFBFBFBFBFBFBFBFBFBF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = ResizeGrid
      end
      object SpeedButton3: TSpeedButton
        Left = 440
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Suprimir Visualiza'#231#227'o'
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          7A030000424D7A0300000000000036000000280000000E000000130000000100
          18000000000044030000C40E0000C40E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFFFFF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00FFFF00BFBFBF0000BFBF
          BFBFBFBFBFBFBFFFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00BF
          7F00FFFF00BFBFBF0000BFBFBFBFBFBFBFBFBFBF003FFFFF00FFFF00BFBFBFBF
          BFBFBFBFBFBFBFBFBF003FBF7F00FFFF00BFBFBF0000BFBFBFBFBFBFBFBFBFBF
          003FBF7F00FFFF00FFFF00BFBFBFBFBFBFBFBFBFBF003FBF7F00FFFF00BFBFBF
          0000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00FFFF00FFFF00BFBFBFBFBFBF
          BF003FBF7F00FFFF00BFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00
          BF7F00FFFF00FFFF00BFBFBFBF003FBF7F00FFFF00BFBFBF0000BFBFBFBFBFBF
          BFBFBFBF003FBF7F00BF7F00BF7F00BF7F00FFFF00FFFF00BF003FBF7F00FFFF
          00BFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00BF7F00BF7F00BF00
          3FBF003FBF003FBF7F00BF003FBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBF7F
          00BF7F00BF7F00BF003FBF003FBFBFBFBF003FBF7F00BF003FBFBFBF0000BFBF
          BFBFBFBFBFBFBFBF003FBF7F00BF7F00BF003FBF003FBFBFBFBFBFBFBF003FBF
          7F00BF003FBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF003FBF003FBF
          BFBFBFBFBFBFBFBFBF003FBF7F00BF003FBFBFBF0000BFBFBFBFBFBFBFBFBFBF
          003FBF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF7F00BF003FBFBFBF
          0000BFBFBFBFBFBFBFBFBFBF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BF003FBF7F00BF003FBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF003FBFBFBF0000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = ResizeGrid
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 312
      Width = 471
      Height = 97
      Align = alBottom
      Caption = 'Panel6'
      TabOrder = 2
      Visible = False
      object DBGrid3: TDBGrid
        Left = 1
        Top = 17
        Width = 469
        Height = 79
        Align = alClient
        Constraints.MinHeight = 50
        DataSource = DtsQryNumSerie
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid3DrawColumnCell
        OnKeyDown = DBGrid1KeyDown
        OnTitleClick = DBGrid3TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NUM_SERIE'
            Title.Caption = 'N'#186' de S'#233'rie'
            Width = 114
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FIM_GARANTIA_FABRICANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Data Garantia Fabricante'
            Width = 132
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FIM_GARANTIA_FABRICANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Garantia Fabricante'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'GARANTIA_POSVENDA'
            Title.Alignment = taCenter
            Title.Caption = 'Garantia Cliente'
            Width = 100
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 469
        Height = 16
        Align = alTop
        BevelOuter = bvLowered
        Caption = 'N'#186' de S'#233'rie do Produto'
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 471
      Height = 176
      Align = alTop
      Caption = 'Panel3'
      TabOrder = 0
      Visible = False
      object DBGrid1: TDBGrid
        Left = 1
        Top = 18
        Width = 469
        Height = 157
        Align = alClient
        DataSource = DtsQry_NF_Entrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        OnKeyDown = DBGrid1KeyDown
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NUM_NF'
            Title.Caption = 'N'#186' da Nota'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_FORM'
            Title.Caption = 'Controle Formul'#225'rio'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Fornecedor'
            Width = 211
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ_FORNECEDOR'
            Title.Caption = 'CNPJ'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IE_FORNECEDOR'
            Title.Caption = 'Inscri'#231#227'o Estadual'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAHORA_EMISSAO'
            Title.Caption = 'Data Emiss'#227'o'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAHORA_RECEBIMENTO'
            Title.Caption = 'Data Entrada'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTALNF'
            Title.Caption = 'Valor da Nota'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTALPRODUTO'
            Title.Caption = 'Valor de Produtos'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OUTRAS_DESPESAS'
            Title.Caption = 'Valor Outros'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_SEGURO'
            Title.Caption = 'Valor Seguro'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_FRETE'
            Title.Caption = 'Valor Frete'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_NF_ENTRADA'
            Width = 0
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 469
        Height = 17
        Align = alTop
        BevelOuter = bvLowered
        Caption = 'Nota Fiscal de Entrada'
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object DtsQry_NF_Entrada: TDataSource
    DataSet = QryEntradaProd
    Left = 336
    Top = 96
  end
  object QryEntradaProd: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QryEntradaProdAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select  COD_NF_ENTRADA, CFOP,BASE_ICMS, BASE_ICMS_SUBST, DATAHOR' +
        'A_RECEBIMENTO, NUM_FORM, NUM_NF, VALOR_FRETE, '
      
        'VALOR_ICMS, VALOR_ICMS_SUBST, VALOR_IPI, BASE_IPI, OUTRAS_DESPES' +
        'AS, VALOR_SEGURO, VALOR_TOTALNF,  OUTRAS_ICMS, VALOR_TOTALPRODUT' +
        'O, FISCAL, ICMS_ANTECIPADO, ALIQUOTA_ICMS, VALOR_ISENTO_IPI, OUT' +
        'RAS_IPI, ALIQUOTA_IPI, ICMS_SUBST_INT, COD_FISCAL_IPI, COD_FISCA' +
        'L_ICMS, VALOR_ISENTO_ICMS, ALIQUOTA_ICMS_DIF, VALOR_ICMS_DIF, CN' +
        'PJ_FORNECEDOR, IE_FORNECEDOR,'
      
        'DATAHORA_EMISSAO, CADASTRO.NOME, CADASTRO.CGCCPF, SITUACAO_NF,  ' +
        'CADASTRO.INSCESTRG from NF_ENTRADA'
      
        ' LEFT OUTER JOIN CADASTRO on (CADASTRO.CODCLI=NF_ENTRADA.COD_CLI' +
        '_FORNECEDOR)'
      ''
      'WHERE (COD_NF_ENTRADA <>0)')
    Left = 336
    Top = 64
    object QryEntradaProdCOD_NF_ENTRADA: TIntegerField
      FieldName = 'COD_NF_ENTRADA'
      Origin = 'NF_ENTRADA.COD_NF_ENTRADA'
      Required = True
    end
    object QryEntradaProdCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = 'NF_ENTRADA.CFOP'
    end
    object QryEntradaProdBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'NF_ENTRADA.BASE_ICMS'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdBASE_ICMS_SUBST: TIBBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'NF_ENTRADA.BASE_ICMS_SUBST'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdDATAHORA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATAHORA_RECEBIMENTO'
      Origin = 'NF_ENTRADA.DATAHORA_RECEBIMENTO'
    end
    object QryEntradaProdNUM_FORM: TIBStringField
      FieldName = 'NUM_FORM'
      Origin = 'NF_ENTRADA.NUM_FORM'
      Size = 30
    end
    object QryEntradaProdNUM_NF: TIBStringField
      FieldName = 'NUM_NF'
      Origin = 'NF_ENTRADA.NUM_NF'
      Size = 30
    end
    object QryEntradaProdVALOR_FRETE: TIBBCDField
      FieldName = 'VALOR_FRETE'
      Origin = 'NF_ENTRADA.VALOR_FRETE'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdVALOR_ICMS: TIBBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'NF_ENTRADA.VALOR_ICMS'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdVALOR_ICMS_SUBST: TIBBCDField
      FieldName = 'VALOR_ICMS_SUBST'
      Origin = 'NF_ENTRADA.VALOR_ICMS_SUBST'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdVALOR_IPI: TIBBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'NF_ENTRADA.VALOR_IPI'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdBASE_IPI: TIBBCDField
      FieldName = 'BASE_IPI'
      Origin = 'NF_ENTRADA.BASE_IPI'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdOUTRAS_DESPESAS: TIBBCDField
      FieldName = 'OUTRAS_DESPESAS'
      Origin = 'NF_ENTRADA.OUTRAS_DESPESAS'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdVALOR_SEGURO: TIBBCDField
      FieldName = 'VALOR_SEGURO'
      Origin = 'NF_ENTRADA.VALOR_SEGURO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdVALOR_TOTALNF: TIBBCDField
      FieldName = 'VALOR_TOTALNF'
      Origin = 'NF_ENTRADA.VALOR_TOTALNF'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdOUTRAS_ICMS: TIBBCDField
      FieldName = 'OUTRAS_ICMS'
      Origin = 'NF_ENTRADA.OUTRAS_ICMS'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdVALOR_TOTALPRODUTO: TIBBCDField
      FieldName = 'VALOR_TOTALPRODUTO'
      Origin = 'NF_ENTRADA.VALOR_TOTALPRODUTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdFISCAL: TSmallintField
      FieldName = 'FISCAL'
      Origin = 'NF_ENTRADA.FISCAL'
      Required = True
    end
    object QryEntradaProdICMS_ANTECIPADO: TIBBCDField
      FieldName = 'ICMS_ANTECIPADO'
      Origin = 'NF_ENTRADA.ICMS_ANTECIPADO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdALIQUOTA_ICMS: TIBBCDField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = 'NF_ENTRADA.ALIQUOTA_ICMS'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdVALOR_ISENTO_IPI: TIBBCDField
      FieldName = 'VALOR_ISENTO_IPI'
      Origin = 'NF_ENTRADA.VALOR_ISENTO_IPI'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdOUTRAS_IPI: TIBBCDField
      FieldName = 'OUTRAS_IPI'
      Origin = 'NF_ENTRADA.OUTRAS_IPI'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdALIQUOTA_IPI: TIBBCDField
      FieldName = 'ALIQUOTA_IPI'
      Origin = 'NF_ENTRADA.ALIQUOTA_IPI'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdICMS_SUBST_INT: TSmallintField
      FieldName = 'ICMS_SUBST_INT'
      Origin = 'NF_ENTRADA.ICMS_SUBST_INT'
      Required = True
    end
    object QryEntradaProdCOD_FISCAL_IPI: TIntegerField
      FieldName = 'COD_FISCAL_IPI'
      Origin = 'NF_ENTRADA.COD_FISCAL_IPI'
    end
    object QryEntradaProdCOD_FISCAL_ICMS: TIntegerField
      FieldName = 'COD_FISCAL_ICMS'
      Origin = 'NF_ENTRADA.COD_FISCAL_ICMS'
    end
    object QryEntradaProdVALOR_ISENTO_ICMS: TIBBCDField
      FieldName = 'VALOR_ISENTO_ICMS'
      Origin = 'NF_ENTRADA.VALOR_ISENTO_ICMS'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdALIQUOTA_ICMS_DIF: TIBBCDField
      FieldName = 'ALIQUOTA_ICMS_DIF'
      Origin = 'NF_ENTRADA.ALIQUOTA_ICMS_DIF'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdVALOR_ICMS_DIF: TIBBCDField
      FieldName = 'VALOR_ICMS_DIF'
      Origin = 'NF_ENTRADA.VALOR_ICMS_DIF'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryEntradaProdDATAHORA_EMISSAO: TDateTimeField
      FieldName = 'DATAHORA_EMISSAO'
      Origin = 'NF_ENTRADA.DATAHORA_EMISSAO'
    end
    object QryEntradaProdNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CADASTRO.NOME'
      Size = 50
    end
    object QryEntradaProdCGCCPF: TIBStringField
      FieldName = 'CGCCPF'
      Origin = 'CADASTRO.CGCCPF'
      Size = 50
    end
    object QryEntradaProdSITUACAO_NF: TIBStringField
      FieldName = 'SITUACAO_NF'
      Origin = 'NF_ENTRADA.SITUACAO_NF'
      Size = 2
    end
    object QryEntradaProdINSCESTRG: TIBStringField
      FieldName = 'INSCESTRG'
      Origin = 'CADASTRO.INSCESTRG'
      Size = 30
    end
    object QryEntradaProdCNPJ_FORNECEDOR: TIBStringField
      FieldName = 'CNPJ_FORNECEDOR'
      Origin = 'NF_ENTRADA.CNPJ_FORNECEDOR'
      Size = 30
    end
    object QryEntradaProdIE_FORNECEDOR: TIBStringField
      FieldName = 'IE_FORNECEDOR'
      Origin = 'NF_ENTRADA.IE_FORNECEDOR'
      Size = 30
    end
  end
  object DtsQryProduto: TDataSource
    DataSet = QryProduto
    Left = 368
    Top = 96
  end
  object QryProduto: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QryProdutoAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsQry_NF_Entrada
    SQL.Strings = (
      
        'select  COD_NF_ENTRADA_ITENS,COD_NF_ENTRADA, PRODUTOS.NOME,PRODU' +
        'TOS.REFERENCIA, APR_UND, CL_FIS, VALOR_DESCONTO, ALIQUOTA_ICMS, ' +
        'ALIQUOTA_IPI, QUANTIDADE, S_TRIB, VALOR_IPI, SUBTOTAL, PRC_CUSTO' +
        ',NF_ENTRADA_ITENS.COD_PRODUTOS  from NF_ENTRADA_ITENS'
      
        'LEFT OUTER JOIN PRODUTOS on (PRODUTOS.COD_PRODUTOS=NF_ENTRADA_IT' +
        'ENS.COD_PRODUTOS)'
      'where'
      'COD_NF_ENTRADA=:COD_NF_ENTRADA')
    Filtered = True
    Left = 368
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COD_NF_ENTRADA'
        ParamType = ptUnknown
        Size = 4
      end>
    object QryProdutoCOD_NF_ENTRADA_ITENS: TIntegerField
      FieldName = 'COD_NF_ENTRADA_ITENS'
      Origin = 'NF_ENTRADA_ITENS.COD_NF_ENTRADA_ITENS'
      Required = True
    end
    object QryProdutoCOD_NF_ENTRADA: TIntegerField
      FieldName = 'COD_NF_ENTRADA'
      Origin = 'NF_ENTRADA_ITENS.COD_NF_ENTRADA'
      Required = True
    end
    object QryProdutoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'PRODUTOS.NOME'
      Size = 50
    end
    object QryProdutoREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = 'PRODUTOS.REFERENCIA'
      Size = 30
    end
    object QryProdutoAPR_UND: TIBStringField
      FieldName = 'APR_UND'
      Origin = 'PRODUTOS.APR_UND'
      Size = 6
    end
    object QryProdutoCL_FIS: TIBStringField
      FieldName = 'CL_FIS'
      Origin = 'PRODUTOS.CL_FIS'
      Size = 15
    end
    object QryProdutoVALOR_DESCONTO: TIBBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'NF_ENTRADA_ITENS.VALOR_DESCONTO'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 3
    end
    object QryProdutoALIQUOTA_ICMS: TIBBCDField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = 'PRODUTOS.ALIQUOTA_ICMS'
      DisplayFormat = '##,##0.00'
      Precision = 4
      Size = 3
    end
    object QryProdutoALIQUOTA_IPI: TIBBCDField
      FieldName = 'ALIQUOTA_IPI'
      Origin = 'PRODUTOS.ALIQUOTA_IPI'
      DisplayFormat = '##,##0.00'
      Precision = 4
      Size = 3
    end
    object QryProdutoQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'NF_ENTRADA_ITENS.QUANTIDADE'
      Required = True
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 3
    end
    object QryProdutoS_TRIB: TIBStringField
      FieldName = 'S_TRIB'
      Origin = 'PRODUTOS.S_TRIB'
      Size = 15
    end
    object QryProdutoVALOR_IPI: TIBBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'NF_ENTRADA_ITENS.VALOR_IPI'
      Required = True
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 3
    end
    object QryProdutoSUBTOTAL: TIBBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'NF_ENTRADA_ITENS.SUBTOTAL'
      Required = True
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 3
    end
    object QryProdutoPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = 'PRODUTOS.PRC_CUSTO'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 4
    end
    object QryProdutoCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'NF_ENTRADA_ITENS.COD_PRODUTOS'
    end
  end
  object QryNumSerie: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsQryProduto
    SQL.Strings = (
      
        'select  NUM_SERIE,FIM_GARANTIA_FABRICANTE, GARANTIA_POSVENDA fro' +
        'm NF_ENTRADA_NSERIE'
      'where'
      
        '((COD_NF_ENTRADA_ITENS=:COD_NF_ENTRADA_ITENS) and (COD_PRODUTOS=' +
        ':COD_PRODUTOS))'
      '')
    Filtered = True
    Left = 400
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COD_NF_ENTRADA_ITENS'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'COD_PRODUTOS'
        ParamType = ptUnknown
        Size = 4
      end>
    object QryNumSerieNUM_SERIE: TIBStringField
      FieldName = 'NUM_SERIE'
      Origin = 'NF_ENTRADA_NSERIE.NUM_SERIE'
      Size = 30
    end
    object QryNumSerieFIM_GARANTIA_FABRICANTE: TDateTimeField
      FieldName = 'FIM_GARANTIA_FABRICANTE'
      Origin = 'NF_ENTRADA_NSERIE.FIM_GARANTIA_FABRICANTE'
    end
    object QryNumSerieGARANTIA_POSVENDA: TIntegerField
      FieldName = 'GARANTIA_POSVENDA'
      Origin = 'NF_ENTRADA_NSERIE.GARANTIA_POSVENDA'
    end
  end
  object DtsQryNumSerie: TDataSource
    DataSet = QryNumSerie
    Left = 400
    Top = 96
  end
  object QryUpdate: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsQry_NF_Entrada
    SQL.Strings = (
      'select COD_PRODUTOS, QUANTIDADE from NF_ENTRADA_ITENS'
      'where COD_NF_ENTRADA = :COD_NF_ENTRADA')
    Left = 464
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COD_NF_ENTRADA'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object SQLUpdate: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 464
    Top = 96
  end
  object QryContagem: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select count(COD_PEDIDOS) NOTAS, sum(VALOR_TOTALNF) TOTAL from P' +
        'EDIDOS'
      'where COD_PEDIDOS > 0'
      'order by NUM_NF')
    Left = 496
    Top = 64
    object QryContagemNOTAS: TIntegerField
      FieldName = 'NOTAS'
      Required = True
    end
    object QryContagemTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
  end
end
