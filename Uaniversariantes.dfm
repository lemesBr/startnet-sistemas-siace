object FormAniver: TFormAniver
  Left = 369
  Top = 154
  Width = 651
  Height = 376
  Caption = 'Aniversariantes do dia'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 337
    Align = alClient
    Caption = 'Aniversariantes do dia'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
    TabOrder = 0
    FullWidth = 635
    object XDBGrid1: TXDBGrid
      Left = 9
      Top = 32
      Width = 616
      Height = 299
      Align = alClient
      DataSource = DMC.dts_clientes
      GridStyle.VisualStyle = vsXPStyle
      TabOrder = 0
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_RS'
          Title.Caption = 'Nome do Aniversariante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APELIDO'
          Title.Caption = 'Apelido do Aniversariante'
          Visible = True
          Width = 216
        end>
    end
  end
end
