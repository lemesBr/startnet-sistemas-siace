object F_EntraHospede: TF_EntraHospede
  Left = 371
  Top = 166
  BorderStyle = bsDialog
  Caption = 'Entrada de Hospede'
  ClientHeight = 427
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 730
    Height = 368
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel1: TBevel
      Left = 10
      Top = 361
      Width = 710
      Height = 2
      Style = bsRaised
    end
    object Grupo1: TGroupBox
      Left = 9
      Top = 12
      Width = 710
      Height = 52
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      object Label1: TLabel
        Left = 225
        Top = 20
        Width = 106
        Height = 13
        Caption = 'C'#243'digo de Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 336
        Top = 14
        Width = 62
        Height = 25
        AutoSize = False
        Color = 14870505
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '000000'
      end
    end
    object GroupBox1: TGroupBox
      Left = 9
      Top = 64
      Width = 711
      Height = 52
      Ctl3D = True
      Enabled = False
      ParentCtl3D = False
      TabOrder = 1
      object Label3: TLabel
        Left = 11
        Top = 8
        Width = 72
        Height = 13
        Caption = 'Apartamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 97
        Top = 8
        Width = 151
        Height = 13
        Caption = 'Descri'#231#227'o do Apartamento'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdApartamento: TEdit
        Left = 96
        Top = 23
        Width = 363
        Height = 21
        Color = clMenu
        Enabled = False
        TabOrder = 0
      end
      object EdCodApartamento: TComboEdit
        Left = 10
        Top = 24
        Width = 80
        Height = 21
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000CE0E0000C40E00000000000000000000008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0000000080800080800080800080800080800080800080800080800080800080
          80008080008080008080008080008080808080FFFFFF00808000808000808000
          8080008080008080008080008080008080008080008080008080008080000000
          0000000000000080800080800080800080800080800080800080800080800080
          80008080008080008080008080808080008080808080FFFFFF00808000808000
          8080008080008080008080008080008080008080008080008080000000FFFFFF
          0000000000000000000080800080800080800080800080800080800080800080
          80008080008080008080808080FFFFFF008080008080808080FFFFFF00808000
          8080008080008080008080008080008080008080008080008080008080000000
          FFFFFF0000000000000000000080800080800080800080800080800080800080
          80008080008080008080008080808080FFFFFF008080008080808080008080FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF008080008080008080008080008080008080
          000000FFFFFF0000000000000000000000000000000000000000008080800080
          80008080008080008080008080008080808080FFFFFF00808000808080808080
          8080808080808080808080808080FFFFFF008080008080008080008080008080
          008080000000FFFFFF0000000000008080800080800080800080808080800000
          00008080008080008080008080008080008080808080FFFFFF80808080808000
          8080008080008080008080808080808080FFFFFF008080008080008080008080
          008080008080000000000000808080008080008080FFFFFFFFFFFF0080808080
          8000000000808000808000808000808000808000808080808080808000808000
          8080008080008080008080008080808080808080FFFFFF008080008080008080
          008080008080000000808080008080008080008080008080008080FFFFFF0080
          8080808080808000808000808000808000808000808080808000808000808000
          8080008080008080008080008080008080808080808080008080008080008080
          008080008080000000008080008080008080008080008080008080008080FFFF
          FF00808000000000808000808000808000808000808080808000808000808000
          8080008080008080008080008080008080008080808080FFFFFF008080008080
          008080008080000000808080008080008080008080008080008080008080FFFF
          FF008080000000008080008080008080008080008080808080FFFFFF00808000
          8080008080008080008080008080008080008080808080FFFFFF008080008080
          008080008080000000808080008080FFFFFFFFFFFF0080800080800080800080
          80008080000000008080008080008080008080008080808080FFFFFF00808000
          8080008080008080008080008080008080008080808080008080008080008080
          008080008080808080808080808080FFFFFFFFFFFF0080800080800080800080
          80808080808080008080008080008080008080008080808080808080FFFFFF00
          8080008080008080008080008080008080808080808080008080008080008080
          0080800080800080800000008080808080800080800080800080800080808080
          80000000008080008080008080008080008080008080008080808080808080FF
          FFFF008080008080008080008080808080808080008080008080008080008080
          0080800080800080800080800000008080808080808080808080808080800000
          0000808000808000808000808000808000808000808000808000808080808080
          8080FFFFFFFFFFFFFFFFFF808080808080008080008080008080008080008080
          0080800080800080800080800080808080800000000000000000008080800080
          8000808000808000808000808000808000808000808000808000808000808080
          8080808080808080808080808080008080008080008080008080}
        MaxLength = 6
        NumGlyphs = 2
        TabOrder = 1
        Text = ''
      end
    end
    object PageControl1: TPageControl
      Left = 8
      Top = 119
      Width = 712
      Height = 235
      ActivePage = TabSheet1
      MultiLine = True
      TabOrder = 2
      TabPosition = tpBottom
      object TabSheet1: TTabSheet
        Caption = 'Cadastro'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label2: TLabel
          Left = 16
          Top = 184
          Width = 425
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Grupo2: TGroupBox
          Left = 0
          Top = 0
          Width = 704
          Height = 209
          Align = alClient
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          object GroupBox2: TGroupBox
            Left = 6
            Top = 7
            Width = 687
            Height = 54
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            object Label5: TLabel
              Left = 11
              Top = 9
              Width = 51
              Height = 13
              Caption = 'Hospede'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 100
              Top = 9
              Width = 130
              Height = 13
              Caption = 'Descri'#231#227'o do Hospede'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 528
              Top = 9
              Width = 58
              Height = 13
              Caption = 'Qtd. Adultos'
            end
            object Label8: TLabel
              Left = 609
              Top = 9
              Width = 64
              Height = 13
              Caption = 'Qtd. Crian'#231'as'
            end
            object EdHospede: TEdit
              Left = 99
              Top = 25
              Width = 421
              Height = 19
              Color = clMenu
              Enabled = False
              TabOrder = 1
            end
            object EdCodHospede: TComboEdit
              Left = 10
              Top = 25
              Width = 80
              Height = 21
              Glyph.Data = {
                36060000424D3606000000000000360000002800000020000000100000000100
                18000000000000060000CE0E0000C40E00000000000000000000008080008080
                0080800080800080800080800080800080800080800080800080800080800080
                8000808000808000808000808000808000808000808000808000808000808000
                8080008080008080008080008080008080008080008080008080008080008080
                0000000080800080800080800080800080800080800080800080800080800080
                80008080008080008080008080008080808080FFFFFF00808000808000808000
                8080008080008080008080008080008080008080008080008080008080000000
                0000000000000080800080800080800080800080800080800080800080800080
                80008080008080008080008080808080008080808080FFFFFF00808000808000
                8080008080008080008080008080008080008080008080008080000000FFFFFF
                0000000000000000000080800080800080800080800080800080800080800080
                80008080008080008080808080FFFFFF008080008080808080FFFFFF00808000
                8080008080008080008080008080008080008080008080008080008080000000
                FFFFFF0000000000000000000080800080800080800080800080800080800080
                80008080008080008080008080808080FFFFFF008080008080808080008080FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF008080008080008080008080008080008080
                000000FFFFFF0000000000000000000000000000000000000000008080800080
                80008080008080008080008080008080808080FFFFFF00808000808080808080
                8080808080808080808080808080FFFFFF008080008080008080008080008080
                008080000000FFFFFF0000000000008080800080800080800080808080800000
                00008080008080008080008080008080008080808080FFFFFF80808080808000
                8080008080008080008080808080808080FFFFFF008080008080008080008080
                008080008080000000000000808080008080008080FFFFFFFFFFFF0080808080
                8000000000808000808000808000808000808000808080808080808000808000
                8080008080008080008080008080808080808080FFFFFF008080008080008080
                008080008080000000808080008080008080008080008080008080FFFFFF0080
                8080808080808000808000808000808000808000808080808000808000808000
                8080008080008080008080008080008080808080808080008080008080008080
                008080008080000000008080008080008080008080008080008080008080FFFF
                FF00808000000000808000808000808000808000808080808000808000808000
                8080008080008080008080008080008080008080808080FFFFFF008080008080
                008080008080000000808080008080008080008080008080008080008080FFFF
                FF008080000000008080008080008080008080008080808080FFFFFF00808000
                8080008080008080008080008080008080008080808080FFFFFF008080008080
                008080008080000000808080008080FFFFFFFFFFFF0080800080800080800080
                80008080000000008080008080008080008080008080808080FFFFFF00808000
                8080008080008080008080008080008080008080808080008080008080008080
                008080008080808080808080808080FFFFFFFFFFFF0080800080800080800080
                80808080808080008080008080008080008080008080808080808080FFFFFF00
                8080008080008080008080008080008080808080808080008080008080008080
                0080800080800080800000008080808080800080800080800080800080808080
                80000000008080008080008080008080008080008080008080808080808080FF
                FFFF008080008080008080008080808080808080008080008080008080008080
                0080800080800080800080800000008080808080808080808080808080800000
                0000808000808000808000808000808000808000808000808000808080808080
                8080FFFFFFFFFFFFFFFFFF808080808080008080008080008080008080008080
                0080800080800080800080800080808080800000000000000000008080800080
                8000808000808000808000808000808000808000808000808000808000808080
                8080808080808080808080808080008080008080008080008080}
              MaxLength = 6
              NumGlyphs = 2
              TabOrder = 0
              Text = ''
              OnButtonClick = EdCodHospedeButtonClick
              OnDblClick = EdCodHospedeButtonClick
              OnExit = EdCodHospedeExit
              OnKeyDown = EdCodHospedeKeyDown
            end
            object EdQtdAdultos: TRxCalcEdit
              Left = 527
              Top = 24
              Width = 73
              Height = 21
              AutoSize = False
              NumGlyphs = 2
              TabOrder = 2
            end
            object EdQtdCriancas: TRxCalcEdit
              Left = 608
              Top = 24
              Width = 73
              Height = 21
              AutoSize = False
              NumGlyphs = 2
              TabOrder = 3
            end
          end
          object GroupBox3: TGroupBox
            Left = 535
            Top = 61
            Width = 157
            Height = 139
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            object Label9: TLabel
              Left = 37
              Top = 10
              Width = 78
              Height = 13
              Caption = 'Data da Entrada'
            end
            object Label10: TLabel
              Left = 37
              Top = 53
              Width = 83
              Height = 13
              Caption = 'Horas da Entrada'
            end
            object Label11: TLabel
              Left = 37
              Top = 94
              Width = 88
              Height = 13
              Caption = 'Previs'#227'o de Sa'#237'da'
            end
            object EdData1: TDateEdit
              Left = 38
              Top = 26
              Width = 88
              Height = 21
              NumGlyphs = 2
              TabOrder = 0
            end
            object EdPrevisao: TDateEdit
              Left = 38
              Top = 111
              Width = 88
              Height = 21
              NumGlyphs = 2
              TabOrder = 2
              OnExit = EdPrevisaoExit
            end
            object EdHora: TDateTimePicker
              Left = 38
              Top = 68
              Width = 88
              Height = 21
              Date = 0.603249189814960000
              Time = 0.603249189814960000
              Kind = dtkTime
              TabOrder = 1
            end
          end
          object GroupBox4: TGroupBox
            Left = 6
            Top = 61
            Width = 524
            Height = 139
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            object Label12: TLabel
              Left = 18
              Top = 10
              Width = 68
              Height = 13
              Caption = 'Qtd. Pagantes'
            end
            object Label13: TLabel
              Left = 129
              Top = 52
              Width = 75
              Height = 13
              Caption = 'Qtd. di'#225'ria Extra'
              Enabled = False
            end
            object Label14: TLabel
              Left = 233
              Top = 52
              Width = 72
              Height = 13
              Caption = 'Vlr. Di'#225'ria Extra'
              Enabled = False
            end
            object Label15: TLabel
              Left = 339
              Top = 52
              Width = 81
              Height = 13
              Caption = 'Total Di'#225'ria Extra'
              Enabled = False
            end
            object Label16: TLabel
              Left = 118
              Top = 10
              Width = 86
              Height = 13
              Caption = 'Qtd. Di'#225'ria Normal'
              Enabled = False
            end
            object Label17: TLabel
              Left = 224
              Top = 10
              Width = 81
              Height = 13
              Caption = 'Vlr. Di'#225'ria Normal'
              Enabled = False
            end
            object Label18: TLabel
              Left = 330
              Top = 10
              Width = 90
              Height = 13
              Caption = 'Total Di'#225'ria Normal'
              Enabled = False
            end
            object Label19: TLabel
              Left = 338
              Top = 96
              Width = 82
              Height = 13
              Caption = 'Total Geral Di'#225'ria'
              Enabled = False
            end
            object Label20: TLabel
              Left = 236
              Top = 96
              Width = 69
              Height = 13
              Caption = 'Desc./Acresc.'
            end
            object Label21: TLabel
              Left = 128
              Top = 96
              Width = 76
              Height = 13
              Caption = 'Sub Total Di'#225'ria'
              Enabled = False
            end
            object EdQtdPagantes: TRxCalcEdit
              Left = 16
              Top = 27
              Width = 73
              Height = 21
              AutoSize = False
              NumGlyphs = 2
              TabOrder = 0
              OnExit = EdQtdPagantesExit
            end
            object EdQtdExtra: TRxCalcEdit
              Left = 113
              Top = 68
              Width = 92
              Height = 21
              AutoSize = False
              DisplayFormat = '0.00'
              Enabled = False
              NumGlyphs = 2
              TabOrder = 1
            end
            object EdVlrExtra: TRxCalcEdit
              Left = 225
              Top = 68
              Width = 82
              Height = 21
              AutoSize = False
              DisplayFormat = '0.00'
              Enabled = False
              NumGlyphs = 2
              TabOrder = 2
            end
            object EdTotalExtra: TRxCalcEdit
              Left = 331
              Top = 68
              Width = 89
              Height = 21
              AutoSize = False
              DisplayFormat = '0.00'
              Enabled = False
              NumGlyphs = 2
              TabOrder = 3
            end
            object EdQtdNormal: TRxCalcEdit
              Left = 113
              Top = 26
              Width = 92
              Height = 21
              AutoSize = False
              DisplayFormat = '0.00'
              Enabled = False
              NumGlyphs = 2
              TabOrder = 4
            end
            object EdVlrNormal: TRxCalcEdit
              Left = 225
              Top = 26
              Width = 82
              Height = 21
              AutoSize = False
              DisplayFormat = '0.00'
              Enabled = False
              NumGlyphs = 2
              TabOrder = 5
            end
            object EdTotalNormal: TRxCalcEdit
              Left = 331
              Top = 26
              Width = 89
              Height = 21
              AutoSize = False
              DisplayFormat = '0.00'
              Enabled = False
              NumGlyphs = 2
              TabOrder = 6
            end
            object EdTotalGeral: TRxCalcEdit
              Left = 328
              Top = 111
              Width = 92
              Height = 21
              AutoSize = False
              DisplayFormat = '0.00'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 7
            end
            object EdDescAcresc: TRxCalcEdit
              Left = 225
              Top = 111
              Width = 82
              Height = 21
              AutoSize = False
              DisplayFormat = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 8
              OnExit = EdQtdPagantesExit
            end
            object EdSubTotal: TRxCalcEdit
              Left = 113
              Top = 111
              Width = 93
              Height = 21
              AutoSize = False
              DisplayFormat = '0.00'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 9
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Requerimentos'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Memo1: TMemo
          Left = 0
          Top = 0
          Width = 704
          Height = 209
          Align = alClient
          TabOrder = 0
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Observa'#231#227'o'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Memo2: TMemo
          Left = 0
          Top = 0
          Width = 704
          Height = 209
          Align = alClient
          TabOrder = 0
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 368
    Width = 730
    Height = 59
    Align = alBottom
    BevelOuter = bvNone
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object BtGravar: TAdvGlowButton
      Left = 11
      Top = 0
      Width = 100
      Height = 56
      Caption = '&Salvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 6
      Images = ImageList3
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtGravarClick
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
      Layout = blGlyphTop
    end
    object BtCancelar: TAdvGlowButton
      Left = 123
      Top = 0
      Width = 100
      Height = 56
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      Images = ImageList3
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtCancelarClick
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
      Layout = blGlyphTop
    end
    object AdvGlowButton6: TAdvGlowButton
      Left = 620
      Top = 0
      Width = 100
      Height = 56
      Caption = 'F&echar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 5
      Images = ImageList3
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtFecharClick
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
      Layout = blGlyphTop
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 32
    Top = 16
    object CadastraNovoHospede1: TMenuItem
      Caption = '&Cadastra Novo Hospede'
      OnClick = CadastraNovoHospede1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object SobreSistema1: TMenuItem
      Caption = 'C&onfigura Sistema'
      OnClick = SobreSistema1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = '&Fechar'
      OnClick = Fechar1Click
    end
  end
  object ImageList3: TsAlphaImageList
    Height = 32
    Width = 32
    Items = <
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000007FD4944415478DAC597096C1CD519C7BF99D999DDF53AEB5DC7EB2BBE
          83EDF8C0767101A70173D834516A1A48138BD441A938925A2515487154A2C4B1
          6C2EDB8A690D2D90A82E2088631C2801D4B485388A444BA0A8552C82B0822DA7
          8D8FDD2CBED77BCEBC7EDFDB834D62D3558BD4673DCFD3CC9BF97EEFFF1DEFAD
          00FFE7267CD3C38E8E8E3ABCB4592C96328FC7E3F27ABD76B7DB6DF7FBFD7651
          141D8C31BB244974CF21CBF224CE71CCCECE3A0E1F3E3C87EFB1FF09E0D9EEEE
          CD99E9E96FD4D5D5A10D09028100A8AA0A08016810E6E6E6C0E572F1F1C2C202
          1F2F2E2E5267EE60BB8C633BBE634750070213AC5310840FDBDADAFEF68D005D
          5D5D46639C6964D7AE9DA90CD721080C972380A0694023BAC79886502A68740F
          6F10DCD59DA00990C0C626C6C135BF006363630CFB1EB4D1B52C40676757FDBA
          5BD6F5DD5C7513F8031A594388E05491B4C57FC804920841307CC64168021AD6
          703E190FC39D3CF947B03B1C60B558212ECE00E7CE9D9B6D6D6DB52C0BD0D179
          E8C586FBEFDF65B126712334490D1910C22F09D15711FF18071359D0F9922410
          1A1983A1A121F84E45057C707A002CE604181D1D5DDCB76F9F695980F6CE4367
          7EFEE863D54CC395A0616AB2149CAA724182F11512851B8A8C23F700F4B204AF
          BCFA2A9CFFEC33282E2EE67715456608D4850AEC5916E057CFFF666867636381
          DFA772C955F231C2C822AE95240929A2696110E11AE334D6EB75D0F9F4333038
          78EE899494940B26936995C160B888AE39D6D2D2A22D0BF0DCAF8F0C3FB0F3A1
          3C9F2F10919C82CFAF32FE6145277115E83E7D854096728FDE2843C7136DF0F9
          F9F31BFBFAFA4EC69C86ED5DCF0FED6AFC59818A81C43D1A91578000FA80D450
          5009510A06233DC7A4E04A692C5A01055EF8E521F8E493B3F5C78F1FEF8F19A0
          E5C9F6BFEC6C7CE47B64845D355510C990C0B343422BB24E0CA629E3F9118124
          8514831E8EBD7C04CE9C3EF55354E0A598010EB4B6F56FDBFEE09695567328E0
          8490B4E1E9221FFAA80EE06345A62C40B7600A08082290C3708220E9E0CFEFBD
          05EFBDFD666B6F6FEFC198010EB6B476AEAFBB774F46467AC8DF10FC60708D91
          8013500E5A2D75AC74A88604C1A4445760C0EA10E0EF1F7F042FFFF6859EDEDE
          630FC6AEC081838FDC7247ED7379AB578351AFE799A085A28B435C3116790090
          4B482B45D605AB02AA4150631747A1ABE3A981A3478FD6C40CB07FFFFE1F5654
          569D282D2BE70545AF97C356BF7E2DAA06B05080FAD12514A03A89D4D0A1A744
          58C03DA3E3C9E6919E9EDFAD8E19E0F1C70FAC2DB9BEF4AF9537DD081AAECC64
          8A5BFA1521FA75910728955FBF5FE5CF644587FB0796F6A75BBC0EC765537F7F
          BF1A13C0BEA6A68AFC92EBFF7163D55AD0D400C8B202065481C742B41B58B002
          B28816B44F60380AB425680884EA297A78E7F7FD6C7A6A2AA3BBBB7B7C7272F2
          3F03ECDDBBB7AAA8B8F4A3EF5656F2524CF26215837049BA428170058AFA940E
          E5DF7AE0764C4305B344A59004F7A2C7078316FDE0E0E0D200EDEDEDE9922CDF
          A3A1B569A733B9B4A4A4B9A8A8985739CA734531F05860ECEB5CD0429B105543
          510C2A4263BDA2C0D6963BE1E1871F026FC00D3ED50FAFBDF2BA9AF8CF3CDDC0
          C0C0B500B83154A6A5A57D505D7D9B851634363EC1434B4409196EAF221E48A8
          27AC58C12D05B76481EFCBA2C84250E1B10806A3025B10A061C78FC1B9608738
          D908FD7D6F6BC9FF2A904E9D3A752D0046FD870D0D0DEBAC562B188D46DCB38D
          28A3CC27B8163D303D3D03333333781AC2D5F83C40D587520C2B0D5F39DF8C08
          8C310E166734C17DCFAC87ADDBEE01C7C20402C4C3BB6FFD01D22E95084B0234
          3737FB6B6B6B7578AE03DCAD506A3DBF124CB82B282B350A63D7820766E6A661
          7E7601BC1E174279F1DC207228524DAF37C07D1DEBE1073F5A0FF6C509883798
          E0FD1367E056DD266164642462DCE97406019A9A9A2E6DD8B06195CFE7E30FE8
          0C4806C97018261A880CC88ACC5FF66390DEFC937C5E78E898467F4CC0C0C3B8
          A9DD520DE3EE51A0B4F8F4C479FE2CB26ACA283CB5F1F1EEDDBB1B6C365B4F66
          5696926CB3417C7C3C100C1DAB682FB85A99300CED767878843B1EBD01EA1B36
          83DBB7081E749187B9615E9D0607BB04173D5F40727C1A58200566653B303F06
          AA17CD7A2418393D1EC90273565656756E6EEED6D4D4D41BB2B3B3733333334D
          788880A4A4242E2D9D86E9A0492D5A1D3CB243FD53DF874DF51BC13E3B0EEE00
          42486EF8DCF73188065CAD824BD5E355870AD1EEEEC3A059142011D261F8FD49
          B8B2940150C94BC29E535A5A7A3B42AD438835F9F9F9690826A14ADC202983BF
          01B83A14B88D47B6C1C6CD777105BC9A17C67CC330CF6640B669E0142720293E
          15127CC930AF7304578F009A5B84E13FD997FD5D40F729EAE8E4BA0A8D96AC59
          B3E6CE8C8C8C0A54260F1532933AC9C9C960369B61C7B39BD0CF540FC8A9018C
          0B0FAE5880C21D4930A51B8724732A0CBD38C50F2DBC70850E2DAA2F14033134
          DC59008B0024933A7979796BB157A5A7A717969595ADCAC9C991512D7EFE9F9A
          9AE22A3DF0DADD08B012BE92C6C1961004A8F135646316CCE337DCD8BD98052C
          5680E846AE32625F893D130332BFA8A8E85654A61C55CA292C2CB4262626AA8F
          BDBB5D2EDC9E044E611C5256A4C1173D5F41EE509515EB808B92E79A52FC5FB6
          B0AB12B0A7913AD8736B6A6A5286B3CFFEA2608B0D9C6C026CE614B8F03A025C
          A81211805DFD816FB391ABE211207138EBEC70C1DD2988C778265C78F332E47E
          59B57425FCB65B797939CC947FE913F5C0AB153F34F9C16FFEF43A857E2945B7
          7F03862C8F16A4BDB8C50000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000007314944415478DACD975B6C145518C7FF337B6BB7CBB6A5881402A1D0
          4649A15D2A88522E522E2A2624108C9218A23C10C004494C8CC6071388313188
          8906349A204F243E181EC05290420B2D964B8A821058D0D22D2D6D2DB4D076BB
          BBB333E3FF9B9D5D97D22D7DD349BE4C6776CEF9FFBECBF9CEA982FFF852FEAF
          00EACBC07615F83006DC6E01DEFD0BB8CCF7DA5827E6F80939C08F4E60C10360
          EF3160375FFF3D16007525F01107EF7A63FD7AE5FAF9F368088582B7808DAD40
          F3582096034F650335CFF9FD15C5C5C5A86F6E36EF00DFD4003BF973D7680029
          F14D5BB72A534A4BA145A338BE7B37CEDEBD1BBC4688D01320AA28EE17719FAF
          22B06A15E2BA8E684F0F4E36369AA104C42E7ED63912404AFC9DCD9B95C9B366
          C1313888A861C0E08F757BF7E2D7AEAEE07542DCCA00B18EE2BCD53C9F975751
          5E55056D6808662C06A611B1DE5E9C612404A23A0D2209A0AC02DEF3017BDEDE
          B64D995454049583A169D0E371C408A1280A1AF7EFC7D9EEEEE0D51120D652DC
          99145FBA14B1480406A30719CF28C4E5E3870FD174F5AAC97ADA7314F89CAFBA
          93009E578096B7D6AC292CA9AC843A300083034D1A6430EF864D7BE1E04134F4
          F4042FA74188B89BE22FE4E656942D5982B8784D07743A6070BC0561CF21E9A8
          EFE8881D00E6F3F14A12C0C7C2A99E5750B0F8B52D5BE0B607C9040261D82012
          05301ACD870EA1E1FEFDE06F849804B44D050E8BF89C458B60704C9CDECB5801
          1718CB01999357472884C670F8DA4FC0063EFE9104F03279E5A5C0BECADCDCC0
          CA4D9BE094011C2C2950445C8CE2A480C9BFAF5457A3AEAF2FC809C24BFCFEC0
          9C850B53D096E722CE7BCCFEDB344DB4B7B6A23E12696B023E68074E52B72709
          E0A0E54F009E0D005F0BC4B20D1BA088E78450A506687257292EA114B06BB5B5
          30F94EC4150A5800221C0E23DADF6F15A1663B718FCFF5B158DB69163AC51BEC
          228CA5AF02D610F204629E40D0ABC56BD742A50722AADA004A128216639189B0
          4755A1B3CAA3F7EE417BF0C0F25C022E26CBF03EBFABD3F5B65309F1465B9C15
          0A73781FB0200A08F1A240F87C8185AB57C34911272755D2214480DE699D9D30
          5958A6D40B410C7EABDB26E1EF61146AE3714B3C344C3C53274C415412623121
          162C5B862C4EE8A089B87C6088B777EE58456915A75CB6709C16215C3757D371
          8AD76610CF049082781A98C5D2FA6AA9D71B98CF3C7B1D0EAB38355632B8A655
          3EAB14B700286AF22E211FE22AE864CE8F695ADB718ADFCE203E1A400A622221
          1613621921CAD99A3D1D1D70F10717C3EDA05900D64C0A57AA8E0176CF768A1F
          65C11D1DC5F3B100C8E59A054C2FE7AE56E970CC9D999585029F0FE3DC6EB824
          1A0450D22230C46213803602D4C4E337E9FDF69604C0C048E24F04900E97251D
          4E552B666667637C4E0EFC1E0F5C4E27DC147513C22169A0B8C16783F51066F8
          FB0910A231FFC1B36C569746D9C03202ACB37B7B4ADCEBC5388ABBE97516455D
          2E173C147510C66177C8384DF68D41567E3F2311629DFCF204082593B82A1B0B
          C56730ECE309206177534CD6BC87E202213D209BEFB2F82C6B3ECA86A31140EE
          0231C055D04A1308E661E39511201E0390FD3C8FE2F3285E44D17C02F878CFA2
          B005406111943ED0470F0564FAC489D60A18A270D4362B124C875513B4138468
          1A01E21180E5F661622EC5A753249721F751C02DE14EF35C42DE4FCF5AFAFAAC
          1E3E970005F9F9D6ACB2F546D880E41C213BE010FBC100A3D1C1EF4FE87AF0C2
          308814C00A8A7B291E50948A6914F2D372C46B0A7A86791E66AF6F95A5A66937
          5927CA1A97AB787641017C7979561312E1889C84EC940C11282C10B453849048
          DCB021529BD11A1E7A4A1565D1340A89B0349DA4B878EDB68B2DC2A526793D49
          F19F814F78F61B580D7CF1AADB5DF2CCF8F1C8E2328DDB7520D19048680488C8
          3B46E32E211A75BDF907E075EAB6A4B6E33781FBAC784FB688DB4BCC634388E7
          4EC931276A673E4F718D9F003EBE0B5C94A817B3593182FB56B95C25C58C828B
          2B261D424C93D4080CEBE24C2CA67F993890FC9E0418C7097616F15856E67028
          1281EC248488F3592691109EA6F8A984F8398EEBA6C9EE9C570294B180F7AD20
          C474BF1F0ED68F88466D0029CA28A3D71C8D9A974CF3FB238963FA9F4900F61B
          4CE5A1F4FD19C0E672974BC9218057DA2D432FDE74727083AEDFACA37877425C
          8ED731BBC34977CEA703652CE47D558498CA54C01E6BD5033DB7C50F1C06BEE5
          F73C6463300920B5C50331A61062C74C42049C4E25C7E9B47EEC62EE9A0CE3E6
          E991C5536D5B20E8C09C9778F25DEA749614B2734A7822FF7A2EE2DFF1150FD7
          E8A7E98F1CCB69C4C6649E9077140B0423D14BFA7314AFA7F8BDCCE28F412C12
          0887A36402D37851D32CF12309F11BB6787CA446940EB1AD10D8D2075C6517FB
          B40738FF04F1472018C5D9DCCA3F63530BF0F47C803BE37EBE0FA68B676AC5C9
          744C928990D84645B8770CE2E910D446A15D5F7D76C15A614FFF30E33FA734B7
          3D91610BC7C7289EBCA4803CF65C9A3D8731FCA37F00173D0D699AB32A080000
          000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000A804944415478DAB5570950D4E715FFEDC9B22CECC51E2C37EC228882
          A0F14A50D4C46AA3C668AE49D2645A33D399A49976A68DD336E944D3A413A313
          6B126A04A46A8C17314605358910450151E4BE040372CB82ECB2F7BD7DFF3FD8
          A9D192763AFD76DEFE7796FDBEEFF7DEFBBDDF7B70F080150C0639EF6CDDBA7F
          7878F879BBC3715D24128570B9DCBAF1F13B52B55AD368B15822341A4D7B6767
          A7202D2DADADBBBBDBAE56AB6F99CD66AFC160B06DD9B22580FF707198B78FB2
          B232878D1DBF358E3A536CCAD886C09AF59A4533F54FB47676735293E3D0DF3F
          0085341C632613A4E112984C66C8E4720C0F0D22263626D8D97913292929BEE6
          E626774646A6BFA5A56540AFD7BBBBBABA6E2427270B3A3A3A2E9694947CF240
          006FA8F8ABF4FA8C136B5F7B4D643EB30FC74E5EC78B7D46B8EE8CC1CF17C1EF
          7260C2ED03DFEF8171C2017EC083E1F10908026EB87D7EB86C16840804B05926
          102A1212D841C822C4046E187259382626AC181BB91DE44A143BED0E6FE989C3
          85E5F700D8C443CF9FFEF287046DE7108C037568BAD28CC83D5FA03B341C6B56
          2CC5B765E558BB66352E555CC2F2DC1C34B7B663767A1A068746A0D6A831386C
          441845E5B671948084C0E90F824B60AD1E4AA5C78EE1310B1C761B06FA7A70E6
          F4296F6559A9F05E0080E7C958B1C0909880A4C439686E2AC1AD37F291F3F85A
          48C2C4E8EE1B823E5187CAAB8D58949D89D26FCBB1FC91C5F8AAF42C96D2B3B1
          A11E89C97AF85C36F0842228C3C5B03A9C888BD161D43886A4A444947D57810F
          3F2D42FFADAE60F3D52AEE3D00D6C7EA8E2C08F89ECD761A219F97835386B9C8
          7A7C1DE6CD36402CD3401C2AC048E997885FB70141DAC023631876F714B7D74F
          DF7360B2DA100C04E171BB60A41469955254D7B72267FE6C34D43721FFB363E8
          EE6CB3365FBD1C710F80A79E7B62F1DC79D915A9F1B378B9EBD6C2366EC2D7DF
          942379C64C886DCD50646CC458E9618817AF0087C74720109CDC494F61081F11
          61A1AC858985B8C7B57F595F959CC3E7C74FA3ABBD75ACB1E6A2EABE2AF8E0FD
          B7B765CC9DBFF9E19C47210911A2AAB605B5E78BB184F721F4BFA885B97E00CA
          458F80230AA11205F874139776BA889C56BB933587C3037F30407FE7904D5661
          80F8906E88C5997367F165E9B7686F69186CACA988B90FC0EAD5AF872C5E24A9
          C9CE7E2833332D13E6EEFD4850EC87FD7600033DE1F028DE017F463AB861E1E0
          10001E8F43FC10412A112142228660CA75BA0FC17F6A09FB0E1E213DF2C5499C
          29AB407B53DD8DBAAA0BA9F70160D62BAF6C88919ACB6B9F5F1AA1C95E1F87A0
          B31F1C3AF8E6253F6C43B1D0BF7A01215221BBC147374DD85CB05A1DB0D95DF0
          F87C8C784D5DCA4487008A43104184D4AA2270F0C8715CACBE86E6DA2BADD7AB
          2FCE7A200066FDFAE9D875D11181AF9E5D1BCF89CB1847D06D255205D176DE8B
          E0823C40B304DCA08FF55E1E2141045DC278CDD28233494CE6632010809D8099
          2C76446B9438FAC5715CB9DE88866B95D5B5951716FF5B00CCFAD5C694C24733
          259B7257C9219536B3B134F6F0D0DB1E8AF4573BE9163EEBB9990EB75014FC01
          FF94E77414E53E343484152299340C214201047CA070DF61D4B7B4A3A1E6F2E5
          AB97BFCB9916C0961D791B163CB4E0B8A6ED15643C2A02CFDB4EAC0BA2B52214
          1ED11284E4EC874C1264F3EF0B70D903985471D9FC07E170BA619EB0B3E6727B
          91392B09070F1F424B471701A83E7BA5E29B9F4E0B60EBD66D2B162C597ADE10
          C583EDF2F3C858E6059C24CB01016A4A3988CCDD096EFC53181B1D63BDBFCB3A
          0EA160F22E974BD8DCF3A95426090BE4171D44C7CD5B68B85A79B2EABB73EBA7
          05F0EEFB3B1EC9CA9E7B69EEE25CDC2E7F132A7139743114057F0063C342B456
          F191FA6A0B046191E052F283DC2951A2CF162AC771939552E3A46C04E0F70531
          2F2B99527000DDBDFDA8BB5673B4EA7CC973D30278FBBDED195973321B173D9C
          0B0E3599EE7D8B3027170801F181CF434B552806471310B6BA04F032EAC7DE0E
          3179AF9047B0B9E7712619C944804B25BBA7703F7A0706D1585B5374F1EB539B
          A605F0D6077F36CC499DDBB97CF94A0C1A4DF098FBE0AD7C060BD6502C6D4314
          533E2E9FE443B9F04D6817FF0601DFA4E830ACBF63B260C2E260A3C1BC021481
          F9F30CD85D5084E111235A1AAEE59F3FFDE52FA78FC0E66DBA990B52077357AC
          84D7EB834229C140E56E704D45484EED21AF3D981817A2AE8C3AC0B253E04962
          E89000EBBD52190E01D19E0900829355C125127C5AB017C6B171B435D5EE3877
          E2D81BD302D8BC796FF89CB9B289F51B3770866F9BD85AE6B888DDC54B31E739
          1D24FC064A05075DD779B825D98585AB5E86DBEDC1E818F5FD3B56F84894EEB6
          0B81808739B31391F76921C6CD66B4365DDF76F6F891DF4F5F865B9E1626266F
          74AD5EFB04C764B141AB96434004B4549E454FC7EFB0709D80AAA217350D5128
          6B7D1CCB366E26A6FBA156CB20A7FC0758450CB2B5E9A2FE104AA295975F08AB
          C54A527CFDADD3C59FBF372D00E6BBA2039FD95EFAD98BE271B31323A366B89D
          4E886EB460205C80EF6B7660F60C17383E27DAFA0C78E98F4761997053882DE8
          ED1D84DD6623019323841A97925A727CAC0ABB7617903E38F07D5BD3E6E28345
          DB7F0C00F6E4FFDDFCEC0B2F4A7B7A8D14012994F230B82E9743B464399518D0
          5C751C8EBE5DE81FB22173FDD7108B7CB863EC879F2621954A0B45A41292F008
          188D13D04529F0D7BF15C245A3DDF7EDADAF1F3D90FFC98F4620BFB0C8B269D3
          CF256E6F002374C81DB31DE2FA0A58B396B09D2F265A0B2115C5A1439F213B3B
          1BD5D5D5B03B7C108749498894902922A1D56A111DAD804226C1877905C41317
          6E75B56DFA7C2F8D46D301C8CBDBBB2CD99050B6F2B1E51C0F01E0503BE510AD
          7D7DBDE0C6C5C3E5F46288C869B1B8C023C60F0CF4B1C3A73E2916115231B55F
          3E2B8E76870BC3C326180C51D8FE7101FC1E3706BB3B5F2EDAF3F18169013CB9
          E199838FAD5CF9C2DA75EB10133539BCB01D8F9E3EAA7966EC62413183076792
          6C0E871B7D83A3347C7A59512211A4B13D0CD1514A76A4DB96B71701B79BC0DE
          DC50F4D1CE13D3029089A2E2E3B26795A6CECF4997D3B43B6B4612F4B151488A
          D1C29014C7FE8629331F890CD3760353C730131223CB9C005860E3E376B634D3
          6746E3DD9D05E0C38F9E1B4DCFECCBDF7D9AF185F16B4A2DEE5F0969190B45A1
          923725D2F074852A265A1619298CA0DC8689C548498841825685389D0A290603
          DB6C8274948FE986243C7E3F58610A3251A2173392171C2DA1D9C2866B95E75F
          38595C7C81AE70DDB50702985A4C8F091708040951F1C9AB654AE512894C99A6
          D244EB142A8D50A654B1AA97A0D3205AA54034E9457A5A2A04423ED3B758508C
          7B6D6D1DB8D6D10B937100674E1C7AFD5279790D9D3B4166669ED301F8E16226
          7229014A8A49D2AF922B553952B96A86263A2E2A52A315CA951A4A4310519132
          1AC9E55029A4C8CA48C7A5ABF5E8365A611F1DC4C1825D5B1AEAEAEAE89C11B2
          7EB2D1FF06C00F17CD3A90F3F9A186047DE24FE40AEDC30A75A441179FA4556B
          75C248959AA6E20074BA28F40D0CE1CA85732365278B3F76B85C1DB4AF8DAC97
          CCF1BF007810A048BE4834233E41BF52ABD52D52AA55FAC4E419DA81FE1EE3A9
          E263C7BD6EFB55FA4D3D1975353827E9FBFF5BCCFF806AB21432D594C78C8D62
          B20AD8F50F94659A6AFB082A0F0000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000009F34944415478DA9557097454E515FEDEEC3399242C61090912163D42
          81880246DCA0B29462248041AB68C58A625D8AA747DA5A4FCB0184B05BB468A3
          45A28085842508846802C7008625802CA621101313B23049662633F3E6EDEFF5
          FE2F83E7F43441FACEDCF3DE9B79EFBFDF7FBFEF2EC3A18BE3E9975E1BC169DC
          BD9A6EFCCCB068830D1D031D4E571FBBCD916858B9448EB372E00C4ED7014D55
          0D595698850451E850C468ABACE88DB0E8DFEB9A5E698572B2EC60E1255AD6E8
          CA1777E3223B3BDBE14C1AF0063959D837396550DFBEC95C4A4A325C2E1734F2
          24080224518022AB884479444519AAA20116A06FCF1E48EEDF07BD7A24C0E5F6
          D03332AEB7FA70A5F6077C7BA1D268FCA1FE9A66A81FB6815F77B5A848EA12C0
          D30B16E5DF999EFE78FFE454B4FB9AA14822A27C0456AB05F15E2FE213E29198
          9088F8B838D312E2BD70399DB0DB28189CCD5C49564444220244518461E1E021
          F06E8F0757AEB5E25FBB0AD1547B65F7B1033BE67409E0B5B796A92F2F5C682D
          D8530843D7E0F1B8E17693B91CB05BEDB039EC709343372DEA713BE1A5859DF4
          9DD5CA82E08085803AEC1C2C162B9C361B383BE0A06B3B3D507EF10AF6969DC5
          E573E55AF1F65C5B97007EF59BD70A67CD9EF9D8E4490FC21F08E15A8B8FCE1D
          146E81F16C3EC916F6B85D88238B8FF3C06EB7934303BA6181AAE95055055149
          3523109125A24D417B288240070F5F533DAA2E9CDD7F6CFF8ECC2E01DC9399E9
          993F757AC3EC279EECD5462F19C43BC7596025A78C06181C445AD447E01AAFFB
          71BD3D0051924D7D301DC4391D70399CA03B760B4D232082446004189A86FA9A
          7F1BC1E6E6F1FB767D56D1250076E4AC5E5DFEC28217EF95149D93649144A722
          14E1D1EA0FD2EE3468940E0669D9CA598963039C6E40A6E868F42503CC0E83AE
          35A2505175FA4D33014AAA81D3E5657AFBD50BBD4A4A4A3ABA05B072CDCA2D4F
          643FFDAC2B2E9E134984B24C2F93A2FDC1104583F8B5319EED243C3B1C360241
          1162BF2BB4434681460E654581A8C8F42ED1411BA0D444282AE29B92A2E6BD9F
          FD6340B76968462027E7AD2953A72D1F90368493887B49613B51E1A30870B473
          06C04E94300076122047A92D535ACA0440A16868A4019534201000F61E2FC804
          4642201836CA0E151E2DCADFFAF04D01AC5EB972CEB88CFBF247DE7537171588
          02DA050B67BB3F428B932648BFB61B00EC56936D8DED98F86611D0C9A9A410F7
          14155961BB6760245C6B6C342A8E976E3EB463EB0B3705B074E9D25123D3D3CF
          3F34F1112E4A615319BFAA05556DDFA225DC8061DEB1B092E344674F58EC9DBC
          330D486CE72605AAE958225092AC110089AE655CAEAE362E9D3EFDC7E2DD79AB
          6F0A60FDFAF5EE5EBD934259B3E6D8784A21BFD08282868D680AD742E23564A7
          BE85F7AA17624252261EB9ED2924C7A7992A8FC83C248A944611BB0180554C9E
          B28465CEC573E78CBACB9573F6E77FBAE7A600D8B171E3FBDF3FFACC2FD338D1
          CD6DADCF4138EAA7DCA65A10B5604ABFF9C8AD7913B22421240590EC4CC3F09E
          199834E82978EDBD0900E35C35852851340441A577259C3A5E6634B6D48F2AFE
          3CEFBB9F04B02A67CDA159CFCD9C7AA0FD132E1CA69A2F84C1CB21D894788C4D
          98816D75CBC811E3564047B41553063E8B27462C86A08A6604A41B34D0B52092
          1180AF4B8B55A5AD3E213F3F5FF849002B56E46C9C933DF7D5834A2EC787A388
          10009D0438C4390E0E231EBBEA36988E045580DB88C307D34FE07AA889525185
          CE84174B4596050C00CF478D2FF7EFFD61D7A71F0E4617C7FF00589693F3CAA3
          9367BC57917080F3059B2902029E4F7DC7AC70254D3BF1C5F7B930C849942210
          88B4E0DDC947E0B5F486A45155643B8F0130B341521008048D9283BBBF2ADCBE
          65DA2D0158B366CDE43163C67DE91F56C355F92A108C0470977732324878071B
          B6A03154838BAD47495C2A51E0C3A2B1EF6364EF072050E564ED59D255B33630
          0A64CA84BABA5AE3C4B1239BF66DDFFCEA2D01A06274DBB0A1B7D78D9A34920B
          F241F4B6A6C0AABB1195A380CE21A8F8F1D7F2D9E40C0809ED5878F76A8CED33
          D5FC9D956BA601D5D400458000555EBA607C77EECCA23DDB3FDE784B00962C59
          62494D19D891F5E4E3DE830DDBE00B3520ABDFEB88AA516ABA6ED4F3D55877E6
          250AB38E0EBE157F9A908721897791D8A2A4150D2213A1D60940220D54549C34
          EA2F57CE28D8B6B9E896009899B076EDB9D75F7E23FDB3DAB55C6D4715522DC3
          9168EB0797160F8D53F1D1A53F93E038048882BCCC0B94F3E49851604640EB2C
          4E4CA8A4816FBE3E6C5C6BACBF63DFD67F5EBD65002B56ACD8F1DCFC05D9612E
          C8E55D5D61B65D498C222004F0DCE025A8172EE3A3F37FC168E27EF1F85C0485
          10F12D999553628D8965839986124A8B0F889F88C104E4E62AB70CE09D552B97
          CECC9CF5F6C0D4C15CE9B55D286BDE47231A2B2A3C75B6005E19B50E75A14A0C
          4ABC13C9AE616646C85267036200584ACA928630CF1B457B0A2E7FBEF9EFC3D1
          CDD125809C9C35F3EE7FE0814F47A58FE614D982E2FAAD38DAF485196A5E0CA2
          8D6FC1EA89C5E8E14EA2962B9263D9AC8E9D15909563CD7CB6A5ADD5283DB077
          7F7E5EEE63FF1780E5CB978F4F1F33E6C4430F4FE4584FB05BDC38D6B21F3BAB
          DE455FE710640DFE1D92BD69D492AD66A5D35953923BA72391EEA3662B575073
          F5AA71F268E9DF76E67DBC189D63B91EB39B03D8B061438F3EFDFAB53F9A9965
          1168FC66834763A486EA7F0843BDF7202446A053A89D2EA7D901D98A6C1ED4A8
          234A4405ABFFAC0A5E3C7FC6387DECF0E2C29DDBB7D0231A7B8C4C899DD9BDD1
          2580CE745CEAFBFD9B7FE8C31A914223152B3C7C54321767B55EA7D1CB4A132F
          0B374FDFB1FD396860B1D17734A682013F7AA4D4282B297AF1D4D1C3C7694999
          4C2493626776AF740B20FBF9DF1E5FB56CC904AFC745FD40EACC6BA5B3D130A7
          2CDC6CE456694E8C10309522C2A8D06932A2E98D3A61141B96BE6D549E3FFB6B
          9E0F35D29254C910210B93F164AC3149DD0278EAF95736FF226BF6FC7BD347D0
          1F10C77F0160F9AE9223361DB12194CD7C0A71AEB2C1943E91901FE547BEA21A
          702472B6A27C51CC291B464364FED8998111BA0530795AD6A6AC79CFBC9C316E
          2C062425A087D78396F60E04423C65826C0232A75EE29D0DA56ED243729F2470
          D494CE9C3E8553A74EE2C89745B5D5559736D172ED64AD31E7EC1C8801E83E02
          83EF18FDE094E9330ECD7D72AE277DC41D484AF0A0A93540FF09DAD0D8EA4793
          CF8FFA661F8DE4C090D4140C4AE987A1830652BD1050FECD71EC2DD8619C3D55
          BEBBA5B9B18C966B266B21BB1E03138E6900DD0260C784A93F7F68E4ED233FB8
          3F236344C6F8B170C52752040434B4B6A3D91740434B2780B4D401E8DF3B111E
          12614D75150E1717F9CF569C28B8525D5512737EC3712496053FFE53BE29801B
          C74B8B16DD97E872CD23816550F2A7A9BAAD07299F6B0B8629ED242DCE660D5A
          A037DBADC6771DEDFED22F0A0B4A623C0BB19D6ADDADFD1F13642085459DE357
          0000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000094B4944415478DAED570B6C5BE515FEAEDFCFD88EEDD8CEA3793971EC
          244DB2A469D39416AD85950D4657948EC128ACA0B5134C932AD1156D1285A9D3
          D036D8068CA9E3B1754550AA6E2028452503A5945092863ED2D476123F52C789
          9D871D3B7EFBDADEB92620C68686D0A46912BF75645DF9FEE77CFFF9BE73CE6F
          06FFE3C57C09E08B6CDAD8D37D5BBE50D8DBD6D1DEE8B4DB977CBEE941919077
          70D4E11EFDAF03E8EBEB538D8E4E681C8E0BB3F498AE36EAEFADAFAF7F7CD73D
          773325256A5CB83484C181D3F0FB1782A313AE0DF4CEA4C5D2ABE4F30386AB57
          5DD1580C735F0840DFF6EDB7A9B5DA7D2291B8F5F2E807CCC8B9E14C3C99ED6F
          B73535EFB8E5E69AB28A2A4C4C381108F8918AC7C163845888C48E56D69AF599
          647C93DB35C1BF7861A490610B769158F8483C9E3DFCB901F4AEEB7ADC62B1DE
          7BE3B66F31F381008E1D3B8233A707A156CBD1B36E03944A31441219366EDC82
          E79F7F868233A8AEAC465E20C757376FC152388C77CFBC8D575F398E4C26077D
          99AE2011C99F72BAA7EEFD8F0036F4747D47A5543EBFBDEFDB4C936D3566FCD3
          38373C88D3036F21115B46477B3B96E9BBA6B60EE3E37628156A949428115B8E
          63EDFA4DA86FB422B2B488607006C3EF0F626C6C14B96C16A59AB242329BBC7D
          E8DCD80B9F0980F8E6FBBCAEE11BBFBEB543A52EC57537DC08D7E4383C9E494C
          795D882F87B0AAAA1A1747C730E3F3412495412E9582CF1740ABD540A194412A
          55A0A36B3DF2F91CC69D57E0748CA1C16CC5E8A511D2C9DCC8E0F0856E0A95FF
          B700767FEFCE07A40AF9C1665B33239148D0D6D90DFB954BF01200D7A4034C9E
          85A9BC1C7574FAA5481C5595156098421150CDAA0A4CBA26E1F1BA09402F2C96
          16B85DE3F8E0FC10CA8D5558989F854CAE2924E2A9FB0F3DFBECAFFF05C08103
          077891A5D094565D52295728B066ED7A88C4628C5DBE48005CF0B81D100AF894
          8155A826F3F9E7E86475E0F180731F5C82ADA91E5357A7E09DF2A2CC60C296EB
          B7156918242DF0F942A8551AB02C8B149BF73CF6D8EFEA2964E19F00ECDFBF7F
          0B0FB9530D6633130C0670F3F61DA4F019D889432FA57FD6EFA6F4CA505B5D83
          86C626D81D6E34D457834F002E5C1E476787154EA7B3980191588A1DB7DE8D50
          681EC3438344851DD75CB31981593F780271A190C3B5071F79E4F4A733F06799
          58B053A35241A650A2BBA7170EE26FDC71A508606272025A4D29EAEA1AA0D3EA
          2010F2E9590D818047609C24CC04C2A4FE20550D95051EF8E94388D0F3D8E50B
          18397716365B1BE2D414743A2362A9C4330F3EF8F03D1F03A0E00A955A35CB26
          630A0989AA9B4A4DA154E2E2F911B85C0E4C4D79301F9C452EC76279395A747C
          D7AE3D686C6AC5B1970E93CAD3908A25506934C8519ACBAB6AB09E4E9CC9A449
          BC6EBCD5FF060C46134A141A64B22994EA2B22B95CCEB477EFDE6411C0A14387
          EE4825E287957209CC8D36D89A5B48B13EB2AB08874278E38D578B99585E8E40
          2412A1B5A58D3220A2D38D422814A2B6B616254A0538E1A6332C76DFB70F5936
          039D464B5AF1C271650CB1581412A91C972F8CC0D2DC49FB85B7EED9B3E76811
          C0430F3DF88772837E775999010303FDF8FBA9D710A5BAE693C2F45A2DD66ED8
          84A5A51086DE7F0F32998C28D053EA451FAB384F726A6CA843241AC5359BAE43
          6B7B278EBFF417F49F3A81D062982A8507954A89B5EB7A51555D87D2523D6603
          0B4F1E78F8E1FBB8FDCC9D77EC9868B15AEB8F1C790E910C1F699101DA3223D2
          E924C2FE09C8F31154949B603019313BEDA3C6530A05E9442E9316410482F3C5
          00E6BA5A18CB2BF1E28B87110CA5909157424F2D1B0516B3DE4988E27E94AA64
          E8DB711B1C4ECFC491178E5A980D6BD66C69B0994F8D5D1A61E6623CE85AAF45
          F757DA2116098AC817A8DE074FF723EE781BB53555301A8C14525070B93D7685
          525E93650BC9643C76C6DA64F9667B5B2BF3FAC9D770752E017DDB66ACE9EC84
          54C4A77AE321C3E63038348CF9A1BFA24C5782D6D55D8531C7F866C65257F9B7
          8A72C3368F3F889296EB4980BD28E433149C4181AB54029162198C0D9E44CA3D
          8C268B1962B1227FEC95D7FB484833F4C6929C8471F3B66F9C17F073BC77DF1B
          81A4B1176B890A86BA21C37C4814E78BE10930327C16ACE34D9A2772CC06178F
          33AB9B1B9674A56A95C71F80EEBA1FC152A982881A0E9FF76185E668633896C6
          F4EC222A82038844164803A6D8B1974F6CA79FA7C9C264BC1DDB6F72C4A221E5
          A873029A6B77C35A5F058558081E7FC50F09259E62E19A8BA1313C08CFA49DBA
          692CCC747736E7857C21130C2FA269E72F20E3B3D0503570200AF449D0340B45
          D360F8A4FEF879BCD97F024BD178D8EEF4DE447E7D5C06B823B6B5344C980C65
          7AAE7135EE7A947C08A1223F12A2805BA92CF9594E83E549B0493A8D3FFDF109
          6E861498CEF6E66885C9A80CCC5C8575E741AA571DB83D74C329A62D4900D81C
          0325F57C89EF2CDE3CF9327C8139B7737CEA16F2EB278B90F157DB1A461A1B6A
          AD6E8F07355BBF0F6BE73A4A7C161221BF48010720952D404C9436653D78F289
          5F2191CC4498369BE5A4B97ED5D6340B34756F40E3D6EF4225A5FE4A01B99155
          A0E0E92C95E3E215FCF2E73F238779B8BCD3C7273DD33FA69FB9DB4E8C4C68B3
          9A9F325757ED4AB105D8DADA51B565270DA8B2E2E0E368E46A35C38A20F00EE3
          E8E1A7914E846876CCBCC6D86C8D37E8D425278C4613D3D1D985A68E1EB06A03
          2A2B2B91CDE5E0264EF333760CBCD50FBFCF8B68349E75FBA66F5958089F5D49
          7F96CB404D4D659749AF7BA7A6A65AB8AADA8CAE9E1E84852AF253059E480CEF
          A407ACDF0E2F75D6C133EF70AC1422D1C51B3885085A6D4D872A4CDABB0CC672
          86BB54E8B5A5C8A4E2589C9F83DBE3C615878BF8223D2412057F20F0E8A4CBF7
          28ED0B71D47E629ACB9BAD96FD069DE6279555154CCBEA2E98CD666492CB453F
          DC909A70FBE8E212E10AAB1008049EBB6C77FFE0A36154DA6C6DFC4DA9BAE476
          6DA99A673495D3E048229E4C42482A66A9D707820B998550E831E7A4F7B72BCA
          FF64706E116F50365B1AEEA7A6B44FAFD508F50603F5FE1CF9A2AE4A7E726C16
          73F30BF985C5F011FBB86B1FBD3FFF11004E29DA0A93E96B6A957C9744226D53
          C8A4EA7C214F5D261948A4D3EF2C2FC57FEF9B9DBD48EFC5C9D8CFB8CB72FE24
          D5D5E51D4A99E28762B170A3542A31F1787C249389C5442A351C8BC69F9E9A9E
          1D58112FFBE93B21D7E0B9FE2A5901955B39697A85EB1C3EFF1270E25C31DECA
          352CF3693FFF9FFF8CBE04F0DF5CFF000D980D6BD7DC44AE0000000049454E44
          AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000008284944415478DAA5970B5054D719C7FFFB7EB120111111909722AB54
          11A212418D560D6A2A3219D31A256975ECD448B4BE1527A5A96DD389CE38A45A
          C7646A6DC54765AA4633A46333CAA44654E44D4040587097DDBBECE3EE7B977D
          F5BBEB639A6622763D33DFDCBD7BCEFDCEEF7B9C73BEC3C3F7B4B2B2B25C87C3
          716864642423180C8EF87C3E273D1DF4B48542A1B0F8FD7E96DECD8140C0449F
          18BD5EAFD9ED761BD46AB581DEDD8FE5998DF77D1D151515BFCDCB9BB53F2E2E
          0EA4186EB787C41D1697CB05027BFAE4FA3D9E47FD040D82834AA532575555BD
          CC304C5F4400070E1CA858B47CD5418BDD85CEE606843C0E242527237E7C3CA4
          5219241249781C59FF54783C1E040201C8033872E40806060666B12CDB1411C0
          BE7DFBB62F2B5973589533932C0AA2E15E234EFFF9046EFCF36A7832914804B9
          5C0EA55209854281A8A828C864322E74E8EFEFC7E9D3A771EFDEBD3452A58E08
          60CF9E3DDB9796BC7938234B053E8F0FA1900F8FD78F0D1B37E2FE9D2FC39F52
          0E3CB59E72211C8EDADA5A343737E3DCB973686868984403072302D8BD7BF796
          452B567F1C94C7225A2645E284F1703ADD28DFB219EA965B08529C2929BF1502
          0EA2A6A606F5F5F5B874E9121A1B1B9349952622805DBBB697152EF9D1A949D9
          B990898518D4E8306E6C2C76FCF23DA85B6F853FFDEFC99F009C3973260C70F1
          E245774B4B4B060DD4450C306FC9AA530919D33146298793329C475657ECD9F9
          D403FF0BC0E5C2A64D9BA0D16870FDFA750E80CB012622809D3B77AE9BBD60E9
          DF12A7E621562983CD6687542CC2FE3D3BA0E9B84300F88EF531313158BB766D
          78159017DCADADAD5C0E0C470AB062C69CF957937F5080315172D8ED1C8010BF
          DABF0BBAAEA6EF78804B486E45949696A2B7B7974B407367676716A9324604B0
          6DDBB615B9F3165D4D9AFE0AA21512386983110AF8F8F0FDBD601EB47D0B809B
          9CF3406C6C2C56AE5C19F6C0AD5BB78C5D5D5D1C803962809CB9F3AFA6E41441
          221543C00B61C4EBC1A1CABDB00C7421F018E0D1520CC237E243724A128A8A8A
          D0D3D383BB77EF7200534895255280828C9CFCAFA7142CA5DD4D0C212F48005E
          54FD6E1F6C9A5E0428099EEC037E9F1F368501098A642C2B5C8EB6B6366E2FD0
          50287248151B11C0D6AD5BE7644CCFAFCF9CBB143C81082201E0F7B871ECF715
          70306AF8C9EA809F045E8C7B5D844157171C0D4294CDDE8296B6660E60A0AFAF
          6F06A9B272FAE61D4C7FCBE70CAC13C978976FBEAF3EFE5C00A9AABCFAC905C5
          08F17910F38370586D385575101ED310591D845FEC8278B11573CAB2F1EF2B77
          A0AB09E0ED8277D1D8720F4D8D4D037D037D9C07EC791FA6C78CE5CB1A272C8E
          4ABFFF19C3D4FF5A9D302A407979B92A3123AB63CADCE5E04BA3C80321B04623
          2E7C721823461DDC516458C130A6ADA6036A623CBE385107F67610B3A6CC01A3
          6360B2184DD13344574281509A4086D9B153E432F1381EEEFF63E861D3217DCA
          A8009B376FCE4C4CCFEEC92DFE091CE66178FC8034E4C2D94F8FC32DEC063F8F
          45EA92B19028C450C6442168165258FC70FAEC08F268557829373C3EF8783EB0
          8C0D0E8B1302311FCCD7EED6F68F0D339E0B20216D6ACFD4F925507AF518500F
          C24A20375AAE4196AF47EE6B2A04F97404CB8210C90588134D40B4F025E87CFD
          D0790661D6B3306B59987456B0F45B424B393A4E8EA13A775DC73166E1A8005B
          B6FC2C71CCF8C9DA690B57D392A3D2667810835D2D686B6F47FFD85A64AE4AC0
          C4891331EEA578C446C561AC7002247C2918FF2086DC6A0CEB87611C32138005
          ACC10E895C8428A502BA9BAECB1DC799925101684B8D4DC9CC36672F5E03112D
          C1004F88EEBA8B68FFA69BB25F0B434E07C53F090ADA2595D131481667225698
          0053508B61AF0E66C60CBD96C1F09009160A8144F1A87E606E3BFFD2716CF8A7
          CF05909431D59CB5A0147C811082D0083C36133E3F7B12129F1B269916E2A52C
          B2962441298BC1444906A205B11402350C6E2D85C042105698752CACE401A952
          0CAF1621BF25B8A1A56AF8E4A800EBD7AF57C425A5DA55AFAEA131A1F05097D3
          816BD5559053ECD35332D02DBD0D65B107E9B929F0740A31393D0B16A916269F
          2E3CB161C00C432F85A1DF0E9F85E716F2057FE83A61FE008F143E1B806BDB77
          EFF3A7CF7F4320A07D007CC0C1B268FD570D5E7B751E3C54A43A1D4ED47AFE8A
          FC4DE9A8ADBC8D904E0ED59C4C688CFD54BC3858BFD0D7E074B81FB8EC9E3B3E
          99EB8AFEE4774FC66702ECD8B5D73F61F60A818C2AA2508807878D85B6E94BAC
          FCE102586D3678DD5E0CDB18DC567E86CE9BBD18A39D8415F356A3BAFA0C1883
          EE73C6C894929A9167CDF14C80AD3B778F642E7843E421D74B65722ABB5DD034
          5C43D98F4B61365BC265B8D73D8287F65E7CA36FC6CCE822026371FEEFE76134
          1A2FEA74BA37498D2F628035EF567C955FB8A8502814840F9F2055C7DD7557F0
          8B0D6F3D3A01E908E6EE015C383CE40DAB9D855EAFC7850B17603018CE90BC4D
          6AFC1103ACDF7C20DB270835CD5E582C09785D08D1A174F9938F50305385B4B4
          3424D33D81136E797197143A7C406558B830250F5413C03B2F04C0B59277DE2B
          4F98945A95312D2F7CE9B8F0C7DF40D3DF775695957E9336A27C2AC366A6A6A6
          4E4E4C4C5470DEA02A882B4861B55A8F12C0565211782100AE15AFFDF917D35F
          2E5C363E291535473F8066A0BF5AD3DFFB27EAE2EE805CC1E1ACACACCCA223B8
          986E4245EDEDED26F2C07EFAFFE168BA9F0FA0BC329AC7EA7B5E5952127FF5D3
          43D0AAFBCF3F1C7C7094BAB424DCC5D4399AAB5F08806BAF976D2A548E89BF71
          FF4E9D80D169AAC90B1F3DB6D016E9E4FF1700D71696AEDBD87DF7AB45AC893D
          EC72593BE82F4FA4133F69FF013C507B5D36F98D5E0000000049454E44AE4260
          82}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000090D4944415478DAED97595454F71DC7BF77B63B332020384671092E29
          1A62DC114C8C36B6C687164553488C5510735CA8116B2D154F3C3D567A1214B2
          D487C6C63C24A79887A46D4E6B5434DAA334ADB14882ECA028B8B00EC30CCCCC
          DDFBFBFF6718F094BCB40F7DE9CCB9F3BF73E77FEFEFF3DB7F23E07FFC12FE0F
          307C52545474C9E572ADB2582CB872E54A6F7F7F7F501046F80CC380AAAA7C65
          D783C120FFAE691A24497AE4A16CCFF02B3636D6BE7AF5EA096CDFE0E0E09513
          274EAC1A13A0ACAC4C976559F0FBFD282F2F87AEEB30994C309BCD91D5CC5602
          6402645982A2A89049B8ACC81CC46C32C36AB5C2447B2D16765860B73B909595
          85FAFA7ADCB973C7B87AF5AA694C80D2D252E3F2E5CBFCE16BD7AE456ECE56D2
          4C0E694487A603BAA1139840DF69A58B3A7D08B46A06BB62C060BFD11ECD08DD
          2410C0EB8505989A3819C48A2F2B2FE3C68D6A614C80929212A3AAAA8A9BF560
          511192E72F82ACD283B530821012A8D2359924E82494C9D1E93C04103A672064
          0CFEBB28DAF1C9C963E87ED08E86961678FBDD0470636C80E2E262C3E7F3C1EB
          F562EBD6AD484D4D0DEB2E4025F505667EC188DCC2DC2CA91A87D108CC30047E
          51E36BC842369B0D6525C5F0F43C444B6B2BBABBBB515DFD2D163872E4883130
          30C00172B76DC3DC45692458E32666DA488ACEF7592C02592214680C8221C904
          1894740EC3DFB452B8C2218A6481E3E879D8815BB76FA3ABAB0B35353563031C
          3E7C9803B063C7CE9D485BB62C6C8191AD92AA73183B05184F9030008711427B
          645943500D59C7E9B0E1F81BC578D0DE86B6B636F4F4F4E0E6CD9B63031C3A74
          6814C06E249305344D65D6A48787B4653110204D99C96D5681DF6D90BFB5517E
          37860392AC60210B7C4A31D076AB9503F4F6F6A2AEAE6E6C80C2C24283999F01
          FC64CF6B484F5BF6ADC5C32F33DF03A25980683571309EFA64064D60E922502A
          520CD0EF478FFE1A4D4D0DB87BF72E07686868181B60FFFEFD1C801DF9AFEDC5
          ACA7D36022DD861F6EF0000B6B496F7F508742BE37932FACE1B8E0D960845293
          9C05A7D3894F7E5B82DADA1AB4B777A0AFAF8F609AC606282828880014ECDB8F
          E5CBD320C0C023D53AE2F3D0EA97544844C52A8BC366E171317C87893E6C0476
          B4B81835DF7C838E8E0EB8DD6E3437378F0D909F9F6F50A9E4007B7F7A00339F
          5EC6129BD28F65D588F6D0465982541D0A5B82A59D4802CDA69152EC743AF0E9
          7BC770FDFA75DCBF7F1F54DED1DADA3A36C0CE9D3B2375A0F0E0412C4F4FE7E6
          379B1EED57217784F3235C80FC924610640902B293DFAD1417CC7AAC679C2E3F
          8DEAAFAB719BD290C5416D6DADA028CABF03E4E5E519434343182280F53B0EE0
          C98569601BD9435821627E5759C4935558160C1FDCF73A6B4A3A0927D3CB6EB8
          EFB790B96FC32BF742351428CC55030A06BA0771BDB24A60D660C1FE08404E4E
          0E7741D0EFC39C0D3FC3C4E4A5506499CAB14ADA691C82151C856A81163E0F7D
          D7E0301918EFD031C1FF351E8B1B44DC5C3BFC8E7EF4F9BB296306B93534AF19
          5DF51E3434379C6A4AECDA13280E0458504600366DDA64040201EA6E41E80933
          31E7B97550A919A9614D9561AD29F159CECB542334126E25A7BBE2AC10A52FF1
          ECEA14082E19DE8097DC328821C507BF3284201D7ED50F05D4B67B445CADF87B
          A5C7DDB9C657111B88006467671BAC15B3B65A5DF54F1EC5C3AD98B9C13CDC62
          CD16EE7BD68259B04D993A0D8F3F3319AB363E03FB440B9F0D826A8084328021
          04D4212AE37E02F1C327F7D33A08DB400CAAFED270CA5CE3DA1E01C8CCCC34D8
          CD0C80AA55A8FFD3E17038306FFE02CA750B553F1BCD035672878A2172176B36
          1393E2A0CDF460C1CA14284199FB5C52240434122C0711D4FC08C87EB8833DD8
          B7E80D445963B0EFD246745E0C1AED4D0F97460032323222008D8D8D5C38D370
          C3C61791BA6431EA1A9A70EDDA3FA8D6CB489A31937AC7EB90682A2AFFDB4924
          2C1061B21B3C6BD8CCA0A814785A109EA01B83920F3EC983034B8F23293A1951
          E2385CB8F307945DF825AA3F6CFD5D0480861083453D0368A1DE6D094F3E1B5F
          CCC68A67D35051F1052E5E3C4FF38086D94F7C076FBDF5369F1D8E9CD98BE732
          176388B9CF50B9B61DDE5B3C00354A110650B2F223CC8C4E418C23164D9DB5D8
          75360393E313F1D5A9D65B11009ADB0C3686B187B29C0D01E8C8CA7E196BBEFF
          3DFCF14F9FE1E2850A0E386BF66C1C2B2DE3635BD1991CA4AE990F8DDA75FEBC
          23D8FBD74C78026E2AC7660CCA5EBCB9F24324399349783C1A3B6F62D7991F60
          9C731CA29D31A829BFA7460056AC5861F04E460F6D6F6FE72E60E72FBDBC09EB
          D765D09CF83159E11C07489A4100C78F73C09FFF7933E6AF4EC62F16BE033200
          352305F95F64E281EF2E8EAD2AC734C72CC43B1348782D767FFE43D84527A2CC
          E3205881BAD30F4600D2D3D30D23DC4E59A118067865D38F09220BEF9FFA00E7
          CF9D0D03CCA011AE945253C791CF7621F1792752A35EC0FA395BC8F734AC42C6
          3DDF6D4C14A7C315ED22B3D761F7990C38EC51BCACBB9C8970077AD0F8FB8723
          2E58B26489C1528E09EDECEC8C006CDEB20579B9B9282D7B975C100298363D09
          6F9205E4A0848FAFBF87960995502D01FC687A3E5E9AFF2A06821E5EE3C689D1
          24BC1EF967D6D174E4E431112726501B1771ABE50E1E5E1A1C09C29494948048
          5324B3009B5C18001B487272F2B07DFB36FCEA68312ACE9FA3FEA412C00C94BE
          FD2E055E00DDFE0EBC73AD1071F3CCF45F414276523E32525E81DD6A477344B8
          8397EC18310E0E4B34A56437DA3EEF33823E6D790460D2A449B934D3BF1F1717
          6762D9306C8DBCBC5729153750DEFB79BF67A5599614DE1B2459A1966BC6C9B3
          C7D01C5D89A8A936820860F3130598EB5A887D67B320521D110511D1622C2CB0
          C2A77870EF462F3CB5CA478F79666F1DDDEA1CE3C78FDF4B9A6FA341224859A0
          D31C6C7CF785B54F517E5B5412C6FF80F049980A8E4C3D82606C362B264E48C0
          573D17605AE0816B762CA098795112A970D94C76728685DFE30DF4A1EBA6179E
          3AA9D26D686B62EB4795E2FFF4C5CA747C7C3CFA92FA9C89E3A37E639D60E426
          3C152544B91CE4469AA9A87949FE20061E04E06B940D7F9FFA8107DA9E84E684
          479BD17F0B111313832953A6A07FC6FDC5BA57DA61588CE72D76EBE31AFD9391
          25ED2E65E7254D574E4EF13D5935BA1DFF0B1E90ABFA24B80C35000000004945
          4E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000009F24944415478DABD97797014551EC7BFDD3DDDD37366724D124C8010
          12C8B1729850210AA844917505591728057557CBA540855A56FC4351E385078B
          BA5EA518602522A788B01C22065750EE6541028124909390CC4CE69E9EA3BB67
          7F3D842AAD4D046BB7B6AB5E4DCFF49BF7FBBCDFEFFBBEEF35835F700D7BE835
          8B592F4C4C17D9E103ACAC51E074DD7E257474CDF30B0F014CFC978C75E562AE
          A5D3D0599F584DD6C0224610E6E715145A4B876621C7A647972788B3175AD1D0
          5CD7E270F3CB4EC5990FB07C4EEC7F07307D033726A3E71119CC73034754644E
          282B41810D902844BB4FC5A5501C9D01062E4985B3FE103C0D878E0B8CE1DE93
          2BE79DFDAF01C62CFCF8376CD4FB5AD6F0D2A27115E5189ECA2026039D41055D
          7E151D01E0A25F4624A602717A400588063CE83EB2D5ADA8F129E7562ED80F54
          B1C50F1967B3ACB9EE87EA79C7AE09E096673E2D6643BE37797B5E65C1A80AA6
          305DC000AB0E0E09E8F02AF4A9C01B56212B1451A57B290A292A23AE508BC7A1
          C422701CDEEA239A874DFAF85C9DBDF056676B7DEDF94F9F99785580BBAB6AEE
          56C1AE4D193149F47129F0050208057C0807BCB01BE2C8CAB043D1DB100847C0
          AADAAC557050118CC8F006C3C4A310840A251A81EBC40E640CAF40449F0CE791
          2D1DCD6B1767FF2CC01F5EAF191D53F8EF078F9BA977D3D85D9E083A9AEA100B
          4B60F526C894E9A0D7812CAB8092921168A36C201E23ED5F8690A231B8FC1265
          4281AAC6A9222AD4588C18E3F0D4ED55252767EDDABD28D82FC0FD55D5DB4B6E
          9BF9EB8860C6DEED5B7174D73AF0262B7863320D26C3201A21661743E5CD9043
          1E4C9958810B7E1E8A1CED85885366A2F00442894CA8541E55B9AC0DFFF96308
          7ADA473BB6BE71BC4F80E9EF6D306729BA9E92CA69FCB7FB0FE38B35D530A566
          4267B0803326017218A1D61F9670064B1627DA7ECF65E43361BF1BF74FBD1DF5
          6E7A4C336568C61C59418F2F84A0144904D720A826903A1B10B8D834C3B1EB8D
          8D7D02CC796975A97DD0A02383C78CC7ABAF2CA374AA89D9B3462B04730AE4A0
          17C1A6A3CF5DDCB6F405FBA405F7D0E0AB74030A2DE1908447664FC33FDB0209
          41B2345B8651D0ED0E2012895ECE029520EAEE44A8E55F4F3BBE7A6F499F0073
          5F5F392127EF57DFA4E4DF80AABFBC03932D9D006CE04433C25D0D903AEA4F2B
          2C3FB3EBF325A7B4FE69373D788320EAF627E5958A830B47C21FE3682025510A
          86A1A6AAE874F9A83C31E2A215130E423AB77FB563EF470FF60DF0D2AAF2EBF2
          0B0EA4148CC1D2353B61B42441917CF0371E91108BBEDCD1D8B414751BA35ADF
          01F756A5550EB1AE4B1F72FDC43A291D0E9F0F1C056629D55A19182A83761FA3
          E05D4E2F8950A52AD0723DBDF780F71F2B2BFA0478F4DD3583524D69CDF937DD
          8EAA8FF740E9388360C7B9DD51CE36CFBBF3A5A62B9D53A73F7D1D1F89D50E1E
          7D73C1C8E2E1B4422268EC74C143EAE7B4996B20B80CC2B124BE80048FCFAF61
          416A3CE070EF5D6EEF6F1530F3DFFCB45A51D9DFED3FD1106C6DBBF8C42DA372
          95642E5A02A375DB8AE7E71FA13EF1F4294F3E66B0A6BF23661782112D092FC8
          B189B0082C39A28C4EA707B2AC2D4D0D224E1071387B7C902211845B4FC6BDC1
          503A0EAF76F56B44931F7F5B2FA55A98EEF6E024D19EBB796C9293F57A7AE249
          66B12314086C8BCBE1BF6F3FED34312A7BA74E14EFD259ED299C390D2418284A
          04991611828E49AC7D1F2D472D13DAD5E97023D27916B190AB5C3AB8EED0CF5A
          B17615CFF9E0C5CC1BEF59AC3FB1165FEEAE85C5968C9CCC7464A599B1E7CB5D
          5E1A783B206C4F1A344C06CF5632E0A670A6D40C863C43D519415608AB5180C0
          72E0050E1132A98B8D646AAED607C2C7B7D45C1560D4E31F2CCEBCE1CE17CD17
          6AF1EDBEFDF086228833D495E1C10AFC65DF0F07A04AB42BC4C2B53A41D8AAB7
          64B4AB5C7C121367A6317AF375D027318A4E4F30324C262362B45105DB4E3E1B
          FD61E78B5705183BBF7AC180B2CAB7D8F3DF62DF7707A1321CFC41DA8D684660
          75D47880D39A8E7E22B5793B09C6F384746CF3326D4C43F9AC0AC422D31459FD
          2DF486C1A4174675B5862CF601EB75A9D9D5DD9BAA0E523FB55F809BFFBC7C41
          4ED9A4B7FC67F6E1C0C10314CB80286D064152FD65005D0286110C60A41EA8EE
          B6AFA5907526EA7F2A306D7CBEE08ED238274F4DCB2DBACF9C3B2A3726F9A104
          3DA7DBD73F5BA209BB4F80CA45CB1F1F525AF9B6BFE50469600F04D1409315C8
          EB63099044705E0F261A80EC6CDA1739EEBB15F846EE6BAC81735F49D6B9C25B
          0C7965E33972554513E8C95AB90D27456CDCA8F40930E5A98F660F1C31BEC6D5
          7C063BF6D442102818A59CD3F1F0D386A395442788D089A4FEAE7A35AE4A0B7D
          DFACFEEB7F067F3F59F07B76DB8AC697B2E4AC92DF83703000F7D1ED2DCEAFDE
          19DC6F09EE79E6A3D943474FA8B9D0508F1D5F5206F4946A0ACE52CD399A7958
          A675CE0BD0E9F5E0F5B43B3ACFC79540F7678A296B91674B55F395E0A6A8B43B
          E5FADB29783242EE2E78BADB11EC6A41A8E9C86ADF77350FF60B70DFF32B660D
          1D79E327EDED1D58B7792B05315070CA0065421045821011519180E1E8194F5B
          35224144BB9BA264FC5FF08261A7C1923CCF5E7657A9604D83DFD18E6ECA66C8
          EB46A0E1FBB8120D8F930EAEF9AE5F80075E5E31796851E98E16B2D99A4DDB12
          1AC81A9005179D82F50603F47A231D52F49049422C4168E5E0E837BDC144EE48
          3A09F4E0E6D185306415E0C8D956B4D71D46D0D78360CB2928DECEF7A4A39B1E
          FBD96538E7955577149494EE3CD3E1C28A759B91999D8BE231E3E03C7F0A97DC
          A10404AF17139951195A112450ED3ED10C66F20A032617A761D230239EAAFE0A
          27EB1B10EEA847CCD9FC59E4C4B619579660BF007F7A7DD51DF923CA76B63AFC
          78F5D9A7BAEDF9858DD6C20915797943E0EE68C5259F06614C4008947E561048
          A0244AE1723938C18859A3525090C161CE92D56839750C5157E316F94417053F
          F693F7863E01162E5B559E9E6A3FE0ECBE54FF75EDBEC9ED7ED6A54BB1EE30E7
          95DF34A46814744107CE5EEC4940E8A93C9A483510AD543ABACF25CBBE2D8F80
          686B9EFAC05CF0DEE6DA58E7F969E869D4CE84F1AB66E08F1F7EC8A7860C8FCA
          3171DDD227675CD2FA598BA7279B87646F48CA2F9F9835F216648A7444EFEE44
          0FBD9CF089E09411021842C1CB7304D84C1CD6AFDF840DD5EF1F43FBD1FB10F1
          D3B109B1DE16EDFD94AFE5D58CFC1764EA1021DA2C03273DBCD89C53F45056D9
          5436253505E97C3871F211780E69B401D9441666918EA8012756BCF942C381CF
          FFF624A2FE1EFA3F79393488606FD3BE47AE0580CC1E023513352BB594F4D229
          63538A6E9C979E5B32DC9E57C86466E5C062D0C14CBD0C0CBD23349FC2B983BB
          3A6AD77EF8AEE362733BFD47B3683ABEC249CDD30B10D14A714D2FA73F2A972E
          91895E9881E3678C4DCE1E76A7C96ABDDE62B5D9449E4E867EB73BE06CDB7FF0
          8B8FD78783DEAEDEC0FEDE19CB3FAE7FBF1AF87F5EFF0613BC96618968C12A00
          00000049454E44AE426082}
      end>
    Left = 376
    Top = 40
    Bitmap = {
      494C010100000800080001000100FFFFFFFF0400FFFFFFFFFFFFFFFF424D7600
      0000000000007600000028000000040000000100000001000400000000000400
      0000000000000000000000000000000000000000000000008000008000000080
      8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
      FF00FF000000FF00FF00FFFF0000FFFFFF0000000000}
  end
end
