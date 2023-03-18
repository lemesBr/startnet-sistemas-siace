object DiscadorListFrm: TDiscadorListFrm
  Left = -12
  Top = 35
  Width = 808
  Height = 608
  Caption = 'Listagem :: Chamadas Telef'#244'nicas'
  Color = clBtnFace
  Constraints.MinHeight = 494
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox6: TGroupBox
    Left = 8
    Top = 8
    Width = 737
    Height = 265
    Caption = ' Op'#231#245'es de Filtro: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      737
      265)
    object Label10: TLabel
      Left = 16
      Top = 112
      Width = 65
      Height = 16
      Caption = 'Solicitante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label10Click
      OnMouseMove = Label1MouseMove
      OnMouseEnter = Label10MouseEnter
      OnMouseLeave = Label10MouseLeave
    end
    object Label6: TLabel
      Left = 16
      Top = 64
      Width = 50
      Height = 16
      Caption = 'Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label6Click
      OnMouseMove = Label1MouseMove
      OnMouseEnter = Label1MouseEnter
      OnMouseLeave = Label1MouseLeave
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 35
      Height = 16
      Caption = 'Setor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label1Click
      OnMouseMove = Label1MouseMove
      OnMouseEnter = Label1MouseEnter
      OnMouseLeave = Label1MouseLeave
    end
    object Label9: TLabel
      Left = 231
      Top = 16
      Width = 154
      Height = 16
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'Empresa / Pessoa F'#237'sica:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label9Click
      OnMouseEnter = Label9MouseEnter
      OnMouseLeave = Label9MouseLeave
    end
    object Label4: TLabel
      Left = 15
      Top = 160
      Width = 105
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'N'#250'mero Discado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox2: TGroupBox
      Left = 232
      Top = 160
      Width = 192
      Height = 97
      Anchors = [akLeft, akTop, akRight]
      Caption = ' Per'#237'odo: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      DesignSize = (
        192
        97)
      object Label2: TLabel
        Left = 8
        Top = 40
        Width = 3
        Height = 16
      end
      object Label3: TLabel
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
        Top = 24
        Width = 130
        Height = 24
        DialogTitle = 'Selecionar uma data'
        Anchors = [akLeft, akTop, akRight]
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 0
        OnChange = DateEdit1Change
        OnEnter = Edit2Enter
        OnExit = Edit2Exit
        OnKeyPress = DateEdit1KeyPress
      end
      object DateEdit2: TDateEdit
        Left = 48
        Top = 56
        Width = 130
        Height = 24
        DialogTitle = 'Selecionar uma data'
        Anchors = [akLeft, akTop, akRight]
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 1
        OnChange = DateEdit1Change
        OnEnter = Edit2Enter
        OnExit = Edit2Exit
        OnKeyPress = DateEdit1KeyPress
      end
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 16
      Top = 128
      Width = 192
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      DropDownWidth = 270
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODCALLSOLICITANTE'
      ListField = 'NOME'
      ListSource = DtsQryCallSolicitante
      NullValueKey = 46
      ParentFont = False
      TabOrder = 2
      OnDropDown = DBLookupComboBox1DropDown
      OnKeyPress = DateEdit1KeyPress
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 16
      Top = 80
      Width = 192
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      DropDownWidth = 270
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODSETORUSER'
      ListField = 'NOME'
      ListSource = DtsQrySetorUser
      NullValueKey = 46
      ParentFont = False
      TabOrder = 1
      OnDropDown = DBLookupComboBox1DropDown
      OnKeyPress = DateEdit1KeyPress
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 32
      Width = 192
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      DropDownWidth = 270
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODSETOR'
      ListField = 'NOME'
      ListSource = DtsQrySetor
      NullValueKey = 46
      ParentFont = False
      TabOrder = 0
      OnDropDown = DBLookupComboBox1DropDown
      OnKeyPress = DBLookupComboBox1KeyPress
    end
    object Panel8: TPanel
      Left = 232
      Top = 64
      Width = 489
      Height = 89
      Anchors = [akTop, akRight]
      Caption = 'Panel1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object ListView1: TListView
        Left = 1
        Top = 24
        Width = 487
        Height = 64
        Hint = 'Selecione Contatos do Cliente para filtrar por contatos'
        Align = alClient
        Checkboxes = True
        Columns = <
          item
            AutoSize = True
            Caption = 'Nome'
          end
          item
            Caption = 'Cod'
            Width = 96
          end>
        ColumnClick = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FlatScrollBars = True
        ReadOnly = True
        ParentFont = False
        ParentShowHint = False
        ShowColumnHeaders = False
        ShowHint = True
        TabOrder = 1
        ViewStyle = vsList
        OnChange = ListView1Change
        OnInfoTip = ListView1InfoTip
        OnKeyPress = DateEdit1KeyPress
      end
      object Panel9: TPanel
        Left = 1
        Top = 1
        Width = 487
        Height = 23
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Caption = ' Contatos / Dependentes'
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          487
          23)
        object CheckBox5: TCheckBox
          Left = 392
          Top = 3
          Width = 90
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'por Contato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = CheckBox5Click
          OnKeyPress = DateEdit1KeyPress
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 584
      Top = 160
      Width = 137
      Height = 97
      Anchors = [akTop, akRight]
      Caption = ' Discagem: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object Label5: TLabel
        Left = 8
        Top = 40
        Width = 3
        Height = 16
      end
      object CheckBox1: TCheckBox
        Left = 16
        Top = 32
        Width = 89
        Height = 17
        Caption = 'Manual'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = DateEdit1Change
        OnKeyPress = DateEdit1KeyPress
      end
      object CheckBox2: TCheckBox
        Left = 16
        Top = 64
        Width = 89
        Height = 17
        Caption = 'Autom'#225'tica'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = DateEdit1Change
        OnKeyPress = DateEdit1KeyPress
      end
    end
    object GroupBox4: TGroupBox
      Left = 432
      Top = 160
      Width = 137
      Height = 97
      Anchors = [akTop, akRight]
      Caption = ' Chamadas: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object Label7: TLabel
        Left = 8
        Top = 40
        Width = 3
        Height = 16
      end
      object CheckBox3: TCheckBox
        Left = 16
        Top = 32
        Width = 89
        Height = 17
        Caption = 'Efetuadas'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = DateEdit1Change
        OnKeyPress = DateEdit1KeyPress
      end
      object CheckBox4: TCheckBox
        Left = 16
        Top = 64
        Width = 97
        Height = 17
        Caption = 'Bloqueadas'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = DateEdit1Change
        OnKeyPress = DateEdit1KeyPress
      end
    end
    object Edit2: TEdit
      Left = 15
      Top = 176
      Width = 194
      Height = 24
      Hint = 
        'Digite o n'#186' completo ou apenas o in'#237'cio'#13#10'(Ex.: 555 -> retorna to' +
        'dos as chamadas de prefixo 555)'
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnChange = DateEdit1Change
      OnEnter = Edit2Enter
      OnExit = Edit2Exit
      OnKeyPress = Edit2KeyPress
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 280
    Width = 737
    Height = 161
    Caption = '(Nenhum registro encontrado)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu2
    TabOrder = 2
    object Panel3: TPanel
      Left = 1
      Top = 137
      Width = 735
      Height = 23
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvLowered
      Caption = '  Chamadas Efetuadas'
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        735
        23)
      object SpeedButton2: TSpeedButton
        Left = 680
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
      object SpeedButton1: TSpeedButton
        Left = 656
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
      object SpeedButton3: TSpeedButton
        Left = 632
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
      object SpeedButton4: TSpeedButton
        Left = 704
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
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 735
      Height = 136
      Align = alClient
      DataSource = DtsQryChamadas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'SETOR_USUARIO'
          Title.Caption = 'Setor > Usu'#225'rio'
          Width = 136
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Caption = 'Empresa / Pessoa F'#237'sica'
          Width = 138
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTATO'
          Title.Caption = 'Contato / Dependente'
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Alignment = taCenter
          Title.Caption = 'N'#250'mero'
          Width = 71
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATAHORASTART'
          Title.Alignment = taCenter
          Title.Caption = 'Data - Hora'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOLICITANTE'
          Title.Caption = 'Solicitante'
          Width = 134
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DISCAGEMMANUAL'
          Title.Alignment = taCenter
          Title.Caption = 'Discagem'
          Width = 63
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'EFETUADA'
          Title.Alignment = taCenter
          Title.Caption = 'Bloqueada'
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 496
    Top = 464
    Width = 243
    Height = 196
    BevelInner = bvRaised
    TabOrder = 0
    Visible = False
    object DBGrid2: TDBGrid
      Left = 2
      Top = 19
      Width = 239
      Height = 175
      Hint = 'Empresas / Pessoa F'#237'sica'
      Align = alClient
      DataSource = DtsQuery1Cad
      Options = [dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid2DblClick
      OnEnter = DBGrid2Enter
      OnKeyDown = DBGrid2KeyDown
      OnKeyPress = DBGrid2KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 230
          Visible = True
        end>
    end
    object Panel5: TPanel
      Left = 2
      Top = 2
      Width = 239
      Height = 17
      Align = alTop
      BevelOuter = bvLowered
      Caption = 'Empresa / Pessoa F'#237'sica'
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
  object Panel6: TPanel
    Left = 248
    Top = 465
    Width = 244
    Height = 196
    BevelInner = bvRaised
    TabOrder = 3
    Visible = False
    object DBGrid3: TDBGrid
      Left = 2
      Top = 19
      Width = 240
      Height = 175
      Hint = 'Contatos '
      Align = alClient
      DataSource = DtsQuery2Cont
      Options = [dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid3DblClick
      OnEnter = DBGrid3Enter
      OnKeyDown = DBGrid3KeyDown
      OnKeyPress = DBGrid3KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 230
          Visible = True
        end>
    end
    object Panel7: TPanel
      Left = 2
      Top = 2
      Width = 240
      Height = 17
      Align = alTop
      BevelOuter = bvLowered
      Caption = 'Contato'
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
  object Edit1: TEdit
    Left = 239
    Top = 40
    Width = 489
    Height = 24
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 48
    ParentFont = False
    TabOrder = 4
    OnChange = Edit1Change
    OnClick = Edit1Click
    OnEnter = Edit2Enter
    OnExit = Edit2Exit
    OnKeyPress = Edit1KeyPress
  end
  object QrySetor: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QrySetorAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM SETOR'
      'where codsetor<>0'
      'ORDER BY NOME')
    Left = 64
    Top = 336
  end
  object QrySetorUser: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QrySetorAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsQrySetor
    SQL.Strings = (
      'SELECT * FROM SETORUSER'
      'WHERE (CODSETOR = :codsetor) and'
      '(CODSETOR<>0)'
      'ORDER BY NOME')
    Left = 96
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codsetor'
        ParamType = ptUnknown
      end>
  end
  object DtsQrySetor: TDataSource
    DataSet = QrySetor
    Left = 64
    Top = 368
  end
  object DtsQrySetorUser: TDataSource
    DataSet = QrySetorUser
    Left = 96
    Top = 368
  end
  object QryChamadas: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select CODCALLLOG, SETOR.NOME SETOR, SETORUSER.NOME SETORUSER, N' +
        'UMERO,DATAHORASTART, DATAHORAEND '
      'from CALLLOG'
      ''
      'left outer join SETOR on (CALLLOG.CODSETOR = SETOR.CODSETOR)'
      
        'left outer join SETORUSER on (CALLLOG.CODSETORUSER = SETORUSER.C' +
        'ODSETORUSER)'
      'left outer join CADASTRO on (CALLLOG.CODCLI = CADASTRO.CODCLI)'
      'left outer join CONTATO on (CALLLOG.CODCONT = CONTATO.CODCONT)'
      'ORDER BY SETOR.NOME')
    Left = 24
    Top = 336
  end
  object DtsQryChamadas: TDataSource
    DataSet = QryChamadas
    Left = 24
    Top = 368
  end
  object Query1Cad: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CODCLI, NOME from CADASTRO'
      'order by NOME')
    Left = 176
    Top = 336
  end
  object Query2Cont: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsQuery1Cad
    SQL.Strings = (
      'select CODCONT, CODCLI,  NOME from CONTATO'
      'order by NOME')
    Left = 208
    Top = 336
  end
  object DtsQuery1Cad: TDataSource
    DataSet = Query1Cad
    Left = 176
    Top = 368
  end
  object DtsQuery2Cont: TDataSource
    DataSet = Query2Cont
    Left = 208
    Top = 368
  end
  object QryCallSolicitante: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QrySetorAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM CALLSOLICITANTE'
      'ORDER BY NOME')
    Left = 128
    Top = 336
  end
  object DtsQryCallSolicitante: TDataSource
    DataSet = QryCallSolicitante
    Left = 128
    Top = 368
  end
  object PopupMenu2: TPopupMenu
    Left = 704
    Top = 376
    object AumentarMnu: TMenuItem
      Caption = 'Aumentar Visualiza'#231#227'o'
      OnClick = AumentarMnuClick
    end
    object DiminuirMnu: TMenuItem
      Caption = 'Diminuir Visualiza'#231#227'o'
      Enabled = False
      OnClick = DiminuirMnuClick
    end
    object MaximizarMnu: TMenuItem
      Caption = 'Maximizar Visuliza'#231#227'o'
      OnClick = MaximizarMnuClick
    end
    object MinimizarMnu: TMenuItem
      Caption = 'Minimizar Visualiza'#231#227'o'
      Enabled = False
      OnClick = MinimizarMnuClick
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 248
    Top = 104
  end
  object PopupMenu1: TPopupMenu
    Left = 280
    Top = 104
    object SelecionarTodos1: TMenuItem
      Caption = '&Marcar Todos'
      OnClick = SelecionarTodos1Click
    end
    object DesmarcarTodos1: TMenuItem
      Caption = '&Desmarcar Todos'
      OnClick = DesmarcarTodos1Click
    end
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'CheckBox1.Caption'
      'CheckBox2.Caption'
      'CheckBox3.Caption'
      'CheckBox4.Caption'
      'CheckBox5.Caption'
      'DesmarcarTodos1.Caption'
      'DiminuirMnu.Caption'
      'GroupBox2.Caption'
      'GroupBox3.Caption'
      'GroupBox4.Caption'
      'GroupBox6.Caption'
      'Label1.Caption'
      'Label10.Caption'
      'Label2.Caption'
      'Label3.Caption'
      'Label4.Caption'
      'Label5.Caption'
      'Label6.Caption'
      'Label7.Caption'
      'Label8.Caption'
      'Label9.Caption'
      'MaximizarMnu.Caption'
      'MinimizarMnu.Caption'
      'Panel3.Caption'
      'Panel5.Caption'
      'Panel9.Caption'
      'SelecionarTodos1.Caption'
      'SpeedButton1.Hint'
      'SpeedButton2.Hint'
      'SpeedButton3.Hint'
      'SpeedButton4.Hint')
    StoredValues = <>
    Left = 248
    Top = 336
  end
end
