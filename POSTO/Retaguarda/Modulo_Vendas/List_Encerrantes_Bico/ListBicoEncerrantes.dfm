object EncerrantesListFrm: TEncerrantesListFrm
  Left = 43
  Top = 74
  Width = 757
  Height = 496
  Caption = 'Listagem :: Vendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox3: TGroupBox
    Left = 8
    Top = 0
    Width = 737
    Height = 120
    Caption = ' Filtros: '
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 47
      Height = 16
      Caption = 'Bomba:'
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 30
      Height = 16
      Caption = 'Bico:'
    end
    object Label3: TLabel
      Left = 200
      Top = 16
      Width = 54
      Height = 16
      Caption = 'Frentista:'
    end
    object Label6: TLabel
      Left = 200
      Top = 64
      Width = 50
      Height = 16
      Caption = 'Tanque:'
    end
    object Label4: TLabel
      Left = 384
      Top = 16
      Width = 50
      Height = 16
      Caption = 'Produto:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 32
      Width = 161
      Height = 24
      KeyField = 'ID_BOMBA'
      ListField = 'ID_BOMBA'
      ListSource = DtsQryBomba
      TabOrder = 0
      OnDropDown = DBLookupComboBox1DropDown
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DBLookupComboBox1KeyPress
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 16
      Top = 80
      Width = 161
      Height = 24
      KeyField = 'ID_BICO'
      ListField = 'ID_BICO'
      ListSource = DtsQryBico
      TabOrder = 1
      OnDropDown = DBLookupComboBox1DropDown
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DBLookupComboBox2KeyPress
    end
    object GroupBox2: TGroupBox
      Left = 568
      Top = 15
      Width = 161
      Height = 93
      Caption = ' Movimenta'#231#227'o: '
      TabOrder = 5
      object Label5: TLabel
        Left = 16
        Top = 32
        Width = 21
        Height = 16
        Caption = 'De:'
      end
      object Label8: TLabel
        Left = 16
        Top = 64
        Width = 23
        Height = 16
        Caption = 'At'#233':'
      end
      object DateEdit1: TDateEdit
        Left = 48
        Top = 26
        Width = 97
        Height = 24
        DialogTitle = 'Selecionar uma data'
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 0
        OnChange = DateEdit1Change
        OnEnter = DateEdit1Enter
        OnExit = DateEdit1Exit
        OnKeyPress = DBLookupComboBox2KeyPress
      end
      object DateEdit2: TDateEdit
        Left = 48
        Top = 58
        Width = 97
        Height = 24
        CheckOnExit = True
        DialogTitle = 'Selecionar uma data'
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 1
        OnChange = DateEdit1Change
        OnEnter = DateEdit1Enter
        OnExit = DateEdit2Exit
        OnKeyPress = DateEdit2KeyPress
      end
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 200
      Top = 80
      Width = 161
      Height = 24
      KeyField = 'ID_TANQUE'
      ListField = 'ID_TANQUE'
      ListSource = DtsQryTanque
      TabOrder = 3
      OnDropDown = DBLookupComboBox1DropDown
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DBLookupComboBox2KeyPress
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 384
      Top = 32
      Width = 161
      Height = 24
      KeyField = 'ID_PRODUTOS'
      ListField = 'PRODUTOS'
      ListSource = DtsQryProdutos
      TabOrder = 4
      OnDropDown = DBLookupComboBox1DropDown
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DBLookupComboBox2KeyPress
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 200
      Top = 32
      Width = 161
      Height = 24
      KeyField = 'COD_FRENTISTA'
      ListField = 'FRENTISTA'
      ListSource = DtsQryFrentista
      TabOrder = 2
      OnDropDown = DBLookupComboBox1DropDown
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DBLookupComboBox2KeyPress
    end
  end
  object Panel5: TPanel
    Left = 8
    Top = 128
    Width = 737
    Height = 310
    BevelInner = bvRaised
    Caption = '(Nenhum registro encontrado)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel6: TPanel
      Left = 2
      Top = 286
      Width = 733
      Height = 22
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvLowered
      Caption = '   Encerrantes P'#243's-Venda'
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        733
        22)
      object Bevel2: TBevel
        Left = 637
        Top = 2
        Width = 2
        Height = 19
        Anchors = [akTop, akRight]
      end
      object SpeedButton3: TSpeedButton
        Left = 639
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Suprimir Visualiza'#231#227'o'
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          7E030000424D7E030000000000003600000028000000130000000E0000000100
          18000000000048030000C40E0000C40E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00BF003FBF003FBF003FBF003FBF003F
          BF003FBF003FBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00BF7F00BF7F
          00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF
          003FBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00FFFF00BF003FBF003F
          BF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFFFFF00BF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF
          00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00
          BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF
          003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF00
          3FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFFF
          FF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF003F
          BF003FBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00FFFF00BF00
          3FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF
          003FBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000}
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = ResizeGrid
      end
      object SpeedButton1: TSpeedButton
        Left = 662
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Suprimir Visualiza'#231#227'o'
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          7E030000424D7E030000000000003600000028000000130000000E0000000100
          1800000000004803000000000000000000000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFFFFF00BF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF
          00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00
          BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF
          003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF00
          3FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFFF
          FF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF003F
          BF003FBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00FFFF00BF00
          3FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF
          003FBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000}
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = ResizeGrid
      end
      object SpeedButton2: TSpeedButton
        Left = 685
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Expandir Visualiza'#231#227'o'
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          7E030000424D7E030000000000003600000028000000130000000E0000000100
          1800000000004803000000000000000000000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00FFFF00BF003FBF003F
          BF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF
          7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF003FBF003FBFBFBFBFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F
          00BF7F00BF7F00BF7F00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00
          BF7F00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF003FBF
          003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF003FBF003FBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00BF003FBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000}
        ParentShowHint = False
        ShowHint = True
        OnClick = ResizeGrid
      end
      object SpeedButton4: TSpeedButton
        Left = 708
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Suprimir Visualiza'#231#227'o'
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          7E030000424D7E030000000000003600000028000000130000000E0000000100
          18000000000048030000C40E0000C40E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF003FBF003FBF003F
          BF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FFFFF00FFFF
          00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF7F00BF
          7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00FFFF00FFFF00BFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF7F00BF7F
          00BF7F00BF7F00BF7F00BF7F00FFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF7F00BF7F00
          BF7F00BF7F00FFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF7F00BF7F00FF
          FF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FFFFF00FFFF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FFFFF00BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF003FBF00
          3FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FFF
          FF00FFFF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00
          BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00FFFF
          00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF003FBF003FBF003FBF003FBF
          003FBF003FBF003FFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00BFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000}
        ParentShowHint = False
        ShowHint = True
        OnClick = ResizeGrid
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 733
      Height = 284
      Align = alClient
      Caption = '(Nenhum registro encontrado)'
      TabOrder = 1
      Visible = False
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 731
        Height = 282
        Align = alClient
        Anchors = [akLeft, akTop, akBottom]
        DataSource = DtsQryBicoEnc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGrid1KeyDown
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PRODUTOS_DESC'
            Title.Caption = 'Produto'
            Width = 182
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LITROS'
            Title.Caption = 'Litros'
            Width = 166
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO'
            Title.Caption = 'Pre'#231'o'
            Width = 157
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DINHEIRO'
            Title.Caption = 'Sub-Total'
            Width = 201
            Visible = True
          end>
      end
    end
  end
  object QryBomba: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QryBicoEncAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select COD_BOMBA,ID_BOMBA '
      'from BOMBA '
      'order by ID_BOMBA')
    Left = 72
    Top = 224
    object QryBombaCOD_BOMBA: TIntegerField
      FieldName = 'COD_BOMBA'
      Origin = 'BOMBA.COD_BOMBA'
      Required = True
    end
    object QryBombaID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Origin = 'BOMBA.ID_BOMBA'
      Required = True
    end
  end
  object QryBico: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QryBicoEncAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsQryBomba
    SQL.Strings = (
      'select BICO.COD_BICO, BICO.ID_BICO from BICO'
      'where COD_BOMBA = :COD_BOMBA'
      '')
    Left = 104
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COD_BOMBA'
        ParamType = ptUnknown
        Size = 4
      end>
    object QryBicoCOD_BICO: TIntegerField
      FieldName = 'COD_BICO'
      Origin = 'BICO.COD_BICO'
      Required = True
    end
    object QryBicoID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Origin = 'BICO.ID_BICO'
      Required = True
    end
  end
  object QryFrentista: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QryBicoEncAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select COD_FRENTISTA, FRENTISTA .NOME Frentista, FRENTISTA.ID_FR' +
        'ENTISTA '
      'from FRENTISTA '
      'order by FRENTISTA .NOME')
    Left = 168
    Top = 224
    object QryFrentistaCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
      Origin = 'FRENTISTA.COD_FRENTISTA'
      Required = True
    end
    object QryFrentistaFRENTISTA: TIBStringField
      FieldName = 'FRENTISTA'
      Origin = 'FRENTISTA.NOME'
      Size = 100
    end
    object QryFrentistaID_FRENTISTA: TIntegerField
      FieldName = 'ID_FRENTISTA'
      Origin = 'FRENTISTA.ID_FRENTISTA'
      Required = True
    end
  end
  object QryTanque: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QryBicoEncAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select COD_TANQUE, ID_TANQUE  from TANQUE order by ID_TANQUE  ')
    Left = 136
    Top = 224
    object QryTanqueCOD_TANQUE: TIntegerField
      FieldName = 'COD_TANQUE'
      Origin = 'TANQUE.COD_TANQUE'
      Required = True
    end
    object QryTanqueID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'TANQUE.ID_TANQUE'
      Required = True
    end
  end
  object DtsQryBomba: TDataSource
    DataSet = QryBomba
    Left = 72
    Top = 256
  end
  object DtsQryBico: TDataSource
    DataSet = QryBico
    Left = 104
    Top = 256
  end
  object DtsQryFrentista: TDataSource
    DataSet = QryFrentista
    Left = 168
    Top = 256
  end
  object DtsQryTanque: TDataSource
    DataSet = QryTanque
    Left = 136
    Top = 256
  end
  object DtsQryBicoEnc: TDataSource
    DataSet = QryBicoEnc
    Left = 232
    Top = 256
  end
  object QryBicoEnc: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select BICOENC.COD_BICOENC,'
      'BICOENC.DATAHORA,'
      'BICOENC.DINHEIRO,'
      'BICOENC.ENC_DINHEIRO,'
      'BICOENC.ENC_LITROS,'
      'BICOENC.LITROS,'
      'BICOENC.NIVEL_PRECO,'
      'BICOENC.PRECO,'
      'BICOENC.PRODUTOS_DESC,'
      'BICOENC.ID_BICO BICO,'
      'BICOENC.ID_BOMBA BOMBA,'
      'FRENTISTA.COD_FRENTISTA  FRENTISTA,'
      'BICOENC.ID_PRODUTOS PRODUTOS'
      'from BICOENC'
      
        'LEFT OUTER JOIN FRENTISTA on (FRENTISTA.COD_FRENTISTA = BICOENC.' +
        'COD_FRENTISTA)'
      'where COD_BICOENC <> 0')
    Left = 264
    Top = 224
    object QryBicoEncCOD_BICOENC: TIntegerField
      FieldName = 'COD_BICOENC'
      Origin = 'BICOENC.COD_BICOENC'
      Required = True
    end
    object QryBicoEncDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'BICOENC.DATAHORA'
    end
    object QryBicoEncDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = 'BICOENC.DINHEIRO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryBicoEncENC_DINHEIRO: TIBBCDField
      FieldName = 'ENC_DINHEIRO'
      Origin = 'BICOENC.ENC_DINHEIRO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryBicoEncENC_LITROS: TIBBCDField
      FieldName = 'ENC_LITROS'
      Origin = 'BICOENC.ENC_LITROS'
      Precision = 18
      Size = 3
    end
    object QryBicoEncLITROS: TIBBCDField
      FieldName = 'LITROS'
      Origin = 'BICOENC.LITROS'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 3
    end
    object QryBicoEncNIVEL_PRECO: TIntegerField
      FieldName = 'NIVEL_PRECO'
      Origin = 'BICOENC.NIVEL_PRECO'
      Required = True
      DisplayFormat = '###,##0.00'
    end
    object QryBicoEncPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = 'BICOENC.PRECO'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 3
    end
    object QryBicoEncPRODUTOS_DESC: TIBStringField
      FieldName = 'PRODUTOS_DESC'
      Origin = 'BICOENC.PRODUTOS_DESC'
      Size = 30
    end
    object QryBicoEncBICO: TIntegerField
      FieldName = 'BICO'
      Origin = 'BICOENC.ID_BICO'
      Required = True
    end
    object QryBicoEncBOMBA: TIntegerField
      FieldName = 'BOMBA'
      Origin = 'BICOENC.ID_BOMBA'
      Required = True
    end
    object QryBicoEncFRENTISTA: TIntegerField
      FieldName = 'FRENTISTA'
      Origin = 'BICOENC.ID_FRENTISTA'
      Required = True
    end
    object QryBicoEncPRODUTOS: TIntegerField
      FieldName = 'PRODUTOS'
      Origin = 'BICOENC.ID_PRODUTOS'
      Required = True
    end
  end
  object QryTotal_Litros: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsQryBicoEnc
    SQL.Strings = (
      
        'select BICOENC.ID_PRODUTOS, sum(BICOENC.litros) Litros, sum(dinh' +
        'eiro) Grana, BICOENC.PRODUTOS_DESC'
      'from bicoenc'
      'group by BICOENC.ID_PRODUTOS, BICOENC.PRODUTOS_DESC'
      ''
      ''
      '')
    Left = 232
    Top = 224
    object QryTotal_LitrosLITROS: TIBBCDField
      FieldName = 'LITROS'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 3
    end
    object QryTotal_LitrosGRANA: TIBBCDField
      FieldName = 'GRANA'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryTotal_LitrosPRODUTOS_DESC: TIBStringField
      FieldName = 'PRODUTOS_DESC'
      Size = 30
    end
    object QryTotal_LitrosID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Required = True
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 264
    Top = 256
    object AumentarMnu: TMenuItem
      Caption = 'Aumentar Visualiza'#231#227'o'
    end
    object DiminuirMnu: TMenuItem
      Caption = 'Diminuir Visualiza'#231#227'o'
      Enabled = False
    end
    object MaximizarMnu: TMenuItem
      Caption = 'Maximizar Visualiza'#231#227'o'
    end
    object MinimizarMnu: TMenuItem
      Caption = 'Minimizar Visualiza'#231#227'o'
      Enabled = False
    end
  end
  object QryProdutos: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QryBicoEncAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select COD_PRODUTOS, PRODUTOS.NOME Produtos, PRODUTOS.ID_PRODUTO' +
        'S  '
      'from PRODUTOS '
      'order by PRODUTOS.NOME')
    Left = 200
    Top = 224
    object QryProdutosCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'PRODUTOS.COD_PRODUTOS'
      Required = True
    end
    object QryProdutosPRODUTOS: TIBStringField
      FieldName = 'PRODUTOS'
      Origin = 'PRODUTOS.NOME'
      Size = 50
    end
    object QryProdutosID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = 'PRODUTOS.ID_PRODUTOS'
    end
  end
  object DtsQryProdutos: TDataSource
    DataSet = QryProdutos
    Left = 200
    Top = 256
  end
end
