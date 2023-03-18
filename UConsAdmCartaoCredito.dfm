inherited FrmConsAdmCartaoCredito: TFrmConsAdmCartaoCredito
  Left = 707
  Top = 112
  Caption = 'Consulta de FDm.Cart'#227'o Cr'#233'dito'
  ClientWidth = 450
  OldCreateOrder = True
  OnClose = FormClose
  ExplicitWidth = 456
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 450
    ExplicitWidth = 450
    inherited BtnOK: TAdvGlowButton
      Left = 361
      OnClick = BtnOkClick
      ExplicitLeft = 361
    end
  end
  inherited Panel2: TPanel
    Width = 450
    ExplicitWidth = 450
    inherited DBGrid: TDBGrid
      Width = 446
      DataSource = DM.DSAdmCartao
      OnDblClick = BtnLocalizarClick
      Columns = <
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'COD.'
          Width = 43
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'DESCRI'#199#195'O'
          Width = 263
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CODIGO_TEF'
          Title.Alignment = taCenter
          Title.Caption = 'COD.TEF'
          Width = 120
          Visible = True
        end>
    end
    inherited BtnLocalizar: TAdvGlowButton
      Left = 128
      OnClick = BtnLocalizarClick
      ExplicitLeft = 128
    end
    inherited BtnSair: TAdvGlowButton
      Left = 248
      ExplicitLeft = 248
    end
  end
  inherited StatusBar1: TStatusBar
    Width = 450
    ExplicitWidth = 450
  end
  inherited Panel3: TPanel
    Width = 450
    ExplicitWidth = 450
    inherited Label1: TLabel
      Width = 446
      Font.Color = clBlack
    end
    inherited GroupBox1: TGroupBox
      Width = 446
      ExplicitWidth = 446
    end
  end
end
