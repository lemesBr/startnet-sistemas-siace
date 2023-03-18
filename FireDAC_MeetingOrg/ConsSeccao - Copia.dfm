object FormConsSeccao: TFormConsSeccao
  Left = 364
  Top = 232
  AutoScroll = False
  Caption = 'Pesquisa Sec'#231#227'o'
  ClientHeight = 260
  ClientWidth = 490
  Color = clBtnFace
  Constraints.MinHeight = 23
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
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
    Width = 490
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 5
      Top = 5
      Width = 177
      Height = 13
      Caption = 'Entre Com o Nome da Sec'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object Edit1: TsuiEdit
      Left = 5
      Top = 20
      Width = 476
      Height = 21
      UIStyle = MacOS
      BorderColor = 8355711
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = suitempEdit1Change
      OnEnter = suitempEdit1Enter
      OnExit = suitempEdit1Exit
      OnKeyDown = Edit1KeyDown
      OnKeyPress = suitempEdit1KeyPress
    end
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 0
    Top = 45
    Width = 490
    Height = 215
    Align = alClient
    BorderStyle = bsNone
    DataSource = DM.DTS_SECCAO
    FixedColor = 15717318
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = suiDBGrid1DrawColumnCell
    OnDblClick = suitempsuiDBGrid1DblClick
    OnKeyPress = suitempsuiDBGrid1KeyPress
    UIStyle = WinXP
    BorderColor = 6842472
    FocusedColor = clGreen
    SelectedColor = clYellow
    FontColor = clBlack
    TitleFontColor = clBlack
    FixedBGColor = 15717318
    BGColor = clWindow
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 388
        Visible = True
      end>
  end
end
