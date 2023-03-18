object FormReemissaoPP: TFormReemissaoPP
  Left = 351
  Top = 261
  BorderStyle = bsDialog
  Caption = 'Reemiss'#227'o de Pedidos'
  ClientHeight = 184
  ClientWidth = 497
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
    Width = 497
    Height = 58
    Align = alTop
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 6
      Top = 3
      Width = 146
      Height = 13
      Caption = 'Entre com o N'#186' do Pedido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object suiButton1: TsuiButton
      Left = 236
      Top = 8
      Width = 246
      Height = 41
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Visualizar / Imprimir'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      Enabled = False
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000F30E0000F30E00000001000000010000421821004221
        21004A2121004A29290031313100523131005A31310039393100313939003939
        390042D642004A4A4A007B4A5200844A52004A525200525252005A525200524A
        5A008C4A5A0052525A0063636300736363007B6363006B6B6300736B63007B6B
        63006B5A6B00845A6B007B636B0084636B006B6B6B00846B6B008C6B6B008C63
        7300846B73008C6B73009C6B7300737373007B737300847373007B947300A56B
        7B00A5737B00737B7B007B7B7B00847B7B009C7B7B00A57B7B00AD7B7B007B84
        7B00A5847B0084CE7B008CFF7B00847B84008C7B8400947B8400BD7B84007384
        840084848400A5848400AD848400B58484009C848C00848C8C008C8C8C00948C
        8C009C8C8C00BD8C8C00C68C8C0084948C00BD8C9400C68C9400849494008C94
        9400949494009C9494008C9C940094DE9400AD7B9C008C849C008C949C009494
        9C00AD949C008C9C9C00949C9C009C9C9C00A59C9C00B5A59C009CEF9C00A57B
        A500A5A5A500ADA5A500B5A5A500AD9CAD009CA5AD00BDA5AD00A5ADAD00ADAD
        FD00B5ADAD00ADB5B500B5B5B500B5B5BD00BDB5BD00B5BDBD00BDBDBD00BDD6
        BD00C6C6C600CEC6C600C6C6CE00C6CECE00CECECE00D6CECE00CED6CE00D6CE
        D600CED6D600D6D6D600DED6D600D6DEDE00DEDEDE00DEE7DE00E7D6E700DEE7
        E700E7E7E700EFE7E700E7EFE700E7EFEF00EFEFEF00F7EFEF00EFF7F700F7F7
        F700FF00FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00828282828282
        82828282828282828282828282828282828282828282828282825A5555555555
        55555A828282828282828282828282825564737A7D7E7E7E7C76686256828282
        82828282828282820B2B7E816D676A6470846A260B658282828282828282820F
        0B1E7E81736B6F6A73846C170B0F648282828282821E140B0B3A81807671746F
        768472310B0B0B1E828282821E0B0B0B0B3F7972543F40645E7E6D3A0B0B0B0B
        1782822C0B102D0F0B1E556163636464605A51170B13390E0B1E820F142D3A14
        140B0B0B0B0B0B0B0B0B0B0B14116411110B820F355448534C49544A54403145
        4C4954504F6434531A09820F55686661412D221F1F1D1B1C1920213759536464
        5D0B821461755B23243B2F434447464643442A3C29162869640B82256472360D
        383C2F2F30302E2E302F323C3D124E7861148240646E370C0D060B0B0B0B0B0B
        0B0B0B060D0C3E6C613A8268646E52000B03151616151516161618050902566E
        64618282646F5F010B578484848484848484845C0B025C6E648282826863644B
        2741848484848484848483411C42676368828282827D7A7E7B737A8383838484
        848075737A7F7B7C82828282828282828277768184846E646464647282828282
        8282828282828282826F7683847E64646B6A6E73828282828282828282828282
        826A6E818176646484847E6E828282828282828282828282826A6E81816E6476
        847A6E82828282828282828282828282826864737364647E7A6E828282828282
        8282828282828282826A61646464686E6E828282828282828282}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton1Click
      OnKeyPress = suiButton1KeyPress
      ResHandle = 0
    end
    object Edit1: TEdit
      Left = 6
      Top = 19
      Width = 211
      Height = 31
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 58
    Width = 497
    Height = 126
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    Enabled = False
    TabOrder = 1
    object RxLabel2: TRxLabel
      Left = 2
      Top = 2
      Width = 493
      Height = 13
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Informa'#231#245'es do Pedido '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 5
      Top = 25
      Width = 90
      Height = 15
      AutoSize = False
      Caption = 'N'#186' do Pedido:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clWhite
    end
    object DBText2: TDBText
      Left = 95
      Top = 25
      Width = 88
      Height = 15
      Alignment = taCenter
      Color = clLime
      DataField = 'CODIGO'
      DataSource = DMC.DTS_Pedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 5
      Top = 50
      Width = 90
      Height = 15
      AutoSize = False
      Caption = 'Data do Pedido: '
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clWhite
    end
    object DBText1: TDBText
      Left = 269
      Top = 50
      Width = 222
      Height = 15
      Alignment = taCenter
      Color = clLime
      DataField = 'PAGAMENTO'
      DataSource = DMC.DTS_Pedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 5
      Top = 75
      Width = 90
      Height = 15
      AutoSize = False
      Caption = 'Cliente:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clWhite
    end
    object DBText3: TDBText
      Left = 95
      Top = 75
      Width = 56
      Height = 15
      Alignment = taCenter
      Color = clLime
      DataField = 'CODIGO_CLIENTE'
      DataSource = DMC.DTS_Pedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 156
      Top = 75
      Width = 335
      Height = 15
      Color = clLime
      DataField = 'NOME_CLIENTE'
      DataSource = DMC.DTS_Pedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 188
      Top = 25
      Width = 80
      Height = 15
      AutoSize = False
      Caption = 'Vendedor:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clWhite
    end
    object DBText5: TDBText
      Left = 269
      Top = 25
      Width = 222
      Height = 15
      Alignment = taCenter
      Color = clLime
      DataField = 'USUARIO'
      DataSource = DMC.DTS_Pedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel7: TRxLabel
      Left = 188
      Top = 50
      Width = 80
      Height = 15
      AutoSize = False
      Caption = 'Pagamento:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clWhite
    end
    object DBText6: TDBText
      Left = 95
      Top = 50
      Width = 88
      Height = 15
      Alignment = taCenter
      Color = clLime
      DataField = 'DATA_PEDIDO'
      DataSource = DMC.DTS_Pedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 200
      Top = 100
      Width = 80
      Height = 15
      AutoSize = False
      Caption = 'Valor a Pagar:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clWhite
    end
    object DBText7: TDBText
      Left = 281
      Top = 100
      Width = 209
      Height = 15
      Alignment = taRightJustify
      Color = clLime
      DataField = 'VALOR_TOTAL'
      DataSource = DMC.DTS_Pedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object mFormas: TMemo
      Left = 15
      Top = 125
      Width = 153
      Height = 44
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object edCod: TEdit
      Left = 200
      Top = 128
      Width = 193
      Height = 21
      Cursor = crIBeam
      TabOrder = 1
    end
    object mResp: TMemo
      Left = 41
      Top = 184
      Width = 328
      Height = 17
      Align = alCustom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 13
      Font.Name = 'Courier'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 2
      WantReturns = False
      WordWrap = False
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 72
    Width = 481
    Height = 113
    BevelWidth = 2
    BiDiMode = bdLeftToRight
    BorderStyle = bsSingle
    Color = clNavy
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    Visible = False
    object Gauge2: TRzDBProgressBar
      Left = 10
      Top = 5
      Width = 463
      BaseField = 'CODIGO'
      BaseValue = 100.000000000000000000
      DataField = 'CODIGO'
      DataSource = DMC.DTS_Pedido_Itens
      BorderWidth = 0
      InteriorOffset = 0
    end
    object Label7: TLabel
      Left = 9
      Top = 30
      Width = 125
      Height = 13
      Caption = 'Imprimindo Cupom Fiscal...'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Gauge1: TGauge
      Left = 8
      Top = 44
      Width = 467
      Height = 21
      ForeColor = clBtnText
      Progress = 0
    end
    object Memo1: TMemo
      Left = 303
      Top = 69
      Width = 153
      Height = 44
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      Visible = False
    end
    object Edit2: TEdit
      Left = 256
      Top = 84
      Width = 33
      Height = 21
      Cursor = crIBeam
      TabOrder = 1
      Visible = False
    end
    object Edit3: TEdit
      Left = 64
      Top = 76
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Memo2: TMemo
      Left = 49
      Top = 102
      Width = 328
      Height = 3
      Align = alCustom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 13
      Font.Name = 'Courier'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 3
      WantReturns = False
      WordWrap = False
    end
  end
  object MessageLocCli: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Aten'#231#227'o !!!'
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
    Text = 'Pedido Inexistente !!! Tente Outro N'#250'mero!!!'
    Left = 248
    Top = 1
  end
  object MessageCli: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o!!!'
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
    Text = 'Digite o N'#250'mero do Pedido !!!'
    Left = 336
    Top = 1
  end
  object Impressao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Confirma'#231#227'o para Impress'#227'o'
    UIStyle = BlueGlass
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
    Text = 'Confirma Impress'#227'o da Duplicata?'
    Left = 493
    Top = 136
  end
  object Contrato: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Impress'#227'o do contrato...'
    UIStyle = BlueGlass
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
    Text = 'Deseja Imprimir o Contrato de Venda?'
    Left = 493
    Top = 168
  end
  object ecfimprimir: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Confirma'#231#227'o para Impress'#227'o'
    UIStyle = BlueGlass
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
    Text = 'Confirma Impress'#227'o do Cupom Fiscal?'
    Left = 736
    Top = 64
  end
  object RvRenderPDF1: TRvRenderPDF
    DisplayName = 'FDobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    DocInfo.Creator = 'Rave (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    Left = 177
  end
  object RvRenderHTML1: TRvRenderHTML
    DisplayName = 'Web Page (HTML)'
    FileExtension = '*.html;*.htm'
    ServerMode = False
    UseBreakingSpaces = False
    Left = 153
  end
  object RvRenderRTF1: TRvRenderRTF
    DisplayName = 'Rich Text Format (RTF)'
    FileExtension = '*.rtf'
    Left = 209
  end
  object RvRenderText1: TRvRenderText
    DisplayName = 'Plain Text (TXT)'
    FileExtension = '*.txt'
    CPI = 10.000000000000000000
    LPI = 6.000000000000000000
    Left = 121
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
  object Timer1: TTimer
    OnTimer = Timer1Timer
  end
end
