object frmNfeImportar: TfrmNfeImportar
  Left = 611
  Top = 187
  BorderStyle = bsDialog
  Caption = 'NFe A Importar'
  ClientHeight = 500
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbg_importar: TDBGrid
    Left = 0
    Top = 0
    Width = 700
    Height = 500
    Align = alClient
    DataSource = ds_Importar
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbg_importarDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CHAVE'
        Width = 400
        Visible = True
      end>
  end
  object FDq_Importar: TFDQuery
    Left = 456
    Top = 120
    object FDq_ImportarCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 44
    end
    object FDq_ImportarXML: TBlobField
      FieldName = 'XML'
      Size = 4096
    end
  end
  object ds_Importar: TDataSource
    DataSet = FDq_Importar
    Left = 456
    Top = 160
  end
end
