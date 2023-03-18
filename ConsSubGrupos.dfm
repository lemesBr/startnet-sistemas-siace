object FormConsSubGrupos: TFormConsSubGrupos
  Left = 274
  Top = 183
  BorderStyle = bsDialog
  Caption = 'Localizar Sub Grupo de Produtos  Cadastrados'
  ClientHeight = 249
  ClientWidth = 610
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 610
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 5
      Top = 5
      Width = 266
      Height = 13
      Caption = 'Entre Com o Nome do Sub-Grupo de Produtos:'
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
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 45
    Width = 610
    Height = 204
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    Color = 15263976
    TabOrder = 1
    object suiDBGrid1: TsuiDBGrid
      Left = 4
      Top = 4
      Width = 602
      Height = 196
      TabStop = False
      Align = alClient
      BorderStyle = bsNone
      DataSource = DM.DTS_SubGrupos
      FixedColor = 15717318
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = suiDBGrid1DrawColumnCell
      OnDblClick = suiDBGrid1DblClick
      OnKeyPress = suiDBGrid1KeyPress
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
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome do Sub-Grupo de Produtos'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 275
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRUPO'
          Title.Caption = 'Nome do Grupo de Produtos'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 234
          Visible = True
        end>
    end
  end
end
