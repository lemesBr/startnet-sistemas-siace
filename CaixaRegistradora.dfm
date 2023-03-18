object FormCaixaRegistradora: TFormCaixaRegistradora
  Left = 299
  Top = 68
  BorderStyle = bsDialog
  Caption = 'Faturamento (Caixa Registradora)'
  ClientHeight = 573
  ClientWidth = 865
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TsPanel
    Left = 0
    Top = 492
    Width = 865
    Height = 81
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 0
    object suiButton1: TAdvGlowButton
      Left = 8
      Top = 16
      Width = 193
      Height = 50
      Caption = '&Editar [Observa'#231#245'es/Entrega]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 1
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = suiButton1Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object suiButton3: TAdvGlowButton
      Left = 381
      Top = 16
      Width = 149
      Height = 51
      Caption = '&Confirmar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 4
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = suiButton3Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Enabled = False
    end
    object suiButton4: TAdvGlowButton
      Left = 207
      Top = 16
      Width = 168
      Height = 49
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 12
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = suiButton4Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Enabled = False
    end
    object suiButton5: TAdvGlowButton
      Left = 536
      Top = 16
      Width = 154
      Height = 50
      Caption = 'Receber Credi'#225'rio F9'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 17
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = suiButton5Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object suiButton2: TAdvGlowButton
      Left = 696
      Top = 16
      Width = 152
      Height = 50
      Caption = 'Faturar  Pedido F10'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 7
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = suiButton2Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Enabled = False
    end
  end
  object Panel3: TsPanel
    Left = 0
    Top = 235
    Width = 865
    Height = 257
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 1
    object Panel6: TsPanel
      Left = 2
      Top = 2
      Width = 861
      Height = 200
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 0
      object Bevel1: TBevel
        Left = 2
        Top = 1
        Width = 842
        Height = 48
      end
      object RxLabel5: TRxLabel
        Left = 596
        Top = 26
        Width = 97
        Height = 13
        Caption = 'Valor Total a Pagar:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object RxLabel6: TRxLabel
        Left = 6
        Top = 26
        Width = 105
        Height = 13
        Caption = 'Valor Total dos Itens:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object RxLabel7: TRxLabel
        Left = 313
        Top = 26
        Width = 93
        Height = 13
        Caption = 'Valor do Desconto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object RxLabel2: TRxLabel
        Left = 273
        Top = 47
        Width = 467
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'Itens do Pr'#233' - Venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BatmanForeverAlternate'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object RxLabel3: TRxLabel
        Left = 273
        Top = 3
        Width = 261
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Detalhes da Pr'#233' - venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BatmanForeverAlternate'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object RxLabel4: TRxLabel
        Left = 1
        Top = 48
        Width = 264
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'Codi'#231#245'es de Pagamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BatmanForeverAlternate'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object suiDBEdit1: TsDBEdit
        Left = 416
        Top = 24
        Width = 140
        Height = 20
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'VALOR_DESCONTO'
        DataSource = DTS_PedidosA
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
      object suiDBEdit2: TsDBEdit
        Left = 125
        Top = 24
        Width = 132
        Height = 20
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'VALOR_ITENS'
        DataSource = DTS_PedidosA
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
      object suiDBEdit4: TsDBEdit
        Left = 699
        Top = 24
        Width = 132
        Height = 20
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'VALOR_TOTAL'
        DataSource = DTS_PedidosA
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
      object Panel2: TsPanel
        Left = 272
        Top = 63
        Width = 574
        Height = 134
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15263976
        TabOrder = 3
        object suiDBGrid2: TsDBGrid
          Left = 2
          Top = 2
          Width = 570
          Height = 130
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          DataSource = DTS_ItensPA
          FixedColor = 15717318
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          SkinData.SkinSection = 'EDIT'
          Columns = <
            item
              Expanded = False
              FieldName = 'DESCRICAO_PRODUTO'
              Title.Caption = 'Descri'#231#227'o do Produto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 228
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QUANTIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'Qnt.'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_UNITARIO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor Unit'#225'rio'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENC_FINANCEIRO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Enc. Finan.'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Desconto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_TOTAL'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor Total'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 72
              Visible = True
            end>
        end
      end
      object sPanel1: TsPanel
        Left = 0
        Top = 64
        Width = 270
        Height = 134
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15263976
        TabOrder = 4
        object sDBGrid1: TsDBGrid
          Left = 2
          Top = 2
          Width = 266
          Height = 130
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          DataSource = DTS_COND_PAGTO
          FixedColor = 15717318
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          SkinData.SkinSection = 'EDIT'
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_FORMA'
              Title.Caption = 'Cod.'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESC_FORMA'
              Title.Caption = 'Forma Pagto'
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'Valor'
              Width = 91
              Visible = True
            end>
        end
      end
    end
    object Panel8: TsPanel
      Left = 2
      Top = 202
      Width = 861
      Height = 53
      Align = alBottom
      BevelInner = bvRaised
      Color = 15263976
      Enabled = False
      TabOrder = 1
      object RxLabel9: TRxLabel
        Left = 133
        Top = 5
        Width = 81
        Height = 13
        Caption = 'Observa'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object RxLabel10: TRxLabel
        Left = 5
        Top = 5
        Width = 111
        Height = 13
        Caption = 'Data para Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBDateEdit1: TsDBDateEdit
        Left = 5
        Top = 20
        Width = 113
        Height = 21
        AutoSize = False
        MaxLength = 10
        TabOrder = 0
        OnEnter = DBDateEdit1Enter
        OnExit = DBDateEdit1Exit
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
        DataField = 'DATA_ENTREGA'
        DataSource = DTS_PedidosA
      end
      object DBEdit1: TsDBEdit
        Left = 133
        Top = 20
        Width = 713
        Height = 21
        Color = clWhite
        DataField = 'OBSERVACOES'
        DataSource = DTS_PedidosA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
    end
  end
  object Panel4: TsPanel
    Left = 0
    Top = 37
    Width = 865
    Height = 198
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 2
    object Panel9: TsPanel
      Left = 2
      Top = 2
      Width = 861
      Height = 194
      Align = alClient
      Caption = 'Panel9'
      Color = 15263976
      TabOrder = 0
      object suiDBGrid1: TsDBGrid
        Left = 1
        Top = 1
        Width = 859
        Height = 192
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DTS_PedidosA
        FixedColor = 15717318
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = suiDBGrid1DblClick
        SkinData.SkinSection = 'EDIT'
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero Vda'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Data da Venda'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 271
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Title.Alignment = taCenter
            Title.Caption = 'Vendedor'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_AVISTA'
            Title.Caption = 'Avista'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PRAZO'
            Title.Alignment = taCenter
            Title.Caption = 'Prazo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 102
            Visible = True
          end>
      end
    end
  end
  object Panel5: TsPanel
    Left = 0
    Top = 0
    Width = 865
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 3
    object RxLabel1: TRxLabel
      Left = 0
      Top = 15
      Width = 865
      Height = 22
      Align = alBottom
      AutoSize = False
      Caption = ' Pr'#233'-Vendas(s) a ser(em) Faturado(s)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ExplicitTop = 12
    end
    object suiDBNavigator1: TsDBNavigator
      Left = 552
      Top = 5
      Width = 310
      Height = 26
      SkinData.SkinSection = 'TOOLBAR'
      FullRepaint = False
      TabOrder = 0
      DataSource = DTS_PedidosA
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    end
  end
  object SDS_PedidosA: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'SELECT * FROM PREVENDA WHERE STATUS='#39'N'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 274
    object SDS_PedidosACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_PedidosAVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object SDS_PedidosAVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_PedidosAVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object SDS_PedidosAVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
    end
    object SDS_PedidosAUSUARIO: TStringField
      Alignment = taCenter
      FieldName = 'USUARIO'
    end
    object SDS_PedidosADATA_PEDIDO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_PEDIDO'
    end
    object SDS_PedidosADATA_ENTREGA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_ENTREGA'
    end
    object SDS_PedidosACODIGO_CLIENTE: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SDS_PedidosANOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SDS_PedidosAPAGAMENTO: TStringField
      Alignment = taCenter
      FieldName = 'PAGAMENTO'
    end
    object SDS_PedidosASTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object SDS_PedidosAENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
    end
    object SDS_PedidosATP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object SDS_PedidosAOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object SDS_PedidosAVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_PedidosAVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_PedidosASITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_PedidosAUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object SDS_PedidosACOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object SDS_PedidosACOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object SDS_PedidosAN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object SDS_PedidosAN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object SDS_PedidosACOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object SDS_PedidosAHORA: TTimeField
      FieldName = 'HORA'
    end
    object SDS_PedidosAVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosACOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object SDS_PedidosACOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object SDS_PedidosACOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object SDS_PedidosANUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object SDS_PedidosASERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object SDS_PedidosAENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 44
    end
    object SDS_PedidosACPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
      Size = 18
    end
    object SDS_PedidosARG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
    end
    object SDS_PedidosAFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object SDS_PedidosACIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SDS_PedidosABAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SDS_PedidosAN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Size = 15
    end
    object SDS_PedidosAPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Size = 70
    end
    object SDS_PedidosAQUANT_VENDIDA: TFMTBCDField
      FieldName = 'QUANT_VENDIDA'
      Precision = 15
    end
    object SDS_PedidosASALDO_VENDIDO: TFMTBCDField
      FieldName = 'SALDO_VENDIDO'
      Precision = 15
    end
    object SDS_PedidosAMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Size = 70
    end
    object SDS_PedidosADATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
    end
    object SDS_PedidosAUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SDS_PedidosACOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object SDS_PedidosACEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object SDS_PedidosANUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object SDS_PedidosATIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object SDS_PedidosAVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosAVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosAENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Size = 44
    end
    object SDS_PedidosATIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object SDS_PedidosAFECHADO: TStringField
      FieldName = 'FECHADO'
      Size = 5
    end
    object SDS_PedidosAMESA: TStringField
      FieldName = 'MESA'
      Size = 3
    end
    object SDS_PedidosAREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 70
    end
    object SDS_PedidosACELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object SDS_PedidosAPROD_RURAL: TStringField
      FieldName = 'PROD_RURAL'
      Size = 1
    end
    object SDS_PedidosAIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      FixedChar = True
    end
    object SDS_PedidosAVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosAVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosAKM: TIntegerField
      FieldName = 'KM'
    end
    object SDS_PedidosACHAVE_FP: TStringField
      FieldName = 'CHAVE_FP'
      Size = 100
    end
    object SDS_PedidosACHAVE_FP_CANCEL: TStringField
      FieldName = 'CHAVE_FP_CANCEL'
      Size = 30
    end
    object SDS_PedidosACUPON_CANCELADO: TStringField
      FieldName = 'CUPON_CANCELADO'
      Size = 1
    end
    object SDS_PedidosACRZ: TIntegerField
      FieldName = 'CRZ'
    end
    object SDS_PedidosACHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object SDS_PedidosAANO: TIntegerField
      FieldName = 'ANO'
    end
    object SDS_PedidosAMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object SDS_PedidosACFOP_NF: TStringField
      FieldName = 'CFOP_NF'
      Size = 4
    end
  end
  object SDS_PedidosA_itens: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select *  from PREVENDA_ITENS ORDER BY ITEN ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_PedidosA
    PacketRecords = 0
    Params = <>
    Left = 361
    object SDS_PedidosA_itensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_PedidosA_itensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object SDS_PedidosA_itensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object SDS_PedidosA_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object SDS_PedidosA_itensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
    end
    object SDS_PedidosA_itensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object SDS_PedidosA_itensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
    end
    object SDS_PedidosA_itensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_PedidosA_itensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
    end
    object SDS_PedidosA_itensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
    end
    object SDS_PedidosA_itensDEV: TStringField
      FieldName = 'DEV'
      FixedChar = True
      Size = 1
    end
    object SDS_PedidosA_itensQNT_DEV: TFMTBCDField
      FieldName = 'QNT_DEV'
      Precision = 15
    end
    object SDS_PedidosA_itensVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Precision = 15
    end
    object SDS_PedidosA_itensITEN: TIntegerField
      FieldName = 'ITEN'
    end
    object SDS_PedidosA_itensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object SDS_PedidosA_itensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object SDS_PedidosA_itensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_PedidosA_itensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object SDS_PedidosA_itensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_PedidosA_itensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object SDS_PedidosA_itensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object SDS_PedidosA_itensPERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensPERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensPERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensBASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensVL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_PedidosA_itensIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Size = 3
    end
    object SDS_PedidosA_itensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object SDS_PedidosA_itensID_BICO: TIntegerField
      FieldName = 'ID_BICO'
    end
    object SDS_PedidosA_itensID_TANQUE: TStringField
      FieldName = 'ID_TANQUE'
      Size = 5
    end
    object SDS_PedidosA_itensID_BOMBA: TStringField
      FieldName = 'ID_BOMBA'
      Size = 5
    end
    object SDS_PedidosA_itensBICO: TStringField
      FieldName = 'BICO'
      Size = 2
    end
  end
  object DTS_PedidosA: TDataSource
    DataSet = SDS_PedidosA
    Left = 303
  end
  object DTS_ItensPA: TDataSource
    DataSet = SDS_PedidosA_itens
    Left = 401
  end
  object SDS_Cheques: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select *  from CHEQUES order by CODIGO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_COMPRA'
        ParamType = ptInput
        Value = 109
      end>
    IndexFieldNames = 'CODIGO_COMPRA'
    MasterFields = 'CODIGO'
    MasterSource = DTS_PedidosA
    PacketRecords = 0
    Params = <>
    Left = 448
    Top = 2
    object SDS_ChequesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ChequesCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_ChequesBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_ChequesAGENCIA: TStringField
      Alignment = taCenter
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_ChequesCONTA_CORRENTE: TStringField
      Alignment = taCenter
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_ChequesCONTA_DESDE: TDateField
      Alignment = taCenter
      FieldName = 'CONTA_DESDE'
    end
    object SDS_ChequesTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_ChequesTIPO_CHEQUE: TStringField
      Alignment = taCenter
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_ChequesN_CHEQUE: TStringField
      Alignment = taCenter
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_ChequesQNT: TStringField
      Alignment = taCenter
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_ChequesVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
    end
    object SDS_ChequesCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_ChequesRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChequesRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChequesMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_ChequesDATA_CADASTRO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_ChequesDATA_DEPOSITO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_ChequesDATA_RETORNO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_RETORNO'
    end
    object SDS_ChequesDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_ChequesUSUARIO_CADASTRO: TStringField
      Alignment = taCenter
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_ChequesUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_ChequesCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_ChequesCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_ChequesNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object SDS_ChequesNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SDS_ChequesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object SDS_ChequesCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object SDS_ChequesCOD_BARRAS_CHEQUE: TStringField
      FieldName = 'COD_BARRAS_CHEQUE'
      Size = 50
    end
  end
  object DTS_Cheques: TDataSource
    DataSet = SDS_Cheques
    Left = 480
    Top = 2
  end
  object QRY_MOV_DIARIO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM MOVIMENTO_DIARIO')
    SQLConnection = DM.SQLC
    Left = 521
    Top = 57
    object QRY_MOV_DIARIOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QRY_MOV_DIARIODATA: TDateField
      FieldName = 'DATA'
    end
    object QRY_MOV_DIARIOHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object QRY_MOV_DIARIOUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object QRY_MOV_DIARIOTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object QRY_MOV_DIARIOVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      Precision = 15
      Size = 2
    end
    object QRY_MOV_DIARIOVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      Precision = 15
      Size = 2
    end
    object QRY_MOV_DIARIOCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object QRY_MOV_DIARIONUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object QRY_MOV_DIARIOCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
  end
  object DSP_MOV_DIARIO: TDataSetProvider
    DataSet = QRY_MOV_DIARIO
    Left = 561
    Top = 49
  end
  object CDS_MOV_DIARIO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_MOV_DIARIO'
    Left = 602
    Top = 57
    object CDS_MOV_DIARIOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_MOV_DIARIODATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_MOV_DIARIOHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object CDS_MOV_DIARIOUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object CDS_MOV_DIARIOTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object CDS_MOV_DIARIOVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      Precision = 15
      Size = 2
    end
    object CDS_MOV_DIARIOVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      Precision = 15
      Size = 2
    end
    object CDS_MOV_DIARIOCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object CDS_MOV_DIARIONUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object CDS_MOV_DIARIOCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
  end
  object DTS_MOV_DIARIO: TDataSource
    DataSet = CDS_MOV_DIARIO
    Left = 625
    Top = 105
  end
  object Timer1: TTimer
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 338
    Top = 143
  end
  object SDS_COND_PAGTO: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.GetMetadata = True
    DataSet.CommandText = 
      'select *  from  V_PREVENDA_FORMAS_PAGAMENTO  ORDER BY COD_FORMA ' +
      'ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'COD_VENDA'
    MasterFields = 'CODIGO'
    MasterSource = DTS_PedidosA
    PacketRecords = 0
    Params = <>
    Left = 361
    Top = 72
    object SDS_COND_PAGTOCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object SDS_COND_PAGTOCOD_FORMA: TIntegerField
      FieldName = 'COD_FORMA'
    end
    object SDS_COND_PAGTOVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_COND_PAGTOTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object SDS_COND_PAGTODESC_FORMA: TStringField
      FieldName = 'DESC_FORMA'
      Size = 40
    end
  end
  object DTS_COND_PAGTO: TDataSource
    DataSet = SDS_COND_PAGTO
    Left = 401
    Top = 72
  end
end
