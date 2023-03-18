object SaidaNFListFrm: TSaidaNFListFrm
  Left = 20
  Top = 83
  Width = 766
  Height = 498
  Caption = 'Listagem :: Sa'#237'da de Nota Fiscal'
  Color = clBtnFace
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
      Width = 44
      Height = 16
      Cursor = crHandPoint
      Caption = 'Cliente:'
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
      OnClick = Label3Click
      OnMouseEnter = Label3MouseEnter
      OnMouseLeave = Label3MouseLeave
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
      OnClick = Label3Click
      OnMouseEnter = Label3MouseEnter
      OnMouseLeave = Label3MouseLeave
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
        OnEnter = Edit1Enter
        OnExit = DateEdit1Exit
        OnKeyPress = Edit3KeyPress
      end
      object DateEdit2: TDateEdit
        Left = 96
        Top = 96
        Width = 113
        Height = 24
        NumGlyphs = 2
        TabOrder = 3
        OnEnter = Edit1Enter
        OnExit = DateEdit1Exit
        OnKeyPress = DateEdit2KeyPress
      end
      object RadioButton1: TRadioButton
        Left = 80
        Top = 16
        Width = 129
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Data de Venda'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnKeyPress = RadioButton1KeyPress
      end
      object RadioButton2: TRadioButton
        Left = 80
        Top = 40
        Width = 129
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Data de Sa'#237'da'
        TabOrder = 1
        TabStop = True
        OnKeyPress = RadioButton1KeyPress
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
      OnKeyPress = Edit3KeyPress
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
      OnKeyPress = Edit3KeyPress
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
      OnKeyPress = Edit5KeyPress
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
      OnKeyPress = Edit5KeyPress
    end
    object CheckBox1: TCheckBox
      Left = 120
      Top = 15
      Width = 121
      Height = 17
      Caption = 'Listar Cupons Fiscais'
      Checked = True
      State = cbChecked
      TabOrder = 8
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
      Top = 408
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
      Top = 257
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
      Top = 258
      Width = 471
      Height = 150
      Align = alClient
      Caption = 'Panel6'
      TabOrder = 0
      Visible = False
      object DBGrid2: TDBGrid
        Left = 1
        Top = 18
        Width = 469
        Height = 131
        Align = alClient
        Constraints.MinHeight = 50
        DataSource = DtsQryPeditens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
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
        OnDrawColumnCell = DBGrid2DrawColumnCell
        OnKeyDown = DBGrid2KeyDown
        OnTitleClick = DBGrid2TitleClick
        Columns = <
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'REF_PRODUTOS'
            Title.Caption = 'Refer'#234'ncia'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTO'
            Title.Caption = 'Produto'
            Width = 310
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_VENDA'
            Title.Caption = 'Pre'#231'o Unit'#225'rio'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Quantidade'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FIM_GARANTIA_APOS_VENDA'
            Title.Alignment = taCenter
            Title.Caption = 'Garantia ap'#243's Venda'
            Width = 135
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FIM_GARANTIA_FABRICANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Garantia do Fabricante'
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBTOTAL'
            Title.Caption = 'Sub-total'
            Width = 90
            Visible = True
          end>
      end
      object Panel11: TPanel
        Left = 1
        Top = 1
        Width = 469
        Height = 17
        Align = alTop
        BevelOuter = bvLowered
        Caption = 'Produtos da Nota Fiscal'
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
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
      Caption = '  Listagem de Sa'#237'da de Notas Fiscais'
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Locked = True
      ParentFont = False
      TabOrder = 1
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
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 471
      Height = 256
      Align = alTop
      Caption = 'Panel3'
      TabOrder = 2
      Visible = False
      object DBGrid1: TDBGrid
        Left = 1
        Top = 18
        Width = 469
        Height = 237
        Align = alClient
        DataSource = DtsQryPedidos
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
        OnKeyDown = DBGrid2KeyDown
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NUM_NF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'N'#186' da Nota'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_FORM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'N'#186' Formul'#225'rio'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_DESTINATARIO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Cliente'
            Width = 350
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ_DESTINATARIO'
            Title.Caption = 'CNPJ'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IE_DESTINATARIO'
            Title.Caption = 'Inscri'#231#227'o Estadual'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTALNF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Total Nota'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORMA_PGT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Forma de Pgto.'
            Width = 0
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATAHORA_EMISSAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Data da Venda'
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATAHORA_SAIDA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Data da Sa'#237'da'
            Width = 120
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
        Caption = 'Nota Fiscal de Sa'#237'da'
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
  object QryPedidos: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select COD_PEDIDOS, MODELO_NF, FORMA_PGT, CNPJ_DESTINATARIO, IE_' +
        'DESTINATARIO, DATAHORA_SAIDA, VALOR_TOTALPRODUTO, VALOR_TOTALNF,' +
        ' SITUACAO_NF, DATAHORA_EMISSAO, DATAHORA_SAIDAENTRADA, NUM_NF, N' +
        'UM_FORM, COD_CLI_DESTINATARIO, NOME_DESTINATARIO from PEDIDOS'
      'order by NUM_NF')
    Left = 352
    Top = 96
    object QryPedidosCOD_PEDIDOS: TIntegerField
      FieldName = 'COD_PEDIDOS'
      Origin = 'PEDIDOS.COD_PEDIDOS'
      Required = True
    end
    object QryPedidosFORMA_PGT: TIBStringField
      FieldName = 'FORMA_PGT'
      Origin = 'PEDIDOS.FORMA_PGT'
      Size = 30
    end
    object QryPedidosVALOR_TOTALPRODUTO: TIBBCDField
      FieldName = 'VALOR_TOTALPRODUTO'
      Origin = 'PEDIDOS.VALOR_TOTALPRODUTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryPedidosVALOR_TOTALNF: TIBBCDField
      FieldName = 'VALOR_TOTALNF'
      Origin = 'PEDIDOS.VALOR_TOTALNF'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryPedidosNUM_NF: TIBStringField
      FieldName = 'NUM_NF'
      Origin = 'PEDIDOS.NUM_NF'
      Size = 30
    end
    object QryPedidosNUM_FORM: TIBStringField
      FieldName = 'NUM_FORM'
      Origin = 'PEDIDOS.NUM_FORM'
      Size = 30
    end
    object QryPedidosCOD_CLI_DESTINATARIO: TIntegerField
      FieldName = 'COD_CLI_DESTINATARIO'
      Origin = 'PEDIDOS.COD_CLI_DESTINATARIO'
    end
    object QryPedidosNOME_DESTINATARIO: TIBStringField
      FieldName = 'NOME_DESTINATARIO'
      Origin = 'PEDIDOS.NOME_DESTINATARIO'
      Size = 50
    end
    object QryPedidosDATAHORA_EMISSAO: TDateTimeField
      FieldName = 'DATAHORA_EMISSAO'
      Origin = 'PEDIDOS.DATAHORA_EMISSAO'
    end
    object QryPedidosDATAHORA_SAIDAENTRADA: TDateTimeField
      FieldName = 'DATAHORA_SAIDAENTRADA'
      Origin = 'PEDIDOS.DATAHORA_SAIDAENTRADA'
    end
    object QryPedidosDATAHORA_SAIDA: TDateTimeField
      FieldName = 'DATAHORA_SAIDA'
      Origin = 'PEDIDOS.DATAHORA_SAIDA'
    end
    object QryPedidosCNPJ_DESTINATARIO: TIBStringField
      FieldName = 'CNPJ_DESTINATARIO'
      Origin = 'PEDIDOS.CNPJ_DESTINATARIO'
      Size = 30
    end
    object QryPedidosIE_DESTINATARIO: TIBStringField
      FieldName = 'IE_DESTINATARIO'
      Origin = 'PEDIDOS.IE_DESTINATARIO'
      Size = 30
    end
    object QryPedidosSITUACAO_NF: TIBStringField
      FieldName = 'SITUACAO_NF'
      Origin = 'PEDIDOS.SITUACAO_NF'
      Size = 2
    end
    object QryPedidosMODELO_NF: TIBStringField
      FieldName = 'MODELO_NF'
      Origin = 'PEDIDOS.MODELO_NF'
      FixedChar = True
      Size = 2
    end
  end
  object DtsQryPedidos: TDataSource
    DataSet = QryPedidos
    Left = 352
    Top = 128
  end
  object DtsQryPeditens: TDataSource
    DataSet = QryPeditens
    Left = 384
    Top = 128
  end
  object QryPeditens: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsQryPedidos
    SQL.Strings = (
      
        'select COD_PEDIDOS, REF_PRODUTOS, NUM_SERIE, PRODUTO, QUANTIDADE' +
        ', FIM_GARANTIA_APOS_VENDA, PRC_VENDA, FIM_GARANTIA_FABRICANTE, S' +
        'UBTOTAL from PEDIDOS_ITENS where COD_PEDIDOS = :COD_PEDIDOS')
    Left = 384
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COD_PEDIDOS'
        ParamType = ptUnknown
        Size = 4
      end>
    object QryPeditensCOD_PEDIDOS: TIntegerField
      FieldName = 'COD_PEDIDOS'
      Origin = 'PEDIDOS_ITENS.COD_PEDIDOS'
      Required = True
    end
    object QryPeditensREF_PRODUTOS: TIBStringField
      FieldName = 'REF_PRODUTOS'
      Origin = 'PEDIDOS_ITENS.REF_PRODUTOS'
      Size = 30
    end
    object QryPeditensNUM_SERIE: TIBStringField
      FieldName = 'NUM_SERIE'
      Origin = 'PEDIDOS_ITENS.NUM_SERIE'
      Size = 30
    end
    object QryPeditensPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = 'PEDIDOS_ITENS.PRODUTO'
      Size = 50
    end
    object QryPeditensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'PEDIDOS_ITENS.QUANTIDADE'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryPeditensFIM_GARANTIA_APOS_VENDA: TDateTimeField
      FieldName = 'FIM_GARANTIA_APOS_VENDA'
      Origin = 'PEDIDOS_ITENS.FIM_GARANTIA_APOS_VENDA'
    end
    object QryPeditensFIM_GARANTIA_FABRICANTE: TDateTimeField
      FieldName = 'FIM_GARANTIA_FABRICANTE'
      Origin = 'PEDIDOS_ITENS.FIM_GARANTIA_FABRICANTE'
    end
    object QryPeditensSUBTOTAL: TIBBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'PEDIDOS_ITENS.SUBTOTAL'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryPeditensPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = 'PEDIDOS_ITENS.PRC_VENDA'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
  end
  object QryCadastro: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CADASTRO')
    Left = 320
    Top = 96
  end
  object SQLUpdate: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 432
    Top = 128
  end
  object QryUpdate: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsQryPedidos
    SQL.Strings = (
      'select COD_PRODUTOS, QUANTIDADE from PEDIDOS_ITENS'
      'where COD_PEDIDOS = :COD_PEDIDOS')
    Left = 432
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COD_PEDIDOS'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object QryContagem: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsQryPedidos
    SQL.Strings = (
      
        'Select count(COD_PEDIDOS) NOTAS, sum(VALOR_TOTALNF) TOTAL from P' +
        'EDIDOS'
      'where COD_PEDIDOS > 0'
      'order by NUM_NF')
    Left = 464
    Top = 96
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
