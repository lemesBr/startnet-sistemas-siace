object FormBaixaChequeRetornado: TFormBaixaChequeRetornado
  Left = 427
  Top = 274
  BorderStyle = bsDialog
  Caption = 'Baixa de Cheques Retornados'
  ClientHeight = 347
  ClientWidth = 716
  Color = clBtnFace
  Constraints.MinWidth = 130
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
    Left = 0
    Top = 0
    Width = 716
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 0
    object RxLabel2: TRxLabel
      Left = 6
      Top = 0
      Width = 129
      Height = 13
      Caption = 'Entre com o N'#176' do Cheque'
    end
    object Navigator: TsuiDBNavigator
      Left = 219
      Top = 6
      Width = 372
      Height = 25
      Cursor = crDefault
      UIStyle = WinXP
      DataSource = DMB.DTS_BaixarChequeRetornados
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object suiEdit1: TEdit
      Left = 8
      Top = 16
      Width = 163
      Height = 21
      TabOrder = 1
      OnChange = suiEdit1Change
      OnEnter = suiEdit1Enter
      OnExit = suiEdit1Exit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 43
    Width = 716
    Height = 249
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 1
    object DBGrid: TsuiDBGrid
      Left = 2
      Top = 2
      Width = 712
      Height = 146
      Align = alClient
      BorderStyle = bsNone
      Color = 14609391
      DataSource = DMB.DTS_BaixarChequeRetornados
      FixedColor = 15717318
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGridDblClick
      UIStyle = WinXP
      BorderColor = 6842472
      FocusedColor = clGreen
      SelectedColor = clYellow
      FontColor = clBlack
      TitleFontColor = clBlack
      FixedBGColor = 15717318
      BGColor = 14609391
      Columns = <
        item
          Expanded = False
          FieldName = 'N_CHEQUE'
          Title.Alignment = taCenter
          Title.Caption = 'N'#176' Cheque'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANCO'
          Title.Alignment = taCenter
          Title.Caption = 'Banco'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 159
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'AGENCIA'
          Title.Alignment = taCenter
          Title.Caption = 'Ag'#234'ncia'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CONTA_CORRENTE'
          Title.Alignment = taCenter
          Title.Caption = 'Conta Corrente'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TITULAR'
          Title.Alignment = taCenter
          Title.Caption = 'Titular'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 186
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_CHEQUE'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 2
      Top = 148
      Width = 712
      Height = 99
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 1
      object Panel5: TPanel
        Left = 2
        Top = 2
        Width = 708
        Height = 95
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15263976
        Enabled = False
        TabOrder = 0
        object RxLabel1: TRxLabel
          Left = 2
          Top = 2
          Width = 704
          Height = 13
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Mais Informa'#231#245'es sobre o Cheque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object RxLabel3: TRxLabel
          Left = 5
          Top = 20
          Width = 44
          Height = 13
          Caption = 'Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel4: TRxLabel
          Left = 387
          Top = 20
          Width = 70
          Height = 13
          Caption = 'Qnt. Cheque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel5: TRxLabel
          Left = 518
          Top = 20
          Width = 82
          Height = 13
          Caption = 'N'#176' da Compra:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel7: TRxLabel
          Left = 5
          Top = 45
          Width = 91
          Height = 13
          Caption = 'Tipo de Cheque:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel8: TRxLabel
          Left = 327
          Top = 45
          Width = 76
          Height = 13
          Caption = 'Conta Desde:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel9: TRxLabel
          Left = 5
          Top = 70
          Width = 110
          Height = 13
          Caption = 'Motivo do Retorno:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel10: TRxLabel
          Left = 518
          Top = 70
          Width = 98
          Height = 13
          Caption = 'Data do Retorno:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel11: TRxLabel
          Left = 518
          Top = 45
          Width = 100
          Height = 13
          Caption = 'Conta Receptora:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object suiDBEdit1: TsuiDBEdit
          Left = 120
          Top = 20
          Width = 260
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'CLIENTE'
          DataSource = DMB.DTS_BaixarChequeRetornados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          UIStyle = FromThemeFile
          BorderColor = clBlack
        end
        object suiDBEdit2: TsuiDBEdit
          Left = 619
          Top = 20
          Width = 80
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'CODIGO_COMPRA'
          DataSource = DMB.DTS_BaixarChequeRetornados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          UIStyle = FromThemeFile
          BorderColor = clBlack
        end
        object suiDBEdit4: TsuiDBEdit
          Left = 458
          Top = 20
          Width = 48
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'QNT'
          DataSource = DMB.DTS_BaixarChequeRetornados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          UIStyle = FromThemeFile
          BorderColor = clBlack
        end
        object suiDBEdit5: TsuiDBEdit
          Left = 120
          Top = 45
          Width = 200
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'TIPO_CHEQUE'
          DataSource = DMB.DTS_BaixarChequeRetornados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          UIStyle = FromThemeFile
          BorderColor = clBlack
        end
        object suiDBEdit6: TsuiDBEdit
          Left = 426
          Top = 45
          Width = 80
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'CONTA_DESDE'
          DataSource = DMB.DTS_BaixarChequeRetornados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          UIStyle = FromThemeFile
          BorderColor = clBlack
        end
        object suiDBEdit11: TsuiDBEdit
          Left = 619
          Top = 70
          Width = 80
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'DATA_RETORNO'
          DataSource = DMB.DTS_BaixarChequeRetornados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          UIStyle = FromThemeFile
          BorderColor = clBlack
        end
        object suiDBEdit12: TsuiDBEdit
          Left = 120
          Top = 70
          Width = 386
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'MOTIVO_RETORNO'
          DataSource = DMB.DTS_BaixarChequeRetornados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          UIStyle = FromThemeFile
          BorderColor = clBlack
        end
        object suiDBEdit13: TsuiDBEdit
          Left = 619
          Top = 45
          Width = 80
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'NUMERO_CC'
          DataSource = DMB.DTS_BaixarChequeRetornados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          UIStyle = FromThemeFile
          BorderColor = clBlack
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 292
    Width = 716
    Height = 55
    Align = alBottom
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 2
    object myLabel3d1: TmyLabel3d
      Left = 54
      Top = 14
      Width = 289
      Height = 25
      Caption = 'Baixa de Cheque Retornado'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      AStyle3D = Raised3d
      AShadeLTSet = False
    end
    object BTNNOVO: TsuiButton
      Left = 492
      Top = 7
      Width = 214
      Height = 40
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = 'Baixar Cheque'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000008000008000
        0080000080000080000080000080000080000080000080000080000080000080
        0000800000800000800000800000800000800000800000800000800000800000
        8000008000008000008000008000008000008000008000008000008000008000
        0080000080000080000080000080000080000080000080000080000080000080
        0000800000800000800000800000800000800000800000800000800000800000
        8000008000008000008000008000008000008000008000008000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000FFFF00
        000000000000000000FFFF00000000000000FFFF00000000000000FFFF00FFFF
        00FFFF00000000000000FFFF00000000000000FFFF00000000FFFF00000000FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000FFFF00
        FFFF00808080FFFF00808080FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000FFFF00
        FFFF00FFFF00808080FFFF00808080FFFF00FFFF008080808080808080808080
        80808080808080808080FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000FFFF00
        FFFF00FFFF00808080FFFF00808080FFFF00FFFF00808080808080FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000FFFF00
        800000FFFF00FFFF00808080FFFF00808080FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000FFFF00
        FFFF00800000FFFF00FFFF00FFFF00FFFF00808080FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000FFFF00
        FFFF00800000800000800000800000800000800000808080000000FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFF00
        FFFF00800000FFFF00800000FFFF00FFFF00FFFF00FFFF000000000000000000
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFF00
        FFFF00FFFF00800000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000000000
        00000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000000000
        FF0000FF0000FF000000FFFF00FFFF00800000FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000
        000000FF0000FF0000FF000000FFFF00FFFF00800000800000800000FFFF0080
        0000FFFF00800000800000FFFF00FFFF00FFFF00000000000000000000FFFFFF
        808080808080000000000000000000000000000000FFFF00FFFF00FFFF00FFFF
        000000000000FF0000FF0000FF000000FFFF00800000FFFF00FFFF0080000080
        0000FFFF00800000800000FFFF00FFFF00FFFF00FFFF00000000000000FFFFFF
        000000000000000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF000000000000FF0000FF0000FF000000FFFF00800000FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00000000000000000000000000000000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF000000000000FF0000FF0000FF000000FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF000000000000FF0000FF0000FF000000FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF0000FF00000000000000000000
        0000000000000000000000000000000000000000000000000000008000008000
        0080000080000080000080000080000080000080000080000080000080000080
        000080000080000080000080000080000000000000000000FF0000FF0000FF00
        0000000000008000008000008000008000008000008000008000008000008000
        0080000080000080000080000080000080000080000080000080000080000080
        000080000080000080000080000080000080000000000000FF0000FF0000FF00
        00FF000000000000008000008000008000008000008000008000008000008000
        0080000080000080000080000080000080000080000080000080000080000080
        000080000080000080000080000080000080000080000000000000FF0000FF00
        00FF0000FF000000000000008000008000008000008000008000008000008000
        0080000080000080000080000080000080000080000080000080000080000080
        000080000080000080000080000080000080000080000080000000000000FF00
        00FF0000FF0000FF000000000000008000008000008000008000008000008000
        0080000080000080000080000080000080000080000080000080000080000080
        0000800000800000800000800000800000800000800000800000800000000000
        00FF0000FF0000FF0000FF000000000000008000008000008000008000008000
        0080000080000080000080000080000080000080000080000080000080000080
        0000800000800000800000800000800000800000800000800000800000800000
        00000000FF0000FF0000FF0000FF000000000000008000008000008000008000
        0080000080000080000080000080000080000080000080000080000080000080
        0000800000800000800000800000800000800000800000800000800000800000
        80000000000000FF0000FF0000FF000000000000008000008000008000008000
        0080000080000080000080000080000080000080000080000080000080000080
        0000800000800000800000800000800000800000800000800000800000800000
        80000080000000000000FF0000FF000000000000008000008000008000008000
        0080000080000080000080000080000080000080000080000080000080000080
        0000800000800000800000800000800000800000800000800000800000800000
        80000080000080000000000000FF0000FF000000008000008000008000008000
        0080000080000080000080000080000080000080000080000080000080000080
        0000800000800000800000800000800000800000800000800000800000800000
        8000008000008000008000000000000000008000008000008000008000008000
        0080000080000080000080000080000080000080000080000080000080000080
        0000800000800000800000800000800000800000800000800000800000800000
        8000008000008000008000008000008000008000008000008000}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = BTNNOVOClick
      ResHandle = 0
    end
  end
  object SPC_MovimentoBancario: TSQLStoredProc
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
    Left = 9
    Top = 296
  end
  object MSGErro: TsuiMessageDialog
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
    Text = 'Erro na Grava'#231#227'o! Tente Novamente.'
    Left = 42
    Top = 297
  end
  object Confirma: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Confirma'#231#227'o '
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
    Text = 'Confirma Baixa do Cheque Selecionado?'
    Left = 76
    Top = 297
  end
  object qrcaixa_mov: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from MOVIMENTO_DIARIO')
    Left = 232
    Top = 12
  end
end
