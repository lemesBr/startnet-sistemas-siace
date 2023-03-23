inherited frmPostoCartoesList: TfrmPostoCartoesList
  Caption = 'Listagem de Cart'#245'es de Posto'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TAdvPanel
    ExplicitTop = 469
    ExplicitWidth = 780
    FullHeight = 51
    inherited btnexcluir: TAdvGlowButton
      ExplicitLeft = 678
    end
  end
  inherited DBGrid: TDBGrid
    OnDblClick = nil
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'N'#250'mero Cart'#227'o'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTROLE_STR'
        Title.Caption = 'Controle'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTROLE'
        Title.Caption = 'Controle'
        Width = -1
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'LIBERA_BOMBA_ABASTECIMENTO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ACEITA_SOMENTE_TURNO_ESPECIFICO'
        Visible = False
      end>
  end
  inherited lbe_PesquisaRapida: TLabeledEdit
    EditLabel.ExplicitLeft = 0
    EditLabel.ExplicitTop = -16
    EditLabel.ExplicitWidth = 95
    EditLabel.ExplicitHeight = 13
  end
  inherited fdmt_Base: TFDMemTable
    object fdmt_BaseID: TStringField
      FieldName = 'ID'
      Size = 32
    end
    object fdmt_BaseCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 16
    end
    object fdmt_BaseCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object fdmt_BaseLIBERA_BOMBA_ABASTECIMENTO: TStringField
      FieldName = 'LIBERA_BOMBA_ABASTECIMENTO'
      Size = 1
    end
    object fdmt_BaseACEITA_SOMENTE_TURNO_ESPECIFICO: TStringField
      FieldName = 'ACEITA_SOMENTE_TURNO_ESPECIFICO'
      Size = 1
    end
    object fdmt_BaseCONTROLE_STR: TStringField
      FieldName = 'CONTROLE_STR'
      Size = 100
    end
  end
end
