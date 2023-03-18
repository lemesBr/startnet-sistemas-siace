object FormConsNcm: TFormConsNcm
  Left = 479
  Top = 222
  Width = 640
  Height = 386
  Caption = 'Consulta Cadastro de NCM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 389
      Top = 9
      Width = 222
      Height = 13
      Caption = 'Obs: Usar somentes os NCM analiticos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel2: TRxLabel
      Left = 138
      Top = 12
      Width = 210
      Height = 13
      Caption = 'Entre Com a descri'#231#227'o do NCM - F2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel3: TRxLabel
      Left = 2
      Top = 12
      Width = 58
      Height = 13
      Caption = 'Pesquisa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object Edit1: TEdit
      Left = 136
      Top = 28
      Width = 480
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
      OnKeyDown = Edit1KeyDown
      OnKeyPress = m
    end
    object Edit2: TEdit
      Left = 408
      Top = 1
      Width = 97
      Height = 21
      TabOrder = 1
      Visible = False
    end
    object cbxpesquisa: TComboBox
      Left = 3
      Top = 28
      Width = 129
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Qualq. parte da descric'#227'o'
      Items.Strings = (
        'Qualq. parte da descric'#227'o'
        'inicio da descri'#231#227'o '
        'Por C'#243'digo')
    end
  end
  object XDBGrid1: TXDBGrid
    Left = 0
    Top = 57
    Width = 624
    Height = 290
    Align = alClient
    Color = clWhite
    DataSource = DM.DTS_NCM
    FixedStyle = fsMild
    FixedTheme = ftNone
    Gradient.Direction = gdHorizontal
    Gradient.StartColor = cl3DLight
    GridStyle.VisualStyle = vsXPStyle
    ListBorder = lbMild
    MarkerStyle = msDefault
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle, dgForceSequence, dgThumbTracking]
    OptionsEx = [dgBlankRow, dgTotalHeaderBox, dgTotalValuesBox, dgTotalFieldsBox, dgTotalFooterBox, dgLoadCurrentOrder, dgAutoUpdateOrder, dgAutoAscendOrder, dgAutoUpdateSequence, dgDelayUpdateSequence, dgAutoUpdateTotals, dgDelayUpdateTotals, dgCalcWholeDataSet, dgCalcSelectedRows, dgDelaySelectedRows, dgSelectedAutoHidden]
    TabOrder = 1
    Totals.Color = 10930928
    OnDblClick = XDBGrid1DblClick
    OnDrawColumnCell = XDBGrid1DrawColumnCell
    OnKeyPress = XDBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO_NCM'
        Title.Caption = 'C'#243'd. NCM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
        Width = 395
      end
      item
        Expanded = False
        FieldName = 'ALICOTA'
        Title.Caption = 'Al'#237'cota %'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
        Width = 66
      end
      item
        Expanded = False
        FieldName = 'ANALITICO'
        Title.Caption = 'Anal'#237'tica'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
        Width = 54
      end>
  end
end
