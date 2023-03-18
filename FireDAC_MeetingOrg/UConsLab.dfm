inherited FrmConsLab: TFrmConsLab
  Left = 468
  Top = 181
  Caption = 'Consulta de Fabricante'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited BtnOK: TBitBtn
      OnClick = BtnOkClick
    end
  end
  inherited Panel2: TPanel
    inherited DBGrid: TDBGrid
      OnDblClick = BtnLocalizarClick
      Columns = <
        item
          Color = 16776176
          Expanded = False
          FieldName = 'COD_LAB'
          Title.Alignment = taCenter
          Title.Caption = 'C'#211'D.'
          Width = 80
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'NOME_LAB'
          Title.Alignment = taCenter
          Title.Caption = 'DESCRI'#199#195'O'
          Width = 347
          Visible = True
        end>
    end
    inherited BtnLocalizar: TBitBtn
      OnClick = BtnLocalizarClick
    end
  end
  inherited Panel3: TPanel
    inherited Label1: TLabel
      Font.Color = clBlack
    end
  end
end
