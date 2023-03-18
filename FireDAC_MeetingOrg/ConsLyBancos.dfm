object FormConsLyBancos: TFormConsLyBancos
  Left = 367
  Top = 182
  Width = 743
  Height = 354
  Caption = 'Pesquisa Layout'#180's Banc'#225'rios'
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 727
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 5
      Top = 5
      Width = 170
      Height = 13
      Caption = 'Entre Com o Nome do Banco:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object Edit1: TEdit
      Left = 5
      Top = 20
      Width = 300
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 0
    Top = 45
    Width = 727
    Height = 271
    Align = alClient
    BorderStyle = bsNone
    Color = 15263976
    DataSource = DM.Dts_lyBancos
    FixedColor = 15263976
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = suiDBGrid1DblClick
    OnKeyPress = suiDBGrid1KeyPress
    UIStyle = DeepBlue
    BorderColor = clBlack
    FocusedColor = clGreen
    SelectedColor = clYellow
    FontColor = clBlue
    TitleFontColor = clBlack
    FixedBGColor = 15263976
    BGColor = 15263976
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO_BOLETO'
        Title.Caption = 'C'#243'd.'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Desc. do Banco'
        Width = 217
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANCO_PORTADOR'
        Title.Caption = 'Febraban'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECEDENTE'
        Title.Caption = 'Cedente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJCEDENTE'
        Title.Caption = 'Cpf/Cnpj'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERCAD'
        Title.Caption = 'Usuario(Cad)'
        Visible = True
      end>
  end
end
