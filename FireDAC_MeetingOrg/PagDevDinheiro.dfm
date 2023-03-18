object FormPagDevDinheiro: TFormPagDevDinheiro
  Left = 485
  Top = 260
  BorderStyle = bsDialog
  Caption = 'Pagamento em Dinheiro'
  ClientHeight = 143
  ClientWidth = 328
  Color = clBtnFace
  Constraints.MinWidth = 270
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
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
    Left = 14
    Top = 9
    Width = 298
    Height = 87
    Color = 15263976
    Enabled = False
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 17
      Top = 7
      Width = 95
      Height = 16
      Caption = 'Valor a Pagar:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 18
      Top = 26
      Width = 259
      Height = 35
      TabStop = False
      AutoSize = False
      Color = clBlack
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object suiButton1: TsuiButton
    Left = 70
    Top = 104
    Width = 120
    Height = 35
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Caption = 'Confirmar'
    AutoSize = False
    ParentFont = False
    UIStyle = MacOS
    TabOrder = 1
    Transparent = True
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
    OnClick = suiButton1Click
    ResHandle = 0
  end
  object suiButton2: TsuiButton
    Left = 193
    Top = 104
    Width = 120
    Height = 35
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Caption = 'Cancelar'
    AutoSize = False
    ParentFont = False
    UIStyle = MacOS
    TabOrder = 2
    Transparent = True
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
    OnClick = suiButton2Click
    ResHandle = 0
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
    Left = 15
    Top = 8
  end
  object MSG: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
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
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiStop
    Text = 'Hello world!'
    Left = 43
    Top = 8
  end
end
