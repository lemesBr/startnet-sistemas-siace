inherited FrmConsLocaisEstoque: TFrmConsLocaisEstoque
  Left = 417
  Top = 170
  Caption = 'Consulta de Locais de Estoque'
  ClientHeight = 419
  ClientWidth = 453
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 453
    inherited BtnOK: TBitBtn
      OnClick = BtnOKClick
    end
  end
  inherited Panel2: TPanel
    Width = 453
    Height = 279
    inherited DBGrid: TDBGrid
      Width = 449
      Height = 239
      DataSource = DM.DSLocaisEstoque
      OnDblClick = BtnLocalizarClick
      Columns = <
        item
          Color = clWhite
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 80
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o do Local de Estoque'
          Width = 347
          Visible = True
        end>
    end
    inherited BtnLocalizar: TBitBtn
      Left = 141
      Top = 248
      OnClick = BtnLocalizarClick
    end
    inherited BtnSair: TBitBtn
      Left = 261
      Top = 248
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 400
    Width = 453
  end
  inherited Panel3: TPanel
    Width = 453
    inherited Label1: TLabel
      Width = 449
      Font.Color = clBlack
    end
    inherited GroupBox1: TGroupBox
      Width = 449
    end
  end
end
