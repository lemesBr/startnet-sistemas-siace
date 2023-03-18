object frmtemp: Tfrmtemp
  Left = 149
  Top = 96
  Width = 1036
  Height = 780
  Caption = 'frmtemp'
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
  object rrecibo: TQuickRep
    Left = 68
    Top = 17
    Width = 794
    Height = 561
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
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
    Page.PaperSize = Custom
    Page.Values = (
      60.000000000000000000
      1485.000000000000000000
      60.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRShape30: TQRShape
      Left = 37
      Top = 40
      Width = 2
      Height = 335
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        886.354166666666900000
        97.895833333333340000
        105.833333333333300000
        5.291666666666667000)
      Pen.Width = 2
      Shape = qrsVertLine
    end
    object QRShape36: TQRShape
      Left = 756
      Top = 40
      Width = 2
      Height = 336
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        889.000000000000000000
        2000.250000000000000000
        105.833333333333300000
        5.291666666666667000)
      Pen.Width = 2
      Shape = qrsVertLine
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 23
      Width = 718
      Height = 359
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        949.854166666666800000
        1899.708333333333000000)
      BandType = rbTitle
      object QRShape20: TQRShape
        Left = 586
        Top = 2
        Width = 121
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1550.458333333330000000
          5.291666666666670000
          320.145833333333000000)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape21: TQRShape
        Left = 0
        Top = 24
        Width = 719
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          0.000000000000000000
          63.500000000000000000
          1902.354166666670000000)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape1: TQRShape
        Left = 536
        Top = 34
        Width = 169
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          1418.166666666667000000
          89.958333333333340000
          447.145833333333400000)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 182
        Top = 320
        Width = 377
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          481.541666666666700000
          846.666666666666600000
          997.479166666666900000)
        Shape = qrsRectangle
      end
    end
    object QRShape22: TQRShape
      Left = 37
      Top = 369
      Width = 720
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        31.750000000000000000
        97.895833333333340000
        976.312500000000000000
        1905.000000000000000000)
      Pen.Mode = pmNot
      Pen.Width = 2
      Shape = qrsHorLine
    end
  end
  object rextrato: TQuickRep
    Left = 128
    Top = 168
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
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
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 115
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        304.270833333333400000
        1899.708333333333000000)
      BandType = rbTitle
      object QRShape3: TQRShape
        Left = 0
        Top = 94
        Width = 377
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          248.708333333333300000
          997.479166666666900000)
        Shape = qrsRectangle
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 110
        Width = 377
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          291.041666666666700000
          997.479166666666900000)
        Shape = qrsRectangle
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 70
        Width = 377
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          185.208333333333300000
          997.479166666666900000)
        Shape = qrsRectangle
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 153
      Width = 718
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333340000
        1899.708333333333000000)
      BandType = rbDetail
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 169
      Width = 718
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        1899.708333333333000000)
      BandType = rbSummary
      object QRShape5: TQRShape
        Left = 0
        Top = 2
        Width = 377
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          5.291666666666667000
          997.479166666666900000)
        Shape = qrsRectangle
      end
    end
  end
  object rextrato2: TQuickRep
    Left = 344
    Top = 341
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
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
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand5: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 115
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        304.270833333333400000
        1899.708333333333000000)
      BandType = rbTitle
      object QRShape7: TQRShape
        Left = 0
        Top = 94
        Width = 719
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          248.708333333333300000
          1902.354166666667000000)
        Shape = qrsRectangle
      end
      object QRShape8: TQRShape
        Left = 0
        Top = 110
        Width = 719
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          291.041666666666700000
          1902.354166666667000000)
        Shape = qrsRectangle
      end
      object QRShape9: TQRShape
        Left = 0
        Top = 72
        Width = 721
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          190.500000000000000000
          1907.645833333333000000)
        Shape = qrsRectangle
      end
    end
    object QRBand6: TQRBand
      Left = 38
      Top = 153
      Width = 718
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333340000
        1899.708333333333000000)
      BandType = rbDetail
    end
    object QRBand7: TQRBand
      Left = 38
      Top = 169
      Width = 718
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        1899.708333333333000000)
      BandType = rbSummary
      object QRShape10: TQRShape
        Left = 0
        Top = 2
        Width = 717
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          5.291666666666667000
          1897.062500000000000000)
        Shape = qrsRectangle
      end
    end
  end
end
