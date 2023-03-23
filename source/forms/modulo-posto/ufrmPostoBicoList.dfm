inherited frmPostoBicoList: TfrmPostoBicoList
  Caption = 'Listagem de Bicos'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TAdvPanel
    FullHeight = 51
    inherited btnexcluir: TAdvGlowButton
      ExplicitLeft = 578
    end
  end
  inherited DBGrid: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_TANQUE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CODIGO_BICO'
        Title.Caption = 'C'#243'digo'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'POSICAO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 300
        Visible = True
      end>
  end
  inherited Action: TActionList
    inherited act_Exportar: TAction
      OnExecute = act_ExportarExecute
    end
  end
  inherited fdmt_Base: TFDMemTable
    object fdmt_BaseID: TStringField
      FieldName = 'ID'
      Size = 32
    end
    object fdmt_BaseID_TANQUE: TStringField
      FieldName = 'ID_TANQUE'
      Size = 32
    end
    object fdmt_BaseCODIGO_BICO: TStringField
      FieldName = 'CODIGO_BICO'
      Size = 10
    end
    object fdmt_BasePOSICAO: TStringField
      FieldName = 'POSICAO'
      Size = 10
    end
    object fdmt_BaseDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
  end
end
