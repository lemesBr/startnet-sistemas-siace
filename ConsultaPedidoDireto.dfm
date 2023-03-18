object FormConsultaPedidoDireto: TFormConsultaPedidoDireto
  Left = 257
  Top = 132
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consulta Vendas'
  ClientHeight = 579
  ClientWidth = 940
  Color = 15263976
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = but
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 312
    Top = 208
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 6
  end
  object Panel: TAdvPanel
    Left = 0
    Top = 528
    Width = 940
    Height = 51
    Align = alBottom
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    DesignSize = (
      940
      51)
    FullHeight = 41
    object BitBtn3: TAdvGlowButton
      Left = 1018
      Top = 0
      Width = 22
      Height = 21
      Anchors = [akTop, akRight]
      Caption = 'BitBtn3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
      Top = 4
      Width = 104
      Height = 43
      Hint = 'Reimprimir F8'
      Caption = '&Reimprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 26
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 1
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
    end
    object suiButton5: TAdvGlowButton
      Left = 291
      Top = 6
      Width = 110
      Height = 33
      Caption = '&Lan'#231'ar NF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 2
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
    object suiButton4: TAdvGlowButton
      Left = 5
      Top = 1
      Width = 122
      Height = 43
      Hint = 'Exporta para a Venda'
      Caption = 'Exp. P/ Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 17
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
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
    end
    object suiButton3: TAdvGlowButton
      Left = 821
      Top = 4
      Width = 109
      Height = 43
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 8
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 4
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
    end
    object excluir: TAdvGlowButton
      Left = 152
      Top = 2
      Width = 110
      Height = 43
      Hint = 'Excluir a Venda'
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 3
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = excluirClick
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
    object suiButton6: TAdvGlowButton
      Left = 560
      Top = 4
      Width = 115
      Height = 43
      Caption = 'Gerar NF-e'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 18
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 6
      OnClick = suiButton6Click
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
    object suiButton8: TAdvGlowButton
      Left = 291
      Top = 4
      Width = 110
      Height = 43
      Hint = 'Cancelamento Farm'#225'cia Popular'
      Caption = 'Cancela FP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 12
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = suiButton8Click
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
    object suiButton9: TAdvGlowButton
      Left = 427
      Top = 4
      Width = 110
      Height = 43
      Caption = '&Gerar NFC-e'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 25
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 8
      OnClick = suiButton9Click
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
  end
  object Panel4: TAdvPanel
    Left = 0
    Top = 336
    Width = 940
    Height = 192
    Align = alClient
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseDockManager = True
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 153
    object suiDBGrid2: TXDBGrid
      Left = 0
      Top = 0
      Width = 940
      Height = 192
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DM.dts_vendas_itens
      FixedColor = 15717318
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GridStyle.VisualStyle = vsXPStyle
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = suiDBGrid2DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'ITEN'
          Title.Caption = 'Item'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Title.Caption = 'Ref/C'#243'd. Fab.;'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo EAN'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 107
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO_PRODUTO'
          Title.Caption = 'Descri'#231#227'o do Produto'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 200
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Qnt'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 43
        end
        item
          Expanded = False
          FieldName = 'PRECO_UNITARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Unit'#225'rio'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 87
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Title.Alignment = taCenter
          Title.Caption = 'Desconto'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 80
        end
        item
          Expanded = False
          FieldName = 'PRECO_TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 81
        end
        item
          Expanded = False
          FieldName = 'QNT_DEV'
          Title.Caption = 'Qtde Dev.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 67
        end
        item
          Expanded = False
          FieldName = 'CODIGO_PROD'
          Title.Caption = 'C'#243'd. Prod'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMISSAO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEV'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VAL_DEV'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENC_FINANCEIRO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDADE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SIT_TRIBUTARIA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENDEDOR'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FRACAO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_NCM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_SERV'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERC_ISS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASE_ISS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_ISS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERC_ICM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASE_ICMS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_ICM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERC_IPI'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASE_IPI'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_IPI'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERC_COFINS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASE_COFINS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_COFINS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERC_ICMS_SUBST'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASE_ICMS_SUBST'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_ICMS_SUBST'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERC_PIS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASE_PIS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_PIS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_BICO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_TANQUE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_BOMBA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BICO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object Edit6: TEdit
      Left = 328
      Top = 70
      Width = 121
      Height = 21
      TabOrder = 1
      Visible = False
    end
    object Edit5: TEdit
      Left = 344
      Top = 94
      Width = 121
      Height = 21
      TabOrder = 2
      Visible = False
      OnChange = Edit5Change
    end
  end
  object Panel8: TAdvPanel
    Left = 0
    Top = 236
    Width = 940
    Height = 100
    Align = alTop
    BevelOuter = bvNone
    Color = 16445929
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UseDockManager = True
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 76
    object RxLabel41: TRxLabel
      Left = 2
      Top = 35
      Width = 80
      Height = 13
      Caption = 'Q.de Vendas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object l_total: TRxLabel
      Left = 484
      Top = 6
      Width = 141
      Height = 13
      Caption = 'Soma Total das Vendas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel44: TRxLabel
      Left = 338
      Top = 36
      Width = 75
      Height = 13
      Caption = 'Valor Avista:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel45: TRxLabel
      Left = 663
      Top = 38
      Width = 83
      Height = 13
      Caption = 'Valor a Prazo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object L_prazo: TRxLabel
      Left = 215
      Top = 7
      Width = 83
      Height = 13
      Caption = 'Total a Prazo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object L_avista: TRxLabel
      Left = 3
      Top = 6
      Width = 75
      Height = 13
      Caption = 'Total Avista:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel9: TRxLabel
      Left = 4
      Top = 60
      Width = 29
      Height = 13
      Caption = 'Obs:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel11: TAdvPanel
      Left = 0
      Top = 80
      Width = 940
      Height = 20
      Align = alBottom
      BevelInner = bvRaised
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.5.8.0'
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = []
      Caption.Indent = 0
      DoubleBuffered = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Text = ''
      FullHeight = 20
      object Label9: TLabel
        Left = 2
        Top = 2
        Width = 936
        Height = 16
        Align = alClient
        Alignment = taCenter
        Caption = 'ITENS DA VENDA'
        Color = clMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 105
        ExplicitHeight = 13
      end
    end
    object suiDBEdit43: TDBEdit
      Left = 427
      Top = 32
      Width = 113
      Height = 23
      TabStop = False
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'VALOR_AVISTA'
      DataSource = DM.Dts_vendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object suiDBEdit44: TDBEdit
      Left = 773
      Top = 33
      Width = 150
      Height = 24
      TabStop = False
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'VALOR_PRAZO'
      DataSource = DM.Dts_vendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object edCod: TEdit
      Left = 588
      Top = 27
      Width = 65
      Height = 21
      Cursor = crIBeam
      TabOrder = 3
      Visible = False
    end
    object v_PRAZO: TRxCalcEdit
      Left = 304
      Top = 2
      Width = 111
      Height = 21
      AutoSize = False
      BorderStyle = bsNone
      DisplayFormat = 'R$###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentColor = True
      ParentFont = False
      TabOrder = 4
    end
    object v_TOTAL: TRxCalcEdit
      Left = 778
      Top = 2
      Width = 147
      Height = 21
      AutoSize = False
      BorderStyle = bsNone
      DisplayFormat = 'R$###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentColor = True
      ParentFont = False
      TabOrder = 5
    end
    object v_AVISTA: TRxCalcEdit
      Left = 89
      Top = 2
      Width = 111
      Height = 21
      AutoSize = False
      BorderStyle = bsNone
      DisplayFormat = 'R$###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentColor = True
      ParentFont = False
      TabOrder = 6
    end
    object q_VENDAS: TRxCalcEdit
      Left = 89
      Top = 32
      Width = 111
      Height = 21
      AutoSize = False
      BorderStyle = bsNone
      DisplayFormat = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentColor = True
      ParentFont = False
      TabOrder = 7
    end
    object suiDBEdit10: TDBEdit
      Left = 90
      Top = 59
      Width = 711
      Height = 19
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'OBSERVACOES'
      DataSource = DM.Dts_vendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
  end
  object Panel9: TAdvPanel
    Left = 0
    Top = 105
    Width = 940
    Height = 131
    Align = alTop
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    UseDockManager = True
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 131
    object suiDBGrid1: TXDBGrid
      Left = 0
      Top = 0
      Width = 940
      Height = 120
      Align = alTop
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DM.Dts_vendas
      FixedColor = 15717318
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GridStyle.VisualStyle = vsXPStyle
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnCellClick = suiDBGrid1CellClick
      OnDblClick = suiDBGrid1DblClick
      OnDrawColumnCell = suiDBGrid1DrawColumnCell
      OnEnter = suiDBGrid1Enter
      OnKeyDown = suiDBGrid1KeyDown
      OnKeyPress = suiDBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CHEK_BOX'
          Title.Caption = '#'
          Visible = True
          Width = 20
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Venda'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 74
        end
        item
          Expanded = False
          FieldName = 'DATA_PEDIDO'
          Title.Alignment = taCenter
          Title.Caption = 'Data Vda'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 73
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
          Visible = True
          Width = 201
        end
        item
          Expanded = False
          FieldName = 'N_CUPOM'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Cupom'
          Visible = True
          Width = 67
        end
        item
          Expanded = False
          FieldName = 'N_ECF'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' ECF'
          Visible = True
          Width = 53
        end
        item
          Expanded = False
          FieldName = 'NUM_NOTA'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota'
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
          Visible = True
          Width = 78
        end
        item
          Expanded = False
          FieldName = 'VALOR_ITENS'
          Title.Caption = 'Valor T. Itens'
          Visible = True
          Width = 91
        end
        item
          Expanded = False
          FieldName = 'VALOR_ACRESCIMOS'
          Title.Caption = 'Acr'#233'scimos'
          Visible = True
          Width = 75
        end
        item
          Expanded = False
          FieldName = 'VALOR_DESCONTO'
          Title.Caption = 'Desconto'
          Visible = True
          Width = 91
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Valor Total'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 78
        end
        item
          Expanded = False
          FieldName = 'CHAVE_FP'
          Title.Caption = 'Chave FP'
          Visible = True
          Width = 186
        end
        item
          Expanded = False
          FieldName = 'KM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_AVISTA'
          Title.Caption = 'Avista'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_PRAZO'
          Title.Caption = 'A Prazo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_PAGO'
          Title.Caption = 'Pago'
          Visible = True
        end>
    end
    object Edit3: TEdit
      Left = 553
      Top = 84
      Width = 97
      Height = 21
      Enabled = False
      TabOrder = 1
      Visible = False
    end
  end
  object pnpesq: TAdvPanel
    Left = 0
    Top = 0
    Width = 940
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    UseDockManager = True
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 82
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 940
      Height = 105
      Align = alClient
      ExplicitWidth = 815
    end
    object Label2: TLabel
      Left = 9
      Top = 55
      Width = 56
      Height = 13
      Caption = 'Data Inicial:'
      Transparent = True
    end
    object Label4: TLabel
      Left = 248
      Top = 55
      Width = 51
      Height = 13
      Caption = 'Data Final:'
      Transparent = True
    end
    object Label3: TLabel
      Left = 646
      Top = 16
      Width = 34
      Height = 13
      Caption = 'Venda:'
      Transparent = True
    end
    object Label5: TLabel
      Left = 628
      Top = 58
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
      Transparent = True
    end
    object Label1: TLabel
      Left = 35
      Top = 15
      Width = 35
      Height = 13
      Caption = 'Cliente:'
      Transparent = True
    end
    object Label6: TLabel
      Left = 500
      Top = 58
      Width = 77
      Height = 13
      Caption = 'Lan'#231'ar N'#186' Nota:'
      Transparent = True
    end
    object DateEdit1: TDateEdit
      Left = 80
      Top = 52
      Width = 100
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
    end
    object DateEdit2: TDateEdit
      Left = 318
      Top = 53
      Width = 100
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnEnter = DateEdit2Enter
      OnExit = DateEdit2Exit
    end
    object suiButton1: TAdvGlowButton
      Left = 823
      Top = 16
      Width = 100
      Height = 33
      Hint = 'Consultar Vendas'
      Caption = '&Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 20
      Images = FormPrincipal.sAlphaImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
    object Edit1: TEdit
      Left = 184
      Top = 13
      Width = 432
      Height = 21
      Color = clMenu
      Enabled = False
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 692
      Top = 11
      Width = 109
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = Edit2KeyPress
    end
    object Cliente: TComboEdit
      Left = 81
      Top = 12
      Width = 100
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      Text = ''
      OnButtonClick = ClienteButtonClick
      OnChange = ClienteChange
      OnExit = ClienteExit
      OnKeyPress = ClienteKeyPress
    end
    object suiButton7: TAdvGlowButton
      Left = 823
      Top = 52
      Width = 100
      Height = 34
      Hint = 'Limpar Campos da Consulta'
      Caption = '&Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -10
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 16
      Images = FormPrincipal.sAlphaImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = suiButton7Click
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
    object Edit4: TEdit
      Left = 692
      Top = 53
      Width = 109
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyPress = Edit4KeyPress
    end
    object suiNOTA: TAdvGlowButton
      Left = 583
      Top = 48
      Width = 33
      Height = 28
      Hint = 'Lan'#231'ar Dados da Nota Mod 01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = suiNOTAClick
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
    object CheckBox1: TCheckBox
      Left = 168
      Top = 80
      Width = 113
      Height = 17
      Caption = 'Com Nota Emitida'
      TabOrder = 9
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 24
      Top = 80
      Width = 97
      Height = 17
      Caption = 'Todos'
      Checked = True
      State = cbChecked
      TabOrder = 10
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 320
      Top = 80
      Width = 113
      Height = 17
      Caption = 'Sem Nota Emitida'
      TabOrder = 11
      OnClick = CheckBox3Click
    end
  end
  object mFormas: TMemo
    Left = 15
    Top = 125
    Width = 153
    Height = 44
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 5
    Visible = False
  end
  object Panel3: TAdvPanel
    Left = 215
    Top = 98
    Width = 522
    Height = 159
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    UseDockManager = True
    Visible = False
    Version = '2.5.8.0'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 161
    object GroupBox4: TsGroupBox
      Left = 0
      Top = 0
      Width = 522
      Height = 159
      Align = alClient
      BiDiMode = bdLeftToRight
      Caption = 'Dados da Nota Fiscal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        522
        159)
      object RxLabel22: TsLabel
        Left = 8
        Top = 16
        Width = 45
        Height = 13
        Caption = 'N'#186' Nota:'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
      end
      object RxLabel23: TsLabel
        Left = 8
        Top = 56
        Width = 28
        Height = 13
        Caption = 'Cfop:'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
      end
      object RxLabel24: TsLabel
        Left = 104
        Top = 16
        Width = 44
        Height = 13
        Caption = 'Modelo:'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
      end
      object DBEdit2: TsDBEdit
        Left = 8
        Top = 32
        Width = 108
        Height = 21
        TabStop = False
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataField = 'NUM_NOTA'
        DataSource = DM.Dts_vendas
        TabOrder = 0
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
      object RzDBButtonEdit1: TRzDBButtonEdit
        Left = 8
        Top = 72
        Width = 86
        Height = 21
        DataSource = DM.Dts_vendas
        DataField = 'CFOP_NF'
        CharCase = ecUpperCase
        TabOrder = 2
        OnExit = RzDBButtonEdit1Exit
        OnKeyPress = RzDBButtonEdit1KeyPress
        AltBtnGlyph.Data = {
          FE040000424DFE040000000000003604000028000000140000000A0000000100
          080000000000C8000000320B0000320B00000001000000000000000000003300
          00006600000099000000CC000000FF0000000033000033330000663300009933
          0000CC330000FF33000000660000336600006666000099660000CC660000FF66
          000000990000339900006699000099990000CC990000FF99000000CC000033CC
          000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
          0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
          330000333300333333006633330099333300CC333300FF333300006633003366
          33006666330099663300CC663300FF6633000099330033993300669933009999
          3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
          330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
          66006600660099006600CC006600FF0066000033660033336600663366009933
          6600CC336600FF33660000666600336666006666660099666600CC666600FF66
          660000996600339966006699660099996600CC996600FF99660000CC660033CC
          660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
          6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
          990000339900333399006633990099339900CC339900FF339900006699003366
          99006666990099669900CC669900FF6699000099990033999900669999009999
          9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
          990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
          CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
          CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
          CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
          CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
          CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
          FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
          FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
          FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
          FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
          000000808000800000008000800080800000C0C0C00080808000191919004C4C
          4C00B2B2B200E5E5E5005A1E1E00783C3C0096646400C8969600FFC8C800465F
          82005591B9006EB9D7008CD2E600B4E6F000D8E9EC0099A8AC00646F7100E2EF
          F100C56A31000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000232323232323
          2323232323232323232323232323232323232323232323232323232323232323
          2323232323232323232323232323232323232323232323232323232323232323
          2323232323232323232323E10023E10023E100232381D72381D72381D7232381
          E12381E12381E123238181238181238181232323232323232323232323232323
          2323232323232323232323232323232323232323232323232323232323232323
          2323232323232323232323232323232323232323232323232323232323232323
          2323}
        AltBtnKind = bkCustom
        AltBtnShortCut = 122
        AltBtnWidth = 15
        ButtonWidth = 15
        OnButtonClick = RzDBButtonEdit1ButtonClick
      end
      object Ok: TAdvGlowButton
        Left = 160
        Top = 112
        Width = 97
        Height = 25
        Caption = '&Ok'
        ImageIndex = 11
        Images = FormPrincipal.sAlphaImageList3
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        OnClick = OkClick
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
      object sEdit1: TsEdit
        Left = 96
        Top = 72
        Width = 369
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 4
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
      object sEdit2: TsEdit
        Left = 168
        Top = 32
        Width = 297
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 5
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
      object EvDBEditBtn1: TRzDBButtonEdit
        Left = 106
        Top = 32
        Width = 61
        Height = 21
        Hint = 
          'Modelos:'#13#10'01 - Notas Fiscais Antigas'#13#10'06 - Contas de Energia'#13#10'22' +
          ' - Contas telefonicas'#13#10'55 - NF-e'#13#10'57 - CT-e'
        DataSource = DM.Dts_vendas
        DataField = 'MODELO_NF'
        CharCase = ecUpperCase
        TabOrder = 1
        OnEnter = EvDBEditBtn1Enter
        OnExit = EvDBEditBtn1Exit
        AltBtnGlyph.Data = {
          FE040000424DFE040000000000003604000028000000140000000A0000000100
          080000000000C8000000320B0000320B00000001000000000000000000003300
          00006600000099000000CC000000FF0000000033000033330000663300009933
          0000CC330000FF33000000660000336600006666000099660000CC660000FF66
          000000990000339900006699000099990000CC990000FF99000000CC000033CC
          000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
          0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
          330000333300333333006633330099333300CC333300FF333300006633003366
          33006666330099663300CC663300FF6633000099330033993300669933009999
          3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
          330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
          66006600660099006600CC006600FF0066000033660033336600663366009933
          6600CC336600FF33660000666600336666006666660099666600CC666600FF66
          660000996600339966006699660099996600CC996600FF99660000CC660033CC
          660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
          6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
          990000339900333399006633990099339900CC339900FF339900006699003366
          99006666990099669900CC669900FF6699000099990033999900669999009999
          9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
          990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
          CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
          CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
          CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
          CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
          CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
          FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
          FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
          FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
          FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
          000000808000800000008000800080800000C0C0C00080808000191919004C4C
          4C00B2B2B200E5E5E5005A1E1E00783C3C0096646400C8969600FFC8C800465F
          82005591B9006EB9D7008CD2E600B4E6F000D8E9EC0099A8AC00646F7100E2EF
          F100C56A31000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000232323232323
          2323232323232323232323232323232323232323232323232323232323232323
          2323232323232323232323232323232323232323232323232323232323232323
          2323232323232323232323E10023E10023E100232381D72381D72381D7232381
          E12381E12381E123238181238181238181232323232323232323232323232323
          2323232323232323232323232323232323232323232323232323232323232323
          2323232323232323232323232323232323232323232323232323232323232323
          2323}
        AltBtnKind = bkCustom
        AltBtnShortCut = 122
        AltBtnWidth = 15
        ButtonWidth = 15
        OnButtonClick = EvDBEditBtn1ButtonClick
      end
      object sBitBtn1: TAdvGlowButton
        Left = 272
        Top = 112
        Width = 105
        Height = 25
        Caption = '&Cancelar'
        ImageIndex = 2
        Images = FormPrincipal.sAlphaImageList3
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 6
        OnClick = sBitBtn1Click
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
    end
  end
  object MSG_NR: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Aten'#231#227'o !!!'
    UIStyle = WinXP
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiWarning
    Text = 'Nenhum Registro Foi Localizado !!!'
    Left = 684
    Top = 132
  end
  object MSG_ERRO: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
    UIStyle = WinXP
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiStop
    Text = 'Erro na Consulta'
    Left = 715
    Top = 132
  end
  object SPC_N_CUPOM: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMEROCUMPOM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMEROECF'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CUPOM_FISCAL'
    Left = 369
  end
  object RDprint1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.MostrarSETUP = True
    OpcoesPreview.Remalina = True
    OpcoesPreview.CaptionPreview = 'Pr'#233' Visualiza'#231#227'o da Venda'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    OpcoesPreview.ExtraBtnStatus = Invisivel
    OpcoesPreview.ExtraBtnWidth = 80
    OpcoesPreview.ExtraBtnCaption = 'Extra Btn'
    Margens.Left = 10
    Margens.Right = 3
    Margens.Top = 0
    Margens.Bottom = 3
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'STARTNET PROVEDOR'
    RegistroUsuario.SerieProduto = 'SITE 7.0 - 2241/0722 (DX104)'
    RegistroUsuario.AutorizacaoKey = 'MG3VT-Y2EA8-TW1F6-D7VUY-XNKH5-D1HWC-FT6NO'
    About = 'RDprint 7.0a'
    Acentuacao = Transliterate
    CaptionSetup = 'Configura'#231#227'o da Impressao'
    TitulodoRelatorio = 'Venda'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox PFDr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    MostrarProgresso = True
    TamanhoQteLinhas = 44
    TamanhoQteColunas = 80
    TamanhoQteLPP = Oito
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    FonteGrafica = sCourierNew
    ReduzParaCaber = True
    Left = 395
    Top = 368
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 170
    object AlteradadosdoCliente1: TMenuItem
      Caption = 'Altera dados do Cliente'
      OnClick = AlteradadosdoCliente1Click
    end
    object Action11: TMenuItem
      Caption = 'Marcar Todos'
      OnClick = Action11Click
    end
    object D1: TMenuItem
      Caption = 'Desmarcar Todos'
      OnClick = D1Click
    end
    object I1: TMenuItem
      Caption = 'Inverter Sele'#231#227'o'
      OnClick = I1Click
    end
  end
  object qrCupom: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      '   INSERT INTO CUPOM ('
      '    COMANDO,'
      '    NUMERO,'
      '    DESCONTO,'
      '    ACRESCIMO,'
      '    DINHEIRO,'
      '    CHEQUEAV,'
      '    CHEQUEAP,'
      '    CARTAOCRED,'
      '    CARTAODEB,'
      '    PROMISSORIA,'
      '    CLIENTE,'
      '    ENDERECO,'
      '    CIDADE,'
      '    CPF,'
      '    CONVENIO,'
      '    VENDEDOR,'
      '    SEQUENCIA,'
      '    RG_IE,'
      '    PRODUTOR_RURAL)'
      '  VALUES ('
      '    :COMANDO,'
      '    :NUMERO,'
      '    :DESCONTO,'
      '    :ACRESCIMO,'
      '    :DINHEIRO,'
      '    :CHEQUEAV,'
      '    :CHEQUEAP,'
      '    :CARTAOCRED,'
      '    :CARTAODEB,'
      '    :PROMISSORIA,'
      '    :CLIENTE,'
      '    :ENDERECO,'
      '    :CIDADE,'
      '    :CPF,'
      '    :CONVENIO,'
      '    :VENDEDOR,'
      '    :SEQUENCIA,'
      '    :RG_IE,'
      '    :PRODUTOR_RURAL);')
    Left = 560
    Top = 180
    ParamData = <
      item
        Name = 'COMANDO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'NUMERO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DESCONTO'
        DataType = ftBCD
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'ACRESCIMO'
        DataType = ftBCD
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'DINHEIRO'
        DataType = ftBCD
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'CHEQUEAV'
        DataType = ftBCD
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'CHEQUEAP'
        DataType = ftBCD
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'CARTAOCRED'
        DataType = ftBCD
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'CARTAODEB'
        DataType = ftBCD
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'PROMISSORIA'
        DataType = ftBCD
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'CLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'CPF'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'CONVENIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'VENDEDOR'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'SEQUENCIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'RG_IE'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'PRODUTOR_RURAL'
        DataType = ftString
        ParamType = ptInput
        Size = 70
      end>
  end
  object qrCupom_item: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      ' INSERT INTO CUPOM_ITEM ('
      '    NUMERO,'
      '    CODPRODUTO,'
      '    PRODUTO,'
      '    UNIDADE,'
      '    QTDE,'
      '    VALOR,'
      '    TOTAL,'
      '    DESCONTO,'
      '    ACRESCIMO,'
      '    ALIQUOTA)'
      '  VALUES ('
      '    :NUMERO,'
      '    :CODPRODUTO,'
      '    :PRODUTO,'
      '    :UNIDADE,'
      '    :QTDE,'
      '    :VALOR,'
      '    :TOTAL,'
      '    :DESCONTO,'
      '    :ACRESCIMO,'
      '    :ALIQUOTA);')
    Left = 472
    Top = 172
    ParamData = <
      item
        Name = 'NUMERO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODPRODUTO'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Name = 'PRODUTO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Name = 'QTDE'
        DataType = ftBCD
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'VALOR'
        DataType = ftBCD
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'TOTAL'
        DataType = ftBCD
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'DESCONTO'
        DataType = ftBCD
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'ACRESCIMO'
        DataType = ftBCD
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'ALIQUOTA'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end>
  end
  object qrecf_comando: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from CUPOM'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 596
    Top = 110
    object qrecf_comandoCOMANDO: TStringField
      FieldName = 'COMANDO'
      Size = 30
    end
    object qrecf_comandoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Required = True
    end
    object qrecf_comandoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object qrecf_comandoACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Precision = 15
      Size = 2
    end
    object qrecf_comandoDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Precision = 15
      Size = 2
    end
    object qrecf_comandoCHEQUEAV: TFMTBCDField
      FieldName = 'CHEQUEAV'
      Precision = 15
      Size = 2
    end
    object qrecf_comandoCHEQUEAP: TFMTBCDField
      FieldName = 'CHEQUEAP'
      Precision = 15
      Size = 2
    end
    object qrecf_comandoCARTAOCRED: TFMTBCDField
      FieldName = 'CARTAOCRED'
      Precision = 15
      Size = 2
    end
    object qrecf_comandoCARTAODEB: TFMTBCDField
      FieldName = 'CARTAODEB'
      Precision = 15
      Size = 2
    end
    object qrecf_comandoPROMISSORIA: TFMTBCDField
      FieldName = 'PROMISSORIA'
      Precision = 15
      Size = 2
    end
    object qrecf_comandoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object qrecf_comandoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object qrecf_comandoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object qrecf_comandoCPF: TStringField
      FieldName = 'CPF'
      Size = 50
    end
    object qrecf_comandoCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 50
    end
    object qrecf_comandoVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object qrecf_comandoSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object qrecf_comandoRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 30
    end
    object qrecf_comandoPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 70
    end
  end
  object SPC_N_NFE: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'COD_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'NUMERONFE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 3
        Name = 'SERIENFE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'COD_EMP'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_NFE'
    Left = 449
  end
  object q_Cred_Rec: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from  CREDIARIO_RECEBIDO where COD_COMPRA =:COMPRA ')
    Left = 280
    Top = 204
    ParamData = <
      item
        Name = 'COMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscaItens: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM SP_BUSCAITENS (:CODPRO, :COD_VEN, :ITEM);')
    Left = 416
    Top = 136
    ParamData = <
      item
        Name = 'CODPRO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'Cod_Ven'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ITEM'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object QBuscaItensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'CODIGO_ID'
    end
    object QBuscaItensITEN: TIntegerField
      FieldName = 'ITEN'
      Origin = 'ITEN'
    end
    object QBuscaItensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Origin = 'CODIGO_PROD'
    end
    object QBuscaItensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
      Size = 13
    end
    object QBuscaItensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 70
    end
    object QBuscaItensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Origin = 'PRECO_UNITARIO'
      Precision = 18
      Size = 5
    end
    object QBuscaItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object QBuscaItensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      Origin = 'PRECO_TOTAL'
      Precision = 18
      Size = 2
    end
    object QBuscaItensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensDEV: TStringField
      FieldName = 'DEV'
      Origin = 'DEV'
      FixedChar = True
      Size = 1
    end
    object QBuscaItensQNT_DEV: TBCDField
      FieldName = 'QNT_DEV'
      Origin = 'QNT_DEV'
      Precision = 18
    end
    object QBuscaItensVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Origin = 'VAL_DEV'
      Precision = 18
      Size = 2
    end
    object QBuscaItensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'ENC_FINANCEIRO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object QBuscaItensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object QBuscaItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
    object QBuscaItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object QBuscaItensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Origin = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object QBuscaItensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      Size = 1
    end
    object QBuscaItensPERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Origin = 'PERC_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Origin = 'BASE_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Origin = 'VL_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Origin = 'PERC_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Origin = 'VL_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PERC_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Origin = 'PERC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'BASE_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Origin = 'VL_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PERC_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      Size = 3
    end
    object QBuscaItensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object QBuscaItensID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Origin = 'ID_BICO'
    end
    object QBuscaItensID_TANQUE: TStringField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Size = 5
    end
    object QBuscaItensID_BOMBA: TStringField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      Size = 5
    end
    object QBuscaItensBICO: TStringField
      FieldName = 'BICO'
      Origin = 'BICO'
      Size = 2
    end
    object QBuscaItensICMS: TFMTBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensCOD_ANP: TStringField
      FieldName = 'COD_ANP'
      Origin = 'COD_ANP'
      Size = 9
    end
    object QBuscaItensCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Size = 1
    end
    object QBuscaItensAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 500
    end
    object QBuscaItensIPI_IRPJ: TFMTBCDField
      FieldName = 'IPI_IRPJ'
      Origin = 'IPI_IRPJ'
      Precision = 18
      Size = 2
    end
    object QBuscaItensOUTROS_IMPOSTOS: TFMTBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'OUTROS_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 8
    end
    object QBuscaItensQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
      Origin = 'QTD_CAIXA'
    end
    object QBuscaItensUND_TRIB: TStringField
      FieldName = 'UND_TRIB'
      Origin = 'UND_TRIB'
      Size = 3
    end
    object QBuscaItensML_QUANT_BEB: TFMTBCDField
      FieldName = 'ML_QUANT_BEB'
      Origin = 'ML_QUANT_BEB'
      Precision = 18
      Size = 3
    end
    object QBuscaItensSIT_COFINS_VENDA_EST: TStringField
      FieldName = 'SIT_COFINS_VENDA_EST'
      Origin = 'SIT_COFINS_VENDA_EST'
      Size = 2
    end
    object QBuscaItensSIT_PIS_VENDA_INTER_EST: TStringField
      FieldName = 'SIT_PIS_VENDA_INTER_EST'
      Origin = 'SIT_PIS_VENDA_INTER_EST'
      Size = 2
    end
    object QBuscaItensSIT_COFINS_VENDA_INTER_EST: TStringField
      FieldName = 'SIT_COFINS_VENDA_INTER_EST'
      Origin = 'SIT_COFINS_VENDA_INTER_EST'
      Size = 2
    end
    object QBuscaItensSIT_PIS_VENDA_EST: TStringField
      FieldName = 'SIT_PIS_VENDA_EST'
      Origin = 'SIT_PIS_VENDA_EST'
      Size = 2
    end
    object QBuscaItensCST_IPI_SAIDA: TStringField
      FieldName = 'CST_IPI_SAIDA'
      Origin = 'CST_IPI_SAIDA'
      Size = 2
    end
    object QBuscaItensCST_VENDA_INTER: TStringField
      FieldName = 'CST_VENDA_INTER'
      Origin = 'CST_VENDA_INTER'
      Size = 3
    end
    object QBuscaItensPERC_ALIQUOTA_PIS: TFMTBCDField
      FieldName = 'PERC_ALIQUOTA_PIS'
      Origin = 'PERC_ALIQUOTA_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ALIQUOTA_COFINS: TFMTBCDField
      FieldName = 'PERC_ALIQUOTA_COFINS'
      Origin = 'PERC_ALIQUOTA_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensCFOP_INTER_VENDA: TStringField
      FieldName = 'CFOP_INTER_VENDA'
      Origin = 'CFOP_INTER_VENDA'
      Size = 4
    end
    object QBuscaItensFLAG_PIS_COFINS: TStringField
      FieldName = 'FLAG_PIS_COFINS'
      Origin = 'FLAG_PIS_COFINS'
      Size = 1
    end
    object QBuscaItensCFOP_EST_VENDA: TStringField
      FieldName = 'CFOP_EST_VENDA'
      Origin = 'CFOP_EST_VENDA'
      Size = 4
    end
    object QBuscaItensCST_VENDA_INTER_NFCE: TStringField
      FieldName = 'CST_VENDA_INTER_NFCE'
      Origin = 'CST_VENDA_INTER_NFCE'
      Size = 3
    end
    object QBuscaItensCST_VENDA_NFCE: TStringField
      FieldName = 'CST_VENDA_NFCE'
      Origin = 'CST_VENDA_NFCE'
      Size = 3
    end
    object QBuscaItensCST_VENDA: TStringField
      FieldName = 'CST_VENDA'
      Origin = 'CST_VENDA'
      Size = 3
    end
    object QBuscaItensNCM_SH1: TStringField
      FieldName = 'NCM_SH1'
      Origin = 'NCM_SH1'
      Size = 8
    end
    object QBuscaItensPERC_TRIBU: TFMTBCDField
      FieldName = 'PERC_TRIBU'
      Origin = 'PERC_TRIBU'
      Precision = 18
      Size = 2
    end
    object QBuscaItensFONTE: TStringField
      FieldName = 'FONTE'
      Origin = 'FONTE'
      FixedChar = True
      Size = 18
    end
    object QBuscaItensALIC_NAC: TFMTBCDField
      FieldName = 'ALIC_NAC'
      Origin = 'ALIC_NAC'
      Precision = 18
      Size = 2
    end
    object QBuscaItensALIC_IMP: TFMTBCDField
      FieldName = 'ALIC_IMP'
      Origin = 'ALIC_IMP'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVEICULO: TStringField
      FieldName = 'VEICULO'
      Origin = 'VEICULO'
      Size = 1
    end
    object QBuscaItensCHASSI: TStringField
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      Size = 44
    end
    object QBuscaItensCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'COR'
    end
    object QBuscaItensCOR_DESC: TStringField
      FieldName = 'COR_DESC'
      Origin = 'COR_DESC'
      Size = 30
    end
    object QBuscaItensN_MOTOR: TStringField
      FieldName = 'N_MOTOR'
      Origin = 'N_MOTOR'
      Size = 30
    end
    object QBuscaItensANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      Origin = 'ANO_FAB'
      Size = 4
    end
    object QBuscaItensANO_MOD_FAB: TStringField
      FieldName = 'ANO_MOD_FAB'
      Origin = 'ANO_MOD_FAB'
      Size = 4
    end
    object QBuscaItensTIPO_VEIC: TStringField
      FieldName = 'TIPO_VEIC'
      Origin = 'TIPO_VEIC'
      Size = 10
    end
    object QBuscaItensN_SERIE: TStringField
      FieldName = 'N_SERIE'
      Origin = 'N_SERIE'
      Size = 30
    end
    object QBuscaItensCOD_MODELO: TStringField
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      Size = 30
    end
    object QBuscaItensESPECIE_VEICULO: TStringField
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'ESPECIE_VEICULO'
      Size = 10
    end
    object QBuscaItensCOD_COR_DENATRAN: TStringField
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'COD_COR_DENATRAN'
      Size = 10
    end
    object QBuscaItensTIPO_COMBUSTIVEL: TStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'TIPO_COMBUSTIVEL'
      Size = 10
    end
    object QBuscaItensPESOBRUTO: TFMTBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object QBuscaItensPESOLIQUIDO: TFMTBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object QBuscaItensCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
  end
  object DelItem: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'DELETE FROM PEDIDOS WHERE CODIGO = :CODACE')
    Left = 544
    Top = 136
    ParamData = <
      item
        Name = 'CODACE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QConsulta: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'update pedidos set pedidos.NUM_NOTA = :NOTA, pedidos.SERIE_NOTA ' +
        '=:SERIE  WHERE pedidos.chek_box = '#39'T'#39' AND DATA_PEDIDO between  :' +
        'datai and :dataf')
    Left = 480
    Top = 136
    ParamData = <
      item
        Name = 'NOTA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SERIE'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Name = 'datai'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'dataf'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object Qrsoma: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'select sum(VALOR_itens) valor_itens, sum(VALOR_AVISTA) valor_AVI' +
        'STA, sum(VALOR_PRAZO) valor_PRAZO'
      ' from pedidos where codigo is not null')
    Left = 360
    Top = 136
  end
  object FXduplicata: TfrxReport
    Version = '6.8.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39575.642958252300000000
    ReportOptions.LastChange = 42267.007195011560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin  '
      ''
      ''
      'end.')
    OnGetValue = FXduplicataGetValue
    Left = 504
    Top = 345
    Datasets = <
      item
        DataSet = DMC.frxclientes
        DataSetName = 'fsclientes'
      end
      item
        DataSet = DMC.fsduplicata
        DataSetName = 'fsduplicata'
      end
      item
        DataSet = DM.fxemitente
        DataSetName = 'fxemitente'
      end
      item
        DataSet = DM.fxrelatorio
        DataSetName = 'fxrelatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 487.559370000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        DataSet = DMC.fsduplicata
        DataSetName = 'fsduplicata'
        RowCount = 0
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 257.008040000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape17: TfrxShapeView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
        end
        object Shape16: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
        end
        object Shape18: TfrxShapeView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 529.134200000000000000
          Height = 90.708720000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Width = 211.653680000000000000
          Height = 90.708720000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 529.134200000000000000
          Height = 45.354360000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 136.063080000000000000
          Width = 468.661720000000000000
          Height = 30.236240000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 181.417440000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape8: TfrxShapeView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 574.488560000000000000
          Height = 45.354360000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape9: TfrxShapeView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 393.071120000000000000
          Width = 589.606680000000000000
          Height = 86.929190000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape10: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'NOME_FANTASIA'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxemitente."NOME_FANTASIA"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 71.811070000000000000
          Center = True
          DataField = 'LOGOMARCA'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          Frame.Typ = []
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxemitente."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 49.133890000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'TELEFONE'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxemitente."TELEFONE"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[fxemitente."ENDERECO"] - [fxemitente."BAIRRO"] -  [fxemitente."' +
              'CIDADE"] - [fxemitente."UF"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 49.133890000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxemitente."CNPJ"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'IE'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxemitente."IE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 69.031540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_COMPRA'
          DataSet = DMC.fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsduplicata."DATA_COMPRA"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 51.133890000000000000
          Width = 215.433210000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VIA 1 - EMPRESA')
          ParentFont = False
        end
        object Shape11: TfrxShapeView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape12: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
        end
        object Shape13: TfrxShapeView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
          Frame.Typ = []
        end
        object Shape14: TfrxShapeView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
        end
        object Shape15: TfrxShapeView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
          Frame.Typ = []
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 105.826840000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 109.606370000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PARA USO DA'
            'INSTITUI'#199#195'O FINANCEIRA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FATURA')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DUPLICATA')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO DE ORDEM')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 138.842610000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N O T A S    F I S C A I S')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Shape19: TfrxShapeView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 138.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCONTO DE ')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 138.842610000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'AT'#201)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 152.181200000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CONDI'#199#213'ES ESPECIAIS')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 185.196970000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'NOME DO SACADO:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 238.110390000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TELEFONE.:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 238.110390000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 238.110390000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 291.023810000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 313.700990000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 183.196970000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'NOME_RS'
          DataSet = DMC.frxclientes
          DataSetName = 'fsclientes'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsclientes."NOME_RS"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 209.653680000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'ENDERECO'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxemitente."ENDERECO"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 236.110390000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DataField = 'CIDADE'
          DataSet = DMC.frxclientes
          DataSetName = 'fsclientes'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsclientes."CIDADE"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 262.567100000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataSet = DMC.frxclientes
          DataSetName = 'fsclientes'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsclientes."TELEFONE"] - [fsclientes."TELEFONE2"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 289.023810000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'CPF_CNPJ'
          DataSet = DMC.frxclientes
          DataSetName = 'fsclientes'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsclientes."CPF_CNPJ"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 311.700990000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'RG_IE'
          DataSet = DMC.frxclientes
          DataSetName = 'fsclientes'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsclientes."RG_IE"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'UF'
          DataSet = DMC.frxclientes
          DataSetName = 'fsclientes'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsclientes."UF"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 234.330860000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'CEP'
          DataSet = DMC.frxclientes
          DataSetName = 'fsclientes'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsclientes."CEP"]')
          ParentFont = False
        end
        object Shape20: TfrxShapeView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          Curve = 1
          Fill.BackColor = clGray
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape21: TfrxShapeView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 83.149660000000000000
          Height = 45.354360000000000000
          Fill.BackColor = clGray
          Frame.Typ = []
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR POR'
            'EXTENSO')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 400.630180000000000000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E69
            6C20417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            32302031302E302E32323030307D5C766965776B696E64345C756331200D0A5C
            706172645C66693534305C66733132205245434F4E48455C2763374F28454D4F
            53292041204558415449445C2763334F204445535441205C62204455504C4943
            415441204D455243414E54494C5C6230202C204120494D504F52545C2763324E
            434941204143494D4120515545205041474152454928454D4F5329205C276330
            205C625C69205B6678656D6974656E74652E2252415A414F5F534F4349414C22
            5D205C62305C6930204F55205C27633020535541204F5244454D204E41205052
            415C2763374120452056454E43494D454E544F204143494D4120494E44494341
            444F2E5C66315C667331365C7061720D0A7D0D0A00}
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 449.764070000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'EM:')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 10.338590000000000000
          Top = 166.299320000000000000
          Width = 162.519790000000000000
          Height = 222.992270000000000000
          DataField = 'CODIGO_COMPRA'
          DataSet = DMC.fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsduplicata."CODIGO_COMPRA"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataSet = DMC.fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."CODIGO_COMPRA"] - [fsduplicata."PARCELA"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_COMPRA'
          DataSet = DMC.fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."VALOR_COMPRA"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = DMC.fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."CODIGO_COMPRA"] - [fsduplicata."PARCELA"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_COMPRA'
          DataSet = DMC.fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."VALOR_COMPRA"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'data_vencimento'
          DataSet = DMC.fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."data_vencimento"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 351.496290000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          DataSet = DMC.fsduplicata
          DataSetName = 'fsduplicata'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[extenso]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 476.220780000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        DataSet = DMC.fsduplicata
        DataSetName = 'fsduplicata'
        RowCount = 0
        object Shape22: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 257.008040000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape23: TfrxShapeView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
        end
        object Shape24: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
        end
        object Shape25: TfrxShapeView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
        end
        object Shape26: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 529.134200000000000000
          Height = 90.708720000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape27: TfrxShapeView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Width = 211.653680000000000000
          Height = 90.708720000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape28: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 529.134200000000000000
          Height = 45.354360000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape29: TfrxShapeView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 136.063080000000000000
          Width = 468.661720000000000000
          Height = 30.236240000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape30: TfrxShapeView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape31: TfrxShapeView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 181.417440000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape32: TfrxShapeView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 574.488560000000000000
          Height = 45.354360000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape33: TfrxShapeView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 393.071120000000000000
          Width = 589.606680000000000000
          Height = 86.929190000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape34: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'NOME_FANTASIA'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxemitente."NOME_FANTASIA"]')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 71.811070000000000000
          Center = True
          DataField = 'LOGOMARCA'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          Frame.Typ = []
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'RAZAO_SOCIAL'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxemitente."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 49.133890000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxemitente."telefone"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 49.133890000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxemitente."CNPJ"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'IE'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxemitente."IE"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 69.031540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_COMPRA'
          DataSet = DMC.fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsduplicata."DATA_COMPRA"]')
          ParentFont = False
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 537.693260000000000000
          Top = 50.133890000000000000
          Width = 210.141732280000000000
          Height = 13.606299210000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15720447
          HAlign = haCenter
          Memo.UTF8W = (
            'VIA 2 - CLIENTE')
          ParentFont = False
        end
        object Shape35: TfrxShapeView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          Curve = 1
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape36: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
        end
        object Shape37: TfrxShapeView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
          Frame.Typ = []
        end
        object Shape38: TfrxShapeView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
        end
        object Shape39: TfrxShapeView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
          Frame.Typ = []
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 105.826840000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 109.606370000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PARA USO DA'
            'INSTITUI'#199#195'O FINANCEIRA')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FATURA')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DUPLICATA')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO DE ORDEM')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 138.842610000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N O T A S    F I S C A I S')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Shape40: TfrxShapeView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 138.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DESCONTO DE ')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 138.842610000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'AT'#201)
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 152.181200000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CONDI'#199#213'ES ESPECIAIS')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 185.196970000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'NOME DO SACADO:')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 238.110390000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TELEFONE.:')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 238.110390000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 238.110390000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 291.023810000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 313.700990000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 183.196970000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'NOME_RS'
          DataSet = DMC.frxclientes
          DataSetName = 'fsclientes'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsclientes."NOME_RS"]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 209.653680000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'ENDERECO'
          DataSet = DMC.frxclientes
          DataSetName = 'fsclientes'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsclientes."ENDERECO"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 236.110390000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DataField = 'CIDADE'
          DataSet = DMC.frxclientes
          DataSetName = 'fsclientes'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsclientes."CIDADE"]')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 262.567100000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataSet = DMC.frxclientes
          DataSetName = 'fsclientes'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsclientes."TELEFONE"] - [fsclientes."TELEFONE2"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 289.023810000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'CPF_CNPJ'
          DataSet = DMC.frxclientes
          DataSetName = 'fsclientes'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsclientes."CPF_CNPJ"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 311.700990000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'RG_IE'
          DataSet = DMC.frxclientes
          DataSetName = 'fsclientes'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsclientes."RG_IE"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'UF'
          DataSet = DMC.frxclientes
          DataSetName = 'fsclientes'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsclientes."UF"]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 234.330860000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'CEP'
          DataSet = DMC.frxclientes
          DataSetName = 'fsclientes'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsclientes."CEP"]')
          ParentFont = False
        end
        object Shape41: TfrxShapeView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          Curve = 1
          Fill.BackColor = clBlack
          Frame.Typ = []
          Shape = skRoundRectangle
        end
        object Shape42: TfrxShapeView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 347.716760000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          Fill.BackColor = clBlack
          Frame.Typ = []
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR POR'
            'EXTENSO')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 351.496290000000000000
          Width = 476.220780000000000000
          Height = 37.795300000000000000
          DataSet = DMC.fsduplicata
          DataSetName = 'fsduplicata'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[extenso]')
          ParentFont = False
        end
        object Rich2: TfrxRichView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 400.630180000000000000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E69
            6C20417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            32302031302E302E32323030307D5C766965776B696E64345C756331200D0A5C
            706172645C66693534305C66733132205245434F4E48455C2763374F28454D4F
            53292041204558415449445C2763334F204445535441205C62204455504C4943
            415441204D455243414E54494C5C6230202C204120494D504F52545C2763324E
            434941204143494D4120515545205041474152454928454D4F5329205C276330
            205C625C69205B6678656D6974656E74652E2252415A414F5F534F4349414C22
            5D20205C62305C6930204F55205C27633020535541204F5244454D204E412050
            52415C2763374120452056454E43494D454E544F204143494D4120494E444943
            41444F2E5C66315C667331365C7061720D0A7D0D0A00}
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 449.764070000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'EM:')
          ParentFont = False
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line25: TfrxLineView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 10.338590000000000000
          Top = 166.299320000000000000
          Width = 162.519790000000000000
          Height = 222.992270000000000000
          DataSet = DMC.fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fsduplicata."CODIGO_COMPRA"]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataSet = DMC.fsduplicata
          DataSetName = 'fsduplicata'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."CODIGO_COMPRA"] - [fsduplicata."PARCELA"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_COMPRA'
          DataSet = DMC.fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."VALOR_COMPRA"]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = DMC.fsduplicata
          DataSetName = 'fsduplicata'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."CODIGO_COMPRA"] - [fsduplicata."PARCELA"]')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = DMC.fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."CODIGO_COMPRA"] - [fsduplicata."PARCELA"]')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'data_vencimento'
          DataSet = DMC.fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."data_vencimento"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 75.590600000000000000
          Width = 521.575140000000000000
          Height = 18.897650000000000000
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[fxemitente."ENDERECO"] - [fxemitente."BAIRRO"] -  [fxemitente."' +
              'CIDADE"] - [fxemitente."UF"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 504
    Top = 409
  end
  object N_notac: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'select max(NR_NOTA) n_nota from  NFECe_NOTA where cd_empresa =:c' +
        'od_emp')
    Left = 703
    Top = 387
    ParamData = <
      item
        Name = 'COD_EMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object N_notacN_NOTA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'N_NOTA'
      Origin = 'N_NOTA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
