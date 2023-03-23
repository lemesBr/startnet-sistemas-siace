inherited frmPostoBombaList: TfrmPostoBombaList
  Caption = 'Listagem de Bombas'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [1]
    Left = 16
    Top = 280
    Width = 42
    Height = 23
    Caption = 'Bicos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited Panel2: TAdvPanel
    FullHeight = 51
    inherited btnexcluir: TAdvGlowButton
      ExplicitLeft = 578
    end
  end
  inherited DBGrid: TDBGrid
    Height = 169
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'N'#250'mero'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODELO'
        Title.Caption = 'Modelo'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Caption = 'Serie'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FABRICANTE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'AUTO_AUTORIZAR'
        Visible = False
      end>
  end
  object DBGrid1: TDBGrid [5]
    Left = 16
    Top = 312
    Width = 745
    Height = 137
    DataSource = ds_Bico
    DrawingStyle = gdsClassic
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = baseDBGridDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_BICO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_BOMBA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'BICO'
        Title.Caption = 'Bico'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TANQUE'
        Title.Caption = 'Tanque'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'Produto'
        Width = 250
        Visible = True
      end>
  end
  inherited fdmt_Base: TFDMemTable
    object fdmt_BaseID: TStringField
      FieldName = 'ID'
      Size = 32
    end
    object fdmt_BaseNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object fdmt_BaseDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object fdmt_BaseMODELO: TStringField
      FieldName = 'MODELO'
      Size = 255
    end
    object fdmt_BaseSERIE: TStringField
      FieldName = 'SERIE'
      Size = 255
    end
    object fdmt_BaseFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Size = 255
    end
    object fdmt_BaseAUTO_AUTORIZAR: TStringField
      FieldName = 'AUTO_AUTORIZAR'
      Size = 1
    end
  end
  inherited ds_Base: TDataSource
    OnDataChange = ds_BaseDataChange
  end
  object fdmt_Bico: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 659
    Top = 337
    object fdmt_BicoID_BICO: TStringField
      FieldName = 'ID_BICO'
      Size = 32
    end
    object fdmt_BicoID_TANQUE: TStringField
      FieldName = 'ID_BOMBA'
      Size = 32
    end
    object fdmt_BicoBICO: TStringField
      FieldName = 'BICO'
      Size = 255
    end
    object fdmt_BicoTANQUE: TStringField
      FieldName = 'TANQUE'
      Size = 255
    end
    object fdmt_BicoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 255
    end
  end
  object ds_Bico: TDataSource
    DataSet = fdmt_Bico
    Left = 659
    Top = 393
  end
end
