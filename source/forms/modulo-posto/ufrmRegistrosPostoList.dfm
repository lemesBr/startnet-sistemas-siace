inherited frmRegistrosPostoList: TfrmRegistrosPostoList
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Listagem de Registros de Posto'
  ClientHeight = 585
  ClientWidth = 846
  Position = poScreenCenter
  OnCreate = FormCreate
  ExplicitWidth = 852
  ExplicitHeight = 614
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 846
    Height = 585
    Align = alClient
    DataSource = ds_Base
    DrawingStyle = gdsClassic
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = baseDBGridDrawColumnCell
    OnDblClick = DBGridDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NUMERO_REGISTRO'
        Title.Caption = 'Registro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_HORA'
        Title.Caption = 'Data e Hora'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEMPO'
        Title.Caption = 'Tempo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_BICO'
        Title.Caption = 'Bico'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_POR_LITRO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Valor Litro'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_DE_LITRO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total de Litro'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_TOTAL'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAG_CARTAO1'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'TAG_CARTAO2'
        Visible = False
      end>
  end
  object fdmt_Base: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 467
    Top = 129
    object fdmt_BaseID: TStringField
      FieldName = 'ID'
      Size = 32
    end
    object fdmt_BaseID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
    end
    object fdmt_BaseCODIGO_BICO: TStringField
      FieldName = 'CODIGO_BICO'
      Size = 10
    end
    object fdmt_BaseVALOR_POR_LITRO: TCurrencyField
      FieldName = 'VALOR_POR_LITRO'
    end
    object fdmt_BaseTOTAL_DE_LITRO: TCurrencyField
      FieldName = 'TOTAL_DE_LITRO'
    end
    object fdmt_BaseVALOR_TOTAL: TCurrencyField
      FieldName = 'VALOR_TOTAL'
    end
    object fdmt_BaseTEMPO: TStringField
      FieldName = 'TEMPO'
      Size = 10
    end
    object fdmt_BaseDATA_HORA: TDateTimeField
      FieldName = 'DATA_HORA'
    end
    object fdmt_BaseNUMERO_REGISTRO: TIntegerField
      FieldName = 'NUMERO_REGISTRO'
    end
    object fdmt_BaseTAG_CARTAO1: TStringField
      FieldName = 'TAG_CARTAO1'
      Size = 16
    end
    object fdmt_BaseTAG_CARTAO2: TStringField
      FieldName = 'TAG_CARTAO2'
      Size = 16
    end
    object fdmt_BaseSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object ds_Base: TDataSource
    DataSet = fdmt_Base
    Left = 467
    Top = 185
  end
end
