object frmRelLmc: TfrmRelLmc
  Left = 370
  Top = 74
  Width = 877
  Height = 592
  Caption = 'LMC '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 32
    Top = 40
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    BeforePrint = QuickRep1BeforePrint
    DataSet = qrLMC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stQRP
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 1014
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2682.875000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape61: TQRShape
        Left = 4
        Top = 404
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          1068.916666666667000000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 4
        Top = 404
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          1068.916666666667000000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 2
        Top = 2
        Width = 713
        Height = 1004
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2656.416666666667000000
          5.291666666666667000
          5.291666666666667000
          1886.479166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 4
        Top = 548
        Width = 325
        Height = 369
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          976.312500000000000000
          10.583333333333330000
          1449.916666666667000000
          859.895833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lbvendasdia: TQRLabel
        Left = 538
        Top = 551
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1423.458333333333000000
          1457.854166666667000000
          179.916666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbvendasdia'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lbrecebido: TQRLabel
        Left = 544
        Top = 288
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          762.000000000000000000
          158.750000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbrecebido'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lbdisponivel: TQRLabel
        Left = 546
        Top = 311
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1444.625000000000000000
          822.854166666666700000
          177.270833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbdisponivel'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object vrvendasdia: TQRLabel
        Left = 408
        Top = 80
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1079.500000000000000000
          211.666666666666700000
          177.270833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'vrvendasdia'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape54: TQRShape
        Left = 4
        Top = 965
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          2553.229166666667000000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape53: TQRShape
        Left = 4
        Top = 941
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          2489.729166666667000000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape50: TQRShape
        Left = 348
        Top = 667
        Width = 353
        Height = 249
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          658.812500000000000000
          920.750000000000000000
          1764.770833333333000000
          933.979166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 4
        Top = 100
        Width = 697
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          10.583333333333330000
          264.583333333333300000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape49: TQRShape
        Left = 503
        Top = 548
        Width = 17
        Height = 97
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          256.645833333333300000
          1330.854166666667000000
          1449.916666666667000000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape48: TQRShape
        Left = 328
        Top = 620
        Width = 373
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          867.833333333333300000
          1640.416666666667000000
          986.895833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape47: TQRShape
        Left = 328
        Top = 596
        Width = 373
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          867.833333333333300000
          1576.916666666667000000
          986.895833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape46: TQRShape
        Left = 328
        Top = 572
        Width = 373
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          867.833333333333300000
          1513.416666666667000000
          986.895833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape45: TQRShape
        Left = 328
        Top = 548
        Width = 373
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          867.833333333333300000
          1449.916666666667000000
          986.895833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape44: TQRShape
        Left = 7
        Top = 724
        Width = 193
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          18.520833333333330000
          1915.583333333333000000
          510.645833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape43: TQRShape
        Left = 4
        Top = 716
        Width = 325
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          1894.416666666667000000
          859.895833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape41: TQRShape
        Left = 4
        Top = 660
        Width = 326
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          1746.250000000000000000
          862.541666666666700000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 4
        Top = 68
        Width = 697
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          10.583333333333330000
          179.916666666666700000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape39: TQRShape
        Left = 5
        Top = 612
        Width = 324
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          1619.250000000000000000
          857.250000000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 166
        Top = 586
        Width = 153
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          439.208333333333300000
          1550.458333333333000000
          404.812500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = 5
        Top = 548
        Width = 324
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          13.229166666666670000
          1449.916666666667000000
          857.250000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 4
        Top = 524
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          1386.416666666667000000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 4
        Top = 500
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          1322.916666666667000000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 4
        Top = 452
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          1195.916666666667000000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 4
        Top = 428
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          1132.416666666667000000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 4
        Top = 380
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          1005.416666666667000000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 4
        Top = 356
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          941.916666666666700000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 4
        Top = 332
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          878.416666666666700000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 4
        Top = 308
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          814.916666666666700000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 4
        Top = 284
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          751.416666666666700000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 4
        Top = 36
        Width = 697
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          10.583333333333330000
          95.250000000000000000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 4
        Top = 260
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          687.916666666666700000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 4
        Top = 236
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          624.416666666666700000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 4
        Top = 212
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          560.916666666666700000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 4
        Top = 188
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          497.416666666666700000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 4
        Top = 164
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          433.916666666666700000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 503
        Top = 100
        Width = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          1330.854166666667000000
          264.583333333333300000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 423
        Top = 100
        Width = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          1119.187500000000000000
          264.583333333333300000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 343
        Top = 100
        Width = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          907.520833333333300000
          264.583333333333300000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 279
        Top = 108
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          738.187500000000000000
          285.750000000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tanque 4'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 199
        Top = 108
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          526.520833333333300000
          285.750000000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tanque 3'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 119
        Top = 108
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          314.854166666666700000
          285.750000000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tanque 2'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 39
        Top = 108
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          103.187500000000000000
          285.750000000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tanque 1'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel51: TQRLabel
        Left = 102
        Top = 993
        Width = 477
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          269.875000000000000000
          2627.312500000000000000
          1262.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          '(*) ATEN'#199#195'O: Se o resultado for negativo pode estar havendo vaza' +
          'mento do produto para meio ambiente'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRLabel50: TQRLabel
        Left = 38
        Top = 967
        Width = 74
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          100.541666666666700000
          2558.520833333333000000
          195.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fechamento F'#237'sico'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 6
      end
      object QRLabel5: TQRLabel
        Left = 39
        Top = 76
        Width = 336
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          103.187500000000000000
          201.083333333333300000
          889.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Estoque de Abertura(Medi'#231#227'o F'#237'sica no '#236'nicio do dia)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel49: TQRLabel
        Left = 638
        Top = 946
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1688.041666666667000000
          2502.958333333333000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tanque 6'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel48: TQRLabel
        Left = 542
        Top = 946
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          2502.958333333333000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tanque 5'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel47: TQRLabel
        Left = 430
        Top = 946
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1137.708333333333000000
          2502.958333333333000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tanque 4'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel46: TQRLabel
        Left = 326
        Top = 946
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          862.541666666666700000
          2502.958333333333000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tanque 3'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel45: TQRLabel
        Left = 222
        Top = 946
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          587.375000000000000000
          2502.958333333333000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tanque 2'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel44: TQRLabel
        Left = 118
        Top = 946
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          312.208333333333300000
          2502.958333333333000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tanque 1'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel43: TQRLabel
        Left = 303
        Top = 918
        Width = 138
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          801.687500000000000000
          2428.875000000000000000
          365.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Concilia'#231#227'o do Estoque'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 351
        Top = 686
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          928.687500000000000000
          1815.041666666667000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A. N. P.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 519
        Top = 44
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1373.187500000000000000
          116.416666666666700000
          84.666666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel39: TQRLabel
        Left = 392
        Top = 624
        Width = 95
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1037.166666666667000000
          1651.000000000000000000
          251.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Perdas - Sobras'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 370
        Top = 600
        Width = 143
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          978.958333333333300000
          1587.500000000000000000
          378.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Estoque de Fechamento'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 384
        Top = 576
        Width = 108
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          1524.000000000000000000
          285.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Estoque Escritural'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 8
        Top = 728
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          1926.166666666667000000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Observa'#231#245'es'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 216
        Top = 632
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          571.500000000000000000
          1672.166666666667000000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 8
        Top = 632
        Width = 147
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          1672.166666666667000000
          388.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Acumulado no m'#234's'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 169
        Top = 589
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          447.145833333333300000
          1558.395833333333000000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Left = 8
        Top = 589
        Width = 143
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          1558.395833333333000000
          378.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor das Vendas do dia'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 48
        Top = 552
        Width = 104
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          1460.500000000000000000
          275.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor das Vendas'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 39
        Top = 44
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          103.187500000000000000
          116.416666666666700000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Produto:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 584
        Top = 336
        Width = 93
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1545.166666666667000000
          889.000000000000000000
          246.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vendas no Bico'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 384
        Top = 336
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          889.000000000000000000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Aferi'#231#245'es'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 256
        Top = 336
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          677.333333333333300000
          889.000000000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Abertura'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 144
        Top = 336
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          381.000000000000000000
          889.000000000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fechamento'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 88
        Top = 336
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          232.833333333333300000
          889.000000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Bico'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 40
        Top = 336
        Width = 18
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          105.833333333333300000
          889.000000000000000000
          47.625000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TQ'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 369
        Top = 314
        Width = 107
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          976.312500000000000000
          830.791666666666700000
          283.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Volume Dispon'#237'vel'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 38
        Top = 313
        Width = 218
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          100.541666666666700000
          828.145833333333300000
          576.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Volume Vendido no dia (em litros)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 369
        Top = 290
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          976.312500000000000000
          767.291666666666700000
          256.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Recebido'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 527
        Top = 169
        Width = 103
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1394.354166666667000000
          447.145833333333300000
          272.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Volume Recebido'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 375
        Top = 170
        Width = 98
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          449.791666666666700000
          259.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nr. TQ Descarga'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 40
        Top = 264
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          105.833333333333300000
          698.500000000000000000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nota Fiscal n'#186
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 40
        Top = 240
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          105.833333333333300000
          635.000000000000000000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nota Fiscal n'#186
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 40
        Top = 216
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          105.833333333333300000
          571.500000000000000000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nota Fiscal n'#186
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 40
        Top = 192
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          105.833333333333300000
          508.000000000000000000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nota Fiscal n'#186
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 38
        Top = 168
        Width = 225
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          100.541666666666700000
          444.500000000000000000
          595.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Volume Recebido no dia (em litros)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 527
        Top = 108
        Width = 102
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1394.354166666667000000
          285.750000000000000000
          269.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Estoque Abertura'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 392
        Top = 552
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1037.166666666667000000
          1460.500000000000000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vendas no dia'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 439
        Top = 108
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1161.520833333333000000
          285.750000000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tanque 6'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 359
        Top = 108
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          949.854166666666700000
          285.750000000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tanque 5'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 140
        Top = 191
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          370.416666666666700000
          505.354166666666700000
          232.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'NOTAFISCAL1'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText83: TQRDBText
        Left = 562
        Top = 312
        Width = 106
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1486.958333333333000000
          825.500000000000000000
          280.458333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'DISPONIVEL_DIA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText82: TQRDBText
        Left = 572
        Top = 288
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1513.416666666667000000
          762.000000000000000000
          254.000000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'RECEBIDO_DIA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText81: TQRDBText
        Left = 194
        Top = 590
        Width = 123
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          513.291666666666700000
          1561.041666666667000000
          325.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'TOTALVENDAS_DIA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText80: TQRDBText
        Left = 586
        Top = 553
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1550.458333333333000000
          1463.145833333333000000
          219.604166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'VENDAS_DIA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 439
        Top = 140
        Width = 57
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1161.520833333333000000
          370.416666666666700000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ESTOQ_ABERTURA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText79: TQRDBText
        Left = 591
        Top = 529
        Width = 77
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1563.687500000000000000
          1399.645833333333000000
          203.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'QTEVEND_8'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText78: TQRDBText
        Left = 591
        Top = 502
        Width = 77
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1563.687500000000000000
          1328.208333333333000000
          203.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'QTEVEND_7'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText76: TQRDBText
        Left = 591
        Top = 457
        Width = 77
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1563.687500000000000000
          1209.145833333333000000
          203.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'QTEVEND_5'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText75: TQRDBText
        Left = 591
        Top = 432
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1563.687500000000000000
          1143.000000000000000000
          203.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'QTEVEND_4'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText74: TQRDBText
        Left = 591
        Top = 408
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1563.687500000000000000
          1079.500000000000000000
          203.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'QTEVEND_3'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText73: TQRDBText
        Left = 591
        Top = 383
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1563.687500000000000000
          1013.354166666667000000
          203.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'QTEVEND_2'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText72: TQRDBText
        Left = 591
        Top = 361
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1563.687500000000000000
          955.145833333333300000
          203.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'QTEVEND_1'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText71: TQRDBText
        Left = 375
        Top = 529
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          1399.645833333333000000
          216.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ABER_BICO8'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText70: TQRDBText
        Left = 375
        Top = 502
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          1328.208333333333000000
          214.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'AFER_BICO7'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 359
        Top = 140
        Width = 57
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          949.854166666666700000
          370.416666666666700000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ESTOQ_ABERTURA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText68: TQRDBText
        Left = 375
        Top = 457
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          1209.145833333333000000
          214.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'AFER_BICO5'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText67: TQRDBText
        Left = 375
        Top = 432
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          1143.000000000000000000
          214.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'AFER_BICO4'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText66: TQRDBText
        Left = 375
        Top = 408
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          1079.500000000000000000
          214.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'AFER_BICO3'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText65: TQRDBText
        Left = 375
        Top = 383
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          1013.354166666667000000
          214.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'AFER_BICO2'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText64: TQRDBText
        Left = 375
        Top = 361
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          955.145833333333300000
          214.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'AFER_BICO1'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText63: TQRDBText
        Left = 239
        Top = 529
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          632.354166666666700000
          1399.645833333333000000
          216.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ABER_BICO8'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText62: TQRDBText
        Left = 239
        Top = 502
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          632.354166666666700000
          1328.208333333333000000
          216.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ABER_BICO7'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText60: TQRDBText
        Left = 239
        Top = 457
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          632.354166666666700000
          1209.145833333333000000
          216.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ABER_BICO5'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 279
        Top = 140
        Width = 65
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          738.187500000000000000
          370.416666666666700000
          171.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ESTOQ_ABERTURA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText59: TQRDBText
        Left = 239
        Top = 432
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          632.354166666666700000
          1143.000000000000000000
          216.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ABER_BICO4'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText58: TQRDBText
        Left = 239
        Top = 408
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          632.354166666666700000
          1079.500000000000000000
          216.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ABER_BICO3'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText57: TQRDBText
        Left = 239
        Top = 383
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          632.354166666666700000
          1013.354166666667000000
          216.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ABER_BICO2'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText56: TQRDBText
        Left = 239
        Top = 361
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          632.354166666666700000
          955.145833333333300000
          216.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ABER_BICO1'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText55: TQRDBText
        Left = 143
        Top = 529
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          1399.645833333333000000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ENC_BICO8'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText54: TQRDBText
        Left = 143
        Top = 502
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          1328.208333333333000000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ENC_BICO7'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText52: TQRDBText
        Left = 143
        Top = 457
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          1209.145833333333000000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ENC_BICO5'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText51: TQRDBText
        Left = 143
        Top = 432
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          1143.000000000000000000
          203.729166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ENC_BICO4'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText50: TQRDBText
        Left = 143
        Top = 408
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          1079.500000000000000000
          203.729166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ENC_BICO3'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 199
        Top = 140
        Width = 54
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          526.520833333333300000
          370.416666666666700000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ESTOQ_ABERTURA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText49: TQRDBText
        Left = 143
        Top = 383
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          1013.354166666667000000
          203.729166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ENC_BICO2'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText48: TQRDBText
        Left = 143
        Top = 361
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          955.145833333333300000
          203.729166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ENC_BICO1'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText47: TQRDBText
        Left = 36
        Top = 529
        Width = 25
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          95.250000000000000000
          1399.645833333333000000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'TANQUE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText46: TQRDBText
        Left = 36
        Top = 502
        Width = 25
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          95.250000000000000000
          1328.208333333333000000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'TANQUE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText44: TQRDBText
        Left = 36
        Top = 457
        Width = 25
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          95.250000000000000000
          1209.145833333333000000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'TANQUE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText43: TQRDBText
        Left = 36
        Top = 432
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          95.250000000000000000
          1143.000000000000000000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'TANQUE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText42: TQRDBText
        Left = 36
        Top = 408
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          95.250000000000000000
          1079.500000000000000000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'TANQUE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText41: TQRDBText
        Left = 36
        Top = 383
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          95.250000000000000000
          1013.354166666667000000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'TANQUE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText40: TQRDBText
        Left = 36
        Top = 361
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          95.250000000000000000
          955.145833333333300000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'TANQUE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 120
        Top = 140
        Width = 56
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          370.416666666666700000
          148.166666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ESTOQ_ABERTURA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText39: TQRDBText
        Left = 84
        Top = 529
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          222.250000000000000000
          1399.645833333333000000
          66.145833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ID_BICO8'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText38: TQRDBText
        Left = 84
        Top = 502
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          222.250000000000000000
          1328.208333333333000000
          66.145833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ID_BICO7'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText36: TQRDBText
        Left = 84
        Top = 457
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          222.250000000000000000
          1209.145833333333000000
          66.145833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ID_BICO5'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText35: TQRDBText
        Left = 84
        Top = 432
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          222.250000000000000000
          1143.000000000000000000
          66.145833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ID_BICO4'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText34: TQRDBText
        Left = 84
        Top = 408
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          222.250000000000000000
          1079.500000000000000000
          66.145833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ID_BICO3'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText33: TQRDBText
        Left = 84
        Top = 383
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          222.250000000000000000
          1013.354166666667000000
          66.145833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ID_BICO2'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText32: TQRDBText
        Left = 84
        Top = 361
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          222.250000000000000000
          955.145833333333300000
          66.145833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ID_BICO1'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText30: TQRDBText
        Left = 622
        Top = 969
        Width = 77
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1645.708333333333000000
          2563.812500000000000000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ESTOQ_FECHAMENTO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 39
        Top = 140
        Width = 57
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          103.187500000000000000
          370.416666666666700000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ESTOQ_ABERTURA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText29: TQRDBText
        Left = 528
        Top = 969
        Width = 77
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1397.000000000000000000
          2563.812500000000000000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ESTOQ_FECHAMENTO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText28: TQRDBText
        Left = 426
        Top = 971
        Width = 77
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1127.125000000000000000
          2569.104166666667000000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ESTOQ_FECHAMENTO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText27: TQRDBText
        Left = 321
        Top = 970
        Width = 77
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          849.312500000000000000
          2566.458333333333000000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ESTOQ_FECHAMENTO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText26: TQRDBText
        Left = 218
        Top = 970
        Width = 70
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          576.791666666666700000
          2566.458333333333000000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ESTOQ_FECHAMENTO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText25: TQRDBText
        Left = 121
        Top = 969
        Width = 63
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          320.145833333333300000
          2563.812500000000000000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ESTOQ_FECHAMENTO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText24: TQRDBText
        Left = 571
        Top = 624
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1510.770833333333000000
          1651.000000000000000000
          261.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'PERDA_SOBRA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText23: TQRDBText
        Left = 527
        Top = 600
        Width = 143
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1394.354166666667000000
          1587.500000000000000000
          378.354166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ESTOQ_FECHAMENTO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText22: TQRDBText
        Left = 536
        Top = 576
        Width = 133
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1418.166666666667000000
          1524.000000000000000000
          351.895833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ESTOQ_ESCRITURAL'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 385
        Top = 264
        Width = 54
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1018.645833333333000000
          698.500000000000000000
          142.875000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'TANQUE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText20: TQRDBText
        Left = 385
        Top = 239
        Width = 54
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1018.645833333333000000
          632.354166666666700000
          142.875000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'TANQUE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 567
        Top = 44
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1500.187500000000000000
          116.416666666666700000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'DATA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText19: TQRDBText
        Left = 384
        Top = 214
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          566.208333333333300000
          142.875000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'TANQUE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText18: TQRDBText
        Left = 383
        Top = 189
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1013.354166666667000000
          500.062500000000000000
          142.875000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'TANQUE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 600
        Top = 264
        Width = 69
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          698.500000000000000000
          182.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'QUANTNF4'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 600
        Top = 240
        Width = 69
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          635.000000000000000000
          182.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'QUANTNF3'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 600
        Top = 217
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          574.145833333333300000
          182.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'QUANTNF2'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 600
        Top = 192
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          508.000000000000000000
          182.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'QUANTNF1'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 545
        Top = 140
        Width = 123
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1441.979166666667000000
          370.416666666666700000
          325.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ESTOQ_ABERTURA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 139
        Top = 265
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          367.770833333333300000
          701.145833333333300000
          232.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'NOTAFISCAL4'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 139
        Top = 240
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          367.770833333333300000
          635.000000000000000000
          232.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'NOTAFISCAL3'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 139
        Top = 218
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          367.770833333333300000
          576.791666666666700000
          232.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'NOTAFISCAL2'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape18: TQRShape
        Left = 311
        Top = 164
        Width = 33
        Height = 169
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          447.145833333333300000
          822.854166666666700000
          433.916666666666700000
          87.312500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 495
        Top = 164
        Width = 33
        Height = 169
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          447.145833333333300000
          1309.687500000000000000
          433.916666666666700000
          87.312500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 503
        Top = 37
        Width = 17
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666670000
          1330.854166666667000000
          97.895833333333330000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Left = 167
        Top = 628
        Width = 153
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          441.854166666666700000
          1661.583333333333000000
          404.812500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape42: TQRShape
        Left = 7
        Top = 669
        Width = 193
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          18.520833333333330000
          1770.062500000000000000
          510.645833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel35: TQRLabel
        Left = 8
        Top = 672
        Width = 142
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          1778.000000000000000000
          375.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Para uso do Revendedor'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape51: TQRShape
        Left = 348
        Top = 660
        Width = 353
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          920.750000000000000000
          1746.250000000000000000
          933.979166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape52: TQRShape
        Left = 340
        Top = 820
        Width = 361
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          899.583333333333300000
          2169.583333333333000000
          955.145833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel40: TQRLabel
        Left = 352
        Top = 664
        Width = 147
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          931.333333333333300000
          1756.833333333333000000
          388.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Destinado a Fiscaliza'#231#227'o'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel42: TQRLabel
        Left = 352
        Top = 832
        Width = 138
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          931.333333333333300000
          2201.333333333333000000
          365.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Outros Org'#227'os Fiscais'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape7: TQRShape
        Left = 103
        Top = 100
        Width = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          272.520833333333300000
          264.583333333333300000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 183
        Top = 100
        Width = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          484.187500000000000000
          264.583333333333300000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 263
        Top = 100
        Width = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          695.854166666666700000
          264.583333333333300000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 111
        Top = 44
        Width = 93
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          293.687500000000000000
          116.416666666666700000
          246.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'COMBUSTIVEL'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape6: TQRShape
        Left = 4
        Top = 124
        Width = 697
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          328.083333333333300000
          1844.145833333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape59: TQRShape
        Left = 607
        Top = 942
        Width = 17
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          1606.020833333333000000
          2492.375000000000000000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape58: TQRShape
        Left = 503
        Top = 942
        Width = 17
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          1330.854166666667000000
          2492.375000000000000000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape57: TQRShape
        Left = 399
        Top = 942
        Width = 17
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          1055.687500000000000000
          2492.375000000000000000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape56: TQRShape
        Left = 295
        Top = 942
        Width = 17
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          780.520833333333300000
          2492.375000000000000000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape55: TQRShape
        Left = 191
        Top = 942
        Width = 17
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          505.354166666666700000
          2492.375000000000000000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape60: TQRShape
        Left = 103
        Top = 942
        Width = 17
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          272.520833333333300000
          2492.375000000000000000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 4
        Top = 476
        Width = 697
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          10.583333333333330000
          1259.416666666667000000
          1844.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText77: TQRDBText
        Left = 591
        Top = 480
        Width = 77
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1563.687500000000000000
          1270.000000000000000000
          203.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'QTEVEND_6'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText69: TQRDBText
        Left = 375
        Top = 480
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          1270.000000000000000000
          214.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'AFER_BICO6'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText61: TQRDBText
        Left = 239
        Top = 480
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          632.354166666666700000
          1270.000000000000000000
          216.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ABER_BICO6'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText53: TQRDBText
        Left = 143
        Top = 480
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          1270.000000000000000000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ENC_BICO6'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText37: TQRDBText
        Left = 83
        Top = 480
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          219.604166666666700000
          1270.000000000000000000
          66.145833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'ID_BICO6'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText45: TQRDBText
        Left = 36
        Top = 480
        Width = 25
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          95.250000000000000000
          1270.000000000000000000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'TANQUE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape35: TQRShape
        Left = 503
        Top = 332
        Width = 17
        Height = 217
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          574.145833333333300000
          1330.854166666667000000
          878.416666666666700000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 319
        Top = 332
        Width = 17
        Height = 217
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          574.145833333333300000
          844.020833333333300000
          878.416666666666700000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 223
        Top = 332
        Width = 17
        Height = 217
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          574.145833333333300000
          590.020833333333300000
          878.416666666666700000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 119
        Top = 332
        Width = 17
        Height = 217
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          574.145833333333300000
          314.854166666666700000
          878.416666666666700000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 63
        Top = 332
        Width = 17
        Height = 217
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          574.145833333333300000
          166.687500000000000000
          878.416666666666700000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object lproduto: TQRLabel
        Left = 207
        Top = 44
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          547.687500000000000000
          116.416666666666700000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Produto:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText84: TQRDBText
        Left = 188
        Top = 633
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          497.416666666666700000
          1674.812500000000000000
          341.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'TOTALVENDAS_ACU'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 192
        Top = 4
        Width = 355
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          508.000000000000000000
          10.583333333333330000
          939.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Livro de Movimenta'#231#227'o de Combust'#237'veis(LMC)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText31: TQRDBText
        Left = 669
        Top = 4
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1770.062500000000000000
          10.583333333333330000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qrLMC
        DataField = 'PAGINA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 631
        Top = 4
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1669.520833333333000000
          10.583333333333330000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Folha:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
  end
  object qrLMC: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from LMC')
    Left = 8
    Top = 248
    object qrLMCCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrLMCTANQUE: TIntegerField
      FieldName = 'TANQUE'
      Origin = 'TANQUE'
    end
    object qrLMCBOMBA: TIntegerField
      FieldName = 'BOMBA'
      Origin = 'BOMBA'
    end
    object qrLMCBICO: TStringField
      FieldName = 'BICO'
      Origin = 'BICO'
      Size = 5
    end
    object qrLMCABERTURA: TIntegerField
      FieldName = 'ABERTURA'
      Origin = 'ABERTURA'
    end
    object qrLMCENCERRANTE: TIntegerField
      FieldName = 'ENCERRANTE'
      Origin = 'ENCERRANTE'
    end
    object qrLMCCOMBUSTIVEL: TIntegerField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
    end
    object qrLMCDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qrLMCPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 3
    end
    object qrLMCQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 3
    end
    object qrLMCSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object qrLMCNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Origin = 'NR_NOTA'
    end
    object qrLMCNOTAFISCAL1: TStringField
      FieldName = 'NOTAFISCAL1'
      Origin = 'NOTAFISCAL1'
      Size = 10
    end
    object qrLMCNOTAFISCAL2: TStringField
      FieldName = 'NOTAFISCAL2'
      Origin = 'NOTAFISCAL2'
      Size = 10
    end
    object qrLMCNOTAFISCAL3: TStringField
      FieldName = 'NOTAFISCAL3'
      Origin = 'NOTAFISCAL3'
      Size = 10
    end
    object qrLMCNOTAFISCAL4: TStringField
      FieldName = 'NOTAFISCAL4'
      Origin = 'NOTAFISCAL4'
      Size = 10
    end
    object qrLMCQUANTNF1: TIntegerField
      FieldName = 'QUANTNF1'
      Origin = 'QUANTNF1'
    end
    object qrLMCQUANTNF2: TIntegerField
      FieldName = 'QUANTNF2'
      Origin = 'QUANTNF2'
    end
    object qrLMCQUANTNF3: TIntegerField
      FieldName = 'QUANTNF3'
      Origin = 'QUANTNF3'
    end
    object qrLMCQUANTNF4: TIntegerField
      FieldName = 'QUANTNF4'
      Origin = 'QUANTNF4'
    end
    object qrLMCBICO1: TIntegerField
      FieldName = 'BICO1'
      Origin = 'BICO1'
    end
    object qrLMCBICO2: TIntegerField
      FieldName = 'BICO2'
      Origin = 'BICO2'
    end
    object qrLMCBICO3: TIntegerField
      FieldName = 'BICO3'
      Origin = 'BICO3'
    end
    object qrLMCBICO4: TIntegerField
      FieldName = 'BICO4'
      Origin = 'BICO4'
    end
    object qrLMCBICO5: TIntegerField
      FieldName = 'BICO5'
      Origin = 'BICO5'
    end
    object qrLMCBICO6: TIntegerField
      FieldName = 'BICO6'
      Origin = 'BICO6'
    end
    object qrLMCBICO7: TIntegerField
      FieldName = 'BICO7'
      Origin = 'BICO7'
    end
    object qrLMCBICO8: TIntegerField
      FieldName = 'BICO8'
      Origin = 'BICO8'
    end
    object qrLMCABER_BICO1: TIntegerField
      FieldName = 'ABER_BICO1'
      Origin = 'ABER_BICO1'
    end
    object qrLMCABER_BICO2: TIntegerField
      FieldName = 'ABER_BICO2'
      Origin = 'ABER_BICO2'
    end
    object qrLMCABER_BICO3: TIntegerField
      FieldName = 'ABER_BICO3'
      Origin = 'ABER_BICO3'
    end
    object qrLMCABER_BICO4: TIntegerField
      FieldName = 'ABER_BICO4'
      Origin = 'ABER_BICO4'
    end
    object qrLMCABER_BICO5: TIntegerField
      FieldName = 'ABER_BICO5'
      Origin = 'ABER_BICO5'
    end
    object qrLMCABER_BICO6: TIntegerField
      FieldName = 'ABER_BICO6'
      Origin = 'ABER_BICO6'
    end
    object qrLMCABER_BICO7: TIntegerField
      FieldName = 'ABER_BICO7'
      Origin = 'ABER_BICO7'
    end
    object qrLMCABER_BICO8: TIntegerField
      FieldName = 'ABER_BICO8'
      Origin = 'ABER_BICO8'
    end
    object qrLMCENC_BICO1: TIntegerField
      FieldName = 'ENC_BICO1'
      Origin = 'ENC_BICO1'
    end
    object qrLMCENC_BICO2: TIntegerField
      FieldName = 'ENC_BICO2'
      Origin = 'ENC_BICO2'
    end
    object qrLMCENC_BICO3: TIntegerField
      FieldName = 'ENC_BICO3'
      Origin = 'ENC_BICO3'
    end
    object qrLMCENC_BICO4: TIntegerField
      FieldName = 'ENC_BICO4'
      Origin = 'ENC_BICO4'
    end
    object qrLMCENC_BICO5: TIntegerField
      FieldName = 'ENC_BICO5'
      Origin = 'ENC_BICO5'
    end
    object qrLMCENC_BICO6: TIntegerField
      FieldName = 'ENC_BICO6'
      Origin = 'ENC_BICO6'
    end
    object qrLMCENC_BICO7: TIntegerField
      FieldName = 'ENC_BICO7'
      Origin = 'ENC_BICO7'
    end
    object qrLMCENC_BICO8: TIntegerField
      FieldName = 'ENC_BICO8'
      Origin = 'ENC_BICO8'
    end
    object qrLMCAFER_BICO1: TIntegerField
      FieldName = 'AFER_BICO1'
      Origin = 'AFER_BICO1'
    end
    object qrLMCAFER_BICO2: TIntegerField
      FieldName = 'AFER_BICO2'
      Origin = 'AFER_BICO2'
    end
    object qrLMCAFER_BICO3: TIntegerField
      FieldName = 'AFER_BICO3'
      Origin = 'AFER_BICO3'
    end
    object qrLMCAFER_BICO4: TIntegerField
      FieldName = 'AFER_BICO4'
      Origin = 'AFER_BICO4'
    end
    object qrLMCAFER_BICO5: TIntegerField
      FieldName = 'AFER_BICO5'
      Origin = 'AFER_BICO5'
    end
    object qrLMCAFER_BICO6: TIntegerField
      FieldName = 'AFER_BICO6'
      Origin = 'AFER_BICO6'
    end
    object qrLMCAFER_BICO7: TIntegerField
      FieldName = 'AFER_BICO7'
      Origin = 'AFER_BICO7'
    end
    object qrLMCAFER_BICO8: TIntegerField
      FieldName = 'AFER_BICO8'
      Origin = 'AFER_BICO8'
    end
    object qrLMCQTEVEND_1: TIntegerField
      FieldName = 'QTEVEND_1'
      Origin = 'QTEVEND_1'
    end
    object qrLMCQTEVEND_2: TIntegerField
      FieldName = 'QTEVEND_2'
      Origin = 'QTEVEND_2'
    end
    object qrLMCQTEVEND_3: TIntegerField
      FieldName = 'QTEVEND_3'
      Origin = 'QTEVEND_3'
    end
    object qrLMCQTEVEND_4: TIntegerField
      FieldName = 'QTEVEND_4'
      Origin = 'QTEVEND_4'
    end
    object qrLMCQTEVEND_5: TIntegerField
      FieldName = 'QTEVEND_5'
      Origin = 'QTEVEND_5'
    end
    object qrLMCQTEVEND_6: TIntegerField
      FieldName = 'QTEVEND_6'
      Origin = 'QTEVEND_6'
    end
    object qrLMCQTEVEND_7: TIntegerField
      FieldName = 'QTEVEND_7'
      Origin = 'QTEVEND_7'
    end
    object qrLMCQTEVEND_8: TIntegerField
      FieldName = 'QTEVEND_8'
      Origin = 'QTEVEND_8'
    end
    object qrLMCTOTALVEND_1: TBCDField
      FieldName = 'TOTALVEND_1'
      Origin = 'TOTALVEND_1'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_2: TBCDField
      FieldName = 'TOTALVEND_2'
      Origin = 'TOTALVEND_2'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_3: TBCDField
      FieldName = 'TOTALVEND_3'
      Origin = 'TOTALVEND_3'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_4: TBCDField
      FieldName = 'TOTALVEND_4'
      Origin = 'TOTALVEND_4'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_5: TBCDField
      FieldName = 'TOTALVEND_5'
      Origin = 'TOTALVEND_5'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_6: TBCDField
      FieldName = 'TOTALVEND_6'
      Origin = 'TOTALVEND_6'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_7: TBCDField
      FieldName = 'TOTALVEND_7'
      Origin = 'TOTALVEND_7'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_8: TBCDField
      FieldName = 'TOTALVEND_8'
      Origin = 'TOTALVEND_8'
      Precision = 18
      Size = 3
    end
    object qrLMCESTOQ_ABERTURA: TIntegerField
      FieldName = 'ESTOQ_ABERTURA'
      Origin = 'ESTOQ_ABERTURA'
    end
    object qrLMCESTOQ_ESCRITURAL: TIntegerField
      FieldName = 'ESTOQ_ESCRITURAL'
      Origin = 'ESTOQ_ESCRITURAL'
    end
    object qrLMCESTOQ_FECHAMENTO: TIntegerField
      FieldName = 'ESTOQ_FECHAMENTO'
      Origin = 'ESTOQ_FECHAMENTO'
    end
    object qrLMCPERDA_SOBRA: TIntegerField
      FieldName = 'PERDA_SOBRA'
      Origin = 'PERDA_SOBRA'
    end
    object qrLMCOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 255
    end
    object qrLMCPAGINA: TIntegerField
      FieldName = 'PAGINA'
      Origin = 'PAGINA'
    end
    object qrLMCID_BICO1: TStringField
      FieldName = 'ID_BICO1'
      Origin = 'ID_BICO1'
      Size = 2
    end
    object qrLMCID_BICO2: TStringField
      FieldName = 'ID_BICO2'
      Origin = 'ID_BICO2'
      Size = 2
    end
    object qrLMCID_BICO3: TStringField
      FieldName = 'ID_BICO3'
      Origin = 'ID_BICO3'
      Size = 2
    end
    object qrLMCID_BICO4: TStringField
      FieldName = 'ID_BICO4'
      Origin = 'ID_BICO4'
      Size = 2
    end
    object qrLMCID_BICO5: TStringField
      FieldName = 'ID_BICO5'
      Origin = 'ID_BICO5'
      Size = 2
    end
    object qrLMCID_BICO6: TStringField
      FieldName = 'ID_BICO6'
      Origin = 'ID_BICO6'
      Size = 2
    end
    object qrLMCID_BICO7: TStringField
      FieldName = 'ID_BICO7'
      Origin = 'ID_BICO7'
      Size = 2
    end
    object qrLMCID_BICO8: TStringField
      FieldName = 'ID_BICO8'
      Origin = 'ID_BICO8'
      Size = 2
    end
    object qrLMCVENDAS_DIA: TLargeintField
      FieldName = 'VENDAS_DIA'
      Origin = 'VENDAS_DIA'
    end
    object qrLMCRECEBIDO_DIA: TLargeintField
      FieldName = 'RECEBIDO_DIA'
      Origin = 'RECEBIDO_DIA'
    end
    object qrLMCDISPONIVEL_DIA: TLargeintField
      FieldName = 'DISPONIVEL_DIA'
      Origin = 'DISPONIVEL_DIA'
    end
    object qrLMCTOTALVENDAS_DIA: TBCDField
      FieldName = 'TOTALVENDAS_DIA'
      Origin = 'TOTALVENDAS_DIA'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVENDAS_ACU: TBCDField
      FieldName = 'TOTALVENDAS_ACU'
      Origin = 'TOTALVENDAS_ACU'
      Precision = 18
      Size = 3
    end
  end
  object qrCombustivel: TFDQuery
    CachedUpdates = True
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from produtos')
    Left = 8
    Top = 208
    object qrCombustivelCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrCombustivelCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object qrCombustivelDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object qrCombustivelABREVIADO: TStringField
      FieldName = 'ABREVIADO'
      Origin = 'ABREVIADO'
      Size = 29
    end
    object qrCombustivelPRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object qrCombustivelMARGEM_LUCRO: TBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      Precision = 18
      Size = 2
    end
    object qrCombustivelCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object qrCombustivelUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
    end
    object qrCombustivelFRETE: TBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object qrCombustivelICMS: TBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
      Size = 2
    end
    object qrCombustivelIPI_IRPJ: TBCDField
      FieldName = 'IPI_IRPJ'
      Origin = 'IPI_IRPJ'
      Precision = 18
      Size = 2
    end
    object qrCombustivelOUTROS_IMPOSTOS: TBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'OUTROS_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object qrCombustivelDESCONTOS: TBCDField
      FieldName = 'DESCONTOS'
      Origin = 'DESCONTOS'
      Precision = 18
      Size = 2
    end
    object qrCombustivelCLASS_FISCAL: TStringField
      FieldName = 'CLASS_FISCAL'
      Origin = 'CLASS_FISCAL'
      Size = 6
    end
    object qrCombustivelSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object qrCombustivelCUSTO_MEDIO: TBCDField
      FieldName = 'CUSTO_MEDIO'
      Origin = 'CUSTO_MEDIO'
      Precision = 18
      Size = 2
    end
    object qrCombustivelPRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 3
    end
    object qrCombustivelDESCONTO_MAXIMO: TBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Origin = 'DESCONTO_MAXIMO'
      Precision = 18
      Size = 2
    end
    object qrCombustivelCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
      Origin = 'CODIGO_GRUPO'
    end
    object qrCombustivelCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
      Origin = 'CODIGO_SUBGRUPO'
    end
    object qrCombustivelCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
      Origin = 'CODIGO_MARCA'
    end
    object qrCombustivelNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Origin = 'NOME_GRUPO'
      Size = 40
    end
    object qrCombustivelNOME_SUBGRUPO: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = 'NOME_SUBGRUPO'
      Size = 40
    end
    object qrCombustivelNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Origin = 'NOME_MARCA'
      Size = 40
    end
    object qrCombustivelNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = 'NOME_FORNECEDOR'
      Size = 70
    end
    object qrCombustivelCODIGO_FORNECEDORES: TIntegerField
      FieldName = 'CODIGO_FORNECEDORES'
      Origin = 'CODIGO_FORNECEDORES'
    end
    object qrCombustivelFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qrCombustivelESTOQUE_ATUAL: TBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Origin = 'ESTOQUE_ATUAL'
      Precision = 18
    end
    object qrCombustivelESTOQUE_VENDIDO: TBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      Origin = 'ESTOQUE_VENDIDO'
      Precision = 18
      Size = 2
    end
    object qrCombustivelESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
    end
    object qrCombustivelVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Origin = 'VALOR_ESTOQUE_ATUAL'
      Precision = 18
      Size = 6
    end
    object qrCombustivelVALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      Origin = 'VALOR_ESTOQUE'
      Precision = 18
      Size = 6
    end
    object qrCombustivelESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'ESTOQUE_MINIMO'
    end
    object qrCombustivelESTOQUE_MAXIMO: TIntegerField
      FieldName = 'ESTOQUE_MAXIMO'
      Origin = 'ESTOQUE_MAXIMO'
    end
    object qrCombustivelDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object qrCombustivelUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object qrCombustivelVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Origin = 'VALOR_EST_CUSTO_ATUAL'
      Precision = 18
      Size = 6
    end
    object qrCombustivelULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = 'ULTIMACOMPRA'
    end
    object qrCombustivelVALOR_EST_CUSTO: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO'
      Origin = 'VALOR_EST_CUSTO'
      Precision = 18
      Size = 6
    end
    object qrCombustivelSECCAO: TIntegerField
      FieldName = 'SECCAO'
      Origin = 'SECCAO'
    end
    object qrCombustivelCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object qrCombustivelLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 50
    end
    object qrCombustivelAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 500
    end
    object qrCombustivelESP_COD_AUX: TStringField
      FieldName = 'ESP_COD_AUX'
      Origin = 'ESP_COD_AUX'
      Size = 50
    end
    object qrCombustivelGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
      Origin = 'GARANTIA'
    end
    object qrCombustivelBALANCA: TStringField
      FieldName = 'BALANCA'
      Origin = 'BALANCA'
      Size = 1
    end
    object qrCombustivelETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Origin = 'ETIQUETA'
      Size = 1
    end
    object qrCombustivelATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qrCombustivelREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 15
    end
    object qrCombustivelCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object qrCombustivelDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Origin = 'DESC_UNIDADE'
      Size = 6
    end
    object qrCombustivelPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object qrCombustivelPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object qrCombustivelFONETICO: TStringField
      FieldName = 'FONETICO'
      Origin = 'FONETICO'
      Size = 60
    end
    object qrCombustivelDATAULTALTERACAO: TDateField
      FieldName = 'DATAULTALTERACAO'
      Origin = 'DATAULTALTERACAO'
    end
    object qrCombustivelCUSTOREPOSICAO: TBCDField
      FieldName = 'CUSTOREPOSICAO'
      Origin = 'CUSTOREPOSICAO'
      Precision = 18
      Size = 2
    end
    object qrCombustivelPRECO_ANT: TBCDField
      FieldName = 'PRECO_ANT'
      Origin = 'PRECO_ANT'
      Precision = 18
      Size = 3
    end
    object qrCombustivelPRECO_PROMOCAO: TBCDField
      FieldName = 'PRECO_PROMOCAO'
      Origin = 'PRECO_PROMOCAO'
      Precision = 18
      Size = 3
    end
    object qrCombustivelFLAG_PROMOCAO: TStringField
      FieldName = 'FLAG_PROMOCAO'
      Origin = 'FLAG_PROMOCAO'
      Size = 1
    end
    object qrCombustivelDT_INICIO_PROMO: TDateField
      FieldName = 'DT_INICIO_PROMO'
      Origin = 'DT_INICIO_PROMO'
    end
    object qrCombustivelDT_FIM_PROMO: TDateField
      FieldName = 'DT_FIM_PROMO'
      Origin = 'DT_FIM_PROMO'
    end
    object qrCombustivelCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
      Origin = 'COD_LABORATORIO'
    end
    object qrCombustivelLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Origin = 'LABORATORIO'
      Size = 70
    end
    object qrCombustivelPRINCIPIO_ATIVO: TStringField
      FieldName = 'PRINCIPIO_ATIVO'
      Origin = 'PRINCIPIO_ATIVO'
      Size = 70
    end
    object qrCombustivelMED_CONTROLADO: TStringField
      FieldName = 'MED_CONTROLADO'
      Origin = 'MED_CONTROLADO'
      Size = 1
    end
    object qrCombustivelQTD_FRACIONADA: TBCDField
      FieldName = 'QTD_FRACIONADA'
      Origin = 'QTD_FRACIONADA'
      Precision = 18
      Size = 2
    end
    object qrCombustivelQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
      Origin = 'QTD_CAIXA'
    end
    object qrCombustivelMED_GENERICO: TStringField
      FieldName = 'MED_GENERICO'
      Origin = 'MED_GENERICO'
      Size = 3
    end
    object qrCombustivelLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Origin = 'LOTE_MED'
      Size = 10
    end
    object qrCombustivelVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
    end
    object qrCombustivelCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Origin = 'CHEK_BOX'
      Size = 1
    end
    object qrCombustivelPRECO_VENDA2: TBCDField
      FieldName = 'PRECO_VENDA2'
      Origin = 'PRECO_VENDA2'
      Precision = 18
      Size = 3
    end
    object qrCombustivelMARGEM_LUCRO2: TBCDField
      FieldName = 'MARGEM_LUCRO2'
      Origin = 'MARGEM_LUCRO2'
      Precision = 18
      Size = 2
    end
    object qrCombustivelVALIDADE_PRODUTO: TStringField
      FieldName = 'VALIDADE_PRODUTO'
      Origin = 'VALIDADE_PRODUTO'
      Size = 3
    end
    object qrCombustivelPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      Size = 1
    end
    object qrCombustivelUNIDADE_ENT: TIntegerField
      FieldName = 'UNIDADE_ENT'
      Origin = 'UNIDADE_ENT'
    end
    object qrCombustivelDESC_UNID_ENT: TStringField
      FieldName = 'DESC_UNID_ENT'
      Origin = 'DESC_UNID_ENT'
      Size = 6
    end
    object qrCombustivelQUANT_SAIDA: TBCDField
      FieldName = 'QUANT_SAIDA'
      Origin = 'QUANT_SAIDA'
      Precision = 18
    end
    object qrCombustivelQUANT_ENTRADA: TBCDField
      FieldName = 'QUANT_ENTRADA'
      Origin = 'QUANT_ENTRADA'
      Precision = 18
    end
    object qrCombustivelESTOQUE_FRACAO: TBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Origin = 'ESTOQUE_FRACAO'
      Precision = 18
    end
    object qrCombustivelDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
      Origin = 'DATA_FABRICACAO'
    end
    object qrCombustivelFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object qrCombustivelNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 8
    end
    object qrCombustivelCOD_MS: TStringField
      FieldName = 'COD_MS'
      Origin = 'COD_MS'
      Size = 13
    end
    object qrCombustivelCONTOLAESTOQUE: TStringField
      FieldName = 'CONTOLAESTOQUE'
      Origin = 'CONTOLAESTOQUE'
      Size = 5
    end
    object qrCombustivelPRODUTOCOMPOSTO: TStringField
      FieldName = 'PRODUTOCOMPOSTO'
      Origin = 'PRODUTOCOMPOSTO'
      Size = 5
    end
    object qrCombustivelTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Origin = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object qrCombustivelCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
      Origin = 'COD_PRODUTO_ESTOQUE'
    end
    object qrCombustivelCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
      Origin = 'CODIGO_LOCAL_ESTOQUE'
    end
    object qrCombustivelLISTA_ABC: TStringField
      FieldName = 'LISTA_ABC'
      Origin = 'LISTA_ABC'
      Size = 1
    end
    object qrCombustivelGRUPO_TRIBUTACAO: TIntegerField
      FieldName = 'GRUPO_TRIBUTACAO'
      Origin = 'GRUPO_TRIBUTACAO'
    end
    object qrCombustivelCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Size = 1
    end
    object qrCombustivelCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'COR'
    end
    object qrCombustivelENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Origin = 'ENABLE_NUMSERIE'
      Required = True
    end
    object qrCombustivelID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = 'ID_PRODUTOS'
    end
    object qrCombustivelCOD_ANP: TStringField
      FieldName = 'COD_ANP'
      Origin = 'COD_ANP'
      Size = 9
    end
    object qrCombustivelCESTA: TStringField
      FieldName = 'CESTA'
      Origin = 'CESTA'
      Size = 1
    end
    object qrCombustivelML_QUANT_BEB: TBCDField
      FieldName = 'ML_QUANT_BEB'
      Origin = 'ML_QUANT_BEB'
      Precision = 18
      Size = 3
    end
    object qrCombustivelUND_TRIB: TStringField
      FieldName = 'UND_TRIB'
      Origin = 'UND_TRIB'
      Size = 3
    end
    object qrCombustivelCHASSI: TStringField
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      Size = 44
    end
    object qrCombustivelCOR_DESC: TStringField
      FieldName = 'COR_DESC'
      Origin = 'COR_DESC'
      Size = 30
    end
    object qrCombustivelN_MOTOR: TStringField
      FieldName = 'N_MOTOR'
      Origin = 'N_MOTOR'
      Size = 30
    end
    object qrCombustivelANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      Origin = 'ANO_FAB'
      Size = 4
    end
    object qrCombustivelANO_MOD_FAB: TStringField
      FieldName = 'ANO_MOD_FAB'
      Origin = 'ANO_MOD_FAB'
      Size = 4
    end
    object qrCombustivelTIPO_VEIC: TStringField
      FieldName = 'TIPO_VEIC'
      Origin = 'TIPO_VEIC'
      Size = 10
    end
    object qrCombustivelN_SERIE: TStringField
      FieldName = 'N_SERIE'
      Origin = 'N_SERIE'
      Size = 30
    end
    object qrCombustivelCOD_MODELO: TStringField
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      Size = 30
    end
    object qrCombustivelESPECIE_VEICULO: TStringField
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'ESPECIE_VEICULO'
      Size = 10
    end
    object qrCombustivelCOD_COR_DENATRAN: TStringField
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'COD_COR_DENATRAN'
      Size = 10
    end
    object qrCombustivelTIPO_COMBUSTIVEL: TStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'TIPO_COMBUSTIVEL'
      Size = 10
    end
    object qrCombustivelVEICULO: TStringField
      FieldName = 'VEICULO'
      Origin = 'VEICULO'
      Size = 1
    end
    object qrCombustivelUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
      Origin = 'USA_RENTABILIDADE'
    end
    object qrCombustivelUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
      Origin = 'USA_SERIAL'
    end
    object qrCombustivelUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
      Origin = 'USA_GRADE'
    end
    object qrCombustivelPRODUTO_PROPRIEDADE: TIntegerField
      FieldName = 'PRODUTO_PROPRIEDADE'
      Origin = 'PRODUTO_PROPRIEDADE'
    end
    object qrCombustivelMULTIP_FRACAO: TIntegerField
      FieldName = 'MULTIP_FRACAO'
      Origin = 'MULTIP_FRACAO'
    end
  end
  object qrApoio: TFDQuery
    Connection = DM.Coneccao
    Left = 8
    Top = 320
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Left = 8
    Top = 176
  end
  object QRRTFFilter1: TQRRTFFilter
    Left = 8
    Top = 144
  end
end
