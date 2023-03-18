object FormBaixas: TFormBaixas
  Left = 453
  Top = 222
  Caption = 'Baixa de titulos a Receber'
  ClientHeight = 452
  ClientWidth = 766
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 252
    Align = alTop
    TabOrder = 0
    object myLabel3d1: TmyLabel3d
      Left = 147
      Top = 1
      Width = 287
      Height = 29
      Caption = 'T'#237'tulos a serem baixados'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -24
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      AStyle3D = Resit3d
      AShadeLTSet = False
    end
    object DBGrid: TXDBGrid
      Left = 1
      Top = 32
      Width = 760
      Height = 219
      Align = alCustom
      DataSource = DataSource1
      FixedStyle = fsMild
      GridStyle.VisualStyle = vsXPStyle
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle, dgMarkerAscendOnly, dgForceSequence, dgRightMoving]
      OptionsEx = [dgBlankRow, dgTotalHeader, dgTotalFooter, dgTotalHeaderBox, dgTotalValuesBox, dgTotalFieldsBox, dgTotalFooterBox, dgAutoUpdateOrder, dgAutoAscendOrder, dgAutoUpdateSequence, dgDelayUpdateSequence, dgAutoUpdateTotals, dgDelayUpdateTotals, dgCalcWholeDataSet, dgCalcSelectedRows, dgDelaySelectedRows, dgSelectedAutoHidden, dgClickSelectOff]
      TabOrder = 0
      Totals.BoxStyle = cbAutoLowered
      OnCellClick = DBGridCellClick
      OnEnter = DBGridEnter
      OnKeyDown = DBGridKeyDown
      OnKeyPress = DBGridKeyPress
      OnTotalCalcValue = DBGridTotalCalcValue
      OnTotalsUpdated = DBGridTotalsUpdated
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodigoCompra'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'T'#237'tulo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          TotalFooter.CalcValue = cvCount
          TotalFooter.NullValue = nvAsZero
          TotalFooter.TotalResult = trCalcValue
          TotalHeader.Caption = 'Qtde:'
          Visible = True
          Width = 74
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Parcela'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 50
        end
        item
          ButtonStyle = cbsCalculator
          Expanded = False
          FieldName = 'ValorParcela'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Valor Venc.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          TotalFooter.Format = '%12m'
          TotalFooter.FormatAsFloat = True
          TotalFooter.NullValue = nvAsZero
          TotalFooter.TotalResult = trCalcValue
          TotalHeader.Caption = 'Total:'
          Visible = True
          Width = 71
        end
        item
          Expanded = False
          FieldName = 'Valor_pago'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Valor Pago'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          TotalFooter.Format = '%12m'
          TotalFooter.FormatAsFloat = True
          TotalFooter.NullValue = nvAsZero
          TotalFooter.TotalResult = trCalcValue
          TotalHeader.Caption = 'Total:'
          Visible = True
          Width = 76
        end
        item
          ButtonStyle = cbsCalculator
          Expanded = False
          FieldName = 'valor_pagar'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Saldo Pagar'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          TotalFooter.Format = '%12m'
          TotalFooter.TotalResult = trCalcValue
          TotalHeader.Caption = 'Total:'
          Visible = True
          Width = 79
        end
        item
          ButtonStyle = cbsCalculator
          Expanded = False
          FieldName = 'multa'
          Title.Alignment = taCenter
          Title.Caption = 'Multa'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          TotalFooter.Format = '%12m'
          TotalFooter.TotalResult = trCalcValue
          TotalHeader.Caption = 'Total:'
          Visible = True
          Width = 70
        end
        item
          ButtonStyle = cbsCalculator
          Expanded = False
          FieldName = 'juros'
          Title.Alignment = taCenter
          Title.Caption = 'Juros'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          TotalFooter.Format = '%12m'
          TotalFooter.TotalResult = trCalcValue
          TotalHeader.Caption = 'Total:'
          Visible = True
          Width = 70
        end
        item
          ButtonStyle = cbsCalculator
          Expanded = False
          FieldName = 'descontos'
          Title.Alignment = taCenter
          Title.Caption = 'Desc %'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          TotalFooter.Format = '%12m'
          TotalFooter.TotalResult = trCalcValue
          TotalHeader.Caption = 'Total:'
          Visible = True
          Width = 70
        end
        item
          ButtonStyle = cbsCalculator
          Expanded = False
          FieldName = 'valor_total'
          Title.Alignment = taCenter
          Title.Caption = 'Valor total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          TotalFooter.Font.Charset = DEFAULT_CHARSET
          TotalFooter.Font.Color = clWindowText
          TotalFooter.Font.Height = -11
          TotalFooter.Font.Name = 'Tahoma'
          TotalFooter.Font.Style = [fsBold]
          TotalFooter.Format = '%12m'
          TotalFooter.TotalResult = trCalcValue
          TotalHeader.Font.Charset = DEFAULT_CHARSET
          TotalHeader.Font.Color = clWindowText
          TotalHeader.Font.Height = -11
          TotalHeader.Font.Name = 'MS Sans Serif'
          TotalHeader.Font.Style = [fsBold]
          TotalHeader.Caption = 'T. Geral Pagar:'
          Visible = True
          Width = 92
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          TotalFooter.NullValue = nvAsZero
          TotalFooter.TotalResult = trCalcValue
          TotalHeader.Caption = 'Saldo'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataCompra'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Data Mov.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 74
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataVencimento'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Data Venc.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 76
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodigoCliente'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Cod. Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 76
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Nome_cliente'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nome Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 250
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Historico'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 254
        end
        item
          Expanded = False
          FieldName = 'Codigo_Crediario'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 252
    Width = 766
    Height = 200
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 296
      Top = 80
      Width = 115
      Height = 13
      Caption = 'Tipo de Pagamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 344
      Top = 184
      Width = 3
      Height = 13
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 4
      Width = 281
      Height = 69
      Caption = 'Baixa por Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        Left = 7
        Top = 16
        Width = 87
        Height = 13
        Caption = 'Valor Pago R$:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 145
        Top = 16
        Width = 84
        Height = 13
        Caption = 'Saldo / Troco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 7
        Top = 32
        Width = 129
        Height = 32
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit1KeyPress
      end
      object CurrencyEdit10: TCurrencyEdit
        Left = 144
        Top = 32
        Width = 129
        Height = 32
        AutoSize = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyPress = CurrencyEdit1KeyPress
      end
    end
    object GroupBox1: TGroupBox
      Left = 296
      Top = 4
      Width = 233
      Height = 57
      Caption = 'Desconto por Valor e %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label3: TLabel
        Left = 8
        Top = 28
        Width = 11
        Height = 13
        Caption = '%:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 118
        Top = 27
        Width = 17
        Height = 13
        Caption = 'R$:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 21
        Top = 24
        Width = 92
        Height = 21
        AutoSize = False
        DecimalPlaces = 4
        DisplayFormat = '% ,0.0000;-% ,0.0000'
        TabOrder = 0
        OnExit = CurrencyEdit2Exit
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 136
        Top = 24
        Width = 93
        Height = 21
        AutoSize = False
        TabOrder = 1
        OnExit = CurrencyEdit3Exit
      end
    end
    object ComboBox1: TComboBox
      Left = 300
      Top = 100
      Width = 223
      Height = 21
      ItemIndex = 0
      TabOrder = 0
      Text = 'Dinheiro'
      Items.Strings = (
        'Dinheiro'
        'Cheque'
        'Cartao')
    end
    object BitBtn1: TBitBtn
      Left = 40
      Top = 150
      Width = 105
      Height = 41
      Caption = 'Cancelar (F4)'
      Glyph.Data = {
        2E0A0000424D2E0A00000000000036000000280000001D0000001D0000000100
        180000000000F809000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0F5F5F1D5D5DCABAA
        BC9493A78F90A58F8FA49593A5B0B1B9DDDCD7C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C09090B237367D11128208099202049603059803
        04970A0A950F0E7F24256A4E5073A5A7A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A1
        A1C41819860000930000A40101A50B0AAF0707B60405B60909B6080AAE0000A6
        0000A806069910107C48486BBDBCB7C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06B69AE0001910000A30405A7
        1D1ECC2120E3201DF41616F41616F51D1DF7282AF52A2AE22323CA0403A60000
        A509099A242467A5A5A2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C04A4BA200009B00009F2F30D04343FA2C2CFB1B1CFA0D0D
        F90604F80706F9100FF71C1AF92B28F93E40FC5555FC3534CD00009F0404A719
        186F8B8B90C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C06464
        B400009B0707A44B4BE65050FF3736FA2422F71A19FA0C0CF80302F70402F80E
        0CF71A1BFA2927FA3737F94847F96463FF5252E50406A10503A919186EB6B6B2
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0ACADDD00009500009C6364F25B
        5BF84140F13130F22121F21314F30707EF0909FA0A0BF61112F81617F51E1EF0
        2F2FF23F41F35051F36A6AFA6D6DF200009B0604A8313163DCDCD7C0C0C0C0C0
        C000C0C0C0C0C0C0EEEFFD0C0C9200009C6161E47070FE7272DB9494C77B7AAF
        7879B27273AF7475BC1B1ACB1516FC1716F14949B67D7CB67A7BB37C7EB18283
        AF8586BC7877E56264E50000A008089073738AC0C0C0C0C0C000C0C0C0C0C0C0
        8486CD0000962C2DBA8A8BFF6C6DFA4A4BCBEAEDF4F1F0E9DCDDD7DDDED5D3D5
        CA6464AB1C1BF62425C0DADBE2DFE0D7DDDED8DDDDD7D9D9D48182B86E6DEE94
        94FF292BBA0101A4252575DEDDD5C0C0C000C0C0C0C0C0C01617900000998080
        F58080FA7071F96060F87273BEFFFFFFFBFAFAFBFBFBEBEBE7BDBECD1D1D9F8A
        8AC9F8F9F4FBFAFAFAFAFAF7F9F6DBDBE65150CB7475FC8483FA7E7EF300009C
        0B0B89888894C0C0C000C0C0C0BFBEE80000941414AB999AFF807FF77072FA64
        63FA4242D1B9B9DCFFFFFCF8F8F8F9F9F9DEDEDB9595A9D9D9E3F9FAF8F8F8F8
        F9F9F9F3F5EF7776BC6868F97273F97C7CF69898FF1717AE0000A348477DC0C0
        C000C0C0C07D7BC30000A04E4BCC9392FF7F7CF76C6EF86565F85857FA5454BE
        FFFFFFF9F9F7F9F8F8F6F4F3EDECE9F0F1EEF9F9F9F9F9F9F9F8F5B8B8D35253
        D36C6BFB7272F97F7EF88B8AFD4D4CD00000AA28287CC0C0C000C0C0C05454A9
        0000A07373E78B8BFC7779F66E6FF76564F65D5EFA484BDFB0B2DCFFFFFDF8F8
        F7F9F8F8F9F9F9F9F9F9F8F8F8F8F8F7EFEEEE5E5FBA6567FA6C6DF97272F97A
        7AF88382FC7374F00000A5171980DEDEE400C0C0C044429F0000A07473EB8383
        FA7675F76E6BF96766F86060F6605FFD5655BDF1F0FAFAFAF8F8F7F8F9F8F8F8
        F7F8FAF8FAECEEE99E9DC3605FE16C6CFB7071FA7170F77979F97B7AF77D7BF4
        0101A3161486DCDCE400C0C0C04344A00000A16B6BE9797BF97372F86B6BF867
        67F76567F86464FB5556BEE0E1EDFBFCF8F7F7F8F7F8F7F8F7F8F9F9F9E5E5DF
        7A7AA4706FF17171F96F6FF76F70F77171F77576F87876F40103A3141587DBDB
        E400C0C0C044439F0000A16768EB7274F96E6EF96768F66767F76967F86967EE
        9999CAFCFBF6F8F8F8F8F8F8F7F8F7F7F8F7F9F9F9ECE9E8BFC0C36668BE797A
        FE7070F86F6FF87070F86F71F77573F30102A5151587DFDFE800C0C0C06967B9
        0000A05656E06D6DF96767F76667F76667F77171FD6564C3E8E7EDF7F7F4F8F8
        F8F7F7F7FAFBFAF9F9F9F8F8F8F6F6F6DBDCD78A8CAB7273E47677FB706FF771
        70F87272F96B6BED0000A31F2086C0C0C000C0C0C08F8DCF00009B3535C56F70
        FE6867F86767F86A6BFA696AE3A0A1C7F8F8F2FAFAF9F8F8F8FCFCFADCDEE5EC
        ECF2F7FAF9FAF9FAF2F2F1C5C6C47070B27E7DFD7374F9706DF8706FFA494BD2
        0000A3414092C0C0C000C0C0C0EBE9FF00008E0000A27B79FF6766F96667F870
        6FFC7171BDF8F8F6FBFAF8F9F7F7F8F8F7F0F2F38B8BB2B3B2CDFFFFFFF8F8F7
        FBFBFAE4E4E1A3A5B36D6FDD7777FB6D6EF87C7EFF1111AB00009A8585B7C0C0
        C000C0C0C0C0C0C04040AD00009B5354E26563F86869F96564DEDCDCEBFFFFFF
        FFFFFFFFFFFFFFFFFFC1C2D0BBB9F0A3A3D1EAE9EFFFFFFFFFFFFFFFFFFFFCFD
        F78485BE7775F67172F96A6AF000009D100E89E9EAF3C0C0C000C0C0C0C0C0C0
        FDABE20000911212AC7B7BFF6667F87174EA8A89C78A8ABC9896BE9F9FBEA4A4
        BFB5B7D8D0CEFDCBC9F9A3A3CAA09FC09898BF9192BD8C8BBE8483D07876F480
        80FF2323B900009B6D6CB9C0C0C0C0C0C000C0C0C0C0C0C0FFFFFF4A48B30000
        9A292AC07A7AFF7879F88D8EFA9FA0FAB3B3FBC2C4FAD3D1FBD7D8FBD6D5F9CF
        CFF7CACBFBC0BFFBB6B4FCA4A6FA9898FA8786FB7F7FFF4445D300009E151596
        F1EFFDC0C0C0C0C0C000C0C0C0C0C0C0C0C0C0F3F3FF08089100009B4142D47C
        7DFF8C8DFBA0A0F8B0B1F9C0C0F7D1D1F9DBDBF9D9DAF7D3D3F9C7C8F8BBBAF8
        AFAFF7A2A3F89596FE7D7DFC5859E700009C00008FBBBCE2C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0CCCBF000009100009D2829C07777FD8E8EFC
        B1B1FCC6C6FBCFCEFAD7D7FAD8D9FAD0CFF8C5C6F9BCBCFAB1B0FD9091FC7978
        FA4143D600009E0000959092CEC0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0D0CDF106069200009C1213B24E4FE07A7AFC8A89F8A5A3
        F4B9B8F8BEBDFAB6B6F9A4A5F58987F77B78FD5D5CEC2624C00000A100009392
        91D1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0E5E5FC3939A90000920000A01515B34242D65253E65959EB5B5AEC5B
        5AEC5959E94847DB1E1FBC0000A200009819189AB7B6E5C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FF
        FFFFA8A8E22A2AA000009000009C0000A30403A80000A40101A40000A40000A1
        0000980D0F928383CEF8F9FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF
        CBCBF08081C84D4DAD2727A22223A12424A04344A8706FBCB6B7E3C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000}
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 176
      Top = 150
      Width = 105
      Height = 41
      Caption = 'Confirmar(F10)'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFDFDFDFDFDFDFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFEFEFCFCFCF9F9F9F6F6F6F2F2F2EDEDEDE4E4E4C8C9C9
        92B9A3CFD0CFEAEAEAEFEFEFF2F2F2F4F4F4F7F7F7F9F9F9FCFCFCFDFDFDFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDFC
        FCFCFBFBFB98D9B315BE5DB7E3CAFCFCFCFCFCFCFDFDFDFDFDFDFEFEFEFEFEFE
        FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFA2E0BC18C05F18C46133C470F5FBF8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFBFEFC7ED6A311C05B10C25B11C25B10C15A74D3
        9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F5EA49C87F0CC0580CC15812BE5A
        52C9840CC1580EBF58B1E5C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8E7CC1BBF600CC1580C
        C1580CC15863CF90D9F2E411BE5A0CC1581ABF60D2EFDEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F4
        E955CB8713C05C17C36014BF5CD8F1E2FFFFFF63D09117C36018C4612CC26CDC
        F2E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFBEE9D047C87D6DD197FFFFFFFFFFFFDEF3E729C4
        6B34CC7533CB7439C775CBEDDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFFFFFFFFFF
        FFFFFFFFFFFF87D8A94AD08457D48D53D38A43CB7D97DDB4F9FDFBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FBF756CD896BD99A71DB9F6FDB9D5CD590
        68CF94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCEDDA56D08A7A
        DDA57DDEA774DCA183D8A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA6E2BF61D49381DFA96EDA9DACE3C3FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93DBB163D59458D18CDEF2E6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2E0BC3FC377
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE8F6EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 6
      OnClick = BitBtn2Click
    end
    object GroupBox4: TGroupBox
      Left = 536
      Top = 4
      Width = 225
      Height = 57
      Caption = 'Juros Valor e %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label5: TLabel
        Left = 96
        Top = 28
        Width = 17
        Height = 13
        Caption = 'R$:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 6
        Top = 28
        Width = 11
        Height = 13
        Caption = '%:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CurrencyEdit4: TCurrencyEdit
        Left = 118
        Top = 24
        Width = 81
        Height = 21
        AutoSize = False
        TabOrder = 1
        OnExit = CurrencyEdit4Exit
      end
      object CurrencyEdit5: TCurrencyEdit
        Left = 21
        Top = 24
        Width = 69
        Height = 21
        AutoSize = False
        DisplayFormat = '% ,0.00;-R$ ,0.00'
        TabOrder = 0
        OnExit = CurrencyEdit5Exit
      end
    end
    object GroupBox5: TGroupBox
      Left = 8
      Top = 83
      Width = 281
      Height = 57
      Caption = 'FDiantamentos'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      object Label6: TLabel
        Left = 8
        Top = 28
        Width = 17
        Height = 13
        Caption = 'R$:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit5: TEdit
        Left = 32
        Top = 24
        Width = 110
        Height = 21
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 163
        Top = 24
        Width = 78
        Height = 17
        Caption = 'Utilizar Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox3: TGroupBox
      Left = 536
      Top = 76
      Width = 225
      Height = 57
      Caption = 'Multa Valor e %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object Label8: TLabel
        Left = 96
        Top = 28
        Width = 17
        Height = 13
        Caption = 'R$:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 6
        Top = 28
        Width = 11
        Height = 13
        Caption = '%:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CurrencyEdit6: TCurrencyEdit
        Left = 118
        Top = 24
        Width = 81
        Height = 21
        AutoSize = False
        TabOrder = 1
        OnExit = CurrencyEdit6Exit
      end
      object CurrencyEdit7: TCurrencyEdit
        Left = 21
        Top = 24
        Width = 69
        Height = 21
        AutoSize = False
        DisplayFormat = '% ,0.00;-R$ ,0.00'
        TabOrder = 0
        OnExit = CurrencyEdit7Exit
      end
    end
    object GroupBox6: TGroupBox
      Left = 297
      Top = 132
      Width = 463
      Height = 66
      Caption = 'Totais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      object RxLabel4: TRxLabel
        Left = 23
        Top = 13
        Width = 251
        Height = 24
        Align = alCustom
        AutoSize = False
        Caption = 'Valor Total a Pagar:'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -20
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RxLabel1: TRxLabel
        Left = 23
        Top = 37
        Width = 251
        Height = 24
        Align = alCustom
        AutoSize = False
        Caption = 'Quantidade de t'#237'tulos:'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -20
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object CurrencyEdit8: TCurrencyEdit
        Left = 274
        Top = 13
        Width = 183
        Height = 25
        AutoSize = False
        BorderStyle = bsNone
        Color = clActiveCaption
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnChange = CurrencyEdit8Change
      end
      object CurrencyEdit9: TCurrencyEdit
        Left = 274
        Top = 35
        Width = 183
        Height = 25
        AutoSize = False
        BorderStyle = bsNone
        Color = clActiveCaption
        DisplayFormat = '0'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object Panel3: TPanel
    Left = 112
    Top = 34
    Width = 577
    Height = 265
    Align = alCustom
    BevelInner = bvRaised
    BevelOuter = bvSpace
    BorderWidth = 3
    BorderStyle = bsSingle
    TabOrder = 2
    Visible = False
    object Label16: TLabel
      Left = 7
      Top = 82
      Width = 77
      Height = 13
      Caption = 'Nome Banco:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 7
      Top = 134
      Width = 69
      Height = 13
      Caption = 'N'#186' Ag'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 7
      Top = 159
      Width = 74
      Height = 13
      Caption = 'N'#186' da Conta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 186
      Top = 159
      Width = 84
      Height = 13
      Caption = 'N'#186' do Cheque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 259
      Top = 135
      Width = 95
      Height = 13
      Caption = 'Tipo de Cheque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 377
      Top = 157
      Width = 78
      Height = 13
      Caption = 'Conta Desde:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 7
      Top = 107
      Width = 41
      Height = 13
      Caption = 'Titular:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 7
      Top = 34
      Width = 115
      Height = 13
      Caption = 'Data para Deposito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 272
      Top = 35
      Width = 99
      Height = 13
      Caption = 'Valor do Cheque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 127
      Top = 34
      Width = 102
      Height = 13
      Caption = 'Valor Pre-Datado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 475
      Top = 34
      Width = 89
      Height = 13
      Caption = 'Valor do Troco:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 7
      Top = 187
      Width = 63
      Height = 13
      Caption = 'Codigo Ch:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 356
      Top = 82
      Width = 84
      Height = 13
      Caption = 'Compensa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object myLabel3d2: TmyLabel3d
      Left = 131
      Top = 7
      Width = 235
      Height = 29
      Caption = 'DADOS DO CHEQUE'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -24
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      AStyle3D = Resit3d
      AShadeLTSet = False
    end
    object DateEdit1: TDateEdit
      Left = 456
      Top = 157
      Width = 109
      Height = 19
      Color = 15263976
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 10
    end
    object N_CONTA: TsuiEdit
      Left = 85
      Top = 157
      Width = 98
      Height = 19
      UIStyle = DeepBlue
      BorderColor = clBlack
      CharCase = ecUpperCase
      Color = 15263976
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
    end
    object N_CHEQUE: TsuiEdit
      Left = 270
      Top = 157
      Width = 103
      Height = 19
      UIStyle = DeepBlue
      BorderColor = clBlack
      CharCase = ecUpperCase
      Color = 15263976
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
    end
    object suiEdit1: TsuiEdit
      Left = 85
      Top = 107
      Width = 480
      Height = 19
      UIStyle = FromThemeFile
      BorderColor = clBlack
      CharCase = ecUpperCase
      Color = 15263976
      TabOrder = 5
    end
    object ComboBox2: TsuiComboBox
      Left = 356
      Top = 132
      Width = 209
      Height = 21
      UIStyle = WinXP
      BorderColor = 6842472
      ArrowColor = clBlack
      ButtonColor = 14609391
      CharCase = ecUpperCase
      Color = 15263976
      TabOrder = 7
      Text = 'COMUM'
      Items.Strings = (
        'ESPECIAL'
        'PRE'
        'COMUM'
        'OURO'
        '')
    end
    object DateEdit2: TDateEdit
      Left = 8
      Top = 49
      Width = 113
      Height = 19
      Color = 15263976
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = DateEdit2Enter
      OnExit = DateEdit2Exit
    end
    object CurrencyEdit11: TCurrencyEdit
      Left = 274
      Top = 49
      Width = 140
      Height = 20
      AutoSize = False
      Color = 15263976
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnEnter = CurrencyEdit11Enter
      OnExit = CurrencyEdit11Exit
    end
    object CurrencyEdit12: TCurrencyEdit
      Left = 126
      Top = 49
      Width = 140
      Height = 20
      TabStop = False
      AutoSize = False
      Color = 15263976
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object CurrencyEdit13: TCurrencyEdit
      Left = 424
      Top = 49
      Width = 140
      Height = 20
      TabStop = False
      AutoSize = False
      Color = 15263976
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object DBLOOKUPCOMBOBOX1: TsuiEdit
      Left = 85
      Top = 80
      Width = 260
      Height = 19
      UIStyle = FromThemeFile
      BorderColor = clBlack
      CharCase = ecUpperCase
      Color = 15263976
      TabOrder = 3
    end
    object DBLCB_AGENCIA: TsuiEdit
      Left = 84
      Top = 132
      Width = 158
      Height = 19
      UIStyle = FromThemeFile
      BorderColor = clBlack
      CharCase = ecUpperCase
      Color = 15263976
      TabOrder = 6
    end
    object dbedit4: TsuiEdit
      Left = 85
      Top = 184
      Width = 480
      Height = 19
      UIStyle = FromThemeFile
      BorderColor = clBlack
      CharCase = ecUpperCase
      Color = 15263976
      TabOrder = 2
    end
    object suiEdit3: TsuiEdit
      Left = 448
      Top = 80
      Width = 113
      Height = 19
      UIStyle = FromThemeFile
      BorderColor = clBlack
      CharCase = ecUpperCase
      Color = 15263976
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
      Left = 184
      Top = 206
      Width = 105
      Height = 41
      Caption = 'Cancelar (F3)'
      Glyph.Data = {
        2E0A0000424D2E0A00000000000036000000280000001D0000001D0000000100
        180000000000F809000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0F5F5F1D5D5DCABAA
        BC9493A78F90A58F8FA49593A5B0B1B9DDDCD7C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C09090B237367D11128208099202049603059803
        04970A0A950F0E7F24256A4E5073A5A7A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A1
        A1C41819860000930000A40101A50B0AAF0707B60405B60909B6080AAE0000A6
        0000A806069910107C48486BBDBCB7C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06B69AE0001910000A30405A7
        1D1ECC2120E3201DF41616F41616F51D1DF7282AF52A2AE22323CA0403A60000
        A509099A242467A5A5A2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C04A4BA200009B00009F2F30D04343FA2C2CFB1B1CFA0D0D
        F90604F80706F9100FF71C1AF92B28F93E40FC5555FC3534CD00009F0404A719
        186F8B8B90C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C06464
        B400009B0707A44B4BE65050FF3736FA2422F71A19FA0C0CF80302F70402F80E
        0CF71A1BFA2927FA3737F94847F96463FF5252E50406A10503A919186EB6B6B2
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0ACADDD00009500009C6364F25B
        5BF84140F13130F22121F21314F30707EF0909FA0A0BF61112F81617F51E1EF0
        2F2FF23F41F35051F36A6AFA6D6DF200009B0604A8313163DCDCD7C0C0C0C0C0
        C000C0C0C0C0C0C0EEEFFD0C0C9200009C6161E47070FE7272DB9494C77B7AAF
        7879B27273AF7475BC1B1ACB1516FC1716F14949B67D7CB67A7BB37C7EB18283
        AF8586BC7877E56264E50000A008089073738AC0C0C0C0C0C000C0C0C0C0C0C0
        8486CD0000962C2DBA8A8BFF6C6DFA4A4BCBEAEDF4F1F0E9DCDDD7DDDED5D3D5
        CA6464AB1C1BF62425C0DADBE2DFE0D7DDDED8DDDDD7D9D9D48182B86E6DEE94
        94FF292BBA0101A4252575DEDDD5C0C0C000C0C0C0C0C0C01617900000998080
        F58080FA7071F96060F87273BEFFFFFFFBFAFAFBFBFBEBEBE7BDBECD1D1D9F8A
        8AC9F8F9F4FBFAFAFAFAFAF7F9F6DBDBE65150CB7475FC8483FA7E7EF300009C
        0B0B89888894C0C0C000C0C0C0BFBEE80000941414AB999AFF807FF77072FA64
        63FA4242D1B9B9DCFFFFFCF8F8F8F9F9F9DEDEDB9595A9D9D9E3F9FAF8F8F8F8
        F9F9F9F3F5EF7776BC6868F97273F97C7CF69898FF1717AE0000A348477DC0C0
        C000C0C0C07D7BC30000A04E4BCC9392FF7F7CF76C6EF86565F85857FA5454BE
        FFFFFFF9F9F7F9F8F8F6F4F3EDECE9F0F1EEF9F9F9F9F9F9F9F8F5B8B8D35253
        D36C6BFB7272F97F7EF88B8AFD4D4CD00000AA28287CC0C0C000C0C0C05454A9
        0000A07373E78B8BFC7779F66E6FF76564F65D5EFA484BDFB0B2DCFFFFFDF8F8
        F7F9F8F8F9F9F9F9F9F9F8F8F8F8F8F7EFEEEE5E5FBA6567FA6C6DF97272F97A
        7AF88382FC7374F00000A5171980DEDEE400C0C0C044429F0000A07473EB8383
        FA7675F76E6BF96766F86060F6605FFD5655BDF1F0FAFAFAF8F8F7F8F9F8F8F8
        F7F8FAF8FAECEEE99E9DC3605FE16C6CFB7071FA7170F77979F97B7AF77D7BF4
        0101A3161486DCDCE400C0C0C04344A00000A16B6BE9797BF97372F86B6BF867
        67F76567F86464FB5556BEE0E1EDFBFCF8F7F7F8F7F8F7F8F7F8F9F9F9E5E5DF
        7A7AA4706FF17171F96F6FF76F70F77171F77576F87876F40103A3141587DBDB
        E400C0C0C044439F0000A16768EB7274F96E6EF96768F66767F76967F86967EE
        9999CAFCFBF6F8F8F8F8F8F8F7F8F7F7F8F7F9F9F9ECE9E8BFC0C36668BE797A
        FE7070F86F6FF87070F86F71F77573F30102A5151587DFDFE800C0C0C06967B9
        0000A05656E06D6DF96767F76667F76667F77171FD6564C3E8E7EDF7F7F4F8F8
        F8F7F7F7FAFBFAF9F9F9F8F8F8F6F6F6DBDCD78A8CAB7273E47677FB706FF771
        70F87272F96B6BED0000A31F2086C0C0C000C0C0C08F8DCF00009B3535C56F70
        FE6867F86767F86A6BFA696AE3A0A1C7F8F8F2FAFAF9F8F8F8FCFCFADCDEE5EC
        ECF2F7FAF9FAF9FAF2F2F1C5C6C47070B27E7DFD7374F9706DF8706FFA494BD2
        0000A3414092C0C0C000C0C0C0EBE9FF00008E0000A27B79FF6766F96667F870
        6FFC7171BDF8F8F6FBFAF8F9F7F7F8F8F7F0F2F38B8BB2B3B2CDFFFFFFF8F8F7
        FBFBFAE4E4E1A3A5B36D6FDD7777FB6D6EF87C7EFF1111AB00009A8585B7C0C0
        C000C0C0C0C0C0C04040AD00009B5354E26563F86869F96564DEDCDCEBFFFFFF
        FFFFFFFFFFFFFFFFFFC1C2D0BBB9F0A3A3D1EAE9EFFFFFFFFFFFFFFFFFFFFCFD
        F78485BE7775F67172F96A6AF000009D100E89E9EAF3C0C0C000C0C0C0C0C0C0
        FDABE20000911212AC7B7BFF6667F87174EA8A89C78A8ABC9896BE9F9FBEA4A4
        BFB5B7D8D0CEFDCBC9F9A3A3CAA09FC09898BF9192BD8C8BBE8483D07876F480
        80FF2323B900009B6D6CB9C0C0C0C0C0C000C0C0C0C0C0C0FFFFFF4A48B30000
        9A292AC07A7AFF7879F88D8EFA9FA0FAB3B3FBC2C4FAD3D1FBD7D8FBD6D5F9CF
        CFF7CACBFBC0BFFBB6B4FCA4A6FA9898FA8786FB7F7FFF4445D300009E151596
        F1EFFDC0C0C0C0C0C000C0C0C0C0C0C0C0C0C0F3F3FF08089100009B4142D47C
        7DFF8C8DFBA0A0F8B0B1F9C0C0F7D1D1F9DBDBF9D9DAF7D3D3F9C7C8F8BBBAF8
        AFAFF7A2A3F89596FE7D7DFC5859E700009C00008FBBBCE2C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0CCCBF000009100009D2829C07777FD8E8EFC
        B1B1FCC6C6FBCFCEFAD7D7FAD8D9FAD0CFF8C5C6F9BCBCFAB1B0FD9091FC7978
        FA4143D600009E0000959092CEC0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0D0CDF106069200009C1213B24E4FE07A7AFC8A89F8A5A3
        F4B9B8F8BEBDFAB6B6F9A4A5F58987F77B78FD5D5CEC2624C00000A100009392
        91D1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0E5E5FC3939A90000920000A01515B34242D65253E65959EB5B5AEC5B
        5AEC5959E94847DB1E1FBC0000A200009819189AB7B6E5C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FF
        FFFFA8A8E22A2AA000009000009C0000A30403A80000A40101A40000A40000A1
        0000980D0F928383CEF8F9FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF
        CBCBF08081C84D4DAD2727A22223A12424A04344A8706FBCB6B7E3C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000}
      TabOrder = 13
      OnClick = BitBtn1Click
    end
    object BitBtn4: TBitBtn
      Left = 320
      Top = 206
      Width = 105
      Height = 41
      Caption = 'Confirmar(F5)'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFDFDFDFDFDFDFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFEFEFCFCFCF9F9F9F6F6F6F2F2F2EDEDEDE4E4E4C8C9C9
        92B9A3CFD0CFEAEAEAEFEFEFF2F2F2F4F4F4F7F7F7F9F9F9FCFCFCFDFDFDFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDFC
        FCFCFBFBFB98D9B315BE5DB7E3CAFCFCFCFCFCFCFDFDFDFDFDFDFEFEFEFEFEFE
        FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFA2E0BC18C05F18C46133C470F5FBF8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFBFEFC7ED6A311C05B10C25B11C25B10C15A74D3
        9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F5EA49C87F0CC0580CC15812BE5A
        52C9840CC1580EBF58B1E5C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8E7CC1BBF600CC1580C
        C1580CC15863CF90D9F2E411BE5A0CC1581ABF60D2EFDEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F4
        E955CB8713C05C17C36014BF5CD8F1E2FFFFFF63D09117C36018C4612CC26CDC
        F2E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFBEE9D047C87D6DD197FFFFFFFFFFFFDEF3E729C4
        6B34CC7533CB7439C775CBEDDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFFFFFFFFFF
        FFFFFFFFFFFF87D8A94AD08457D48D53D38A43CB7D97DDB4F9FDFBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FBF756CD896BD99A71DB9F6FDB9D5CD590
        68CF94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCEDDA56D08A7A
        DDA57DDEA774DCA183D8A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA6E2BF61D49381DFA96EDA9DACE3C3FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93DBB163D59458D18CDEF2E6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2E0BC3FC377
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE8F6EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 14
      OnClick = BitBtn4Click
    end
  end
  object ClientDataSet12: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 67
    object ClientDataSet12CodigoCliente: TIntegerField
      FieldName = 'CodigoCliente'
    end
    object ClientDataSet12Nome_cliente: TStringField
      FieldName = 'Nome_cliente'
      Size = 50
    end
    object ClientDataSet12CodigoCompra: TIntegerField
      FieldName = 'CodigoCompra'
    end
    object ClientDataSet12Vendedor: TStringField
      FieldName = 'Vendedor'
    end
    object ClientDataSet12Historico: TStringField
      FieldName = 'Historico'
      Size = 50
    end
    object ClientDataSet12DataCompra: TDateField
      FieldName = 'DataCompra'
      EditMask = '!99/99/0000;1;_'
    end
    object ClientDataSet12ValorParcela: TCurrencyField
      FieldName = 'ValorParcela'
    end
    object ClientDataSet12Parcela: TStringField
      FieldName = 'Parcela'
      Size = 10
    end
    object ClientDataSet12DataVencimento: TDateField
      FieldName = 'DataVencimento'
      EditMask = '!99/99/0000;1;_'
    end
    object ClientDataSet12Valor_pago: TCurrencyField
      FieldName = 'Valor_pago'
    end
    object ClientDataSet12multa: TCurrencyField
      FieldName = 'multa'
    end
    object ClientDataSet12juros: TCurrencyField
      FieldName = 'juros'
    end
    object ClientDataSet12descontos: TCurrencyField
      FieldName = 'descontos'
    end
    object ClientDataSet12valor_pagar: TCurrencyField
      FieldName = 'valor_pagar'
    end
    object ClientDataSet12valor_total: TCurrencyField
      FieldName = 'valor_total'
    end
    object ClientDataSet12Codigo_Crediario: TIntegerField
      FieldName = 'Codigo_Crediario'
    end
    object ClientDataSet12Saldo: TCurrencyField
      FieldName = 'Saldo'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 692
    Top = 46
  end
  object SDS_CHEQUE: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CHEQUES ORDER BY DATA_DEPOSITO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 379
    Top = 3
    object SDS_CHEQUECODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CHEQUECODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_CHEQUEBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_CHEQUEAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_CHEQUECONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_CHEQUECONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SDS_CHEQUETITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_CHEQUETIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_CHEQUEN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_CHEQUEQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_CHEQUEVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Precision = 15
    end
    object SDS_CHEQUECLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_CHEQUERETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_CHEQUERETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_CHEQUEMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_CHEQUEDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_CHEQUEDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_CHEQUEDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object SDS_CHEQUEDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_CHEQUEUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_CHEQUEUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_CHEQUECOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_CHEQUECODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_CHEQUENUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object SDS_CHEQUECOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object SDS_CHEQUECOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object SDS_CHEQUENUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SDS_CHEQUECOD_BARRAS_CHEQUE: TStringField
      FieldName = 'COD_BARRAS_CHEQUE'
      Size = 50
    end
  end
  object DTS_CHEQUE: TDataSource
    DataSet = SDS_CHEQUE
    Left = 411
    Top = 3
  end
  object SPC_CHEQUE: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'INSERECOD_CHEQUES'
    Left = 346
    Top = 3
  end
  object SPC_CREDIARIO: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_VENCIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'SITUACAO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARCELA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME_SACADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VLR_GRAFICA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'N_OS'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CREDIARIO'
    Left = 292
    Top = 12
  end
  object MsgI: TsuiMessageDialog
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
    Left = 474
  end
  object MSG: TsuiMessageDialog
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
    Text = 'Ocorreu um Erro. Tente Novamente !!!'
    Left = 538
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
  object ClientDataSet1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 656
    Top = 40
    object ClientDataSet1CodigoCliente: TIntegerField
      FieldName = 'CodigoCliente'
    end
    object ClientDataSet1Nome_cliente: TStringField
      FieldName = 'Nome_cliente'
      Size = 50
    end
    object ClientDataSet1CodigoCompra: TIntegerField
      FieldName = 'CodigoCompra'
    end
    object ClientDataSet1Vendedor: TStringField
      FieldName = 'Vendedor'
    end
    object ClientDataSet1Historico: TStringField
      FieldName = 'Historico'
      Size = 50
    end
    object ClientDataSet1DataCompra: TDateField
      FieldName = 'DataCompra'
      EditMask = '!99/99/0000;1;_'
    end
    object ClientDataSet1ValorParcela: TCurrencyField
      FieldName = 'ValorParcela'
    end
    object ClientDataSet1Parcela: TStringField
      FieldName = 'Parcela'
      Size = 10
    end
    object ClientDataSet1DataVencimento: TDateField
      FieldName = 'DataVencimento'
      EditMask = '!99/99/0000;1;_'
    end
    object ClientDataSet1Valor_pago: TCurrencyField
      FieldName = 'Valor_pago'
    end
    object ClientDataSet1multa: TCurrencyField
      FieldName = 'multa'
    end
    object ClientDataSet1juros: TCurrencyField
      FieldName = 'juros'
    end
    object ClientDataSet1descontos: TCurrencyField
      FieldName = 'descontos'
    end
    object ClientDataSet1valor_pagar: TCurrencyField
      FieldName = 'valor_pagar'
    end
    object ClientDataSet1valor_total: TCurrencyField
      FieldName = 'valor_total'
    end
    object ClientDataSet1Codigo_Crediario: TIntegerField
      FieldName = 'Codigo_Crediario'
    end
    object ClientDataSet1Saldo: TCurrencyField
      FieldName = 'Saldo'
    end
  end
end
