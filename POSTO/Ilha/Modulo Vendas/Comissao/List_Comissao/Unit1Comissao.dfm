object VendedorComissaoListFrm: TVendedorComissaoListFrm
  Left = 275
  Top = 186
  Width = 460
  Height = 332
  Caption = 'C'#225'lculo de Comiss'#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 433
    Height = 137
    TabOrder = 0
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 63
      Height = 16
      Caption = 'Vendedor:'
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
    object Label2: TLabel
      Left = 152
      Top = 72
      Width = 64
      Height = 16
      Caption = 'Data Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 72
      Width = 69
      Height = 16
      Caption = 'Data Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DateEdit1: TDateEdit
      Left = 16
      Top = 88
      Width = 120
      Height = 24
      DialogTitle = 'Selecione a Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyDown = DateEdit1KeyDown
    end
    object DateEdit2: TDateEdit
      Left = 152
      Top = 88
      Width = 120
      Height = 24
      DialogTitle = 'Selecione a Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      Weekends = [Sun, Sat]
      TabOrder = 2
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyDown = DateEdit2KeyDown
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 32
      Width = 401
      Height = 24
      Hint = 'Selecione o Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODVEND'
      ListField = 'NOME'
      ListSource = DtsQryVendedor
      NullValueKey = 46
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnDropDown = DBLookupComboBox1DropDown
      OnKeyDown = DBLookupComboBox1KeyDown
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 152
    Width = 433
    Height = 137
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 16
      Width = 130
      Height = 16
      Caption = 'Comiss'#227'o percentual:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 104
      Width = 98
      Height = 16
      Caption = 'Comiss'#227'o Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 56
      Width = 109
      Height = 16
      Caption = 'Valor das vendas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 8
      Top = 88
      Width = 418
      Height = 10
      Shape = bsBottomLine
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 216
      Top = 104
      Width = 193
      Height = 24
      Hint = 'Comis'#227'o do Vendedor no Per'#237'odo'
      AutoSize = False
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      Visible = False
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 256
      Top = 56
      Width = 161
      Height = 24
      Hint = 'Comis'#227'o do Vendedor no Per'#237'odo'
      AutoSize = False
      BorderStyle = bsNone
      Color = clBtnFace
      DisplayFormat = 'R$ ,0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
      Visible = False
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 264
      Top = 16
      Width = 153
      Height = 24
      Hint = 'Comis'#227'o do Vendedor no Per'#237'odo'
      AutoSize = False
      BorderStyle = bsNone
      Color = clBtnFace
      DisplayFormat = ',0.00 %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
      Visible = False
    end
  end
  object QryComissao: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 176
    Top = 176
  end
  object QryVendedor: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from VENDEDOR')
    Left = 208
    Top = 176
  end
  object DtsQryVendedor: TDataSource
    DataSet = QryVendedor
    Left = 176
    Top = 208
  end
end
