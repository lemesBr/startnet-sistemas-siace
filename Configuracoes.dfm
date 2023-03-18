object FormConfiguracoes: TFormConfiguracoes
  Left = 632
  Top = 371
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Par'#226'metros do Sistema'
  ClientHeight = 553
  ClientWidth = 912
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton3: TSpeedButton
    Left = 539
    Top = 285
    Width = 23
    Height = 21
    Caption = '...'
    NumGlyphs = 2
    Transparent = False
    OnClick = SpeedButton1Click
  end
  object Panel2: TPanel
    Left = 0
    Top = 503
    Width = 912
    Height = 50
    Align = alBottom
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 0
    object myLabel3d1: TsLabelFX
      Left = 3
      Top = 5
      Width = 332
      Height = 33
      Caption = 'CONFIGURAC'#213'ES DO SISTEMA'
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
    object btnSalvar: TAdvGlowButton
      Left = 767
      Top = 6
      Width = 100
      Height = 32
      Caption = 'F10 | Gravar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 10
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 0
      OnClick = btnSalvarClick
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
    object btnEditar: TAdvGlowButton
      Left = 540
      Top = 5
      Width = 100
      Height = 32
      Caption = 'F4 | Alterar'
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
      Transparent = True
      TabOrder = 1
      OnClick = btnEditarClick
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
    object btnCancelar: TAdvGlowButton
      Left = 655
      Top = 6
      Width = 100
      Height = 32
      Caption = 'F5 | Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 2
      OnClick = btnCancelarClick
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
    object AdvGlowButton1: TAdvGlowButton
      Left = 434
      Top = 5
      Width = 100
      Height = 32
      Caption = 'F4 | Inserir'
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
      Transparent = True
      TabOrder = 3
      OnClick = AdvGlowButton1Click
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
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 503
    Align = alClient
    Caption = 'Panel5'
    Enabled = False
    TabOrder = 1
    object RzPageControl1: TRzPageControl
      Left = 1
      Top = 1
      Width = 910
      Height = 501
      Hint = ''
      ActivePage = TabSheet1
      Align = alClient
      UseColoredTabs = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabIndex = 0
      TabOrder = 0
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Caption = 'Gerais (1)'
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 906
          Height = 478
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object RxLabel2: TRxLabel
            Left = 3
            Top = 29
            Width = 214
            Height = 13
            Caption = ' % de Juros por dia por atrazo no Credi'#225'rio:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel3: TRxLabel
            Left = 5
            Top = 97
            Width = 255
            Height = 13
            Caption = 'Desc. m'#225'ximo permitido ao finalizar vendas em ( R$) '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel4: TRxLabel
            Left = 5
            Top = 173
            Width = 206
            Height = 13
            Caption = 'N'#186' de dias para Cancelamento de Pedidos:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel5: TRxLabel
            Left = 5
            Top = 147
            Width = 231
            Height = 13
            Caption = 'N'#186' de dias para Devolu'#231#227'o de Itens de Pedidos:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel6: TRxLabel
            Left = 3
            Top = 73
            Width = 226
            Height = 13
            Caption = ' % de Juros por dia para Cheque  Pr'#233'-Datado:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel7: TRxLabel
            Left = 7
            Top = 6
            Width = 214
            Height = 13
            Caption = 'N'#186' de dias de car'#234'ncia no Credi'#225'rio Vencido:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel10: TRxLabel
            Left = 4
            Top = 52
            Width = 178
            Height = 13
            Caption = ' % de Multa por atrazo no Credi'#225'rio:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel11: TRxLabel
            Left = 5
            Top = 121
            Width = 253
            Height = 13
            Caption = 'Desc. m'#225'ximo permitido ao finalizar vendas em ( %) '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 8
            Top = 354
            Width = 126
            Height = 13
            Caption = 'Pasta de Local de Backup'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton6: TSpeedButton
            Left = 323
            Top = 369
            Width = 23
            Height = 21
            Caption = '...'
            Transparent = False
            OnClick = SpeedButton6Click
          end
          object RxLabel14: TRxLabel
            Left = 5
            Top = 198
            Width = 125
            Height = 13
            Caption = 'Margem de Lucro Padr'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object suiDBEdit2: TDBEdit
            Left = 315
            Top = 29
            Width = 80
            Height = 21
            DataField = 'JUROS'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = suiDBEdit2Enter
            OnExit = suiDBEdit2Exit
          end
          object suiDBEdit3: TDBEdit
            Left = 315
            Top = 96
            Width = 80
            Height = 21
            DataField = 'DESCONTO_MAXIMO_FV'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnEnter = suiDBEdit3Enter
            OnExit = suiDBEdit3Exit
          end
          object suiDBEdit4: TDBEdit
            Left = 315
            Top = 146
            Width = 80
            Height = 21
            DataField = 'DDIP'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnEnter = suiDBEdit2Enter
            OnExit = suiDBEdit2Exit
          end
          object suiDBEdit5: TDBEdit
            Left = 315
            Top = 173
            Width = 80
            Height = 21
            DataField = 'DCP'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnEnter = suiDBEdit3Enter
            OnExit = suiDBEdit3Exit
          end
          object suiDBEdit6: TDBEdit
            Left = 315
            Top = 73
            Width = 80
            Height = 21
            DataField = 'JUROS_CHEQUE'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnEnter = suiDBEdit3Enter
            OnExit = suiDBEdit3Exit
          end
          object suiDBEdit7: TDBEdit
            Left = 315
            Top = 6
            Width = 80
            Height = 21
            DataField = 'DIAS_CARENCIA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = suiDBEdit2Enter
            OnExit = suiDBEdit2Exit
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 409
            Top = 46
            Width = 236
            Height = 48
            Caption = 'Vendas Usa Caixa Registradora:'
            Columns = 2
            DataField = 'REGISTRADORA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 10
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup9: TDBRadioGroup
            Left = 6
            Top = 238
            Width = 640
            Height = 63
            Caption = 'Pesquisa Padr'#227'o na Consulta de Produtos'
            Columns = 4
            DataField = 'PESQ_PADRAO'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Inicio da descri'#231#227'o '
              'Qualq. parte descric'#227'o'
              'Por Codigo Barras'
              'Por Refer'#234'ncia'
              'Todos Campos'
              'C'#243'digo Interno')
            ParentFont = False
            TabOrder = 11
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '8'
              '4')
          end
          object DBRadioGroup12: TDBRadioGroup
            Left = 409
            Top = 1
            Width = 235
            Height = 45
            Caption = 'Pre'#231'o Padr'#227'o:'
            Columns = 2
            DataField = 'PRECO_PADRAO'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Pre'#231'o (1)'
              'Pre'#231'o (2)')
            ParentFont = False
            TabOrder = 9
            Values.Strings = (
              '1'
              '2')
          end
          object suiDBEdit8: TDBEdit
            Left = 315
            Top = 51
            Width = 80
            Height = 21
            DataField = 'MULTA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = suiDBEdit2Enter
            OnExit = suiDBEdit2Exit
          end
          object suiDBEdit9: TDBEdit
            Left = 315
            Top = 120
            Width = 80
            Height = 21
            DataField = 'DESC_MAXIMO_PERC'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnEnter = suiDBEdit3Enter
            OnExit = suiDBEdit3Exit
          end
          object DBEdit11: TDBEdit
            Left = 8
            Top = 370
            Width = 305
            Height = 21
            DataField = 'LOCAL_BACKUP'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
          end
          object DBRadioGroup33: TDBRadioGroup
            Left = 6
            Top = 303
            Width = 639
            Height = 48
            Caption = 'Tipo da Pesquisa:'
            Columns = 2
            DataField = 'TP_PESQUISA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Pesquisa Autom'#225'tica'
              'Pesquisa Com Enter')
            ParentFont = False
            TabOrder = 13
            Values.Strings = (
              'A'
              'E')
          end
          object DBRadioGroup34: TDBRadioGroup
            Left = 409
            Top = 95
            Width = 236
            Height = 48
            Caption = 'Caixa '#218'nico:'
            Columns = 2
            DataField = 'CAIXA_UNICO'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 14
            Values.Strings = (
              'S'
              'N')
          end
          object DBEdit48: TDBEdit
            Left = 315
            Top = 198
            Width = 80
            Height = 21
            DataField = 'MARGEM_LUCRO'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnEnter = suiDBEdit3Enter
            OnExit = suiDBEdit3Exit
          end
          object GroupBox8: TGroupBox
            Left = 409
            Top = 144
            Width = 236
            Height = 97
            Caption = 'Balan'#231'a'
            TabOrder = 15
            object Label25: TLabel
              Left = 10
              Top = 26
              Width = 35
              Height = 13
              Caption = 'Modelo'
            end
            object Label26: TLabel
              Left = 10
              Top = 50
              Width = 25
              Height = 13
              Caption = 'Porta'
            end
            object Label27: TLabel
              Left = 10
              Top = 74
              Width = 51
              Height = 13
              Caption = 'Baud Rate'
            end
            object ComboBalanca: TComboBox
              Left = 68
              Top = 20
              Width = 161
              Height = 21
              Style = csDropDownList
              Color = clSilver
              TabOrder = 0
              Items.Strings = (
                'Nenhuma'
                'Filizola'
                'Toledo'
                'Toledo2180'
                'Urano'
                'LucasTec'
                'Magna'
                'SEM BALAN'#199'A')
            end
            object ComboPortaBal: TComboBox
              Left = 68
              Top = 44
              Width = 161
              Height = 21
              Style = csDropDownList
              Color = clSilver
              TabOrder = 1
              Items.Strings = (
                'COM1'
                'COM2'
                'COM3'
                'COM4'
                'COM5'
                'COM6'
                'COM7'
                'COM8'
                'COM9')
            end
            object ComboBaudBal: TComboBox
              Left = 68
              Top = 68
              Width = 161
              Height = 21
              Style = csDropDownList
              Color = clSilver
              TabOrder = 2
              Items.Strings = (
                '1200'
                '2400'
                '4800'
                '9600'
                '19200'
                '38400')
            end
          end
        end
      end
      object TabSheet2: TRzTabSheet
        Caption = 'Vendas (2)'
        object RzPanel1: TRzPanel
          Left = 0
          Top = 0
          Width = 906
          Height = 478
          Align = alClient
          Color = 15987699
          Enabled = False
          TabOrder = 0
          object DBRadioGroup8: TDBRadioGroup
            Left = 2
            Top = 8
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Permite Estoque Negativo:'
            Columns = 2
            DataField = 'ESTOQUE_NEGATIVO'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 0
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup13: TDBRadioGroup
            Left = 338
            Top = 8
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Baixa em estoque Por Fra'#231#227'o?'
            Columns = 2
            DataField = 'USA_FRACAO'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 1
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup15: TDBRadioGroup
            Left = 338
            Top = 169
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Tipo de Desconto na Venda ou na Finaliza'#231#227'o'
            Columns = 2
            DataField = 'TP_DESCONTO'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Percentual'
              'Reais')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            Values.Strings = (
              'P'
              'R')
          end
          object DBRadioGroup16: TDBRadioGroup
            Left = 2
            Top = 170
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Pode Alterar Pre'#231'o na Venda'
            Columns = 2
            DataField = 'LIB_PRECO_VENDA'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 3
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup17: TDBRadioGroup
            Left = 2
            Top = 227
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Cliente Emite NF-e/NFC-e'
            Columns = 2
            DataField = 'UTILIZA_NFE'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 4
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup19: TDBRadioGroup
            Left = 338
            Top = 64
            Width = 300
            Height = 47
            Hint = 
              'Somete coloque Sim para leitores com a conec'#231#227'o na porta Serial,' +
              ' para leitores USB e Teclaco Coloque N'#227'o'
            Align = alCustom
            Caption = 'Leitor de Codigo de Barras Serial Conectado?'
            Columns = 2
            DataField = 'LEITOT_SERIAL'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup20: TDBRadioGroup
            Left = 338
            Top = 115
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Inicia Foco na Tela de Vendas:'
            Columns = 3
            DataField = 'CLIENTE_VENDEDOR'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Cliente'
              'Vendedor'
              'Produto')
            ParentFont = False
            TabOrder = 6
            Values.Strings = (
              'C'
              'V'
              'O')
          end
          object DBRadioGroup21: TDBRadioGroup
            Left = 2
            Top = 115
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Mostra Tela de D'#233'bitos do cliente na Venda:'
            Columns = 2
            DataField = 'DEBITOS_CLIENTE'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 7
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup7: TDBRadioGroup
            Left = 2
            Top = 60
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Testa Limite de Cr'#233'dito:'
            Columns = 2
            DataField = 'LIMITE_CREDITO'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 8
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup25: TDBRadioGroup
            Left = 338
            Top = 226
            Width = 300
            Height = 50
            Hint = 
              'Lan'#231'ar descontos na Venda (unitario) Ou na Finaliza'#231#227'o da vendas' +
              ' (total)'#13#10
            Align = alCustom
            Caption = 'Tipo de Desconto:'
            Columns = 2
            DataField = 'TP_DESC'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Venda Unitario'
              'Venda Total')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            Values.Strings = (
              'U'
              'T')
          end
          object DBRadioGroup26: TDBRadioGroup
            Left = 2
            Top = 283
            Width = 300
            Height = 50
            Align = alCustom
            Caption = 'Venda Quantidade (1) e passa pra proxima linha'
            Columns = 2
            DataField = 'PROX_LINHA'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 10
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup28: TDBRadioGroup
            Left = 338
            Top = 282
            Width = 300
            Height = 50
            Hint = 'Calculo dos itens da Venda pelo unitario ou pelo total'
            Align = alCustom
            Caption = 'Vendas pelo Unitario ou Total:'
            Columns = 2
            DataField = 'UNIT_TOTAL'
            DataSource = DM.DTS_CONFIGURACOES
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Venda Unitario'
              'Venda Total')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
            Values.Strings = (
              'U'
              'T')
          end
        end
      end
      object TabSheet3: TRzTabSheet
        Caption = 'Frente Caixa/Vendas'
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 906
          Height = 478
          Align = alClient
          TabOrder = 0
          object RxLabel1: TRxLabel
            Left = 2
            Top = 101
            Width = 140
            Height = 13
            Caption = 'Mensagem do Cupom Fiscal: '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel20: TRxLabel
            Left = 3
            Top = 8
            Width = 76
            Height = 13
            Caption = 'Cliente Padr'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel8: TRxLabel
            Left = 12
            Top = 270
            Width = 85
            Height = 13
            Caption = 'Imagem Produto:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel9: TRxLabel
            Left = 3
            Top = 37
            Width = 81
            Height = 13
            Caption = 'Produto Padr'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel12: TRxLabel
            Left = 3
            Top = 69
            Width = 99
            Height = 13
            Caption = 'Cond Pagto Padr'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel13: TRxLabel
            Left = 2
            Top = 157
            Width = 115
            Height = 13
            Caption = 'Mensagem Fiscal NF-E: '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object E_Nome: TEdit
            Left = 256
            Top = 5
            Width = 388
            Height = 19
            TabStop = False
            Color = clActiveBorder
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object ECodigocli: TRxDBComboEdit
            Left = 141
            Top = 5
            Width = 106
            Height = 21
            ClickKey = 113
            DataField = 'CLIENTE_PADRAO'
            DataSource = DM.DTS_CONFIGURACOES
            GlyphKind = gkEllipsis
            NumGlyphs = 1
            TabOrder = 0
            OnButtonClick = ECodigocliButtonClick
            OnChange = ECodigocliChange
            OnExit = ECodigocliExit
          end
          object DBImage1: TDBImage
            Left = 132
            Top = 215
            Width = 175
            Height = 137
            Hint = 'Foto do Produto'
            DataField = 'LOGOMARCA'
            DataSource = DM.DTS_CONFIGURACOES
            Stretch = True
            TabOrder = 8
            TabStop = False
          end
          object RxDBComboEdit1: TRxDBComboEdit
            Left = 142
            Top = 34
            Width = 105
            Height = 21
            ClickKey = 113
            DataField = 'PRODUTO_PADRAO'
            DataSource = DM.DTS_CONFIGURACOES
            GlyphKind = gkEllipsis
            NumGlyphs = 1
            TabOrder = 1
            OnButtonClick = RxDBComboEdit1ButtonClick
          end
          object suiEdit1: TEdit
            Left = 256
            Top = 34
            Width = 388
            Height = 19
            TabStop = False
            Color = clActiveBorder
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object DBRadioGroup11: TDBRadioGroup
            Left = 331
            Top = 220
            Width = 311
            Height = 41
            Caption = 'Emite Cupon Vinculado para Vendas a Prazo?'
            Columns = 2
            DataField = 'CUPON_VINCULADO'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 5
            Values.Strings = (
              'S'
              'N')
          end
          object RxDBComboEdit2: TRxDBComboEdit
            Left = 142
            Top = 66
            Width = 105
            Height = 21
            ClickKey = 113
            DataField = 'COD_PAGTO_PADRAO'
            DataSource = DM.DTS_CONFIGURACOES
            GlyphKind = gkEllipsis
            NumGlyphs = 1
            TabOrder = 2
            OnButtonClick = RxDBComboEdit2ButtonClick
            OnExit = RxDBComboEdit2Exit
          end
          object suiEdit2: TEdit
            Left = 256
            Top = 66
            Width = 387
            Height = 19
            TabStop = False
            Color = clActiveBorder
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 10
          end
          object Edit3: TEdit
            Left = 545
            Top = 92
            Width = 97
            Height = 21
            Enabled = False
            TabOrder = 11
            Visible = False
          end
          object DBRadioGroup22: TDBRadioGroup
            Left = 331
            Top = 262
            Width = 311
            Height = 41
            Caption = 'Gaveta Conectada ?'
            Columns = 2
            DataField = 'USA_GAVETA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 6
            Values.Strings = (
              'S'
              'N')
          end
          object DBRichEdit1: TDBRichEdit
            Left = 2
            Top = 116
            Width = 641
            Height = 41
            DataField = 'MSG_CUPOMFISCAL'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            TabOrder = 3
            Zoom = 100
          end
          object DBRichEdit2: TDBRichEdit
            Left = 2
            Top = 172
            Width = 641
            Height = 41
            DataField = 'OBS_FISCO'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            TabOrder = 4
            Zoom = 100
          end
          object DBRadioGroup30: TDBRadioGroup
            Left = 331
            Top = 308
            Width = 311
            Height = 41
            Caption = 'Venda Aberta ao abrir o Frente Caixa ?'
            Columns = 2
            DataField = 'ABRE_VENDA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 12
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
      object TabSheet5: TRzTabSheet
        Caption = 'Relatorios/Impressoras'
        object DBRadioGroup1: TDBRadioGroup
          Left = 6
          Top = 8
          Width = 388
          Height = 56
          Caption = 'Formul'#225'rio de Pedidos Impress'#227'o:'
          Columns = 3
          DataField = 'FORM_PEDIDOS'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Modelo 1'
            'Modelo 2'
            '40 colunas 1'
            'Modelo 3'
            '40 colunas 2'
            '60 colunas')
          ParentFont = False
          TabOrder = 0
          Values.Strings = (
            'P'
            'I'
            'Q'
            '3'
            '4'
            '5')
        end
        object DBRadioGroup10: TDBRadioGroup
          Left = 9
          Top = 67
          Width = 192
          Height = 54
          Caption = 'Modelo da Impressora:'
          Columns = 2
          DataField = 'IMPRESSAO'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Laser/Jato'
            'Matricial')
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            'P'
            'M')
        end
        object DBRadioGroup18: TDBRadioGroup
          Left = 208
          Top = 67
          Width = 185
          Height = 54
          Caption = 'Imprime Venda:'
          Columns = 2
          DataField = 'IMP_VENDA'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 408
          Top = 9
          Width = 238
          Height = 40
          Caption = 'Vendas Emite Cupom:'
          Columns = 2
          DataField = 'CUPOM'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 3
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup5: TDBRadioGroup
          Left = 408
          Top = 50
          Width = 238
          Height = 42
          Caption = 'Venda Imprime Duplicata:'
          Columns = 2
          DataField = 'DUPLICATA'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 4
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup4: TDBRadioGroup
          Left = 408
          Top = 94
          Width = 238
          Height = 42
          Caption = 'Venda Imprime Boleto:'
          Columns = 2
          DataField = 'BOLETO'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 5
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup6: TDBRadioGroup
          Left = 408
          Top = 139
          Width = 238
          Height = 42
          Caption = 'Venda Imprime Contrato:'
          Columns = 2
          DataField = 'CONTRATO'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 6
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup14: TDBRadioGroup
          Left = 408
          Top = 181
          Width = 238
          Height = 42
          Caption = 'Venda Imprime Carn'#234':'
          Columns = 2
          DataField = 'IMP_NOTA'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 7
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup23: TDBRadioGroup
          Left = 10
          Top = 128
          Width = 383
          Height = 54
          Align = alCustom
          Caption = 'Modelo  impressoras Fiscais'
          Columns = 3
          DataField = 'MODELO_ECF'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Bematech c/ DLL'
            'Outros Modelos'
            'Concentrador'
            'N'#227'o Fiscal/NFC-e')
          ParentFont = False
          TabOrder = 8
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object DBRadioGroup24: TDBRadioGroup
          Left = 408
          Top = 225
          Width = 238
          Height = 44
          Caption = 'Pre Visualizar Relat'#243'rios'
          Columns = 2
          DataField = 'PREVIEW'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 9
          Values.Strings = (
            'S'
            'N')
        end
        object GroupBox4: TGroupBox
          Left = 8
          Top = 184
          Width = 385
          Height = 83
          Caption = 'Config Concentrador de ECF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          object Label17: TLabel
            Left = 8
            Top = 14
            Width = 33
            Height = 13
            Caption = 'Marca:'
          end
          object Label18: TLabel
            Left = 138
            Top = 14
            Width = 38
            Height = 13
            Caption = 'Modelo:'
          end
          object Label19: TLabel
            Left = 248
            Top = 14
            Width = 24
            Height = 13
            Caption = 'Tipo:'
          end
          object Label20: TLabel
            Left = 330
            Top = 14
            Width = 30
            Height = 13
            Caption = 'Porta:'
          end
          object cb_ecf_modelo: TDBComboBox
            Left = 139
            Top = 28
            Width = 104
            Height = 21
            Hint = 'Modelo do Emissor de Cupom fiscal'
            Color = clBtnHighlight
            DataField = 'ECF_MODELO'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              ''
              'MP-2100 TH FI'
              'MP-4000 TH FI'
              'MP-7000 TH FI'
              'MP-3000 TH FI'
              'MP-6000 TH FI'
              'FS600'
              'FS2000'
              'FS2100T'
              'IF ST120'
              'IF ST200'
              'IF ST2000'
              'IF ST2500'
              'TM-T81 FBII')
            ParentFont = False
            TabOrder = 0
          end
          object DBComboBox1: TDBComboBox
            Left = 249
            Top = 28
            Width = 70
            Height = 21
            Hint = 'Tipo do Emissor de Cupom fiscal'
            DataField = 'ECF_TIPO'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              ''
              'ECF-IF'
              'ECF-PDV')
            ParentFont = False
            TabOrder = 1
          end
          object DBComboBox2: TDBComboBox
            Left = 9
            Top = 28
            Width = 123
            Height = 21
            Hint = 'Modelo do Emissor de Cupom fiscal'
            Color = clBtnHighlight
            DataField = 'ECF_MARCA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              ''
              'BEMATECH'
              'DARUMA'
              'SWEDA'
              'EPSON')
            ParentFont = False
            TabOrder = 2
          end
          object DBComboBox3: TDBComboBox
            Left = 329
            Top = 28
            Width = 51
            Height = 21
            Hint = 'Tipo do Emissor de Cupom fiscal'
            DataField = 'ECF_PORTA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              ''
              'COM1'
              'COM2'
              'COM3'
              'COM4'
              'COM5'
              'COM6'
              'COM7'
              'COM8'
              'COM9'
              'USB')
            ParentFont = False
            TabOrder = 3
          end
        end
        object GroupBox5: TGroupBox
          Left = 7
          Top = 271
          Width = 638
          Height = 111
          Caption = 'Bematech N'#227'o Fiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          object GroupBox6: TGroupBox
            Left = 326
            Top = 18
            Width = 307
            Height = 84
            Caption = 'Escolha a porta de comunica'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label21: TLabel
              Left = 14
              Top = 20
              Width = 25
              Height = 13
              Caption = 'Porta'
            end
            object Label22: TLabel
              Left = 15
              Top = 42
              Width = 10
              Height = 13
              Caption = 'IP'
            end
            object cbo_porta: TComboBox
              Left = 56
              Top = 16
              Width = 161
              Height = 21
              TabOrder = 0
              OnChange = cbo_portaChange
              Items.Strings = (
                'COM1'
                'COM2'
                'COM3'
                'COM4'
                'LPT1'
                'LPT2'
                'USB'
                'ETHERNET')
            end
            object edt_ip: TEdit
              Left = 56
              Top = 40
              Width = 161
              Height = 21
              TabOrder = 1
            end
            object btn_porta: TButton
              Left = 224
              Top = 17
              Width = 75
              Height = 25
              Caption = '&Conectar'
              TabOrder = 2
              OnClick = btn_portaClick
            end
          end
          object GroupBox7: TGroupBox
            Left = 6
            Top = 16
            Width = 315
            Height = 83
            Caption = 'Escolha o modelo da impressora'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object pic_model: TImage
              Left = 238
              Top = 9
              Width = 70
              Height = 70
            end
            object cbo_modelo: TComboBox
              Left = 8
              Top = 32
              Width = 225
              Height = 21
              TabOrder = 0
              Text = 'Modelo'
              OnChange = cbo_modeloChange
              Items.Strings = (
                'MP 20 CI'
                'MP 20 MI'
                'MP 20 TH'
                'MP 2000 CI'
                'MP 2000 TH'
                'MP 2100 TH'
                'MP 4000 TH'
                'MP 4200 TH'
                'MP 2500 TH')
            end
          end
        end
      end
      object TabSheet4: TRzTabSheet
        Caption = 'Estoque'
        object Label7: TLabel
          Left = 7
          Top = 16
          Width = 133
          Height = 13
          Caption = 'Data In'#237'cio do Estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GroupBox10: TGroupBox
          Left = 8
          Top = 66
          Width = 636
          Height = 57
          Caption = 'Local de Estoque [Vendas]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object BtnConsLocal: TSpeedButton
            Left = 112
            Top = 24
            Width = 23
            Height = 21
            Hint = 'Consultar '
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
              BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
              2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
              00FFA87875C4A398D5B6A7D0A59FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF55BDFFB5D6EDA3908EB69B8BF0E7C8FEFDDAFEFDD9FDFCD8EADA
              C2CEAEA3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCCB7B7D9B8A5FF
              F1C3FFFDD6FFFFDAFFFFDAFFFFDFFFFFEFF6F0EBB48D89FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFC6978FF7E2B5F8DBAAFDF7D0FFFFDAFFFFE1FFFFF2FFFF
              FBFFFFFFDFD0BEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDBBAA8FCE4AFF2
              C897FCF4CCFFFFDBFFFFE4FFFFF9FFFFFBFFFFECF2EFD0C79C96FF00FFFF00FF
              FF00FFFF00FFFF00FFE4C7AFFBE0ABEFBA86F9E3B6FFFFD9FFFFDEFFFFE8FFFF
              EAFFFFE0FAF8D7C6AC9AFF00FFFF00FFFF00FFFF00FFFF00FFDFC0ABFEE9B5EF
              BB84F3CC98FBEEC4FFFFDBFFFFDDFFFFDCFFFFDCF6F2D2C8A298FF00FFFF00FF
              FF00FFFF00FFFF00FFCAA098FDF0C2FAE9C5F4D3A6F4D09DF9E4B8FEF6CFFEFA
              D3FFFFDAE5D9BBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDDC4AEFF
              FFFFFFF7E9F3CC98F0BD89F4CE9DFCE6B6FDF6C8BE9D8FFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFD3BFBAF6F0DCFFF2C0FDE6B1FEE9B5F4DE
              B7D0AD9DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFCAAD96CFAE9BDDBFA9DCB8A8FF00FFFF00FFFF00FFFF00FF}
            ParentShowHint = False
            ShowHint = True
            OnClick = BtnConsLocalClick
          end
          object EdtNomeLocal: TEdit
            Left = 139
            Top = 24
            Width = 485
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object EdtCodLocal: TDBEdit
            Left = 8
            Top = 24
            Width = 97
            Height = 21
            DataField = 'CODIGO_LOCAL_ESTOQUE_VENDAS'
            DataSource = DM.DTS_CONFIGURACOES
            TabOrder = 1
          end
        end
        object GroupBox11: TGroupBox
          Left = 8
          Top = 138
          Width = 636
          Height = 127
          Caption = 'Local de Vendas Default [Transfer'#234'ncia entre Locais de Estoque]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object BtnConsLocalOrigem: TSpeedButton
            Left = 109
            Top = 40
            Width = 23
            Height = 21
            Hint = 'Consultar '
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
              BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
              2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
              00FFA87875C4A398D5B6A7D0A59FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF55BDFFB5D6EDA3908EB69B8BF0E7C8FEFDDAFEFDD9FDFCD8EADA
              C2CEAEA3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCCB7B7D9B8A5FF
              F1C3FFFDD6FFFFDAFFFFDAFFFFDFFFFFEFF6F0EBB48D89FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFC6978FF7E2B5F8DBAAFDF7D0FFFFDAFFFFE1FFFFF2FFFF
              FBFFFFFFDFD0BEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDBBAA8FCE4AFF2
              C897FCF4CCFFFFDBFFFFE4FFFFF9FFFFFBFFFFECF2EFD0C79C96FF00FFFF00FF
              FF00FFFF00FFFF00FFE4C7AFFBE0ABEFBA86F9E3B6FFFFD9FFFFDEFFFFE8FFFF
              EAFFFFE0FAF8D7C6AC9AFF00FFFF00FFFF00FFFF00FFFF00FFDFC0ABFEE9B5EF
              BB84F3CC98FBEEC4FFFFDBFFFFDDFFFFDCFFFFDCF6F2D2C8A298FF00FFFF00FF
              FF00FFFF00FFFF00FFCAA098FDF0C2FAE9C5F4D3A6F4D09DF9E4B8FEF6CFFEFA
              D3FFFFDAE5D9BBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDDC4AEFF
              FFFFFFF7E9F3CC98F0BD89F4CE9DFCE6B6FDF6C8BE9D8FFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFD3BFBAF6F0DCFFF2C0FDE6B1FEE9B5F4DE
              B7D0AD9DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFCAAD96CFAE9BDDBFA9DCB8A8FF00FFFF00FFFF00FFFF00FF}
            ParentShowHint = False
            ShowHint = True
            OnClick = BtnConsLocalOrigemClick
          end
          object BtnConsLocalDestino: TSpeedButton
            Left = 109
            Top = 88
            Width = 23
            Height = 21
            Hint = 'Consultar '
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
              BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
              2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
              00FFA87875C4A398D5B6A7D0A59FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF55BDFFB5D6EDA3908EB69B8BF0E7C8FEFDDAFEFDD9FDFCD8EADA
              C2CEAEA3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCCB7B7D9B8A5FF
              F1C3FFFDD6FFFFDAFFFFDAFFFFDFFFFFEFF6F0EBB48D89FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFC6978FF7E2B5F8DBAAFDF7D0FFFFDAFFFFE1FFFFF2FFFF
              FBFFFFFFDFD0BEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDBBAA8FCE4AFF2
              C897FCF4CCFFFFDBFFFFE4FFFFF9FFFFFBFFFFECF2EFD0C79C96FF00FFFF00FF
              FF00FFFF00FFFF00FFE4C7AFFBE0ABEFBA86F9E3B6FFFFD9FFFFDEFFFFE8FFFF
              EAFFFFE0FAF8D7C6AC9AFF00FFFF00FFFF00FFFF00FFFF00FFDFC0ABFEE9B5EF
              BB84F3CC98FBEEC4FFFFDBFFFFDDFFFFDCFFFFDCF6F2D2C8A298FF00FFFF00FF
              FF00FFFF00FFFF00FFCAA098FDF0C2FAE9C5F4D3A6F4D09DF9E4B8FEF6CFFEFA
              D3FFFFDAE5D9BBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDDC4AEFF
              FFFFFFF7E9F3CC98F0BD89F4CE9DFCE6B6FDF6C8BE9D8FFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFD3BFBAF6F0DCFFF2C0FDE6B1FEE9B5F4DE
              B7D0AD9DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFCAAD96CFAE9BDDBFA9DCB8A8FF00FFFF00FFFF00FFFF00FF}
            ParentShowHint = False
            ShowHint = True
            OnClick = BtnConsLocalDestinoClick
          end
          object Label8: TLabel
            Left = 8
            Top = 24
            Width = 119
            Height = 13
            Caption = 'Local de Estoque Origem'
          end
          object Label9: TLabel
            Left = 8
            Top = 72
            Width = 122
            Height = 13
            Caption = 'Local de Estoque Destino'
          end
          object EdtNomeLocalOrigem: TEdit
            Left = 136
            Top = 40
            Width = 489
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object EdtNomeLocalDestino: TEdit
            Left = 136
            Top = 88
            Width = 489
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object EdtCodLocalOrigem: TDBEdit
            Left = 8
            Top = 40
            Width = 97
            Height = 21
            DataField = 'DEFAULT_LOCAL_ORIGEM'
            DataSource = DM.DTS_CONFIGURACOES
            TabOrder = 2
          end
          object EdtCodLocalDestino: TDBEdit
            Left = 8
            Top = 88
            Width = 97
            Height = 21
            DataField = 'DEFAULT_LOCAL_DESTINO'
            DataSource = DM.DTS_CONFIGURACOES
            TabOrder = 3
          end
        end
        object DBDateEdit1: TDBDateEdit
          Left = 18
          Top = 32
          Width = 95
          Height = 21
          DataField = 'DATA_INICIO_ESTOQUE'
          DataSource = DM.DTS_CONFIGURACOES
          NumGlyphs = 2
          TabOrder = 2
        end
        object DBRadioGroup38: TDBRadioGroup
          Left = 9
          Top = 268
          Width = 296
          Height = 49
          Hint = 'IMPORTA CODIGO DO FORNECEDOR PARA REFERENCIA'
          BiDiMode = bdRightToLeft
          Caption = 'Importa para Refer'#234'ncia Codigo do Fornecedor'
          Columns = 2
          DataField = 'IMP_CODIGO_FORNECEDOR'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 3
          TabStop = True
          Values.Strings = (
            'S'
            'N')
        end
      end
      object TabSheet6: TRzTabSheet
        Caption = 'NF-e/NFC-e'
        object GroupBox18: TGroupBox
          Left = 8
          Top = 8
          Width = 881
          Height = 467
          Caption = 'NFe - Nota Fiscal Eletr'#244'nica'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object PageControl1: TPageControl
            Left = 2
            Top = 15
            Width = 877
            Height = 450
            ActivePage = TabSheet12
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object TabSheet12: TTabSheet
              Caption = 'Certificado'
              object Label10: TLabel
                Left = 10
                Top = 44
                Width = 41
                Height = 13
                Caption = 'Caminho'
              end
              object Label11: TLabel
                Left = 10
                Top = 84
                Width = 31
                Height = 13
                Caption = 'Senha'
              end
              object Label12: TLabel
                Left = 10
                Top = 124
                Width = 79
                Height = 13
                Caption = 'N'#250'mero de S'#233'rie'
              end
              object Label13: TLabel
                Left = 10
                Top = 172
                Width = 55
                Height = 13
                Caption = 'UF da NF-e'
              end
              object Label23: TLabel
                Left = 10
                Top = 220
                Width = 64
                Height = 13
                Caption = 'Token NFC-e'
              end
              object Label24: TLabel
                Left = 129
                Top = 220
                Width = 76
                Height = 13
                Caption = 'Id Token NFC-e'
              end
              object Label51: TLabel
                Left = 10
                Top = 1
                Width = 69
                Height = 13
                Caption = 'URL para PFX'
              end
              object lSSLLib: TLabel
                Left = 10
                Top = 272
                Width = 34
                Height = 13
                Alignment = taRightJustify
                Caption = 'SSLLib'
                Color = clBtnFace
                ParentColor = False
              end
              object lCryptLib: TLabel
                Left = 238
                Top = 272
                Width = 38
                Height = 13
                Alignment = taRightJustify
                Caption = 'CryptLib'
                Color = clBtnFace
                ParentColor = False
              end
              object lHttpLib: TLabel
                Left = 8
                Top = 296
                Width = 34
                Height = 13
                Alignment = taRightJustify
                Caption = 'HttpLib'
                Color = clBtnFace
                ParentColor = False
              end
              object lXmlSign: TLabel
                Left = 216
                Top = 300
                Width = 57
                Height = 13
                Alignment = taRightJustify
                Caption = 'XMLSignLib'
                Color = clBtnFace
                ParentColor = False
              end
              object lSSLLib1: TLabel
                Left = 8
                Top = 326
                Width = 44
                Height = 13
                Alignment = taRightJustify
                Caption = 'SSLType'
                Color = clBtnFace
                ParentColor = False
              end
              object Label42: TLabel
                Left = 216
                Top = 326
                Width = 59
                Height = 13
                Caption = 'Vers'#227'o NFe:'
              end
              object Label43: TLabel
                Left = 176
                Top = 173
                Width = 86
                Height = 13
                Caption = 'Forma de Emiss'#227'o'
              end
              object Label44: TLabel
                Left = 13
                Top = 353
                Width = 61
                Height = 13
                Caption = 'Modelo NFe:'
              end
              object Button1: TButton
                Left = 318
                Top = 59
                Width = 70
                Height = 21
                Caption = 'Carregar'
                TabOrder = 6
                OnClick = Button1Click
              end
              object Button2: TButton
                Left = 318
                Top = 139
                Width = 70
                Height = 21
                Caption = 'Carregar'
                TabOrder = 7
                OnClick = Button2Click
              end
              object estado_nfe: TDBComboBox
                Left = 7
                Top = 188
                Width = 145
                Height = 21
                DataField = 'ESTADO_NFE'
                DataSource = DM.DTS_CONFIGURACOES
                Items.Strings = (
                  'AC'
                  'AL'
                  'AM'
                  'AP'
                  'BA'
                  'CE'
                  'DF'
                  'ES'
                  'GO'
                  'MA'
                  'MG'
                  'MS'
                  'MT'
                  'PA'
                  'PB'
                  'PE'
                  'PI'
                  'PR'
                  'RJ'
                  'RN'
                  'RO'
                  'RR'
                  'RS'
                  'SC'
                  'SE'
                  'SP'
                  'TO')
                TabOrder = 3
              end
              object EdtSenhaCertificado: TDBEdit
                Left = 8
                Top = 100
                Width = 305
                Height = 21
                DataField = 'NFE_SENHA'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 1
              end
              object EdtNumeroSerieCertificado: TDBEdit
                Left = 8
                Top = 140
                Width = 305
                Height = 21
                DataField = 'NFE_CERTIFICAO'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object EdtCaminhoCertificado: TDBEdit
                Left = 8
                Top = 60
                Width = 305
                Height = 21
                DataField = 'CAMINHO_CERTIFICADO'
                DataSource = DM.DTS_CONFIGURACOES
                ReadOnly = True
                TabOrder = 0
              end
              object DBEdit46: TDBEdit
                Left = 128
                Top = 236
                Width = 305
                Height = 21
                DataField = 'ID_TOKEN'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 5
              end
              object DBEdit47: TDBEdit
                Left = 7
                Top = 236
                Width = 97
                Height = 21
                DataField = 'TOKEN'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 4
              end
              object DBRadioGroup31: TDBRadioGroup
                Left = 396
                Top = -1
                Width = 221
                Height = 48
                Caption = 'NFCE - OFF-LINE/ON-LINE'
                Columns = 2
                DataField = 'NFCE_OFF'
                DataSource = DM.DTS_CONFIGURACOES
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Items.Strings = (
                  'On-Line'
                  'Off-Line')
                ParentFont = False
                TabOrder = 8
                Values.Strings = (
                  '1'
                  '2')
              end
              object DBRadioGroup32: TDBRadioGroup
                Left = 628
                Top = 3
                Width = 238
                Height = 44
                Caption = 'Pr'#233' Visualiza NFC-e'
                Columns = 2
                DataField = 'PREVIEW_NFE'
                DataSource = DM.DTS_CONFIGURACOES
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                ParentFont = False
                TabOrder = 9
                Values.Strings = (
                  'S'
                  'N')
              end
              object Button3: TButton
                Left = 3
                Top = 398
                Width = 211
                Height = 21
                Caption = 'Configura porta Daruma (Aut)'
                TabOrder = 10
                OnClick = Button3Click
              end
              object edtURLPFX: TDBEdit
                Left = 9
                Top = 17
                Width = 305
                Height = 21
                DataField = 'URLPFX'
                DataSource = DM.DTS_CONFIGURACOES
                ReadOnly = True
                TabOrder = 11
              end
              object Button4: TButton
                Left = 320
                Top = 17
                Width = 70
                Height = 21
                Caption = 'Carregar'
                TabOrder = 12
                OnClick = Button4Click
              end
              object btnStatusServ: TButton
                Left = 439
                Top = 50
                Width = 177
                Height = 25
                Caption = ' Status de Servi'#231'o NF-E'
                TabOrder = 13
                OnClick = btnStatusServClick
              end
              object pgRespostas: TPageControl
                Left = 439
                Top = 78
                Width = 425
                Height = 342
                ActivePage = TabSheet20
                TabOrder = 14
                object TabSheet15: TTabSheet
                  Caption = 'Respostas'
                  object MemoResp: TMemo
                    Left = 0
                    Top = 0
                    Width = 417
                    Height = 314
                    Align = alClient
                    ScrollBars = ssVertical
                    TabOrder = 0
                  end
                end
                object TabSheet18: TTabSheet
                  Caption = 'XML Resposta'
                  ImageIndex = 1
                  object WBResposta: TWebBrowser
                    Left = 0
                    Top = 0
                    Width = 417
                    Height = 314
                    Align = alClient
                    TabOrder = 0
                    ExplicitWidth = 559
                    ExplicitHeight = 385
                    ControlData = {
                      4C000000192B0000742000000000000000000000000000000000000000000000
                      000000004C000000000000000000000001000000E0D057007335CF11AE690800
                      2B2E126200000000000000004C0000000114020000000000C000000000000046
                      8000000000000000000000000000000000000000000000000000000000000000
                      00000000000000000100000000000000000000000000000000000000}
                  end
                end
                object TabSheet19: TTabSheet
                  Caption = 'Log'
                  ImageIndex = 2
                  object memoLog: TMemo
                    Left = 0
                    Top = 0
                    Width = 417
                    Height = 314
                    Align = alClient
                    ScrollBars = ssVertical
                    TabOrder = 0
                  end
                end
                object TabSheet20: TTabSheet
                  Caption = 'Documento'
                  ImageIndex = 3
                  object trvwDocumento: TTreeView
                    Left = 0
                    Top = 0
                    Width = 417
                    Height = 314
                    Align = alClient
                    Indent = 19
                    TabOrder = 0
                  end
                end
                object TabSheet21: TTabSheet
                  Caption = 'Retorno Completo WS'
                  ImageIndex = 4
                  object memoRespWS: TMemo
                    Left = 0
                    Top = 0
                    Width = 417
                    Height = 314
                    Align = alClient
                    ScrollBars = ssVertical
                    TabOrder = 0
                  end
                end
                object Dados: TTabSheet
                  Caption = 'Dados'
                  ImageIndex = 5
                  object MemoDados: TMemo
                    Left = 0
                    Top = 0
                    Width = 417
                    Height = 314
                    Align = alClient
                    Lines.Strings = (
                      '')
                    ScrollBars = ssVertical
                    TabOrder = 0
                    WordWrap = False
                  end
                end
              end
              object cbModeloDF: TDBComboBox
                Left = 80
                Top = 353
                Width = 123
                Height = 21
                DataField = 'MODELO_DOC_NFE'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 15
                OnChange = cbSSLLib1Change
              end
              object Button5: TButton
                Left = 636
                Top = 50
                Width = 177
                Height = 25
                Caption = ' Status de Servi'#231'o NFCE'
                TabOrder = 16
                OnClick = Button5Click
              end
              object cbCryptLib: TDBComboBoxEh
                Left = 292
                Top = 269
                Width = 145
                Height = 21
                Ctl3D = False
                DataField = 'CRYPTLIB'
                DataSource = DM.DTS_CONFIGURACOES
                DynProps = <>
                DragCursor = crDefault
                EditButtons = <>
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -12
                Font.Name = 'Courier New'
                Font.Style = []
                Items.Strings = (
                  'cryNone'
                  'cryOpenSSL'
                  'cryCapicom'
                  'cryWinCrypt')
                KeyItems.Strings = (
                  '0'
                  '1'
                  '2'
                  '3')
                MRUList.Active = True
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 17
                Visible = True
              end
              object cbHttpLib: TDBComboBoxEh
                Left = 80
                Top = 297
                Width = 123
                Height = 21
                Ctl3D = False
                DataField = 'HTTPLIB'
                DataSource = DM.DTS_CONFIGURACOES
                DynProps = <>
                DragCursor = crDefault
                EditButtons = <>
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -12
                Font.Name = 'Courier New'
                Font.Style = []
                Items.Strings = (
                  'httpNone'
                  'httpWinINet'
                  'httpWinHttp'
                  'httpOpenSSL'
                  'httpIndy')
                KeyItems.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4')
                MRUList.Active = True
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 18
                Visible = True
              end
              object cbXmlSignLib: TDBComboBoxEh
                Left = 292
                Top = 296
                Width = 145
                Height = 21
                Ctl3D = False
                DataField = 'XMLSIGNLIB'
                DataSource = DM.DTS_CONFIGURACOES
                DynProps = <>
                DragCursor = crDefault
                EditButtons = <>
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -12
                Font.Name = 'Courier New'
                Font.Style = []
                Items.Strings = (
                  'xsNone'
                  'xsXmlSec'
                  'xsMsXml'
                  'xsMsXmlCapicom'
                  'xsLibXml2')
                KeyItems.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4')
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 19
                Visible = True
              end
              object cbSSLType: TDBComboBoxEh
                Left = 80
                Top = 323
                Width = 123
                Height = 21
                Ctl3D = False
                DataField = 'SSLTYPE'
                DataSource = DM.DTS_CONFIGURACOES
                DynProps = <>
                DragCursor = crDefault
                EditButtons = <>
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -12
                Font.Name = 'Courier New'
                Font.Style = []
                Items.Strings = (
                  'LT_all'
                  'LT_SSLv2'
                  'LT_SSLv3'
                  'LT_TLSv1'
                  'LT_TLSv1_1'
                  'LT_TLSv1_2'
                  'LT_SSHv2')
                KeyItems.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6')
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 20
                Visible = True
              end
              object cbVersaoDF: TDBComboBoxEh
                Left = 292
                Top = 323
                Width = 145
                Height = 21
                CharCase = ecUpperCase
                Ctl3D = False
                DataField = 'VERSAO_NFE'
                DataSource = DM.DTS_CONFIGURACOES
                DynProps = <>
                DragCursor = crDefault
                EditButtons = <>
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -12
                Font.Name = 'Courier New'
                Font.Style = []
                Items.Strings = (
                  've200'
                  've300'
                  've310'
                  've400')
                KeyItems.Strings = (
                  '0'
                  '1'
                  '2'
                  '3')
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 21
                Visible = True
              end
              object cbFormaEmissao: TDBComboBoxEh
                Left = 176
                Top = 193
                Width = 212
                Height = 21
                CharCase = ecUpperCase
                Ctl3D = False
                DataField = 'TIPO_EMISSAO_NFE'
                DataSource = DM.DTS_CONFIGURACOES
                DynProps = <>
                DragCursor = crDefault
                EditButtons = <>
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -12
                Font.Name = 'Courier New'
                Font.Style = []
                Items.Strings = (
                  'Normal'
                  'Conting'#234'ncia'
                  'SCAN'
                  'DPEC'
                  'FSDA'
                  'SVCAN'
                  'SVCRS'
                  'SVCSP'
                  'OffLine')
                KeyItems.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8')
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 22
                Visible = True
              end
              object cbSSLLib: TDBComboBoxEh
                Left = 80
                Top = 269
                Width = 123
                Height = 21
                Ctl3D = False
                DataField = 'SSLLIB'
                DataSource = DM.DTS_CONFIGURACOES
                DynProps = <>
                DragCursor = crDefault
                EditButtons = <>
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -12
                Font.Name = 'Courier New'
                Font.Style = []
                Items.Strings = (
                  'libNone'
                  'libOpenSSL'
                  'libCapicom'
                  'libCapicomDelphiSoap'
                  'libWinCrypt'
                  'libCustom')
                KeyItems.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5')
                MRUList.Active = True
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 23
                Visible = True
              end
            end
            object TabSheet13: TTabSheet
              Caption = 'Geral'
              ImageIndex = 1
              object Label56: TLabel
                Left = 519
                Top = 7
                Width = 57
                Height = 13
                Caption = 'Logo Marca'
              end
              object sbtnPathSalvar: TSpeedButton
                Left = 762
                Top = 22
                Width = 22
                Height = 21
                Caption = '...'
                Transparent = False
                OnClick = sbtnPathSalvarClick
              end
              object SpeedButton2: TSpeedButton
                Left = 762
                Top = 79
                Width = 23
                Height = 21
                Caption = '...'
                Transparent = False
                OnClick = SpeedButton2Click
              end
              object Label68: TLabel
                Left = 519
                Top = 112
                Width = 86
                Height = 13
                Caption = 'Caminho Relat'#243'rio'
              end
              object SpeedButton7: TSpeedButton
                Left = 762
                Top = 128
                Width = 23
                Height = 21
                Caption = '...'
                NumGlyphs = 2
                Transparent = False
                OnClick = SpeedButton7Click
              end
              object Label38: TLabel
                Left = 518
                Top = 157
                Width = 88
                Height = 13
                Caption = 'Caminho Schemas'
              end
              object SpeedButton1: TSpeedButton
                Left = 761
                Top = 173
                Width = 23
                Height = 21
                Caption = '...'
                NumGlyphs = 2
                Transparent = False
                OnClick = SpeedButton1Click
              end
              object Label45: TLabel
                Left = 519
                Top = 200
                Width = 60
                Height = 13
                Caption = 'Caminho Pdf'
              end
              object SpeedButton4: TSpeedButton
                Left = 762
                Top = 216
                Width = 23
                Height = 21
                Caption = '...'
                NumGlyphs = 2
                Transparent = False
                OnClick = SpeedButton1Click
              end
              object Label46: TLabel
                Left = 519
                Top = 244
                Width = 96
                Height = 13
                Caption = 'Caminho Inutilizadas'
              end
              object SpeedButton5: TSpeedButton
                Left = 762
                Top = 260
                Width = 23
                Height = 21
                Caption = '...'
                NumGlyphs = 2
                Transparent = False
                OnClick = SpeedButton5Click
              end
              object Label47: TLabel
                Left = 519
                Top = 284
                Width = 70
                Height = 13
                Caption = 'Caminho NFEs'
              end
              object SpeedButton8: TSpeedButton
                Left = 762
                Top = 300
                Width = 23
                Height = 21
                Caption = '...'
                NumGlyphs = 2
                Transparent = False
                OnClick = SpeedButton8Click
              end
              object Label48: TLabel
                Left = 519
                Top = 327
                Width = 121
                Height = 13
                Caption = 'Camino de Eventos NFEs'
              end
              object SpeedButton9: TSpeedButton
                Left = 762
                Top = 343
                Width = 23
                Height = 21
                Caption = '...'
                NumGlyphs = 2
                Transparent = False
                OnClick = SpeedButton9Click
              end
              object EdtLogoMarcaDanfe: TDBEdit
                Left = 519
                Top = 23
                Width = 241
                Height = 21
                DataField = 'NFE_LOGOMARCA'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 0
              end
              object edtPathLogs: TDBEdit
                Left = 520
                Top = 79
                Width = 240
                Height = 21
                DataField = 'NFE_CAMINHO_XML'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 1
              end
              object suiDBRadioGroup1: TDBRadioGroup
                Left = 9
                Top = 4
                Width = 470
                Height = 49
                Hint = 'Tipo de Emiss'#227'o da Danfe'
                BiDiMode = bdLeftToRight
                Caption = 'DANFE'
                Columns = 2
                DataField = 'TIPO_IMPRESSAO_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Items.Strings = (
                  'Retrato'
                  'Paisagem')
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 2
                TabStop = True
                Values.Strings = (
                  'R'
                  'P')
              end
              object suiDBRadioGroup2: TDBRadioGroup
                Left = 9
                Top = 60
                Width = 470
                Height = 85
                Hint = 'Tipo de Emiss'#227'o da Danfe'
                BiDiMode = bdLeftToRight
                Caption = 'Forma Emiss'#227'o'
                Columns = 3
                DataField = 'FORMA_EMISSAO_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Items.Strings = (
                  'Normal'
                  'Conting'#234'ncia'
                  'SCAN'
                  'DPEC'
                  'FSDA')
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 3
                TabStop = True
                Values.Strings = (
                  '1'
                  '2'
                  '3'
                  '4'
                  '5')
              end
              object suiDBRadioGroup3: TDBRadioGroup
                Left = 9
                Top = 148
                Width = 470
                Height = 49
                Hint = 'Tipo de Emiss'#227'o da Danfe'
                BiDiMode = bdLeftToRight
                Caption = 'Ambiente de Destino'
                Columns = 2
                DataField = 'AMBIENTE_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Items.Strings = (
                  'Produ'#231#227'o'
                  'Homologa'#231#227'o')
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 4
                TabStop = True
                Values.Strings = (
                  'P'
                  'H')
              end
              object DBCheckBox1: TDBCheckBox
                Left = 519
                Top = 56
                Width = 265
                Height = 17
                Caption = 'Salvar Arquivos de Envio e Resposta Logs'
                DataField = 'SALVAR_LOG_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 5
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBEdit45: TDBEdit
                Left = 520
                Top = 129
                Width = 240
                Height = 21
                DataField = 'CAMINHO_RELATORIO_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 6
              end
              object DBRadioGroup35: TDBRadioGroup
                Left = 9
                Top = 204
                Width = 470
                Height = 49
                Hint = 'Tipo de Emiss'#227'o da Danfe'
                BiDiMode = bdLeftToRight
                Caption = 'Servi'#231'o de envio NFC-e'
                Columns = 2
                DataField = 'SERVICO_NFCE'
                DataSource = DM.DTS_CONFIGURACOES
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Items.Strings = (
                  'S'#237'ncrono'
                  'Ass'#237'ncrono')
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 7
                TabStop = True
                Values.Strings = (
                  '1'
                  '0')
              end
              object DBRadioGroup37: TDBRadioGroup
                Left = 9
                Top = 260
                Width = 470
                Height = 49
                Hint = 'Tipo de Emiss'#227'o da Danfe'
                BiDiMode = bdLeftToRight
                Caption = 'Exclui Produtos/Servi'#231'os da NF-e'
                Columns = 2
                DataField = 'EXCLUI_SERV_NFE'
                DataSource = DM.DTS_CONFIGURACOES
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 8
                TabStop = True
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBEdit1: TDBEdit
                Left = 519
                Top = 174
                Width = 240
                Height = 21
                DataField = 'CAMINHO_RELATORIO_SCHEMAS'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 9
              end
              object gbxRetornoEnvio: TGroupBox
                Left = 3
                Top = 315
                Width = 478
                Height = 77
                Caption = 'Retorno de Envio'
                TabOrder = 10
                object Label39: TLabel
                  Left = 93
                  Top = 27
                  Width = 50
                  Height = 13
                  Caption = 'Tentativas'
                end
                object Label40: TLabel
                  Left = 176
                  Top = 27
                  Width = 41
                  Height = 13
                  Caption = 'Intervalo'
                end
                object Label41: TLabel
                  Left = 8
                  Top = 27
                  Width = 43
                  Height = 13
                  Hint = 
                    'Aguardar quantos segundos para primeira consulta de retorno de e' +
                    'nvio'
                  Caption = 'Aguardar'
                end
                object edtTentativas: TEdit
                  Left = 93
                  Top = 43
                  Width = 57
                  Height = 21
                  TabOrder = 1
                end
                object edtIntervalo: TEdit
                  Left = 176
                  Top = 43
                  Width = 57
                  Height = 21
                  TabOrder = 2
                end
                object edtAguardar: TEdit
                  Left = 8
                  Top = 43
                  Width = 57
                  Height = 21
                  Hint = 
                    'Aguardar quantos segundos para primeira consulta de retorno de e' +
                    'nvio'
                  TabOrder = 0
                end
                object DBCheckBox3: TDBCheckBox
                  Left = 3
                  Top = 12
                  Width = 257
                  Height = 17
                  Caption = 'Ajustar Automaticamente prop. "Aguardar"'
                  TabOrder = 3
                end
              end
              object DBEdit2: TDBEdit
                Left = 520
                Top = 217
                Width = 240
                Height = 21
                DataField = 'CAMINHO_ARQUIVOS_PDF'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 11
                OnClick = DBEdit2Click
              end
              object DBEdit3: TDBEdit
                Left = 520
                Top = 261
                Width = 240
                Height = 21
                DataField = 'PASTA_INUTILIZADAS_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 12
              end
              object DBEdit4: TDBEdit
                Left = 520
                Top = 301
                Width = 240
                Height = 21
                DataField = 'PASTA_TRANSMITIDAS_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 13
              end
              object DBEdit81: TDBEdit
                Left = 520
                Top = 344
                Width = 240
                Height = 21
                DataField = 'PATHEVENTO_NFE'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 14
              end
            end
            object TabSheet14: TTabSheet
              Caption = 'Email'
              ImageIndex = 2
              object Label57: TLabel
                Left = 0
                Top = 8
                Width = 72
                Height = 13
                Caption = 'Servidor SMTP'
              end
              object Label58: TLabel
                Left = 222
                Top = 8
                Width = 25
                Height = 13
                Caption = 'Porta'
              end
              object Label59: TLabel
                Left = 153
                Top = 48
                Width = 31
                Height = 13
                Caption = 'Senha'
              end
              object Label60: TLabel
                Left = 0
                Top = 48
                Width = 70
                Height = 13
                Caption = 'Usu'#225'rio/E-Mail'
              end
              object Label61: TLabel
                Left = 0
                Top = 128
                Width = 121
                Height = 13
                Caption = 'Assunto do email enviado'
              end
              object Label62: TLabel
                Left = 288
                Top = 8
                Width = 95
                Height = 13
                Caption = 'Mensagem do Email'
              end
              object Label66: TLabel
                Left = 0
                Top = 88
                Width = 26
                Height = 13
                Caption = 'From:'
              end
              object DBMemo1: TDBMemo
                Left = 288
                Top = 24
                Width = 321
                Height = 177
                DataField = 'MENSAGEM_EMAIL_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 0
              end
              object DBEdit5: TDBEdit
                Left = 0
                Top = 24
                Width = 201
                Height = 21
                DataField = 'SERVIDOR_SMTP'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 216
                Top = 24
                Width = 57
                Height = 21
                DataField = 'PORTA_SMTP'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit7: TDBEdit
                Left = 0
                Top = 64
                Width = 145
                Height = 21
                DataField = 'USUARIO_SMTP'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
              object DBEdit8: TDBEdit
                Left = 152
                Top = 64
                Width = 121
                Height = 21
                DataField = 'SENHA_SMTP'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 4
              end
              object DBEdit9: TDBEdit
                Left = 0
                Top = 104
                Width = 273
                Height = 21
                DataField = 'FROM_SMTP'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 5
              end
              object DBEdit10: TDBEdit
                Left = 0
                Top = 144
                Width = 273
                Height = 21
                DataField = 'ASSUNTO_EMAIL_DANFE'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 6
              end
              object DBCheckBox2: TDBCheckBox
                Left = 1
                Top = 176
                Width = 273
                Height = 17
                Caption = 'SMTP exige conex'#227'o segura'
                DataField = 'SMTP_CONEXAO_SEGURA'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 7
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
          end
        end
      end
      object TabSheet7: TRzTabSheet
        Caption = 'Outros'
        object Label3: TLabel
          Left = 7
          Top = 68
          Width = 127
          Height = 13
          Caption = 'Usu'#225'rio Farm'#225'cia Popular: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 175
          Top = 68
          Width = 122
          Height = 13
          Caption = 'Senha Farm'#225'cia Popular: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label49: TLabel
          Left = 328
          Top = 20
          Width = 115
          Height = 13
          Caption = 'CFOP padr'#227'o na venda '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit12: TDBEdit
          Left = 8
          Top = 87
          Width = 153
          Height = 21
          DataField = 'USUARIO_FP'
          DataSource = DM.DTS_CONFIGURACOES
          TabOrder = 0
        end
        object DBEdit13: TDBEdit
          Left = 176
          Top = 87
          Width = 217
          Height = 21
          DataField = 'SENHA_FP'
          DataSource = DM.DTS_CONFIGURACOES
          TabOrder = 1
        end
        object DBRadioGroup27: TDBRadioGroup
          Left = 9
          Top = 11
          Width = 236
          Height = 48
          Caption = 'Utiliza Farm'#225'cia Popular'
          Columns = 2
          DataField = 'USA_FP'
          DataSource = DM.DTS_CONFIGURACOES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            'S'
            'N')
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 112
          Width = 385
          Height = 233
          Caption = 'Relatorio Gerencial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object Label4: TLabel
            Left = 7
            Top = 76
            Width = 77
            Height = 13
            Caption = 'Acima do Valor: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 7
            Top = 108
            Width = 138
            Height = 13
            Caption = 'Texto do Relat'#243'rio Gerencial:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit14: TDBEdit
            Left = 104
            Top = 71
            Width = 121
            Height = 21
            DataField = 'VALOR_GERENCIAL'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit15: TDBEdit
            Left = 6
            Top = 127
            Width = 369
            Height = 21
            DataField = 'TEXTO_GERENCIAL'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit16: TDBEdit
            Left = 6
            Top = 151
            Width = 369
            Height = 21
            DataField = 'TEXTO_GERENCIAL1'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit17: TDBEdit
            Left = 6
            Top = 175
            Width = 369
            Height = 21
            DataField = 'TEXTO_GERENCIAL2'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit18: TDBEdit
            Left = 6
            Top = 199
            Width = 369
            Height = 21
            DataField = 'TEXTO_GERENCIAL4'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object DBRadioGroup29: TDBRadioGroup
            Left = 11
            Top = 19
            Width = 350
            Height = 48
            Caption = 'Utiliza Gerencial'
            Columns = 2
            DataField = 'USA_GERENCIAL'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 5
            Values.Strings = (
              'S'
              'N')
          end
        end
        object Panel4: TPanel
          Left = 397
          Top = 86
          Width = 276
          Height = 30
          BevelInner = bvLowered
          BiDiMode = bdLeftToRight
          Caption = '::: CONFIGURA'#199#195'O PARA HOTEL :::'
          Ctl3D = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object GroupBox2: TGroupBox
          Left = 394
          Top = 116
          Width = 279
          Height = 171
          TabOrder = 5
          object Label14: TLabel
            Left = 16
            Top = 15
            Width = 188
            Height = 13
            Caption = 'Valor do Minuto (Na Conta de Telefone)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNone
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 16
            Top = 65
            Width = 147
            Height = 13
            Caption = 'Horas de Vencimento da Di'#225'ria'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNone
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 152
            Top = 120
            Width = 96
            Height = 13
            Caption = 'Valor da Di'#225'ria Extra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNone
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit20: TDBEdit
            Left = 16
            Top = 32
            Width = 121
            Height = 21
            DataField = 'CON_VALORMINUTO'
            DataSource = DM.DTS_CONFIGURACOES
            TabOrder = 0
          end
          object DBEdit21: TDBEdit
            Left = 16
            Top = 81
            Width = 121
            Height = 21
            DataField = 'CON_HORADIARIA'
            DataSource = DM.DTS_CONFIGURACOES
            TabOrder = 1
          end
          object DBEdit22: TDBEdit
            Left = 152
            Top = 137
            Width = 97
            Height = 21
            DataField = 'CON_VALORCEXTRA'
            DataSource = DM.DTS_CONFIGURACOES
            TabOrder = 2
          end
          object DbCCExtra: TDBRadioGroup
            Left = 16
            Top = 120
            Width = 129
            Height = 39
            Caption = 'Calcula Di'#225'ria Extra?'
            Columns = 2
            DataField = 'CON_CCEXTRA'
            DataSource = DM.DTS_CONFIGURACOES
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNone
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentFont = False
            TabOrder = 3
            Values.Strings = (
              'SIM'
              'NAO')
          end
        end
        object DBEdit82: TDBEdit
          Left = 257
          Top = 16
          Width = 65
          Height = 21
          DataField = 'CFOP_CUPON'
          DataSource = DM.DTS_CONFIGURACOES
          TabOrder = 6
        end
      end
      object TabSheet8: TRzTabSheet
        Caption = 'Plano Contas'
        object RzPageControl2: TRzPageControl
          Left = 0
          Top = 0
          Width = 906
          Height = 478
          Hint = ''
          ActivePage = TabSheet9
          Align = alClient
          ParentColor = False
          TabIndex = 0
          TabOrder = 0
          FixedDimension = 19
          object TabSheet9: TRzTabSheet
            Caption = 'Vendas'
            object GroupBox16: TGroupBox
              Left = 0
              Top = 0
              Width = 902
              Height = 46
              Align = alTop
              Caption = 'VENDA '#192' VISTA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object blocregiao: TBitBtn
                Left = 72
                Top = 16
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 0
                OnClick = blocregiaoClick
              end
              object DBEdit24: TDBEdit
                Left = 8
                Top = 16
                Width = 64
                Height = 20
                DataField = 'PLANO_VENDA_AV'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 1
              end
              object DBEdit23: TDBEdit
                Left = 190
                Top = 16
                Width = 217
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA10'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit25: TDBEdit
                Left = 97
                Top = 16
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA1'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
            object GroupBox30: TGroupBox
              Left = 0
              Top = 46
              Width = 902
              Height = 46
              Align = alTop
              Caption = 'VENDAS '#192' PRAZO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object DBEdit27: TDBEdit
                Left = 8
                Top = 16
                Width = 64
                Height = 20
                DataField = 'PLANO_VENDA_AP'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 0
              end
              object BitBtn1: TBitBtn
                Left = 72
                Top = 16
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 1
                OnClick = BitBtn1Click
              end
              object DBEdit55: TDBEdit
                Left = 97
                Top = 16
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA2'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit56: TDBEdit
                Left = 190
                Top = 16
                Width = 217
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA20'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
            object GroupBox17: TGroupBox
              Left = 0
              Top = 92
              Width = 902
              Height = 46
              Align = alTop
              Caption = 'DUPLICATAS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object BitBtn13: TBitBtn
                Left = 72
                Top = 16
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 0
                OnClick = BitBtn13Click
              end
              object DBEdit30: TDBEdit
                Left = 97
                Top = 16
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA8'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 1
              end
              object DBEdit28: TDBEdit
                Left = 8
                Top = 16
                Width = 64
                Height = 20
                DataField = 'PLANO_DUPLICATA_NFE'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 2
              end
              object DBEdit26: TDBEdit
                Left = 190
                Top = 16
                Width = 217
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA80'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
          end
          object TabSheet10: TRzTabSheet
            Caption = 'Orden de Servi'#231'o'
            object GroupBox3: TGroupBox
              Left = 0
              Top = 46
              Width = 902
              Height = 46
              Align = alTop
              Caption = 'O.S. '#192' VISTA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object DBEdit29: TDBEdit
                Left = 8
                Top = 16
                Width = 64
                Height = 20
                DataField = 'PLANO_OS_AV'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 0
              end
              object BitBtn14: TBitBtn
                Left = 72
                Top = 16
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 1
                OnClick = BitBtn14Click
              end
              object DBEdit31: TDBEdit
                Left = 97
                Top = 16
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA3'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit32: TDBEdit
                Left = 190
                Top = 16
                Width = 217
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA30'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
            object GroupBox19: TGroupBox
              Left = 0
              Top = 0
              Width = 902
              Height = 46
              Align = alTop
              Caption = 'O.S. '#192' PRAZO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object DBEdit35: TDBEdit
                Left = 190
                Top = 16
                Width = 217
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA40'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 0
              end
              object BitBtn15: TBitBtn
                Left = 72
                Top = 16
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 1
                OnClick = BitBtn15Click
              end
              object DBEdit33: TDBEdit
                Left = 8
                Top = 16
                Width = 64
                Height = 20
                DataField = 'PLANO_OS_AP'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 2
              end
              object DBEdit34: TDBEdit
                Left = 97
                Top = 16
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA4'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
          end
          object TabSheet11: TRzTabSheet
            Caption = 'Entradas'
            object GroupBox22: TGroupBox
              Left = 0
              Top = 46
              Width = 902
              Height = 46
              Align = alTop
              Caption = 'RECEBIMENTO DE CREDI'#193'RIO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object DBEdit39: TDBEdit
                Left = 8
                Top = 16
                Width = 64
                Height = 20
                DataField = 'PLANO_RECEBIMENTO_CREDIARIO'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 0
              end
              object BitBtn18: TBitBtn
                Left = 72
                Top = 16
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 1
                OnClick = BitBtn18Click
              end
              object DBEdit40: TDBEdit
                Left = 97
                Top = 16
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA5'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit41: TDBEdit
                Left = 190
                Top = 16
                Width = 217
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA50'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
            object GroupBox20: TGroupBox
              Left = 0
              Top = 0
              Width = 902
              Height = 46
              Align = alTop
              Caption = 'ENTRADAS DIVERSAS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object DBEdit38: TDBEdit
                Left = 190
                Top = 16
                Width = 217
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA60'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 0
              end
              object BitBtn16: TBitBtn
                Left = 72
                Top = 16
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 1
                OnClick = BitBtn16Click
              end
              object DBEdit36: TDBEdit
                Left = 8
                Top = 16
                Width = 64
                Height = 20
                DataField = 'PLANO_OUTRAS_ENTRADAS'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 2
              end
              object DBEdit37: TDBEdit
                Left = 97
                Top = 16
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA6'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
          end
          object TabSheet16: TRzTabSheet
            Caption = 'Sa'#237'das'
            object GroupBox21: TGroupBox
              Left = 0
              Top = 0
              Width = 902
              Height = 46
              Align = alTop
              Caption = 'SA'#205'DAS DIVERSAS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object DBEdit42: TDBEdit
                Left = 8
                Top = 16
                Width = 64
                Height = 20
                DataField = 'PLANO_OUTRAS_SAIDAS'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 0
              end
              object BitBtn17: TBitBtn
                Left = 72
                Top = 16
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 1
                OnClick = BitBtn17Click
              end
              object DBEdit43: TDBEdit
                Left = 97
                Top = 16
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA7'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit44: TDBEdit
                Left = 190
                Top = 16
                Width = 217
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA70'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
            end
          end
          object TabSheet17: TRzTabSheet
            Caption = 'Imovies'
            object GroupBox9: TGroupBox
              Left = 0
              Top = 260
              Width = 902
              Height = 65
              Align = alTop
              Caption = 'Boletos a Receber'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Label28: TLabel
                Left = 7
                Top = 20
                Width = 36
                Height = 13
                Caption = 'Cr'#233'dito:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label29: TLabel
                Left = 8
                Top = 39
                Width = 34
                Height = 13
                Caption = 'D'#233'bito:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object BitBtn2: TBitBtn
                Left = 147
                Top = 37
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 0
                OnClick = blocregiaoClick
              end
              object DBEdit49: TDBEdit
                Left = 83
                Top = 37
                Width = 64
                Height = 20
                DataField = 'PLANO_VENDA_AV'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 1
              end
              object DBEdit50: TDBEdit
                Left = 265
                Top = 37
                Width = 368
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA10'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit51: TDBEdit
                Left = 172
                Top = 37
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA1'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
              object DBEdit52: TDBEdit
                Left = 266
                Top = 13
                Width = 367
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA10'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 4
              end
              object DBEdit53: TDBEdit
                Left = 173
                Top = 13
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA1'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 5
              end
              object DBEdit54: TDBEdit
                Left = 84
                Top = 13
                Width = 64
                Height = 20
                DataField = 'PLANO_VENDA_AV'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 6
              end
              object BitBtn3: TBitBtn
                Left = 148
                Top = 12
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 7
                OnClick = blocregiaoClick
              end
            end
            object GroupBox12: TGroupBox
              Left = 0
              Top = 0
              Width = 902
              Height = 65
              Align = alTop
              Caption = 'Aquisi'#231#227'o de Im'#243'vel'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object Label30: TLabel
                Left = 7
                Top = 20
                Width = 36
                Height = 13
                Caption = 'Cr'#233'dito:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label31: TLabel
                Left = 8
                Top = 39
                Width = 34
                Height = 13
                Caption = 'D'#233'bito:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object BitBtn4: TBitBtn
                Left = 147
                Top = 37
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 0
                OnClick = blocregiaoClick
              end
              object DBEdit57: TDBEdit
                Left = 83
                Top = 37
                Width = 64
                Height = 20
                DataField = 'PLANO_VENDA_AV'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 1
              end
              object DBEdit58: TDBEdit
                Left = 265
                Top = 37
                Width = 368
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA10'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit59: TDBEdit
                Left = 172
                Top = 37
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA1'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
              object DBEdit60: TDBEdit
                Left = 266
                Top = 13
                Width = 367
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA10'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 4
              end
              object DBEdit61: TDBEdit
                Left = 173
                Top = 13
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA1'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 5
              end
              object DBEdit62: TDBEdit
                Left = 84
                Top = 13
                Width = 64
                Height = 20
                DataField = 'PLANO_VENDA_AV'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 6
              end
              object BitBtn5: TBitBtn
                Left = 148
                Top = 12
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 7
                OnClick = blocregiaoClick
              end
            end
            object GroupBox13: TGroupBox
              Left = 0
              Top = 65
              Width = 902
              Height = 65
              Align = alTop
              Caption = 'Venda de Im'#243'vel'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object Label32: TLabel
                Left = 7
                Top = 20
                Width = 36
                Height = 13
                Caption = 'Cr'#233'dito:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label33: TLabel
                Left = 8
                Top = 39
                Width = 34
                Height = 13
                Caption = 'D'#233'bito:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object BitBtn6: TBitBtn
                Left = 147
                Top = 37
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 0
                OnClick = blocregiaoClick
              end
              object DBEdit63: TDBEdit
                Left = 83
                Top = 37
                Width = 64
                Height = 20
                DataField = 'PLANO_VENDA_AV'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 1
              end
              object DBEdit64: TDBEdit
                Left = 265
                Top = 37
                Width = 368
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA10'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit65: TDBEdit
                Left = 172
                Top = 37
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA1'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
              object DBEdit66: TDBEdit
                Left = 266
                Top = 13
                Width = 367
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA10'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 4
              end
              object DBEdit67: TDBEdit
                Left = 173
                Top = 13
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA1'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 5
              end
              object DBEdit68: TDBEdit
                Left = 84
                Top = 13
                Width = 64
                Height = 20
                DataField = 'PLANO_VENDA_AV'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 6
              end
              object BitBtn7: TBitBtn
                Left = 148
                Top = 12
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 7
                OnClick = blocregiaoClick
              end
            end
            object GroupBox14: TGroupBox
              Left = 0
              Top = 130
              Width = 902
              Height = 65
              Align = alTop
              Caption = 'Terrenos a Comercializar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              object Label34: TLabel
                Left = 7
                Top = 20
                Width = 36
                Height = 13
                Caption = 'Cr'#233'dito:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label35: TLabel
                Left = 8
                Top = 39
                Width = 34
                Height = 13
                Caption = 'D'#233'bito:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object BitBtn8: TBitBtn
                Left = 147
                Top = 37
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 0
                OnClick = blocregiaoClick
              end
              object DBEdit69: TDBEdit
                Left = 83
                Top = 37
                Width = 64
                Height = 20
                DataField = 'PLANO_VENDA_AV'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 1
              end
              object DBEdit70: TDBEdit
                Left = 265
                Top = 37
                Width = 368
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA10'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit71: TDBEdit
                Left = 172
                Top = 37
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA1'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
              object DBEdit72: TDBEdit
                Left = 266
                Top = 13
                Width = 367
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA10'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 4
              end
              object DBEdit73: TDBEdit
                Left = 173
                Top = 13
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA1'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 5
              end
              object DBEdit74: TDBEdit
                Left = 84
                Top = 13
                Width = 64
                Height = 20
                DataField = 'PLANO_VENDA_AV'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 6
              end
              object BitBtn9: TBitBtn
                Left = 148
                Top = 12
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 7
                OnClick = blocregiaoClick
              end
            end
            object GroupBox15: TGroupBox
              Left = 0
              Top = 195
              Width = 902
              Height = 65
              Align = alTop
              Caption = 'Intemedia'#231#227'o/Comiss'#245'es'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              object Label36: TLabel
                Left = 7
                Top = 20
                Width = 36
                Height = 13
                Caption = 'Cr'#233'dito:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label37: TLabel
                Left = 8
                Top = 39
                Width = 34
                Height = 13
                Caption = 'D'#233'bito:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object BitBtn10: TBitBtn
                Left = 147
                Top = 37
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 0
                OnClick = blocregiaoClick
              end
              object DBEdit75: TDBEdit
                Left = 83
                Top = 37
                Width = 64
                Height = 20
                DataField = 'PLANO_VENDA_AV'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 1
              end
              object DBEdit76: TDBEdit
                Left = 265
                Top = 37
                Width = 368
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA10'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 2
              end
              object DBEdit77: TDBEdit
                Left = 172
                Top = 37
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA1'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 3
              end
              object DBEdit78: TDBEdit
                Left = 266
                Top = 13
                Width = 367
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA10'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 4
              end
              object DBEdit79: TDBEdit
                Left = 173
                Top = 13
                Width = 91
                Height = 20
                Color = clBtnFace
                DataField = 'PLANO_CONTA1'
                DataSource = DM.DTS_CONFIGURACOES
                TabOrder = 5
              end
              object DBEdit80: TDBEdit
                Left = 84
                Top = 13
                Width = 64
                Height = 20
                DataField = 'PLANO_VENDA_AV'
                DataSource = DM.DTS_CONFIGURACOES
                Enabled = False
                TabOrder = 6
              end
              object BitBtn11: TBitBtn
                Left = 148
                Top = 12
                Width = 25
                Height = 21
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                  9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                  C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                  A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                  E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                  F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                  DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                  F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                  D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                  F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                  DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                  F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                  E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 7
                OnClick = blocregiaoClick
              end
            end
          end
        end
      end
    end
  end
  object OpenDialog1: TOpenPictureDialog
    Ctl3D = False
    Options = [ofHideReadOnly]
    Left = 727
    Top = 224
  end
  object Pop1: TPopupMenu
    Left = 724
    Top = 328
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 114
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 115
      OnClick = btnEditarClick
    end
    object cancelar: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 116
      OnClick = btnCancelarClick
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 117
    end
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      ShortCut = 118
    end
    object Gravar: TMenuItem
      Caption = 'Salvar'
      ShortCut = 121
      OnClick = btnSalvarClick
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
    end
  end
end
