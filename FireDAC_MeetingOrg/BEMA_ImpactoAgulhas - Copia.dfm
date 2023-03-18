object FormImpactoAgulhas: TFormImpactoAgulhas
  Left = 409
  Top = 138
  BorderStyle = bsDialog
  Caption = 'For'#231'a de Impacto das Agulhas'
  ClientHeight = 205
  ClientWidth = 371
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 6
    Top = 56
    Width = 322
    Height = 39
    Caption = 
      '- A sele'#231#227'o de uma for'#231'a de impacto diferente da default implica' +
      ' na'#13#10' diminui'#231#227'o da vida '#250'til do cabe'#231'ote de impress'#227'o. '#13#10'- Impa' +
      'cto fraco (default) '
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 0
    Top = 0
    Width = 371
    Height = 26
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'Permite tornar a impress'#227'o mais forte nos equipamentos '#13#10'baseado' +
      's na MP-20 FI II. '
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 5
    Top = 40
    Width = 80
    Height = 14
    Caption = 'Observa'#231#245'es:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 5
    Top = 103
    Width = 356
    Height = 51
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 7
      Top = 3
      Width = 149
      Height = 13
      Caption = 'For'#231'a de Impacto das Agulhas:'
    end
    object RadioButton1: TRadioButton
      Left = 30
      Top = 22
      Width = 57
      Height = 17
      Caption = 'Fraco'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 150
      Top = 22
      Width = 65
      Height = 17
      Caption = 'M'#233'dio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object RadioButton3: TRadioButton
      Left = 270
      Top = 22
      Width = 65
      Height = 17
      Caption = 'Forte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object suiButton2: TsuiButton
    Left = 250
    Top = 164
    Width = 109
    Height = 33
    Caption = 'Cancela'
    AutoSize = False
    UIStyle = MacOS
    TabOrder = 1
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
  object suiButton1: TsuiButton
    Left = 130
    Top = 164
    Width = 109
    Height = 33
    Caption = 'Confirma'
    AutoSize = False
    UIStyle = MacOS
    TabOrder = 2
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
end
