object FormRCConta: TFormRCConta
  Left = 465
  Top = 210
  BorderStyle = bsSingle
  Caption = 'Baixa Total da Conta do Cliente (Credi'#225'rio)'
  ClientHeight = 418
  ClientWidth = 587
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
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 269
    Top = 32
    Width = 164
    Height = 13
    Caption = 'Selecione a Op'#231#227'o de Pagamento.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 6
    Top = 32
    Width = 175
    Height = 13
    Caption = 'Valor da Conta do Cliente a receber:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 108
    Width = 251
    Height = 57
    Caption = 'Desconto por Valor e %'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label17: TLabel
      Left = 8
      Top = 28
      Width = 14
      Height = 13
      Caption = '%:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 118
      Top = 27
      Width = 21
      Height = 13
      Caption = 'R$:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 21
      Top = 24
      Width = 92
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '% ,0.0000;-R$ ,0.0000'
      TabOrder = 0
      OnKeyPress = CurrencyEdit4KeyPress
    end
    object CurrencyEdit5: TCurrencyEdit
      Left = 136
      Top = 24
      Width = 93
      Height = 21
      AutoSize = False
      TabOrder = 1
      OnKeyPress = CurrencyEdit5KeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 176
    Width = 587
    Height = 242
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 1
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 583
      Height = 195
      Align = alClient
      BevelOuter = bvNone
      Color = 15263976
      Enabled = False
      TabOrder = 0
      object Label16: TLabel
        Left = 4
        Top = 50
        Width = 77
        Height = 13
        Caption = 'Nome Banco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 4
        Top = 100
        Width = 69
        Height = 13
        Caption = 'N'#186' Ag'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 4
        Top = 125
        Width = 74
        Height = 13
        Caption = 'N'#186' da Conta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 186
        Top = 125
        Width = 84
        Height = 13
        Caption = 'N'#186' do Cheque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 259
        Top = 100
        Width = 95
        Height = 13
        Caption = 'Tipo de Cheque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 377
        Top = 125
        Width = 78
        Height = 13
        Caption = 'Conta Desde:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 4
        Top = 75
        Width = 41
        Height = 13
        Caption = 'Titular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 4
        Top = 2
        Width = 115
        Height = 13
        Caption = 'Data para Deposito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 269
        Top = 3
        Width = 99
        Height = 13
        Caption = 'Valor do Cheque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 123
        Top = 2
        Width = 102
        Height = 13
        Caption = 'Valor Pre-Datado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 475
        Top = 2
        Width = 89
        Height = 13
        Caption = 'Valor do Troco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 4
        Top = 155
        Width = 63
        Height = 13
        Caption = 'Codigo Ch:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 356
        Top = 50
        Width = 84
        Height = 13
        Caption = 'Compensa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DateEdit1: TDateEdit
        Left = 456
        Top = 125
        Width = 109
        Height = 19
        Color = 15263976
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 10
        OnEnter = DateEdit1Enter
        OnExit = DateEdit1Exit
      end
      object N_CONTA: TsuiEdit
        Left = 85
        Top = 125
        Width = 98
        Height = 19
        UIStyle = DeepBlue
        BorderColor = clBlack
        CharCase = ecUpperCase
        Color = 15263976
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        OnEnter = N_CONTAEnter
        OnExit = N_CONTAExit
      end
      object N_CHEQUE: TsuiEdit
        Left = 270
        Top = 125
        Width = 103
        Height = 19
        UIStyle = DeepBlue
        BorderColor = clBlack
        CharCase = ecUpperCase
        Color = 15263976
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        OnEnter = N_CHEQUEEnter
        OnExit = N_CHEQUEExit
      end
      object suiEdit1: TsuiEdit
        Left = 85
        Top = 75
        Width = 480
        Height = 19
        UIStyle = FromThemeFile
        BorderColor = clBlack
        CharCase = ecUpperCase
        Color = 15263976
        TabOrder = 5
        OnEnter = suiEdit1Enter
        OnExit = suiEdit1Exit
      end
      object ComboBox2: TsuiComboBox
        Left = 356
        Top = 100
        Width = 209
        Height = 21
        UIStyle = FromThemeFile
        BorderColor = clBlack
        ArrowColor = clBlack
        ButtonColor = 15263976
        CharCase = ecUpperCase
        Color = 15263976
        TabOrder = 7
        Text = 'COMUM'
        OnEnter = ComboBox2Enter
        OnExit = ComboBox2Exit
        Items.Strings = (
          'ESPECIAL'
          'PRE'
          'COMUM'
          'OURO'
          '')
      end
      object DateEdit2: TDateEdit
        Left = 5
        Top = 17
        Width = 113
        Height = 19
        Color = 15263976
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = DateEdit2Enter
        OnExit = DateEdit2Exit
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 271
        Top = 17
        Width = 140
        Height = 20
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 122
        Top = 17
        Width = 140
        Height = 20
        TabStop = False
        AutoSize = False
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 424
        Top = 17
        Width = 140
        Height = 20
        TabStop = False
        AutoSize = False
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
      object DBLOOKUPCOMBOBOX1: TsuiEdit
        Left = 85
        Top = 48
        Width = 260
        Height = 19
        UIStyle = FromThemeFile
        BorderColor = clBlack
        CharCase = ecUpperCase
        Color = 15263976
        TabOrder = 3
        OnEnter = suiEdit1Enter
        OnExit = suiEdit1Exit
      end
      object DBLCB_AGENCIA: TsuiEdit
        Left = 84
        Top = 100
        Width = 158
        Height = 19
        UIStyle = FromThemeFile
        BorderColor = clBlack
        CharCase = ecUpperCase
        Color = 15263976
        TabOrder = 6
        OnEnter = suiEdit1Enter
        OnExit = suiEdit1Exit
      end
      object dbedit4: TsuiEdit
        Left = 85
        Top = 152
        Width = 480
        Height = 19
        UIStyle = FromThemeFile
        BorderColor = clBlack
        CharCase = ecUpperCase
        Color = 15263976
        TabOrder = 2
        OnEnter = suiEdit1Enter
        OnExit = suiEdit1Exit
        OnKeyPress = dbedit4KeyPress
      end
      object suiEdit3: TsuiEdit
        Left = 448
        Top = 48
        Width = 113
        Height = 19
        UIStyle = FromThemeFile
        BorderColor = clBlack
        CharCase = ecUpperCase
        Color = 15263976
        TabOrder = 4
        OnEnter = suiEdit1Enter
        OnExit = suiEdit1Exit
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 197
      Width = 583
      Height = 43
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 1
      object SpSalvar: TsuiButton
        Left = 210
        Top = 4
        Width = 233
        Height = 35
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Caption = 'Confirma &Pagamento no Cheque'
        AutoSize = False
        ParentFont = False
        UIStyle = FromThemeFile
        Enabled = False
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
        OnClick = SpSalvarClick
        ResHandle = 0
      end
      object suiButton6: TsuiButton
        Left = 447
        Top = 4
        Width = 120
        Height = 35
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Caption = 'Cancela'
        AutoSize = False
        ParentFont = False
        UIStyle = FromThemeFile
        Enabled = False
        TabOrder = 1
        Transparent = False
        ModalResult = 0
        FocusedRectMargin = 2
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C005800581F7C005800581F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          005800581F7C1F7C0058005800581F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0058
          00581F7C1F7C1F7C00580058005800581F7C1F7C1F7C1F7C1F7C1F7C00580058
          1F7C1F7C1F7C1F7C1F7C0068005C005800581F7C1F7C1F7C1F7C005800581F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C0058005800581F7C0058005800581F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C005800600060006400581F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C00600060006C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C005800680064006C00741F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C0070006C00681F7C1F7C007000741F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C007C006C00741F7C1F7C1F7C1F7C007C00781F7C
          1F7C1F7C1F7C1F7C1F7C00780078007C1F7C1F7C1F7C1F7C1F7C1F7C00780078
          1F7C1F7C1F7C1F7C0078007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          00781F7C1F7C0078007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C}
        Layout = blGlyphLeft
        Spacing = 4
        MouseContinuouslyDownInterval = 100
        OnClick = suiButton6Click
        ResHandle = 0
      end
    end
  end
  object Panel4: TPanel
    Left = 4
    Top = 57
    Width = 254
    Height = 41
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 15263976
    Enabled = False
    TabOrder = 2
    object Label12: TLabel
      Left = 2
      Top = 2
      Width = 250
      Height = 37
      Align = alClient
      Alignment = taRightJustify
      Caption = 'Label12'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 146
      ExplicitWidth = 106
      ExplicitHeight = 33
    end
  end
  object suiButton1: TsuiButton
    Left = 269
    Top = 57
    Width = 130
    Height = 40
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Caption = '&Dinheiro'
    AutoSize = False
    ParentFont = False
    UIStyle = FromThemeFile
    TabOrder = 3
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3DEE2B2BAB5889A8D
      6D89787A8C7FB6B6B7FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0CDCF98A89D6F8C786A
      937377A48278A37E78A28077A27E6F9B7A64836D949D97E8E3E7FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8B3AC5F7C67638D
      6D719A7A77A07E7CA484779F7D7CA4887AA382789E82779F7F79A38076A28063
      886D859289E2DDE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      99ACA06086696E9276739A7B79A0817CA5847EA8867BA6827BA4837AA3817BA5
      847AA181789E8079A28177A380658C6E7C8C82DAD5D9FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF97A89D63886A719679759D7C7AA3837BA5827CA58479A281
      789E80779E7F7AA3817CA6847CA6847AA282779E7F79A28177A27F658C707F8C
      83E2DADBFFFFFFFFFFFFFFFFFFFFFFFFB8C4BE63896B6B9070769C7F759B7B78
      9F83749B7D7AA185789F7E779C8172977A769C7D79A0807CA6857CA5837AA282
      779E80779F7F70967079C2C38A9C9DF5F0F1FFFFFFFFFFFF93A4996083676F92
      7873987E79A18181AD8987B58D89B98E89BA8F8ABA8E85B38D7BA38473977C74
      9A7C78A1807CA6847BA5837AA1826E8F6D90E0E283D8D9A6ACA2FFFFFFFFFFFF
      94AA9D5982606C95717AA57E7DAD8287B88D8EBF9390C39692C59893C59890C3
      968DBF928ABA907FA98773987D72987B779E7F7BA38272946F92E2E580CECECD
      CDC7FFFFFFFFFFFFF8F9F8B3C5B6A4BCA8B3CAB5AFCBB38EB99284B88992C498
      94C89A90C79694C99A9ACA9D90C3918BBF8F8BBC9181AD8A74997E7197796F8E
      6C92E4E981CDCCC8CAC3FFFFFFFFFFFFFFFFFFFFFFFF839F8C8CAF95A7C1AADF
      EFDFC5DBC883B5888FC195BBD8B9C0D6BCBED5BFC3EBEFB8DAC390C49589BD8E
      8FBE947DA9866B876792E5EB7FCAC9CFCFC9FFFFFFFFFFFFFFFFFF7C9B8475A0
      7E77A07F749F7E76A07F6F9B7679A57DA2C5A1BFDFD3BDF6FFC0FDFFBCF0F6BF
      D8C3A1CDA1B7D8B8BFD9BBB5CCAC89B7A398F5FC7FCCCBC7C7C2FFFFFFFFFFFF
      D7DBD9709E7B7BA3817AA3837BA5837BA4837BA28479A085729C7995B793ABC9
      A9B4D2B9AFCBA79FC39586B48887C1A68DD4CF95F3FF96F6FF8ED5D3669B85D0
      D4D0FFFFFFFFFFFF9BB2A277A27F7CA5867BA5827BA483789F8079A08383B088
      8CBE9286B78F7AA17F6D9D7D83C7BA8CDDE19BFBFF95F2FC7FC7BF70A68C7794
      73B7C5B2F9F6F6FFFFFFFFFFFFFFFDFF70997B7CA5827CA5847DA6867BA3827A
      A28481AE858CBD9291C597A7D2A9C1DBC6B2F2FF9CDFDF86C7C076AF9F889E80
      C9D3C6F9F4F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCED4D0729F7B7CA4867DA6
      847DA6857BA2857DA9838ABA8F92C59890C796BED8B9BAEDF4C4E9E79ABB8880
      CFC799DCE2FFFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FA996
      739D7B79A1817CA5837CA5847BA38483B1878DBE9393C6988DC294C5DEC5C5E2
      D597BD9368966FC8DDE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF698F73759C7D78A0827AA2817AA1827BA58386B48B8DBE9387BC8D
      8BBB9085B58972A1769DB7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD9DDDB618A6972967A729978759D7C7AA1857BA7817F
      B08581B387DFEBE0699E6F87AA8EEFEFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D1CC63886E668C6E6F9477749A
      7E759B7E7DA6819DBEA0DBE8DC9CBAA1CAD4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEDEF
      849D8C62886A6C90726A92719CB89FB1C9B5A9C0B0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFBFC8C45F866B5D8663BAC9BEF0F1F1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D1CCE2E6E5FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton1Click
    ResHandle = 0
  end
  object suiButton3: TsuiButton
    Left = 357
    Top = 113
    Width = 130
    Height = 40
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Caption = 'C&art'#227'o'
    AutoSize = False
    ParentFont = False
    UIStyle = FromThemeFile
    TabOrder = 4
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D8D8B1AEAAB2AFABC1C1C0D3
      D4D5E2E3E4EAEBECF1F1F2F8F9F9FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAEABEFE7
      E1EFEBE5E5E0DBD4CEC8C6C0B8C2BCB3C0BCB8B9B5AFB0ACA4B2B0ACC5C5C6D4
      D5D6E2E3E4E9EAEAF2F2F3F8F9FAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F7F7F8B2ADA3E0DBD8EDEAE8F2F0EFF4F2F1EDECEAEFEDEBF0EDEAEFECEAF2EE
      ECEEEAE4DED9D1D1CBC4C8C2BBC7C2BDBEB9B3B7B1A8B0ADA7B6B5B4C8CACCFE
      FFFFFFFFFFFFFFFFE9EAEAC6C1BBB0AEAD89888AA4A3A3999899D8D7D5B6B4B5
      C9C7C7D2D1D0DEDDDCEFECEBEFEDEAF3F0ECF1EEEBECE9E6EDE8E4F0ECEAF4F0
      EDE9E4DEAD8F72C3B9AAFFFFFFFFFFFFDADBDCC8C0B6BCBAB9B3B1B2A9A7A8B2
      B1B1C0BDBEADABAC959395A8A5A6878688D4D1D1A2A0A1A6A4A5A3A2A3C8C6C5
      CCCBC9D4D0CFE7E5E5CBB8A3CDB199DED9D3FFFFFFFFFFFFBFC0C0D9CEC5F3EC
      E7F9F4F0F8F3F0F7F2EFF1ECE9E2DEDCDCD8D5CAC7C6C5C1C0D6D3D1989697AE
      ACAC929091D2CECCA8A5A5AAA8A885828087796EAD9781F0F2F3FFFFFFFDFDFE
      AFABA4E6DBD4A09A99B2ADACD3CDCAC8C3C1E1DAD6DFDAD5E8E1DEF2EBE6EDE8
      E3ECE6E1F3EDE8F0EAE6EAE4E1EEE8E4D5D0CDC6C3C3A59688AA9E92C3AF96FF
      FFFFFFFFFFF1F2F2B8B1ABE9DDD6A39F9FA9A4A29390908A8787C9C1BE8A8687
      9C98968E8988F1E7E1E7DED9E7DED9E8DED9E8DFD9E8DED9EDE4E0D9CBBCE0C9
      B0E7D0B7C6B7A3FFFFFFFFFFFFE3E4E5B9AEA4DFD1C9ECE0D9F1E6E0F4E9E4F6
      EBE8DAD2D0DFD6D4D3CAC9C8C0BEEBDFDAE6DBD5E6DAD5E6DAD5E6DAD5E7DCD7
      E1D7D1D6C1A6E2CFB8E6D1B9D5CDC1FFFFFFFFFFFFD1D3D5C1B2A5E1D4CCE7DC
      D5D2C4B6BCA893B8A18CBBA38DBEA791C0AC97D1C1B3DACCBDEDDFCDEEE1D2E7
      DBD4E6DAD4DACCC3D3C0A7E7D3BCE5D2BCE2CDB3DEDBD7FFFFFFFFFFFFB1B1AF
      E0CCC0C6B4A2B29880BDA48DC7AD98CAB29CCFB7A1D2BBA5D6C0A9E7CFA4D5C1
      AA7E72B1988BAFE5CD97E3C2A1FAD4AEFFDBB8EFD4B8E6D3BCD0BCA0F6F7FAFF
      FFFFFAFBFCADA9A3BDA48BC2A891C8B29BCCB59FCFB9A3D2BDA5D6C0AAD9C3AD
      F1DAAB7F76D00000EC0000EE0000EC2F31E36BC0D21796E41F99E29CC0CDFBD9
      B8C8B9A5FFFFFFFFFFFFF0F1F3AEA08FCCB39CCDB7A1D1BBA4D4BEA8D7C2ABDB
      C5AEDDC8B1E6D1B3B4A8C60000E90000F30000F90000F51353E8217FE80F96E9
      1195EB0085E5A5C2C7D8C5B2FFFFFFFFFFFFE2E5E7B7A490D4BEA6D5C0A9D8C3
      ADDBC6B0DECAB4E0CDB5E2CFB8F8E3B64340D80000EE0000FA0000FF0E26FB15
      4FE7237DE8149EF4169CF50F95EC3499D5E5CEB8FFFFFFFFFFFFC9CBCDD0B89D
      DCC7B0DDC9B2DFCBB5E1CDB7E4D0B9E5D1BAE5D2BBFAE5B63D3AD90000EC0000
      F80000FD1455E627A4E6209BEF159DF6169DF61095ED2E91C8FAEBDFFFFFFFFF
      FFFFE4E4E4CBB79DCFBAA1DBC5AAE5CFB5E7D3BBE7D2BAE5D1B9E6D3BBEFDBBA
      ACA0CB0000E60000EE0000F10E45EE1150E1249FEC149AF11699EF0090ED6A8E
      96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F6F7E0DED9DDD6CBDDD5CBDD
      D3C3CDBEA9CEBCA4EAD3A39889BD0504DC0000E05747C81EA2D3008AE30990E8
      0090F04B98BEBC936BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F4E8FCF8D7FDF5D0E3D5B3D7
      B99A88A6AD699AAE928467A2692CB9AC99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAECECFCFCFCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton3Click
    ResHandle = 0
  end
  object suiButton2: TsuiButton
    Left = 446
    Top = 57
    Width = 130
    Height = 40
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Caption = '&Cheque'
    AutoSize = False
    ParentFont = False
    UIStyle = FromThemeFile
    TabOrder = 5
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000130B0000130B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9EAEAEAFBFBFBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBCDC9C5BCB5AECACAC9F7F7F7
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDECD5D3D0D6CCC3D8
      CEC4BFB6ADC1BFBEF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEA096
      88B8B0A9E0D8D1D6CFC7DCD2CAC5BBB2BAB8B6F0F0F0FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FEFEFEE3E3E28E7A62BCB1A4D5D2CDD5CFC6C7BEB4DED6CECBC1B7B5B2AEE9E9
      E9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFEBEBEBCDC6BFB7A797967C5CB4AEA6EAE7E2DCD7D0C1B7AC
      DED7CFD0C6BCAFABA6E3E3E3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4CAC5BED9CFC6E4DFD971522ECAB9A3C6
      C3BEE9E6E1E3DFD9BEB4A9DED7D0D6CBC1B0AAA4DBDBDBFCFCFCFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9C9C5BFDAD0C7DBD6CEEAE7
      E2A99986977954B8B0A6E9E6E0E9E6E1E6E2DCD2CBC3E3DED7D7CCC2B4ADA6D0
      D0CFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D5D2DAD1C7
      E5E0DAB9AFA3BEB5A9E1DDD66D4D26CCB89EB5B1ABEAE7E2E9E6E1E9E6E2C6BE
      B4ABA7A0C5BAB2BCB3ABC5C4C3F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE7E5E3DED6CFDED6CFEAE7E2C4BBB1B4AA9E9E8B749C7C53A79D8FC4BEB4
      EAE7E2E9E6E1EDEAE55855518A8782DBD2C9C1B9AFBEBDBBF2F2F2FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFEBE9E7DDD6CFDCD4CCE9E6E1CEC7BEA1938371
      4F27D0BCA0A09A91BFB6ABE6E3DEE6E3DE595856484643BFB8AFDCD4CBC7BDB4
      B7B4B2EDEDEDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEDDED9D2DBD1
      C8E8E4DFD9D4CD7D6447A48258BAB2A7D4CFC7A79D91B3B1ADCECBC716161573
      706BC9C0B7DFD7CFCEC3B9B2AEAAE8E8E8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFF4F4F3DED9D3DCD2C9E6E2DCD5CEC577542BD6BFA2BFBCB7DFDAD3B1A6
      99D9D5D0DBD8D3868481D1CFCAE9E6E1E1DAD3D2C8BDB0ABA6DFDFDFFCFCFCFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9DDD8D3DDD3CBE6E1DB947D62A8855A
      BCB4A9E7E4DFE5E1DCD4CEC6D9D4CCECE9E38F8D8AE0DDD8E9E6E1E3DED8D6CC
      C2B2ABA4D5D4D4FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFBDEDBD6DD
      D4CCCABEB279562ED7C1A4B1ACA5E2DFDADAD5CEE8E5E0D7D1CAE8E5DF9E9C98
      E8E5E0E9E6E1E5E0DBD8CDC4B8B0A8D5D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFE3E0DDDED6CE8B7054AD885AC9B7A19D968ED9D4CDE8E5DFEA
      E7E2DAD5CEE5E2DDB1AEABE5E3DEE9E6E1E4DED7DCD3CAD1CDC9FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E6E3C9BEB17F5B31D6BE9F968E
      85A59B8ED9D4CCE5E2DCE9E6E1E2DED7E2DDD7D0CECAE8E4DFDBD1C8D4D0CBFB
      FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEBEA
      8C7358B59268BDB4A9AEA89FAB9F91D5D0C9E3DED8E9E6E1DFDBD4DFDAD4D9D0
      C7D5D0C9F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFD7D1CA86633ADEC8ACB2ADA7DBD6CFA49889D5CFC7E0DBD5
      E2DDD7D5CBC2D7D0C9F0EFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF967D63B9956ACEC2B5CDCAC5E3
      DFD9B2A89BE3DFD9D4CBC2D8D0C8E8E7E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD1C88764
      3BDFBE95AAA197E4DED8EAE7E2E1DBD4D9D0C8E3E1DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFDFD967D63B99365B3AA9FDDD5CDDDD5CDDAD0C8DAD8D5FEFEFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD1C87F5D399A8B7ADEDCDAE2DCD5D7D4CF
      FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE2DDD7F5F5F5FF
      FFFFEDEBEAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton2Click
    ResHandle = 0
  end
  object BaixaParcela: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Confirma'#231#227'o !!!'
    UIStyle = FromThemeFile
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
    ButtonCount = 2
    Button1Caption = 'Sim'
    Button2Caption = 'N'#227'o'
    Button3Caption = 'Cancel'
    Button1ModalResult = 6
    Button2ModalResult = 7
    Button3ModalResult = 2
    IconType = suiHelp
    Text = 'Confirma Pagamento em Dinheiro?'
    Left = 507
  end
  object MsgI: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
    UIStyle = FromThemeFile
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
    IconType = suiInformation
    Text = 'Hello world!'
    Left = 474
  end
  object DTS_CHEQUE: TDataSource
    DataSet = SDS_CHEQUE
    Left = 435
    Top = 3
  end
  object SDS_CHEQUE: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from CHEQUES ORDER BY DATA_DEPOSITO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 403
    Top = 3
    object SDS_CHEQUECODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CHEQUECODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_CHEQUEBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_CHEQUEAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_CHEQUECONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_CHEQUECONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SDS_CHEQUETITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_CHEQUETIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_CHEQUEN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_CHEQUEQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_CHEQUEVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Precision = 15
    end
    object SDS_CHEQUECLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_CHEQUERETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_CHEQUERETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_CHEQUEMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_CHEQUEDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_CHEQUEDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_CHEQUEDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object SDS_CHEQUEDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_CHEQUEUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_CHEQUEUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_CHEQUECOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_CHEQUECODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_CHEQUENUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object SDS_CHEQUECOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object SDS_CHEQUECOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object SDS_CHEQUENUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SDS_CHEQUECOD_BARRAS_CHEQUE: TStringField
      FieldName = 'COD_BARRAS_CHEQUE'
      Size = 50
    end
  end
  object SPC_CHEQUE: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'INSERECOD_CHEQUES'
    Left = 355
    Top = 3
  end
  object MSG: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
    UIStyle = FromThemeFile
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
    Text = 'Ocorreu um Erro. Tente Novamente !!!'
    Left = 538
  end
  object qrcaixa_mov: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'select * from MOVIMENTO_DIARIO')
    Left = 208
    Top = 4
  end
end
