inherited FrmConsLocaisEstoque: TFrmConsLocaisEstoque
  Left = 417
  Top = 170
  Caption = 'Consulta de Locais de Estoque'
  ClientHeight = 419
  ClientWidth = 453
  OldCreateOrder = True
  OnClose = FormClose
  ExplicitWidth = 459
  ExplicitHeight = 448
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 453
    ExplicitWidth = 453
    inherited BtnOK: TAdvGlowButton
      Top = 25
      OnClick = BtnOKClick
      ExplicitTop = 25
    end
  end
  inherited Panel2: TPanel
    Width = 453
    Height = 279
    ExplicitWidth = 453
    ExplicitHeight = 279
    inherited DBGrid: TDBGrid
      Width = 449
      Height = 239
      DataSource = DM.DSLocaisEstoque
      OnDblClick = BtnLocalizarClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o do Local de Estoque'
          Width = 347
          Visible = True
        end>
    end
    inherited BtnLocalizar: TAdvGlowButton
      Left = 141
      Top = 248
      OnClick = BtnLocalizarClick
      ExplicitLeft = 141
      ExplicitTop = 248
    end
    inherited BtnSair: TAdvGlowButton
      Left = 261
      Top = 248
      ExplicitLeft = 261
      ExplicitTop = 248
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 400
    Width = 453
    ExplicitTop = 400
    ExplicitWidth = 453
  end
  inherited Panel3: TPanel
    Width = 453
    ExplicitWidth = 453
    inherited Label1: TLabel
      Width = 449
      Font.Color = clBlack
    end
    inherited GroupBox1: TGroupBox
      Width = 449
      ExplicitWidth = 449
      inherited ComboCons: TComboBox
        ItemIndex = 1
        Text = 'Nome'
      end
    end
  end
end
