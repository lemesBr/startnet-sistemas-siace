inherited frmPostoTanqueList: TfrmPostoTanqueList
  Caption = 'Listagem de Tanques'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TAdvPanel
    FullHeight = 51
    inherited btnexcluir: TAdvGlowButton
      ExplicitLeft = 678
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
        FieldName = 'ID_PRODUTO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'Produto'
        Width = 250
        Visible = True
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
        FieldName = 'VOLUME_ATUAL'
        Title.Alignment = taRightJustify
        Title.Caption = 'Volume Atual'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAPACIDADE'
        Title.Alignment = taRightJustify
        Title.Caption = 'Capacidade'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = False
      end>
  end
  inherited fdmt_Base: TFDMemTable
    object fdmt_BaseID: TStringField
      FieldName = 'ID'
      Size = 32
    end
    object fdmt_BaseID_PRODUTO: TStringField
      FieldName = 'ID_PRODUTO'
      Size = 32
    end
    object fdmt_BaseNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object fdmt_BaseVOLUME_ATUAL: TCurrencyField
      FieldName = 'VOLUME_ATUAL'
    end
    object fdmt_BaseCAPACIDADE: TCurrencyField
      FieldName = 'CAPACIDADE'
    end
    object fdmt_BaseDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object fdmt_BasePRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 255
    end
  end
end
