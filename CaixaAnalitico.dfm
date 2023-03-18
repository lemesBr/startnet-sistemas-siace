object FormCaixaAnalitico: TFormCaixaAnalitico
  Left = 361
  Top = 72
  BorderStyle = bsDialog
  Caption = 'Controle de Caixa Anal'#237'tico por Per'#237'odo:'
  ClientHeight = 562
  ClientWidth = 716
  Color = clBtnFace
  Constraints.MinWidth = 130
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 716
    Height = 46
    Align = alTop
    BevelWidth = 2
    Color = 15263970
    TabOrder = 0
    object RxLabel6: TRxLabel
      Left = 8
      Top = 5
      Width = 72
      Height = 13
      Caption = 'Data Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel7: TRxLabel
      Left = 132
      Top = 5
      Width = 65
      Height = 13
      Caption = 'Data Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BTVisualizar: TAdvGlowButton
      Left = 270
      Top = 8
      Width = 140
      Height = 34
      Caption = 'Consultar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 20
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BTVisualizarClick
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
    object DateEdit1: TDateEdit
      Left = 9
      Top = 20
      Width = 110
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
    end
    object DateEdit2: TDateEdit
      Left = 133
      Top = 20
      Width = 110
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
      OnEnter = DateEdit2Enter
      OnExit = DateEdit2Exit
    end
    object CheckBox1: TCheckBox
      Left = 440
      Top = 16
      Width = 161
      Height = 17
      Caption = 'Puxar Saldo Anterior'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 512
    Width = 716
    Height = 50
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 1
    object myLabel3d1: TRxLabel
      Left = 5
      Top = 6
      Width = 206
      Height = 28
      Caption = 'CAIXA ANAL'#205'TICO'
      Color = 15263976
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -20
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BTRelatorio: TAdvGlowButton
      Left = 385
      Top = 5
      Width = 153
      Height = 40
      Caption = 'Relat'#243'rio Sintetico'
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
      TabOrder = 0
      OnClick = BTRelatorioClick
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
    object suiDBNavigator1: TDBNavigator
      Left = 226
      Top = 6
      Width = 152
      Height = 28
      DataSource = DMC2.DTS_MOV_CAIXA
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
    object suiButton1: TAdvGlowButton
      Left = 545
      Top = 6
      Width = 159
      Height = 40
      Caption = 'Relat'#243'rio Anal'#237'tico'
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
      Enabled = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 46
    Width = 716
    Height = 466
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 2
    object RxLabel4: TRxLabel
      Left = 4
      Top = 194
      Width = 269
      Height = 35
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor das Vendas:'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 4
      Top = 303
      Width = 269
      Height = 35
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Suprimento Saida:'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 4
      Top = 339
      Width = 269
      Height = 35
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Saldo de Caixa:'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel9: TRxLabel
      Left = 12
      Top = 363
      Width = 269
      Height = 35
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vendas a Prazo:'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel13: TRxLabel
      Left = 4
      Top = 230
      Width = 269
      Height = 35
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor Recebido:'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel15: TRxLabel
      Left = 4
      Top = 447
      Width = 271
      Height = 35
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total Geral:'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel11: TRxLabel
      Left = 4
      Top = 266
      Width = 271
      Height = 35
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Suprimento Ent:'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel17: TRxLabel
      Left = 4
      Top = 375
      Width = 269
      Height = 35
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Venda no Cart'#227'o:'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 5
      Top = 2
      Width = 705
      Height = 190
      TabStop = False
      BorderStyle = bsNone
      Color = 15263976
      Ctl3D = True
      DataSource = DMC2.DTS_MOV_CAIXA
      FixedColor = 10504772
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
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
          FieldName = 'HISTORICO'
          Title.Caption = 'Hist'#243'rico do Lan'#231'amento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 295
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Usu'#225'rio'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_ENTRADA'
          Title.Alignment = taCenter
          Title.Caption = 'Valor da Entrada'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_SAIDA'
          Title.Alignment = taCenter
          Title.Caption = 'Valor da Saida'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 712
      Height = 462
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 1
      object suiDBGrid1: TDBGrid
        Left = 2
        Top = 2
        Width = 708
        Height = 119
        TabStop = False
        Align = alClient
        BorderStyle = bsNone
        Color = 14609391
        Ctl3D = True
        DataSource = DMC2.DTS_MOV_CAIXA
        FixedColor = 15717318
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
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
            FieldName = 'HISTORICO'
            Title.Caption = 'Hist'#243'rico do Lan'#231'amento'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 295
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Title.Alignment = taCenter
            Title.Caption = 'Usu'#225'rio'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_ENTRADA'
            Title.Alignment = taCenter
            Title.Caption = 'Valor da Entrada'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_SAIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Valor da Saida'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 2
        Top = 121
        Width = 708
        Height = 339
        Align = alBottom
        Caption = 'Panel5'
        Enabled = False
        TabOrder = 1
        object RxLabel10: TRxLabel
          Left = 2
          Top = 193
          Width = 271
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vendas a Prazo:'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RxLabel8: TRxLabel
          Left = 2
          Top = 145
          Width = 271
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Saldo Caixa Em Dinheiro:'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RxLabel5: TRxLabel
          Left = 2
          Top = 121
          Width = 271
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Suprimento Saida:'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RxLabel2: TRxLabel
          Left = 2
          Top = 25
          Width = 271
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vendas A Vista:'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RxLabel19: TRxLabel
          Left = 2
          Top = 73
          Width = 271
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Contas Pagas/Troco:'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RxLabel18: TRxLabel
          Left = 2
          Top = 169
          Width = 271
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Venda em Vale:'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RxLabel16: TRxLabel
          Left = 2
          Top = 97
          Width = 271
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Suprimento Entrada:'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RxLabel14: TRxLabel
          Left = 2
          Top = 313
          Width = 271
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Saldo Geral de Caixa:'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RxLabel12: TRxLabel
          Left = 2
          Top = 49
          Width = 271
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'T'#237'tulos Recebidos:'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RxLabel20: TRxLabel
          Left = 2
          Top = 217
          Width = 271
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vendas em Cheques:'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RxLabel21: TRxLabel
          Left = 2
          Top = 265
          Width = 271
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vendas no Cart'#227'o:'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RxLabel22: TRxLabel
          Left = 2
          Top = 289
          Width = 271
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Cheques emitidos/Troco:'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RxLabel23: TRxLabel
          Left = 2
          Top = 1
          Width = 271
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Saldo Anterior:'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RxLabel24: TRxLabel
          Left = 2
          Top = 241
          Width = 271
          Height = 24
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Depositos em Cheques:'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object CurrencyEdit8: TCurrencyEdit
          Left = 274
          Top = 169
          Width = 426
          Height = 29
          AutoSize = False
          BorderStyle = bsNone
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object CurrencyEdit9: TCurrencyEdit
          Left = 274
          Top = 193
          Width = 426
          Height = 29
          AutoSize = False
          BorderStyle = bsNone
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object CurrencyEdit7: TCurrencyEdit
          Left = 274
          Top = 145
          Width = 426
          Height = 29
          AutoSize = False
          BorderStyle = bsNone
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object CurrencyEdit6: TCurrencyEdit
          Left = 274
          Top = 121
          Width = 426
          Height = 29
          AutoSize = False
          BorderStyle = bsNone
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object CurrencyEdit5: TCurrencyEdit
          Left = 274
          Top = 97
          Width = 426
          Height = 29
          AutoSize = False
          BorderStyle = bsNone
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object CurrencyEdit4: TCurrencyEdit
          Left = 274
          Top = 49
          Width = 426
          Height = 29
          AutoSize = False
          BorderStyle = bsNone
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object CurrencyEdit3: TCurrencyEdit
          Left = 274
          Top = 25
          Width = 426
          Height = 29
          AutoSize = False
          BorderStyle = bsNone
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object CurrencyEdit10: TCurrencyEdit
          Left = 274
          Top = 313
          Width = 426
          Height = 29
          AutoSize = False
          BorderStyle = bsNone
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 274
          Top = 73
          Width = 426
          Height = 29
          AutoSize = False
          BorderStyle = bsNone
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object CurrencyEdit2: TCurrencyEdit
          Left = 274
          Top = 217
          Width = 426
          Height = 29
          AutoSize = False
          BorderStyle = bsNone
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object CurrencyEdit11: TCurrencyEdit
          Left = 274
          Top = 265
          Width = 426
          Height = 29
          AutoSize = False
          BorderStyle = bsNone
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object CurrencyEdit12: TCurrencyEdit
          Left = 274
          Top = 289
          Width = 426
          Height = 29
          AutoSize = False
          BorderStyle = bsNone
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object CurrencyEdit13: TCurrencyEdit
          Left = 274
          Top = 1
          Width = 426
          Height = 29
          AutoSize = False
          BorderStyle = bsNone
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object CurrencyEdit14: TCurrencyEdit
          Left = 274
          Top = 241
          Width = 426
          Height = 29
          AutoSize = False
          BorderStyle = bsNone
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
      end
      object CurrencyEdit16: TCurrencyEdit
        Left = 250
        Top = 57
        Width = 426
        Height = 29
        AutoSize = False
        BorderStyle = bsNone
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
    end
  end
  object qry_ven: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from v_movimento_caixa_ven')
    SQLConnection = DM.SQLC
    Left = 450
    Top = 283
    object qry_venCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qry_venDATA: TDateField
      FieldName = 'DATA'
    end
    object qry_venHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object qry_venUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object qry_venTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qry_venVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      Precision = 15
      Size = 2
    end
    object qry_venVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      Precision = 15
      Size = 2
    end
    object qry_venORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
  end
  object qry_rec: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from v_movimento_caixa_rec')
    SQLConnection = DM.SQLC
    Left = 402
    Top = 283
    object qry_recCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qry_recDATA: TDateField
      FieldName = 'DATA'
    end
    object qry_recHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object qry_recUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object qry_recTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qry_recVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      Precision = 15
      Size = 2
    end
    object qry_recVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      Precision = 15
      Size = 2
    end
    object qry_recORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
  end
  object qry_avu: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from V_movimento_caixa_avu')
    SQLConnection = DM.SQLC
    Left = 501
    Top = 283
    object qry_avuCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qry_avuDATA: TDateField
      FieldName = 'DATA'
    end
    object qry_avuHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object qry_avuUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object qry_avuTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qry_avuVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      Precision = 15
      Size = 2
    end
    object qry_avuVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      Precision = 15
      Size = 2
    end
    object qry_avuORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
  end
  object dsp_ven: TDataSetProvider
    DataSet = qry_ven
    Left = 444
    Top = 318
  end
  object Dsp_rec: TDataSetProvider
    DataSet = qry_rec
    Left = 406
    Top = 315
  end
  object dsp_avu: TDataSetProvider
    DataSet = qry_avu
    Left = 504
    Top = 319
  end
  object Cds_ven: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dsp_ven'
    Left = 447
    Top = 344
    object Cds_venCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Cds_venDATA: TDateField
      FieldName = 'DATA'
    end
    object Cds_venHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object Cds_venUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object Cds_venTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object Cds_venVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_venVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_venORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
    object Cds_venSOMAVALOR_VENDA: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_VENDA'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR_ENTRADA)'
    end
    object Cds_venSOMAVALOR_SAIDA: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_SAIDA'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR_SAIDA)'
    end
  end
  object cds_rec: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'Dsp_rec'
    Left = 409
    Top = 347
    object cds_recCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_recDATA: TDateField
      FieldName = 'DATA'
    end
    object cds_recHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object cds_recUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object cds_recTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cds_recVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds_recVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds_recORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
    object cds_recSOMAVALOR_REC: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_RECEBIDO'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR_ENTRADA)'
    end
  end
  object cds_avu: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dsp_avu'
    Left = 509
    Top = 351
    object cds_avuCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_avuDATA: TDateField
      FieldName = 'DATA'
    end
    object cds_avuHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object cds_avuUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object cds_avuTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cds_avuVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds_avuVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds_avuORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
    object cds_avuSOMAVALOR_SAIDA: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_SAIDA'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR_SAIDA)'
    end
    object cds_avuSOMAVALOR_ENT: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_ENT'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR_ENTRADA)'
    end
  end
  object Dts_ven: TDataSource
    DataSet = Cds_ven
    Left = 448
    Top = 377
  end
  object dts_rec: TDataSource
    DataSet = cds_rec
    Left = 409
    Top = 379
  end
  object dts_avu: TDataSource
    DataSet = cds_avu
    Left = 510
    Top = 376
  end
  object PopupMenu1: TPopupMenu
    Left = 486
    Top = 39
    object Delete1: TMenuItem
      Caption = 'Apaga o Registro Selecionado'
      OnClick = Delete1Click
    end
  end
  object QRY_MOV_DIARIO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM MOVIMENTO_DIARIO')
    SQLConnection = DM.SQLC
    Left = 521
    Top = 41
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
    Left = 555
    Top = 41
  end
  object CDS_MOV_DIARIO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_MOV_DIARIO'
    Left = 586
    Top = 41
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
    Left = 617
    Top = 41
  end
  object QRY_FIN: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from V_movimento_caixa_fin')
    SQLConnection = DM.SQLC
    Left = 562
    Top = 283
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object DateField1: TDateField
      FieldName = 'DATA'
    end
    object StringField1: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object StringField2: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object StringField3: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      Precision = 15
      Size = 2
    end
    object StringField4: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
  end
  object dsp_fin: TDataSetProvider
    DataSet = QRY_FIN
    Left = 569
    Top = 315
  end
  object cds_fin: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dsp_fin'
    Left = 577
    Top = 350
    object cds_finCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_finDATA: TDateField
      FieldName = 'DATA'
    end
    object cds_finHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object cds_finUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object cds_finTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cds_finVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds_finVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds_finORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
    object cds_finSOMAVALOR_FIN: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_FIN'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR_ENTRADA)'
    end
  end
  object dts_fin: TDataSource
    DataSet = cds_fin
    Left = 576
    Top = 384
  end
  object Qry_receber: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from crediario')
    SQLConnection = DM.SQLC
    Left = 290
    Top = 280
    object Qry_receberCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Qry_receberCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object Qry_receberDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object Qry_receberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object Qry_receberDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object Qry_receberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object Qry_receberUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object Qry_receberUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object Qry_receberSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object Qry_receberVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
      Size = 2
    end
    object Qry_receberVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
      Size = 2
    end
    object Qry_receberVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
      Size = 2
    end
    object Qry_receberVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object Qry_receberVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
      Size = 2
    end
    object Qry_receberVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object Qry_receberVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object Qry_receberCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object Qry_receberPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object Qry_receberNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object Qry_receberBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object Qry_receberREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 1
    end
    object Qry_receberDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object Qry_receberID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object Qry_receberENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object Qry_receberCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Qry_receberNUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object Qry_receberCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object Qry_receberTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object Qry_receberCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object Qry_receberNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object Qry_receberSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object Qry_receberNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object Qry_receberANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object Qry_receberMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object Qry_receberTP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Size = 1
    end
  end
  object dsp_receber: TDataSetProvider
    DataSet = Qry_receber
    Left = 284
    Top = 311
  end
  object cds_receber: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dsp_receber'
    Left = 287
    Top = 345
    object cds_receberCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_receberCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cds_receberDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object cds_receberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object cds_receberDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object cds_receberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object cds_receberUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object cds_receberUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object cds_receberSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cds_receberVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds_receberVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
      Size = 2
    end
    object cds_receberVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
      Size = 2
    end
    object cds_receberVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object cds_receberVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
      Size = 2
    end
    object cds_receberVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object cds_receberVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cds_receberCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object cds_receberPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object cds_receberNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object cds_receberBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object cds_receberREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 1
    end
    object cds_receberDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object cds_receberID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object cds_receberENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object cds_receberCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cds_receberNUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object cds_receberCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object cds_receberTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object cds_receberCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object cds_receberNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cds_receberSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object cds_receberNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object cds_receberANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object cds_receberMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object cds_receberTP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Size = 1
    end
    object cds_receberSOMAVALOR_RECEBER: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_TOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR_COMPRA)'
    end
    object cds_receberCOUNT_RECEBER: TAggregateField
      Alignment = taCenter
      FieldName = 'COUNT_RECEBER'
      Active = True
      DisplayName = ''
      Expression = 'COUNT(CODIGO)'
    end
  end
  object dts_receber: TDataSource
    DataSet = cds_receber
    Left = 288
    Top = 378
  end
  object Qry_cheque: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from V_movimento_caixa_CH')
    SQLConnection = DM.SQLC
    Left = 626
    Top = 283
    object Qry_chequeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Qry_chequeDATA: TDateField
      FieldName = 'DATA'
    end
    object Qry_chequeHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object Qry_chequeUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object Qry_chequeTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object Qry_chequeVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      Precision = 15
      Size = 2
    end
    object Qry_chequeVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      Precision = 15
      Size = 2
    end
    object Qry_chequeORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
  end
  object DSP_cheque: TDataSetProvider
    DataSet = Qry_cheque
    Left = 625
    Top = 315
  end
  object cds_cheque: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DSP_cheque'
    Left = 625
    Top = 350
    object cds_chequeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_chequeDATA: TDateField
      FieldName = 'DATA'
    end
    object cds_chequeHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object cds_chequeUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object cds_chequeTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cds_chequeVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds_chequeVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds_chequeORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
    object cds_chequeSOMAVALOR_SAIDA: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_SAIDA'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR_SAIDA)'
    end
    object cds_chequeSOMAVALOR_CH: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_CH'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR_ENTRADA)'
    end
  end
  object Dts_cheques: TDataSource
    DataSet = cds_cheque
    Left = 624
    Top = 384
  end
  object Qry_Cartao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT '
      '  A.*,'
      '  C.NOME_RS'
      'FROM'
      ' CONTAS_RECEBER_ADM_CARTAO A'
      ' INNER JOIN CLIENTES C ON (A.COD_CLI=C.CODIGO)')
    SQLConnection = DM.SQLC
    Left = 322
    Top = 279
    object Qry_CartaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Qry_CartaoCODIGO_BANDEIRA: TIntegerField
      FieldName = 'CODIGO_BANDEIRA'
    end
    object Qry_CartaoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object Qry_CartaoEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object Qry_CartaoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object Qry_CartaoDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
    end
    object Qry_CartaoCOD_CAI: TIntegerField
      FieldName = 'COD_CAI'
    end
    object Qry_CartaoCOD_EMP: TIntegerField
      FieldName = 'COD_EMP'
    end
    object Qry_CartaoCOD_VEN: TIntegerField
      FieldName = 'COD_VEN'
    end
    object Qry_CartaoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object Qry_CartaoVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object Qry_CartaoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object Qry_CartaoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object Qry_CartaoTAXA: TFloatField
      FieldName = 'TAXA'
    end
    object Qry_CartaoCODIGO_DUPLICATA: TIntegerField
      FieldName = 'CODIGO_DUPLICATA'
    end
    object Qry_CartaoCOD_CLI: TIntegerField
      FieldName = 'COD_CLI'
    end
    object Qry_CartaoPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object Qry_CartaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object Qry_CartaoNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
  end
  object Dsp_cartao: TDataSetProvider
    DataSet = Qry_Cartao
    Left = 316
    Top = 310
  end
  object cds_cartao: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'Dsp_cartao'
    Left = 319
    Top = 344
    object cds_cartaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_cartaoCODIGO_BANDEIRA: TIntegerField
      FieldName = 'CODIGO_BANDEIRA'
    end
    object cds_cartaoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object cds_cartaoEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cds_cartaoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cds_cartaoDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
    end
    object cds_cartaoCOD_CAI: TIntegerField
      FieldName = 'COD_CAI'
    end
    object cds_cartaoCOD_EMP: TIntegerField
      FieldName = 'COD_EMP'
    end
    object cds_cartaoCOD_VEN: TIntegerField
      FieldName = 'COD_VEN'
    end
    object cds_cartaoVALOR: TFloatField
      FieldName = 'VALOR'
      currency = True
    end
    object cds_cartaoVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      currency = True
    end
    object cds_cartaoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object cds_cartaoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cds_cartaoTAXA: TFloatField
      FieldName = 'TAXA'
    end
    object cds_cartaoCODIGO_DUPLICATA: TIntegerField
      FieldName = 'CODIGO_DUPLICATA'
    end
    object cds_cartaoCOD_CLI: TIntegerField
      FieldName = 'COD_CLI'
    end
    object cds_cartaoPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cds_cartaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cds_cartaoNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object cds_cartaovalor_total: TAggregateField
      FieldName = 'valor_total'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor)'
    end
  end
  object Dts_cartao: TDataSource
    DataSet = cds_cartao
    Left = 320
    Top = 377
  end
  object Qry_cheques_emitidos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CHEQUES_EMITIDOS')
    SQLConnection = DM.SQLC
    Left = 362
    Top = 279
    object Qry_cheques_emitidosCOD_CHEQUE: TIntegerField
      FieldName = 'COD_CHEQUE'
      Required = True
    end
    object Qry_cheques_emitidosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      Precision = 15
      Size = 2
    end
    object Qry_cheques_emitidosDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Required = True
    end
    object Qry_cheques_emitidosDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Required = True
    end
    object Qry_cheques_emitidosPAGO: TStringField
      FieldName = 'PAGO'
      Required = True
      Size = 1
    end
    object Qry_cheques_emitidosORIGEM: TStringField
      FieldName = 'ORIGEM'
      Required = True
      Size = 2
    end
    object Qry_cheques_emitidosDOCUMENTO_ORIGEM: TIntegerField
      FieldName = 'DOCUMENTO_ORIGEM'
      Required = True
    end
    object Qry_cheques_emitidosCOD_CONTA: TIntegerField
      FieldName = 'COD_CONTA'
      Required = True
    end
    object Qry_cheques_emitidosCOMP_NA_INCLUSAO: TStringField
      FieldName = 'COMP_NA_INCLUSAO'
      Required = True
      Size = 1
    end
    object Qry_cheques_emitidosDATA_COMPENSACAO: TDateField
      FieldName = 'DATA_COMPENSACAO'
    end
    object Qry_cheques_emitidosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 900
    end
    object Qry_cheques_emitidosNUMERO_CHEQUE: TIntegerField
      FieldName = 'NUMERO_CHEQUE'
      Required = True
    end
    object Qry_cheques_emitidosCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Required = True
    end
    object Qry_cheques_emitidosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object Qry_cheques_emitidosTROCO: TStringField
      FieldName = 'TROCO'
      Required = True
      Size = 1
    end
    object Qry_cheques_emitidosFAVORECIDO: TStringField
      FieldName = 'FAVORECIDO'
      Required = True
      Size = 50
    end
    object Qry_cheques_emitidosCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object Qry_cheques_emitidosCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
    end
    object Qry_cheques_emitidosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 300
    end
  end
  object Dsp_cheques_emitidos: TDataSetProvider
    DataSet = Qry_cheques_emitidos
    Left = 356
    Top = 310
  end
  object Cds_cheques_emitidos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'Dsp_cheques_emitidos'
    Left = 359
    Top = 344
    object Cds_cheques_emitidosCOD_CHEQUE: TIntegerField
      FieldName = 'COD_CHEQUE'
      Required = True
    end
    object Cds_cheques_emitidosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      Precision = 15
      Size = 2
    end
    object Cds_cheques_emitidosDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Required = True
    end
    object Cds_cheques_emitidosDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Required = True
    end
    object Cds_cheques_emitidosPAGO: TStringField
      FieldName = 'PAGO'
      Required = True
      Size = 1
    end
    object Cds_cheques_emitidosORIGEM: TStringField
      FieldName = 'ORIGEM'
      Required = True
      Size = 2
    end
    object Cds_cheques_emitidosDOCUMENTO_ORIGEM: TIntegerField
      FieldName = 'DOCUMENTO_ORIGEM'
      Required = True
    end
    object Cds_cheques_emitidosCOD_CONTA: TIntegerField
      FieldName = 'COD_CONTA'
      Required = True
    end
    object Cds_cheques_emitidosCOMP_NA_INCLUSAO: TStringField
      FieldName = 'COMP_NA_INCLUSAO'
      Required = True
      Size = 1
    end
    object Cds_cheques_emitidosDATA_COMPENSACAO: TDateField
      FieldName = 'DATA_COMPENSACAO'
    end
    object Cds_cheques_emitidosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 900
    end
    object Cds_cheques_emitidosNUMERO_CHEQUE: TIntegerField
      FieldName = 'NUMERO_CHEQUE'
      Required = True
    end
    object Cds_cheques_emitidosCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Required = True
    end
    object Cds_cheques_emitidosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object Cds_cheques_emitidosTROCO: TStringField
      FieldName = 'TROCO'
      Required = True
      Size = 1
    end
    object Cds_cheques_emitidosFAVORECIDO: TStringField
      FieldName = 'FAVORECIDO'
      Required = True
      Size = 50
    end
    object Cds_cheques_emitidosCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object Cds_cheques_emitidosCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
    end
    object Cds_cheques_emitidosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 300
    end
    object Cds_cheques_emitidosValor_Total: TAggregateField
      FieldName = 'valor_total'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor)'
    end
  end
  object Dts_cheques_emitidos: TDataSource
    DataSet = Cds_cheques_emitidos
    Left = 360
    Top = 377
  end
  object MsgNenhumRegistro: TAdvTaskDialog
    CommonButtons = [cbOK]
    DefaultButton = 0
    DefaultRadioButton = 200
    FooterTextColor = clWindowText
    Icon = tiWarning
    Content = 'Nenhum Registro Foi Localizado. Tente Novamente!!!'
    Options = [doAllowDialogCancel]
    Version = '2.0.5.2'
    Left = 520
  end
  object MsgData: TAdvTaskDialog
    CommonButtons = [cbOK]
    DefaultButton = 0
    DefaultRadioButton = 200
    FooterTextColor = clWindowText
    Icon = tiWarning
    Content = 'A data final n'#227'o pode ser menor que a data inicial.'
    Options = [doAllowDialogCancel]
    Version = '2.0.5.2'
    Left = 576
  end
  object Qry_saldo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from V_movimento_caixa_CH')
    SQLConnection = DM.SQLC
    Left = 666
    Top = 283
    object Qry_saldoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Qry_saldoDATA: TDateField
      FieldName = 'DATA'
    end
    object Qry_saldoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object Qry_saldoUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object Qry_saldoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object Qry_saldoVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      Precision = 15
      Size = 2
    end
    object Qry_saldoVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      Precision = 15
      Size = 2
    end
    object Qry_saldoORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
  end
  object DSPSALDO: TDataSetProvider
    DataSet = Qry_saldo
    Left = 665
    Top = 315
  end
  object cds_saldo: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DSPSALDO'
    Left = 665
    Top = 350
    object cds_saldoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_saldoDATA: TDateField
      FieldName = 'DATA'
    end
    object cds_saldoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object cds_saldoUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object cds_saldoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cds_saldoVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      Precision = 15
      Size = 2
    end
    object cds_saldoVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      Precision = 15
      Size = 2
    end
    object cds_saldoORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
    object cds_saldoSOMAVALOR_SAIDA: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_SAIDA'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR_SAIDA)'
    end
    object cds_saldoSOMAVALOR_ENTRADA: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_ENTRADA'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR_ENTRADA)'
    end
  end
  object DataSource1: TDataSource
    DataSet = cds_saldo
    Left = 664
    Top = 384
  end
end
