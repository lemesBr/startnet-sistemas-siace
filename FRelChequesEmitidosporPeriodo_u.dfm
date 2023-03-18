object FRelChequesEmitidosporPeriodo: TFRelChequesEmitidosporPeriodo
  Left = 352
  Top = 146
  BorderStyle = bsDialog
  Caption = 'Cheques Emitidos por Per'#237'odo'
  ClientHeight = 61
  ClientWidth = 545
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 545
    Height = 64
    Align = alTop
    Color = clMenu
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 18
      Top = 26
      Width = 67
      Height = 13
      Caption = 'Data Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 226
      Top = 26
      Width = 59
      Height = 13
      Caption = 'Data Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dtInicial: TDBAdvSmoothDatePicker
      Left = 96
      Top = 21
      Width = 99
      Height = 21
      Flat = False
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Enabled = True
      ReadOnly = False
      TabOrder = 0
      Text = '01/01/2014'
      Visible = True
      Version = '2.5.1.0'
      ButtonStyle = bsDropDown
      ButtonWidth = 16
      Etched = False
      Glyph.Data = {
        DA020000424DDA0200000000000036000000280000000D0000000D0000000100
        200000000000A402000000000000000000000000000000000000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E00000000000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000000000000000000000000000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E0000000000000000000000000000000000000000000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE0000000000000000000000000000000
        0000000000000000000000000000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000}
      HideCalendarAfterSelection = True
      Format = 'dd/mm/yyyy'
      Calendar.Fill.Color = 15984090
      Calendar.Fill.ColorTo = 15785680
      Calendar.Fill.ColorMirror = clNone
      Calendar.Fill.ColorMirrorTo = clNone
      Calendar.Fill.GradientType = gtVertical
      Calendar.Fill.GradientMirrorType = gtSolid
      Calendar.Fill.BorderColor = clNone
      Calendar.Fill.Rounding = 0
      Calendar.Fill.ShadowOffset = 0
      Calendar.Fill.Glow = gmNone
      Calendar.Animation = True
      Calendar.ShowCurrentDate = True
      Calendar.DateAppearance.DateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DateFont.Color = clWindowText
      Calendar.DateAppearance.DateFont.Height = -11
      Calendar.DateAppearance.DateFont.Name = 'Tahoma'
      Calendar.DateAppearance.DateFont.Style = []
      Calendar.DateAppearance.DateFill.Color = 16773091
      Calendar.DateAppearance.DateFill.ColorTo = 16768452
      Calendar.DateAppearance.DateFill.ColorMirror = 16765357
      Calendar.DateAppearance.DateFill.ColorMirrorTo = 16767936
      Calendar.DateAppearance.DateFill.GradientType = gtVertical
      Calendar.DateAppearance.DateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.DateFill.BorderColor = clNone
      Calendar.DateAppearance.DateFill.Rounding = 0
      Calendar.DateAppearance.DateFill.ShadowOffset = 0
      Calendar.DateAppearance.DateFill.Glow = gmNone
      Calendar.DateAppearance.DayOfWeekFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DayOfWeekFont.Color = clWindowText
      Calendar.DateAppearance.DayOfWeekFont.Height = -11
      Calendar.DateAppearance.DayOfWeekFont.Name = 'Tahoma'
      Calendar.DateAppearance.DayOfWeekFont.Style = []
      Calendar.DateAppearance.DayOfWeekFill.Color = 15984090
      Calendar.DateAppearance.DayOfWeekFill.ColorTo = 15785680
      Calendar.DateAppearance.DayOfWeekFill.ColorMirror = clNone
      Calendar.DateAppearance.DayOfWeekFill.ColorMirrorTo = clNone
      Calendar.DateAppearance.DayOfWeekFill.GradientType = gtVertical
      Calendar.DateAppearance.DayOfWeekFill.GradientMirrorType = gtSolid
      Calendar.DateAppearance.DayOfWeekFill.BorderColor = clNone
      Calendar.DateAppearance.DayOfWeekFill.Rounding = 0
      Calendar.DateAppearance.DayOfWeekFill.ShadowOffset = 0
      Calendar.DateAppearance.DayOfWeekFill.Glow = gmNone
      Calendar.DateAppearance.SelectedDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.SelectedDateFont.Color = clWindowText
      Calendar.DateAppearance.SelectedDateFont.Height = -11
      Calendar.DateAppearance.SelectedDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.SelectedDateFont.Style = []
      Calendar.DateAppearance.SelectedDateFill.Color = 11196927
      Calendar.DateAppearance.SelectedDateFill.ColorTo = 7257087
      Calendar.DateAppearance.SelectedDateFill.ColorMirror = 4370174
      Calendar.DateAppearance.SelectedDateFill.ColorMirrorTo = 8053246
      Calendar.DateAppearance.SelectedDateFill.GradientType = gtVertical
      Calendar.DateAppearance.SelectedDateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.SelectedDateFill.BorderColor = 4370174
      Calendar.DateAppearance.SelectedDateFill.Rounding = 0
      Calendar.DateAppearance.SelectedDateFill.ShadowOffset = 0
      Calendar.DateAppearance.SelectedDateFill.Glow = gmNone
      Calendar.DateAppearance.CurrentDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.CurrentDateFont.Color = clWindowText
      Calendar.DateAppearance.CurrentDateFont.Height = -11
      Calendar.DateAppearance.CurrentDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.CurrentDateFont.Style = []
      Calendar.DateAppearance.CurrentDateFill.Color = 7778289
      Calendar.DateAppearance.CurrentDateFill.ColorTo = 4296947
      Calendar.DateAppearance.CurrentDateFill.ColorMirror = 946929
      Calendar.DateAppearance.CurrentDateFill.ColorMirrorTo = 5021693
      Calendar.DateAppearance.CurrentDateFill.GradientType = gtVertical
      Calendar.DateAppearance.CurrentDateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.CurrentDateFill.BorderColor = 4548219
      Calendar.DateAppearance.CurrentDateFill.Rounding = 0
      Calendar.DateAppearance.CurrentDateFill.ShadowOffset = 0
      Calendar.DateAppearance.CurrentDateFill.Glow = gmNone
      Calendar.DateAppearance.WeekendFill.Color = 16773091
      Calendar.DateAppearance.WeekendFill.ColorTo = 16768452
      Calendar.DateAppearance.WeekendFill.ColorMirror = 16765357
      Calendar.DateAppearance.WeekendFill.ColorMirrorTo = 16767936
      Calendar.DateAppearance.WeekendFill.GradientType = gtVertical
      Calendar.DateAppearance.WeekendFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.WeekendFill.BorderColor = clNone
      Calendar.DateAppearance.WeekendFill.Rounding = 0
      Calendar.DateAppearance.WeekendFill.ShadowOffset = 0
      Calendar.DateAppearance.WeekendFill.Glow = gmNone
      Calendar.DateAppearance.WeekendFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.WeekendFont.Color = clWindowText
      Calendar.DateAppearance.WeekendFont.Height = -11
      Calendar.DateAppearance.WeekendFont.Name = 'Tahoma'
      Calendar.DateAppearance.WeekendFont.Style = []
      Calendar.DateAppearance.HoverDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.HoverDateFont.Color = clWindowText
      Calendar.DateAppearance.HoverDateFont.Height = -11
      Calendar.DateAppearance.HoverDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.HoverDateFont.Style = []
      Calendar.DateAppearance.HoverDateFill.Color = 15465983
      Calendar.DateAppearance.HoverDateFill.ColorTo = 11332863
      Calendar.DateAppearance.HoverDateFill.ColorMirror = 5888767
      Calendar.DateAppearance.HoverDateFill.ColorMirrorTo = 10807807
      Calendar.DateAppearance.HoverDateFill.GradientType = gtVertical
      Calendar.DateAppearance.HoverDateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.HoverDateFill.BorderColor = 10079963
      Calendar.DateAppearance.HoverDateFill.Rounding = 0
      Calendar.DateAppearance.HoverDateFill.ShadowOffset = 0
      Calendar.DateAppearance.HoverDateFill.Glow = gmNone
      Calendar.DateAppearance.MonthDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.MonthDateFont.Color = clWindowText
      Calendar.DateAppearance.MonthDateFont.Height = -11
      Calendar.DateAppearance.MonthDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.MonthDateFont.Style = []
      Calendar.DateAppearance.YearDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.YearDateFont.Color = clWindowText
      Calendar.DateAppearance.YearDateFont.Height = -11
      Calendar.DateAppearance.YearDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.YearDateFont.Style = []
      Calendar.DateAppearance.WeekNumbers.Font.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.WeekNumbers.Font.Color = clWindowText
      Calendar.DateAppearance.WeekNumbers.Font.Height = -11
      Calendar.DateAppearance.WeekNumbers.Font.Name = 'Tahoma'
      Calendar.DateAppearance.WeekNumbers.Font.Style = []
      Calendar.DateAppearance.WeekNumbers.Fill.Color = 15984090
      Calendar.DateAppearance.WeekNumbers.Fill.ColorTo = 15785680
      Calendar.DateAppearance.WeekNumbers.Fill.ColorMirror = clNone
      Calendar.DateAppearance.WeekNumbers.Fill.ColorMirrorTo = clNone
      Calendar.DateAppearance.WeekNumbers.Fill.GradientType = gtVertical
      Calendar.DateAppearance.WeekNumbers.Fill.GradientMirrorType = gtSolid
      Calendar.DateAppearance.WeekNumbers.Fill.BorderColor = clNone
      Calendar.DateAppearance.WeekNumbers.Fill.Rounding = 0
      Calendar.DateAppearance.WeekNumbers.Fill.ShadowOffset = 0
      Calendar.DateAppearance.WeekNumbers.Fill.Glow = gmNone
      Calendar.DateAppearance.DisabledDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DisabledDateFont.Color = clGray
      Calendar.DateAppearance.DisabledDateFont.Height = -11
      Calendar.DateAppearance.DisabledDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.DisabledDateFont.Style = []
      Calendar.DateAppearance.DisabledDateFill.Color = 15921906
      Calendar.DateAppearance.DisabledDateFill.ColorTo = 11974326
      Calendar.DateAppearance.DisabledDateFill.ColorMirror = 11974326
      Calendar.DateAppearance.DisabledDateFill.ColorMirrorTo = 15921906
      Calendar.DateAppearance.DisabledDateFill.GradientType = gtVertical
      Calendar.DateAppearance.DisabledDateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.DisabledDateFill.BorderColor = clNone
      Calendar.DateAppearance.DisabledDateFill.Rounding = 0
      Calendar.DateAppearance.DisabledDateFill.ShadowOffset = 0
      Calendar.DateAppearance.DisabledDateFill.Glow = gmNone
      Calendar.DateAppearance.DateBeforeFill.Color = clNone
      Calendar.DateAppearance.DateBeforeFill.ColorMirror = clNone
      Calendar.DateAppearance.DateBeforeFill.ColorMirrorTo = clNone
      Calendar.DateAppearance.DateBeforeFill.GradientType = gtVertical
      Calendar.DateAppearance.DateBeforeFill.GradientMirrorType = gtSolid
      Calendar.DateAppearance.DateBeforeFill.BorderColor = clNone
      Calendar.DateAppearance.DateBeforeFill.Rounding = 0
      Calendar.DateAppearance.DateBeforeFill.ShadowOffset = 0
      Calendar.DateAppearance.DateBeforeFill.Glow = gmNone
      Calendar.DateAppearance.DateAfterFill.Color = clNone
      Calendar.DateAppearance.DateAfterFill.ColorMirror = clNone
      Calendar.DateAppearance.DateAfterFill.ColorMirrorTo = clNone
      Calendar.DateAppearance.DateAfterFill.GradientType = gtVertical
      Calendar.DateAppearance.DateAfterFill.GradientMirrorType = gtSolid
      Calendar.DateAppearance.DateAfterFill.BorderColor = clNone
      Calendar.DateAppearance.DateAfterFill.Rounding = 0
      Calendar.DateAppearance.DateAfterFill.ShadowOffset = 0
      Calendar.DateAppearance.DateAfterFill.Glow = gmNone
      Calendar.DateAppearance.DateBeforeFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DateBeforeFont.Color = clSilver
      Calendar.DateAppearance.DateBeforeFont.Height = -11
      Calendar.DateAppearance.DateBeforeFont.Name = 'Tahoma'
      Calendar.DateAppearance.DateBeforeFont.Style = []
      Calendar.DateAppearance.DateAfterFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DateAfterFont.Color = clSilver
      Calendar.DateAppearance.DateAfterFont.Height = -11
      Calendar.DateAppearance.DateAfterFont.Name = 'Tahoma'
      Calendar.DateAppearance.DateAfterFont.Style = []
      Calendar.StatusAppearance.Fill.Color = clRed
      Calendar.StatusAppearance.Fill.ColorMirror = clNone
      Calendar.StatusAppearance.Fill.ColorMirrorTo = clNone
      Calendar.StatusAppearance.Fill.GradientType = gtSolid
      Calendar.StatusAppearance.Fill.GradientMirrorType = gtSolid
      Calendar.StatusAppearance.Fill.BorderColor = clGray
      Calendar.StatusAppearance.Fill.Rounding = 0
      Calendar.StatusAppearance.Fill.ShadowOffset = 0
      Calendar.StatusAppearance.Fill.Glow = gmNone
      Calendar.StatusAppearance.Font.Charset = DEFAULT_CHARSET
      Calendar.StatusAppearance.Font.Color = clWhite
      Calendar.StatusAppearance.Font.Height = -11
      Calendar.StatusAppearance.Font.Name = 'Tahoma'
      Calendar.StatusAppearance.Font.Style = []
      Calendar.Footer.Fill.Color = 16773091
      Calendar.Footer.Fill.ColorTo = 16765615
      Calendar.Footer.Fill.ColorMirror = clNone
      Calendar.Footer.Fill.ColorMirrorTo = clNone
      Calendar.Footer.Fill.GradientType = gtVertical
      Calendar.Footer.Fill.GradientMirrorType = gtSolid
      Calendar.Footer.Fill.BorderColor = 16765615
      Calendar.Footer.Fill.Rounding = 0
      Calendar.Footer.Fill.ShadowOffset = 0
      Calendar.Footer.Fill.Glow = gmNone
      Calendar.Footer.Font.Charset = DEFAULT_CHARSET
      Calendar.Footer.Font.Color = 7485192
      Calendar.Footer.Font.Height = -11
      Calendar.Footer.Font.Name = 'Tahoma'
      Calendar.Footer.Font.Style = []
      Calendar.Header.Fill.Color = 16773091
      Calendar.Header.Fill.ColorTo = 16765615
      Calendar.Header.Fill.ColorMirror = clNone
      Calendar.Header.Fill.ColorMirrorTo = clNone
      Calendar.Header.Fill.GradientType = gtVertical
      Calendar.Header.Fill.GradientMirrorType = gtSolid
      Calendar.Header.Fill.BorderColor = 16765615
      Calendar.Header.Fill.Rounding = 0
      Calendar.Header.Fill.ShadowOffset = 0
      Calendar.Header.Fill.Glow = gmNone
      Calendar.Header.ArrowColor = 7485192
      Calendar.Header.Font.Charset = DEFAULT_CHARSET
      Calendar.Header.Font.Color = 7485192
      Calendar.Header.Font.Height = -11
      Calendar.Header.Font.Name = 'Tahoma'
      Calendar.Header.Font.Style = []
      Calendar.Width = 257
      Calendar.Height = 249
      Calendar.ShowHint = False
      Date = 41640.000000000000000000
      TMSStyle = 0
    end
    object dtFinal: TDBAdvSmoothDatePicker
      Left = 295
      Top = 21
      Width = 102
      Height = 21
      Flat = False
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Enabled = True
      ReadOnly = False
      TabOrder = 1
      Text = '08/09/2014'
      Visible = True
      Version = '2.5.1.0'
      ButtonStyle = bsDropDown
      ButtonWidth = 16
      Etched = False
      Glyph.Data = {
        DA020000424DDA0200000000000036000000280000000D0000000D0000000100
        200000000000A402000000000000000000000000000000000000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E00000000000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000000000000000000000000000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E0000000000000000000000000000000000000000000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE0000000000000000000000000000000
        0000000000000000000000000000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DF
        E000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000E3DFE000}
      HideCalendarAfterSelection = True
      Format = 'dd/mm/yyyy'
      Calendar.Fill.Color = 15984090
      Calendar.Fill.ColorTo = 15785680
      Calendar.Fill.ColorMirror = clNone
      Calendar.Fill.ColorMirrorTo = clNone
      Calendar.Fill.GradientType = gtVertical
      Calendar.Fill.GradientMirrorType = gtSolid
      Calendar.Fill.BorderColor = clNone
      Calendar.Fill.Rounding = 0
      Calendar.Fill.ShadowOffset = 0
      Calendar.Fill.Glow = gmNone
      Calendar.Animation = True
      Calendar.ShowCurrentDate = True
      Calendar.DateAppearance.DateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DateFont.Color = clWindowText
      Calendar.DateAppearance.DateFont.Height = -11
      Calendar.DateAppearance.DateFont.Name = 'Tahoma'
      Calendar.DateAppearance.DateFont.Style = []
      Calendar.DateAppearance.DateFill.Color = 16773091
      Calendar.DateAppearance.DateFill.ColorTo = 16768452
      Calendar.DateAppearance.DateFill.ColorMirror = 16765357
      Calendar.DateAppearance.DateFill.ColorMirrorTo = 16767936
      Calendar.DateAppearance.DateFill.GradientType = gtVertical
      Calendar.DateAppearance.DateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.DateFill.BorderColor = clNone
      Calendar.DateAppearance.DateFill.Rounding = 0
      Calendar.DateAppearance.DateFill.ShadowOffset = 0
      Calendar.DateAppearance.DateFill.Glow = gmNone
      Calendar.DateAppearance.DayOfWeekFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DayOfWeekFont.Color = clWindowText
      Calendar.DateAppearance.DayOfWeekFont.Height = -11
      Calendar.DateAppearance.DayOfWeekFont.Name = 'Tahoma'
      Calendar.DateAppearance.DayOfWeekFont.Style = []
      Calendar.DateAppearance.DayOfWeekFill.Color = 15984090
      Calendar.DateAppearance.DayOfWeekFill.ColorTo = 15785680
      Calendar.DateAppearance.DayOfWeekFill.ColorMirror = clNone
      Calendar.DateAppearance.DayOfWeekFill.ColorMirrorTo = clNone
      Calendar.DateAppearance.DayOfWeekFill.GradientType = gtVertical
      Calendar.DateAppearance.DayOfWeekFill.GradientMirrorType = gtSolid
      Calendar.DateAppearance.DayOfWeekFill.BorderColor = clNone
      Calendar.DateAppearance.DayOfWeekFill.Rounding = 0
      Calendar.DateAppearance.DayOfWeekFill.ShadowOffset = 0
      Calendar.DateAppearance.DayOfWeekFill.Glow = gmNone
      Calendar.DateAppearance.SelectedDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.SelectedDateFont.Color = clWindowText
      Calendar.DateAppearance.SelectedDateFont.Height = -11
      Calendar.DateAppearance.SelectedDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.SelectedDateFont.Style = []
      Calendar.DateAppearance.SelectedDateFill.Color = 11196927
      Calendar.DateAppearance.SelectedDateFill.ColorTo = 7257087
      Calendar.DateAppearance.SelectedDateFill.ColorMirror = 4370174
      Calendar.DateAppearance.SelectedDateFill.ColorMirrorTo = 8053246
      Calendar.DateAppearance.SelectedDateFill.GradientType = gtVertical
      Calendar.DateAppearance.SelectedDateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.SelectedDateFill.BorderColor = 4370174
      Calendar.DateAppearance.SelectedDateFill.Rounding = 0
      Calendar.DateAppearance.SelectedDateFill.ShadowOffset = 0
      Calendar.DateAppearance.SelectedDateFill.Glow = gmNone
      Calendar.DateAppearance.CurrentDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.CurrentDateFont.Color = clWindowText
      Calendar.DateAppearance.CurrentDateFont.Height = -11
      Calendar.DateAppearance.CurrentDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.CurrentDateFont.Style = []
      Calendar.DateAppearance.CurrentDateFill.Color = 7778289
      Calendar.DateAppearance.CurrentDateFill.ColorTo = 4296947
      Calendar.DateAppearance.CurrentDateFill.ColorMirror = 946929
      Calendar.DateAppearance.CurrentDateFill.ColorMirrorTo = 5021693
      Calendar.DateAppearance.CurrentDateFill.GradientType = gtVertical
      Calendar.DateAppearance.CurrentDateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.CurrentDateFill.BorderColor = 4548219
      Calendar.DateAppearance.CurrentDateFill.Rounding = 0
      Calendar.DateAppearance.CurrentDateFill.ShadowOffset = 0
      Calendar.DateAppearance.CurrentDateFill.Glow = gmNone
      Calendar.DateAppearance.WeekendFill.Color = 16773091
      Calendar.DateAppearance.WeekendFill.ColorTo = 16768452
      Calendar.DateAppearance.WeekendFill.ColorMirror = 16765357
      Calendar.DateAppearance.WeekendFill.ColorMirrorTo = 16767936
      Calendar.DateAppearance.WeekendFill.GradientType = gtVertical
      Calendar.DateAppearance.WeekendFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.WeekendFill.BorderColor = clNone
      Calendar.DateAppearance.WeekendFill.Rounding = 0
      Calendar.DateAppearance.WeekendFill.ShadowOffset = 0
      Calendar.DateAppearance.WeekendFill.Glow = gmNone
      Calendar.DateAppearance.WeekendFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.WeekendFont.Color = clWindowText
      Calendar.DateAppearance.WeekendFont.Height = -11
      Calendar.DateAppearance.WeekendFont.Name = 'Tahoma'
      Calendar.DateAppearance.WeekendFont.Style = []
      Calendar.DateAppearance.HoverDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.HoverDateFont.Color = clWindowText
      Calendar.DateAppearance.HoverDateFont.Height = -11
      Calendar.DateAppearance.HoverDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.HoverDateFont.Style = []
      Calendar.DateAppearance.HoverDateFill.Color = 15465983
      Calendar.DateAppearance.HoverDateFill.ColorTo = 11332863
      Calendar.DateAppearance.HoverDateFill.ColorMirror = 5888767
      Calendar.DateAppearance.HoverDateFill.ColorMirrorTo = 10807807
      Calendar.DateAppearance.HoverDateFill.GradientType = gtVertical
      Calendar.DateAppearance.HoverDateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.HoverDateFill.BorderColor = 10079963
      Calendar.DateAppearance.HoverDateFill.Rounding = 0
      Calendar.DateAppearance.HoverDateFill.ShadowOffset = 0
      Calendar.DateAppearance.HoverDateFill.Glow = gmNone
      Calendar.DateAppearance.MonthDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.MonthDateFont.Color = clWindowText
      Calendar.DateAppearance.MonthDateFont.Height = -11
      Calendar.DateAppearance.MonthDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.MonthDateFont.Style = []
      Calendar.DateAppearance.YearDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.YearDateFont.Color = clWindowText
      Calendar.DateAppearance.YearDateFont.Height = -11
      Calendar.DateAppearance.YearDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.YearDateFont.Style = []
      Calendar.DateAppearance.WeekNumbers.Font.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.WeekNumbers.Font.Color = clWindowText
      Calendar.DateAppearance.WeekNumbers.Font.Height = -11
      Calendar.DateAppearance.WeekNumbers.Font.Name = 'Tahoma'
      Calendar.DateAppearance.WeekNumbers.Font.Style = []
      Calendar.DateAppearance.WeekNumbers.Fill.Color = 15984090
      Calendar.DateAppearance.WeekNumbers.Fill.ColorTo = 15785680
      Calendar.DateAppearance.WeekNumbers.Fill.ColorMirror = clNone
      Calendar.DateAppearance.WeekNumbers.Fill.ColorMirrorTo = clNone
      Calendar.DateAppearance.WeekNumbers.Fill.GradientType = gtVertical
      Calendar.DateAppearance.WeekNumbers.Fill.GradientMirrorType = gtSolid
      Calendar.DateAppearance.WeekNumbers.Fill.BorderColor = clNone
      Calendar.DateAppearance.WeekNumbers.Fill.Rounding = 0
      Calendar.DateAppearance.WeekNumbers.Fill.ShadowOffset = 0
      Calendar.DateAppearance.WeekNumbers.Fill.Glow = gmNone
      Calendar.DateAppearance.DisabledDateFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DisabledDateFont.Color = clGray
      Calendar.DateAppearance.DisabledDateFont.Height = -11
      Calendar.DateAppearance.DisabledDateFont.Name = 'Tahoma'
      Calendar.DateAppearance.DisabledDateFont.Style = []
      Calendar.DateAppearance.DisabledDateFill.Color = 15921906
      Calendar.DateAppearance.DisabledDateFill.ColorTo = 11974326
      Calendar.DateAppearance.DisabledDateFill.ColorMirror = 11974326
      Calendar.DateAppearance.DisabledDateFill.ColorMirrorTo = 15921906
      Calendar.DateAppearance.DisabledDateFill.GradientType = gtVertical
      Calendar.DateAppearance.DisabledDateFill.GradientMirrorType = gtVertical
      Calendar.DateAppearance.DisabledDateFill.BorderColor = clNone
      Calendar.DateAppearance.DisabledDateFill.Rounding = 0
      Calendar.DateAppearance.DisabledDateFill.ShadowOffset = 0
      Calendar.DateAppearance.DisabledDateFill.Glow = gmNone
      Calendar.DateAppearance.DateBeforeFill.Color = clNone
      Calendar.DateAppearance.DateBeforeFill.ColorMirror = clNone
      Calendar.DateAppearance.DateBeforeFill.ColorMirrorTo = clNone
      Calendar.DateAppearance.DateBeforeFill.GradientType = gtVertical
      Calendar.DateAppearance.DateBeforeFill.GradientMirrorType = gtSolid
      Calendar.DateAppearance.DateBeforeFill.BorderColor = clNone
      Calendar.DateAppearance.DateBeforeFill.Rounding = 0
      Calendar.DateAppearance.DateBeforeFill.ShadowOffset = 0
      Calendar.DateAppearance.DateBeforeFill.Glow = gmNone
      Calendar.DateAppearance.DateAfterFill.Color = clNone
      Calendar.DateAppearance.DateAfterFill.ColorMirror = clNone
      Calendar.DateAppearance.DateAfterFill.ColorMirrorTo = clNone
      Calendar.DateAppearance.DateAfterFill.GradientType = gtVertical
      Calendar.DateAppearance.DateAfterFill.GradientMirrorType = gtSolid
      Calendar.DateAppearance.DateAfterFill.BorderColor = clNone
      Calendar.DateAppearance.DateAfterFill.Rounding = 0
      Calendar.DateAppearance.DateAfterFill.ShadowOffset = 0
      Calendar.DateAppearance.DateAfterFill.Glow = gmNone
      Calendar.DateAppearance.DateBeforeFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DateBeforeFont.Color = clSilver
      Calendar.DateAppearance.DateBeforeFont.Height = -11
      Calendar.DateAppearance.DateBeforeFont.Name = 'Tahoma'
      Calendar.DateAppearance.DateBeforeFont.Style = []
      Calendar.DateAppearance.DateAfterFont.Charset = DEFAULT_CHARSET
      Calendar.DateAppearance.DateAfterFont.Color = clSilver
      Calendar.DateAppearance.DateAfterFont.Height = -11
      Calendar.DateAppearance.DateAfterFont.Name = 'Tahoma'
      Calendar.DateAppearance.DateAfterFont.Style = []
      Calendar.StatusAppearance.Fill.Color = clRed
      Calendar.StatusAppearance.Fill.ColorMirror = clNone
      Calendar.StatusAppearance.Fill.ColorMirrorTo = clNone
      Calendar.StatusAppearance.Fill.GradientType = gtSolid
      Calendar.StatusAppearance.Fill.GradientMirrorType = gtSolid
      Calendar.StatusAppearance.Fill.BorderColor = clGray
      Calendar.StatusAppearance.Fill.Rounding = 0
      Calendar.StatusAppearance.Fill.ShadowOffset = 0
      Calendar.StatusAppearance.Fill.Glow = gmNone
      Calendar.StatusAppearance.Font.Charset = DEFAULT_CHARSET
      Calendar.StatusAppearance.Font.Color = clWhite
      Calendar.StatusAppearance.Font.Height = -11
      Calendar.StatusAppearance.Font.Name = 'Tahoma'
      Calendar.StatusAppearance.Font.Style = []
      Calendar.Footer.Fill.Color = 16773091
      Calendar.Footer.Fill.ColorTo = 16765615
      Calendar.Footer.Fill.ColorMirror = clNone
      Calendar.Footer.Fill.ColorMirrorTo = clNone
      Calendar.Footer.Fill.GradientType = gtVertical
      Calendar.Footer.Fill.GradientMirrorType = gtSolid
      Calendar.Footer.Fill.BorderColor = 16765615
      Calendar.Footer.Fill.Rounding = 0
      Calendar.Footer.Fill.ShadowOffset = 0
      Calendar.Footer.Fill.Glow = gmNone
      Calendar.Footer.Font.Charset = DEFAULT_CHARSET
      Calendar.Footer.Font.Color = 7485192
      Calendar.Footer.Font.Height = -11
      Calendar.Footer.Font.Name = 'Tahoma'
      Calendar.Footer.Font.Style = []
      Calendar.Header.Fill.Color = 16773091
      Calendar.Header.Fill.ColorTo = 16765615
      Calendar.Header.Fill.ColorMirror = clNone
      Calendar.Header.Fill.ColorMirrorTo = clNone
      Calendar.Header.Fill.GradientType = gtVertical
      Calendar.Header.Fill.GradientMirrorType = gtSolid
      Calendar.Header.Fill.BorderColor = 16765615
      Calendar.Header.Fill.Rounding = 0
      Calendar.Header.Fill.ShadowOffset = 0
      Calendar.Header.Fill.Glow = gmNone
      Calendar.Header.ArrowColor = 7485192
      Calendar.Header.Font.Charset = DEFAULT_CHARSET
      Calendar.Header.Font.Color = 7485192
      Calendar.Header.Font.Height = -11
      Calendar.Header.Font.Name = 'Tahoma'
      Calendar.Header.Font.Style = []
      Calendar.Width = 257
      Calendar.Height = 249
      Calendar.ShowHint = False
      Date = 41890.000000000000000000
      TMSStyle = 0
    end
    object BitBtn1: TBitBtn
      Left = 422
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object ds_rel_chequesemitidosporperiodo: TDataSource
    DataSet = cds_rel_chequesEmitidosporperiodo
    Left = 120
    Top = 16
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Fonthandling = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 363
    Top = 2007
  end
  object cds_rel_chequesEmitidosporperiodo: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'select * from cheques_emitidos where data_emissao between :data ' +
        'and :data2')
    Left = 80
    Top = 16
    ParamData = <
      item
        Name = 'data'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'data2'
        DataType = ftDate
        ParamType = ptInput
      end>
    object cds_rel_chequesEmitidosporperiodoCOD_CHEQUE: TIntegerField
      FieldName = 'COD_CHEQUE'
      Origin = 'COD_CHEQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_rel_chequesEmitidosporperiodoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object cds_rel_chequesEmitidosporperiodoDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
      Required = True
    end
    object cds_rel_chequesEmitidosporperiodoDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
      Required = True
    end
    object cds_rel_chequesEmitidosporperiodoPAGO: TStringField
      FieldName = 'PAGO'
      Origin = 'PAGO'
      Required = True
      Size = 1
    end
    object cds_rel_chequesEmitidosporperiodoORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
      Required = True
      Size = 2
    end
    object cds_rel_chequesEmitidosporperiodoDOCUMENTO_ORIGEM: TIntegerField
      FieldName = 'DOCUMENTO_ORIGEM'
      Origin = 'DOCUMENTO_ORIGEM'
    end
    object cds_rel_chequesEmitidosporperiodoCOD_CONTA: TIntegerField
      FieldName = 'COD_CONTA'
      Origin = 'COD_CONTA'
      Required = True
    end
    object cds_rel_chequesEmitidosporperiodoCOMP_NA_INCLUSAO: TStringField
      FieldName = 'COMP_NA_INCLUSAO'
      Origin = 'COMP_NA_INCLUSAO'
      Required = True
      Size = 1
    end
    object cds_rel_chequesEmitidosporperiodoDATA_COMPENSACAO: TDateField
      FieldName = 'DATA_COMPENSACAO'
      Origin = 'DATA_COMPENSACAO'
    end
    object cds_rel_chequesEmitidosporperiodoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 900
    end
    object cds_rel_chequesEmitidosporperiodoNUMERO_CHEQUE: TIntegerField
      FieldName = 'NUMERO_CHEQUE'
      Origin = 'NUMERO_CHEQUE'
      Required = True
    end
    object cds_rel_chequesEmitidosporperiodoCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'COD_USUARIO'
      Required = True
    end
    object cds_rel_chequesEmitidosporperiodoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
    object cds_rel_chequesEmitidosporperiodoTROCO: TStringField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Required = True
      Size = 1
    end
    object cds_rel_chequesEmitidosporperiodoFAVORECIDO: TStringField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDO'
      Required = True
      Size = 50
    end
    object cds_rel_chequesEmitidosporperiodoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = 'COD_VENDA'
    end
    object cds_rel_chequesEmitidosporperiodoCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
      Origin = 'COD_COMPRA'
    end
    object cds_rel_chequesEmitidosporperiodoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 300
    end
    object cds_rel_chequesEmitidosporperiodoCOD_CLI: TIntegerField
      FieldName = 'COD_CLI'
      Origin = 'COD_CLI'
    end
    object cds_rel_chequesEmitidosporperiodoCOD_FORN: TIntegerField
      FieldName = 'COD_FORN'
      Origin = 'COD_FORN'
    end
    object cds_rel_chequesEmitidosporperiodoDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
      Origin = 'DATA_RETORNO'
    end
    object cds_rel_chequesEmitidosporperiodoRETORNADO: TStringField
      FieldName = 'RETORNADO'
      Origin = 'RETORNADO'
      Size = 1
    end
    object cds_rel_chequesEmitidosporperiodoPL_CONTA: TIntegerField
      FieldName = 'PL_CONTA'
      Origin = 'PL_CONTA'
    end
    object cds_rel_chequesEmitidosporperiodoID_VALE: TIntegerField
      FieldName = 'ID_VALE'
      Origin = 'ID_VALE'
    end
  end
end
