inherited FormTanques: TFormTanques
  Left = 421
  Top = 219
  Caption = 'Cadastro de Tanques'
  ClientHeight = 233
  ClientWidth = 624
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  ExplicitWidth = 630
  ExplicitHeight = 262
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TAdvPanel
    Width = 624
    Height = 182
    ExplicitWidth = 624
    ExplicitHeight = 182
    FullHeight = 182
    object GroupBox1: TGroupBox
      Left = 16
      Top = 8
      Width = 596
      Height = 161
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        596
        161)
      object Label4: TLabel
        Left = 16
        Top = 112
        Width = 65
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Descri'#231#227'o:'
      end
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 68
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        Caption = 'N'#186' Tanque:'
      end
      object Label2: TLabel
        Left = 312
        Top = 64
        Width = 78
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Capacidade:'
      end
      object Label3: TLabel
        Left = 120
        Top = 16
        Width = 50
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Produto:'
      end
      object Label5: TLabel
        Left = 16
        Top = 64
        Width = 82
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Volume Atual:'
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 128
        Width = 561
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        CharCase = ecUpperCase
        DataField = 'OBS'
        DataSource = DMP.DTS_TANQUES
        TabOrder = 4
      end
      object DBComboBox1: TDBComboBox
        Left = 16
        Top = 32
        Width = 84
        Height = 24
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        DataField = 'ID_TANQUE'
        DataSource = DMP.DTS_TANQUES
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20')
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 312
        Top = 80
        Width = 105
        Height = 24
        Anchors = [akTop, akRight]
        CharCase = ecUpperCase
        DataField = 'LITROS'
        DataSource = DMP.DTS_TANQUES
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 80
        Width = 281
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        CharCase = ecUpperCase
        DataField = 'LITROS_ATUAL'
        DataSource = DMP.DTS_TANQUES
        TabOrder = 2
      end
      object Panel6: TPanel
        Left = 244
        Top = 33
        Width = 333
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15263976
        TabOrder = 5
        object RxLabel7: TRxLabel
          Left = 6
          Top = 3
          Width = 301
          Height = 20
          AutoSize = False
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
      end
      object Edit2: TEdit
        Left = 456
        Top = 0
        Width = 121
        Height = 24
        TabStop = False
        TabOrder = 6
        Visible = False
      end
      object comboedit1: TComboEdit
        Left = 122
        Top = 33
        Width = 110
        Height = 24
        Alignment = taCenter
        CharCase = ecUpperCase
        ClickKey = 120
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
        OnButtonClick = ComboEdit1ButtonClick
        OnChange = ComboEdit1Change
        OnExit = comboedit1Exit
      end
    end
  end
  inherited Panel2: TAdvPanel
    Top = 182
    Width = 624
    ExplicitTop = 182
    ExplicitWidth = 624
    FullHeight = 51
  end
  object MsgErro: TsuiMessageDialog
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
    Text = 'Ocorreu um Erro! Tente Novamente!'
    Left = 234
    Top = 3
  end
  object MsgAtencao: TsuiMessageDialog
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
    Button2ModalResult = 0
    Button3ModalResult = 0
    IconType = suiWarning
    Text = 'Antes de sair voc'#234' deve salvar ou cancelar!'
    Left = 262
    Top = 3
  end
  object MsgConfirmacao: TsuiMessageDialog
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
    Text = 'Confirma Exclus'#227'o?'
    Left = 290
    Top = 3
  end
  object MsgInformacao: TsuiMessageDialog
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
    Left = 350
    Top = 3
  end
end
