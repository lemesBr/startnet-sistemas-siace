object FormItensVenda: TFormItensVenda
  Left = 214
  Top = 237
  Width = 785
  Height = 264
  Caption = 'Itens da Venda'
  Color = clBtnFace
  Constraints.MinWidth = 300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 272
      Top = 14
      Width = 209
      Height = 19
      Caption = 'Itens da Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 769
    Height = 185
    Align = alClient
    TabOrder = 1
    object XDBGrid1: TXDBGrid
      Left = 1
      Top = 1
      Width = 767
      Height = 183
      Align = alClient
      DataSource = DMB.dts_itens_venda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      GridStyle.VisualStyle = vsXPStyle
      HotButtons = hbTile
      MarkerStyle = msMild
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
      ParentFont = False
      ScrollProp.WinXPMode = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = XDBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_ID'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Venda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Cod. Prod.'
          Visible = True
          Width = 106
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o do Produto'
          Visible = True
          Width = 271
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde.'
          Visible = True
          Width = 34
        end
        item
          Expanded = False
          FieldName = 'UNIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Und.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO_UNITARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Unit.'
          Visible = True
          Width = 68
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Title.Alignment = taCenter
          Title.Caption = 'Desconto'
          Visible = True
          Width = 63
        end
        item
          Expanded = False
          FieldName = 'PRECO_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Visible = True
          Width = 66
        end>
    end
  end
end
