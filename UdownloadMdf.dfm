object FormDownloadaMFD: TFormDownloadaMFD
  Left = 410
  Top = 262
  Caption = 'Download da MFD'
  ClientHeight = 152
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 322
    Height = 97
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label2: TLabel
      Left = 208
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object EdtDataIni: TDateTimePicker
      Left = 24
      Top = 24
      Width = 97
      Height = 21
      Date = 40891.000000000000000000
      Time = 0.495097337996412500
      TabOrder = 0
    end
    object EdtDataFin: TDateTimePicker
      Left = 208
      Top = 24
      Width = 97
      Height = 21
      Date = 40891.000000000000000000
      Time = 0.495097337996412500
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 8
      Top = 72
      Width = 265
      Height = 21
      TabOrder = 2
      Text = 'c:\siace\sped\DOWNLOAD.MFD'
    end
    object suiButton2: TsuiButton
      Left = 274
      Top = 71
      Width = 25
      Height = 23
      Hint = 'Salvar Em...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ShowHint = True
      Caption = ''
      AutoSize = False
      ParentShowHint = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 3
      Transparent = True
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70707058585858585858585858585858
        5858585858585858585858585858585858585858707070FFFFFFFFFFFF1C82B5
        1A80B3177DB0157BAE1278AB0F75A80C72A50A70A3076DA0056B9E03699C0167
        9A0066994040405858582187BA66CCFF1F85B899FFFF6ED4FF6ED4FF6ED4FF6E
        D4FF6ED4FF6ED4FF6ED4FF6ED4FF3AA0D399FFFF006699404040248ABD66CCFF
        268CBF99FFFF7AE0FF7AE0FF7AE0FF7AE0FF7AE0FF7AE0FF7AE0FF7AE0FF43A9
        DC99FFFF036A9B404040278DC066CCFF2C92C599FFFF85EBFF85EBFF80EEEF79
        DFFF5EC4FF5EC4FF5EC4FF79DFFF4DB3E699FFFF086F9E404040298FC266CCFF
        3298CB99FFFF91F7FF87F5EB5EC4FF5EC4FF79DFFF79DFFF5EC4FF5EC4FF42A6
        FF5EC4FF0D75A24040402C92C56ED4FF3399CC99FFFF99FFFF5EC4FF79DFFF79
        DFFF99FFFF99FFFF99FFFF5EC4FF5EC4FF42A6FF127AA53E4C3F2E94C77AE0FF
        2C92C5FFFFFFFFFFFF42A6FF54BAFFFFFFFF5EC4FF42A6FF42A6FF42A6FF42A6
        FF5EC4FF177FA84A6F4E3096C985EBFF80E6FF2C92C52C92C52C92C52C92C52C
        92C52C92C52C92C52C92C52C92C52C92C52C92C51A83AAFFFFFF3298CB91F7FF
        8EF4FF8EF4FF8EF4FF39C3632DBB4DFCFEFC3FB7423FB742FFFFFFFFFFFF157B
        AE707070FFFFFFFFFFFF3399CCFFFFFF99FFFF99FFFF99FFFF7AEBCC0A9D0B0B
        94370A913705911F16848B1781A0177DB0FFFFFFFFFFFFFFFFFFFFFFFF3399CC
        FFFFFFFFFFFFFFFFFFFFFFFF209095339D331D961D0C870C0D830D659B65FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3399CC3298CB3096C92E94C7FFFFFFFF
        FFFF459E450E7E0E487448FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF238523007000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton2Click
      ResHandle = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 97
    Width = 322
    Height = 36
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 1
    object BtnOk: TButton
      Left = 25
      Top = 8
      Width = 73
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      OnClick = BtnOkClick
    end
    object BtnCancelar: TButton
      Left = 193
      Top = 8
      Width = 73
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 133
    Width = 322
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'ESC p/sair'
  end
  object OpenDialog1: TOpenDialog
    Ctl3D = False
    Filter = 'Memoria Fiscal|*.mfd'
    Options = [ofHideReadOnly]
    Left = 515
    Top = 46
  end
end
