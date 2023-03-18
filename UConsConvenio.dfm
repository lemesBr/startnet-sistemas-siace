inherited FrmConsConvenio: TFrmConsConvenio
  Caption = 'Consulta de Conv'#234'nio'
  ClientWidth = 587
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 587
    inherited EdtCons: TEdit
      Width = 473
    end
    inherited BtnOK: TBitBtn
      Left = 493
      OnClick = BtnOkClick
    end
  end
  inherited Panel2: TPanel
    Width = 587
    inherited DBGrid: TDBGrid
      Width = 583
      DataSource = DM.DSConv
      OnDblClick = BtnLocalizarClick
      Columns = <
        item
          Color = 16776176
          Expanded = False
          FieldName = 'COD_CON'
          Title.Alignment = taCenter
          Title.Caption = 'C'#211'D.'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'NOME_CON'
          Title.Alignment = taCenter
          Title.Caption = 'DESCRI'#199#195'O'
          Width = 171
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'TEL_CON'
          Title.Alignment = taCenter
          Title.Caption = 'TELEFONE'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'FAX_CON'
          Title.Alignment = taCenter
          Title.Caption = 'FAX'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'RESPONSAVEL_CON'
          Title.Alignment = taCenter
          Title.Caption = 'RESPONS'#193'VEL'
          Width = 96
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'DIA_REFERENCIA_CON'
          Title.Alignment = taCenter
          Title.Caption = 'DIA REF.'
          Visible = True
        end>
    end
    inherited BtnLocalizar: TBitBtn
      Left = 164
      OnClick = BtnLocalizarClick
    end
    inherited BtnSair: TBitBtn
      Left = 340
    end
  end
  inherited StatusBar1: TStatusBar
    Width = 587
  end
  inherited Panel3: TPanel
    Width = 587
    inherited Label1: TLabel
      Width = 583
      Font.Color = clBlack
    end
    inherited GroupBox1: TGroupBox
      Width = 583
      inherited ComboCons: TComboBox
        Width = 553
      end
    end
  end
end
