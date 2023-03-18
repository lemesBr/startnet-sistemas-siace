object formVendas: TformVendas
  Left = 330
  Top = 162
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsSingle
  Caption = 'M'#243'dulo de Vendas, Pr'#233' Venda e Or'#231'amento '
  ClientHeight = 557
  ClientWidth = 910
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  PrintScale = poNone
  Scaled = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TsPanel
    Left = 0
    Top = 0
    Width = 910
    Height = 557
    Align = alClient
    TabOrder = 1
    object Pc: TRzPageControl
      Left = 1
      Top = 1
      Width = 908
      Height = 555
      Hint = ''
      ActivePage = TVendas
      Align = alClient
      ParentColor = False
      TabIndex = 1
      TabOrder = 0
      FixedDimension = 19
      object TOrcamentos: TRzTabSheet
        ImageIndex = 27
        Caption = 'Or'#231'amentos/Condicional'
        object Panel5: TsPanel
          Left = 0
          Top = 0
          Width = 904
          Height = 31
          Align = alTop
          TabOrder = 0
          object sLabelFX1: TsLabelFX
            Left = 8
            Top = -2
            Width = 370
            Height = 33
            Caption = 'M '#211' D U L O  DE  O R '#199' A M E N T O'
            Color = clBtnFace
            ParentColor = False
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Angle = 0
            Shadow.OffsetKeeper.LeftTop = -3
            Shadow.OffsetKeeper.RightBottom = 5
          end
        end
        object GroupBox11: TsGroupBox
          Left = 0
          Top = 480
          Width = 904
          Height = 52
          Align = alBottom
          TabOrder = 1
          object CancelarOr: TAdvGlowButton
            Left = 365
            Top = 6
            Width = 130
            Height = 40
            Hint = 'Cancela o or'#231'amento - Dados ser'#227'o perdidos'
            Caption = 'Cancelar - F5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 2
            Images = FormPrincipal.sAlphaImageList2
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = CancelarOrClick
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
          object ConfirmarOr: TAdvGlowButton
            Left = 741
            Top = 9
            Width = 130
            Height = 40
            Hint = 'Salva o or'#231'amento'
            Caption = 'Confirmar F10'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 11
            Images = FormPrincipal.sAlphaImageList2
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = ConfirmarOrClick
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
          object PesquisarOR: TAdvGlowButton
            Left = 554
            Top = 9
            Width = 130
            Height = 40
            Hint = 'Pesquisa or'#231'amentos ja salvos'
            Caption = 'Pesquisar - F7'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 20
            Images = FormPrincipal.sAlphaImageList2
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = PesquisarORClick
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
          object suiButton1: TAdvGlowButton
            Left = 3
            Top = 6
            Width = 130
            Height = 40
            Hint = 'Insere um novo or'#231'amento'
            Caption = 'Gerar Venda - F8'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 39
            Images = FormPrincipal.sAlphaImageList2
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 3
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
          object InserirOr: TAdvGlowButton
            Left = 185
            Top = 7
            Width = 130
            Height = 40
            Hint = 'Inserir um nova venda'
            Caption = 'Inserir - F3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 0
            Images = FormPrincipal.sAlphaImageList2
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = InserirORClick
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
        object GroupBox8: TsPanel
          Left = 0
          Top = 31
          Width = 904
          Height = 76
          Align = alTop
          TabOrder = 2
          DesignSize = (
            904
            76)
          object RxLabel9: TsLabel
            Left = 98
            Top = 7
            Width = 52
            Height = 13
            Caption = 'Data Or'#231':'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object RxLabel8: TsLabel
            Left = 9
            Top = 6
            Width = 55
            Height = 13
            Caption = 'N'#186' do Or'#231':'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object RxLabel7: TsLabel
            Left = 13
            Top = 39
            Width = 142
            Height = 13
            Caption = 'Condi'#231#227'o de  Pagamento:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object RxLabel6: TsLabel
            Left = 377
            Top = 6
            Width = 118
            Height = 13
            Caption = 'Dados do Cliente - F9'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object RxLabel14: TsLabel
            Left = 554
            Top = 0
            Width = 66
            Height = 16
            Caption = 'Desconto:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object RxLabel13: TsLabel
            Left = 263
            Top = 39
            Width = 70
            Height = 13
            Caption = 'Observa'#231#227'o:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object RxLabel10: TsLabel
            Left = 191
            Top = 7
            Width = 157
            Height = 13
            Caption = 'Usu'#225'rio do Or'#231'amento - F11'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label6: TsLabel
            Left = 187
            Top = -10
            Width = 5
            Height = 16
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
          end
          object sLabel2: TsLabel
            Left = 563
            Top = 38
            Width = 61
            Height = 13
            Caption = 'Over price:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object suiDBRadioGroup2: TsDBRadioGroup
            Left = 531
            Top = 78
            Width = 126
            Height = 42
            Hint = 'Selecione Ativo ou Inativo'
            BiDiMode = bdRightToLeft
            Caption = 'Exportado p/ Vda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            TabStop = True
            Columns = 2
            Items.Strings = (
              'Sim'
              'N'#227'o')
            DataField = 'EXPORTADO'
            DataSource = dts_orcamentos
            Values.Strings = (
              'S'
              'N')
          end
          object suiButton3: TAdvGlowButton
            Left = 771
            Top = 16
            Width = 29
            Height = 24
            Hint = 'F12 - Lan'#231'a Cliente n'#227'o Cadastrado'
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
            Picture.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000000467414D410000AFC837058AE90000001974455874536F6674776172
              650041646F626520496D616765526561647971C9653C000002B94944415438CB
              8D905B48D3711CC5570F3DD4434F3DD80552B38434B21411039BB308518BE51C
              6A735BB9999A4D9D634DE77DDE683AFDEFA6E565E16595CEE630B325E88386A9
              D3A94B8BC03DA45B6FA162423A4F9B941A86F985C3971F3FCEE77B382400A4BD
              248E3ECE9E567B2DCEB79EC09CC67DAD89E7D11015E871E8CFFF9E665EF8498A
              B5D9DDB1D0E6869DAA4BF5ACDE17A081798C58E8F487AD97831FC395B0E982B1
              A03D058BDAF3FBBE00AAE8A39576732F16875458333FC3F27B15E6277AD05FEC
              67DD17801A1EC39D69C9DC589AEC8063B6132B163DEC03048A12AEEAFE09E092
              BDD84A76E822C12043C5A2AC25D37DC70861EA4FBB8E8FAF5D85B01B723158FB
              001738E77B02043E47FE023083CF5094EC3047753C193BD528E3415E27418522
              17F95201BA3EB6A0A4BF08BE79E73417F9670F6F0164F44B834F926FA1B3E01E
              66DAC468E5D3403028A84D0A4393590CF5B81055A60C949B32D1FEA901E9FA34
              042507A8B6000ABA67FB977EEDAEC2B4D964C8C61FA1C22440F1683A72465320
              FA9002B68A853955D4FF0BAB288E866242847CC37DA4ABE3C0ADBA89B8D25050
              25D7607B1AB10D3878B946A410A5ED2ACC8796056E5D0C0ADBD9E8B62861B619
              217B9702BACC170CA1F7EB4DF381E0E78954BE6979E01B50FA5287DC462D0484
              06F523AB1028E6115F727DBD6BBA1A5D33045C23EDE340D69784C054B755927B
              782D8DC6EB5E31CC3A209901382340C20010D30DD0B500310444E4F8A1C7528F
              9D639852BA00204D49FCD7C73AE4E0BFB283D90B30F51B88D76E80A67120520D
              44CA1DB8F2F0341E1BEFA2CCC8DA3497BD656D27B0D684D83A4A32109B370CAE
              1160BF7126D0030C0370C795A27C0EB1BC28DC967AA3D298B879D9B55D6F2740
              4AFADC9C14D45344CD0EA4B5E8FDD34741CE9B726A1A64F12442B24DF0BCF1C2
              2ACF4A2C48107A1B9C862557ECDFBBDCD5DF2FE664AA2F4E1AD9560000000049
              454E44AE426082}
            TabOrder = 1
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
          object RbPreco4: TsRadioButton
            Left = 730
            Top = 51
            Width = 76
            Height = 17
            Caption = 'P&re'#231'os (2)'
            TabOrder = 2
            TabStop = True
            OnExit = RbPreco4Exit
          end
          object RbPreco3: TsRadioButton
            Left = 650
            Top = 51
            Width = 76
            Height = 17
            Caption = '&Pre'#231'os (1)'
            Checked = True
            TabOrder = 3
            TabStop = True
            OnExit = RbPreco3Exit
          end
          object RadioButton2: TsRadioButton
            Left = 652
            Top = 0
            Width = 47
            Height = 17
            Caption = 'Perc.'
            TabOrder = 4
          end
          object RadioButton1: TsRadioButton
            Left = 721
            Top = 1
            Width = 46
            Height = 17
            Caption = 'Valor'
            TabOrder = 5
          end
          object n_ORCA: TsDBEdit
            Left = 8
            Top = 18
            Width = 65
            Height = 21
            TabStop = False
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataField = 'CODIGO'
            DataSource = dts_orcamentos
            ReadOnly = True
            TabOrder = 6
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object Dt_orc: TsDBDateEdit
            Left = 97
            Top = 19
            Width = 90
            Height = 21
            AutoSize = False
            MaxLength = 10
            TabOrder = 7
            OnEnter = Dt_orcEnter
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
            DataField = 'DATA'
            DataSource = dts_orcamentos
          end
          object Desc_cond_pagto: TsDBEdit
            Left = 98
            Top = 51
            Width = 160
            Height = 21
            TabStop = False
            DataField = 'PAGAMENTO'
            DataSource = dts_orcamentos
            Enabled = False
            TabOrder = 10
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit8: TsDBEdit
            Left = 259
            Top = 19
            Width = 110
            Height = 21
            TabStop = False
            DataField = 'USUARIO'
            DataSource = dts_orcamentos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit7: TsDBEdit
            Left = 261
            Top = 51
            Width = 292
            Height = 21
            DataField = 'OBSERVACOES'
            DataSource = dts_orcamentos
            TabOrder = 13
            OnEnter = DBEdit7Enter
            OnExit = DBEdit7Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit6: TsDBEdit
            Left = 477
            Top = 19
            Width = 292
            Height = 21
            TabStop = False
            DataField = 'NOME_CLIENTE'
            DataSource = dts_orcamentos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object OrComboEdit2: TRzDBButtonEdit
            Left = 192
            Top = 20
            Width = 67
            Height = 21
            DataSource = dts_orcamentos
            DataField = 'COD_VENDEDOR'
            TabOrder = 8
            OnEnter = OrComboEdit2Enter
            OnExit = OrComboEdit2Exit
            OnKeyPress = OrComboEdit2KeyPress
            AltBtnWidth = 15
            ButtonWidth = 15
            OnButtonClick = OrComboEdit2ButtonClick
          end
          object OrComboEdit1: TComboEdit
            Left = 379
            Top = 18
            Width = 96
            Height = 21
            Alignment = taCenter
            CharCase = ecUpperCase
            ClickKey = 120
            Ctl3D = True
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
            TabOrder = 9
            Text = ''
            OnButtonClick = OrComboEdit1ButtonClick
            OnChange = OrComboEdit1Change
            OnExit = OrComboEdit1Exit
            OnKeyPress = OrComboEdit1KeyPress
          end
          object DBComboPgto: TRzDBButtonEdit
            Left = 10
            Top = 52
            Width = 82
            Height = 21
            DataSource = dts_orcamentos
            DataField = 'COD_PAGTO'
            TabOrder = 12
            OnEnter = DBComboPgtoEnter
            OnExit = DBComboPgtoExit
            AltBtnWidth = 15
            ButtonWidth = 15
            OnButtonClick = DBComboPgtoButtonClick
          end
          object CurrencyEdit1: TCurrencyEdit
            Left = 562
            Top = 51
            Width = 55
            Height = 21
            AutoSize = False
            DisplayFormat = '% ,0.00;-% ,0.00'
            TabOrder = 15
          end
          object sBitBtn3: TAdvGlowButton
            Left = 619
            Top = 49
            Width = 29
            Height = 24
            Hint = 'Aumento de Pre'#231'o +'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 4
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000000467414D410000AFC837058AE90000001974455874536F6674776172
              650041646F626520496D616765526561647971C9653C000001EC4944415438CB
              B593E94E5A511485790EDEC03844ABD6460D4E11A74A89888A13E83558B9429D
              D180182F104469456D4144101C3040D4B4891D8CA938A2D2B425DAF6BE0C59DE
              4034318A1A1B7F9C5F67AF6F9DBDCEDE2C00ACFF39AC2701280204D9B92DA13B
              BE3543BAD900E2631D2D5E1392F702BAF6DAD88A9DD690E1580DF799053EDA85
              D5BF4ED87E9A31B8D585BAA557A1EA850A765C809C119B4E29F8693716CF6DF0
              FC99C7F2B91DF6DFD370862D18FADA0DBEAD24742B40FEBD95D40755F0FE8BB9
              BAC2568C0694D06CF7C3FAE31DECBF6630CBBCA4C3DF8292C97CF20640B625A6
              1DE1F78CAB235ADCE41344441E3E55E3AEA4AAE6CB23E613234CC77AE802C328
              32E6D23700D2CF8D203E892059AF41A35700D10A5F7979C7B372A9371BED983C
              198B4238BA17B8F71B85AE97574565538594CC4F603CA8C5D821856C4DC6DD00
              2669F0E74A111317788A4D9C886E570DCDAE12CA2FDD783E944AC705089C15E8
              5C27F0DA2741A9391F2D4BF5301C8E427FA001B5A746B58587677DC9E4AD0081
              A31CB23582E9D58089A01EC6230A868311A877FA19B10A0D0E21D27A934271E7
              8037CB85D42BC6C49136E6BA1F73EDDB94A3EA4365549CAC4860DF39CADCB779
              6876D7A2DE2944CE4826B25469481F48394BED49241FBC0B1C6DD6B5A41FB58D
              4CD20F025C00F469BB39C5D41F150000000049454E44AE426082}
            TabOrder = 16
            OnClick = sBitBtn3Click
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
        object GroupBox9: TsGroupBox
          Left = 0
          Top = 436
          Width = 904
          Height = 44
          Align = alBottom
          TabOrder = 3
          object Shape2: TShape
            Left = 694
            Top = 7
            Width = 176
            Height = 34
            Brush.Color = clBlack
            Pen.Color = clSilver
            Pen.Width = 3
            Shape = stRoundRect
          end
          object RxLabel15: TsLabel
            Left = 3
            Top = 19
            Width = 75
            Height = 16
            Caption = 'Total Itens:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object RxLabel16: TsLabel
            Left = 299
            Top = 18
            Width = 73
            Height = 16
            Caption = 'Descontos:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object RxLabel19: TsLabel
            Left = 559
            Top = 15
            Width = 132
            Height = 16
            Caption = 'Total do Or'#231'amento:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object DBEdit9: TsDBEdit
            Left = 695
            Top = 11
            Width = 169
            Height = 26
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            DataField = 'VALOR_TOTAL'
            DataSource = dts_orcamentos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit10: TsDBEdit
            Left = 379
            Top = 10
            Width = 156
            Height = 32
            DataField = 'VALOR_DESCONTO'
            DataSource = dts_orcamentos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit11: TsDBEdit
            Left = 78
            Top = 10
            Width = 156
            Height = 32
            DataField = 'VALOR_ITENS'
            DataSource = dts_orcamentos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
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
          object Edit55: TCurrencyEdit
            Left = 79
            Top = 11
            Width = 153
            Height = 29
            AutoSize = False
            CheckOnExit = True
            Color = clActiveCaption
            Ctl3D = False
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindow
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object Edit56: TCurrencyEdit
            Left = 383
            Top = 11
            Width = 153
            Height = 30
            AutoSize = False
            BeepOnError = False
            CheckOnExit = True
            Color = clWhite
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clMenuHighlight
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
            OnEnter = Edit56Enter
            OnExit = E_DescontoExit
          end
          object Edit57: TCurrencyEdit
            Left = 698
            Top = 11
            Width = 167
            Height = 29
            AutoSize = False
            Color = clBlack
            Ctl3D = False
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindow
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
        end
        object Groupbox10: TsPanel
          Left = 0
          Top = 107
          Width = 904
          Height = 329
          Align = alClient
          Caption = 'Groupbox10'
          TabOrder = 4
          object Label10: TsLabel
            Left = 1
            Top = 1
            Width = 902
            Height = 17
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '[ ITENS DO OR'#199'AMENTO ]'
            Color = 7991028
            ParentColor = False
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ExplicitWidth = 808
          end
          object DBGrid1: TXDBGrid
            Left = 1
            Top = 18
            Width = 902
            Height = 310
            Align = alClient
            Ctl3D = True
            Ctl3DAuto = False
            DataSource = Dts_orcamentos_itens
            EditorColor = clYellow
            FixedStyle = fsMild
            FixedTheme = ftButtons
            FocusRect = frMild
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Gradient.Direction = gdHorizontal
            GridStyle.DataRowSpace = 3
            GridStyle.HeaderRowSpace = 4
            GridStyle.TitleColMargin = 0
            GridStyle.TitleRowSpace = 8
            GridStyle.TotalColMargin = 0
            GridStyle.TotalRowSpace = 4
            GridStyle.VisualStyle = vsCustom
            HeaderColor = clMoneyGreen
            HotButtons = hbNone
            MarkerStyle = msMild
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgMarkerAutoAlign, dgMarkerAutoToggle, dgForceSequence, dgThumbTracking, dgRightMoving]
            OptionsEx = [dgBlankRow, dgTotalFooter, dgTotalHeaderBox, dgTotalValuesBox, dgTotalFieldsBox, dgTotalFooterBox, dgAutoUpdateSequence, dgDelayUpdateSequence, dgAutoUpdateTotals, dgDelayUpdateTotals, dgCalcWholeDataSet, dgCalcSelectedRows, dgDelaySelectedRows, dgSelectedAutoHidden]
            ParentCtl3D = False
            ParentFont = False
            PopupMenu = PopupMenu1
            ScrollProp.AutoHidden = ssBoth
            TabOrder = 0
            TitleLinesCount = 2
            Totals.BoxStyle = cbAutoGray
            OnCellClick = DBGrid1CellClick
            OnColEnter = DBGrid1ColEnter
            OnDblClick = DBGrid1DblClick
            OnDrawColumnCell = DBGrid1DrawColumnCell
            OnEditButtonClick = DBGrid1EditButtonClick
            OnEnter = DBGrid1Enter
            OnKeyDown = DBGrid1KeyDown
            OnKeyPress = DBGrid1KeyPress
            OnTotalsUpdated = DBGrid1TotalsUpdated
            Columns = <
              item
                ButtonStyle = cbsNone
                Expanded = False
                FieldName = 'CODIGO_PRODUTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Visible = True
                Width = 94
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO_PRODUTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o dos Produtos'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                TotalFooter.Alignment = taRightJustify
                TotalFooter.Font.Charset = DEFAULT_CHARSET
                TotalFooter.Font.Color = clWindowText
                TotalFooter.Font.Height = -13
                TotalFooter.Font.Name = 'Tahoma'
                TotalFooter.Font.Style = [fsBold]
                TotalFooter.Caption = 'Valores Totais'
                Visible = True
                Width = 307
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Qtde'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                TotalFooter.Font.Charset = DEFAULT_CHARSET
                TotalFooter.Font.Color = clWindowText
                TotalFooter.Font.Height = -13
                TotalFooter.Font.Name = 'Tahoma'
                TotalFooter.Font.Style = [fsBold]
                TotalFooter.Format = '%.0n'
                TotalFooter.TotalResult = trCalcValue
                Visible = True
                Width = 80
              end
              item
                Expanded = False
                FieldName = 'PRECO_UNITARIO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Vlr Unit'#225'rio'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                TotalFooter.Font.Charset = DEFAULT_CHARSET
                TotalFooter.Font.Color = clWindowText
                TotalFooter.Font.Height = -13
                TotalFooter.Font.Name = 'Tahoma'
                TotalFooter.Font.Style = [fsBold]
                TotalFooter.Format = '%f'
                TotalFooter.TotalResult = trCalcValue
                Visible = True
                Width = 94
              end
              item
                Expanded = False
                FieldName = 'DESCONTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ReadOnly = True
                Title.Caption = 'Desconto %'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                TotalFooter.Font.Charset = DEFAULT_CHARSET
                TotalFooter.Font.Color = clWindowText
                TotalFooter.Font.Height = -13
                TotalFooter.Font.Name = 'Tahoma'
                TotalFooter.Font.Style = [fsBold]
                TotalFooter.Format = '%n'
                TotalFooter.TotalResult = trCalcValue
                Visible = True
                Width = 85
              end
              item
                Expanded = False
                FieldName = 'PRECO_TOTAL'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ReadOnly = True
                Title.Caption = 'Valor Total'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                TotalFooter.Font.Charset = DEFAULT_CHARSET
                TotalFooter.Font.Color = clWindowText
                TotalFooter.Font.Height = -13
                TotalFooter.Font.Name = 'Tahoma'
                TotalFooter.Font.Style = [fsBold]
                TotalFooter.Format = '%f'
                TotalFooter.TotalResult = trCalcValue
                Visible = True
                Width = 98
              end
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'VENDEDOR'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Vendedor'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Visible = True
                Width = 56
              end
              item
                Expanded = False
                FieldName = 'CODIGO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ReadOnly = True
                Visible = False
                Width = 59
              end
              item
                Expanded = False
                FieldName = 'ITEN'
                Title.Caption = 'Iten'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
                Width = 35
              end>
          end
          object ComboEdit2: TRxDBComboEdit
            Left = 24
            Top = 55
            Width = 95
            Height = 21
            CharCase = ecUpperCase
            ClickKey = 113
            GlyphKind = gkEllipsis
            NumGlyphs = 1
            TabOrder = 1
            Visible = False
            OnButtonClick = ComboEdit2ButtonClick
            OnChange = ComboEdit2Change
            OnClick = ComboEdit2Click
            OnEnter = ComboEdit2Enter
            OnExit = ComboEdit2Exit
            OnKeyDown = ComboEdit2KeyDown
            OnKeyPress = ComboEdit2KeyPress
          end
        end
      end
      object TVendas: TRzTabSheet
        ImageIndex = 18
        Caption = 'Vendas'
        object Panel2: TsPanel
          Left = 0
          Top = 0
          Width = 904
          Height = 34
          Align = alTop
          TabOrder = 0
          object myLabel3d1: TsLabelFX
            Left = 8
            Top = 3
            Width = 302
            Height = 33
            Caption = 'M '#211' D U L O  DE  V E N D A S'
            Color = clBtnFace
            ParentColor = False
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Angle = 0
            Shadow.OffsetKeeper.LeftTop = -3
            Shadow.OffsetKeeper.RightBottom = 5
          end
          object RxLabel25: TsLabel
            Left = 369
            Top = 11
            Width = 48
            Height = 13
            Caption = 'Estoque:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object BitBtn3: TAdvGlowButton
            Left = 586
            Top = 1
            Width = 90
            Height = 30
            Caption = '&Hist. Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 27
            Images = FormPrincipal.sAlphaImageList3
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn3Click
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
            Appearance.SystemFont = False
          end
          object BitBtn2: TAdvGlowButton
            Left = 695
            Top = 1
            Width = 82
            Height = 30
            Caption = '&Faltas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 7
            Images = FormPrincipal.sAlphaImageList3
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 1
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
            Appearance.SystemFont = False
          end
          object BitBtn1: TAdvGlowButton
            Left = 792
            Top = 1
            Width = 82
            Height = 30
            Caption = 'Rece&ber'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 29
            Images = FormPrincipal.sAlphaImageList3
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = BitBtn1Click
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
            Appearance.SystemFont = False
          end
          object suiDBEdit1: TsDBEdit
            Left = 423
            Top = 3
            Width = 99
            Height = 26
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'ESTOQUE'
            DataSource = DM.Dts_produtos_c
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
        end
        object Groupbox2: TsPanel
          Left = 0
          Top = 103
          Width = 904
          Height = 338
          Align = alClient
          TabOrder = 1
          object Label7: TsLabelFX
            Left = 1
            Top = 1
            Width = 902
            Height = 19
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '[ I T E N S   DA   V E N D A ]'
            Color = clHotLight
            ParentColor = False
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Angle = 0
            Shadow.OffsetKeeper.LeftTop = -3
            Shadow.OffsetKeeper.RightBottom = 5
            ExplicitWidth = 808
          end
          object dbgrid: TXDBGrid
            Left = 1
            Top = 20
            Width = 902
            Height = 317
            TabStop = False
            Align = alClient
            Ctl3D = True
            Ctl3DAuto = False
            DataSource = Dts_pedidos_itens
            EditorColor = clYellow
            FocusRect = frDefault
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clInactiveCaptionText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Gradient.Direction = gdHorizontal
            GridStyle.VisualStyle = vsXPStyle
            HeaderColor = clMoneyGreen
            HotButtons = hbNone
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgMarkerAutoAlign, dgMarkerAutoToggle, dgForceSequence, dgThumbTracking, dgRightMoving]
            OptionsEx = [dgBlankRow, dgTotalFooter, dgTotalHeaderBox, dgTotalValuesBox, dgTotalFieldsBox, dgTotalFooterBox, dgAutoUpdateSequence, dgDelayUpdateSequence, dgAutoUpdateTotals, dgDelayUpdateTotals, dgCalcWholeDataSet, dgCalcSelectedRows, dgDelaySelectedRows, dgSelectedAutoHidden]
            ParentCtl3D = False
            ParentFont = False
            PopupMenu = PopupMenu2
            ScrollProp.AutoHidden = ssBoth
            TabOrder = 1
            TitleLinesCount = 2
            Totals.BoxStyle = cbDefault
            OnCellClick = dbgridCellClick
            OnColEnter = dbgridColEnter
            OnColExit = dbgridColExit
            OnDrawColumnCell = dbgridDrawColumnCell
            OnEditButtonClick = dbgridEditButtonClick
            OnEnter = dbgridEnter
            OnExit = dbgridExit
            OnKeyDown = dbgridKeyDown
            OnKeyPress = ww
            OnOrderChanged = dbgridOrderChanged
            OnTotalsUpdated = dbgridTotalsUpdated
            Columns = <
              item
                Expanded = False
                FieldName = 'CODIGO_PRODUTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Visible = True
                Width = 94
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO_PRODUTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o dos Produtos'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                TotalFooter.Alignment = taRightJustify
                TotalFooter.Font.Charset = DEFAULT_CHARSET
                TotalFooter.Font.Color = clWindowText
                TotalFooter.Font.Height = -13
                TotalFooter.Font.Name = 'Tahoma'
                TotalFooter.Font.Style = [fsBold]
                TotalFooter.Caption = 'Valores Totais'
                Visible = True
                Width = 295
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Qtde'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                TotalFields.Font.Charset = DEFAULT_CHARSET
                TotalFields.Font.Color = clWindowText
                TotalFields.Font.Height = -13
                TotalFields.Font.Name = 'Tahoma'
                TotalFields.Font.Style = []
                TotalFooter.Font.Charset = DEFAULT_CHARSET
                TotalFooter.Font.Color = clWindowText
                TotalFooter.Font.Height = -13
                TotalFooter.Font.Name = 'tahoma'
                TotalFooter.Font.Style = [fsBold]
                TotalFooter.Format = '%d'
                TotalFooter.TotalResult = trCalcValue
                Visible = True
                Width = 52
              end
              item
                Expanded = False
                FieldName = 'PRECO_UNITARIO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Valor Unit.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                TotalFooter.Font.Charset = DEFAULT_CHARSET
                TotalFooter.Font.Color = clWindowText
                TotalFooter.Font.Height = -13
                TotalFooter.Font.Name = 'tahoma'
                TotalFooter.Font.Style = [fsBold]
                TotalFooter.Format = '%f'
                TotalFooter.TotalResult = trCalcValue
                Visible = True
                Width = 101
              end
              item
                Expanded = False
                FieldName = 'DESCONTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Desconto'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                TotalFooter.Font.Charset = DEFAULT_CHARSET
                TotalFooter.Font.Color = clWindowText
                TotalFooter.Font.Height = -13
                TotalFooter.Font.Name = 'tahoma'
                TotalFooter.Font.Style = [fsBold]
                TotalFooter.Format = '%f'
                TotalFooter.TotalResult = trCalcValue
                Visible = True
                Width = 79
              end
              item
                Expanded = False
                FieldName = 'preco_total'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Total'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                TotalFooter.Font.Charset = DEFAULT_CHARSET
                TotalFooter.Font.Color = clWindowText
                TotalFooter.Font.Height = -13
                TotalFooter.Font.Name = 'tahoma'
                TotalFooter.Font.Style = [fsBold]
                TotalFooter.Format = '%f'
                TotalFooter.FormatAsFloat = True
                TotalFooter.TotalResult = trCalcValue
                TotalHeader.Font.Charset = DEFAULT_CHARSET
                TotalHeader.Font.Color = clWindowText
                TotalHeader.Font.Height = -11
                TotalHeader.Font.Name = 'Tahoma'
                TotalHeader.Font.Style = [fsBold]
                TotalHeader.Caption = 'Total Geral'
                Visible = True
                Width = 112
              end
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'VENDEDOR'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Vend.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Visible = True
                Width = 41
              end
              item
                Expanded = False
                FieldName = 'CODIGO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Seq'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Title.Marker = tmAscend
                Title.MarkerIndex = 2
                Visible = True
                Width = 42
              end
              item
                AutoNumber = True
                Expanded = False
                FieldName = 'ITEN'
                Title.Caption = 'Iten'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Title.Marker = tmAscend
                Title.MarkerIndex = 4
                Visible = True
                Width = 35
              end>
            OrderFields = 'CODIGO,ITEN'
          end
          object ComboEdit1: TRxDBComboEdit
            Left = 25
            Top = 59
            Width = 97
            Height = 21
            CharCase = ecUpperCase
            ClickKey = 113
            GlyphKind = gkEllipsis
            NumGlyphs = 1
            TabOrder = 0
            Visible = False
            OnButtonClick = ComboEdit1ButtonClick
            OnChange = ComboEdit1Change
            OnClick = ComboEdit1Click
            OnEnter = ComboEdit1Enter
            OnExit = ComboEdit1Exit
            OnKeyDown = ComboEdit1KeyDown
            OnKeyPress = ComboEdit1KeyPress
          end
          object Panel3: TsPanel
            Left = 223
            Top = 74
            Width = 497
            Height = 161
            BevelInner = bvLowered
            BevelWidth = 4
            BorderWidth = 2
            BorderStyle = bsSingle
            TabOrder = 2
            Visible = False
            object GroupBox4: TsGroupBox
              Left = 10
              Top = 10
              Width = 473
              Height = 137
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
                473
                137)
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
                Width = 86
                Height = 21
                TabStop = False
                Anchors = [akLeft, akTop, akRight, akBottom]
                DataField = 'NUM_NOTA'
                DataSource = Dts_pedidos
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
                DataSource = Dts_pedidos
                DataField = 'CFOP'
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
                Left = 200
                Top = 101
                Width = 75
                Height = 29
                Caption = '&Ok'
                ImageIndex = 45
                Images = FormPrincipal.sAlphaImageList1
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
              object Edit1: TsEdit
                Left = 96
                Top = 72
                Width = 369
                Height = 21
                TabStop = False
                ReadOnly = True
                TabOrder = 4
                OnChange = Edit1Change
                BoundLabel.Font.Charset = DEFAULT_CHARSET
                BoundLabel.Font.Color = clWindowText
                BoundLabel.Font.Height = -11
                BoundLabel.Font.Name = 'MS Sans Serif'
                BoundLabel.Font.Style = []
                BoundLabel.ParentFont = False
              end
              object Edit4: TsEdit
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
                DataSource = Dts_pedidos
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
                OnButtonClick = EvDBEditBtn1BtnClick
              end
            end
          end
          object CheckBox3: TCheckBox
            Left = 619
            Top = 1
            Width = 185
            Height = 17
            Caption = 'Mercadoria Destinada a Revenda'
            TabOrder = 3
          end
        end
        object GroupBox3: TsGroupBox
          Left = 0
          Top = 441
          Width = 904
          Height = 41
          Align = alBottom
          TabOrder = 2
          object Shape1: TShape
            Left = 720
            Top = 6
            Width = 158
            Height = 34
            Brush.Color = clBlack
            Pen.Color = clSilver
            Pen.Width = 3
            Shape = stRoundRect
          end
          object RxLabel11: TsLabel
            Left = 247
            Top = 14
            Width = 79
            Height = 16
            Caption = 'Valor Bruto:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object RxLabel2: TsLabel
            Left = 679
            Top = 14
            Width = 41
            Height = 16
            Caption = 'Total :'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object RxLabel21: TsLabel
            Left = 477
            Top = 14
            Width = 73
            Height = 16
            Caption = 'Descontos:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Edit62: TCurrencyEdit
            Left = 728
            Top = 10
            Width = 143
            Height = 29
            AutoSize = False
            BorderStyle = bsNone
            Color = clBlack
            Ctl3D = False
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindow
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object edit60: TCurrencyEdit
            Left = 329
            Top = 10
            Width = 130
            Height = 29
            AutoSize = False
            BorderStyle = bsNone
            CheckOnExit = True
            Color = clActiveCaption
            Ctl3D = False
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindow
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnExit = E_DescontoExit
          end
          object E_desconto: TCurrencyEdit
            Left = 552
            Top = 9
            Width = 124
            Height = 30
            AutoSize = False
            BeepOnError = False
            BorderStyle = bsNone
            CheckOnExit = True
            Color = clActiveCaption
            Ctl3D = False
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindow
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            OnExit = E_DescontoExit
          end
          object CheckBox4: TCheckBox
            Left = 8
            Top = 16
            Width = 97
            Height = 17
            Caption = '&Venda'
            TabOrder = 3
            OnClick = CheckBox4Click
          end
          object CheckBox5: TCheckBox
            Left = 88
            Top = 16
            Width = 97
            Height = 17
            Caption = '&Pr'#233'-Venda'
            TabOrder = 4
            OnClick = CheckBox5Click
          end
        end
        object GroupBox5: TsGroupBox
          Left = 0
          Top = 482
          Width = 904
          Height = 50
          Align = alBottom
          TabOrder = 3
          object Edit3: TEdit
            Left = 607
            Top = 16
            Width = 57
            Height = 21
            TabOrder = 5
          end
          object Inserir: TAdvGlowButton
            Left = 229
            Top = 7
            Width = 130
            Height = 40
            Hint = 'Inserir um nova venda'
            Caption = 'Inserir - F3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 0
            Images = FormPrincipal.sAlphaImageList2
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = InserirClick
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
          object cancelar: TAdvGlowButton
            Left = 405
            Top = 6
            Width = 130
            Height = 40
            Hint = 'Cancela a Venda - Dados ser'#227'o perdidos'
            Caption = 'Cancelar - F5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 2
            Images = FormPrincipal.sAlphaImageList2
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = cancelarClick
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
          object confirmar: TAdvGlowButton
            Left = 747
            Top = 6
            Width = 130
            Height = 40
            Hint = 'Finaliza venda e lan'#231'a dados do pagamento'
            Caption = 'Confirmar F10'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 10
            Images = FormPrincipal.sAlphaImageList2
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = confirmarClick
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
          object pesquisar: TAdvGlowButton
            Left = 576
            Top = 7
            Width = 130
            Height = 40
            Hint = 'Pesquisa vendas efetuadas'
            Caption = 'Pesquisar - F7'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 20
            Images = FormPrincipal.sAlphaImageList2
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = pesquisarClick
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
          object sBitBtn1: TAdvGlowButton
            Left = 3
            Top = 7
            Width = 150
            Height = 40
            Hint = 'Inserir um nova venda'
            Caption = 'Importar Venda - F4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 17
            Images = FormPrincipal.sAlphaImageList2
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 4
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
        object GroupBox1: TsPanel
          Left = 0
          Top = 34
          Width = 904
          Height = 69
          Align = alTop
          TabOrder = 4
          DesignSize = (
            904
            69)
          object RxLabel5: TsLabel
            Left = 2
            Top = 0
            Width = 54
            Height = 13
            Caption = 'N'#186' Venda:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object RxLabel4: TsLabel
            Left = 99
            Top = 32
            Width = 70
            Height = 13
            Caption = 'Observa'#231#227'o:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object RxLabel3: TsLabel
            Left = 191
            Top = 0
            Width = 129
            Height = 13
            Caption = 'Usu'#225'rio da Venda - F11'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object RxLabel20: TsLabel
            Left = 368
            Top = -1
            Width = 121
            Height = 13
            Caption = 'Dados do Cliente - F9:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object RxLabel18: TsLabel
            Left = 268
            Top = -225
            Width = 71
            Height = 13
            Caption = 'N'#186' do Venda:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object RxLabel17: TsLabel
            Left = 3
            Top = 31
            Width = 77
            Height = 13
            Caption = 'Data Entrega:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object RxLabel1: TsLabel
            Left = 98
            Top = 0
            Width = 65
            Height = 13
            Caption = 'Data Venda'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label2: TsLabel
            Left = 200
            Top = -17
            Width = 5
            Height = 16
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
          end
          object RxLabel12: TsLabel
            Left = 488
            Top = 32
            Width = 20
            Height = 13
            Caption = 'KM:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object sLabel1: TsLabel
            Left = 577
            Top = 33
            Width = 61
            Height = 13
            Caption = 'Over price:'
            ParentFont = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Usuario: TsDBEdit
            Left = 259
            Top = 13
            Width = 107
            Height = 21
            TabStop = False
            DataField = 'USUARIO'
            DataSource = Dts_pedidos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object suiButton2: TAdvGlowButton
            Left = 771
            Top = 11
            Width = 29
            Height = 24
            Hint = 'F12 - Lan'#231'a Cliente n'#227'o Cadastrado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 4
            Images = FormPrincipal.sAlphaImageList1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000000467414D410000AFC837058AE90000001974455874536F6674776172
              650041646F626520496D616765526561647971C9653C000002B94944415438CB
              8D905B48D3711CC5570F3DD4434F3DD80552B38434B21411039BB308518BE51C
              6A735BB9999A4D9D634DE77DDE683AFDEFA6E565E16595CEE630B325E88386A9
              D3A94B8BC03DA45B6FA162423A4F9B941A86F985C3971F3FCEE77B382400A4BD
              248E3ECE9E567B2DCEB79EC09CC67DAD89E7D11015E871E8CFFF9E665EF8498A
              B5D9DDB1D0E6869DAA4BF5ACDE17A081798C58E8F487AD97831FC395B0E982B1
              A03D058BDAF3FBBE00AAE8A39576732F16875458333FC3F27B15E6277AD05FEC
              67DD17801A1EC39D69C9DC589AEC8063B6132B163DEC03048A12AEEAFE09E092
              BDD84A76E822C12043C5A2AC25D37DC70861EA4FBB8E8FAF5D85B01B723158FB
              001738E77B02043E47FE023083CF5094EC3047753C193BD528E3415E27418522
              17F95201BA3EB6A0A4BF08BE79E73417F9670F6F0164F44B834F926FA1B3E01E
              66DAC468E5D3403028A84D0A4393590CF5B81055A60C949B32D1FEA901E9FA34
              042507A8B6000ABA67FB977EEDAEC2B4D964C8C61FA1C22440F1683A72465320
              FA9002B68A853955D4FF0BAB288E866242847CC37DA4ABE3C0ADBA89B8D25050
              25D7607B1AB10D3878B946A410A5ED2ACC8796056E5D0C0ADBD9E8B62861B619
              217B9702BACC170CA1F7EB4DF381E0E78954BE6979E01B50FA5287DC462D0484
              06F523AB1028E6115F727DBD6BBA1A5D33045C23EDE340D69784C054B755927B
              782D8DC6EB5E31CC3A209901382340C20010D30DD0B500310444E4F8A1C7528F
              9D639852BA00204D49FCD7C73AE4E0BFB283D90B30F51B88D76E80A67120520D
              44CA1DB8F2F0341E1BEFA2CCC8DA3497BD656D27B0D684D83A4A32109B370CAE
              1160BF7126D0030C0370C795A27C0EB1BC28DC967AA3D298B879D9B55D6F2740
              4AFADC9C14D45344CD0EA4B5E8FDD34741CE9B726A1A64F12442B24DF0BCF1C2
              2ACF4A2C48107A1B9C862557ECDFBBDCD5DF2FE664AA2F4E1AD9560000000049
              454E44AE426082}
            TabOrder = 6
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
          object RbPreco2: TsRadioButton
            Left = 744
            Top = 47
            Width = 73
            Height = 17
            Caption = 'P&re'#231'os(2)'
            TabOrder = 7
            TabStop = True
            OnExit = RbPreco2Exit
          end
          object RbPreco1: TsRadioButton
            Left = 664
            Top = 46
            Width = 76
            Height = 17
            Caption = '&Pre'#231'os (1)'
            TabOrder = 8
            OnExit = RbPreco1Exit
          end
          object N_venda: TsDBEdit
            Left = 1
            Top = 13
            Width = 72
            Height = 21
            TabStop = False
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataField = 'CODIGO'
            DataSource = Dts_pedidos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMenuHighlight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object dt_venda: TsDBDateEdit
            Left = 98
            Top = 13
            Width = 87
            Height = 21
            AutoSize = False
            MaxLength = 10
            TabOrder = 10
            OnEnter = dt_vendaEnter
            OnExit = dt_vendaExit
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
            DataField = 'DATA_PEDIDO'
            DataSource = Dts_pedidos
          end
          object dt_entrega: TsDBDateEdit
            Left = 1
            Top = 46
            Width = 93
            Height = 21
            AutoSize = False
            MaxLength = 10
            TabOrder = 2
            OnEnter = dt_entregaEnter
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
            DataField = 'DATA_ENTREGA'
            DataSource = Dts_pedidos
          end
          object Desc_cliente: TsDBEdit
            Left = 488
            Top = 13
            Width = 281
            Height = 21
            TabStop = False
            DataField = 'NOME_CLIENTE'
            DataSource = Dts_pedidos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit4: TsDBEdit
            Left = 97
            Top = 46
            Width = 352
            Height = 21
            DataField = 'OBSERVACOES'
            DataSource = Dts_pedidos
            TabOrder = 3
            OnEnter = DBEdit4Enter
            OnExit = DBEdit4Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBComboCliente: TComboEdit
            Left = 371
            Top = 13
            Width = 110
            Height = 21
            Alignment = taCenter
            CharCase = ecUpperCase
            ClickKey = 120
            Ctl3D = True
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
            TabOrder = 1
            Text = ''
            OnButtonClick = DBComboClienteButtonClick
            OnChange = DBComboClienteChange
            OnEnter = DBComboClienteEnter
            OnExit = DBComboClienteExit
            OnKeyPress = DBComboClienteKeyPress
          end
          object CodUsuario: TRzDBButtonEdit
            Left = 192
            Top = 13
            Width = 66
            Height = 21
            DataSource = Dts_pedidos
            DataField = 'COD_VENDEDOR'
            CharCase = ecUpperCase
            TabOrder = 0
            OnEnter = CodUsuarioEnter
            OnExit = CodUsuarioExit
            OnKeyPress = CodUsuarioKeyPress
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
            ButtonShortCut = 122
            AltBtnWidth = 15
            ButtonWidth = 15
            OnButtonClick = CodUsuarioButtonClick
          end
          object DBEdit1: TsDBEdit
            Left = 488
            Top = 46
            Width = 64
            Height = 21
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataField = 'km'
            DataSource = Dts_pedidos
            TabOrder = 4
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object suiNOTA: TAdvGlowButton
            Left = 451
            Top = 39
            Width = 33
            Height = 28
            Hint = 'Dados da Nota Mod 01'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 107
            Images = FormPrincipal.sAlphaImageList1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 12
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
          object EditN1: TCurrencyEdit
            Left = 277
            Top = -1
            Width = 172
            Height = 38
            AutoSize = False
            BeepOnError = False
            BorderStyle = bsNone
            Color = clInfoBk
            DecimalPlaces = 3
            DisplayFormat = ',0.000;-,0.000'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 13
            Visible = False
          end
          object Edit5: TCurrencyEdit
            Left = 576
            Top = 46
            Width = 57
            Height = 21
            AutoSize = False
            DisplayFormat = '% ,0.00;-% ,0.00'
            TabOrder = 14
          end
          object sBitBtn2: TAdvGlowButton
            Left = 635
            Top = 43
            Width = 29
            Height = 24
            Hint = 'Aumento de Pre'#231'o +'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 4
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000000467414D410000AFC837058AE90000001974455874536F6674776172
              650041646F626520496D616765526561647971C9653C000001EC4944415438CB
              B593E94E5A511485790EDEC03844ABD6460D4E11A74A89888A13E83558B9429D
              D180182F104469456D4144101C3040D4B4891D8CA938A2D2B425DAF6BE0C59DE
              4034318A1A1B7F9C5F67AF6F9DBDCEDE2C00ACFF39AC2701280204D9B92DA13B
              BE3543BAD900E2631D2D5E1392F702BAF6DAD88A9DD690E1580DF799053EDA85
              D5BF4ED87E9A31B8D585BAA557A1EA850A765C809C119B4E29F8693716CF6DF0
              FC99C7F2B91DF6DFD370862D18FADA0DBEAD24742B40FEBD95D40755F0FE8BB9
              BAC2568C0694D06CF7C3FAE31DECBF6630CBBCA4C3DF8292C97CF20640B625A6
              1DE1F78CAB235ADCE41344441E3E55E3AEA4AAE6CB23E613234CC77AE802C328
              32E6D23700D2CF8D203E892059AF41A35700D10A5F7979C7B372A9371BED983C
              198B4238BA17B8F71B85AE97574565538594CC4F603CA8C5D821856C4DC6DD00
              2669F0E74A111317788A4D9C886E570DCDAE12CA2FDD783E944AC705089C15E8
              5C27F0DA2741A9391F2D4BF5301C8E427FA001B5A746B58587677DC9E4AD0081
              A31CB23582E9D58089A01EC6230A868311A877FA19B10A0D0E21D27A934271E7
              8037CB85D42BC6C49136E6BA1F73EDDB94A3EA4365549CAC4860DF39CADCB779
              6876D7A2DE2944CE4826B25469481F48394BED49241FBC0B1C6DD6B5A41FB58D
              4CD20F025C00F469BB39C5D41F150000000049454E44AE426082}
            TabOrder = 15
            OnClick = sBitBtn2Click
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
    end
  end
  object Edit2: TsEdit
    Left = 576
    Top = 183
    Width = 97
    Height = 21
    TabOrder = 0
    Visible = False
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
  end
  object RvRenderPDF1: TRvRenderPDF
    DisplayName = 'FDobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    DocInfo.Creator = 'Rave (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    Left = 55
    Top = 26
  end
  object RvRenderHTML1: TRvRenderHTML
    DisplayName = 'Web Page (HTML)'
    FileExtension = '*.html;*.htm'
    ServerMode = False
    UseBreakingSpaces = False
    Left = 268
    Top = 26
  end
  object RvRenderRTF1: TRvRenderRTF
    DisplayName = 'Rich Text Format (RTF)'
    FileExtension = '*.rtf'
    Left = 144
    Top = 38
  end
  object RvRenderText1: TRvRenderText
    DisplayName = 'Plain Text (TXT)'
    FileExtension = '*.txt'
    CPI = 10.000000000000000000
    LPI = 6.000000000000000000
    Left = 24
    Top = 25
  end
  object SPC_CODORC: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'INSERECOD_ORCAMENTOS'
    Left = 336
    Top = 30
  end
  object SPC_ITENS: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'INSERECOD_ORCAMENTOS_ITENS'
    Left = 304
    Top = 31
  end
  object PopupMenu1: TPopupMenu
    Left = 261
    Top = 150
    object ApagaRegistro1: TMenuItem
      Caption = 'Apaga Registro'
      OnClick = ApagaRegistro1Click
    end
    object E1: TMenuItem
      Caption = 'Excluir com Leitor CCD'
      OnClick = E1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 298
    Top = 151
    object MenuItem1: TMenuItem
      Caption = 'Apaga Registro'
      OnClick = MenuItem1Click
    end
  end
  object ActionList1: TActionList
    Left = 324
    Top = 152
  end
  object SPC_ORC_ITENS: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_PROD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CODIGO_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DESCRICAO_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'PRECO_UNITARIO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'QUANTIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'PRECO_TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'COMISSAO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'ENC_FINANCEIRO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VENDEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SIT_TRIBUTARIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FRACAO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'COD_NCM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PROD_SERV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEN'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_ORCAMENTO_ITENS'
    Left = 349
    Top = 23
  end
  object SPC_DELETE_ITENS: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_ID'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_PEDIDOS_ITENS_DEL'
    Left = 197
    Top = 106
  end
  object SPC_MOV_D_DEL: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_VENDA'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_MOVIMENTTO_DIARIO_DEL'
    Left = 141
    Top = 100
  end
  object SPC_CREDIARIO_DEL: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_COMPRA'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CREDIARIO_DEL'
    Left = 72
    Top = 127
  end
  object SPC_DELETE_ORC_ITENS: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_ID'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_ORCAMENTO_ITENS_DEL'
    Left = 205
    Top = 104
  end
  object Dts_pedidos_itens: TDataSource
    DataSet = sds_pedidos_itens
    Left = 573
    Top = 312
  end
  object Dts_pedidos: TDataSource
    DataSet = Sds_pedidos
    Left = 181
    Top = 352
  end
  object dts_orcamentos: TDataSource
    DataSet = Sds_orcamentos
    Left = 109
    Top = 216
  end
  object Dts_orcamentos_itens: TDataSource
    DataSet = SDS_Orcamentos_itens
    Left = 117
    Top = 264
  end
  object SPC_ORCAMENTO: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        Name = 'VALOR_ITENS'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        Name = 'VALOR_TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        Name = 'VALOR_COMISSAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 50
        Name = 'NOME_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 35
        Name = 'PAGAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        Name = 'ENC_FINANCEIRO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 150
        Name = 'OBSERVACOES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'COD_VENDEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'COD_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'COD_PAGTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 40
        Name = 'ENDERECO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'CIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 15
        Name = 'FONE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'BAIRRO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'CPF_CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 15
        Name = 'RG_IE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 1
        Name = 'EXPORTADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 2
        Name = 'UF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 7
        Name = 'COD_IBGE'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 15
        Name = 'CEP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 6
        Name = 'NUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 1
        Name = 'PRODUTOR'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 15
        Name = 'IE_PRODUTOR'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 1
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 1
        Name = 'STATUS'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_NOVO_ORCAMENTO'
    Left = 354
    Top = 55
  end
  object SPC_ORCAMENTOS_DEL: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ORC'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_ORCAMENTO_DEL'
    Left = 229
    Top = 16
  end
  object sds_parcelas: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from ORCAMENTOS_PARCELAS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 329
    Top = 378
    object sds_parcelasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sds_parcelasID_ORCAMENTO: TIntegerField
      FieldName = 'ID_ORCAMENTO'
      Required = True
    end
    object sds_parcelasDESC_COND_PGTO: TStringField
      FieldName = 'DESC_COND_PGTO'
      Size = 50
    end
    object sds_parcelasQUANT_PARCELAS: TStringField
      FieldName = 'QUANT_PARCELAS'
      Size = 3
    end
    object sds_parcelasVALOR_PARC: TFMTBCDField
      FieldName = 'VALOR_PARC'
      Precision = 15
      Size = 2
    end
    object sds_parcelasPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 4
    end
    object sds_parcelasDATA_VENC: TDateField
      FieldName = 'DATA_VENC'
    end
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
    OpcoesPreview.CaptionPreview = 'Pr'#233' Visualiza'#231#227'o do Or'#231'amento'
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
    TitulodoRelatorio = 'Or'#231'amento'
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
    Left = 387
    Top = 152
  end
  object sds_pagto: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from PEDIDOS_FORMAS_PAGAMENTO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'COD_VENDA'
    MasterFields = 'CODIGO'
    MasterSource = Dts_pedidos
    PacketRecords = 0
    Params = <>
    Left = 404
    Top = 379
    object sds_pagtoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object sds_pagtoCOD_FORMA: TIntegerField
      FieldName = 'COD_FORMA'
    end
    object sds_pagtoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object sds_pagtoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sds_pagtoDESC_FORMA: TStringField
      FieldName = 'DESC_FORMA'
      Size = 40
    end
  end
  object QBuscaItens: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'SELECT P.CODIGO, P.DESCRICAO, P.ICMS, G.PERC_ALIQUOTA_IPI, G.PER' +
        'C_ICMS_ESTADUAL, G.PERC_ICMS_INTER_ESTADUAL, G.FLAG_ICMS, P.IPI_' +
        'IRPJ, P.OUTROS_IMPOSTOS, P.ESTOQUE, P.ESTOQUE_FRACAO,'
      
        'G.PERC_ALIQUOTA_PIS, G.PERC_ALIQUOTA_COFINS, G.FLAG_PIS_COFINS, ' +
        'G.FLAG_SUBSTITUICAO_TRIB, g.PERC_LUCRO_ST, G.PERC_SUBST_TRIBUTAR' +
        'IA, G.FLAG_FABRICACAO_PROPRIA, G.FLAG_SERVICO, G.PERC_ALIQUOTA_I' +
        'SS'
      'FROM PRODUTOS P'
      'INNER JOIN grupo_tributacao G'
      'ON (G.COD_GRUPO = P.GRUPO_TRIBUTACAO)'
      'WHERE CODIGO = :CODPRO')
    Left = 496
    Top = 224
    ParamData = <
      item
        Name = 'CODPRO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QBuscaItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object QBuscaItensICMS: TFMTBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ALIQUOTA_IPI: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ALIQUOTA_IPI'
      Origin = 'PERC_ALIQUOTA_IPI'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICMS_ESTADUAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ICMS_ESTADUAL'
      Origin = 'PERC_ICMS_ESTADUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICMS_INTER_ESTADUAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ICMS_INTER_ESTADUAL'
      Origin = 'PERC_ICMS_INTER_ESTADUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensFLAG_ICMS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FLAG_ICMS'
      Origin = 'FLAG_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
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
    object QBuscaItensESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
    end
    object QBuscaItensESTOQUE_FRACAO: TBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Origin = 'ESTOQUE_FRACAO'
      Precision = 18
    end
    object QBuscaItensPERC_ALIQUOTA_PIS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ALIQUOTA_PIS'
      Origin = 'PERC_ALIQUOTA_PIS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ALIQUOTA_COFINS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ALIQUOTA_COFINS'
      Origin = 'PERC_ALIQUOTA_COFINS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensFLAG_PIS_COFINS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FLAG_PIS_COFINS'
      Origin = 'FLAG_PIS_COFINS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItensFLAG_SUBSTITUICAO_TRIB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FLAG_SUBSTITUICAO_TRIB'
      Origin = 'FLAG_SUBSTITUICAO_TRIB'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItensPERC_LUCRO_ST: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_LUCRO_ST'
      Origin = 'PERC_LUCRO_ST'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_SUBST_TRIBUTARIA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_SUBST_TRIBUTARIA'
      Origin = 'PERC_SUBST_TRIBUTARIA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensFLAG_FABRICACAO_PROPRIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FLAG_FABRICACAO_PROPRIA'
      Origin = 'FLAG_FABRICACAO_PROPRIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItensFLAG_SERVICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FLAG_SERVICO'
      Origin = 'FLAG_SERVICO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItensPERC_ALIQUOTA_ISS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ALIQUOTA_ISS'
      Origin = 'PERC_ALIQUOTA_ISS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object DSQBuscaItens: TDataSource
    AutoEdit = False
    DataSet = QBuscaItens
    Left = 648
    Top = 224
  end
  object SQLVendas: TFDQuery
    Connection = DM.Coneccao
    Left = 736
    Top = 232
  end
  object sds_pagto_ch: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from PEDIDOS_CHEQUES_DIN'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'COD_VENDA'
    MasterFields = 'CODIGO'
    MasterSource = Dts_pedidos
    PacketRecords = 0
    Params = <>
    Left = 468
    Top = 380
    object sds_pagto_chCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object sds_pagto_chCOD_PAGTO: TStringField
      FieldName = 'COD_PAGTO'
      Size = 70
    end
    object sds_pagto_chVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object sds_pagto_chDATA: TDateField
      FieldName = 'DATA'
    end
    object sds_pagto_chPARC: TStringField
      FieldName = 'PARC'
      Size = 1
    end
    object sds_pagto_chCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = QBuscaItens1
    Left = 744
    Top = 280
  end
  object QBuscaItens1: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'SELECT I.*, P.ICMS, P.COD_ANP, P.COMBUSTIVEL,P.ESTOQUE, P.APLICA' +
        'CAO, P.IPI_IRPJ, P.OUTROS_IMPOSTOS, P.NCM_SH, P.QTD_CAIXA, P.UND' +
        '_TRIB, P.ML_QUANT_BEB, G.SIT_COFINS_VENDA_EST, G.SIT_PIS_VENDA_I' +
        'NTER_EST, G.SIT_COFINS_VENDA_INTER_EST,'
      
        'G.SIT_PIS_VENDA_EST, G.CST_IPI_SAIDA, G.CST_VENDA_INTER, G.PERC_' +
        'ALIQUOTA_PIS, G.PERC_ALIQUOTA_COFINS, G.CFOP_INTER_VENDA, G.FLAG' +
        '_PIS_COFINS, G.CFOP_EST_VENDA, G.CST_VENDA, GR.NCM_SH, GR.PERC_T' +
        'RIBU, GR.FONTE, ncm.alic_nac, ncm.alic_imp'
      'FROM PEDIDOS_ITENS I'
      'INNER JOIN PRODUTOS P'
      'ON (I.CODIGO_PROD = P.CODIGO)'
      'INNER JOIN grupo_tributacao G'
      'ON (G.COD_GRUPO = P.GRUPO_TRIBUTACAO)'
      'LEFT JOIN grupos GR'
      'ON (GR.CODIGO = P.CODIGO_GRUPO)'
      'left join tabela_ncm ncm on (ncm.codigo_ncm = p.ncm_sh)'
      'WHERE I.CODIGO_PROD = :CODPRO AND I.CODIGO_ID = :COD_VEN')
    Left = 576
    Top = 224
    ParamData = <
      item
        Name = 'CODPRO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD_VEN'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaItens1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaItens1CODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'CODIGO_ID'
      Required = True
    end
    object QBuscaItens1ITEN: TIntegerField
      FieldName = 'ITEN'
      Origin = 'ITEN'
    end
    object QBuscaItens1CODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Origin = 'CODIGO_PROD'
    end
    object QBuscaItens1CODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
      Size = 13
    end
    object QBuscaItens1DESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 70
    end
    object QBuscaItens1PRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Origin = 'PRECO_UNITARIO'
      Precision = 18
      Size = 3
    end
    object QBuscaItens1DESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1QUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object QBuscaItens1PRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      Origin = 'PRECO_TOTAL'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1COMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1DEV: TStringField
      FieldName = 'DEV'
      Origin = 'DEV'
      FixedChar = True
      Size = 1
    end
    object QBuscaItens1QNT_DEV: TBCDField
      FieldName = 'QNT_DEV'
      Origin = 'QNT_DEV'
      Precision = 18
    end
    object QBuscaItens1VAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Origin = 'VAL_DEV'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'ENC_FINANCEIRO'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1UNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object QBuscaItens1SIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object QBuscaItens1VENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
    object QBuscaItens1FRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object QBuscaItens1COD_NCM: TStringField
      FieldName = 'COD_NCM'
      Origin = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object QBuscaItens1PROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      Size = 1
    end
    object QBuscaItens1PERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Origin = 'PERC_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1BASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Origin = 'BASE_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Origin = 'VL_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Origin = 'PERC_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1BASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Origin = 'VL_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PERC_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1BASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1BASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Origin = 'PERC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1BASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'BASE_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Origin = 'VL_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PERC_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1BASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1IMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      Size = 3
    end
    object QBuscaItens1COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
    object QBuscaItens1ID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Origin = 'ID_BICO'
    end
    object QBuscaItens1ID_TANQUE: TStringField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Size = 5
    end
    object QBuscaItens1ID_BOMBA: TStringField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      Size = 5
    end
    object QBuscaItens1BICO: TStringField
      FieldName = 'BICO'
      Origin = 'BICO'
      Size = 2
    end
    object QBuscaItens1ICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS'
      Origin = 'ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1COD_ANP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_ANP'
      Origin = 'COD_ANP'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
    end
    object QBuscaItens1COMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItens1ESTOQUE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object QBuscaItens1APLICACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object QBuscaItens1IPI_IRPJ: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_IRPJ'
      Origin = 'IPI_IRPJ'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1OUTROS_IMPOSTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'OUTROS_IMPOSTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1NCM_SH: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object QBuscaItens1QTD_CAIXA: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'QTD_CAIXA'
      Origin = 'QTD_CAIXA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QBuscaItens1UND_TRIB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UND_TRIB'
      Origin = 'UND_TRIB'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QBuscaItens1ML_QUANT_BEB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ML_QUANT_BEB'
      Origin = 'ML_QUANT_BEB'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QBuscaItens1SIT_COFINS_VENDA_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_COFINS_VENDA_EST'
      Origin = 'SIT_COFINS_VENDA_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItens1SIT_PIS_VENDA_INTER_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_PIS_VENDA_INTER_EST'
      Origin = 'SIT_PIS_VENDA_INTER_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItens1SIT_COFINS_VENDA_INTER_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_COFINS_VENDA_INTER_EST'
      Origin = 'SIT_COFINS_VENDA_INTER_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItens1SIT_PIS_VENDA_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_PIS_VENDA_EST'
      Origin = 'SIT_PIS_VENDA_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItens1CST_IPI_SAIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_IPI_SAIDA'
      Origin = 'CST_IPI_SAIDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItens1CST_VENDA_INTER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_VENDA_INTER'
      Origin = 'CST_VENDA_INTER'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QBuscaItens1PERC_ALIQUOTA_PIS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ALIQUOTA_PIS'
      Origin = 'PERC_ALIQUOTA_PIS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_ALIQUOTA_COFINS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ALIQUOTA_COFINS'
      Origin = 'PERC_ALIQUOTA_COFINS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1CFOP_INTER_VENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_INTER_VENDA'
      Origin = 'CFOP_INTER_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItens1FLAG_PIS_COFINS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FLAG_PIS_COFINS'
      Origin = 'FLAG_PIS_COFINS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItens1CFOP_EST_VENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_EST_VENDA'
      Origin = 'CFOP_EST_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItens1CST_VENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_VENDA'
      Origin = 'CST_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QBuscaItens1NCM_SH_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM_SH_1'
      Origin = 'NCM_SH'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QBuscaItens1PERC_TRIBU: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_TRIBU'
      Origin = 'PERC_TRIBU'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1FONTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONTE'
      Origin = 'FONTE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object QBuscaItens1ALIC_NAC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIC_NAC'
      Origin = 'ALIC_NAC'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ALIC_IMP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIC_IMP'
      Origin = 'ALIC_IMP'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object QryBicoEnc_Temp: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from BICOENC_TEMP order by Registro')
    Left = 424
    Top = 216
    object QryBicoEnc_TempCOD_BICOENC_TEMP: TIntegerField
      FieldName = 'COD_BICOENC_TEMP'
      Origin = 'COD_BICOENC_TEMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryBicoEnc_TempID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      Required = True
    end
    object QryBicoEnc_TempREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
    end
    object QryBicoEnc_TempID_BICO: TStringField
      FieldName = 'ID_BICO'
      Origin = 'ID_BICO'
      Required = True
      Size = 2
    end
    object QryBicoEnc_TempCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
      Origin = 'COD_FRENTISTA'
    end
    object QryBicoEnc_TempID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = 'ID_PRODUTOS'
      Required = True
    end
    object QryBicoEnc_TempENC_LITROS: TFMTBCDField
      FieldName = 'ENC_LITROS'
      Origin = 'ENC_LITROS'
      Precision = 18
      Size = 3
    end
    object QryBicoEnc_TempENC_DINHEIRO: TFMTBCDField
      FieldName = 'ENC_DINHEIRO'
      Origin = 'ENC_DINHEIRO'
      Precision = 18
      Size = 3
    end
    object QryBicoEnc_TempPRODUTOS_DESC: TStringField
      FieldName = 'PRODUTOS_DESC'
      Origin = 'PRODUTOS_DESC'
      Size = 30
    end
    object QryBicoEnc_TempNIVEL_PRECO: TIntegerField
      FieldName = 'NIVEL_PRECO'
      Origin = 'NIVEL_PRECO'
      Required = True
    end
    object QryBicoEnc_TempDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      Precision = 18
      Size = 3
    end
    object QryBicoEnc_TempPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 3
    end
    object QryBicoEnc_TempDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
    end
    object QryBicoEnc_TempLITROS: TFMTBCDField
      FieldName = 'LITROS'
      Origin = 'LITROS'
      Precision = 18
      Size = 3
    end
    object QryBicoEnc_TempID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
    end
    object QryBicoEnc_TempUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 5
    end
    object QryBicoEnc_TempUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
    end
    object QryBicoEnc_TempCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'COD_USUARIO'
    end
    object QryBicoEnc_TempCHECK_BOX: TStringField
      FieldName = 'CHECK_BOX'
      Origin = 'CHECK_BOX'
      Size = 1
    end
  end
  object DtsQryBicoEnc_Temp: TDataSource
    DataSet = QryBicoEnc_Temp
    Left = 216
    Top = 256
  end
  object Sds_orcamentos: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 41
    Top = 215
    object Sds_orcamentosCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Sds_orcamentosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Sds_orcamentosNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object Sds_orcamentosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object Sds_orcamentosCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object Sds_orcamentosPRODUTOR: TStringField
      FieldName = 'PRODUTOR'
      Size = 1
    end
    object Sds_orcamentosIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      Size = 15
    end
    object Sds_orcamentosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_orcamentosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_orcamentosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_orcamentosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_orcamentosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_orcamentosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object Sds_orcamentosDATA: TDateField
      FieldName = 'DATA'
    end
    object Sds_orcamentosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object Sds_orcamentosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object Sds_orcamentosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object Sds_orcamentosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_orcamentosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object Sds_orcamentosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Sds_orcamentosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 150
    end
    object Sds_orcamentosCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object Sds_orcamentosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object Sds_orcamentosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object Sds_orcamentosFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object Sds_orcamentosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object Sds_orcamentosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object Sds_orcamentosRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
    object Sds_orcamentosEXPORTADO: TStringField
      FieldName = 'EXPORTADO'
      Size = 1
    end
    object Sds_orcamentosSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object SDS_Orcamentos_itens: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterSource = dts_orcamentos
    MasterFields = 'CODIGO'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 41
    Top = 263
    object SDS_Orcamentos_itensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_Orcamentos_itensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object SDS_Orcamentos_itensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object SDS_Orcamentos_itensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object SDS_Orcamentos_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object SDS_Orcamentos_itensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object SDS_Orcamentos_itensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object SDS_Orcamentos_itensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 6
    end
    object SDS_Orcamentos_itensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object SDS_Orcamentos_itensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_Orcamentos_itensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object SDS_Orcamentos_itensITEN: TIntegerField
      FieldName = 'ITEN'
    end
    object SDS_Orcamentos_itensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object SDS_Orcamentos_itensPRECO_TOTAL: TCurrencyField
      FieldName = 'PRECO_TOTAL'
    end
    object SDS_Orcamentos_itensPRECO_UNITARIO: TCurrencyField
      FieldName = 'PRECO_UNITARIO'
      DisplayFormat = '##,###0.000'
    end
    object SDS_Orcamentos_itensQUANTIDADE: TCurrencyField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '##,###0.000'
    end
    object SDS_Orcamentos_itensDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
    end
  end
  object Sds_pedidos: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    AggregatesActive = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 121
    Top = 343
    object Sds_pedidosVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Precision = 15
      Size = 2
    end
    object Sds_pedidosVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Precision = 15
      Size = 2
    end
    object Sds_pedidosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_pedidosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_pedidosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_pedidosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_pedidosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_pedidosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object Sds_pedidosDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object Sds_pedidosDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object Sds_pedidosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object Sds_pedidosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object Sds_pedidosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object Sds_pedidosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object Sds_pedidosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object Sds_pedidosUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object Sds_pedidosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_pedidosTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object Sds_pedidosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 250
    end
    object Sds_pedidosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object Sds_pedidosCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object Sds_pedidosN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object Sds_pedidosN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object Sds_pedidosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Sds_pedidosHORA: TTimeField
      FieldName = 'HORA'
    end
    object Sds_pedidosVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object Sds_pedidosCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object Sds_pedidosCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object Sds_pedidosCOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object Sds_pedidosNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object Sds_pedidosSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object Sds_pedidosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object Sds_pedidosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object Sds_pedidosRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
    end
    object Sds_pedidosFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object Sds_pedidosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object Sds_pedidosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Sds_pedidosN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Size = 15
    end
    object Sds_pedidosPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Size = 50
    end
    object Sds_pedidosQUANT_VENDIDA: TFMTBCDField
      FieldName = 'QUANT_VENDIDA'
      Precision = 15
    end
    object Sds_pedidosSALDO_VENDIDO: TFMTBCDField
      FieldName = 'SALDO_VENDIDO'
      Precision = 15
    end
    object Sds_pedidosMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Size = 50
    end
    object Sds_pedidosDATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
    end
    object Sds_pedidosVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_pedidosVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_pedidosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Sds_pedidosCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Sds_pedidosNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object Sds_pedidosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object Sds_pedidosCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object Sds_pedidosVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object Sds_pedidosVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      Precision = 15
      Size = 2
    end
    object Sds_pedidosENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Size = 40
    end
    object Sds_pedidosTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object Sds_pedidosFECHADO: TStringField
      FieldName = 'FECHADO'
      Size = 5
    end
    object Sds_pedidosMESA: TStringField
      FieldName = 'MESA'
      Size = 3
    end
    object Sds_pedidosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 50
    end
    object Sds_pedidosCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object Sds_pedidosPROD_RURAL: TStringField
      FieldName = 'PROD_RURAL'
      Size = 1
    end
    object Sds_pedidosIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      FixedChar = True
      Size = 15
    end
    object Sds_pedidossaldo_troco: TFMTBCDField
      FieldName = 'saldo_troco'
      Precision = 15
      Size = 2
    end
    object Sds_pedidosCHAVE_FP: TStringField
      FieldName = 'CHAVE_FP'
      Size = 100
    end
    object Sds_pedidosCHAVE_FP_CANCEL: TStringField
      FieldName = 'CHAVE_FP_CANCEL'
      Size = 30
    end
    object Sds_pedidoskm: TIntegerField
      FieldName = 'km'
    end
    object Sds_pedidosMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object Sds_pedidosCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object Sds_pedidosCOD_OS_AUTO: TIntegerField
      FieldName = 'COD_OS_AUTO'
    end
    object Sds_pedidosSOMAVALOR_TOTAL: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_TOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR_TOTAL)'
    end
    object Sds_pedidosCOUNT_VENDAS: TAggregateField
      Alignment = taCenter
      FieldName = 'COUNT_VENDAS'
      Active = True
      DisplayName = ''
      Expression = 'COUNT(CODIGO)'
    end
  end
  object sds_pedidos_itens: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterSource = Dts_pedidos
    MasterFields = 'CODIGO'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoIncFields = 'ITEN'
    StoreDefs = True
    Left = 497
    Top = 311
    object sds_pedidos_itensCODIGO_PRODUTO: TStringField
      DisplayWidth = 13
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object sds_pedidos_itensDESCRICAO_PRODUTO: TStringField
      DisplayWidth = 50
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object sds_pedidos_itenspreco_total: TCurrencyField
      FieldName = 'preco_total'
    end
    object sds_pedidos_itensCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
      Visible = False
    end
    object sds_pedidos_itensCOMISSAO: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'COMISSAO'
      Visible = False
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensDEV: TStringField
      DisplayWidth = 1
      FieldName = 'DEV'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object sds_pedidos_itensQNT_DEV: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'QNT_DEV'
      Visible = False
      Precision = 15
    end
    object sds_pedidos_itensVAL_DEV: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VAL_DEV'
      Visible = False
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensENC_FINANCEIRO: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'ENC_FINANCEIRO'
      Visible = False
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensUNIDADE: TStringField
      DisplayWidth = 6
      FieldName = 'UNIDADE'
      Visible = False
      Size = 6
    end
    object sds_pedidos_itensSIT_TRIBUTARIA: TStringField
      DisplayWidth = 5
      FieldName = 'SIT_TRIBUTARIA'
      Visible = False
      Size = 5
    end
    object Sds_Pedidos_itensCODIGO_PROD: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO_PROD'
      Required = True
      Visible = False
    end
    object sds_pedidos_itensCODIGO_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO_ID'
      Required = True
      Visible = False
    end
    object sds_pedidos_itensVENDEDOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'VENDEDOR'
      Visible = False
    end
    object sds_pedidos_itensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object sds_pedidos_itensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object sds_pedidos_itensITEN: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ITEN'
    end
    object sds_pedidos_itensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object sds_pedidos_itensPERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensPERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensPERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensBASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensVL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object sds_pedidos_itensPRECO_UNITARIO: TCurrencyField
      FieldName = 'PRECO_UNITARIO'
      DisplayFormat = '##,###0.00000'
    end
    object sds_pedidos_itensDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
    end
    object sds_pedidos_itensQUANTIDADE: TCurrencyField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '##,###0.000'
    end
    object sds_pedidos_itensCODIGO_BICO: TStringField
      FieldName = 'CODIGO_BICO'
    end
    object sds_pedidos_itensTANQUE: TStringField
      FieldName = 'TANQUE'
      Size = 5
    end
    object sds_pedidos_itensBOMBA: TStringField
      FieldName = 'BOMBA'
      Size = 5
    end
    object sds_pedidos_itensBICO: TStringField
      FieldName = 'BICO'
      Size = 2
    end
    object sds_pedidos_itensSOMAPRECO_UNITARIO: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAPRECO_UNITARIO'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(PRECO_UNITARIO)'
    end
    object sds_pedidos_itensSOMAPRECO_TOTAL: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAPRECO_TOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(PRECO_TOTAL)'
    end
  end
  object SPC_Codigo: TFDStoredProc
    Connection = DM.Coneccao
    StoredProcName = 'INSERECOD_PEDIDOS'
    Left = 400
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = 'ATUAL'
        DataType = ftInteger
        ParamType = ptOutput
        Value = 3560
      end>
    object SPC_CodigoATUAL: TIntegerField
      FieldName = 'ATUAL'
      Origin = 'ATUAL'
    end
  end
  object Qpromo: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'select preco_promocao from produtos where dt_inicio_promo <= :da' +
        'ta and dt_fim_promo >=:data and codigo =:cod_pro;')
    Left = 372
    Top = 222
    ParamData = <
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'COD_PRO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QpromoPRECO_PROMOCAO: TFMTBCDField
      FieldName = 'PRECO_PROMOCAO'
      Origin = 'PRECO_PROMOCAO'
      Precision = 18
      Size = 3
    end
  end
  object XDBColumnsDialog: TXDBColumnsDialog
    DBGrid = dbgrid
    Options = [coAllowMoving, coAutoUpdate, coHelpButton, coMarkVisibleCols, coShowEmptyCols, coShowFixedCols, coShowHeaders]
    Left = 824
    Top = 232
  end
end
