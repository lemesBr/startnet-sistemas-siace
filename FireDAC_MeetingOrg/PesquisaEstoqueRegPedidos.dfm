object FormPesquisaEstoqueRegPedidos: TFormPesquisaEstoqueRegPedidos
  Left = 294
  Top = 179
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Iserir Item  Na Venda (Cupom Fiscal)'
  ClientHeight = 232
  ClientWidth = 552
  Color = 15198183
  Constraints.MinHeight = 29
  Constraints.MinWidth = 150
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 552
    Height = 178
    Align = alClient
    BevelInner = bvLowered
    ParentColor = True
    TabOrder = 0
    object RxLabel6: TRxLabel
      Left = 5
      Top = 104
      Width = 81
      Height = 16
      Caption = 'Quantidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 324
      Top = 104
      Width = 68
      Height = 16
      Caption = 'Desconto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 422
      Top = 105
      Width = 109
      Height = 16
      Caption = 'Valor com Desc..'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 177
      Top = 104
      Width = 117
      Height = 16
      Caption = 'Valor do Produto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 52
      Width = 77
      Height = 16
      Caption = 'C'#243'digo EAN:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 127
      Top = 51
      Width = 144
      Height = 16
      Caption = 'Descri'#231#227'o do Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 383
      Height = 24
      Caption = 'INSERE ITENS COM VALOR NA VENDA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object suiEdit1: TCurrencyEdit
      Left = 324
      Top = 119
      Width = 99
      Height = 29
      AutoSize = False
      BeepOnError = False
      Color = clWhite
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnEnter = suiEdit1Enter
      OnExit = suiEdit1Exit
    end
    object rbValor: TRadioButton
      Left = 90
      Top = 113
      Width = 73
      Height = 17
      Caption = 'Valor'
      Checked = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = True
    end
    object rbPercentagem: TRadioButton
      Left = 91
      Top = 134
      Width = 89
      Height = 17
      Caption = 'Perc.'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object suiEdit2: TAlignEdit
      Left = 429
      Top = 120
      Width = 116
      Height = 28
      Alignment = taRightJustify
      AutoSize = False
      Color = 15263976
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object Edit1: TEdit
      Left = 5
      Top = 66
      Width = 110
      Height = 32
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
    end
    object Edit2: TEdit
      Left = 128
      Top = 67
      Width = 417
      Height = 32
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = Edit2Change
      OnEnter = Edit2Enter
      OnExit = Edit2Exit
    end
    object suiDBEdit3: TCurrencyEdit
      Left = 177
      Top = 119
      Width = 131
      Height = 29
      AutoSize = False
      BeepOnError = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnEnter = qtnEnter
      OnExit = suiDBEdit3Exit
    end
    object qtn: TEdit
      Left = 7
      Top = 120
      Width = 77
      Height = 32
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 178
    Width = 552
    Height = 54
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 1
    object RxLabel1: TRxLabel
      Left = 4
      Top = 20
      Width = 98
      Height = 16
      Caption = 'Estoque Atual:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object suiButton2: TsuiButton
      Left = 393
      Top = 6
      Width = 152
      Height = 43
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Inserir Item - F5'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000012000000130000000100
        040000000000E4000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333330000003333422433333333330000003334222243333333330000003342
        2222243333333300000034222A2222433333330000003222A2A2224333333300
        00003A2A222A222433333300000034A22222A2224333330000004222A2222A22
        243333000000222A3A2224A2224333000000A2A333A2224A2224330000003A33
        333A2224A2224300000033333333A2224A2243000000333333333A2224A22300
        00003333333333A2224A3300000033333333333A222433000000333333333333
        A224330000003333333333333A223300000033333333333333A333000000}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton2Click
      ResHandle = 0
    end
    object suiDBEdit1: TsuiDBEdit
      Left = 110
      Top = 18
      Width = 85
      Height = 22
      TabStop = False
      BorderStyle = bsNone
      Color = clHotLight
      DataField = 'ESTOQUE_ATUAL'
      DataSource = DMC.DTS_PDV
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      UIStyle = DeepBlue
      BorderColor = clSilver
    end
  end
  object MSG_ValorDesconto: TsuiMessageDialog
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
    Text = 'Valor do desconto est'#225' acima do valor m'#225'ximo permitido!!!'
    Left = 469
    Top = 65534
  end
end
