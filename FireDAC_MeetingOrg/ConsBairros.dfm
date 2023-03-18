object FormConsBairros: TFormConsBairros
  Left = 310
  Top = 214
  Width = 585
  Height = 295
  Caption = 'Pesquisa Bairros'
  Color = clBtnFace
  Constraints.MinWidth = 270
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 569
    Height = 48
    Align = alTop
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 202
      Top = 5
      Width = 185
      Height = 13
      Caption = 'Entre Com a Descri'#231'ao do Bairro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel2: TRxLabel
      Left = 9
      Top = 5
      Width = 177
      Height = 13
      Caption = 'Selecione a Op'#231#227'o de Pesquisa:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object cbxpesquisa: TComboBox
      Left = 7
      Top = 20
      Width = 186
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Apenas Inicio da descri'#231#227'o '
      Items.Strings = (
        'Apenas Inicio da descri'#231#227'o '
        'Qualquer parte da descric'#227'o')
    end
    object Edit1: TEdit
      Left = 200
      Top = 20
      Width = 353
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 48
    Width = 569
    Height = 209
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 567
      Height = 207
      Align = alClient
      Color = clWhite
      DataSource = DM.Dts_bairros
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_BAIRRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo Bairro'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Bairro'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 449
          Visible = True
        end>
    end
  end
end
