object FormConsCidades: TFormConsCidades
  Left = 368
  Top = 292
  BorderStyle = bsDialog
  Caption = 'Pesquisa Cidades'
  ClientHeight = 258
  ClientWidth = 610
  Color = clBtnFace
  Constraints.MinWidth = 130
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
    Width = 610
    Height = 65
    Align = alTop
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 202
      Top = 5
      Width = 188
      Height = 13
      Caption = 'Entre Com a Descri'#231'ao da cidade:'
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
      Width = 385
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 610
    Height = 193
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 608
      Height = 191
      Align = alClient
      Color = clWhite
      DataSource = DM.DTS_cidades
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'COD_CIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo Cidade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Nome da Cidade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 315
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP'
          Title.Alignment = taCenter
          Title.Caption = 'Cep'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_IBGE'
          Title.Caption = 'Cod. Ibge'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
end
