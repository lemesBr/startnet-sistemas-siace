inherited frmPostoFrentistasList: TfrmPostoFrentistasList
  Caption = 'Listagem de Frentistas'
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
        FieldName = 'ID_CARTAO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descricao'
        Width = -1
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CARTAO'
        Title.Caption = 'Cart'#227'o'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS_NAME'
        Title.Caption = 'Status'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'COMISSAO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Comissao'
        Width = 80
        Visible = True
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
    object fdmt_BaseID_CARTAO: TStringField
      FieldName = 'ID_CARTAO'
      Size = 32
    end
    object fdmt_BaseNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object fdmt_BaseDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object fdmt_BaseCOMISSAO: TCurrencyField
      FieldName = 'COMISSAO'
      currency = False
    end
    object fdmt_BaseSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object fdmt_BaseCARTAO: TStringField
      FieldName = 'CARTAO'
      Size = 16
    end
    object fdmt_BaseSTATUS_NAME: TStringField
      FieldName = 'STATUS_NAME'
    end
  end
end
