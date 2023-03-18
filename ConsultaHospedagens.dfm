object FormConsHospedagens: TFormConsHospedagens
  Left = 340
  Top = 172
  Caption = 'Consulta hospedagens'
  ClientHeight = 406
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 44
    Width = 818
    Height = 362
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 0
    object SuidbGrid1: TDBAdvGrid
      Left = 4
      Top = 4
      Width = 810
      Height = 354
      Cursor = crDefault
      Align = alClient
      ColCount = 9
      DrawingStyle = gdsClassic
      RowCount = 2
      FixedRows = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      ParentFont = False
      PopupMenu = PopupMenu1
      ScrollBars = ssBoth
      TabOrder = 0
      ActiveRowColor = 15329769
      GridLineColor = 13664560
      GridFixedLineColor = clNone
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      Bands.PrimaryColor = 15790320
      ControlLook.FixedGradientFrom = clSkyBlue
      ControlLook.FixedGradientTo = clSkyBlue
      ControlLook.FixedGradientHoverFrom = 13619409
      ControlLook.FixedGradientHoverTo = 12502728
      ControlLook.FixedGradientHoverMirrorFrom = 12502728
      ControlLook.FixedGradientHoverMirrorTo = 11254975
      ControlLook.FixedGradientHoverBorder = 12033927
      ControlLook.FixedGradientDownFrom = 8816520
      ControlLook.FixedGradientDownTo = 7568510
      ControlLook.FixedGradientDownMirrorFrom = 7568510
      ControlLook.FixedGradientDownMirrorTo = 6452086
      ControlLook.FixedGradientDownBorder = 14007466
      ControlLook.ControlStyle = csWinXP
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'MS Sans Serif'
      FilterDropDown.Font.Style = []
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Larger than'
        'Smaller than'
        'Clear')
      FixedColWidth = 20
      FixedRowHeight = 22
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      Grouping.HeaderColor = 4227072
      Grouping.HeaderTextColor = clWhite
      Grouping.Summary = True
      Grouping.SummaryColor = clSkyBlue
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'MS Sans Serif'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'MS Sans Serif'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'MS Sans Serif'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'MS Sans Serif'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.Color = clSkyBlue
      SearchFooter.ColorTo = clNone
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'MS Sans Serif'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurence'
      SearchFooter.HintFindPrev = 'Find previous occurence'
      SearchFooter.HintHighlight = 'Highlight occurences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SelectionColor = clGray
      SelectionTextColor = clWhite
      SortSettings.DefaultFormat = ssAutomatic
      SortSettings.HeaderColorTo = 16579058
      SortSettings.HeaderMirrorColor = 16380385
      SortSettings.HeaderMirrorColorTo = 16182488
      Version = '2.4.0.2'
      AutoCreateColumns = True
      AutoRemoveColumns = True
      Columns = <
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'MS Sans Serif'
          PrintFont.Style = []
          Width = 20
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          FieldName = 'ENT_CODAPARTAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header = 'C'#243'd. Apart.'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = [fsBold]
          HeaderAlignment = taCenter
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'MS Sans Serif'
          PrintFont.Style = []
          Width = 71
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          FieldName = 'APA_APARTAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Apartamento'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 140
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          FieldName = 'ENT_DATAENTRADA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Data Entrada'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 109
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = '0'
          CheckTrue = '1'
          Color = clWindow
          FieldName = 'ENT_DATASAIDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Data Saida'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 120
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          FieldName = 'ENT_TOTALPAGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Valor Pago'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 75
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          FieldName = 'ENT_VALORDIARIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Valor Di'#225'ria'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 76
        end
        item
          Alignment = taCenter
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          FieldName = 'ENT_QTDDIARIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Quant. Di'#225'rias'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 88
        end
        item
          Alignment = taCenter
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          FieldName = 'ENT_QTDPAGANTES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Qtde Pagantes'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 95
        end>
      DataSource = DataSource1
      InvalidPicture.Data = {
        055449636F6E0000010001002020040000000000E80200001600000028000000
        2000000040000000010004000000000000020000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF000000000000777777777777000000000000000000777788FFFF887777
        000000000000007778F8887117788F877700000000000778F87111111111178F
        877000000000778871111111111999178877000000077F811111111111199999
        18F7700000778811111111111119999991887700007881111111111111119199
        99188700077F711111811111111198719997F7700788111118FF111111118FF7
        1991887077F71111888FF1111118FFFF19997F77778111118888FF1111888FF8
        911918777881111118888FF1188888811111188778811111118888FF88888811
        111117877F7111111118888888888111111117F77F7999111111888888881111
        111111F77F7999991111788888F71111111111F77F7999999917888888FF7111
        111117F778879999917FFF88888FF111111117877887999997FFFFF88888FF11
        11111887778799997FFFFFF798888FF11111187777F87997FFFFFF71178F88FF
        71117F7707887997FFFFF7999978F88871118870077F87997FFF799999978F87
        1117F77000788879978799999999787111188700007788879999999999999999
        1188770000077F88799999999999999778F77000000077888879999999999778
        8877000000000778F88877799777788F877000000000007778F8888878888F87
        7700000000000000777788FFFF88777700000000000000000077777777777700
        00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
        C000000380000001800000010000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000080000001
        80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
        FFC003FF}
      ShowUnicode = False
      ColWidths = (
        20
        71
        140
        109
        120
        75
        76
        88
        95)
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 818
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 1
    object RxLabel1: TRxLabel
      Left = 4
      Top = 0
      Width = 98
      Height = 13
      Caption = 'C'#243'd. do Hospede:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 130
      Top = 0
      Width = 106
      Height = 13
      Caption = 'Nome do Hospede:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 578
      Top = 0
      Width = 58
      Height = 13
      Caption = 'CPF/CNPJ:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Cliente: TComboEdit
      Left = 3
      Top = 14
      Width = 123
      Height = 24
      Alignment = taCenter
      CharCase = ecUpperCase
      ClickKey = 113
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = ''
      OnButtonClick = ClienteButtonClick
      OnChange = ClienteChange
      OnKeyDown = ClienteKeyDown
      OnKeyPress = ClienteKeyPress
    end
    object Panel7: TPanel
      Left = 132
      Top = 14
      Width = 437
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 1
      object RxLabel6: TRxLabel
        Left = 4
        Top = 4
        Width = 373
        Height = 15
        AutoSize = False
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object Panel8: TPanel
      Left = 577
      Top = 14
      Width = 180
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 2
      object RxLabel7: TRxLabel
        Left = 4
        Top = 4
        Width = 173
        Height = 15
        AutoSize = False
        Caption = 'CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object Edit2: TEdit
      Left = 768
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 3
      Visible = False
    end
  end
  object Qry1: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select * from entrahospede, apartamento where entrahospede.ent_c' +
        'odapartamento = apartamento.apa_codapartamento ')
    Left = 220
    Top = 144
    object Qry1ENT_CODENTRADA: TIBStringField
      FieldName = 'ENT_CODENTRADA'
      Origin = 'ENTRAHOSPEDE.ENT_CODENTRADA'
      Required = True
      FixedChar = True
      Size = 6
    end
    object Qry1ENT_CODAPARTAMENTO: TIBStringField
      FieldName = 'ENT_CODAPARTAMENTO'
      Origin = 'ENTRAHOSPEDE.ENT_CODAPARTAMENTO'
      Required = True
      FixedChar = True
      Size = 6
    end
    object Qry1ENT_DATAENTRADA: TDateField
      FieldName = 'ENT_DATAENTRADA'
      Origin = 'ENTRAHOSPEDE.ENT_DATAENTRADA'
      Required = True
    end
    object Qry1ENT_HORAENTRADA: TTimeField
      FieldName = 'ENT_HORAENTRADA'
      Origin = 'ENTRAHOSPEDE.ENT_HORAENTRADA'
      Required = True
    end
    object Qry1ENT_VALORDIARIA: TIBBCDField
      FieldName = 'ENT_VALORDIARIA'
      Origin = 'ENTRAHOSPEDE.ENT_VALORDIARIA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Qry1ENT_QTDNORMAL: TIntegerField
      FieldName = 'ENT_QTDNORMAL'
      Origin = 'ENTRAHOSPEDE.ENT_QTDNORMAL'
    end
    object Qry1ENT_VLRNORMAL: TIBBCDField
      FieldName = 'ENT_VLRNORMAL'
      Origin = 'ENTRAHOSPEDE.ENT_VLRNORMAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object Qry1ENT_QTDEXTRA: TIBBCDField
      FieldName = 'ENT_QTDEXTRA'
      Origin = 'ENTRAHOSPEDE.ENT_QTDEXTRA'
      Required = True
      Precision = 18
      Size = 2
    end
    object Qry1ENT_VLREXTRA: TIBBCDField
      FieldName = 'ENT_VLREXTRA'
      Origin = 'ENTRAHOSPEDE.ENT_VLREXTRA'
      Required = True
      Precision = 18
      Size = 2
    end
    object Qry1ENT_SUBTOTAL: TIBBCDField
      FieldName = 'ENT_SUBTOTAL'
      Origin = 'ENTRAHOSPEDE.ENT_SUBTOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object Qry1ENT_DESCACRESC: TIBBCDField
      FieldName = 'ENT_DESCACRESC'
      Origin = 'ENTRAHOSPEDE.ENT_DESCACRESC'
      Required = True
      Precision = 18
      Size = 2
    end
    object Qry1ENT_DATASAIDA: TDateField
      FieldName = 'ENT_DATASAIDA'
      Origin = 'ENTRAHOSPEDE.ENT_DATASAIDA'
    end
    object Qry1ENT_HORASAIDA: TTimeField
      FieldName = 'ENT_HORASAIDA'
      Origin = 'ENTRAHOSPEDE.ENT_HORASAIDA'
    end
    object Qry1ENT_QTDDIARIA: TIntegerField
      FieldName = 'ENT_QTDDIARIA'
      Origin = 'ENTRAHOSPEDE.ENT_QTDDIARIA'
    end
    object Qry1ENT_TOTALBAR: TIBBCDField
      FieldName = 'ENT_TOTALBAR'
      Origin = 'ENTRAHOSPEDE.ENT_TOTALBAR'
      Required = True
      Precision = 18
      Size = 2
    end
    object Qry1ENT_TOTALLIGACAO: TIBBCDField
      FieldName = 'ENT_TOTALLIGACAO'
      Origin = 'ENTRAHOSPEDE.ENT_TOTALLIGACAO'
      Required = True
      Precision = 18
      Size = 2
    end
    object Qry1ENT_TOTALDIARIA: TIBBCDField
      FieldName = 'ENT_TOTALDIARIA'
      Origin = 'ENTRAHOSPEDE.ENT_TOTALDIARIA'
      Required = True
      Precision = 18
      Size = 2
    end
    object Qry1ENT_TOTALGERAL: TIBBCDField
      FieldName = 'ENT_TOTALGERAL'
      Origin = 'ENTRAHOSPEDE.ENT_TOTALGERAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object Qry1ENT_PREVISAO: TDateField
      FieldName = 'ENT_PREVISAO'
      Origin = 'ENTRAHOSPEDE.ENT_PREVISAO'
    end
    object Qry1ENT_DESCACRESCGERAL: TIBBCDField
      FieldName = 'ENT_DESCACRESCGERAL'
      Origin = 'ENTRAHOSPEDE.ENT_DESCACRESCGERAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object Qry1ENT_TOTALPAGO: TIBBCDField
      FieldName = 'ENT_TOTALPAGO'
      Origin = 'ENTRAHOSPEDE.ENT_TOTALPAGO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Qry1ENT_QTDADULTOS: TIntegerField
      FieldName = 'ENT_QTDADULTOS'
      Origin = 'ENTRAHOSPEDE.ENT_QTDADULTOS'
    end
    object Qry1ENT_QTDCRIANCAS: TIntegerField
      FieldName = 'ENT_QTDCRIANCAS'
      Origin = 'ENTRAHOSPEDE.ENT_QTDCRIANCAS'
    end
    object Qry1ENT_QTDPAGANTES: TIntegerField
      FieldName = 'ENT_QTDPAGANTES'
      Origin = 'ENTRAHOSPEDE.ENT_QTDPAGANTES'
      Required = True
    end
    object Qry1ENT_FORMAPAGAMENTO: TIntegerField
      FieldName = 'ENT_FORMAPAGAMENTO'
      Origin = 'ENTRAHOSPEDE.ENT_FORMAPAGAMENTO'
      Required = True
    end
    object Qry1ENT_CODHOSPEDE: TIntegerField
      FieldName = 'ENT_CODHOSPEDE'
      Origin = 'ENTRAHOSPEDE.ENT_CODHOSPEDE'
    end
    object Qry1ENT_VALOR_LAV: TIBBCDField
      FieldName = 'ENT_VALOR_LAV'
      Origin = 'ENTRAHOSPEDE.ENT_VALOR_LAV'
      Required = True
      Precision = 18
      Size = 2
    end
    object Qry1APA_CODAPARTAMENTO: TIBStringField
      FieldName = 'APA_CODAPARTAMENTO'
      Origin = 'APARTAMENTO.APA_CODAPARTAMENTO'
      Required = True
      FixedChar = True
      Size = 6
    end
    object Qry1APA_APARTAMENTO: TIBStringField
      FieldName = 'APA_APARTAMENTO'
      Origin = 'APARTAMENTO.APA_APARTAMENTO'
      Required = True
      Size = 30
    end
    object Qry1APA_SITUACAO: TIBStringField
      FieldName = 'APA_SITUACAO'
      Origin = 'APARTAMENTO.APA_SITUACAO'
      Required = True
      Size = 10
    end
    object Qry1APA_CODENTRADA: TIBStringField
      FieldName = 'APA_CODENTRADA'
      Origin = 'APARTAMENTO.APA_CODENTRADA'
      FixedChar = True
      Size = 6
    end
    object Qry1APA_CODCATEGORIA: TIBStringField
      FieldName = 'APA_CODCATEGORIA'
      Origin = 'APARTAMENTO.APA_CODCATEGORIA'
      FixedChar = True
      Size = 6
    end
  end
  object DataSource1: TDataSource
    DataSet = Qry1
    Left = 324
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 356
    Top = 160
    object ReimprimirFechamento1: TMenuItem
      Caption = 'Reimprimir Fechamento'
      OnClick = ReimprimirFechamento1Click
    end
  end
end
