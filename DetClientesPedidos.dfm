object FormDetCli: TFormDetCli
  Left = 470
  Top = 116
  BorderStyle = bsDialog
  Caption = 'Observa'#231#245'es do Cliente:'
  ClientHeight = 150
  ClientWidth = 353
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
  object Panel1: TPanel
    Left = 0
    Top = 110
    Width = 353
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 0
    object NovaVenda: TsuiButton
      Left = 258
      Top = 5
      Width = 85
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Ok'
      AutoSize = False
      ParentFont = False
      UIStyle = MacOS
      TabOrder = 0
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
      ResHandle = 0
    end
  end
  object suiDBMemo1: TsuiDBMemo
    Left = 7
    Top = 14
    Width = 336
    Height = 85
    BorderStyle = bsNone
    DataField = 'OBSERVACOES'
    DataSource = DM.DTS_Clientes
    Enabled = False
    TabOrder = 1
    UIStyle = DeepBlue
    BorderColor = clBlack
  end
end
