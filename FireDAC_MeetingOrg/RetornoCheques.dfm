object FormRetornoCheques: TFormRetornoCheques
  Left = 228
  Top = 124
  BorderStyle = bsDialog
  Caption = 'Retorno de Cheques'
  ClientHeight = 354
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
  OnCloseQuery = FormCloseQuery
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
      Left = 8
      Top = 0
      Width = 147
      Height = 13
      Caption = 'Entre com o N'#176' do Cheque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Navigator: TsuiDBNavigator
      Left = 352
      Top = 8
      Width = 356
      Height = 26
      Cursor = crDefault
      UIStyle = WinXP
      DataSource = DMB.DTS_Cheque_Retornar
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object suiEdit1: TEdit
      Left = 8
      Top = 16
      Width = 174
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
    Height = 256
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 1
    object DBGrid: TsuiDBGrid
      Left = 2
      Top = 2
      Width = 712
      Height = 153
      Align = alClient
      BorderStyle = bsNone
      Color = 15198183
      DataSource = DMB.DTS_Cheque_Retornar
      FixedColor = 12874553
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
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGridDblClick
      UIStyle = MacOS
      BorderColor = 8355711
      FocusedColor = clGreen
      SelectedColor = clYellow
      FontColor = clBlack
      TitleFontColor = clWhite
      FixedBGColor = 12874553
      BGColor = 15198183
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
      Top = 155
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
        Width = 430
        Height = 95
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15263976
        Enabled = False
        TabOrder = 0
        object RxLabel1: TRxLabel
          Left = 2
          Top = 2
          Width = 426
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
          Left = 290
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
          Left = 5
          Top = 45
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
        object RxLabel6: TRxLabel
          Left = 5
          Top = 70
          Width = 80
          Height = 13
          Caption = 'Data da Baixa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel7: TRxLabel
          Left = 212
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
          Left = 212
          Top = 70
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
        object suiDBEdit1: TsuiDBEdit
          Left = 89
          Top = 20
          Width = 193
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'CLIENTE'
          DataSource = DMB.DTS_Cheque_Retornar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit2: TsuiDBEdit
          Left = 89
          Top = 45
          Width = 120
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'CODIGO_COMPRA'
          DataSource = DMB.DTS_Cheque_Retornar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          UIStyle = DeepBlue
          BorderColor = clBlack
        end
        object suiDBEdit3: TsuiDBEdit
          Left = 89
          Top = 70
          Width = 120
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'DATA_BAIXA'
          DataSource = DMB.DTS_Cheque_Retornar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          UIStyle = DeepBlue
          BorderColor = clBlack
        end
        object suiDBEdit4: TsuiDBEdit
          Left = 363
          Top = 20
          Width = 61
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'QNT'
          DataSource = DMB.DTS_Cheque_Retornar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          UIStyle = DeepBlue
          BorderColor = clBlack
        end
        object suiDBEdit5: TsuiDBEdit
          Left = 304
          Top = 45
          Width = 120
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'TIPO_CHEQUE'
          DataSource = DMB.DTS_Cheque_Retornar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          UIStyle = DeepBlue
          BorderColor = clBlack
        end
        object suiDBEdit6: TsuiDBEdit
          Left = 304
          Top = 70
          Width = 120
          Height = 19
          BorderStyle = bsNone
          Color = 15263976
          DataField = 'CONTA_DESDE'
          DataSource = DMB.DTS_Cheque_Retornar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          UIStyle = DeepBlue
          BorderColor = clBlack
        end
      end
      object Panel6: TPanel
        Left = 432
        Top = 2
        Width = 278
        Height = 95
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15263976
        TabOrder = 1
        object RxLabel10: TRxLabel
          Left = 60
          Top = 4
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
          Left = 6
          Top = 59
          Width = 121
          Height = 13
          Caption = 'Hist'#243'rico do Retorno:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel9: TRxLabel
          Left = 5
          Top = 20
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
        object DateEdit11: TDateEdit
          Left = 161
          Top = 3
          Width = 109
          Height = 19
          Ctl3D = False
          DialogTitle = 'Selecione a Data'
          Enabled = False
          NumGlyphs = 2
          ParentCtl3D = False
          YearDigits = dyFour
          TabOrder = 0
          OnEnter = DateEdit11Enter
          OnExit = DateEdit11Exit
        end
        object Edit1: TsuiEdit
          Left = 5
          Top = 72
          Width = 266
          Height = 19
          UIStyle = DeepBlue
          BorderColor = clBlack
          CharCase = ecUpperCase
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 2
          OnEnter = Edit1Enter
          OnExit = Edit1Exit
        end
        object LCB: TsuiDBLookupComboBox
          Left = 5
          Top = 33
          Width = 266
          Height = 21
          Enabled = False
          KeyField = 'DESCRICAO'
          ListField = 'DESCRICAO'
          ListSource = DM.DTS_Retorno
          TabOrder = 1
          OnEnter = LCBEnter
          OnExit = LCBExit
          UIStyle = WinXP
          BorderColor = 6842472
          ArrowColor = clBlack
          ButtonColor = 14609391
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 299
    Width = 716
    Height = 55
    Align = alBottom
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 2
    object myLabel3d1: TmyLabel3d
      Left = 22
      Top = 14
      Width = 209
      Height = 25
      Caption = 'Retorno de Cheques'
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
    object BTNCANCELAR: TsuiButton
      Left = 583
      Top = 6
      Width = 121
      Height = 40
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Cancelar'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      Enabled = False
      TabOrder = 2
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
      OnClick = BTNCANCELARClick
      ResHandle = 0
    end
    object BTNSALVAR: TsuiButton
      Left = 453
      Top = 6
      Width = 122
      Height = 40
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Confirmar '
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      Enabled = False
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C131DF21CD118F23DF65AF75EF85EF75AF65E1442B014
        B014D2181F7C1F7C7529382538251421903135461B63DF7BFF7FDD7B784E6F0C
        700C1621F31C1F7C75293725382514219031B014742D5C6BFF7BFF7F99526F0C
        700C1521F31C1F7C7529372538251421B23590109010B756BD77FF7FDB5A6F0C
        700C1521F31C1F7C7529372538251421D339B1146F0C12425967FF7FFB5E6F0C
        6F0CF51CF31C1F7C7529372538251521D639F63DB335D2393446FB5E5A4A9110
        91101621F31C1F7C752937253725372537253725372537251721172117213725
        37253825F21C1F7C7529F418131DB6353846594A594A594A3946594A594A794A
        18423725F21C1F7C7529D318FB5EDF7BDE77DE7BDE7BDE7BDE7BDE7BDE7BFF7F
        BA561621F31C1F7C7529D3183C67FF7FBE77BE77BE77BE77BE77BE77BE77DF7B
        BA561621F31C1F7C7529D3183C63BD7739633967396739673967396739679C73
        BA561621F31C1F7C7529D3183C67BD773A675A6B5A6B5A6B5A6B5A6B3A67BD77
        BA561621F31C1F7C7529D3183C67DE775B6B7B6B7B6B7B6B7B6B7B6B5B6BBD77
        BA561621F31C1F7C7529D3183C67BD7739673967396739673967396739679C73
        BB561621F31C1F7C7529D3183C63FF7FBF77BF77BF77BF77BF77BF77BF77FF7B
        BA561621F31C1F7C1F7CD2189752386318631863186318631863186318631863
        774ED1181F7C}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = BTNSALVARClick
      ResHandle = 0
    end
    object BTNNOVO: TsuiButton
      Left = 250
      Top = 6
      Width = 193
      Height = 40
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Enviar para Devolvidos'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000007020000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF000000007020007020000000000000FFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFF
        FFFFFFFFFFFFFF000000007020007020000000000000FFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFF
        FFFFFFFFFFFFFF000000007020007020000000000000000000000000FFFFFFFF
        FFFF000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000007020007020000000001020000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFF
        FFFFFF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00000000702000702000000000972F000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000702000000000000000972F00972F00000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        0000000070200000000000000010200000000000000000000000000000000000
        0000000000000000000000000000000000000000972F00972F00102000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F0010200000000000000000
        0000000000000000000000000000000000000000972F00972F00972F00000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972F0097
        2F00972F00702000000000000000000000000000972F00972F00972F00972F00
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972F0097
        2F00972F00972F00972F00972F00972F00972F00972F00972F00972F00972F00
        972F000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972F0097
        2F00972F00972F00972F00972F00972F00972F00972F00972F00972F00972F00
        972F00972F000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972F0097
        2F00972F00972F00972F00972F00972F00972F00972F00972F00972F00972F00
        972F00972F00972F000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972F0097
        2F00972F00972F00972F00972F00972F00972F00972F00972F00972F00972F00
        972F00972F00972F000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972F0097
        2F00972F00972F00972F00972F00972F00972F00972F00972F00972F00972F00
        972F00972F00972F000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972F0097
        2F00972F00972F00972F00972F00972F00972F00972F00972F00972F00972F00
        972F00972F000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972FFFFF
        FF00972FFFFFFFFFFFFFFFFFFF00972F00972F00972F00972F00972F00972F00
        972F000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F00972F00972F00972F0097
        2F00972F00702000000000000000000000000000972F00972F00972F00972F00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        00702000702000000000000000972F00972F00972F0010200000000000000000
        0000000000000000000000000000000000000000972F00972F00972F00000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        0000000070200000000000000010200000000000000000000000000000000000
        0000000000000000000000000000000000000000972F00972F00102000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000702000000000000000972F00972F00000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000007020007020000000FFFFFF000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
        FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000007020007020000000007020000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        FFFFFFFFFFFF000000000000000000FFFFFFFFFFFF000000000000000000FFFF
        FFFFFFFFFFFFFF000000007020007020000000000000000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        FFFFFFFFFFFF000000000000000000FFFFFFFFFFFF000000000000000000FFFF
        FFFFFFFFFFFFFF000000007020007020000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF000000007020007020000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000007020000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFF00000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = BTNNOVOClick
      ResHandle = 0
    end
  end
  object MessageCanClose: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
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
    IconType = suiInformation
    Text = 'Antes de Sair Voc'#234' Deve Salvar ou Cancelar!'
    Left = 10
    Top = 304
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
    Left = 41
    Top = 304
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
    Left = 74
    Top = 305
  end
  object qrcaixa_mov: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from MOVIMENTO_DIARIO')
    Left = 296
    Top = 4
  end
end
