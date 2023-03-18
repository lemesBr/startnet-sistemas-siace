object FormDocsFiscais: TFormDocsFiscais
  Left = 306
  Top = 238
  Width = 530
  Height = 340
  Caption = 'Consulta Documentos Fiscais '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 514
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Pesquisa:'
    end
    object Edit1: TEdit
      Left = 8
      Top = 24
      Width = 497
      Height = 21
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 514
    Height = 245
    Align = alClient
    TabOrder = 1
    object XDBGrid1: TXDBGrid
      Left = 1
      Top = 1
      Width = 512
      Height = 243
      Align = alClient
      DataSource = DMC.Dts_DocsFiscais
      GridStyle.VisualStyle = vsXPStyle
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
      TabOrder = 0
      OnDblClick = XDBGrid1DblClick
      OnKeyPress = XDBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 60
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 423
        end>
    end
  end
end
