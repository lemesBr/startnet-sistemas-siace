object frmcaixa: Tfrmcaixa
  Left = 358
  Top = 196
  BorderIcons = [biSystemMenu]
  Caption = 'LIVRO DE CAIXA GERENCIAL DO SIACE SISTEMAS'
  ClientHeight = 432
  ClientWidth = 905
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = POPPRINCIPAL
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel15: TBevel
    Left = 0
    Top = 28
    Width = 905
    Height = 3
    Align = alTop
    ExplicitWidth = 778
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 28
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    object Bevel5: TBevel
      Left = 696
      Top = 7
      Width = 81
      Height = 16
    end
    object Bevel3: TBevel
      Left = 273
      Top = 7
      Width = 208
      Height = 16
    end
    object Bevel2: TBevel
      Left = 217
      Top = 7
      Width = 52
      Height = 16
    end
    object Label13: TLabel
      Left = 8
      Top = 7
      Width = 27
      Height = 13
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 48
      Top = 3
      Width = 105
      Height = 23
    end
    object LDATACAIXA: TLabel
      Left = 54
      Top = 6
      Width = 90
      Height = 16
      Caption = '00/00/0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 160
      Top = 8
      Width = 50
      Height = 13
      Caption = 'Operador:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LCODOPERADOR: TLabel
      Left = 223
      Top = 8
      Width = 42
      Height = 13
      Caption = '000001'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object LNOMEOPERADOR: TLabel
      Left = 279
      Top = 8
      Width = 202
      Height = 13
      AutoSize = False
      Caption = 'NOME DO OPERADOR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 488
      Top = 8
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel4: TBevel
      Left = 544
      Top = 7
      Width = 81
      Height = 16
    end
    object LSITOPERADOR: TLabel
      Left = 550
      Top = 8
      Width = 51
      Height = 13
      Caption = 'FECHADO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object LSITCAIXA: TLabel
      Left = 703
      Top = 9
      Width = 44
      Height = 13
      Caption = 'ABERTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 632
      Top = 8
      Width = 59
      Height = 13
      Caption = 'Caixa Geral:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object PageView1: TNxPageControl
    Left = 0
    Top = 31
    Width = 905
    Height = 401
    ActivePage = PageSheet1
    ActivePageIndex = 0
    Align = alClient
    TabOrder = 1
    OnChange = PageView1Change
    BackgroundColor = clBtnFace
    Margin = 0
    Options = [pgBoldActiveTab]
    Spacing = 0
    TabHeight = 17
    TabStyle = tsFlat
    object PageSheet1: TNxTabSheet
      Caption = 'Rela'#231#227'o de Lan'#231'amentos'
      ImageIndex = 0
      PageIndex = 0
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 905
        Height = 377
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Bevel7: TBevel
          Left = 0
          Top = 0
          Width = 905
          Height = 4
          Align = alTop
          ExplicitWidth = 778
        end
        object wwDBGrid1: TXDBGrid
          Left = 0
          Top = 4
          Width = 905
          Height = 291
          Align = alClient
          DataSource = dscaixa_mov1
          GridStyle.VisualStyle = vsXPStyle
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
          TabOrder = 3
          OnDrawColumnCell = wwDBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_USUARIO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO_MOVIMENTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HISTORICO'
              Title.Caption = 'Hist'#243'rico'
              Visible = True
              Width = 359
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_ENTRADA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_SAIDA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Title.Caption = 'Usu'#225'rio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA'
              Visible = True
            end>
        end
        object bcaixaaberto: TButton
          Left = 488
          Top = 128
          Width = 225
          Height = 25
          Caption = 'Tratar botoes - CAIXA ABERTO'
          TabOrder = 0
          Visible = False
          OnClick = bcaixaabertoClick
        end
        object bcaixafechado: TButton
          Left = 489
          Top = 97
          Width = 225
          Height = 25
          Caption = 'Tratar Botoes - CAIXA FECHADO'
          TabOrder = 1
          Visible = False
          OnClick = bcaixafechadoClick
        end
        object Panel5: TPanel
          Left = 0
          Top = 295
          Width = 905
          Height = 82
          Align = alBottom
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 2
          object Bevel9: TBevel
            Left = 112
            Top = 5
            Width = 542
            Height = 23
          end
          object Bevel8: TBevel
            Left = 48
            Top = 5
            Width = 58
            Height = 23
          end
          object Label48: TLabel
            Left = 8
            Top = 8
            Width = 33
            Height = 13
            Caption = 'Conta:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 52
            Top = 8
            Width = 50
            Height = 17
            Color = clBtnFace
            DataField = 'COD_PLANO'
            DataSource = dscaixa_mov1
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object DBText2: TDBText
            Left = 116
            Top = 8
            Width = 538
            Height = 17
            Color = clBtnFace
            DataField = 'NOME'
            DataSource = dscaixa_mov1
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object Bevel10: TBevel
            Left = 660
            Top = 6
            Width = 2
            Height = 69
          end
          object Label10: TLabel
            Left = 708
            Top = 8
            Width = 28
            Height = 13
            Caption = 'Total:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Bevel11: TBevel
            Left = 751
            Top = 5
            Width = 70
            Height = 23
          end
          object Bevel12: TBevel
            Left = 823
            Top = 5
            Width = 70
            Height = 23
          end
          object Bevel13: TBevel
            Left = 751
            Top = 48
            Width = 142
            Height = 27
          end
          object Label4: TLabel
            Left = 668
            Top = 54
            Width = 75
            Height = 13
            Caption = 'Saldo do Caixa:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RSAIDA: TRxCalcEdit
            Left = 823
            Top = 8
            Width = 64
            Height = 18
            AutoSize = False
            BorderStyle = bsNone
            Color = clBtnFace
            DisplayFormat = '###,###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ButtonWidth = 0
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 0
          end
          object RENTRADA: TRxCalcEdit
            Left = 750
            Top = 9
            Width = 65
            Height = 18
            AutoSize = False
            BorderStyle = bsNone
            Color = clBtnFace
            DisplayFormat = '###,###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ButtonWidth = 0
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 1
          end
          object RSALDO: TRxCalcEdit
            Left = 758
            Top = 52
            Width = 129
            Height = 23
            AutoSize = False
            BorderStyle = bsNone
            Color = clBtnFace
            DisplayFormat = '###,###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ButtonWidth = 0
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 2
          end
        end
      end
      object bincluir: TAdvGlowButton
        Left = 4
        Top = 326
        Width = 104
        Height = 43
        Caption = 'F2 | Incluir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 0
        Images = FormPrincipal.sAlphaImageList2
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = bincluirClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object balterar: TAdvGlowButton
        Left = 108
        Top = 326
        Width = 104
        Height = 43
        Caption = 'F3 | Alterar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        Images = FormPrincipal.sAlphaImageList2
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = balterarClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Enabled = False
      end
      object bexcluir: TAdvGlowButton
        Left = 214
        Top = 326
        Width = 104
        Height = 43
        Caption = 'Del | Excluir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 3
        Images = FormPrincipal.sAlphaImageList2
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = bexcluirClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object brelatorio: TAdvGlowButton
        Left = 324
        Top = 326
        Width = 120
        Height = 43
        Caption = 'F7 | Relat'#243'rios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 26
        Images = FormPrincipal.sAlphaImageList2
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = brelatorioClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object LMDButton1: TAdvGlowMenuButton
        Left = 447
        Top = 326
        Width = 99
        Height = 43
        Caption = 'Op'#231#245'es'
        ImageIndex = 9
        Images = FormPrincipal.sAlphaImageList2
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 5
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        DropDownButton = True
        DropDownSplit = False
        DropDownMenu = popopcoes
      end
      object bfechar: TAdvGlowButton
        Left = 552
        Top = 326
        Width = 94
        Height = 43
        Caption = 'ESC | Sair'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 8
        Images = FormPrincipal.sAlphaImageList2
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = bfecharClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
    end
    object PageSheet2: TNxTabSheet
      Caption = 'Resumo'
      ImageIndex = 0
      PageIndex = 1
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 179
        Height = 265
        Caption = 'Vendas'
        Enabled = False
        TabOrder = 0
        object Label15: TLabel
          Left = 27
          Top = 22
          Width = 43
          Height = 13
          Caption = 'Dinheiro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 27
          Top = 46
          Width = 76
          Height = 13
          Caption = 'Cheque '#224' Vista:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 27
          Top = 70
          Width = 80
          Height = 13
          Caption = 'Cheque '#224' Prazo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 27
          Top = 94
          Width = 47
          Height = 13
          Caption = 'Credi'#225'rio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 27
          Top = 118
          Width = 75
          Height = 13
          Caption = 'Cart'#227'o Cr'#233'dito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 27
          Top = 142
          Width = 71
          Height = 13
          Caption = 'Cart'#227'o D'#233'bito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 27
          Top = 166
          Width = 49
          Height = 13
          Caption = 'Conv'#234'nio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 30
          Top = 240
          Width = 28
          Height = 13
          Caption = 'Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Bevel6: TBevel
          Left = 5
          Top = 234
          Width = 169
          Height = 2
        end
        object Label22: TLabel
          Left = 27
          Top = 190
          Width = 63
          Height = 13
          Caption = 'Pix/deposito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 29
          Top = 213
          Width = 24
          Height = 13
          Caption = 'Vale:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object FDvShapeButton1: TAdvShapeButton
          Left = 1
          Top = 18
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC5460000048A4944415478DA004D00B2
            FF01CFEAD600A3BFA200EFEEF8002E1E2A00EDF6E300DDDFEB002B193C00D6E6
            C100151315002A2F2400C6C3CA3DB6D4B5335B3C5CC4D7DECBCC372C4400D1D8
            D4006F5F7000D7E8D40021152500028885010B6064646460616102E27F4A6F3E
            3EB1DF7AEC7292B086B460805990F6D3A70FDF72F1733E7AFDF1F5C2BFBFFF6D
            E560E3B8CBC2CCFC1FA40F2080500C6365616560626464FBFAF98BDDC9B3AF13
            FEFDB6F7F8C17B5958C99E81E115E70986974C6F1998E4388579C52584AFBE39
            6628C624DF3A7DFD84CB62E212CB14C5D426030410D05066A001CC0C3FFFFC94
            BE7EFF7A389F3853848AAEA8C9DD6BAF19BEFF916614168966F870E62D030BDB
            0D0666DE9D0C9F78AF33BCE57DCC20C72BC16023ABCF2D26AC68B16ECB763E16
            03B6290001004D00B2FF04E9EFE823FBFEF88C191A0D45292B0B0BEC18E100FA
            01F7002039EE00EFE1CF00EFDA0F0006022B0010043B0024164200FDF1DF0003
            E3E1005C4D4200171B100004FF0A00B607B9FB0CED08FF02004D00B2FF04D4DB
            D444E5F6E350915E8A00EA00DC00CFF0F900D7FDD500F405FD00FF1FF2001212
            E30009F5E80020F5FF0005E82F00111D3500F7E613001405150011001100C1CE
            CA00FCF80003F508F50002004D00B2FF03E715EA32FB07F94DF0ECED0013FF2C
            0035163F00280A2600FBFAF20009FA0B0047106600551D6F0048224A0005030C
            00B4D2ED00FDFE0500F407CF008CC28400C4E2C300EDF7EB15140A1AC6028845
            5896E3CDC76FAF196E3CB8C6C0CDCDC7F09BD990C148DC882145D09A81519081
            8185991D1E417F7EFC667870E93AC349C6830C677FDF66B0D0B56008540B6038
            76F338E3F5FB77F5000288458C5B7EFDCFDF4C47BE0BFCB43977E934C3E73FDF
            19C439F8190478F51838A0067DF8FE9661CBB5A50C8BD6EE6010110A66B0560E
            63D017FEC7E063E900967FCCF290E1D68F67EC0001004D00B2FF03EC0BEE0007
            01086E5E425D1835253500D6ECDB00CAD1C6000C090A000106FF00A4C8A00096
            C7980001070300643B6B0010042000ED0915001F0F0E001F1E0800BFD8BF00BB
            C4C2F326192FB202004D00B2FF0109580D000C0C09CF493B4130341A3E003923
            3800F3FCF000C0DDBE00E8F2E5002F1E2E004E3052001C0A1F00FDFFFD009BB3
            D600C5E3FD001507C4001009F5F4FCFA049E32293B93161120DC02882533209D
            E1CBCFAF3BCE3FBEA4CDF8FF042B3B1F0B83B1841943967D1E83302730EA99D8
            1818FE41C2ECDD8F6F0C172E9F6178FEF4FD4B1543AE05064AE693C584659FFE
            F8FD87E1F79F9F0C0001C478E6E71586272F9E305C38715DFFDEBB7BCD7F189F
            FB781A79335AAADA3328F2293030313132BCFAF68661D3E5350CC74F5EB9A52C
            6272D756DAA4849B5FF0DA0FF60F0C7F8016FDFE0BCA7EDC0C0001C478E8C349
            8647CF1F317C79FC9B41595E89A1657DB5173F8F689389B8B6B1ADB125C3E907
            57186E5D78B4475E407189A3AECD160121FEB7CCC01CF3FED56F86BF3CDF808E
            66821B061040F0BCF907181EDF7F7D67606563DDE6A0EBB1F7E19DCB811B776D
            D795E7D77E1E6E163FE7EFCF3F3F783884806ABE3170B270602B1F1800020C00
            1CFD9FF5CFFB79FB0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 9
          Version = '6.2.1.5'
        end
        object FDvShapeButton2: TAdvShapeButton
          Left = 1
          Top = 42
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 10
          Version = '6.2.1.5'
        end
        object FDvShapeButton3: TAdvShapeButton
          Left = 1
          Top = 66
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 11
          Version = '6.2.1.5'
        end
        object FDvShapeButton4: TAdvShapeButton
          Left = 1
          Top = 90
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000013000000130806000000725036
            CC000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000004EE4944415478DA627C71E9
            0DC3BF1F1F183EBC7AC1F0F1EF5F061E313E8657072EABF17D3CD7FAFACC69F9
            2FE97591FF45C4EF32FCFECDC0C0F09FE13F0B2B03CBA2A50C3A71D10C3FB9B9
            1918807A6000208098600C46264686BFFF1918DE5FBC98A5A52EB0DDC448D64F
            E4C35BD3DF376F9B0AFFF9CB20F8FD3B83E0AFDF0CEC8F1E30FC7BF39A819185
            99011D000410D83046464686FF4CCC0C5F6FDD8F5714976897305453FA78FB35
            DBC3C7AF18185FBF90E263F9C7A0A228CEA0242FC2C0CDF68FE1EFB7AF204D18
            860104101313D090FFCCCC4C6F2E9E2DD6E0FF3E4546839FEFD3F98B0CA78E5D
            64D0F0B567103E77AAFCC5E933C1CC5C9C0C2C9C9C4017B180BCC1800D000410
            D0CEFF0C778F9F48E07B73A7554E4192FDCB96550C97375F6290F67466D072D6
            6050D97546ECE0B64D73AFB0FC661052565EFB1BE855266666062690A1680020
            80983D8D0DF438F72F996BCCF24CF0C3E57B0C97779E6450D452669073B467F8
            C62EC0C0252EC520C5F68FE3D186B54E4F19D9AEB1C9283CFA74F4B4A3B099F1
            2F167E814F0CFFFF313001C31B14E60001C4C2CECCA6C278EA9CD4933FCF19AE
            7E6360D0D656629012E760F87BEB38C37F656586AF12EA0CDCB6060C767F1944
            F61C383997FFF3BB9BAA8A6C76D7A7361FE70BCE8E60E1E27EC4F00F12A30001
            004D00B2FF037D7C85DECBD4D9FBE31F34E3F6131EF518E7D61D1205FB00FE09
            F70004FB010001FE0500FE0F1600001F21002406F40C19FBE01F180D0200F4BD
            BE1DE30D21D7030C0FCEFAF1F100FBF4F500028805188F3F19C5249A24031219
            58BEFC16BCB89461F1DF0B07BD5558FE00F91C0C0CBF99197EFC676360529466
            F825CCCEC0F1998FE1DB37668677C20ADF7875F5AF73282833FCFFF513EC3280
            0062F9FFFF3F032330E1FDFBF28981E51FEB7BC9A8F4D82BAB1897309CDAE2A5
            620E0A0F5606563616865F374F32FC79F38181C5CB8EE1E2B2C37F1F5B06F58B
            5A381EFDC8C60E4FB8000184886360BA01C52CCBFFBFEFA513D2A2AF9B44AC7A
            72F1D9BF7F2F2E317C3CB88FE1ED85330C0296BA0C77AE3C6338F8E8FD4B61BF
            904E0666E6FFFF8029FD1F30B183304000810DFB0F4C7F4CCC4C0CFF8059EAFB
            FDE70C7F1EBCFBC0A1EB587AE42DF7F70B07EF307CBC738D414A9287E1E1B113
            0C670F9C63F8A4A7C77EF7D96DA95F2FEE31707C7DCDC0FE0582010288859915
            E80D062686B787F632B0BCFDC000F236301131FCFBFEC55FF0EB476E01C13F0C
            B2BCFF186E9F79C4B09D559CE1A78D3583B5B383F08E03C7BB84D8D9134539D8
            DEFDFA03CCB7407D0001C4EC6969CBF01BC8F8FEE30BC31F012E86DF7C1C0CBF
            0538197E70326B883C3A1BA8F4E717C3895F1CBF6E9886CE9188AF697ECBCC7C
            E4F9C38B32EA2AAAF68F9FBC62131016DF05CA8E40AF310004100B2FB7088380
            893403385B012138F840909171C96B7149C98D572EAA719A386C12D0D7DBCACB
            26F647E4EF7B86BB77AF1E7BC6F06406C33FE6C2E3A70E1DD3D7D15DC3C32BCC
            0010402C5ABA5698990C68262B0BF33F3E31B9CEEF36BE0CFF7E7E6360FCF999
            E12FE32F863FBF7F31F0F1705F109552087AF0F445C79307573AA5C5445F098B
            481F02082016902456F09F99E1EF7760E9F0F513032485FF874BFD0526053E7E
            E1673A4252E9F76E5DAF3B76FC44F96F06E6C70001C4C24026F807B4E02FC39F
            EF62625255FF99D933CE5D38990B10404C0C1482DFBF7FFD9791959D6E6BE3B0
            0420C000CEA1E03031F1160F0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 12
          Version = '6.2.1.5'
        end
        object FDvShapeButton5: TAdvShapeButton
          Left = 1
          Top = 114
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000004A54944415478DA004D00B2
            FF01D4D7D800FEF1E000DECEA50022346F00F0DCC200D6D3A40023385C00F1E8
            DA002A3A6600E6D3BD00DDDDA800292B6C10EAD9AD40F4DFBB1B18478AD51D21
            45C00801FE00FFFFFF00000000000288054C42D80C8C8CCC409219CC6562E264
            FEFDEBA7D2CB07C7E5FEFEFC622A2C28E2F6FFFB4605090B6E79563707A60FA7
            177F7FCF241226A862BCE5EF9F9F60FD0001004D00B2FF040202030003060A00
            FFFF0505F5F5F60AFEFBF83D0502FE40EEE8B8271C1B193C1006F010113D4300
            1BF2FF00F4EBAE008419FC00EA162A005006E109F4C19781E71C88C00201FCF4
            00FFFE0002004D00B2FF04F2F3F114EBDDC06A0803D450F8D355241806FC0A2D
            3819030B25130005193E00020C3600FE021B00FCB39E0009AFD40003390D00C8
            23FB003914F9003D0AEA32D2CFB252071D2CA2FE00000002004D00B2FF03472A
            D4B811E5A45F1DF2E61915FEF3070A050602FF071D00091A2D000400E500FDF8
            EC0001082A0000101800F701F100310A0400511906003801EC001103EE00E6E1
            FF130A225BA8060D1BFC02004D00B2FF0208FBC62C1B050300F0E20800F8FBFF
            00FF0F11000F212400FE050100FDFAE50003031300FE010900011013000B4841
            00183326002608FA000EFFF40005130000090BD13EF1E8CD4901F7E80002004D
            00B2FF02FC083CD10820FB001A4401000F3D190000210B00F808F800050B1200
            FD0312000006210004FDF30002FEE10000FEEA00FF01F000FDFDEE00E7E70500
            E2DD080002F9F500F5D9B75E0003120002888955366CC593DF0C0C42BA110C02
            6A3D0C124A260C3F7E3E04622106363E470606765160D47E61F8FAE515C38387
            8F184E9EB8C0F0E8F11B60A4FF60F8C5F89B41599581418E67AFFFA7F7F73C01
            02004D00B2FF020B0112C8FBF51BEEF6F4D7000200E80001F1F700FBF5EF0000
            062200F7FD2E00E3E5EA00DBCCC60000F1F000F9E5E5001F1509001613030006
            FE000001000700F9F902001307F601F7EAE21F02004D00B2FF040C2938D1E8EB
            2FCD00F4B745EBDAFA00F5FD1600040E5E00FC011600DDD9D00007FFE700221F
            0F0007FDF1002828010000FDF300FBF8F900F7FDFF0008FDF600E0E70900E2F9
            45C40F212CC402004D00B2FF0402EBD8000B0E33B4E8EDCA4504060800FE0C27
            00FAFC21001A09140023221B00FBE9EF0004F9E1000207E10000FFE800F0E4F0
            00E6EBFF00D3F029E8F8FA35C10B0B41A20A0E09C3080A10F302004D00B2FF04
            0D081200FC112FBAECE11AF4271B1C0C0B1F2B0008142800EAE5E700F8F1DD00
            150CED00F9F6DE00DFDAD200DFDFF1F9EFF849BAFE0849B3030E1BB6171421E5
            00F5EE00F5F4E300FFFEFC000288E5DDFBB70C4C2C8237BE33E8ED6117640D60
            E7D362F8F79B9F4146FC13C3BDCFF719CEDCBEF8EDD9E31FE799993CF7F1F0D9
            2CE512FC728B8947E7FFCFAFF7805EFECAF0EFEF2FA08B411990910120805884
            24F5199859B9187E7EB45B77FEEC5657B97F37B83FBD3BF6FBFECD4B0FFFFFE6
            DAC6CA1BB28E5F48F0389790F02FC69F7F19BE7F7B07B4EC2BD400540010402C
            EF7EBC6460F8014C010AE68BBFB18A3D3D73F4A4172BB7E44506D1984DBC7F5E
            7CE4619361F8F8EB33C3BF3F5F81698D055C2A303260070001060025B2BA1176
            8562600000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 13
          Version = '6.2.1.5'
        end
        object FDvShapeButton6: TAdvShapeButton
          Left = 1
          Top = 138
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000004A54944415478DA004D00B2
            FF01D4D7D800FEF1E000DECEA50022346F00F0DCC200D6D3A40023385C00F1E8
            DA002A3A6600E6D3BD00DDDDA800292B6C10EAD9AD40F4DFBB1B18478AD51D21
            45C00801FE00FFFFFF00000000000288054C42D80C8C8CCC409219CC6562E264
            FEFDEBA7D2CB07C7E5FEFEFC622A2C28E2F6FFFB4605090B6E79563707A60FA7
            177F7FCF241226A862BCE5EF9F9F60FD0001004D00B2FF040202030003060A00
            FFFF0505F5F5F60AFEFBF83D0502FE40EEE8B8271C1B193C1006F010113D4300
            1BF2FF00F4EBAE008419FC00EA162A005006E109F4C19781E71C88C00201FCF4
            00FFFE0002004D00B2FF04F2F3F114EBDDC06A0803D450F8D355241806FC0A2D
            3819030B25130005193E00020C3600FE021B00FCB39E0009AFD40003390D00C8
            23FB003914F9003D0AEA32D2CFB252071D2CA2FE00000002004D00B2FF03472A
            D4B811E5A45F1DF2E61915FEF3070A050602FF071D00091A2D000400E500FDF8
            EC0001082A0000101800F701F100310A0400511906003801EC001103EE00E6E1
            FF130A225BA8060D1BFC02004D00B2FF0208FBC62C1B050300F0E20800F8FBFF
            00FF0F11000F212400FE050100FDFAE50003031300FE010900011013000B4841
            00183326002608FA000EFFF40005130000090BD13EF1E8CD4901F7E80002004D
            00B2FF02FC083CD10820FB001A4401000F3D190000210B00F808F800050B1200
            FD0312000006210004FDF30002FEE10000FEEA00FF01F000FDFDEE00E7E70500
            E2DD080002F9F500F5D9B75E0003120002888955366CC593DF0C0C42BA110C02
            6A3D0C124A260C3F7E3E04622106363E470606765160D47E61F8FAE515C38387
            8F184E9EB8C0F0E8F11B60A4FF60F8C5F89B41599581418E67AFFFA7F7F73C01
            02004D00B2FF020B0112C8FBF51BEEF6F4D7000200E80001F1F700FBF5EF0000
            062200F7FD2E00E3E5EA00DBCCC60000F1F000F9E5E5001F1509001613030006
            FE000001000700F9F902001307F601F7EAE21F02004D00B2FF040C2938D1E8EB
            2FCD00F4B745EBDAFA00F5FD1600040E5E00FC011600DDD9D00007FFE700221F
            0F0007FDF1002828010000FDF300FBF8F900F7FDFF0008FDF600E0E70900E2F9
            45C40F212CC402004D00B2FF0402EBD8000B0E33B4E8EDCA4504060800FE0C27
            00FAFC21001A09140023221B00FBE9EF0004F9E1000207E10000FFE800F0E4F0
            00E6EBFF00D3F029E8F8FA35C10B0B41A20A0E09C3080A10F302004D00B2FF04
            0D081200FC112FBAECE11AF4271B1C0C0B1F2B0008142800EAE5E700F8F1DD00
            150CED00F9F6DE00DFDAD200DFDFF1F9EFF849BAFE0849B3030E1BB6171421E5
            00F5EE00F5F4E300FFFEFC000288E5DDFBB70C4C2C8237BE33E8ED6117640D60
            E7D362F8F79B9F4146FC13C3BDCFF719CEDCBEF8EDD9E31FE799993CF7F1F0D9
            2CE512FC728B8947E7FFCFAFF7805EFECAF0EFEF2FA08B411990910120805884
            24F5199859B9187E7EB45B77FEEC5657B97F37B83FBD3BF6FBFECD4B0FFFFFE6
            DAC6CA1BB28E5F48F0389790F02FC69F7F19BE7F7B07B4EC2BD400540010402C
            EF7EBC6460F8014C010AE68BBFB18A3D3D73F4A4172BB7E44506D1984DBC7F5E
            7CE4619361F8F8EB33C3BF3F5F81698D055C2A303260070001060025B2BA1176
            8562600000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 14
          Version = '6.2.1.5'
        end
        object FDvShapeButton7: TAdvShapeButton
          Left = 1
          Top = 162
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000013000000100806000000F4C444
            62000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000004D34944415478DA004D00B2
            FF01CBEBD700C4D1C100A4C3A000744C7900B6D0B000F9BED80032274900DAD9
            D600D3D3CB0038392C00F1F0F6003C3D4700F8F0D800C9C8E00018366B004A4B
            2B00C8BDD36B0E04FEF82D28239D028889814CC0CAC4C4B4EFD0E9F2870C0253
            1E7F603279F0FC3D034000313132323230333303A5FFA32806893332310BFCFA
            F5D7FCE7AF5F2A5FBE7E55FFF3EF9FC07F0646A0D2FFD22FDE7F9FCCA460DB21
            E068CFF0EAFF47750B5B15068000004D00B2FF04F7F8F817E9EAEB11020005ED
            09050CEC060406FFFA020200F1F4F556EAE3D48A43371D1F3E463EF723253007
            EAE3E7D1D4D2D2BA150D0339EA140A37F71F1D00DBF70000FBF40328EAEAEA06
            02004D00B2FF04AECCA958ABD29590231F20F0A9D292CAD3E3DCDD1EE8F916EC
            F0BC517C6834022F373500071A2F0900030F000023103141350B31F7EBE8006C
            A2C500C7E54600ED02070017050F07DEDDEB1302004D00B2FF03C80DC7392F39
            194810160308F202E923EBE7EC3548FF162A5341170138432800E7DCF700C7B9
            BA0003F9F40011130800FFF7E700060DFB00F7E4EE00AEE32A00E10A110004E2
            E5013510FDA802004D00B2FF0400FE0400F2EFF60003FFFA00FFFEFF0008FEF8
            00140BFC002F332E00D8C6D400BFC1DD0021211600C4B7D700D7D017003A4038
            00100EF8004331F9000D9FCA00FC131E00E7F90D080404F12B02004D00B2FF04
            01010400F9F8FC00F6F50000FCFB020003FDFE0019120C00B5B6CB00F3EEE800
            4049320029211D00F6EFF700CAC8D200AD9EAB002C331F0034261200330AC700
            D4E43200F4FAF600EFEFF51D0288E53FC33F861F40C398FE32327CFDCDC820FF
            9B9BC14C5381E1EBBFCF0C8246C60C12AA520C7F7F71805DAEAFA5C1C0C5F688
            E1D8AEAB0C8F2E7232B07D9360E079FF9AE1CBDFCF0CBFFFFC620508004D00B2
            FF020303FF00F3F3FC00FAEFFC00E9F7F50024FB0900070C0400211A12001516
            0E00F9FA0A00FBFAF500FCFAF900D3D3E200C1CADA0018180C00C6D3E3001B24
            41F41DF1CE003101D5EA232817AF02081866FF18BE7FFFC30032F407D0B9129C
            A20CDC7FFF33FCFC02F4FAEF5F0C82DC1C0C9FBFFF60F8F0F6138308F35B86EF
            DF3E31CCDAFB98818145F16391B1A3C9B75F17135C1DDC374B29C85F0108004D
            00B2FF0405020500F8F9F600F9FDF70004FA0200F7FB0800BDD4EB00F7FDF900
            FE02040012DEF4002C180A00F4EFFA009FBFE300141409001C0EF200122640A9
            262225DCEBEFF37C18181700FAFAFB000288E9C7CFEF0CFF802EF90B4CF5DC7F
            65BE7333293D79F7FF3FC3A73FCC0CFC02BC0CFF80161D38FA80E1DEABBB0CAA
            4A5C0C47CEBD6478FA4EFCBD89ADE3B9BFAC7F187805F818FEFCF903CC310C0C
            0001C414AC1173539455FC1FC3A7FF0CDEE6819B350D2D0C7F70DBF83FFFC67F
            FEC9E3FB0C265A7C0C9F81396DEFE90F0C9BF6DF67E010146608CD282F3270F4
            9EF98595934141531D1852FFC05910208018B75C38C270E8C66E6BD67FAC167A
            2A76ABBF5EDCFF888F4B0B18298FA419BE3DEEFAF0F06494AB8D2CC3DC15A718
            EE7E54B814105B52696862B4FD2F0B3059B272015DFE8B81F5EB5706664E4E06
            800062F90A4CD97CDC7C474D14CC8FFEFEC7C1F0E9DF1F607AFBC9C0C1CEFE54
            D73236E6F239FDD9476E5E8B93D1D57F15E4E2339D575CFEE1AF1FDF18988009
            1C94E7910140800100EC79ECDCFED49CA00000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 15
          Version = '6.2.1.5'
        end
        object FDvShapeButton24: TAdvShapeButton
          Left = 1
          Top = 186
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 16
          Version = '6.2.1.5'
        end
        object rvenda_dinheiro: TRxCalcEdit
          Left = 108
          Top = 18
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
        end
        object rvenda_chequeav: TRxCalcEdit
          Left = 108
          Top = 42
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 1
        end
        object rvenda_chequeap: TRxCalcEdit
          Left = 108
          Top = 66
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 2
        end
        object rvenda_crediario: TRxCalcEdit
          Left = 108
          Top = 90
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 3
        end
        object rvenda_cartaocred: TRxCalcEdit
          Left = 108
          Top = 114
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 4
        end
        object rvenda_cartaodeb: TRxCalcEdit
          Left = 108
          Top = 138
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 5
        end
        object rvenda_convenio: TRxCalcEdit
          Left = 108
          Top = 162
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 6
        end
        object rvenda_total: TRxCalcEdit
          Left = 108
          Top = 240
          Width = 65
          Height = 22
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 7
        end
        object rvenda_financeira: TRxCalcEdit
          Left = 108
          Top = 186
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 8
        end
        object FDvShapeButton27: TAdvShapeButton
          Left = 1
          Top = 209
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
            F8000000097048597300000B1300000B1301009A9C1800000A4D694343505068
            6F746F73686F70204943432070726F66696C65000078DA9D53775893F7163EDF
            F7650F5642D8F0B1976C81002223AC08C81059A21092006184101240C585880A
            561415119C4855C482D50A489D88E2A028B867418A885A8B555C38EE1FDCA7B5
            7D7AEFEDEDFBD7FBBCE79CE7FCCE79CF0F8011122691E6A26A003952853C3AD8
            1F8F4F48C4C9BD80021548E0042010E6CBC26705C50000F00379787E74B03FFC
            01AF6F00020070D52E2412C7E1FF83BA50265700209100E02212E70B01905200
            C82E54C81400C81800B053B3640A009400006C797C422200AA0D00ECF4493E05
            00D8A993DC1700D8A21CA908008D0100992847240240BB00605581522C02C0C2
            00A0AC40222E04C0AE018059B632470280BD0500768E58900F4060008099422C
            CC0020380200431E13CD03204C03A030D2BFE0A95F7085B8480100C0CB95CD97
            4BD23314B895D01A77F2F0E0E221E2C26CB142611729106609E4229C979B2313
            48E7034CCE0C00001AF9D1C1FE383F90E7E6E4E1E666E76CEFF4C5A2FE6BF06F
            223E21F1DFFEBC8C020400104ECFEFDA5FE5E5D60370C701B075BF6BA95B00DA
            560068DFF95D33DB09A05A0AD07AF98B7938FC401E9EA150C83C1D1C0A0B0BED
            2562A1BD30E38B3EFF33E16FE08B7EF6FC401EFEDB7AF000719A4099ADC0A383
            FD71616E76AE528EE7CB0442316EF7E723FEC7857FFD8E29D1E234B15C2C158A
            F15889B850224DC779B952914421C995E212E97F32F11F96FD0993770D00AC86
            4FC04EB607B5CB6CC07EEE01028B0E58D27600407EF32D8C1A0B910010673432
            79F7000093BFF98F402B0100CD97A4E30000BCE8185CA894174CC608000044A0
            812AB041070CC114ACC00E9CC11DBCC01702610644400C24C03C104206E4801C
            0AA11896411954C03AD804B5B0031AA0119AE110B4C131380DE7E0125C81EB70
            170660189EC218BC86090441C8081361213A8811628ED822CE0817998E042261
            48349280A420E988145122C5C872A402A9426A915D4823F22D7214398D5C40FA
            90DBC820328AFC8ABC47319481B25103D4027540B9A81F1A8AC6A073D174340F
            5D8096A26BD11AB41E3D80B6A2A7D14BE87574007D8A8E6380D1310E668CD961
            5C8C87456089581A26C71663E55835568F35631D583776151BC09E61EF082402
            8B8013EC085E8410C26C82909047584C5843A825EC23B412BA085709838431C2
            272293A84FB4257A12F9C478623AB1905846AC26EE211E219E255E270E135F93
            48240EC992E44E0A21259032490B496B48DB482DA453A43ED210699C4C26EB90
            6DC9DEE408B280AC209791B7900F904F92FBC9C3E4B7143AC588E24C09A22452
            A494124A35653FE504A59F324299A0AA51CDA99ED408AA883A9F5A496DA07650
            2F5387A91334759A25CD9B1643CBA42DA3D5D09A696769F7682FE974BA09DD83
            1E4597D097D26BE807E9E7E983F4770C0D860D83C7486228196B197B19A718B7
            192F994CA605D39799C85430D7321B9967980F986F55582AF62A7C1591CA1295
            3A9556957E95E7AA545573553FD579AA0B54AB550FAB5E567DA64655B350E3A9
            09D416ABD5A91D55BBA936AECE5277528F50CF515FA3BE5FFD82FA630DB28685
            46A08648A35463B7C6198D2116C63265F15842D6725603EB2C6B984D625BB2F9
            EC4C7605FB1B762F7B4C534373AA66AC6691669DE671CD010EC6B1E0F039D99C
            4ACE21CE0DCE7B2D032D3F2DB1D66AAD66AD7EAD37DA7ADABEDA62ED72ED16ED
            EBDAEF75709D409D2C9DF53A6D3AF77509BA36BA51BA85BADB75CFEA3ED363EB
            79E909F5CAF50EE9DDD147F56DF4A3F517EAEFD6EFD11F373034083690196C31
            3863F0CC9063E86B9869B8D1F084E1A811CB68BA91C468A3D149A327B826EE87
            67E33578173E66AC6F1C62AC34DE65DC6B3C61626932DBA4C4A4C5E4BE29CD94
            6B9A66BAD1B4D374CCCCC82CDCACD8ACC9EC8E39D59C6B9E61BED9BCDBFC8D85
            A5459CC54A8B368BC796DA967CCB05964D96F7AC98563E567956F556D7AC49D6
            5CEB2CEB6DD6576C501B579B0C9B3A9BCBB6A8AD9BADC4769B6DDF14E2148F29
            D229F5536EDA31ECFCEC0AEC9AEC06ED39F661F625F66DF6CF1DCC1C121DD63B
            743B7C727475CC766C70BCEBA4E134C3A9C4A9C3E957671B67A1739DF33517A6
            4B90CB1297769717536DA78AA76E9F7ACB95E51AEEBAD2B5D3F5A39BBB9BDCAD
            D96DD4DDCC3DC57DABFB4D2E9B1BC95DC33DEF41F4F0F758E271CCE39DA79BA7
            C2F390E72F5E765E595EFBBD1E4FB39C269ED6306DC8DBC45BE0BDCB7B603A3E
            3D65FACEE9033EC63E029F7A9F87BEA6BE22DF3DBE237ED67E997E07FC9EFB3B
            FACBFD8FF8BFE179F216F14E056001C101E501BD811A81B3036B031F049904A5
            0735058D05BB062F0C3E15420C090D591F72936FC017F21BF96333DC672C9AD1
            15CA089D155A1BFA30CC264C1ED6118E86CF08DF107E6FA6F94CE9CCB60888E0
            476C88B81F69199917F97D14292A32AA2EEA51B453747174F72CD6ACE459FB67
            BD8EF18FA98CB93BDB6AB6727667AC6A6C526C63EC9BB880B8AAB8817887F845
            F1971274132409ED89E4C4D8C43D89E37302E76C9A339CE49A54967463AEE5DC
            A2B917E6E9CECB9E773C593559907C3885981297B23FE5832042502F184FE5A7
            6E4D1D13F2849B854F45BEA28DA251B1B7B84A3C92E69D5695F638DD3B7D43FA
            68864F4675C633094F522B79911992B923F34D5644D6DEACCFD971D92D39949C
            949CA3520D6996B42BD730B728B74F662B2B930DE479E66DCA1B9387CAF7E423
            F973F3DB156C854CD1A3B452AE500E164C2FA82B785B185B78B848BD485AD433
            DF66FEEAF9230B82167CBD90B050B8B0B3D8B87859F1E022BF45BB16238B5317
            772E315D52BA647869F0D27DCB68CBB296FD50E2585255F26A79DCF28E5283D2
            A5A5432B82573495A994C9CB6EAEF45AB9631561956455EF6A97D55B567F2A17
            955FAC70ACA8AEF8B046B8E6E2574E5FD57CF5796DDADADE4AB7CAEDEB48EBA4
            EB6EACF759BFAF4ABD6A41D5D086F00DAD1BF18DE51B5F6D4ADE74A17A6AF58E
            CDB4CDCACD03356135ED5BCCB6ACDBF2A136A3F67A9D7F5DCB56FDADABB7BED9
            26DAD6BFDD777BF30E831D153BDEEF94ECBCB52B78576BBD457DF56ED2EE82DD
            8F1A621BBABFE67EDDB847774FC59E8F7BA57B07F645EFEB6A746F6CDCAFBFBF
            B2096D52368D1E483A70E59B806FDA9BED9A77B5705A2A0EC241E5C127DFA67C
            7BE350E8A1CEC3DCC3CDDF997FB7F508EB48792BD23ABF75AC2DA36DA03DA1BD
            EFE88CA39D1D5E1D47BEB7FF7EEF31E36375C7358F579EA09D283DF1F9E48293
            E3A764A79E9D4E3F3DD499DC79F74CFC996B5D515DBD6743CF9E3F1774EE4CB7
            5FF7C9F3DEE78F5DF0BC70F422F762DB25B74BAD3DAE3D477E70FDE148AF5B6F
            EB65F7CBED573CAE74F44DEB3BD1EFD37FFA6AC0D573D7F8D72E5D9F79BDEFC6
            EC1BB76E26DD1CB825BAF5F876F6ED17770AEE4CDC5D7A8F78AFFCBEDAFDEA07
            FA0FEA7FB4FEB165C06DE0F860C060CFC3590FEF0E09879EFE94FFD387E1D247
            CC47D52346238D8F9D1F1F1B0D1ABDF264CE93E1A7B2A713CFCA7E56FF79EB73
            ABE7DFFDE2FB4BCF58FCD8F00BF98BCFBFAE79A9F372EFABA9AF3AC723C71FBC
            CE793DF1A6FCADCEDB7DEFB8EFBADFC7BD1F9928FC40FE50F3D1FA63C7A7D04F
            F73EE77CFEFC2FF784F3FB25D29F330000000467414D410000B18E7CFB519300
            0000206348524D00007A25000080830000F9FF000080E9000075300000EA6000
            003A980000176F925FC546000005AA4944415478DAA4946B6C1C5715C77F7367
            3CEB6467E3D8751C7BFDEADADEF5DAB8158590A64E1B410B544285564A854811
            8FC40D6D252488042D5FF942884A151581844288DA485529E24391DA8A47DB48
            A00425769D07B513D7F16C6CEC3876ECB5B36BCFCCCEBD33970F714DAB8A96C2
            5F3AD2D1B9BAE7771ED2318E1D3DCE472803BC087402F56BB1056002D8B377E0
            1B850FFB6C7C0420934A396E774F8E6CB68BEAEA04004150617CFC326317DFA1
            5C5EE9F83088D05AF31F2CE33849B73B9FA3AFAF17C3802008088200C380BEBE
            5EBAF3391C27E91E3B7A3CF3710119C749BAF99E1CF99E1C9EE721A544298552
            0A29259EE7F1EEBBE324DDDFFCFAF9CC7F0B584BDE4D36DB85EFF928A98854F4
            3E5352E17B3ED96C17F99E6E1C27E91E3DF2DC0720C6BD87C7314D41952978C8
            3C9149A5526EEF27BAE9E8CC1086215A6B0E0D5B181A9EFCB4FAE0120D03DBB6
            71270A8C8E8C512E973BF63FB6777D27D6BBCE83E2CD8CE3A4DC7C4F8EB6F636
            3CCF476BCD33E76DF6DC9D228EE1A7276FF0834FCAF7018E9CB378201B90696F
            238E351747C7DC23BF3AD6F1AAF9C5421CC70880DDD6898C9372DC5C3E4B4B6B
            F3FACC0F0E593CB86D131381A0100A1EFA4C0D3F1934D777F1EC3F6C1EE9DFCC
            EFDF1114AEFBB4B43693CB6771528EFB25F5A70C80F9C3AFDC9E496D4AB9D96C
            17AD2DCD04414014451C3A9FE0E11D75147CC1F024243478C2A0BF3DC1CF4F56
            185AB4F97A7F0D73B6605BA3CD0B672B34DB012D0D3598A6C5CACACAF7DA828B
            C785D6DACDE5B2A4D38DEB951F3A5BCDEE3BEB38BB2C582AC3B606CDC4BC66B1
            0427A71455B6C523776D66745570650E2E554CF6F4D7F1D27815938B3EE97423
            B95C16ADB56BB8C7B27AB398656EFB108661F0CC488AAFEE6C60C233A904F0D6
            A422DFA868764CFE3EA15081C7C03DB55CF205151F2ECD435703D439D065473C
            77628E2FA797D95EFC3EF1E210624B6E81DA6F7D93FA53DB38743EC9EEBB1A78
            BB6432E8C20D3FE2DEAE98D3E31EE7A63CC2D532FBEEAEE5C28A60D085921FB3
            23ADB8301531BF0CE381494D7B0DDBA77650F7C008156923BC31855AFC1DF503
            DFE6E0729ED38B26A515B8A755313A5DE67251B2B3CDE2DABCC7BE5DB7706649
            B05C825D2D9A91199FCB4B92CF776A86DD8833D31107469BA8FB5A0D6ADE2750
            3696F4346A2A24F67FCBD6C77EC4C02F521C482FE33786ECEC4CF0E773251C11
            F1F87D5B195A32995B82D9A2C4AB8FD895B17863CCA722636E6DB478E2C216B6
            ECAD65F554198C08A9AB104A82BAA6597DBD4238F32CCDDF7D92A727373336A3
            397FC5632392473FB795334593E532A4AA24BD4D0AF79ACFC492A4BF23C1CB7F
            B9C1A367EA69DCBB056F68956034220E20921AA1428D8E404EC578A743C2D95F
            D27EE0719E76B732335D62FF7D4D0C2E992C9760BA2459F224E520A6379D6062
            56F2C7B7A7F9433247EB130DF823652AE3125DD1A021F62B373B00D00AE45444
            3816228B2FD0F9541387176EE36F4593A532781545C726C57431A45C8959F463
            0A9EE6F0D53BC81C68425DF790730A1DAEE5D3102B8D25C3F7DC1501866D70FD
            A44F71B044633AE6E1971C067A5790AB313A0A684D0BFEFAFC1C359F4AF1E68D
            7652F75731F6B3599CAC4D6D9B209A8BD6F3A9102CB50610D5606704C59988C5
            6145FE3B49ECE62A1267035E7E2BF5EF2AA6806D2012E07CB606BBD5A2D1AB50
            782D209655D4B698C4AB115A8392FA26C0A8063B2B2896350B4311B73F9524F6
            34C1950AD519830DF96AC0C03040C706181A6283A8047241B2A15BD02613B8AF
            5688B75BDCD261A06DBDD68184444EF0CF13310BE762FAF655138CC9F559CA69
            30CCF79C4F0D18400C3ABAE99B49838D9D9AD62F5451784D12DD6992DE65A014
            584A6AAEBC1E717D38E68EFD16B210A2160D3E8E2203A2AB06353968BBDFC27D
            4512294124D73AB87A2AA6FFC716721AC40681DDC2FFA478156A6F83E692C9E4
            1B115A845891828D29183CA85015FE6F1962CD808024FF1A002BB809AE4827FE
            3F0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 17
          Version = '6.2.1.5'
        end
        object rvenda_vale: TRxCalcEdit
          Left = 108
          Top = 209
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 18
        end
      end
      object GroupBox2: TGroupBox
        Left = 376
        Top = 8
        Width = 179
        Height = 265
        Caption = 'Recebimentos'
        Enabled = False
        TabOrder = 1
        object Label27: TLabel
          Left = 27
          Top = 22
          Width = 43
          Height = 13
          Caption = 'Dinheiro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 27
          Top = 46
          Width = 76
          Height = 13
          Caption = 'Cheque '#224' Vista:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 27
          Top = 70
          Width = 80
          Height = 13
          Caption = 'Cheque '#224' Prazo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 27
          Top = 94
          Width = 37
          Height = 13
          Caption = 'Cart'#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 27
          Top = 118
          Width = 64
          Height = 13
          Caption = 'Pix/Dep'#243'sito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 27
          Top = 147
          Width = 28
          Height = 13
          Caption = 'Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Bevel16: TBevel
          Left = 5
          Top = 139
          Width = 196
          Height = 2
        end
        object Bevel17: TBevel
          Left = 4
          Top = 169
          Width = 196
          Height = 2
        end
        object Label39: TLabel
          Left = 27
          Top = 206
          Width = 30
          Height = 13
          Caption = 'Juros:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 27
          Top = 230
          Width = 54
          Height = 13
          Caption = 'Descontos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object FDvShapeButton8: TAdvShapeButton
          Left = 1
          Top = 18
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC5460000048A4944415478DA004D00B2
            FF01CFEAD600A3BFA200EFEEF8002E1E2A00EDF6E300DDDFEB002B193C00D6E6
            C100151315002A2F2400C6C3CA3DB6D4B5335B3C5CC4D7DECBCC372C4400D1D8
            D4006F5F7000D7E8D40021152500028885010B6064646460616102E27F4A6F3E
            3EB1DF7AEC7292B086B460805990F6D3A70FDF72F1733E7AFDF1F5C2BFBFFF6D
            E560E3B8CBC2CCFC1FA40F2080500C6365616560626464FBFAF98BDDC9B3AF13
            FEFDB6F7F8C17B5958C99E81E115E70986974C6F1998E4388579C52584AFBE39
            6628C624DF3A7DFD84CB62E212CB14C5D426030410D05066A001CC0C3FFFFC94
            BE7EFF7A389F3853848AAEA8C9DD6BAF19BEFF916614168966F870E62D030BDB
            0D0666DE9D0C9F78AF33BCE57DCC20C72BC16023ABCF2D26AC68B16ECB763E16
            03B6290001004D00B2FF04E9EFE823FBFEF88C191A0D45292B0B0BEC18E100FA
            01F7002039EE00EFE1CF00EFDA0F0006022B0010043B0024164200FDF1DF0003
            E3E1005C4D4200171B100004FF0A00B607B9FB0CED08FF02004D00B2FF04D4DB
            D444E5F6E350915E8A00EA00DC00CFF0F900D7FDD500F405FD00FF1FF2001212
            E30009F5E80020F5FF0005E82F00111D3500F7E613001405150011001100C1CE
            CA00FCF80003F508F50002004D00B2FF03E715EA32FB07F94DF0ECED0013FF2C
            0035163F00280A2600FBFAF20009FA0B0047106600551D6F0048224A0005030C
            00B4D2ED00FDFE0500F407CF008CC28400C4E2C300EDF7EB15140A1AC6028845
            5896E3CDC76FAF196E3CB8C6C0CDCDC7F09BD990C148DC882145D09A81519081
            8185991D1E417F7EFC667870E93AC349C6830C677FDF66B0D0B56008540B6038
            76F338E3F5FB77F5000288458C5B7EFDCFDF4C47BE0BFCB43977E934C3E73FDF
            19C439F8190478F51838A0067DF8FE9661CBB5A50C8BD6EE6010110A66B0560E
            63D017FEC7E063E900967FCCF290E1D68F67EC0001004D00B2FF03EC0BEE0007
            01086E5E425D1835253500D6ECDB00CAD1C6000C090A000106FF00A4C8A00096
            C7980001070300643B6B0010042000ED0915001F0F0E001F1E0800BFD8BF00BB
            C4C2F326192FB202004D00B2FF0109580D000C0C09CF493B4130341A3E003923
            3800F3FCF000C0DDBE00E8F2E5002F1E2E004E3052001C0A1F00FDFFFD009BB3
            D600C5E3FD001507C4001009F5F4FCFA049E32293B93161120DC02882533209D
            E1CBCFAF3BCE3FBEA4CDF8FF042B3B1F0B83B1841943967D1E83302730EA99D8
            1818FE41C2ECDD8F6F0C172E9F6178FEF4FD4B1543AE05064AE693C584659FFE
            F8FD87E1F79F9F0C0001C478E6E71586272F9E305C38715DFFDEBB7BCD7F189F
            FB781A79335AAADA3328F2293030313132BCFAF68661D3E5350CC74F5EB9A52C
            6272D756DAA4849B5FF0DA0FF60F0C7F8016FDFE0BCA7EDC0C0001C478E8C349
            8647CF1F317C79FC9B41595E89A1657DB5173F8F689389B8B6B1ADB125C3E907
            57186E5D78B4475E407189A3AECD160121FEB7CCC01CF3FED56F86BF3CDF808E
            66821B061040F0BCF907181EDF7F7D67606563DDE6A0EBB1F7E19DCB811B776D
            D795E7D77E1E6E163FE7EFCF3F3F783884806ABE3170B270602B1F1800020C00
            1CFD9FF5CFFB79FB0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 8
          Version = '6.2.1.5'
        end
        object FDvShapeButton9: TAdvShapeButton
          Left = 1
          Top = 42
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 9
          Version = '6.2.1.5'
        end
        object FDvShapeButton10: TAdvShapeButton
          Left = 1
          Top = 66
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 10
          Version = '6.2.1.5'
        end
        object FDvShapeButton12: TAdvShapeButton
          Left = 1
          Top = 90
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000004A54944415478DA004D00B2
            FF01D4D7D800FEF1E000DECEA50022346F00F0DCC200D6D3A40023385C00F1E8
            DA002A3A6600E6D3BD00DDDDA800292B6C10EAD9AD40F4DFBB1B18478AD51D21
            45C00801FE00FFFFFF00000000000288054C42D80C8C8CCC409219CC6562E264
            FEFDEBA7D2CB07C7E5FEFEFC622A2C28E2F6FFFB4605090B6E79563707A60FA7
            177F7FCF241226A862BCE5EF9F9F60FD0001004D00B2FF040202030003060A00
            FFFF0505F5F5F60AFEFBF83D0502FE40EEE8B8271C1B193C1006F010113D4300
            1BF2FF00F4EBAE008419FC00EA162A005006E109F4C19781E71C88C00201FCF4
            00FFFE0002004D00B2FF04F2F3F114EBDDC06A0803D450F8D355241806FC0A2D
            3819030B25130005193E00020C3600FE021B00FCB39E0009AFD40003390D00C8
            23FB003914F9003D0AEA32D2CFB252071D2CA2FE00000002004D00B2FF03472A
            D4B811E5A45F1DF2E61915FEF3070A050602FF071D00091A2D000400E500FDF8
            EC0001082A0000101800F701F100310A0400511906003801EC001103EE00E6E1
            FF130A225BA8060D1BFC02004D00B2FF0208FBC62C1B050300F0E20800F8FBFF
            00FF0F11000F212400FE050100FDFAE50003031300FE010900011013000B4841
            00183326002608FA000EFFF40005130000090BD13EF1E8CD4901F7E80002004D
            00B2FF02FC083CD10820FB001A4401000F3D190000210B00F808F800050B1200
            FD0312000006210004FDF30002FEE10000FEEA00FF01F000FDFDEE00E7E70500
            E2DD080002F9F500F5D9B75E0003120002888955366CC593DF0C0C42BA110C02
            6A3D0C124A260C3F7E3E04622106363E470606765160D47E61F8FAE515C38387
            8F184E9EB8C0F0E8F11B60A4FF60F8C5F89B41599581418E67AFFFA7F7F73C01
            02004D00B2FF020B0112C8FBF51BEEF6F4D7000200E80001F1F700FBF5EF0000
            062200F7FD2E00E3E5EA00DBCCC60000F1F000F9E5E5001F1509001613030006
            FE000001000700F9F902001307F601F7EAE21F02004D00B2FF040C2938D1E8EB
            2FCD00F4B745EBDAFA00F5FD1600040E5E00FC011600DDD9D00007FFE700221F
            0F0007FDF1002828010000FDF300FBF8F900F7FDFF0008FDF600E0E70900E2F9
            45C40F212CC402004D00B2FF0402EBD8000B0E33B4E8EDCA4504060800FE0C27
            00FAFC21001A09140023221B00FBE9EF0004F9E1000207E10000FFE800F0E4F0
            00E6EBFF00D3F029E8F8FA35C10B0B41A20A0E09C3080A10F302004D00B2FF04
            0D081200FC112FBAECE11AF4271B1C0C0B1F2B0008142800EAE5E700F8F1DD00
            150CED00F9F6DE00DFDAD200DFDFF1F9EFF849BAFE0849B3030E1BB6171421E5
            00F5EE00F5F4E300FFFEFC000288E5DDFBB70C4C2C8237BE33E8ED6117640D60
            E7D362F8F79B9F4146FC13C3BDCFF719CEDCBEF8EDD9E31FE799993CF7F1F0D9
            2CE512FC728B8947E7FFCFAFF7805EFECAF0EFEF2FA08B411990910120805884
            24F5199859B9187E7EB45B77FEEC5657B97F37B83FBD3BF6FBFECD4B0FFFFFE6
            DAC6CA1BB28E5F48F0389790F02FC69F7F19BE7F7B07B4EC2BD400540010402C
            EF7EBC6460F8014C010AE68BBFB18A3D3D73F4A4172BB7E44506D1984DBC7F5E
            7CE4619361F8F8EB33C3BF3F5F81698D055C2A303260070001060025B2BA1176
            8562600000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 11
          Version = '6.2.1.5'
        end
        object FDvShapeButton14: TAdvShapeButton
          Left = 1
          Top = 114
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000023149444154388D8593CD4B945114C67F77DE77669A699C1C6DD2B111
            9D489292843692106D22AA450B350C2A025BB869D126EABF2884D68A0C989BB6
            4141F461B8485C0CA40B03C1B172EC436DE69D6966EE7B4F8BF16BF2EB81C33D
            70EF79CE7D9E7BAE621DC3C3C994D7EB6D161140101144585F2B512814FE0402
            81DE81813B531B756A234926C757FA6EF4D46A57D81502CFC7C6D0BABCA294BA
            3C38786F0AC0B3B92F8276855279F7F85B72510ABACF77454A4EEEF5D3ABD71E
            5CAFAFB7ECAA1607C0B26C3EBE79CBE9572F6B4FD8F693D678FCDC264145FBDE
            504AD17DE1226BD353E4F279BEB92ECAE3B9B24DC2FEDD8BCE0ABA98C78DC770
            6FDF65B1AC657675B5A7CA83BD50CA66087FEE85E5117EFEFA4DA131C6525FFF
            DAE3F9F98903094AD90CA1999B38B240DD97119A0BEF683BD58EF17A4B00FB7A
            5029EEC7913492D6F8558470E212B58D4D9BE7B711986ACD7F32D4CCF6E3C822
            9276F1A9082B6787A0B10BED1A8C31FF136CDD40EB32C1D42D1CDF5764C1C592
            080BED43D8E10EB29965B23E2197CB599D9D9D353B088C117E2C7E229A68C59F
            FA4E5E0799083DA4BCA4C9CD7DC0B27D34374531C62022A68A4004B46BD0D949
            CAE100338533BC9F3B8AE34F531BC9133BDEC2B186382D8918D353936E2A9572
            36098C115C23384E81F117B3F842718C7592BA44948E9636A20D3102C1109665
            73387408A5D44E136D4B71241CE4FEA367B8462AD3AD3C28A5AA063DE8B776BE
            42B1585C4A8E8EFAD6B5ED88CA17DFF24A6B9D01F80710133F0B484C1B3A0000
            000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 12
          Version = '6.2.1.5'
        end
        object rrec_dinheiro: TRxCalcEdit
          Left = 108
          Top = 18
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
        end
        object rrec_chequeav: TRxCalcEdit
          Left = 108
          Top = 42
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 1
        end
        object rrec_chequeap: TRxCalcEdit
          Left = 108
          Top = 66
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 2
        end
        object rrec_cartao: TRxCalcEdit
          Left = 108
          Top = 90
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 3
        end
        object rrec_boleto: TRxCalcEdit
          Left = 108
          Top = 114
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 4
        end
        object rrec_total: TRxCalcEdit
          Left = 108
          Top = 144
          Width = 65
          Height = 22
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 5
        end
        object rrec_juros: TRxCalcEdit
          Left = 108
          Top = 202
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 6
        end
        object rrec_desconto: TRxCalcEdit
          Left = 108
          Top = 226
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 7
        end
      end
      object GroupBox3: TGroupBox
        Left = 568
        Top = 8
        Width = 201
        Height = 137
        Caption = 'Pagamentos'
        Enabled = False
        TabOrder = 2
        object Label44: TLabel
          Left = 27
          Top = 22
          Width = 55
          Height = 13
          Caption = 'Com Caixa:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 27
          Top = 46
          Width = 57
          Height = 13
          Caption = 'Com Banco:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 27
          Top = 70
          Width = 88
          Height = 13
          Caption = 'Cheque Terceiros:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label50: TLabel
          Left = 56
          Top = 110
          Width = 28
          Height = 13
          Caption = 'Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Bevel18: TBevel
          Left = 5
          Top = 99
          Width = 185
          Height = 2
        end
        object FDvShapeButton11: TAdvShapeButton
          Left = 1
          Top = 18
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC5460000048A4944415478DA004D00B2
            FF01CFEAD600A3BFA200EFEEF8002E1E2A00EDF6E300DDDFEB002B193C00D6E6
            C100151315002A2F2400C6C3CA3DB6D4B5335B3C5CC4D7DECBCC372C4400D1D8
            D4006F5F7000D7E8D40021152500028885010B6064646460616102E27F4A6F3E
            3EB1DF7AEC7292B086B460805990F6D3A70FDF72F1733E7AFDF1F5C2BFBFFF6D
            E560E3B8CBC2CCFC1FA40F2080500C6365616560626464FBFAF98BDDC9B3AF13
            FEFDB6F7F8C17B5958C99E81E115E70986974C6F1998E4388579C52584AFBE39
            6628C624DF3A7DFD84CB62E212CB14C5D426030410D05066A001CC0C3FFFFC94
            BE7EFF7A389F3853848AAEA8C9DD6BAF19BEFF916614168966F870E62D030BDB
            0D0666DE9D0C9F78AF33BCE57DCC20C72BC16023ABCF2D26AC68B16ECB763E16
            03B6290001004D00B2FF04E9EFE823FBFEF88C191A0D45292B0B0BEC18E100FA
            01F7002039EE00EFE1CF00EFDA0F0006022B0010043B0024164200FDF1DF0003
            E3E1005C4D4200171B100004FF0A00B607B9FB0CED08FF02004D00B2FF04D4DB
            D444E5F6E350915E8A00EA00DC00CFF0F900D7FDD500F405FD00FF1FF2001212
            E30009F5E80020F5FF0005E82F00111D3500F7E613001405150011001100C1CE
            CA00FCF80003F508F50002004D00B2FF03E715EA32FB07F94DF0ECED0013FF2C
            0035163F00280A2600FBFAF20009FA0B0047106600551D6F0048224A0005030C
            00B4D2ED00FDFE0500F407CF008CC28400C4E2C300EDF7EB15140A1AC6028845
            5896E3CDC76FAF196E3CB8C6C0CDCDC7F09BD990C148DC882145D09A81519081
            8185991D1E417F7EFC667870E93AC349C6830C677FDF66B0D0B56008540B6038
            76F338E3F5FB77F5000288458C5B7EFDCFDF4C47BE0BFCB43977E934C3E73FDF
            19C439F8190478F51838A0067DF8FE9661CBB5A50C8BD6EE6010110A66B0560E
            63D017FEC7E063E900967FCCF290E1D68F67EC0001004D00B2FF03EC0BEE0007
            01086E5E425D1835253500D6ECDB00CAD1C6000C090A000106FF00A4C8A00096
            C7980001070300643B6B0010042000ED0915001F0F0E001F1E0800BFD8BF00BB
            C4C2F326192FB202004D00B2FF0109580D000C0C09CF493B4130341A3E003923
            3800F3FCF000C0DDBE00E8F2E5002F1E2E004E3052001C0A1F00FDFFFD009BB3
            D600C5E3FD001507C4001009F5F4FCFA049E32293B93161120DC02882533209D
            E1CBCFAF3BCE3FBEA4CDF8FF042B3B1F0B83B1841943967D1E83302730EA99D8
            1818FE41C2ECDD8F6F0C172E9F6178FEF4FD4B1543AE05064AE693C584659FFE
            F8FD87E1F79F9F0C0001C478E6E71586272F9E305C38715DFFDEBB7BCD7F189F
            FB781A79335AAADA3328F2293030313132BCFAF68661D3E5350CC74F5EB9A52C
            6272D756DAA4849B5FF0DA0FF60F0C7F8016FDFE0BCA7EDC0C0001C478E8C349
            8647CF1F317C79FC9B41595E89A1657DB5173F8F689389B8B6B1ADB125C3E907
            57186E5D78B4475E407189A3AECD160121FEB7CCC01CF3FED56F86BF3CDF808E
            66821B061040F0BCF907181EDF7F7D67606563DDE6A0EBB1F7E19DCB811B776D
            D795E7D77E1E6E163FE7EFCF3F3F783884806ABE3170B270602B1F1800020C00
            1CFD9FF5CFFB79FB0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 4
          Version = '6.2.1.5'
        end
        object FDvShapeButton13: TAdvShapeButton
          Left = 1
          Top = 42
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 5
          Version = '6.2.1.5'
        end
        object FDvShapeButton15: TAdvShapeButton
          Left = 1
          Top = 66
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 6
          Version = '6.2.1.5'
        end
        object RPAG_DINHEIRO: TRxCalcEdit
          Left = 124
          Top = 18
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
        end
        object RPAG_CHEQUEAV: TRxCalcEdit
          Left = 124
          Top = 42
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 1
        end
        object RPAG_CHEQUEAP: TRxCalcEdit
          Left = 124
          Top = 66
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 2
        end
        object RPAG_TOTAL: TRxCalcEdit
          Left = 124
          Top = 107
          Width = 65
          Height = 22
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 274
        Width = 549
        Height = 102
        Caption = 'Demonstrativo financeiro'
        TabOrder = 3
        object Grid: TStringGrid
          Left = 2
          Top = 15
          Width = 545
          Height = 85
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          ColCount = 1
          DefaultColWidth = 754
          DefaultRowHeight = 12
          FixedColor = clBlack
          FixedCols = 0
          RowCount = 5000
          FixedRows = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Lucida Console'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goRangeSelect, goRowSelect]
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object GroupBox5: TGroupBox
        Left = 190
        Top = 8
        Width = 179
        Height = 265
        Caption = 'Ordem de Servi'#231'o'
        Enabled = False
        TabOrder = 4
        object Label1: TLabel
          Left = 27
          Top = 22
          Width = 43
          Height = 13
          Caption = 'Dinheiro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 27
          Top = 46
          Width = 76
          Height = 13
          Caption = 'Cheque '#224' Vista:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 27
          Top = 70
          Width = 80
          Height = 13
          Caption = 'Cheque '#224' Prazo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 27
          Top = 94
          Width = 47
          Height = 13
          Caption = 'Credi'#225'rio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 27
          Top = 118
          Width = 75
          Height = 13
          Caption = 'Cart'#227'o Cr'#233'dito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 27
          Top = 142
          Width = 71
          Height = 13
          Caption = 'Cart'#227'o D'#233'bito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 30
          Top = 240
          Width = 28
          Height = 13
          Caption = 'Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Bevel14: TBevel
          Left = 5
          Top = 234
          Width = 169
          Height = 2
        end
        object FDvShapeButton16: TAdvShapeButton
          Left = 1
          Top = 18
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC5460000048A4944415478DA004D00B2
            FF01CFEAD600A3BFA200EFEEF8002E1E2A00EDF6E300DDDFEB002B193C00D6E6
            C100151315002A2F2400C6C3CA3DB6D4B5335B3C5CC4D7DECBCC372C4400D1D8
            D4006F5F7000D7E8D40021152500028885010B6064646460616102E27F4A6F3E
            3EB1DF7AEC7292B086B460805990F6D3A70FDF72F1733E7AFDF1F5C2BFBFFF6D
            E560E3B8CBC2CCFC1FA40F2080500C6365616560626464FBFAF98BDDC9B3AF13
            FEFDB6F7F8C17B5958C99E81E115E70986974C6F1998E4388579C52584AFBE39
            6628C624DF3A7DFD84CB62E212CB14C5D426030410D05066A001CC0C3FFFFC94
            BE7EFF7A389F3853848AAEA8C9DD6BAF19BEFF916614168966F870E62D030BDB
            0D0666DE9D0C9F78AF33BCE57DCC20C72BC16023ABCF2D26AC68B16ECB763E16
            03B6290001004D00B2FF04E9EFE823FBFEF88C191A0D45292B0B0BEC18E100FA
            01F7002039EE00EFE1CF00EFDA0F0006022B0010043B0024164200FDF1DF0003
            E3E1005C4D4200171B100004FF0A00B607B9FB0CED08FF02004D00B2FF04D4DB
            D444E5F6E350915E8A00EA00DC00CFF0F900D7FDD500F405FD00FF1FF2001212
            E30009F5E80020F5FF0005E82F00111D3500F7E613001405150011001100C1CE
            CA00FCF80003F508F50002004D00B2FF03E715EA32FB07F94DF0ECED0013FF2C
            0035163F00280A2600FBFAF20009FA0B0047106600551D6F0048224A0005030C
            00B4D2ED00FDFE0500F407CF008CC28400C4E2C300EDF7EB15140A1AC6028845
            5896E3CDC76FAF196E3CB8C6C0CDCDC7F09BD990C148DC882145D09A81519081
            8185991D1E417F7EFC667870E93AC349C6830C677FDF66B0D0B56008540B6038
            76F338E3F5FB77F5000288458C5B7EFDCFDF4C47BE0BFCB43977E934C3E73FDF
            19C439F8190478F51838A0067DF8FE9661CBB5A50C8BD6EE6010110A66B0560E
            63D017FEC7E063E900967FCCF290E1D68F67EC0001004D00B2FF03EC0BEE0007
            01086E5E425D1835253500D6ECDB00CAD1C6000C090A000106FF00A4C8A00096
            C7980001070300643B6B0010042000ED0915001F0F0E001F1E0800BFD8BF00BB
            C4C2F326192FB202004D00B2FF0109580D000C0C09CF493B4130341A3E003923
            3800F3FCF000C0DDBE00E8F2E5002F1E2E004E3052001C0A1F00FDFFFD009BB3
            D600C5E3FD001507C4001009F5F4FCFA049E32293B93161120DC02882533209D
            E1CBCFAF3BCE3FBEA4CDF8FF042B3B1F0B83B1841943967D1E83302730EA99D8
            1818FE41C2ECDD8F6F0C172E9F6178FEF4FD4B1543AE05064AE693C584659FFE
            F8FD87E1F79F9F0C0001C478E6E71586272F9E305C38715DFFDEBB7BCD7F189F
            FB781A79335AAADA3328F2293030313132BCFAF68661D3E5350CC74F5EB9A52C
            6272D756DAA4849B5FF0DA0FF60F0C7F8016FDFE0BCA7EDC0C0001C478E8C349
            8647CF1F317C79FC9B41595E89A1657DB5173F8F689389B8B6B1ADB125C3E907
            57186E5D78B4475E407189A3AECD160121FEB7CCC01CF3FED56F86BF3CDF808E
            66821B061040F0BCF907181EDF7F7D67606563DDE6A0EBB1F7E19DCB811B776D
            D795E7D77E1E6E163FE7EFCF3F3F783884806ABE3170B270602B1F1800020C00
            1CFD9FF5CFFB79FB0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 7
          Version = '6.2.1.5'
        end
        object FDvShapeButton17: TAdvShapeButton
          Left = 1
          Top = 42
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 8
          Version = '6.2.1.5'
        end
        object FDvShapeButton18: TAdvShapeButton
          Left = 1
          Top = 66
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000011000000100806000000F03194
            5F000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000003CA4944415478DA62DCB32C
            950106D8B904197EB1AB316CDB778B8183839D4158589141904392E1F183E70C
            8F9FBF64BDFEEE57E77B76E94C662E5EE68F5FBF7DF978ED8A606D864D024000
            B130100118FFFF637BF283A5F69392559AA68921C78BF7EF196EDEF920F8F7ED
            37863FFFFF0A0204105E4318194106FC67BFFDFE4FE92B718D023D6B7DEE17CF
            DE325C3D739181EDFB3F867F9FDE30FCFB2FCE0C10404C58B402251819989980
            52FFFF735E78FA25EB219742919DA329CFBF2FEF19CE9CBBC4F0F7D31706C11F
            EF18583FBE6060FAF787112080505CF2FF3F03030BF33F061ED6EF2C9F3EFCD4
            BFF9F86ECC0B3EA3306B4F1BC12F1FBF30EC38749DE1EB872F0CA20C3F1998DF
            3D6610E7FCC9202CC073172080500D01BA828FEB3F8334F7438919DB1E96FFE3
            9109750C3367F8F7F317C3AA03F719BEBE7AC320FAF73303E3C7670C028C1F7E
            FB85DA4E959593DA0510402C4C4CC8E6FCE7FDF3FB8B2E17D78F700589DF2E0A
            5A8A0CDC6F6E302CDD7E99E13D8B2C83E8BF5F0CFF5E3D6010E7FEF9292AD06E
            A2959551EB878F1F7F020410CBFBD777A181C8C8C9CB271C2C2CF6BBCED95B5D
            4E4E599C79FFE1D70CFB765F627875E92603A7AC31C35F7E6D063549969B613E
            B67D9666BA8B3E7DFDF113A4172080585859F9C086FCFBFB83FBCFFFF7B6328A
            9A8AFC92060C120ACF18FEFCD9CBB07FF715866FDFDE327CBBB995415CF3CBEF
            B8CCF24E1303DDA5BF7EFDFCF5EFDF7F6038FE670008004500BAFF042A325500
            01020300060C120CDDDFA6330D160F00EEEADF000705DF0043450200FAEC0400
            FB950000DCE918EB3B3322A7221E15B9F8FBF9FAFDFDFB000504FF0000090600
            0288854F401AE419E63FFFBFAA08087FD67FFDEC01C3C6897B189CDCFE33A858
            7D62B0327AC95090A877E339635E23E3DFBF3B7FFDFEF581EDEF2FB00B1881A9
            809D9995012080586E9CDBC8C0CEC9C3C5C3FF27809FF929C3F5BDD71974556F
            32284A03D3CB931F0CCF8141262BEEBC5744D476DBC58B073EFDFDFB1718878C
            C098FC0F4D16FF190002884546DB96E1C689D5BC7F7FDC49FEF7EE068324DF7B
            0611A0E3AE5F606078F74DEAEB6F36A7BD0212F6CBB839BE7DB2D65163F8CDC5
            CB000A0B640010402C3CFC62B23F9F9E597EFFFA750E316126061E16B50F8FDF
            FB2D601336DCCD28C8F692E1CBEB974CAC9CAF5919FF00C38D93E123230BC31F
            065443000288E5FDBB27864F9E5DB7E6E395FEC0A6DE5CF193F9F7CECF1F9EBD
            1291D4FAC1F4E3F53F46A677E0A40C4A8860BD8CFF31320A4000B1F032B2EDE5
            57F42F90D389BEFDF7EB876D4CACEC400F83DCCBC8C0C0F09F984CCE00106000
            18F6795CFB59FE7E0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 9
          Version = '6.2.1.5'
        end
        object FDvShapeButton19: TAdvShapeButton
          Left = 1
          Top = 90
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000013000000130806000000725036
            CC000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000004EE4944415478DA627C71E9
            0DC3BF1F1F183EBC7AC1F0F1EF5F061E313E8657072EABF17D3CD7FAFACC69F9
            2FE97591FF45C4EF32FCFECDC0C0F09FE13F0B2B03CBA2A50C3A71D10C3FB9B9
            1918807A6000208098600C46264686BFFF1918DE5FBC98A5A52EB0DDC448D64F
            E4C35BD3DF376F9B0AFFF9CB20F8FD3B83E0AFDF0CEC8F1E30FC7BF39A819185
            99011D000410D83046464686FF4CCC0C5F6FDD8F5714976897305453FA78FB35
            DBC3C7AF18185FBF90E263F9C7A0A228CEA0242FC2C0CDF68FE1EFB7AF204D18
            860104101313D090FFCCCC4C6F2E9E2DD6E0FF3E4546839FEFD3F98B0CA78E5D
            64D0F0B567103E77AAFCC5E933C1CC5C9C0C2C9C9C4017B180BCC1800D000410
            D0CEFF0C778F9F48E07B73A7554E4192FDCB96550C97375F6290F67466D072D6
            6050D97546ECE0B64D73AFB0FC661052565EFB1BE855266666062690A1680020
            80983D8D0DF438F72F996BCCF24CF0C3E57B0C97779E6450D452669073B467F8
            C62EC0C0252EC520C5F68FE3D186B54E4F19D9AEB1C9283CFA74F4B4A3B099F1
            2F167E814F0CFFFF313001C31B14E60001C4C2CECCA6C278EA9CD4933FCF19AE
            7E6360D0D656629012E760F87BEB38C37F656586AF12EA0CDCB6060C767F1944
            F61C383997FFF3BB9BAA8A6C76D7A7361FE70BCE8E60E1E27EC4F00F12A30001
            004D00B2FF037D7C85DECBD4D9FBE31F34E3F6131EF518E7D61D1205FB00FE09
            F70004FB010001FE0500FE0F1600001F21002406F40C19FBE01F180D0200F4BD
            BE1DE30D21D7030C0FCEFAF1F100FBF4F500028805188F3F19C5249A24031219
            58BEFC16BCB89461F1DF0B07BD5558FE00F91C0C0CBF99197EFC676360529466
            F825CCCEC0F1998FE1DB37668677C20ADF7875F5AF73282833FCFFF513EC3280
            0062F9FFFF3F032330E1FDFBF28981E51FEB7BC9A8F4D82BAB1897309CDAE2A5
            620E0A0F5606563616865F374F32FC79F38181C5CB8EE1E2B2C37F1F5B06F58B
            5A381EFDC8C60E4FB8000184886360BA01C52CCBFFBFEFA513D2A2AF9B44AC7A
            72F1D9BF7F2F2E317C3CB88FE1ED85330C0296BA0C77AE3C6338F8E8FD4B61BF
            904E0666E6FFFF8029FD1F30B183304000810DFB0F4C7F4CCC4C0CFF8059EAFB
            FDE70C7F1EBCFBC0A1EB587AE42DF7F70B07EF307CBC738D414A9287E1E1B113
            0C670F9C63F8A4A7C77EF7D96DA95F2FEE31707C7DCDC0FE0582010288859915
            E80D062686B787F632B0BCFDC000F236301131FCFBFEC55FF0EB476E01C13F0C
            B2BCFF186E9F79C4B09D559CE1A78D3583B5B383F08E03C7BB84D8D9134539D8
            DEFDFA03CCB7407D0001C4EC6969CBF01BC8F8FEE30BC31F012E86DF7C1C0CBF
            0538197E70326B883C3A1BA8F4E717C3895F1CBF6E9886CE9188AF697ECBCC7C
            E4F9C38B32EA2AAAF68F9FBC62131016DF05CA8E40AF310004100B2FB7088380
            893403385B012138F840909171C96B7149C98D572EAA719A386C12D0D7DBCACB
            26F647E4EF7B86BB77AF1E7BC6F06406C33FE6C2E3A70E1DD3D7D15DC3C32BCC
            0010402C5ABA5698990C68262B0BF33F3E31B9CEEF36BE0CFF7E7E6360FCF999
            E12FE32F863FBF7F31F0F1705F109552087AF0F445C79307573AA5C5445F098B
            481F02082016902456F09F99E1EF7760E9F0F513032485FF874BFD0526053E7E
            E1673A4252E9F76E5DAF3B76FC44F96F06E6C70001C4C24026F807B4E02FC39F
            EF62625255FF99D933CE5D38990B10404C0C1482DFBF7FFD9791959D6E6BE3B0
            0420C000CEA1E03031F1160F0000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 10
          Version = '6.2.1.5'
        end
        object FDvShapeButton20: TAdvShapeButton
          Left = 1
          Top = 114
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000004A54944415478DA004D00B2
            FF01D4D7D800FEF1E000DECEA50022346F00F0DCC200D6D3A40023385C00F1E8
            DA002A3A6600E6D3BD00DDDDA800292B6C10EAD9AD40F4DFBB1B18478AD51D21
            45C00801FE00FFFFFF00000000000288054C42D80C8C8CCC409219CC6562E264
            FEFDEBA7D2CB07C7E5FEFEFC622A2C28E2F6FFFB4605090B6E79563707A60FA7
            177F7FCF241226A862BCE5EF9F9F60FD0001004D00B2FF040202030003060A00
            FFFF0505F5F5F60AFEFBF83D0502FE40EEE8B8271C1B193C1006F010113D4300
            1BF2FF00F4EBAE008419FC00EA162A005006E109F4C19781E71C88C00201FCF4
            00FFFE0002004D00B2FF04F2F3F114EBDDC06A0803D450F8D355241806FC0A2D
            3819030B25130005193E00020C3600FE021B00FCB39E0009AFD40003390D00C8
            23FB003914F9003D0AEA32D2CFB252071D2CA2FE00000002004D00B2FF03472A
            D4B811E5A45F1DF2E61915FEF3070A050602FF071D00091A2D000400E500FDF8
            EC0001082A0000101800F701F100310A0400511906003801EC001103EE00E6E1
            FF130A225BA8060D1BFC02004D00B2FF0208FBC62C1B050300F0E20800F8FBFF
            00FF0F11000F212400FE050100FDFAE50003031300FE010900011013000B4841
            00183326002608FA000EFFF40005130000090BD13EF1E8CD4901F7E80002004D
            00B2FF02FC083CD10820FB001A4401000F3D190000210B00F808F800050B1200
            FD0312000006210004FDF30002FEE10000FEEA00FF01F000FDFDEE00E7E70500
            E2DD080002F9F500F5D9B75E0003120002888955366CC593DF0C0C42BA110C02
            6A3D0C124A260C3F7E3E04622106363E470606765160D47E61F8FAE515C38387
            8F184E9EB8C0F0E8F11B60A4FF60F8C5F89B41599581418E67AFFFA7F7F73C01
            02004D00B2FF020B0112C8FBF51BEEF6F4D7000200E80001F1F700FBF5EF0000
            062200F7FD2E00E3E5EA00DBCCC60000F1F000F9E5E5001F1509001613030006
            FE000001000700F9F902001307F601F7EAE21F02004D00B2FF040C2938D1E8EB
            2FCD00F4B745EBDAFA00F5FD1600040E5E00FC011600DDD9D00007FFE700221F
            0F0007FDF1002828010000FDF300FBF8F900F7FDFF0008FDF600E0E70900E2F9
            45C40F212CC402004D00B2FF0402EBD8000B0E33B4E8EDCA4504060800FE0C27
            00FAFC21001A09140023221B00FBE9EF0004F9E1000207E10000FFE800F0E4F0
            00E6EBFF00D3F029E8F8FA35C10B0B41A20A0E09C3080A10F302004D00B2FF04
            0D081200FC112FBAECE11AF4271B1C0C0B1F2B0008142800EAE5E700F8F1DD00
            150CED00F9F6DE00DFDAD200DFDFF1F9EFF849BAFE0849B3030E1BB6171421E5
            00F5EE00F5F4E300FFFEFC000288E5DDFBB70C4C2C8237BE33E8ED6117640D60
            E7D362F8F79B9F4146FC13C3BDCFF719CEDCBEF8EDD9E31FE799993CF7F1F0D9
            2CE512FC728B8947E7FFCFAFF7805EFECAF0EFEF2FA08B411990910120805884
            24F5199859B9187E7EB45B77FEEC5657B97F37B83FBD3BF6FBFECD4B0FFFFFE6
            DAC6CA1BB28E5F48F0389790F02FC69F7F19BE7F7B07B4EC2BD400540010402C
            EF7EBC6460F8014C010AE68BBFB18A3D3D73F4A4172BB7E44506D1984DBC7F5E
            7CE4619361F8F8EB33C3BF3F5F81698D055C2A303260070001060025B2BA1176
            8562600000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 11
          Version = '6.2.1.5'
        end
        object FDvShapeButton21: TAdvShapeButton
          Left = 1
          Top = 138
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000130000000F08060000000644F4
            2C000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000004A54944415478DA004D00B2
            FF01D4D7D800FEF1E000DECEA50022346F00F0DCC200D6D3A40023385C00F1E8
            DA002A3A6600E6D3BD00DDDDA800292B6C10EAD9AD40F4DFBB1B18478AD51D21
            45C00801FE00FFFFFF00000000000288054C42D80C8C8CCC409219CC6562E264
            FEFDEBA7D2CB07C7E5FEFEFC622A2C28E2F6FFFB4605090B6E79563707A60FA7
            177F7FCF241226A862BCE5EF9F9F60FD0001004D00B2FF040202030003060A00
            FFFF0505F5F5F60AFEFBF83D0502FE40EEE8B8271C1B193C1006F010113D4300
            1BF2FF00F4EBAE008419FC00EA162A005006E109F4C19781E71C88C00201FCF4
            00FFFE0002004D00B2FF04F2F3F114EBDDC06A0803D450F8D355241806FC0A2D
            3819030B25130005193E00020C3600FE021B00FCB39E0009AFD40003390D00C8
            23FB003914F9003D0AEA32D2CFB252071D2CA2FE00000002004D00B2FF03472A
            D4B811E5A45F1DF2E61915FEF3070A050602FF071D00091A2D000400E500FDF8
            EC0001082A0000101800F701F100310A0400511906003801EC001103EE00E6E1
            FF130A225BA8060D1BFC02004D00B2FF0208FBC62C1B050300F0E20800F8FBFF
            00FF0F11000F212400FE050100FDFAE50003031300FE010900011013000B4841
            00183326002608FA000EFFF40005130000090BD13EF1E8CD4901F7E80002004D
            00B2FF02FC083CD10820FB001A4401000F3D190000210B00F808F800050B1200
            FD0312000006210004FDF30002FEE10000FEEA00FF01F000FDFDEE00E7E70500
            E2DD080002F9F500F5D9B75E0003120002888955366CC593DF0C0C42BA110C02
            6A3D0C124A260C3F7E3E04622106363E470606765160D47E61F8FAE515C38387
            8F184E9EB8C0F0E8F11B60A4FF60F8C5F89B41599581418E67AFFFA7F7F73C01
            02004D00B2FF020B0112C8FBF51BEEF6F4D7000200E80001F1F700FBF5EF0000
            062200F7FD2E00E3E5EA00DBCCC60000F1F000F9E5E5001F1509001613030006
            FE000001000700F9F902001307F601F7EAE21F02004D00B2FF040C2938D1E8EB
            2FCD00F4B745EBDAFA00F5FD1600040E5E00FC011600DDD9D00007FFE700221F
            0F0007FDF1002828010000FDF300FBF8F900F7FDFF0008FDF600E0E70900E2F9
            45C40F212CC402004D00B2FF0402EBD8000B0E33B4E8EDCA4504060800FE0C27
            00FAFC21001A09140023221B00FBE9EF0004F9E1000207E10000FFE800F0E4F0
            00E6EBFF00D3F029E8F8FA35C10B0B41A20A0E09C3080A10F302004D00B2FF04
            0D081200FC112FBAECE11AF4271B1C0C0B1F2B0008142800EAE5E700F8F1DD00
            150CED00F9F6DE00DFDAD200DFDFF1F9EFF849BAFE0849B3030E1BB6171421E5
            00F5EE00F5F4E300FFFEFC000288E5DDFBB70C4C2C8237BE33E8ED6117640D60
            E7D362F8F79B9F4146FC13C3BDCFF719CEDCBEF8EDD9E31FE799993CF7F1F0D9
            2CE512FC728B8947E7FFCFAFF7805EFECAF0EFEF2FA08B411990910120805884
            24F5199859B9187E7EB45B77FEEC5657B97F37B83FBD3BF6FBFECD4B0FFFFFE6
            DAC6CA1BB28E5F48F0389790F02FC69F7F19BE7F7B07B4EC2BD400540010402C
            EF7EBC6460F8014C010AE68BBFB18A3D3D73F4A4172BB7E44506D1984DBC7F5E
            7CE4619361F8F8EB33C3BF3F5F81698D055C2A303260070001060025B2BA1176
            8562600000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 12
          Version = '6.2.1.5'
        end
        object ros_dinheiro: TRxCalcEdit
          Left = 108
          Top = 18
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
        end
        object ros_chequeav: TRxCalcEdit
          Left = 108
          Top = 42
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 1
        end
        object ros_chequeap: TRxCalcEdit
          Left = 108
          Top = 66
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 2
        end
        object ros_crediario: TRxCalcEdit
          Left = 108
          Top = 90
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 3
        end
        object ros_cartaocred: TRxCalcEdit
          Left = 108
          Top = 114
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 4
        end
        object ros_cartaodeb: TRxCalcEdit
          Left = 108
          Top = 138
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 5
        end
        object ros_total: TRxCalcEdit
          Left = 108
          Top = 240
          Width = 65
          Height = 22
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 6
        end
      end
      object GroupBox6: TGroupBox
        Left = 568
        Top = 145
        Width = 201
        Height = 63
        Caption = 'Outros'
        Enabled = False
        TabOrder = 5
        object Label17: TLabel
          Left = 27
          Top = 15
          Width = 47
          Height = 13
          Caption = 'Entradas:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 27
          Top = 39
          Width = 35
          Height = 13
          Caption = 'Sa'#237'das:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object FDvShapeButton22: TAdvShapeButton
          Left = 1
          Top = 9
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000467414D410000AFC837058AE90000001974455874536F6674776172
            650041646F626520496D616765526561647971C9653C0000033A4944415478DA
            62FCFFFF3F0321D073A4FDEB9FBF7F242BEC6B3FA1CB0104101321CDDD875BBF
            0A700970FDFBF7EF63FDAE2A3E74798000C26B40E7A196AF02DC025C32A2B20C
            C2BCC20C20434A3717A218021040380DE838D8FC55905B904B56548EE1F3AF0F
            0C724043C4F84519FEFFFFF731674D3ADC108000C26A40FB81A6AF823C825C20
            4D9F7E7E64F8F1E707C3C12B87199424951924852419FEFDFFFF3169691CD810
            8000C230A06D7F0354B31CC3E5475718EE3CBB0BD4F08F41435995E123D0256A
            32AA0C1282120CBFFFFC7E01520F10408CC8B1D0B2AFFE1BD0AF9C0A620A0CEA
            C21A0CD29C720CEBAFAC65B8FBE11683A2A422032F2B2FC3B9BBE7196E3DB9FD
            6769C24A56901E800002BB60CAA97ED5E6BD75BF847884809AE519AE006D0669
            9E7F6C1E83859C250333130B030F2B0FC3D93BE719EE3CBD0BE433B344CC0D61
            01E9050820A629A7FA6ADF7F7A7F0BA89955515C81E1D3AF4F0CBFFFFF02DBEC
            A1E3C1B0E4D462062D194D8673B7CF33DC7E7A9B21C73D87415E5C9EE1F7DFDF
            0D2003000288B16177F57F501429892B327CFAFD89E1C7DFEF0C206F3D7DF59C
            818591854113A8F9EC9D730CEF5E3C65E0F8CEC0F0F91B30507F7F67F8C0F093
            E137279B10400031BB243829FEFCFDD300649A10B720C3E91B67194404851984
            F98419A405A519CEDC3EC7F0F9CD4B06114E26062B63330667530F861F2CAF18
            5EBEBDC9F0F2C13369800062626064A8FCF3EF0FC383970F189EBC79C260AB6D
            C3C0CAC4060EB033B7CE32BCFCF282E1E3B3670C061AFA0C7F99FE32E84BBA32
            FC65FCCD60A16BC5F0EFF7AF10800062AA766C78FEEBF7AF392A62AA0C779EDF
            6378F8F21150331FC3E99B67186E3EB9C520C62DCEF0E6E32B0656461E063FCD
            5C706C153BCF625016D30331390002081C0BBFFEFCEA79F8EEC15F50A0DD7A7A
            8BE1F4ADD30CD71EDDF8CFC4C8B4F3C6A31BD56F3FBEFA71F5D931868EDD8990
            54BA2B91E1EEAB4B20E60F8000821AF0FBDE8BF72F37AF3AB1F21F28CAAE3DBC
            FE879585C50C18D2596BD236B4011352EF894BC718D8185818365F9EC6C0060C
            DC23170E82B44E05082078424A5D9E68084C5DB3819AEA8189642B7A0AB5C891
            EA00525940CC0BC49F8178DA8929CF2A00020C00148B47725AC4E10000000000
            49454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          Version = '6.2.1.5'
        end
        object FDvShapeButton23: TAdvShapeButton
          Left = 1
          Top = 33
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000467414D410000AFC837058AE90000001974455874536F6674776172
            650041646F626520496D616765526561647971C9653C000003484944415478DA
            62FCFFFF3F0321D073A4FDEB9FBF7F242BEC6B3FA1CB0104101321CDDD875BBF
            0A700970FDFBF7EF63FDAE2A3E74798000C26B40E7A196AF02DC025C32A2B20C
            C2BCC20C20434A3717A218021040380DE838D8FC55905B904B56548EE1F3AF0F
            0C724043C4F84519FEFFFFF731674D3ADC108000C26A40FB81A6AF823C825C20
            4D9F7E7E64F8F1E707C3C12B87199424951924852419FEFDFFFF3169691CD810
            8000C230A06D7F0354B31CC3E5475718EE3CBB0BD4F08F41435995E123D0256A
            32AA0C1282120CBFFFFC7E01520F10408CC8B1D0B2AFFE1BD0AF9C0A620A0CEA
            C21A0CD29C720CEBAFAC65B8FBE11683A2A422032F2B2FC3B9BBE7196E3DB9FD
            6769C24A56901E800002BB60CAA97ED5E6BD75BF847884809AE519AE006D0669
            9E7F6C1E83859C250333130B030F2B0FC3D93BE719EE3CBD0BE433B344CC0D61
            01E9050820A629A7FA6ADF7F7A7F0BA89955515C81E1D3AF4F0CBFFFFF02DBEC
            A1E3C1B0E4D462062D194D8673B7CF33DC7E7A9B21C73D87415E5C9EE1F7DFDF
            0D2003000288B16177F57F501429892B327CFAFD89E1C7DFEF0C206F3D7DF59C
            818591854113A8F9EC9D730C62674F31E8DD7CC0F0FBC923867F22C20C27A585
            198E294809010410B34B8293E2CFDF3F0D40A609710B329CBE71964144509841
            984F98415A509AE1CCED730C72572E3358BFFDC2A0E71DC7A01A950F8C092E06
            BE7BF7FF495CBDC10C10404C0C8C0C957FFEFD6178F0F201C393374F186CB56D
            185899D8C00176E6D65986975F5E30C89D39CFA06A1FC4C071F70003E3C24806
            AE7BEB1914E58599243E7E0A010820A66AC786E7BF7EFF9AA322A6CA70E7F93D
            86872F1F0135F3319CBE7986E1E6935B0C62DCE20C2CAF5E317048283230E46E
            02A6B0770C0C95F71858BEDE6060FEC7A8001040E058F8F5E757CFC3770FFE82
            02EDD6D35B0CA76F9D66B8F6E8C67F2646A69D371EDDA8FECBFCFFC9B70B5B19
            181A24197E963332BC07E24F2F5F3300C59F010410D480DFF75EBC7FB979D589
            95FF405176EDE1F53FAC2C2C66C090CE5A93B6A18D4B487CEED5E387FE3CFFC1
            C9F0899995E1FD3B46607432FE05A6A0690001044F48A9CB130D81A96B365053
            3D30916C454FA14723E42ABEBE7B96CEFC97511E68F353A0AEE9EEBBFEB40104
            18008C544EEB59A391F10000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 3
          Version = '6.2.1.5'
        end
        object routro_entrada: TRxCalcEdit
          Left = 124
          Top = 11
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
        end
        object routro_saida: TRxCalcEdit
          Left = 124
          Top = 35
          Width = 65
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 1
        end
      end
      object GroupBox7: TGroupBox
        Left = 568
        Top = 210
        Width = 201
        Height = 166
        Caption = 'Resumo Di'#225'rio'
        Enabled = False
        TabOrder = 6
        object Label24: TLabel
          Left = 27
          Top = 20
          Width = 47
          Height = 13
          Caption = 'Entradas:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 27
          Top = 43
          Width = 35
          Height = 13
          Caption = 'Sa'#237'das:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 27
          Top = 66
          Width = 30
          Height = 13
          Caption = 'Saldo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object FDvShapeButton25: TAdvShapeButton
          Left = 1
          Top = 15
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000467414D410000AFC837058AE90000001974455874536F6674776172
            650041646F626520496D616765526561647971C9653C0000033A4944415478DA
            62FCFFFF3F0321D073A4FDEB9FBF7F242BEC6B3FA1CB0104101321CDDD875BBF
            0A700970FDFBF7EF63FDAE2A3E74798000C26B40E7A196AF02DC025C32A2B20C
            C2BCC20C20434A3717A218021040380DE838D8FC55905B904B56548EE1F3AF0F
            0C724043C4F84519FEFFFFF731674D3ADC108000C26A40FB81A6AF823C825C20
            4D9F7E7E64F8F1E707C3C12B87199424951924852419FEFDFFFF3169691CD810
            8000C230A06D7F0354B31CC3E5475718EE3CBB0BD4F08F41435995E123D0256A
            32AA0C1282120CBFFFFC7E01520F10408CC8B1D0B2AFFE1BD0AF9C0A620A0CEA
            C21A0CD29C720CEBAFAC65B8FBE11683A2A422032F2B2FC3B9BBE7196E3DB9FD
            6769C24A56901E800002BB60CAA97ED5E6BD75BF847884809AE519AE006D0669
            9E7F6C1E83859C250333130B030F2B0FC3D93BE719EE3CBD0BE433B344CC0D61
            01E9050820A629A7FA6ADF7F7A7F0BA89955515C81E1D3AF4F0CBFFFFF02DBEC
            A1E3C1B0E4D462062D194D8673B7CF33DC7E7A9B21C73D87415E5C9EE1F7DFDF
            0D2003000288B16177F57F501429892B327CFAFD89E1C7DFEF0C206F3D7DF59C
            818591854113A8F9EC9D730CEF5E3C65E0F8CEC0F0F91B30507F7F67F8C0F093
            E137279B10400031BB243829FEFCFDD300649A10B720C3E91B67194404851984
            F98419A405A519CEDC3EC7F0F9CD4B06114E26062B63330667530F861F2CAF18
            5EBEBDC9F0F2C13369800062626064A8FCF3EF0FC383970F189EBC79C260AB6D
            C3C0CAC4060EB033B7CE32BCFCF282E1E3B3670C061AFA0C7F99FE32E84BBA32
            FC65FCCD60A16BC5F0EFF7AF10800062AA766C78FEEBF7AF392A62AA0C779EDF
            6378F8F21150331FC3E99B67186E3EB9C520C62DCEF0E6E32B0656461E063FCD
            5C706C153BCF625016D30331390002081C0BBFFEFCEA79F8EEC15F50A0DD7A7A
            8BE1F4ADD30CD71EDDF8CFC4C8B4F3C6A31BD56F3FBEFA71F5D931868EDD8990
            54BA2B91E1EEAB4B20E60F8000821AF0FBDE8BF72F37AF3AB1F21F28CAAE3DBC
            FE879585C50C18D2596BD236B4011352EF894BC718D8185818365F9EC6C0060C
            DC23170E82B44E05082078424A5D9E68084C5DB3819AEA8189642B7A0AB5C891
            EA00525940CC0BC49F8178DA8929CF2A00020C00148B47725AC4E10000000000
            49454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 3
          Version = '6.2.1.5'
        end
        object FDvShapeButton26: TAdvShapeButton
          Left = 1
          Top = 38
          Width = 27
          Height = 23
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000467414D410000AFC837058AE90000001974455874536F6674776172
            650041646F626520496D616765526561647971C9653C000003484944415478DA
            62FCFFFF3F0321D073A4FDEB9FBF7F242BEC6B3FA1CB0104101321CDDD875BBF
            0A700970FDFBF7EF63FDAE2A3E74798000C26B40E7A196AF02DC025C32A2B20C
            C2BCC20C20434A3717A218021040380DE838D8FC55905B904B56548EE1F3AF0F
            0C724043C4F84519FEFFFFF731674D3ADC108000C26A40FB81A6AF823C825C20
            4D9F7E7E64F8F1E707C3C12B87199424951924852419FEFDFFFF3169691CD810
            8000C230A06D7F0354B31CC3E5475718EE3CBB0BD4F08F41435995E123D0256A
            32AA0C1282120CBFFFFC7E01520F10408CC8B1D0B2AFFE1BD0AF9C0A620A0CEA
            C21A0CD29C720CEBAFAC65B8FBE11683A2A422032F2B2FC3B9BBE7196E3DB9FD
            6769C24A56901E800002BB60CAA97ED5E6BD75BF847884809AE519AE006D0669
            9E7F6C1E83859C250333130B030F2B0FC3D93BE719EE3CBD0BE433B344CC0D61
            01E9050820A629A7FA6ADF7F7A7F0BA89955515C81E1D3AF4F0CBFFFFF02DBEC
            A1E3C1B0E4D462062D194D8673B7CF33DC7E7A9B21C73D87415E5C9EE1F7DFDF
            0D2003000288B16177F57F501429892B327CFAFD89E1C7DFEF0C206F3D7DF59C
            818591854113A8F9EC9D730C62674F31E8DD7CC0F0FBC923867F22C20C27A585
            198E294809010410B34B8293E2CFDF3F0D40A609710B329CBE71964144509841
            984F98415A509AE1CCED730C72572E3358BFFDC2A0E71DC7A01A950F8C092E06
            BE7BF7FF495CBDC10C10404C0C8C0C957FFEFD6178F0F201C393374F186CB56D
            185899D8C00176E6D65986975F5E30C89D39CFA06A1FC4C071F70003E3C24806
            AE7BEB1914E58599243E7E0A010820A66AC786E7BF7EFF9AA322A6CA70E7F93D
            86872F1F0135F3319CBE7986E1E6935B0C62DCE20C2CAF5E317048283230E46E
            02A6B0770C0C95F71858BEDE6060FEC7A8001040E058F8F5E757CFC3770FFE82
            02EDD6D35B0CA76F9D66B8F6E8C67F2646A69D371EDDA8FECBFCFFC9B70B5B19
            181A24197E963332BC07E24F2F5F3300C59F010410D480DFF75EBC7FB979D589
            95FF405176EDE1F53FAC2C2C66C090CE5A93B6A18D4B487CEED5E387FE3CFFC1
            C9F0899995E1FD3B46607432FE05A6A0690001044F48A9CB130D81A96B365053
            3D30916C454FA14723E42ABEBE7B96CEFC97511E68F353A0AEE9EEBBFEB40104
            18008C544EEB59A391F10000000049454E44AE426082}
          ParentBackground = False
          ParentFont = False
          TabOrder = 4
          Version = '6.2.1.5'
        end
        object eentradas: TRxCalcEdit
          Left = 84
          Top = 15
          Width = 108
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 0
        end
        object esaidas: TRxCalcEdit
          Left = 84
          Top = 39
          Width = 108
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
        end
        object eatual: TRxCalcEdit
          Left = 84
          Top = 63
          Width = 108
          Height = 20
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 2
        end
      end
    end
  end
  object dscaixa_mov1: TDataSource
    DataSet = qrcaixa_mov1
    Left = 160
    Top = 184
  end
  object POPPRINCIPAL: TPopupMenu
    Left = 112
    Top = 472
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = Incluir1Click
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = Alterar1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = Excluir1Click
    end
    object Relatrios2: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
      OnClick = Relatrios2Click
    end
    object Opes1: TMenuItem
      Caption = 'Op'#231#245'es'
      ShortCut = 119
    end
    object Sair2: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Sair2Click
    end
  end
  object popopcoes: TPopupMenu
    Left = 216
    Top = 233
    object MFECHAMENTO_CAIXA: TMenuItem
      Caption = 'Fechamento de Caixa'
      ImageIndex = 28
      OnClick = MFECHAMENTO_CAIXAClick
    end
    object AberturadeNovoCaixa1: TMenuItem
      Caption = 'Abertura de Novo Caixa'
      ImageIndex = 1
      OnClick = AberturadeNovoCaixa1Click
    end
    object ReaberturadeCaixa1: TMenuItem
      Caption = 'Reabertura de Caixa'
      ImageIndex = 25
      OnClick = ReaberturadeCaixa1Click
    end
  end
  object qrresumo: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      
        'select plano.nome, plano.codigo, sum(caixa.valor) total from pla' +
        'nocontas plano  JOIN movimento_diario caixa on plano.codigo = ca' +
        'ixa.cod_plano       and caixa.data = :datax and plano.cod_nature' +
        'za = 03 group by plano.nome, plano.codigo')
    Left = 296
    Top = 252
    ParamData = <
      item
        Name = 'datax'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object qrmov: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      
        'select sum(valor_entrada) total_entrada, sum(valor_saida) total_' +
        'saida,'
      
        '                        (select sum(VALOR) VALOR    from movimen' +
        'to_diario where tipo_mov = 03 and data = :data_caixa),'
      
        '                        (select sum(VALOR) VALOR_1  from movimen' +
        'to_diario where tipo_mov = 04 and data = :data_caixa),'
      
        '                        (select sum(VALOR) VALOR_2  from movimen' +
        'to_diario where tipo_mov = 05 and data = :data_caixa),'
      
        '                        (select sum(VALOR) VALOR_3  from movimen' +
        'to_diario where tipo_mov = 06 and data = :data_caixa),'
      
        '                        (select sum(VALOR) VALOR_4  from movimen' +
        'to_diario where tipo_mov = 07 and data = :data_caixa),'
      
        '                        (select sum(VALOR) VALOR_5  from movimen' +
        'to_diario where tipo_mov = 08 and data = :data_caixa),'
      
        '                        (select sum(VALOR) VALOR_6  from movimen' +
        'to_diario where tipo_mov = 18 and data = :data_caixa), '
      
        '                        (select sum(VALOR) VALOR_7  from movimen' +
        'to_diario where tipo_mov = 19 and data = :data_caixa), '
      
        '                        (select sum(VALOR) VALOR_8  from movimen' +
        'to_diario where tipo_mov = 20 and data = :data_caixa), '
      
        '                        (select sum(VALOR) VALOR_9  from movimen' +
        'to_diario where tipo_mov = 21 and data = :data_caixa), '
      
        '                        (select sum(VALOR) VALOR_10 from movimen' +
        'to_diario where tipo_mov = 22 and data = :data_caixa), '
      
        '                        (select sum(VALOR) VALOR_11 from movimen' +
        'to_diario where tipo_mov = 23 and data = :data_caixa), '
      
        '                        (select sum(VALOR) VALOR_12 from movimen' +
        'to_diario where tipo_mov = 40 and data = :data_caixa), '
      
        '                        (select sum(VALOR) VALOR_13 from movimen' +
        'to_diario where tipo_mov = 01 and data = :data_caixa), '
      
        '                        (select sum(VALOR) VALOR_14 from movimen' +
        'to_diario where tipo_mov = 02 and data = :data_caixa), '
      
        '                        (select sum(VALOR) VALOR_15 from movimen' +
        'to_diario where tipo_mov = 42 and data = :data_caixa) '
      ''
      
        '                        from movimento_diario where data = :data' +
        '_caixa;')
    Left = 432
    Top = 260
    ParamData = <
      item
        Name = 'data_caixa'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'data_caixa'
        ParamType = ptInput
      end
      item
        Name = 'data_caixa'
        ParamType = ptInput
      end
      item
        Name = 'data_caixa'
        ParamType = ptInput
      end
      item
        Name = 'data_caixa'
        ParamType = ptInput
      end
      item
        Name = 'data_caixa'
        ParamType = ptInput
      end
      item
        Name = 'data_caixa'
        ParamType = ptInput
      end
      item
        Name = 'data_caixa'
        ParamType = ptInput
      end
      item
        Name = 'data_caixa'
        ParamType = ptInput
      end
      item
        Name = 'data_caixa'
        ParamType = ptInput
      end
      item
        Name = 'data_caixa'
        ParamType = ptInput
      end
      item
        Name = 'data_caixa'
        ParamType = ptInput
      end
      item
        Name = 'data_caixa'
        ParamType = ptInput
      end
      item
        Name = 'data_caixa'
        ParamType = ptInput
      end
      item
        Name = 'data_caixa'
        ParamType = ptInput
      end
      item
        Name = 'data_caixa'
        ParamType = ptInput
      end
      item
        Name = 'data_caixa'
        ParamType = ptInput
      end>
  end
  object Qrsoma: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      '')
    Left = 368
    Top = 248
  end
  object qrcaixa_mov1: TFDQuery
    OnCalcFields = qrcaixa_movCalcFields
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'select * from V_MOVIMENTO_DIARIO where tipo='#39'C'#39)
    Left = 264
    Top = 228
    object qrcaixa_mov1COD_USUARIO: TIntegerField
      DisplayLabel = 'Caixa'
      DisplayWidth = 10
      FieldName = 'COD_USUARIO'
      Origin = 'MOVIMENTO_DIARIO.COD_USUARIO'
    end
    object qrcaixa_mov1DESCRICAO_MOVIMENTO: TStringField
      DisplayLabel = 'Movimento'
      DisplayWidth = 21
      FieldKind = fkCalculated
      FieldName = 'DESCRICAO_MOVIMENTO'
      Calculated = True
    end
    object qrcaixa_mov1DATA: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'MOVIMENTO_DIARIO.DATA'
      Visible = False
    end
    object qrcaixa_mov1CODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'MOVIMENTO_DIARIO.CODIGO'
      Required = True
      Visible = False
    end
    object qrcaixa_mov1CODIGO_CC: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO_CC'
      Origin = 'MOVIMENTO_DIARIO.CODIGO_CC'
      Visible = False
    end
    object qrcaixa_mov1CODIGO_VENDA: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO_VENDA'
      Origin = 'MOVIMENTO_DIARIO.CODIGO_VENDA'
      Visible = False
    end
    object qrcaixa_mov1COD_CREDIARIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_CREDIARIO'
      Origin = 'MOVIMENTO_DIARIO.COD_CREDIARIO'
      Visible = False
    end
    object qrcaixa_mov1COD_COMPRA: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_COMPRA'
      Origin = 'MOVIMENTO_DIARIO.COD_COMPRA'
      Visible = False
    end
    object qrcaixa_mov1COD_PLANO: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_PLANO'
      Origin = 'MOVIMENTO_DIARIO.COD_PLANO'
      Visible = False
    end
    object qrcaixa_mov1PRE_DATADO: TDateField
      DisplayWidth = 10
      FieldName = 'PRE_DATADO'
      Origin = 'MOVIMENTO_DIARIO.PRE_DATADO'
      Visible = False
    end
    object qrcaixa_mov1COD_CHEQUE: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_CHEQUE'
      Origin = 'MOVIMENTO_DIARIO.COD_CHEQUE'
      Visible = False
    end
    object qrcaixa_mov1COD_CONTAS_PAGAR: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_CONTAS_PAGAR'
      Origin = 'MOVIMENTO_DIARIO.COD_CONTAS_PAGAR'
      Visible = False
    end
    object qrcaixa_mov1DOC_LAN: TIntegerField
      DisplayWidth = 10
      FieldName = 'DOC_LAN'
      Origin = 'MOVIMENTO_DIARIO.DOC_LAN'
      Visible = False
    end
    object qrcaixa_mov1CONCILIADO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CONCILIADO'
      Origin = 'MOVIMENTO_DIARIO.CONCILIADO'
      Visible = False
    end
    object qrcaixa_mov1COD_DOC: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_DOC'
      Origin = 'MOVIMENTO_DIARIO.COD_DOC'
      Visible = False
    end
    object qrcaixa_mov1COD_EMPRESA: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_EMPRESA'
      Origin = 'MOVIMENTO_DIARIO.COD_EMPRESA'
      Visible = False
    end
    object qrcaixa_mov1HORA: TTimeField
      DisplayWidth = 10
      FieldName = 'HORA'
      Origin = 'MOVIMENTO_DIARIO.HORA'
      Visible = False
    end
    object qrcaixa_mov1NOME: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'NOME'
      LookupDataSet = DM.SDS_PlContas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'COD_PLANO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrcaixa_mov1TIPO_MOV: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPO_MOV'
      Visible = False
    end
    object qrcaixa_mov1HISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object qrcaixa_mov1USUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      FixedChar = True
    end
    object qrcaixa_mov1TIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qrcaixa_mov1NUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Origin = 'NUMERO_CC'
      Size = 10
    end
    object qrcaixa_mov1ORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
      Size = 3
    end
    object qrcaixa_mov1N_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Origin = 'N_CHEQUE'
      Size = 8
    end
    object qrcaixa_mov1NOMINAL: TStringField
      FieldName = 'NOMINAL'
      Origin = 'NOMINAL'
      Size = 70
    end
    object qrcaixa_mov1COMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      Origin = 'COMPENSADO'
      Size = 1
    end
    object qrcaixa_mov1DOCUMENTO_LANC: TStringField
      FieldName = 'DOCUMENTO_LANC'
      Origin = 'DOCUMENTO_LANC'
    end
    object qrcaixa_mov1DB_CR: TStringField
      FieldName = 'DB_CR'
      Origin = 'DB_CR'
      Size = 1
    end
    object qrcaixa_mov1STATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object qrcaixa_mov1COD_FECHAMENTO: TIntegerField
      FieldName = 'COD_FECHAMENTO'
      Origin = 'COD_FECHAMENTO'
    end
    object qrcaixa_mov1VALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      Origin = 'VALOR_ENTRADA'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrcaixa_mov1VALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      Origin = 'VALOR_SAIDA'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrcaixa_mov1VALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object InsItem: TFDQuery
    OnCalcFields = qrcaixa_movCalcFields
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'INSERT INTO MOVIMENTO_DIARIO ('
      '    CODIGO,'
      '    DATA,'
      '    HISTORICO,'
      '    COD_USUARIO,'
      '    USUARIO,'
      '    TIPO,'
      '    VALOR_ENTRADA,'
      '    VALOR_SAIDA,'
      '    CODIGO_CC,'
      '    NUMERO_CC,'
      '    CODIGO_VENDA,'
      '    ORIGEM,'
      '    COD_CREDIARIO,'
      '    COD_COMPRA,'
      '    N_CHEQUE,'
      '    COD_PLANO,'
      '    PRE_DATADO,'
      '    NOMINAL,'
      '    COMPENSADO,'
      '    COD_CHEQUE,'
      '    COD_CONTAS_PAGAR,'
      '    DOC_LAN,'
      '    CONCILIADO,'
      '    COD_DOC,'
      '    DOCUMENTO_LANC,'
      '    COD_EMPRESA,'
      '    HORA,'
      '    DB_CR,'
      '    VALOR,'
      '    TIPO_MOV,'
      '    SALDO_INICIAL)'
      '  VALUES ('
      '    :CODIGO,'
      '    :DATA,'
      '    :HISTORICO,'
      '    :COD_USUARIO,'
      '    :USUARIO,'
      '    :TIPO,'
      '    :VALOR_ENTRADA,'
      '    :VALOR_SAIDA,'
      '    :CODIGO_CC,'
      '    :NUMERO_CC,'
      '    :CODIGO_VENDA,'
      '    :ORIGEM,'
      '    :COD_CREDIARIO,'
      '    :COD_COMPRA,'
      '    :N_CHEQUE,'
      '    :COD_PLANO,'
      '    :PRE_DATADO,'
      '    :NOMINAL,'
      '    :COMPENSADO,'
      '    :COD_CHEQUE,'
      '    :COD_CONTAS_PAGAR,'
      '    :DOC_LAN,'
      '    :CONCILIADO,'
      '    :COD_DOC,'
      '    :DOCUMENTO_LANC,'
      '    :COD_EMPRESA,'
      '    :HORA,'
      '    :DB_CR,'
      '    :VALOR,'
      '    :TIPO_MOV,'
      '    :SALDO_INICIAL);')
    Left = 104
    Top = 180
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'HISTORICO'
        DataType = ftString
        ParamType = ptInput
        Size = 150
      end
      item
        Name = 'COD_USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USUARIO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'TIPO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'VALOR_ENTRADA'
        DataType = ftBCD
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'VALOR_SAIDA'
        DataType = ftBCD
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'CODIGO_CC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NUMERO_CC'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'CODIGO_VENDA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ORIGEM'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Name = 'COD_CREDIARIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COD_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'N_CHEQUE'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'COD_PLANO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRE_DATADO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'NOMINAL'
        DataType = ftString
        ParamType = ptInput
        Size = 70
      end
      item
        Name = 'COMPENSADO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'COD_CHEQUE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COD_CONTAS_PAGAR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DOC_LAN'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CONCILIADO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COD_DOC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DOCUMENTO_LANC'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'HORA'
        DataType = ftTime
        ParamType = ptInput
      end
      item
        Name = 'DB_CR'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'VALOR'
        DataType = ftBCD
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'TIPO_MOV'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SALDO_INICIAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DelItem: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'DELETE FROM MOVIMENTO_DIARIO'
      'WHERE CODIGO = :CODACE')
    Left = 224
    Top = 184
    ParamData = <
      item
        Name = 'CODACE'
        DataType = ftInteger
      end>
  end
  object Query1: TFDQuery
    Connection = DM.Coneccao
    Left = 120
    Top = 124
  end
  object InsItem1: TFDQuery
    OnCalcFields = qrcaixa_movCalcFields
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'INSERT INTO MOVIMENTO_DIARIO ('
      '    CODIGO,'
      '    DATA,'
      '    HISTORICO,'
      '    COD_USUARIO,'
      '    USUARIO,'
      '    TIPO,'
      '    VALOR_ENTRADA,'
      '    VALOR_SAIDA,'
      '    CODIGO_CC,'
      '    NUMERO_CC,'
      '    CODIGO_VENDA,'
      '    ORIGEM,'
      '    COD_CREDIARIO,'
      '    COD_COMPRA,'
      '    N_CHEQUE,'
      '    COD_PLANO,'
      '    PRE_DATADO,'
      '    NOMINAL,'
      '    COMPENSADO,'
      '    COD_CHEQUE,'
      '    COD_CONTAS_PAGAR,'
      '    DOC_LAN,'
      '    CONCILIADO,'
      '    COD_DOC,'
      '    DOCUMENTO_LANC,'
      '    COD_EMPRESA,'
      '    HORA,'
      '    DB_CR,'
      '    VALOR,'
      '    TIPO_MOV,'
      '    STATUS,'
      '    COD_FECHAMENTO)'
      '  VALUES ('
      '    :CODIGO,'
      '    :DATA,'
      '    :HISTORICO,'
      '    :COD_USUARIO,'
      '    :USUARIO,'
      '    :TIPO,'
      '    :VALOR_ENTRADA,'
      '    :VALOR_SAIDA,'
      '    :CODIGO_CC,'
      '    :NUMERO_CC,'
      '    :CODIGO_VENDA,'
      '    :ORIGEM,'
      '    :COD_CREDIARIO,'
      '    :COD_COMPRA,'
      '    :N_CHEQUE,'
      '    :COD_PLANO,'
      '    :PRE_DATADO,'
      '    :NOMINAL,'
      '    :COMPENSADO,'
      '    :COD_CHEQUE,'
      '    :COD_CONTAS_PAGAR,'
      '    :DOC_LAN,'
      '    :CONCILIADO,'
      '    :COD_DOC,'
      '    :DOCUMENTO_LANC,'
      '    :COD_EMPRESA,'
      '    :HORA,'
      '    :DB_CR,'
      '    :VALOR,'
      '    :TIPO_MOV,'
      '    :STATUS,'
      '    :COD_FECHAMENTO);')
    Left = 272
    Top = 180
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'HISTORICO'
        DataType = ftString
        ParamType = ptInput
        Size = 150
      end
      item
        Name = 'COD_USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USUARIO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'TIPO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'VALOR_ENTRADA'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'VALOR_SAIDA'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'CODIGO_CC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NUMERO_CC'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'CODIGO_VENDA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ORIGEM'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Name = 'COD_CREDIARIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COD_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'N_CHEQUE'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'COD_PLANO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRE_DATADO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'NOMINAL'
        DataType = ftString
        ParamType = ptInput
        Size = 70
      end
      item
        Name = 'COMPENSADO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'COD_CHEQUE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COD_CONTAS_PAGAR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DOC_LAN'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CONCILIADO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COD_DOC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DOCUMENTO_LANC'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'HORA'
        DataType = ftTime
        ParamType = ptInput
      end
      item
        Name = 'DB_CR'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'VALOR'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'TIPO_MOV'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COD_FECHAMENTO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ActionList1: TActionList
    Left = 360
    Top = 148
  end
end
