inherited FormBoletos: TFormBoletos
  Left = 455
  Top = 193
  Caption = 'Gera'#231#227'o e emiss'#227'o de boletos Bancarios'
  ClientHeight = 377
  ClientWidth = 674
  Constraints.MinWidth = 130
  OldCreateOrder = True
  OnActivate = suiButton1Click
  OnClose = FormClose
  OnKeyDown = nil
  OnShow = FormShow
  ExplicitWidth = 680
  ExplicitHeight = 406
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TsPanel
    Width = 674
    Height = 319
    ExplicitWidth = 674
    ExplicitHeight = 319
    object myLabel3d1: TsLabelFX
      Left = 7
      Top = -2
      Width = 406
      Height = 40
      Caption = 'Emiss'#227'o de boletos banc'#225'rios'
      Color = 15263976
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object sLabel3: TsLabel
      Left = 8
      Top = 77
      Width = 76
      Height = 13
      Caption = 'C'#243'd. Avalista:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object sLabel5: TsLabel
      Left = 510
      Top = 77
      Width = 58
      Height = 13
      Caption = 'Cpf / Cnpj:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object sLabel4: TsLabel
      Left = 118
      Top = 77
      Width = 150
      Height = 13
      Caption = 'Nome do Sacador Avalista:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Panel3: TsPanel
      Left = 8
      Top = 30
      Width = 193
      Height = 47
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 0
      object Label3: TsLabel
        Left = 4
        Top = 1
        Width = 79
        Height = 13
        Caption = 'C'#243'digo Venda:'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
      end
      object Edit2: TsEdit
        Left = 5
        Top = 13
        Width = 76
        Height = 21
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
      object suiButton1: TsBitBtn
        Left = 89
        Top = 10
        Width = 80
        Height = 23
        Hint = 'Pesquisa por codigo da Venda'
        Caption = 'Pesquisar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = suiButton1Click
      end
    end
    object Panel7: TsPanel
      Left = 202
      Top = 30
      Width = 310
      Height = 48
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 1
      object RxLabel6: TsLabel
        Left = 3
        Top = 10
        Width = 301
        Height = 26
        AutoSize = False
        Caption = 'CLIENTE'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
      end
    end
    object Panel4: TsPanel
      Left = 518
      Top = 29
      Width = 149
      Height = 47
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 2
      object Label1: TsLabel
        Left = 5
        Top = 6
        Width = 42
        Height = 13
        Caption = 'Layout:'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
      end
      object Label2: TsLabel
        Left = 105
        Top = 6
        Width = 30
        Height = 13
        Caption = 'Qtde:'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
      end
      object ComboBox1: TsComboBox
        Left = 6
        Top = 22
        Width = 99
        Height = 21
        TabOrder = 0
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
        ItemIndex = 0
        Items.Strings = (
          'Boleto Padr'#227'o'
          'Carne')
        Text = 'Boleto Padr'#227'o'
      end
      object MaskEdit1: TsMaskEdit
        Left = 110
        Top = 22
        Width = 33
        Height = 21
        TabOrder = 1
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
        CheckOnExit = True
        Text = '1'
      end
    end
    object XDBGrid1: TXDBGrid
      Left = 5
      Top = 120
      Width = 666
      Height = 193
      Align = alCustom
      DataSource = DMCOB.DTS_Titulos
      GridStyle.VisualStyle = vsXPStyle
      TabOrder = 3
      Columns = <
        item
          CheckBox = True
          CheckBoxStyle = cbMild
          CheckBoxValues = 'T;F'
          Expanded = False
          FieldName = 'CHEK_BOX'
          Title.Caption = 'X'
          Visible = True
          Width = 18
        end
        item
          Expanded = False
          FieldName = 'CODIGO_COMPRA'
          Title.Caption = 'Venda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCELA'
          Title.Caption = 'Parc.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_VENCIMENTO'
          Title.Caption = 'Vencimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMBOLETO'
          Title.Caption = 'Num. Boleto'
          Visible = True
          Width = 64
        end
        item
          Expanded = False
          FieldName = 'BANCO_PORTADOR'
          Title.Caption = 'Banco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_COMPRA'
          Title.Caption = 'Data Vda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_COMPRA'
          Title.Caption = 'Valor'
          Visible = True
          Width = 82
        end
        item
          Expanded = False
          FieldName = 'VALOR_JUROS'
          Title.Caption = 'Juros'
          Visible = True
          Width = 75
        end
        item
          Expanded = False
          FieldName = 'VALOR_ACRESCIMO'
          Title.Caption = 'Multa'
          Visible = True
          Width = 78
        end
        item
          Expanded = False
          FieldName = 'VALOR_DESCONTO'
          Title.Caption = 'Desconto'
          Visible = True
          Width = 72
        end
        item
          Expanded = False
          FieldName = 'VALOR_PAGAR'
          Title.Caption = 'Valor Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Title.Caption = 'Hist'#243'rico'
          Visible = True
          Width = 218
        end
        item
          Expanded = False
          FieldName = 'NOME_SACADO'
          Title.Caption = 'Nome do Sacado'
          Visible = True
          Width = 269
        end>
    end
    object sPanel1: TsPanel
      Left = 8
      Top = 91
      Width = 104
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 4
      object ComboEdit1: TComboEdit
        Left = 3
        Top = 4
        Width = 102
        Height = 24
        CharCase = ecUpperCase
        ClickKey = 113
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        GlyphKind = gkEllipsis
        NumGlyphs = 1
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = ''
        OnButtonClick = ComboEdit1ButtonClick
        OnChange = ComboEdit1Change
        OnExit = ComboEdit1Exit
      end
    end
    object sPanel2: TsPanel
      Left = 117
      Top = 91
      Width = 380
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 5
      object sLabel1: TsLabel
        Left = 8
        Top = 5
        Width = 368
        Height = 15
        AutoSize = False
        Caption = 'CLIENTE'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
      end
    end
    object sPanel3: TsPanel
      Left = 505
      Top = 91
      Width = 162
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 6
      object sLabel2: TsLabel
        Left = 2
        Top = 4
        Width = 155
        Height = 15
        AutoSize = False
        Caption = 'CPF'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
      end
    end
    object Edit3: TEdit
      Left = 532
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 7
      Visible = False
    end
  end
  inherited Panel2: TsPanel
    Top = 319
    Width = 674
    Height = 58
    ExplicitTop = 319
    ExplicitWidth = 674
    ExplicitHeight = 58
    inherited btnNovo: TAdvGlowButton
      Left = 95
      Top = 6
      Hint = 'Gera o Boleto Ref. ao registro selecionado...'
      Caption = 'Gerar Boleto'
      OnClick = btnNovoClick
      ExplicitLeft = 95
      ExplicitTop = 6
    end
    inherited btnEditar: TAdvGlowButton
      Hint = 'Imprime o boleto Selecionado...'
      Caption = '&Imprimir'
      OnClick = Imprimir1Click
    end
    inherited btnCancelar: TAdvGlowButton
      Hint = 'Visualiza o Boleto Selecionado....'
      Caption = '&Visualizar'
      OnClick = Visualizar1Click
      Enabled = True
    end
    inherited btnExcluir: TAdvGlowButton
      Enabled = False
    end
    inherited btnLocalizar: TAdvGlowButton
      Enabled = False
    end
  end
  object PopupMenu1: TPopupMenu [2]
    Left = 473
    Top = 33
    object Visualizar1: TMenuItem
      Caption = 'Visualizar'
      OnClick = Visualizar1Click
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      OnClick = Imprimir1Click
    end
  end
  inherited MsgInformacao: TAdvSmoothMessageDialog
    Left = 248
    Top = 48
    TMSStyle = 0
  end
  inherited MsgAtencao: TAdvSmoothMessageDialog
    Left = 312
    TMSStyle = 0
  end
  inherited MsgErro: TAdvSmoothMessageDialog
    Left = 280
    TMSStyle = 0
  end
end
