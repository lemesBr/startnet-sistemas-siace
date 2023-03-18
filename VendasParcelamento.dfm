object FormParcelamento: TFormParcelamento
  Left = 613
  Top = 181
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Finaliza'#231#227'o de Venda '
  ClientHeight = 569
  ClientWidth = 721
  Color = clBtnFace
  Constraints.MinHeight = 33
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 32
    Top = 200
    Width = 649
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
  end
  object Panel2: TPanel
    Left = 256
    Top = 259
    Width = 465
    Height = 256
    Align = alCustom
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 0
    object RxLabel7: TRxLabel
      Left = 152
      Top = 198
      Width = 123
      Height = 13
      Caption = 'Valor Total  das Parcelas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel9: TsLabelFX
      Left = 8
      Top = 2
      Width = 188
      Height = 31
      Caption = 'Parcelas da Venda:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object RxLabel2: TRxLabel
      Left = 200
      Top = 8
      Width = 46
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'N'#186' Dias:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel6: TRxLabel
      Left = 317
      Top = 8
      Width = 84
      Height = 13
      AutoSize = False
      Caption = 'N'#186' de Parcelas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object suiDBNavigator1: TsDBNavigator
      Left = 5
      Top = 191
      Width = 136
      Height = 27
      SkinData.SkinSection = 'TOOLBAR'
      FullRepaint = False
      TabOrder = 0
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 301
      Top = 190
      Width = 156
      Height = 29
      AutoSize = False
      Color = 15263976
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object Panel1: TPanel
      Left = 2
      Top = 32
      Width = 459
      Height = 151
      Align = alCustom
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 2
      DesignSize = (
        459
        151)
      object DBGrid1: TXDBGrid
        Left = 2
        Top = 2
        Width = 455
        Height = 147
        Align = alClient
        BorderStyle = bsNone
        DataSource = DataSource1
        Enabled = False
        FixedColor = 12874553
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        GridStyle.VisualStyle = vsXPStyle
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnEnter = DBGrid1Enter
        OnExit = DBGrid1Exit
        OnKeyDown = DBGrid1KeyDown
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodigoCompra'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' do Carn'#234
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
            Width = 73
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DataCompra'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
            Width = 64
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Parcela'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
            Width = 54
          end
          item
            Alignment = taCenter
            ButtonStyle = cbsCalendar
            Expanded = False
            FieldName = 'DataVencimento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Data Vcto/Deposito'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
            Width = 120
          end
          item
            Expanded = False
            FieldName = 'ValorParcela'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor da Parcela'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
            Width = 101
          end
          item
            Expanded = False
            FieldName = 'Comissao'
            Title.Caption = 'Comiss'#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = False
          end>
      end
      object edCod: TEdit
        Left = 216
        Top = 67
        Width = 33
        Height = 21
        Cursor = crIBeam
        TabOrder = 1
        Visible = False
      end
      object Edit6: TEdit
        Left = 120
        Top = 67
        Width = 121
        Height = 21
        TabOrder = 2
        Visible = False
      end
      object Edit5: TEdit
        Left = 152
        Top = 91
        Width = 121
        Height = 21
        TabOrder = 3
        Visible = False
        OnChange = Edit5Change
      end
      object mFormas: TMemo
        Left = 247
        Top = 76
        Width = 153
        Height = 44
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 4
        Visible = False
      end
      object cbxModelo: TComboBox
        Left = 228
        Top = 47
        Width = 125
        Height = 21
        TabOrder = 5
        Text = 'Procurar'
        Visible = False
        OnChange = cbxModeloChange
        Items.Strings = (
          'Procurar'
          'ecfNaoFiscal'
          'ecfBematech'
          'ecfSweda'
          'ecfDaruma'
          'ecfSchalter'
          'ecfMecaf'
          'ecfYanco'
          'ecfDataRegis'
          'ecfUrano'
          'ecfICash'
          'ecfQuattro'
          'ecfSwedaSTX')
      end
      object Button3: TAdvGlowButton
        Left = 43
        Top = 94
        Width = 108
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Gravar Dados Z'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 6
        Visible = False
        OnClick = Button3Click
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
      object Edit3: TEdit
        Left = 279
        Top = 64
        Width = 81
        Height = 21
        TabOrder = 7
        Visible = False
      end
    end
    object DBEdit4: TDBEdit
      Left = 250
      Top = 5
      Width = 41
      Height = 19
      CharCase = ecUpperCase
      Color = 15263976
      Ctl3D = False
      DataField = 'VARIACAO_DIAS'
      DataSource = DM.DTS_CondPagamento
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 411
      Top = 4
      Width = 46
      Height = 19
      CharCase = ecUpperCase
      Color = 15263976
      Ctl3D = False
      DataField = 'NUMERO_PAR'
      DataSource = DM.DTS_CondPagamento
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object Button1: TButton
      Left = 172
      Top = 225
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 5
      Visible = False
      OnClick = Button1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 515
    Width = 721
    Height = 54
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 1
    object suiButton1: TAdvGlowButton
      Left = 268
      Top = 6
      Width = 170
      Height = 40
      Caption = 'Cancela/Fecha - F5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
    object suiButton2: TAdvGlowButton
      Left = 546
      Top = 6
      Width = 170
      Height = 40
      Caption = 'Finalizar - F10'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
    object suiButton3: TAdvGlowButton
      Left = 18
      Top = 6
      Width = 180
      Height = 40
      Caption = 'Gerar Parcelas - F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 23
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
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
  end
  object pnldados: TPanel
    Left = 0
    Top = 0
    Width = 721
    Height = 59
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 2
    object RxLabel4: TRxLabel
      Left = 5
      Top = 61
      Width = 112
      Height = 13
      AutoSize = False
      Caption = 'Pagto -F2:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel13: TRxLabel
      Left = 316
      Top = 101
      Width = 92
      Height = 13
      Caption = 'Total  da Venda:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 78
      Top = 37
      Width = 58
      Height = 13
      AutoSize = False
      Caption = 'Cliente F9:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 316
      Top = 180
      Width = 65
      Height = 13
      Caption = 'Valor Pago:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel10: TRxLabel
      Left = 6
      Top = 185
      Width = 66
      Height = 13
      Caption = 'Valor Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel12: TRxLabel
      Left = 6
      Top = 94
      Width = 91
      Height = 13
      Caption = 'Valor dos Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 6
      Top = 142
      Width = 86
      Height = 13
      Caption = 'Total  c/ Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel15: TRxLabel
      Left = 316
      Top = 135
      Width = 64
      Height = 13
      Caption = 'Descontos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 429
      Top = 221
      Width = 200
      Height = 42
      Brush.Color = clBlack
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object RxLabel16: TRxLabel
      Left = 316
      Top = 228
      Width = 43
      Height = 16
      Caption = 'Troco:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel17: TRxLabel
      Left = 6
      Top = 241
      Width = 106
      Height = 13
      Caption = 'Perc. de comiss'#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object RxLabel18: TRxLabel
      Left = 183
      Top = 241
      Width = 20
      Height = 13
      Caption = 'OS:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Shape4: TShape
      Left = 112
      Top = 88
      Width = 200
      Height = 41
      Brush.Color = clBlack
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object Shape5: TShape
      Left = 112
      Top = 131
      Width = 200
      Height = 41
      Brush.Color = clBlack
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object Shape6: TShape
      Left = 113
      Top = 175
      Width = 200
      Height = 41
      Brush.Color = clBlack
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object Shape2: TShape
      Left = 428
      Top = 85
      Width = 200
      Height = 41
      Brush.Color = clNavy
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object Shape3: TShape
      Left = 428
      Top = 128
      Width = 200
      Height = 41
      Brush.Color = clNavy
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object Shape7: TShape
      Left = 428
      Top = 174
      Width = 200
      Height = 41
      Brush.Color = clNavy
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object RxLabel19: TRxLabel
      Left = 506
      Top = 37
      Width = 42
      Height = 16
      Caption = 'Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TsLabelFX
      Left = 80
      Top = 9
      Width = 285
      Height = 27
      Caption = 'F E C H A M E N T O    D A    V E N D A'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object Bevel3: TBevel
      Left = 56
      Top = -45
      Width = 2
      Height = 104
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 435
      Top = 94
      Width = 188
      Height = 33
      AutoSize = False
      BorderStyle = bsNone
      Color = clNavy
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 119
      Top = 182
      Width = 186
      Height = 33
      AutoSize = False
      BorderStyle = bsNone
      Color = clBlack
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 433
      Top = 179
      Width = 190
      Height = 33
      AutoSize = False
      BorderStyle = bsNone
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = CurrencyEdit4Enter
      OnExit = CurrencyEdit4Exit
    end
    object CurrencyEdit5: TCurrencyEdit
      Left = 119
      Top = 94
      Width = 187
      Height = 33
      AutoSize = False
      BorderStyle = bsNone
      Color = clBlack
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object Desc_cond_pagto: TDBEdit
      Left = 154
      Top = 59
      Width = 269
      Height = 21
      Color = 7991028
      DataField = 'PAGAMENTO'
      Enabled = False
      TabOrder = 5
    end
    object CurrencyEdit6: TCurrencyEdit
      Left = 118
      Top = 137
      Width = 186
      Height = 33
      AutoSize = False
      BorderStyle = bsNone
      Color = clBlack
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object Edit1: TEdit
      Left = 2
      Top = 116
      Width = 85
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Visible = False
    end
    object suiButton4: TAdvGlowButton
      Left = 555
      Top = 3
      Width = 161
      Height = 31
      Hint = 'Novo Registro'
      Caption = '&Desbloquear  Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 15
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 8
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
    object CurrencyEdit7: TCurrencyEdit
      Left = 433
      Top = 133
      Width = 190
      Height = 33
      AutoSize = False
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = CurrencyEdit4Enter
      OnExit = CurrencyEdit7Exit
    end
    object RbPercentual: TRadioButton
      Left = 367
      Top = 151
      Width = 58
      Height = 17
      Caption = '&Perc. %'
      TabOrder = 9
      OnExit = RbPercentualExit
    end
    object RbValor: TRadioButton
      Left = 319
      Top = 151
      Width = 48
      Height = 17
      Caption = '&Reais'
      TabOrder = 10
      OnExit = RbValorExit
    end
    object DBComboPgto: TComboEdit
      Left = 65
      Top = 59
      Width = 85
      Height = 21
      Alignment = taCenter
      ClickKey = 113
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      TabOrder = 11
      Text = ''
      OnEnter = DBComboPgtoEnter
      OnExit = DBComboPgtoExit
      OnKeyPress = DBComboPgtoKeyPress
    end
    object CurrencyEdit8: TCurrencyEdit
      Left = 112
      Top = 238
      Width = 65
      Height = 21
      AutoSize = False
      DisplayFormat = '% ,0.00;-R$ ,0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      Visible = False
      OnEnter = CurrencyEdit4Enter
      OnExit = CurrencyEdit8Exit
    end
    object Edit20: TEdit
      Left = 210
      Top = 237
      Width = 100
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      Visible = False
      OnEnter = CurrencyEdit4Enter
      OnExit = Edit20Exit
    end
    object EDIT62: TCurrencyEdit
      Left = 433
      Top = 227
      Width = 190
      Height = 33
      AutoSize = False
      BorderStyle = bsNone
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnEnter = CurrencyEdit4Enter
      OnExit = CurrencyEdit4Exit
    end
    object EDTJUROS: TCurrencyEdit
      Left = 556
      Top = 35
      Width = 161
      Height = 21
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = clInactiveCaptionText
      DisplayFormat = ',#0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
      ZeroEmpty = False
    end
    object DBComboCliente: TComboEdit
      Left = 144
      Top = 34
      Width = 116
      Height = 21
      Alignment = taCenter
      CharCase = ecUpperCase
      ClickKey = 120
      Ctl3D = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 16
      Text = ''
      OnButtonClick = DBComboClienteButtonClick
      OnChange = DBComboClienteChange
      OnEnter = DBComboClienteEnter
      OnExit = DBComboClienteExit
      OnKeyPress = DBComboClienteKeyPress
    end
    object Desc_cliente: TDBEdit
      Left = 264
      Top = 34
      Width = 220
      Height = 21
      TabStop = False
      Color = 7991028
      DataField = 'NOME_CLIENTE'
      DataSource = formVendas.Dts_pedidos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
    end
    object FDvShapeButton1: TAdvShapeButton
      Left = 0
      Top = -6
      Width = 57
      Height = 65
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
        870000000473424954080808087C086488000000097048597300000AF000000A
        F00142AC34980000001F74455874536F667477617265004D6163726F6D656469
        612046697265776F726B732038B568D27800000F25494441546881ED9A79749C
        D579879F6F9D7D46FB2ED99664D9B22D1C648C596CD7C6890B842C10B7D90369
        9626A490509A343D598E4FD3254D9BD3A425CBC9760861090D398100AE8B630C
        D8061B3B36B6842DD9962C4BD63AA319CDF6EDDF77FB8792364E108186869373
        F89D33FFDDB9F7F7DCFBDEF7DEF7CE484208FE9025BFDA067E57BD06F06AEB35
        80575BAF01BCDAFA8307505F4EE307EE7BA875DBD45B64CE50E03ECAE4F01004
        FFA7912554DE48885EC2E53AA2E5CA52AC10CB374C05E3F6FA1B2E7DE6A576F3
        B200ECB075C775975D734D6163B118BD31542690ECE0803015A195535E85D562
        B5998BADCEE2226B71294AA46045CC8213B17D2924551E379E6B984ACC54ADAF
        B93C298220E99C72A281E4877DC98BA0100E2411327583AAC9DAC2655B2F6D50
        1FC37CC501D0701F4DEDD4285185A08A4A68B2ABA9F2EA98D027389B1CE2943E
        C04A6D050D913A022DC0920C2459A62066D861FC98A33CC9F515DB505071848D
        2995C928694C4C841CB0D4EC49CE5C97EF6822D5FF522C29DBB76FFFEDAD6EA5
        8A73749F8B9C7F472E48B7541995D42B8DD4886A3CDD231FCA918FCC90D3A631
        E5227E60E2962CAAD56A96C8ED34D14483D5C8D56CA5942E71ECDC117AD54B68
        749BA930AAA8351A906409432AA3A153B2CC557DFD034DEAA1706DF260A5FEF0
        E8C385EEEE65DE0B59935EF03227A1F055D67E6BD1773FF54CF5339D63E1E196
        516DB8F274F41C28504108DDD7A8B492543829A25602D99668D09B891A214E3F
        7B941367062845E0863FBD8195D5ABE94C2EC3C5C5F75D9E98D94D7FF638EFEE
        BC91945685EFBBC8289C4A9D24907DCE8FCE7077F25E6AAD4AD616D7F1A1F15B
        DEFFD66DD7DEF942001784D063F73EF1FAA31587FF66F7819F2DF64479518F79
        B17267FD77210348207BB0717A0D212782E3BA38BE838F47411489490990616E
        6E960EBD9DB6556DDCB5EB3176EFFA29C6669B9353FD5CD6B09E542CC5A69A2D
        D8B6C35D27BEC7FB977F98881AC5F51C5AF26D9CA918A4852690215D9D634778
        27EF9BFA4864A1E0B8208DAE332F0D7657EDB86A57E2BFDAA34E4C6975164169
        BE956EC096B35762E61D66CD2C45B780E55BB88E8767BB841C9D72BE8CD0542A
        AB6B09EB11DEBE690335917AACBCC978668207FB7F44FF581F9EEFB1A56E2B35
        721D77F77F1FCF76F17C0FD5D2505C95C6A0898EE93AB0010B90C48299EE0280
        D407A28FF794579F5F54AC014D6257FC51DA9D46A88255E632F2560EC776F04D
        17C770714A0E66D9C62E39D82507B368922DE6E92B0F30911D235D98A239DE8C
        55B4B14B1656D9E1F193BBD835B813DF0F7853DBF5144B451E3EFD109A08E139
        2E092B0EE180D5D36BE727CF87B0147616025001EEFDCE8F42D164F4AA4013ED
        ABB5B5E21B155FA1BA50C9BED46ED6E4AE6458FA09DEAC8FE5DB880010822010
        F89E00DFC70D5CE6823CC8E0F82EAA24B3B8B296B011A5ABB29BAC39CBB03BC9
        AC57449514F69CDC4DD928F3D615DBB87EF136BEF9F33B581269A7A7F6228425
        F0548F8813990FDD04AC762ECA2E04A06CDFBE1D658F1A7DB6F9C0E10F76DDF4
        6629B0538EE352EF36D2173BC67BD4F7B35FD945FD6C13A54289B269E0DB3EAE
        E5E2592EAEEDE1591EA663A0591A966993B435362FDDC45FDEF00586A60798CC
        8CD210AAE57C6106CB76317D8393E91368B2CA65AD576059163B07FF93358D97
        22749F90AE313936CD71F979B408E863B1D577FFEC9E4BFBF70CAC3CFAF8B1F8
        659BD69EB9600556DCBEAC78E8D1C34F61B375A7FB286F0A6E6084616A4A0DE4
        E219AED5DE8CA8F3E9104B393D37C8586E9420085050117E8010022FF098F427
        897B4966E5808253C2B48BB89E8DA22884149988AB9136B2189A858ACA43471F
        A42654CFD68E6B3874F6103BFA1E61D3864D14FC32B22B83039DCE22BED8F877
        DD348A6E5C78C3F81F4F5F2CAD6ADC28368A0BF6C045E5DE2717BB0D984DB028
        58CCA83FC24AB387FDEE5E3ADDE50C2B43A4A414ABAB2F665DC31544FD18C57C
        01D3B0310D1BD770C91905D2C60CD3B92CF7EDFD299FB9EB331C38F973CE4F67
        787E6C84E95C86AC3D8B6D5AF88EC07302EE3B780FD97296B7745FCFBEA1BDF4
        DBC7892A11144F0117DACC252CCF75810244613474AEBC918DD2052B00B0CAEB
        DEB3AEB89E11FD01AA820A1CCFA55E6AE4B075807729379209A539171FA17AA6
        962AAAB9A26503C7478F3138358422812BCF4F87ADDAE4C33653528E9313C3F3
        9D07C02F8F9B00A2B64C808FACC8A48B05EEDF7F2FB7ACBF8D50B3CEFD871FE2
        F2F51B90850C12348916DA661633A00E421C9440BBE0E0FA1F00CDE468AFBD76
        EAFEF2030D69678A76BF93BC94252805F861975ABB8ED1D430737296483E4AE0
        40535713669DC18833495DB2929668334D7A33557215612984828A2F091C2CD2
        A439639E61706E18632E98CF30C6BC83A35327B8BB7C271BD76EE2911D8FB16F
        E95E52C938F810F1131814611A0841C8571D092910BF9891FF3DC83E80B5E691
        4BF663F1B6C7AC1D6C54DFC001771FEDA28333CE295A68E3A0F1345A38446DB2
        816E6D052DA205DDD539377D8EC9B909A6662799704739E9F661D92E8117A021
        1357132C092FE1C6EAF7D0D37A3185AE027B8C3D3C671EA1E8E6C9890263EE18
        9F6DDA8EB259A6D75BC3B395FB6016AAD50A725A7A3E23558316E8A55FBD3D5C
        7012AF947A76F53A3D6F3BE2F5F14196F12DFBDBBC4DB99E13461F7F5E730BBD
        DA5A34A1733637CCE19943DC6FFF90B9208BAE87A90855501BAFA3516D61A9D2
        8D22A90829C0142653DE1407CA877834B71BD27079ED257CAAF593BC23FA76EE
        2FFC0779B744321DE7E0DE4344B514DFC97D9BE1FC1834805C371F819205C280
        B81FCFBD60080134E8B54F6D74368B234A9F94D3337C5CBD95566D119FC8DC8E
        E9381C2D1EC5761DDA58C4D270275747AE21E46A9886457E324FD12852B40AE4
        FD1C4212F852402C1CA73DBE840D951BA869A9A31829D067F5F3D5D93BD818B9
        8A2BA31BF8897517BB520F1209201F7299F48039581C5E41D6CD2123210CC087
        5AAF666A41009A19BC78A477089FCE7FF6BFC8A5F92B698FB5739DBE954C3ECB
        35F21B313148BB339C283FCF3EFF291CC542D3C2E8F52154540401B3F62C4E19
        28FCE2930106415660696C31B54D0DB477B5B06D4937AB523A37EAB7827F1314
        8BE0CE50308778BAF620234E2B8F58E7A9A162FE4AE14243D038BA30C00A8295
        E32B9F8E0BB9B3341BF084B79F6794FD5C9BB88EB01EE6AC37426BA499E58915
        F4CABD44DD18F16292C0F4F0029F99E234B3768648758C684B142926715E8C73
        B87488C9729AA00C83EE0883A9113EB3EC667A2A7C083218B339068E14F18AA3
        689CA6BE7A8075C2669D3384A7D67198B7CEA75101ED62C999850180CEF092FD
        57A87FF4BEC7D43D5C9E5AC312B98365EE32C6AD09124E8261E52CAAA2F06F85
        6F820F148132E812C4B418B942995831C2AACC4AD6272EE7A6E4FB78B7F24E72
        5A8E426D018B80553521AE6E580AF969027304636604637A9C42DE275E5D4542
        E9C0D7B3C86A910D6E8E53F890020C787D6CD3C08B020C7A03873E5E79DB91BF
        8FFFC3D19DE95DEFFD5CFEF3FA4DB3EFE4CEE03E368536F094B68F4FD4FF0538
        50AD45E9A8EF6489DA49B55B83513298922619489FE448E13007DDC37CD9FBF7
        F95DF8CBFBA402A4E1F887FF9A9ECB15E46C1FE5E9B3E48B3A7AF5326C45C3F3
        46896A591CD7A07836466D721A7468F35B4B2BAA2E1AFA55BFBF51D0B43D1067
        745B0980DBFEE9137D5FE1ABAB2E2A2DC7945D14456582F37C7CD1ADCC7AB364
        9C2C670A439C499FA660964085A41EA531DC44BD524F428EA3F93ABE00473808
        194454608DCFE13E709877DDB09C2B5639D4A66651C3094C16A389518CA24526
        1D3036564383EA73B339C8401EB6ACBEEAD8CF3EB5FB752FBA02BF340F7089DE
        BB178B55C7B5013E1DBE1DE10B1E721FE60B83FF08CA7C81D32AB7725174159A
        AE52368B4CE6A719991862307B667EE3695011072502B20C22D0102246C80CF8
        FAF74EB077698AF69608F5352A15F12C32095C2789F0211E2DA34504670B4014
        96AB5DC77FDDEF8B16F5CB425D8FAF367A3E7ACCEAE38BEE9789E4556E6EBB19
        D557898B18254ACCD8699EF59F259003C25A84444D82AA9A16AF735D4CB9A6AB
        53BAB6B197AE44056101AE5DA2608ED13F3AC0D98E51F63E39C5745A503424C2
        051FD9B7884715C2BA8FA2788840613C9BE0634D5BC470A24AEA523A7FFEB200
        7A63BD077B8A3DEE31B34F230053F3B8A7701F15728AB264D01C6F9EDE18DE70
        AA3DD4716A49A8ED54A3DA3C1AF72BD35D6B276F0FD53B57A338E0E6C80CCF31
        3296C133CE1356CED15B31C0EBD6E4D9BADCE1A1276C9E1B8C22080810048184
        EB85B11D194516689A23AEB55BDEBBA6EB8EA33BF23F9EFC758F2F5CD4FF8AFE
        F65F3F3FF4A5CCBFB42FD3BA581D593DD2A0D63FB3367AC9BECD898D072B1637
        0CB29ED285DF3850437A781CD3D103274B600E71E6E81823A74BC85299AAEA02
        F54D590201C27708A973EC7C42E6D4B9566A531A898886AE818440A0A3CAD2F8
        97BE7EACE5D8023E7FEBBB50835AF78D1FB4DCA96F496CDE99DC52DB4F230B96
        7700B7FDD9671BFFEA236FD49B5B03BC99E7700A43CC4C3A78BEC093EAB04BAB
        A9940EA349D34892C16C2E4A47A3C144DA45D724645941041A8190D13441482F
        7B5FFB5C830ABC8C6795DF419224453EF9AEEEA1375CD9DAB8A9C700EF3C5353
        65C6679284AA9751151F456306A3EC303519C12E18640A3EA727123457870829
        32921CA0483E4268F8416234164A76BEE5CB4FB92F34DECB7B997B096A6F8A78
        8D158EF7F8EEE3DC7377898B97C7E96C0DA8AA28E396CE333A6393CFA5281664
        846713D6533CDD5F40564A54C535F4A88AE729D87E1C848EA6CA7A323AB7E078
        AF38006553FAE18343D2962BEA58DE11E7ECB8C7F06898A816251E094844A384
        3581A20640024198CCDC048EE7938CA8C84451651524812A81E72B2343337FE2
        6DFE7D012C5D9464365D90F73C9DA1AD214E4773888A844F542F13521D34559F
        8FF14045967C544560DA3E25D3A6503249C57412110549C87842DBE57A910F7D
        F4CECF2D18E7AF38404BB2D2CBA40BBEAAC818A6CFF8B4A05CD6A94C8648C542
        44340D5991909010A80401CC95BC1DE7663C3F1A3294482839A948DA0959D29F
        BCE5077B7F23EFFFBF037C67EF48D09D923EAD2782EF23A12281240142260864
        04F3E6254942916078B2B063CF887D0B3037F4FCDC82EF3FBF3700809379716F
        4FA5D4178F888F791E5B84A05540480042206C978C6DBBC7CECEE47EF4B53D43
        0F00A610E225FD1EF0EB7AC5D3E86F0C20D5C9EFBE24DA9C8C6BD5B190A62A92
        5A7CF0E9E1E9817C69E1D4F272FA7FEDBF12AFB25E0378B5F5DF92384393E95E
        D24F0000000049454E44AE426082}
      ParentBackground = False
      ParentFont = False
      TabOrder = 18
      Version = '6.2.1.5'
    end
  end
  object PanelDesconto: TPanel
    Left = 0
    Top = 58
    Width = 257
    Height = 81
    Align = alCustom
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 2
    Color = cl3DLight
    TabOrder = 3
    object Label1: TLabel
      Left = 159
      Top = 52
      Width = 17
      Height = 16
      Caption = 'R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 159
      Top = 28
      Width = 12
      Height = 16
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 2
      Top = 2
      Width = 253
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Descontos'
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 75
    end
    object Label10: TLabel
      Left = 18
      Top = 32
      Width = 46
      Height = 13
      Caption = 'Sub Total'
    end
    object Label11: TLabel
      Left = 1
      Top = 56
      Width = 63
      Height = 13
      Caption = 'Total L'#237'quido'
    end
    object EdtPercentualDesconto: TCurrencyEdit
      Left = 177
      Top = 25
      Width = 75
      Height = 21
      Hint = 'Percentual de Desconto (Tecla F4)'
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DecimalPlaces = 5
      DisplayFormat = ',#0.00000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      ZeroEmpty = False
      OnExit = t
      OnKeyPress = EdtPercentualDescontoKeyPress
    end
    object EdtValorDesconto: TCurrencyEdit
      Left = 178
      Top = 51
      Width = 75
      Height = 21
      Hint = 'Valor do desconto (Tecla F6)'
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',#0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      ZeroEmpty = False
      OnExit = EdtValorDescontoExit
      OnKeyPress = EdtValorDescontoKeyPress
    end
    object EdtSubTotal: TCurrencyEdit
      Left = 70
      Top = 27
      Width = 89
      Height = 21
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
      ZeroEmpty = False
    end
    object EdtTotalLiquido: TCurrencyEdit
      Left = 70
      Top = 50
      Width = 89
      Height = 21
      Hint = 'Total liquido da venda (Tecla F2)'
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      ZeroEmpty = False
      OnExit = EdtTotalLiquidoExit
      OnKeyPress = EdtTotalLiquidoKeyPress
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 138
    Width = 257
    Height = 377
    Align = alCustom
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 4
    object PanelOK: TPanel
      Left = 2
      Top = 243
      Width = 253
      Height = 132
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvNone
      BevelWidth = 2
      Color = cl3DLight
      TabOrder = 0
      object RxLabel3: TRxLabel
        Left = 2
        Top = 46
        Width = 43
        Height = 16
        Caption = 'Troco:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape8: TShape
        Left = 69
        Top = 36
        Width = 180
        Height = 42
        Brush.Color = clBlack
        Pen.Color = clSilver
        Pen.Width = 3
        Shape = stRoundRect
      end
      object RxLabel11: TRxLabel
        Left = 2
        Top = 6
        Width = 69
        Height = 16
        Caption = 'Diferen'#231'a:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel14: TRxLabel
        Left = 4
        Top = 94
        Width = 39
        Height = 16
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape9: TShape
        Left = 67
        Top = 84
        Width = 182
        Height = 42
        Brush.Color = clBlack
        Pen.Color = clSilver
        Pen.Width = 3
        Shape = stRoundRect
      end
      object edtDiferenca: TCurrencyEdit
        Left = 72
        Top = 6
        Width = 178
        Height = 21
        TabStop = False
        AutoSize = False
        CheckOnExit = True
        Color = clInactiveCaptionText
        DisplayFormat = ',#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        ZeroEmpty = False
      end
      object EdtTroco: TCurrencyEdit
        Left = 72
        Top = 42
        Width = 172
        Height = 33
        AutoSize = False
        BorderStyle = bsNone
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -23
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object EdtTotalGeral: TCurrencyEdit
        Left = 72
        Top = 91
        Width = 172
        Height = 33
        AutoSize = False
        BorderStyle = bsNone
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -23
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
    object Panel8: TPanel
      Left = 2
      Top = 2
      Width = 253
      Height = 241
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = 16710131
      TabOrder = 1
      object Label13: TLabel
        Left = 1
        Top = 1
        Width = 251
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'Formas de Pagamentos'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 166
      end
      object DBGridFormas: TXDBGrid
        Left = 1
        Top = 17
        Width = 251
        Height = 223
        Align = alClient
        DataSource = DSFormas
        GridStyle.VisualStyle = vsXPStyle
        Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
        OptionsEx = [dgBlankRow, dgTotalValues, dgTotalFields, dgTotalFooter, dgTotalHeaderBox, dgTotalValuesBox, dgTotalFieldsBox, dgTotalFooterBox, dgAutoAscendOrder, dgAutoUpdateSequence, dgDelayUpdateSequence, dgAutoUpdateTotals, dgDelayUpdateTotals, dgCalcWholeDataSet, dgCalcSelectedRows, dgDelaySelectedRows, dgSelectedAutoHidden, dgClickSelectOff]
        TabOrder = 0
        OnColEnter = DBGridFormasColEnter
        OnDrawColumnCell = DBGridFormasDrawColumnCell
        OnEnter = DBGridFormasEnter
        OnExit = DBGridFormasExit
        OnKeyDown = DBGridFormasKeyDown
        OnKeyPress = DBGridFormasKeyPress
        OnRowSelect = DBGridFormasRowSelect
        OnTotalsUpdated = DBGridFormasTotalsUpdated
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Formas de Pagto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            TotalFooter.Alignment = taCenter
            TotalFooter.Caption = 'Total Pago'
            Visible = True
            Width = 150
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            TotalFooter.Format = '%n'
            TotalFooter.TotalResult = trCalcValue
            Visible = True
            Width = 77
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Visible = True
          end>
      end
    end
  end
  object Panel5: TPanel
    Left = 256
    Top = 57
    Width = 465
    Height = 201
    BevelInner = bvRaised
    Caption = 'Panel5'
    TabOrder = 5
    object xdbgrid1: TXDBGrid
      Left = 2
      Top = 2
      Width = 461
      Height = 197
      Align = alClient
      DataSource = DTS_PAGTO
      GridStyle.VisualStyle = vsXPStyle
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
      TabOrder = 0
      OnCellClick = xdbgrid1CellClick
      OnDrawColumnCell = xdbgrid1DrawColumnCell
      OnKeyDown = xdbgrid1KeyDown
      Columns = <
        item
          CheckBox = True
          Expanded = False
          FieldName = 'CHEK'
          Title.Color = clScrollBar
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 50
        end
        item
          Expanded = False
          FieldName = 'NUMERO_PAR'
          Title.Alignment = taCenter
          Title.Caption = 'Parcelas'
          Title.Color = clScrollBar
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 100
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Nome Cond. Pagto'
          Title.Color = clScrollBar
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 180
        end
        item
          Expanded = False
          FieldName = 'JUROS_DIA'
          Title.Alignment = taCenter
          Title.Caption = 'Juros'
          Title.Color = clScrollBar
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 85
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Color = clScrollBar
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = False
          Width = 53
        end>
    end
    object Edit2: TEdit
      Left = 352
      Top = 0
      Width = 97
      Height = 21
      TabOrder = 1
      Visible = False
    end
  end
  object Panel9: TPanel
    Left = 74
    Top = 149
    Width = 577
    Height = 121
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelWidth = 4
    TabOrder = 6
    Visible = False
    object Label17: TLabel
      Left = 32
      Top = 29
      Width = 515
      Height = 52
      Caption = 'Imprimindo Cupom Fiscal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 31
      Top = 28
      Width = 515
      Height = 52
      Caption = 'Imprimindo Cupom Fiscal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -37
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 32
      Top = 9
      Width = 109
      Height = 29
      Caption = 'Aguarde...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ProgressBar1: TsGauge
      Left = 16
      Top = 80
      Width = 535
      Height = 26
      ForeColor = clNavy
      Progress = 0
      Suffix = '%'
    end
  end
  object Panel6: TPanel
    Left = 74
    Top = 141
    Width = 615
    Height = 262
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelWidth = 4
    TabOrder = 7
    Visible = False
    object Label7: TLabel
      Left = 16
      Top = 8
      Width = 388
      Height = 29
      Caption = 'Lan'#231'amento de Cheques em Valor...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object XDBGrid2: TXDBGrid
      Left = 31
      Top = 37
      Width = 545
      Height = 170
      Align = alCustom
      DataSource = Dts_cheques
      GridStyle.VisualStyle = vsXPStyle
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgMarkerAutoAlign, dgMarkerAutoToggle, dgMarkerAscendOnly, dgForceSequence, dgThumbTracking, dgRightMoving]
      OptionsEx = [dgBlankRow, dgTotalValues, dgTotalFields, dgTotalFooter, dgTotalHeaderBox, dgTotalValuesBox, dgTotalFieldsBox, dgTotalFooterBox, dgAutoAscendOrder, dgAutoUpdateSequence, dgDelayUpdateSequence, dgAutoUpdateTotals, dgDelayUpdateTotals, dgCalcWholeDataSet, dgCalcSelectedRows, dgDelaySelectedRows, dgSelectedAutoHidden, dgClickSelectOff]
      TabOrder = 0
      OnKeyDown = XDBGrid2KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'PARC'
          ReadOnly = True
          Title.Caption = 'Parc.'
          Visible = True
          Width = 39
        end
        item
          Expanded = False
          FieldName = 'cond_pagto'
          Title.Alignment = taCenter
          Title.Caption = 'Formas de Pagto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          TotalFooter.Alignment = taCenter
          TotalFooter.Caption = 'Total  em Cheques'
          Visible = True
          Width = 369
        end
        item
          Expanded = False
          FieldName = 'valor'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          TotalFooter.FieldName = 'valor'
          TotalFooter.Format = '%m'
          TotalFooter.TotalResult = trCalcValue
          Visible = True
          Width = 96
        end>
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 207
      Top = 211
      Width = 100
      Height = 41
      Caption = '&Ok'
      ImageIndex = 10
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = FDvGlassButton2Click
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
    object AdvGlowButton2: TAdvGlowButton
      Left = 341
      Top = 211
      Width = 133
      Height = 41
      Caption = '&Cancelar'
      ImageIndex = 6
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = FDvGlassButton1Click
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
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 644
    Top = 334
  end
  object SPC_CREDIARIO: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_VENCIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'SITUACAO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARCELA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME_SACADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VLR_GRAFICA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'N_OS'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CREDIARIO'
    Left = 324
    Top = 92
  end
  object SPC_MOV_DIARIO: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_ENTRADA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_SAIDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_CC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMERO_CC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORIGEM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_MOVIMENTO_DIARIO'
    Left = 440
    Top = 3
  end
  object QryPedidos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from V_pedidos')
    SQLConnection = DM.SQLC
    Left = 257
    Top = 144
    object QryPedidosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QryPedidosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 2
    end
    object QryPedidosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object QryPedidosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object QryPedidosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object QryPedidosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object QryPedidosDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object QryPedidosDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object QryPedidosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object QryPedidosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object QryPedidosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object QryPedidosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object QryPedidosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object QryPedidosUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object QryPedidosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object QryPedidosTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object QryPedidosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object QryPedidosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object QryPedidosCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object QryPedidosN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object QryPedidosN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object QryPedidosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object QryPedidosHORA: TTimeField
      FieldName = 'HORA'
    end
    object QryPedidosVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object QryPedidosCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object QryPedidosCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object QryPedidosCOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object QryPedidosNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object QryPedidosSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
  end
  object cds_pedidos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_pedidos'
    Left = 194
    Top = 174
    object cds_pedidosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_pedidosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 2
    end
    object cds_pedidosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object cds_pedidosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cds_pedidosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object cds_pedidosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cds_pedidosDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object cds_pedidosDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object cds_pedidosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cds_pedidosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object cds_pedidosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object cds_pedidosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cds_pedidosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cds_pedidosUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object cds_pedidosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object cds_pedidosTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object cds_pedidosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object cds_pedidosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object cds_pedidosCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object cds_pedidosN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object cds_pedidosN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object cds_pedidosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cds_pedidosHORA: TTimeField
      FieldName = 'HORA'
    end
    object cds_pedidosVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object cds_pedidosCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object cds_pedidosCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object cds_pedidosCOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object cds_pedidosNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cds_pedidosSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
  end
  object Dsp_pedidos: TDataSetProvider
    DataSet = QryPedidos
    Left = 269
    Top = 212
  end
  object Dts_pedidos: TDataSource
    DataSet = cds_pedidos
    Left = 315
    Top = 178
  end
  object SPC_CHEQUE: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'QNT'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_CHEQUE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'RETORNARDO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'RETORNADO_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_CADASTRO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_DEPOSITO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO_CADASTRO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'COMPENSADO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CHEQUES'
    Left = 368
    Top = 4
  end
  object ACBrECF1: TACBrECF
    QuebraLinhaRodape = False
    Porta = 'Procurar'
    DescricaoGrande = True
    MsgAguarde = 'Aguardando a resposta da Impressora: %d segundos'
    MsgTrabalhando = 'Impressora est'#225' trabalhando'
    MsgRelatorio = 'Imprimindo %s  %d'#170' Via '
    MsgPausaRelatorio = 'Destaque a %d'#170' via, <ENTER> proxima, %d seg.'
    PaginaDeCodigo = 0
    MemoParams.Strings = (
      '[Cabecalho]'
      'LIN000=<center><b>Nome da Empresa</b></center>'
      'LIN001=<center>Nome da Rua , 1234  -  Bairro</center>'
      'LIN002=<center>Cidade  -  UF  -  99999-999</center>'
      
        'LIN003=<center>CNPJ: 01.234.567/0001-22    IE: 012.345.678.90</c' +
        'enter>'
      
        'LIN004=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>COO: <b><code>NumCupom</code' +
        '></b></td></tr></table>'
      'LIN005=<hr>'
      ' '
      '[Cabecalho_Item]'
      'LIN000=ITEM   CODIGO     DESCRICAO'
      'LIN001=QTD         x UNITARIO       Aliq     VALOR (R$)'
      'LIN002=<hr>'
      
        'MascaraItem=III CCCCCCCCCCCCC DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDQQQQ' +
        'QQQQ UU x VVVVVVVVVVVVV AAAAAA TTTTTTTTTTTTT'
      ' '
      '[Rodape]'
      'LIN000=<hr>'
      
        'LIN001=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>Projeto ACBr: <b><code>ACBR<' +
        '/code></b></td></tr></table>'
      'LIN002=<center>Obrigado Volte Sempre</center>'
      'LIN003=<hr>'
      ' '
      '[Formato]'
      'Colunas=48'
      'HTML=1'
      'HTML_Title_Size=2'
      'HTML_Font=<font size="5" face="Fixed">')
    ArqLOG = 'log.txt'
    ConfigBarras.MostrarCodigo = True
    ConfigBarras.LarguraLinha = 3
    ConfigBarras.Altura = 10
    ConfigBarras.Margem = 0
    InfoRodapeCupom.Imposto.ModoCompacto = False
    Left = 650
    Top = 80
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
    Top = 56
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
    Margens.Right = 10
    Margens.Top = 3
    Margens.Bottom = 3
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'STARTNET PROVEDOR'
    RegistroUsuario.SerieProduto = 'SITE 7.0 - 2241/0722 (DX104)'
    RegistroUsuario.AutorizacaoKey = 'MG3VT-Y2EA8-TW1F6-D7VUY-XNKH5-D1HWC-FT6NO'
    About = 'RDprint 7.0a'
    Acentuacao = Transliterate
    CaptionSetup = 'Configura'#231#227'o da Impressora'
    TitulodoRelatorio = 'Impress'#227'o da Venda'
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
    TamanhoQteLinhas = 33
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    FonteGrafica = sCourierNew
    ReduzParaCaber = True
    Left = 371
    Top = 216
  end
  object DSFormas: TDataSource
    DataSet = CDSFormas
    Left = 56
    Top = 216
  end
  object qFormas: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from CONDICAO_PAGTO_FORMAS ORDER By COD_FORMA ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 28
    Top = 174
    object qFormasCOD_FORMA: TIntegerField
      FieldName = 'COD_FORMA'
      Required = True
    end
    object qFormasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 30
    end
    object qFormasTIPO_PAGTO: TStringField
      FieldName = 'TIPO_PAGTO'
      FixedChar = True
      Size = 1
    end
    object qFormasMOSTRA_VENDA: TStringField
      FieldName = 'MOSTRA_VENDA'
      Size = 1
    end
    object qFormasTELA_TROCO: TStringField
      FieldName = 'TELA_TROCO'
      Size = 1
    end
  end
  object qPGTO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from condicao_pagamento order by numero_par asc')
    SQLConnection = DM.SQLC
    Left = 36
    Top = 61
    object qPGTOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qPGTONUMERO_PAR: TIntegerField
      FieldName = 'NUMERO_PAR'
    end
    object qPGTOVARIACAO_DIAS: TIntegerField
      FieldName = 'VARIACAO_DIAS'
    end
    object qPGTOPIMEIRA_PAR: TIntegerField
      FieldName = 'PIMEIRA_PAR'
    end
    object qPGTOJUROS_DIA: TFMTBCDField
      FieldName = 'JUROS_DIA'
      Precision = 15
    end
    object qPGTOMEDIA_DIAS: TIntegerField
      FieldName = 'MEDIA_DIAS'
    end
    object qPGTOJUROS_BASE: TFMTBCDField
      FieldName = 'JUROS_BASE'
      Precision = 15
      Size = 2
    end
    object qPGTOTIPO_PAGAMENTO: TStringField
      FieldName = 'TIPO_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object qPGTOSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object qPGTOUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object qPGTODATA: TDateField
      FieldName = 'DATA'
    end
    object qPGTODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 35
    end
    object qPGTOPG_ECF: TStringField
      FieldName = 'PG_ECF'
      Size = 2
    end
    object qPGTOCHEK: TStringField
      FieldName = 'CHEK'
      Size = 1
    end
  end
  object DTS_PAGTO: TDataSource
    DataSet = CDS_PAGTO
    Left = 44
    Top = 124
  end
  object DSP_PAGTO: TDataSetProvider
    DataSet = qPGTO
    Left = 92
    Top = 68
  end
  object CDS_PAGTO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_PAGTO'
    Left = 100
    Top = 121
    object CDS_PAGTOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_PAGTONUMERO_PAR: TIntegerField
      FieldName = 'NUMERO_PAR'
    end
    object CDS_PAGTOVARIACAO_DIAS: TIntegerField
      FieldName = 'VARIACAO_DIAS'
    end
    object CDS_PAGTOPIMEIRA_PAR: TIntegerField
      FieldName = 'PIMEIRA_PAR'
    end
    object CDS_PAGTOJUROS_DIA: TFMTBCDField
      FieldName = 'JUROS_DIA'
      Precision = 15
    end
    object CDS_PAGTOMEDIA_DIAS: TIntegerField
      FieldName = 'MEDIA_DIAS'
    end
    object CDS_PAGTOJUROS_BASE: TFMTBCDField
      FieldName = 'JUROS_BASE'
      Precision = 15
      Size = 2
    end
    object CDS_PAGTOTIPO_PAGAMENTO: TStringField
      FieldName = 'TIPO_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object CDS_PAGTOSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object CDS_PAGTOUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_PAGTODATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_PAGTODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 35
    end
    object CDS_PAGTOCHEK: TStringField
      FieldName = 'CHEK'
      Size = 1
    end
    object CDS_PAGTOPG_ECF: TStringField
      FieldName = 'PG_ECF'
      Size = 2
    end
  end
  object Dts_cheques: TDataSource
    DataSet = cds_cheques
    Left = 483
    Top = 234
  end
  object qrcaixa_mov: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from MOVIMENTO_DIARIO')
    Left = 56
    Top = 276
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
    Left = 120
    Top = 243
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
    Left = 144
    Top = 332
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
    Left = 60
    Top = 174
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
  object QBuscaItens: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM SP_BUSCAITENS (:CODPRO, :COD_VEN, :ITEM);')
    Left = 480
    Top = 88
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
  object DSQBuscaItens: TDataSource
    AutoEdit = False
    DataSet = QBuscaItens
    Left = 552
    Top = 88
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
    Left = 433
    Top = 56
  end
  object CDSFormas: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 58
    Top = 341
    object CDSFormasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDSFormasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object CDSFormasTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object CDSFormasCONCEDER_DESCONTO: TStringField
      FieldName = 'CONCEDER_DESCONTO'
      Size = 1
    end
    object CDSFormastipo_pagto: TStringField
      FieldKind = fkCalculated
      FieldName = 'tipo_pagto'
      Calculated = True
    end
    object CDSFormasVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = ',0.00;-,0.00'
      EditFormat = ',0.00;-,0.00'
      currency = True
    end
  end
  object ClientDataSet1: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 578
    Top = 333
    object ClientDataSet1CodigoCliente: TIntegerField
      FieldName = 'CodigoCliente'
    end
    object ClientDataSet1CodigoCompra: TIntegerField
      FieldName = 'CodigoCompra'
    end
    object ClientDataSet1Vendedor: TStringField
      FieldName = 'Vendedor'
    end
    object ClientDataSet1Historico: TStringField
      FieldName = 'Historico'
      Size = 50
    end
    object ClientDataSet1DataCompra: TDateField
      FieldName = 'DataCompra'
      EditMask = '!99/99/0000;1;_'
    end
    object ClientDataSet1Parcela: TStringField
      FieldName = 'Parcela'
      Size = 10
    end
    object ClientDataSet1DataVencimento: TDateField
      FieldName = 'DataVencimento'
      EditMask = '!99/99/0000;1;_'
    end
    object ClientDataSet1Comissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object ClientDataSet1ValorParcela: TFMTBCDField
      FieldName = 'ValorParcela'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object cds_cheques: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 418
    Top = 237
    object cds_chequesvenda: TStringField
      FieldName = 'venda'
      Size = 30
    end
    object cds_chequescond_pagto: TStringField
      FieldName = 'cond_pagto'
      Size = 50
    end
    object cds_chequesvalor: TCurrencyField
      FieldName = 'valor'
    end
    object cds_chequesPARC: TIntegerField
      FieldName = 'PARC'
    end
  end
  object SPC_CREDIARIO_C: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_VENCIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'SITUACAO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARCELA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME_SACADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VLR_GRAFICA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'N_OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CONV'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CREDIARIO_CONV'
    Left = 180
    Top = 28
  end
  object FXduplicata: TfrxReport
    Version = '6.8.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39188.758111979200000000
    ReportOptions.LastChange = 42583.602847418980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'procedure npaginaOnAfterData(Sender: TfrxComponent);'
      'begin'
      '  if COPY(npagina.text,1,1) <> '#39'1'#39' then'
      '  begin'
      '    pagefooter1.printonfirstpage := false;'
      
        '    NCONTINUA.VISIBLE := TRUE;                                  ' +
        '          '
      '  end'
      '  else'
      '  begin'
      '    pagefooter1.printonfirstpage := true;'
      
        '    NCONTINUA.VISIBLE := FALSE;                                 ' +
        '                                   '
      '  end;  '
      'end;'
      ''
      'BEGIN'
      'END.            ')
    OnGetValue = FXduplicataGetValue
    Left = 258
    Top = 261
    Datasets = <
      item
        DataSet = qrPrevendaItemRel
        DataSetName = 'qrPrevendaItemRel'
      end
      item
        DataSet = qrPrevendaRel
        DataSetName = 'qrPrevendaRel'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.500000000000000000
      PaperSize = 256
      LeftMargin = 7.800000000000000000
      RightMargin = 8.200000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      Frame.Width = 0.500000000000000000
      MirrorMode = []
      OnAfterPrint = 'Page2OnAfterPrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 733.228820000000000000
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 1.000000000000000000
          Width = 347.716760000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            'N'#176' OR'#199'AMENTO: [qrPreVendaRel."CODIGO_PREVENDA"]')
          ParentFont = False
        end
        object Shape11: TfrxShapeView
          AllowVectorExport = True
          Top = 64.929190000000000000
          Width = 733.228820000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 66.708720000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 66.708720000000000000
          Width = 336.378170000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 66.708720000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'UNID.')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 66.708720000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE.')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 66.708720000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRE'#199'O-R$')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 66.708720000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL-R$')
          ParentFont = False
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 53.913420000000000000
          Top = 66.141732280000000000
          Height = 457.322839530001000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 66.141732280000000000
          Height = 457.322834645669000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 66.141732280000000000
          Height = 457.322839530001000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 66.141732280000000000
          Height = 457.322839530001000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 66.141732280000000000
          Height = 457.322839530001000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object npagina: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 3.779530000000000000
          Height = 11.338590000000000000
          Visible = False
          OnAfterData = 'npaginaOnAfterData'
          DataField = 'LINHA9'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA9"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 1.133858267716540000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 0.755905510000000000
          Top = 22.677180000000000000
          Width = 442.205010000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[qrPreVendaRel."CLIENTE_CODIGO"] - [qrPreVendaRel."CLIENTE_NOME"' +
              '] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 15.118120000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 15.118120000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Identidade / Insc.Estadual')
          ParentFont = False
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 15.118120000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Data da Compra')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 664.197280000000000000
          Top = 23.677180000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaRel."DATA_COMPRA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 452.543600000000000000
          Top = 24.456710000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaRel."CLIENTE_CPF_CNPJ"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 568.709030000000000000
          Top = 24.677180000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaRel."CLIENTE_RG"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 1.133858270000000000
          Top = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 245.669450000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 44.354360000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaRel."CLIENTE_ENDERECO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 53.692950000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaRel."CLIENTE_BAIRRO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade/UF')
          ParentFont = False
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 245.669450000000000000
          Top = 49.133890000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaRel."CLIENTE_CIDADE"] - [qrPreVendaRel."CLIENTE_UF"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Complemento')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 358.055350000000000000
          Top = 44.354360000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaRel."CLIENTE_COMPLEMENTO"]')
          ParentFont = False
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 507.457020000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefones')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 44.354360000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[qrPreVendaRel."CLIENTE_TELEFONE1"]  [qrPreVendaRel."CLIENTE_TEL' +
              'EFONE2"] [qrPreVendaRel."CLIENTE_CELULAR"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 625.401980000000000000
          Top = 39.795300000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Caixa:')
          ParentFont = False
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 51.913420000000000000
          Width = 109.606370000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 659.638220000000000000
          Top = 39.795300000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'caixa')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 625.401980000000000000
          Top = 53.133890000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 660.417750000000000000
          Top = 53.133890000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaRel."VENDEDOR"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 1.000000000000000000
          Width = 385.512060000000000000
          Height = 15.118110240000000000
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[qrPreVendaRel."NOME_EMPRESA"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 119.023929610000000000
        Top = 238.110390000000000000
        Width = 733.228820000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 0.377952760000000000
          Top = 1.559059999999990000
          Width = 732.472440940000000000
          Height = 116.409448818898000000
          Fill.BackColor = clWhite
          Frame.Color = clWhite
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 514.015713860000000000
          Top = 23.685246850000000000
          Width = 117.165354330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTOS:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 514.015713860000000000
          Top = 42.582896850000000000
          Width = 117.165354330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ACR'#201'SCIMOS:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 514.015713860000000000
          Top = 63.480546850000000000
          Width = 117.165354330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO PEDIDO:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 657.637778190000000000
          Top = 21.905716850000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<qrPrevendaItemRel."ITEM_DESCONTO">)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 657.637778190000000000
          Top = 40.803366850000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$ 0,00')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 657.637778190000000000
          Top = 61.701016850000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<qrPrevendaItemRel."ITEM_TOTAL">)]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 514.015713860000000000
          Top = 4.787689610000000000
          Width = 117.165354330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DOS PRODUTOS:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 657.637778190000000000
          Top = 3.008159610000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData4)]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Top = 3.551449610000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Condi'#231#245'es de Pagamento:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 2.551449610000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 0.220470000000000000
          Top = 17.890039610000000000
          Width = 461.102660000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 210.992270000000000000
          Top = 3.551449610000000000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimentos ('#224' prazo)')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559079530000000000
          Top = 19.637761110000000000
          Width = 98.267780000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Dinheiro:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559079530000000000
          Top = 33.401540630000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cheque '#224' Vista:')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559079530000000000
          Top = 48.740123309999700000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cheque '#224' Prazo:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559079530000000000
          Top = 64.503897960000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cart'#227'o de D'#233'bito:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 79.866100239999900000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cart'#227'o de Cr'#233'dito:')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606387090000000000
          Top = 19.637761110000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaRel."DINHEIRO"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606387090000000000
          Top = 33.401540630000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaRel."CHEQUE_VISTA"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606387090000000000
          Top = 48.740123310000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaRel."CHEQUE_PRAZO"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 64.503897960000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaRel."CARTAO_DEBITO"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 79.866100240000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaRel."CARTAO_CREDITO"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 95.449099610000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Credi'#225'rio:')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 110.606370000000000000
          Top = 95.449099610000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaRel."CREDIARIO"]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 1.645659529999990000
          Height = 117.543311970000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Top = 79.370130000000000000
          Width = -272.126160000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 17.763779530000000000
          Height = 101.291338582677000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Top = 60.472480000000000000
          Width = -272.126160000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Top = 41.574830000000000000
          Width = -272.126160000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Top = 22.677180000000000000
          Width = -272.126160000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 2.023573230000010000
          Height = 77.480314960000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 106.047310000000000000
          Width = 253.228434330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura do Cliente')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 22.677180000000000000
          Width = 154.960730000000000000
          Height = 90.708720000000000000
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.496065430000000000
        Top = 162.519790000000000000
        Width = 733.228820000000000000
        DataSet = qrPrevendaItemRel
        DataSetName = 'qrPrevendaItemRel'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 1.779530000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaItemRel."ITEM_CODIGO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 1.779530000000000000
          Width = 340.157700000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaItemRel."ITEM_NOME"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 1.779530000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[qrPreVendaItemRel."ITEM_UND"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 459.102660000000000000
          Top = 1.779530000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaItemRel."ITEM_QUANTIDADE"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 557.370440000000000000
          Top = 1.779530000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaItemRel."ITEM_PRECO_UNITARIO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 648.079160000000000000
          Top = 1.779530000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaItemRel."ITEM_TOTAL"]')
          ParentFont = False
        end
      end
      object NCONTINUA: TfrxMemoView
        AllowVectorExport = True
        Left = 90.708720000000000000
        Top = 461.102660000000000000
        Width = 291.023810000000000000
        Height = 18.897650000000000000
        DisplayFormat.DecimalSeparator = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '*** CONTINUA NA PR'#211'XIMA P'#193'GINA ***')
        ParentFont = False
      end
      object Line3: TfrxLineView
        AllowVectorExport = True
        Top = 415.748300000000000000
        Width = 733.228820000000000000
        Color = clBlack
        Frame.Typ = []
        Diagonal = True
      end
    end
  end
  object cds_formas: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      '  select * from PREVENDA_FORMAS_PAGAMENTO ORDER By COD_FORMA ASC')
    Left = 208
    Top = 227
    object cds_formasCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = 'COD_VENDA'
    end
    object cds_formasCOD_FORMA: TIntegerField
      FieldName = 'COD_FORMA'
      Origin = 'COD_FORMA'
    end
    object cds_formasVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cds_formasTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object cds_formasDESC_FORMA: TStringField
      FieldName = 'DESC_FORMA'
      Origin = 'DESC_FORMA'
      Size = 40
    end
  end
  object FSCLIENTE: TfrxDBDataset
    UserName = 'FSCLIENTE'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOME=NOME'
      'CODIGO=CODIGO'
      'CPF=CPF'
      'ENDERECO=ENDERECO'
      'APELIDO=APELIDO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'COMPLEMENTO=COMPLEMENTO'
      'MORADIA=MORADIA'
      'TIPO=TIPO'
      'SITUACAO=SITUACAO'
      'TELEFONE1=TELEFONE1'
      'TELEFONE2=TELEFONE2'
      'TELEFONE3=TELEFONE3'
      'CELULAR=CELULAR'
      'EMAIL=EMAIL'
      'RG=RG'
      'FILIACAO=FILIACAO'
      'ESTADOCIVIL=ESTADOCIVIL'
      'CONJUGE=CONJUGE'
      'PROFISSAO=PROFISSAO'
      'EMPRESA=EMPRESA'
      'RENDA=RENDA'
      'LIMITE=LIMITE'
      'REF1=REF1'
      'REF2=REF2'
      'CODVENDEDOR=CODVENDEDOR'
      'DATA_CADASTRO=DATA_CADASTRO'
      'DATA_ULTIMACOMPRA=DATA_ULTIMACOMPRA'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'OBS3=OBS3'
      'OBS4=OBS4'
      'OBS5=OBS5'
      'OBS6=OBS6'
      'NASCIMENTO=NASCIMENTO'
      'CODREGIAO=CODREGIAO'
      'regiao=regiao'
      'vendedor=vendedor')
    BCDToCurrency = False
    Left = 488
    Top = 288
  end
  object fsvenda: TfrxDBDataset
    UserName = 'fsvenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VLR_PIS=VLR_PIS'
      'VLR_COFINS=VLR_COFINS'
      'CODIGO=CODIGO'
      'VALOR_ITENS=VALOR_ITENS'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'VALOR_TOTAL=VALOR_TOTAL'
      'VALOR_COMISSAO=VALOR_COMISSAO'
      'USUARIO=USUARIO'
      'DATA_PEDIDO=DATA_PEDIDO'
      'DATA_ENTREGA=DATA_ENTREGA'
      'CODIGO_CLIENTE=CODIGO_CLIENTE'
      'NOME_CLIENTE=NOME_CLIENTE'
      'PAGAMENTO=PAGAMENTO'
      'STATUS=STATUS'
      'SITUACAO=SITUACAO'
      'USUARIO_ENTREGA=USUARIO_ENTREGA'
      'ENC_FINANCEIRO=ENC_FINANCEIRO'
      'TP=TP'
      'OBSERVACOES=OBSERVACOES'
      'COD_VENDEDOR=COD_VENDEDOR'
      'COD_PAGTO=COD_PAGTO'
      'N_CUPOM=N_CUPOM'
      'N_ECF=N_ECF'
      'COD_EMPRESA=COD_EMPRESA'
      'HORA=HORA'
      'VALOR_ACRESCIMOS=VALOR_ACRESCIMOS'
      'COD_ORCAMENTO=COD_ORCAMENTO'
      'COD_PEDIDO=COD_PEDIDO'
      'COD_OS=COD_OS'
      'NUM_NOTA=NUM_NOTA'
      'SERIE_NOTA=SERIE_NOTA'
      'ENDERECO=ENDERECO'
      'CPF_CNPJ=CPF_CNPJ'
      'RG_IE=RG_IE'
      'FONE=FONE'
      'CIDADE=CIDADE'
      'BAIRRO=BAIRRO'
      'N_PARTIDA=N_PARTIDA'
      'PROPRIEDADE=PROPRIEDADE'
      'QUANT_VENDIDA=QUANT_VENDIDA'
      'SALDO_VENDIDO=SALDO_VENDIDO'
      'MED_VETERINARIO=MED_VETERINARIO'
      'DATA_VACINA=DATA_VACINA'
      'VALOR_AVISTA=VALOR_AVISTA'
      'VALOR_PRAZO=VALOR_PRAZO'
      'UF=UF'
      'CEP=CEP'
      'NUMERO=NUMERO'
      'TIPO=TIPO'
      'COD_IBGE=COD_IBGE'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_TROCO=VALOR_TROCO'
      'ENTREGADOR=ENTREGADOR'
      'TIPO_PEDIDO=TIPO_PEDIDO'
      'FECHADO=FECHADO'
      'MESA=MESA'
      'REFERENCIA=REFERENCIA'
      'CELULAR=CELULAR'
      'PROD_RURAL=PROD_RURAL'
      'IE_PRODUTOR=IE_PRODUTOR'
      'saldo_troco=saldo_troco'
      'CHAVE_FP=CHAVE_FP'
      'CHAVE_FP_CANCEL=CHAVE_FP_CANCEL'
      'km=km'
      'MODELO_NF=MODELO_NF'
      'CFOP=CFOP'
      'COD_OS_AUTO=COD_OS_AUTO'
      'SOMAVALOR_TOTAL=SOMAVALOR_TOTAL'
      'COUNT_VENDAS=COUNT_VENDAS')
    DataSet = formVendas.Sds_pedidos
    BCDToCurrency = False
    Left = 328
    Top = 304
  end
  object fscontasreceber: TfrxDBDataset
    UserName = 'fscontasreceber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODVENDEDOR=CODVENDEDOR'
      'CODCAIXA=CODCAIXA'
      'CODCLIENTE=CODCLIENTE'
      'DATA_EMISSAO=DATA_EMISSAO'
      'DATA_VENCIMENTO=DATA_VENCIMENTO'
      'DATA_PAGAMENTO=DATA_PAGAMENTO'
      'VALOR_ORIGINAL=VALOR_ORIGINAL'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_JUROS=VALOR_JUROS'
      'VALOR_ATUAL=VALOR_ATUAL'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'DOCUMENTO=DOCUMENTO'
      'TIPO=TIPO'
      'SITUACAO=SITUACAO'
      'FILTRO=FILTRO'
      'CODVENDA=CODVENDA'
      'NOSSONUMERO=NOSSONUMERO'
      'CODREGIAO=CODREGIAO'
      'cliente=cliente')
    BCDToCurrency = False
    Left = 432
    Top = 288
  end
  object frxDBitens: TfrxDBDataset
    UserName = 'fsvenda_produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO_PRODUTO=CODIGO_PRODUTO'
      'DESCRICAO_PRODUTO=DESCRICAO_PRODUTO'
      'preco_total=preco_total'
      'CODIGO=CODIGO'
      'COMISSAO=COMISSAO'
      'DEV=DEV'
      'QNT_DEV=QNT_DEV'
      'VAL_DEV=VAL_DEV'
      'ENC_FINANCEIRO=ENC_FINANCEIRO'
      'UNIDADE=UNIDADE'
      'SIT_TRIBUTARIA=SIT_TRIBUTARIA'
      'CODIGO_PROD=CODIGO_PROD'
      'CODIGO_ID=CODIGO_ID'
      'VENDEDOR=VENDEDOR'
      'FRACAO=FRACAO'
      'COD_NCM=COD_NCM'
      'ITEN=ITEN'
      'PROD_SERV=PROD_SERV'
      'PERC_ISS=PERC_ISS'
      'BASE_ISS=BASE_ISS'
      'VL_ISS=VL_ISS'
      'PERC_ICM=PERC_ICM'
      'BASE_ICMS=BASE_ICMS'
      'VL_ICM=VL_ICM'
      'PERC_IPI=PERC_IPI'
      'BASE_IPI=BASE_IPI'
      'VL_IPI=VL_IPI'
      'PERC_COFINS=PERC_COFINS'
      'BASE_COFINS=BASE_COFINS'
      'VL_COFINS=VL_COFINS'
      'PERC_ICMS_SUBST=PERC_ICMS_SUBST'
      'BASE_ICMS_SUBST=BASE_ICMS_SUBST'
      'VL_ICMS_SUBST=VL_ICMS_SUBST'
      'PERC_PIS=PERC_PIS'
      'BASE_PIS=BASE_PIS'
      'VL_PIS=VL_PIS'
      'PRECO_UNITARIO=PRECO_UNITARIO'
      'DESCONTO=DESCONTO'
      'QUANTIDADE=QUANTIDADE'
      'CODIGO_BICO=CODIGO_BICO'
      'TANQUE=TANQUE'
      'BOMBA=BOMBA'
      'BICO=BICO')
    DataSet = formVendas.sds_pedidos_itens
    BCDToCurrency = False
    Left = 256
    Top = 312
  end
  object fxvenda: TfrxReport
    Version = '6.8.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39188.758111979200000000
    ReportOptions.LastChange = 42583.602847419000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'procedure npaginaOnAfterData(Sender: TfrxComponent);'
      'begin'
      '  if COPY(npagina.text,1,1) <> '#39'1'#39' then'
      '  begin'
      '    pagefooter1.printonfirstpage := false;'
      
        '    NCONTINUA.VISIBLE := TRUE;                                  ' +
        '          '
      '  end'
      '  else'
      '  begin'
      '    pagefooter1.printonfirstpage := true;'
      
        '    NCONTINUA.VISIBLE := FALSE;                                 ' +
        '                                   '
      '  end;  '
      'end;'
      ''
      'BEGIN'
      'END.            ')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 320
    Top = 256
    Datasets = <
      item
        DataSet = qrPrevendaItemRel
        DataSetName = 'qrPrevendaItemRel'
      end
      item
        DataSet = qrPrevendaRel
        DataSetName = 'qrPrevendaRel'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.500000000000000000
      PaperSize = 256
      LeftMargin = 7.800000000000000000
      RightMargin = 8.200000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      Frame.Width = 0.500000000000000000
      MirrorMode = []
      OnAfterPrint = 'Page2OnAfterPrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 733.228820000000000000
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 1.000000000000000000
          Width = 347.716760000000000000
          Height = 15.118110240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            'N'#176' OR'#199'AMENTO: [qrPreVendaRel."CODIGO_PREVENDA"]')
          ParentFont = False
        end
        object Shape11: TfrxShapeView
          AllowVectorExport = True
          Top = 64.929190000000000000
          Width = 733.228820000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 66.708720000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 66.708720000000000000
          Width = 336.378170000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 66.708720000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'UNID.')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 66.708720000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE.')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 66.708720000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRE'#199'O-R$')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 66.708720000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL-R$')
          ParentFont = False
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 53.913420000000000000
          Top = 66.141732280000000000
          Height = 457.322839530001000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 66.141732280000000000
          Height = 457.322834645669000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 66.141732280000000000
          Height = 457.322839530001000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 66.141732280000000000
          Height = 457.322839530001000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 66.141732280000000000
          Height = 457.322839530001000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object npagina: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 3.779530000000000000
          Height = 11.338590000000000000
          Visible = False
          OnAfterData = 'npaginaOnAfterData'
          DataField = 'LINHA9'
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA9"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 1.133858267716540000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 0.755905510000000000
          Top = 22.677180000000000000
          Width = 442.205010000000000000
          Height = 15.118120000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[qrPreVendaRel."CLIENTE_CODIGO"] - [qrPreVendaRel."CLIENTE_NOME"' +
              '] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 15.118120000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 15.118120000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Identidade / Insc.Estadual')
          ParentFont = False
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 15.118120000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Data da Compra')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 664.197280000000000000
          Top = 23.677180000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaRel."DATA_COMPRA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 452.543600000000000000
          Top = 24.456710000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaRel."CLIENTE_CPF_CNPJ"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 568.709030000000000000
          Top = 24.677180000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaRel."CLIENTE_RG"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 1.133858270000000000
          Top = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 245.669450000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 44.354360000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaRel."CLIENTE_ENDERECO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 53.692950000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaRel."CLIENTE_BAIRRO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade/UF')
          ParentFont = False
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 245.669450000000000000
          Top = 49.133890000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaRel."CLIENTE_CIDADE"] - [qrPreVendaRel."CLIENTE_UF"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Complemento')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 358.055350000000000000
          Top = 44.354360000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaRel."CLIENTE_COMPLEMENTO"]')
          ParentFont = False
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 507.457020000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefones')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 44.354360000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[qrPreVendaRel."CLIENTE_TELEFONE1"]  [qrPreVendaRel."CLIENTE_TEL' +
              'EFONE2"] [qrPreVendaRel."CLIENTE_CELULAR"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 625.401980000000000000
          Top = 39.795300000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Caixa:')
          ParentFont = False
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 51.913420000000000000
          Width = 109.606370000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 659.638220000000000000
          Top = 39.795300000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'caixa')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 625.401980000000000000
          Top = 53.133890000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 660.417750000000000000
          Top = 53.133890000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaRel."VENDEDOR"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 1.000000000000000000
          Width = 385.512060000000000000
          Height = 15.118110240000000000
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[qrPreVendaRel."NOME_EMPRESA"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 119.023929610000000000
        Top = 238.110390000000000000
        Width = 733.228820000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 0.377952760000000000
          Top = 1.559059999999990000
          Width = 732.472440940000000000
          Height = 116.409448818898000000
          Fill.BackColor = clWhite
          Frame.Color = clWhite
          Frame.Typ = []
          Frame.Width = 0.100000000000000000
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 514.015713860000000000
          Top = 23.685246850000000000
          Width = 117.165354330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTOS:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 514.015713860000000000
          Top = 42.582896850000000000
          Width = 117.165354330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ACR'#201'SCIMOS:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 514.015713860000000000
          Top = 63.480546850000000000
          Width = 117.165354330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO PEDIDO:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 657.637778190000000000
          Top = 21.905716850000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<qrPrevendaItemRel."ITEM_DESCONTO">)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 657.637778190000000000
          Top = 40.803366850000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$ 0,00')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 657.637778190000000000
          Top = 61.701016850000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<qrPrevendaItemRel."ITEM_TOTAL">)]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 514.015713860000000000
          Top = 4.787689610000000000
          Width = 117.165354330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DOS PRODUTOS:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 657.637778190000000000
          Top = 3.008159610000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData4)]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Top = 3.551449610000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Condi'#231#245'es de Pagamento:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 2.551449610000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 0.220470000000000000
          Top = 17.890039610000000000
          Width = 461.102660000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 210.992270000000000000
          Top = 3.551449610000000000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimentos ('#224' prazo)')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559079530000000000
          Top = 19.637761110000000000
          Width = 98.267780000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Dinheiro:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559079530000000000
          Top = 33.401540630000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cheque '#224' Vista:')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559079530000000000
          Top = 48.740123309999700000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cheque '#224' Prazo:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559079530000000000
          Top = 64.503897960000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cart'#227'o de D'#233'bito:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 79.866100239999900000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cart'#227'o de Cr'#233'dito:')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606387090000000000
          Top = 19.637761110000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaRel."DINHEIRO"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606387090000000000
          Top = 33.401540630000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaRel."CHEQUE_VISTA"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606387090000000000
          Top = 48.740123310000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaRel."CHEQUE_PRAZO"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 64.503897960000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaRel."CARTAO_DEBITO"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 79.866100240000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaRel."CARTAO_CREDITO"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 95.449099610000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Credi'#225'rio:')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 110.606370000000000000
          Top = 95.449099610000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaRel."CREDIARIO"]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 1.645659529999990000
          Height = 117.543311970000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Top = 79.370130000000000000
          Width = -272.126160000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 17.763779530000000000
          Height = 101.291338582677000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Top = 60.472480000000000000
          Width = -272.126160000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Top = 41.574830000000000000
          Width = -272.126160000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Top = 22.677180000000000000
          Width = -272.126160000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 2.023573230000010000
          Height = 77.480314960000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 106.047310000000000000
          Width = 253.228434330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura do Cliente')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 22.677180000000000000
          Width = 154.960730000000000000
          Height = 90.708720000000000000
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.496065430000000000
        Top = 162.519790000000000000
        Width = 733.228820000000000000
        DataSet = qrPrevendaItemRel
        DataSetName = 'qrPrevendaItemRel'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 1.779530000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaItemRel."ITEM_CODIGO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 1.779530000000000000
          Width = 340.157700000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrPreVendaItemRel."ITEM_NOME"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 1.779530000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[qrPreVendaItemRel."ITEM_UND"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 459.102660000000000000
          Top = 1.779530000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaItemRel."ITEM_QUANTIDADE"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 557.370440000000000000
          Top = 1.779530000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaItemRel."ITEM_PRECO_UNITARIO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 648.079160000000000000
          Top = 1.779530000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = frxDBitens
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrPreVendaItemRel."ITEM_TOTAL"]')
          ParentFont = False
        end
      end
      object NCONTINUA: TfrxMemoView
        AllowVectorExport = True
        Left = 90.708720000000000000
        Top = 461.102660000000000000
        Width = 291.023810000000000000
        Height = 18.897650000000000000
        DisplayFormat.DecimalSeparator = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '*** CONTINUA NA PR'#211'XIMA P'#193'GINA ***')
        ParentFont = False
      end
      object Line3: TfrxLineView
        AllowVectorExport = True
        Top = 415.748300000000000000
        Width = 733.228820000000000000
        Color = clBlack
        Frame.Typ = []
        Diagonal = True
      end
    end
  end
  object qrPrevendaRel: TfrxDBDataset
    UserName = 'qrPrevendaRel'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 456
    Top = 413
  end
  object qrPrevendaItemRel: TfrxDBDataset
    UserName = 'qrPrevendaItemRel'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 408
    Top = 405
  end
  object Sds_vendas: TFDQuery
    CachedUpdates = True
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'select * from pedidos')
    Left = 554
    Top = 221
    object Sds_vendasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Sds_vendasVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Origin = 'VALOR_ITENS'
      Precision = 18
      Size = 2
    end
    object Sds_vendasENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'ENC_FINANCEIRO'
      Precision = 18
      Size = 2
    end
    object Sds_vendasVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
      Size = 2
    end
    object Sds_vendasVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object Sds_vendasVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Origin = 'VALOR_COMISSAO'
      Precision = 18
      Size = 2
    end
    object Sds_vendasUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
    end
    object Sds_vendasDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
      Origin = 'DATA_PEDIDO'
    end
    object Sds_vendasDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      Origin = 'DATA_ENTREGA'
    end
    object Sds_vendasCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
      Required = True
    end
    object Sds_vendasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 70
    end
    object Sds_vendasPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
      Size = 35
    end
    object Sds_vendasSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object Sds_vendasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object Sds_vendasUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
      Origin = 'USUARIO_ENTREGA'
    end
    object Sds_vendasTP: TStringField
      FieldName = 'TP'
      Origin = 'TP'
      FixedChar = True
      Size = 1
    end
    object Sds_vendasOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object Sds_vendasCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = 'COD_VENDEDOR'
    end
    object Sds_vendasCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
      Origin = 'COD_PAGTO'
    end
    object Sds_vendasN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Origin = 'N_CUPOM'
      Size = 18
    end
    object Sds_vendasN_ECF: TStringField
      FieldName = 'N_ECF'
      Origin = 'N_ECF'
      Size = 5
    end
    object Sds_vendasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
    object Sds_vendasHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object Sds_vendasVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Origin = 'VALOR_ACRESCIMOS'
      Precision = 18
      Size = 2
    end
    object Sds_vendasCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
      Origin = 'COD_ORCAMENTO'
    end
    object Sds_vendasCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Origin = 'COD_PEDIDO'
    end
    object Sds_vendasCOD_OS: TSmallintField
      FieldName = 'COD_OS'
      Origin = 'COD_OS'
    end
    object Sds_vendasNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
      Origin = 'NUM_NOTA'
    end
    object Sds_vendasSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Origin = 'SERIE_NOTA'
      Size = 3
    end
    object Sds_vendasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object Sds_vendasCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      FixedChar = True
      Size = 18
    end
    object Sds_vendasRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      FixedChar = True
    end
    object Sds_vendasFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 16
    end
    object Sds_vendasCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object Sds_vendasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object Sds_vendasN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Origin = 'N_PARTIDA'
      Size = 15
    end
    object Sds_vendasPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Origin = 'PROPRIEDADE'
      Size = 70
    end
    object Sds_vendasQUANT_VENDIDA: TBCDField
      FieldName = 'QUANT_VENDIDA'
      Origin = 'QUANT_VENDIDA'
      Precision = 18
    end
    object Sds_vendasSALDO_VENDIDO: TBCDField
      FieldName = 'SALDO_VENDIDO'
      Origin = 'SALDO_VENDIDO'
      Precision = 18
    end
    object Sds_vendasMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Origin = 'MED_VETERINARIO'
      Size = 70
    end
    object Sds_vendasDATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
      Origin = 'DATA_VACINA'
    end
    object Sds_vendasVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Origin = 'VALOR_AVISTA'
      Precision = 18
      Size = 2
    end
    object Sds_vendasVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Origin = 'VALOR_PRAZO'
      Precision = 18
      Size = 2
    end
    object Sds_vendasUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object Sds_vendasCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Origin = 'COD_IBGE'
      FixedChar = True
      Size = 10
    end
    object Sds_vendasCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Sds_vendasNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 6
    end
    object Sds_vendasTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object Sds_vendasVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object Sds_vendasVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      Origin = 'VALOR_TROCO'
      Precision = 18
      Size = 2
    end
    object Sds_vendasENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Origin = 'ENTREGADOR'
      Size = 44
    end
    object Sds_vendasTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      Origin = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object Sds_vendasFECHADO: TStringField
      FieldName = 'FECHADO'
      Origin = 'FECHADO'
      Size = 5
    end
    object Sds_vendasMESA: TStringField
      FieldName = 'MESA'
      Origin = 'MESA'
      Size = 3
    end
    object Sds_vendasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 70
    end
    object Sds_vendasCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object Sds_vendasPROD_RURAL: TStringField
      FieldName = 'PROD_RURAL'
      Origin = 'PROD_RURAL'
      Size = 1
    end
    object Sds_vendasIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      Origin = 'IE_PRODUTOR'
      FixedChar = True
    end
    object Sds_vendasVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Origin = 'VLR_PIS'
      Precision = 18
      Size = 2
    end
    object Sds_vendasVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Origin = 'VLR_COFINS'
      Precision = 18
      Size = 2
    end
    object Sds_vendasKM: TIntegerField
      FieldName = 'KM'
      Origin = 'KM'
    end
    object Sds_vendasCHAVE_FP: TStringField
      FieldName = 'CHAVE_FP'
      Origin = 'CHAVE_FP'
      Size = 100
    end
    object Sds_vendasCHAVE_FP_CANCEL: TStringField
      FieldName = 'CHAVE_FP_CANCEL'
      Origin = 'CHAVE_FP_CANCEL'
      Size = 30
    end
    object Sds_vendasCUPON_CANCELADO: TStringField
      FieldName = 'CUPON_CANCELADO'
      Origin = 'CUPON_CANCELADO'
      Size = 1
    end
    object Sds_vendasCRZ: TIntegerField
      FieldName = 'CRZ'
      Origin = 'CRZ'
    end
    object Sds_vendasCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Origin = 'CHEK_BOX'
      Size = 1
    end
    object Sds_vendasANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'ANO'
    end
    object Sds_vendasMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Origin = 'MODELO_NF'
      Size = 2
    end
    object Sds_vendasCFOP_NF: TStringField
      FieldName = 'CFOP_NF'
      Origin = 'CFOP_NF'
      Size = 4
    end
    object Sds_vendasCOD_OS_AUTO: TIntegerField
      FieldName = 'COD_OS_AUTO'
      Origin = 'COD_OS_AUTO'
    end
  end
  object sds_vendas_itens: TFDQuery
    CachedUpdates = True
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'select * from pedidos_itens')
    Left = 554
    Top = 277
    object sds_vendas_itensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_vendas_itensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'CODIGO_ID'
      Required = True
    end
    object sds_vendas_itensITEN: TIntegerField
      FieldName = 'ITEN'
      Origin = 'ITEN'
    end
    object sds_vendas_itensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Origin = 'CODIGO_PROD'
    end
    object sds_vendas_itensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
      Size = 13
    end
    object sds_vendas_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 70
    end
    object sds_vendas_itensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Origin = 'PRECO_UNITARIO'
      Precision = 18
      Size = 3
    end
    object sds_vendas_itensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object sds_vendas_itensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      Origin = 'PRECO_TOTAL'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensDEV: TStringField
      FieldName = 'DEV'
      Origin = 'DEV'
      FixedChar = True
      Size = 1
    end
    object sds_vendas_itensQNT_DEV: TBCDField
      FieldName = 'QNT_DEV'
      Origin = 'QNT_DEV'
      Precision = 18
    end
    object sds_vendas_itensVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Origin = 'VAL_DEV'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'ENC_FINANCEIRO'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object sds_vendas_itensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object sds_vendas_itensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
    object sds_vendas_itensFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object sds_vendas_itensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Origin = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object sds_vendas_itensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      Size = 1
    end
    object sds_vendas_itensPERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Origin = 'PERC_ISS'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Origin = 'BASE_ISS'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Origin = 'VL_ISS'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensPERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Origin = 'PERC_ICM'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Origin = 'VL_ICM'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PERC_IPI'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensPERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Origin = 'PERC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensBASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'BASE_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensVL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Origin = 'VL_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PERC_PIS'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object sds_vendas_itensIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      Size = 3
    end
    object sds_vendas_itensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
    object sds_vendas_itensID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Origin = 'ID_BICO'
    end
    object sds_vendas_itensID_TANQUE: TStringField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Size = 5
    end
    object sds_vendas_itensID_BOMBA: TStringField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      Size = 5
    end
    object sds_vendas_itensBICO: TStringField
      FieldName = 'BICO'
      Origin = 'BICO'
      Size = 2
    end
  end
  object n_nota: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'select max(NR_NOTA) n_nota from  NFECE_NOTA where cd_empresa =:c' +
        'od_emp')
    Left = 631
    Top = 235
    ParamData = <
      item
        Name = 'COD_EMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object n_notaN_NOTA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'N_NOTA'
      Origin = 'N_NOTA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object SPC_VENDA: TFDCommand
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    Left = 541
    Top = 448
  end
  object ibsql: TFDCommand
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    Left = 202
    Top = 349
  end
end
