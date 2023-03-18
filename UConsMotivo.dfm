inherited FrmConsMotivo: TFrmConsMotivo
  Caption = 'Consulta de Motivo de Acerto'
  ClientHeight = 466
  OldCreateOrder = True
  OnClose = FormClose
  ExplicitHeight = 495
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited BtnOK: TAdvGlowButton
      OnClick = BtnOkClick
    end
  end
  inherited Panel2: TPanel
    Height = 326
    ExplicitHeight = 326
    inherited DBGrid: TDBGrid
      DataSource = DM.DSMotivo
      OnDblClick = BtnLocalizarClick
      Columns = <
        item
          Color = clWhite
          Expanded = False
          FieldName = 'COD_MOT'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'NOME_MOT'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o do Motivo'
          Width = 288
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'ENTSAI_MOT'
          Title.Alignment = taCenter
          Title.Caption = 'Ent/Sa'#237'da'
          Width = 60
          Visible = True
        end>
    end
    inherited BtnLocalizar: TAdvGlowButton
      OnClick = BtnLocalizarClick
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 447
    ExplicitTop = 447
  end
  inherited Panel3: TPanel
    inherited Label1: TLabel
      Font.Color = clBlack
    end
  end
end
