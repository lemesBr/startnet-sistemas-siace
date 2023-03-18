inherited FormConsGrupoT: TFormConsGrupoT
  Left = 300
  Top = 156
  Caption = 'Consulta de Grupo Tributa'#231#227'o'
  ClientHeight = 466
  ClientWidth = 575
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 575
    ParentColor = True
    inherited EdtCons: TEdit
      Width = 473
      OnChange = EdtConsChange
      OnExit = EdtConsExit
    end
    inherited BtnOK: TBitBtn
      Left = 493
      Top = 24
      Height = 22
      OnClick = BtnOkClick
    end
  end
  inherited Panel2: TPanel
    Width = 575
    Height = 326
    Color = clBtnFace
    inherited DBGrid: TDBGrid
      Width = 571
      DataSource = DM.Dts_grupo_Trib
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OnDblClick = BtnLocalizarClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_GRUPO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFOP_EST_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Cfop Est.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 269
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERC_ICMS_ESTADUAL'
          Title.Alignment = taCenter
          Title.Caption = 'Icms.(%)'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERC_ALIQUOTA_PIS'
          Title.Alignment = taCenter
          Title.Caption = 'Aliq. Pis'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERC_ALIQUOTA_COFINS'
          Title.Alignment = taCenter
          Title.Caption = 'Aliq. Cofins'
          Visible = True
        end>
    end
    inherited BtnLocalizar: TBitBtn
      Left = 168
      Visible = False
      OnClick = BtnLocalizarClick
    end
    inherited BtnSair: TBitBtn
      Left = 296
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 447
    Width = 575
  end
  inherited Panel3: TPanel
    Width = 575
    ParentColor = True
    inherited Label1: TLabel
      Width = 571
      Font.Color = clBlack
    end
    inherited GroupBox1: TGroupBox
      Width = 571
      Color = clBtnFace
      ParentColor = False
      inherited ComboCons: TComboBox
        Width = 553
        Items.Strings = (
          'Nome'
          'C'#243'digo')
      end
    end
  end
end
