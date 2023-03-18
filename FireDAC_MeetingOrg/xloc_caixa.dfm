object FormConsfechamento: TFormConsfechamento
  Left = 509
  Top = 218
  Width = 724
  Height = 394
  BorderIcons = [biSystemMenu]
  Caption = 'Fechamentos do Caixa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 44
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    UseDockManager = True
    object Label1: TLabel
      Left = 6
      Top = 3
      Width = 114
      Height = 12
      Caption = 'F3 | LOCALIZAR POR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 3
      Width = 94
      Height = 12
      Caption = 'F4 | REFER'#202'NCIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 248
      Top = 4
      Width = 2
      Height = 37
    end
    object Label4: TLabel
      Left = 6
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 136
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 264
      Top = 3
      Width = 253
      Height = 12
      Caption = 'F5 | INFORME OS PAR'#194'METROS DA PESQUISA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 264
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 648
      Top = 4
      Width = 2
      Height = 37
    end
    object Label7: TLabel
      Left = 670
      Top = 11
      Width = 18
      Height = 12
      Caption = 'ESC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lvoltar: TLabel
      Left = 658
      Top = 24
      Width = 44
      Height = 12
      Caption = 'FECHAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object combo_localizar: TComboBox
      Left = 5
      Top = 17
      Width = 118
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 12
      ParentFont = False
      TabOrder = 1
      Items.Strings = (
        'DATA_FECHAMENTO'
        'SEQ')
    end
    object combo_referencia: TComboBox
      Left = 136
      Top = 17
      Width = 97
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 12
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'IN'#205'CIO'
      Items.Strings = (
        'IN'#205'CIO'
        'PARTE')
    end
    object loc: TEdit
      Left = 264
      Top = 17
      Width = 369
      Height = 20
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object GRID: TXDBGrid
    Left = 0
    Top = 44
    Width = 708
    Height = 311
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    GridStyle.VisualStyle = vsXPStyle
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'SEQ'
        Visible = True
        Width = 59
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_USUARIO'
        Title.Caption = 'COD USUARIO'
        Visible = True
        Width = 109
      end
      item
        Expanded = False
        FieldName = 'DATA_FECHAMENTO'
        Title.Caption = 'DATA FECHAMENTO'
        Visible = True
        Width = 123
      end
      item
        Expanded = False
        FieldName = 'DATA_ABERTURA'
        Title.Caption = 'DATA ABERTURA'
        Visible = True
        Width = 114
      end>
  end
  object ds: TDataSource
    DataSet = query
    Left = 424
    Top = 232
  end
  object query: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from caixa')
    Left = 464
    Top = 232
    object querySEQ: TIntegerField
      FieldName = 'SEQ'
      Origin = 'SEQ'
    end
    object querySITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object querySALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Precision = 18
      Size = 2
    end
    object queryCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'COD_USUARIO'
    end
    object queryDATA_FECHAMENTO: TDateField
      FieldName = 'DATA_FECHAMENTO'
      Origin = 'DATA_FECHAMENTO'
    end
    object queryDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 256
    object Localizarpor1: TMenuItem
      Caption = 'Localizar por...'
      ShortCut = 114
      OnClick = Localizarpor1Click
    end
    object Referncia1: TMenuItem
      Caption = 'Refer'#234'ncia da Pesquisa'
      ShortCut = 115
      OnClick = Referncia1Click
    end
    object ParmetrosdaPesquisa1: TMenuItem
      Caption = 'Par'#226'metros da Pesquisa'
      ShortCut = 116
      OnClick = ParmetrosdaPesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
    end
  end
end
