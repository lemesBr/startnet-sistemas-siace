object FrmBoletoSiace: TFrmBoletoSiace
  Left = 569
  Top = 261
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Boletos Siace'
  ClientHeight = 123
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 8
    Top = 64
    Width = 521
    Height = 50
    Shape = bsFrame
  end
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 521
    Height = 50
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 49
    Height = 19
    Caption = 'Cidade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 280
    Top = 24
    Width = 29
    Height = 19
    Caption = 'Ano:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 410
    Top = 24
    Width = 32
    Height = 19
    Caption = 'M'#234's:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object spbGerarBoleto: TSpeedButton
    Left = 17
    Top = 72
    Width = 120
    Height = 33
    Caption = 'Gerar todos '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    Glyph.Data = {
      C6070000424DC607000000000000360000002800000016000000160000000100
      20000000000090070000120B0000120B00000000000000000000FFFFFF00C8DA
      C000C0D8B900B7D1AE00B7D1AD00B7D1AD00B7D1AD00B7D1AD00B7D1AD00B7D1
      FD00B7D1AD00B7D1AD00B7D1AD00B7D1AD00B7D1AD00B7D1AD00B7D1AD00B7D1
      FD00B7D1AD00BCD4B400C9DBC200FFFFFF00FFFFFF00A3C79900A8CA9E00B2CB
      A600B3CCA700B3CCA700B3CCA700B3CCA700B3CCA700B3CCA700B3CCA700B3CC
      A700B3CCA700B3CCA700B3CCA700B3CCA700B3CCA700B3CCA700B3CCA800A7C5
      9A00A8CC9E00FFFFFF00FFFFFF009FC49400D2E0CB00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F5EE00A8C89D00FFFF
      FF00FFFFFF009BC08E00C3D5B800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DCE6D6009BBF8D00FFFFFF00FFFFFF00D7E4
      D200ECF4EB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F5F9F500DBE7D700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00E6D4C500FDFBF900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8D6C800F9F2EE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3C9B700BB886100B57A
      4E00D8B79F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EDDDD100B57A4E00B47C4F00DBBBA500FEFCFB00FFFFFF00FFFF
      FF00FFFFFF00FDFBFA00D0AB9000B57B4E00B57A4E00B57A4E00B4794E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B781
      5700B57A4E00B57A4E00B57A4E00C4977600F7EFEA00FFFFFF00FFFFFF00FEFD
      FD00F5EEE900EDDED300C3936F00BE8B6600B9825A00D1A98B00FDFCFB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFC2AE00B57A4E00C1906C00BA83
      5A00E9D8CB00F4ECE600FDFAF900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BE8B6400F3E8E000FFFFFF00E4CEBE00FCF8F600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00EAD8CA00FBF8F600FBF8F500B57A4E00FBF8F600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAD7CA00B57A4E00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B57B4D00D3AE9200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C79A7900BC855E00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D0AA8E00B9825800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B67B4E00D8B8A100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DDC2AD00CFA88C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDDE
      D300B77E5400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1E5DC00B57A
      4E00F4ECE500FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2CAB800B57A4E00B57A
      4E00D2AE9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B67A4F00E1C8
      B400FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F0EB00E8D5C800FFFFFF00FFFF
      FF00FFFFFF00FEFDFD00D7B79F00B57A4E00B57A4E00B57A4E00B57A4E00C496
      7400F9F4F100FFFFFF00FFFFFF00FFFFFF00EDDED300EFE2D900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFC
      FB00E2CAB900E6D3C400CCA38400C18F6A00E7D4C500DEC5B100F7F0EC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DCBFAA00C99F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6B69E00C699
      7800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6B69E00C6997800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D6B69E00C6997800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D0AA8E00BD886100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EADACE00E2CC
      BB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00}
    ParentFont = False
    OnClick = spbGerarBoletoClick
  end
  object spbGerarBoletosSiace: TSpeedButton
    Left = 145
    Top = 72
    Width = 208
    Height = 33
    Caption = 'Imprimir todos os boletos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    Glyph.Data = {
      C6070000424DC607000000000000360000002800000016000000160000000100
      20000000000090070000120B0000120B00000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EADA
      CE00DBBBA300DBBAA100DCBEA700E0C8B700F5EEE900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFCFB00FCF9F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEA78A00F4BB8F00FFC6
      9A00F4BB8F00E4AB7E00CE956A00CFAA8F00FAF7F400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCFAF800CAA28300CD987100D19F7800D09E
      7800C9977100ECDDD300FFFFFF00D1AB8F00E0A67A00E4AB7E00E9B08400FAC1
      9600FFD0A300F7BE9300C8916800E6D4C700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FCF9F700C38B6100F8C09400FFCEA200E2A87C00E5D2
      C400FFFFFF00F3EAE300ECDED300EEE1D800E9D8CC00DCBEA700CA936B00EFB6
      8B00FFCCA000DCA27600D4B59D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFCFB00CC976E00FBC29600FFCDA100E2A87C00E7D6C900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFAF900D0AE9500E5AB8000FFD8
      AC00DBA17500EADACE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CB9D7B00FEC7
      9C00ECB38600CE946900D99F7300EADACE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1B29900E4AB7F00FFCCA100C58C
      6100FCF9F700FFFFFF00FFFFFF00DFCABA00E3AA7E00FFC89B00C8997800F6F0
      EB00B9835800DFC5B100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D0AC9200EEB68B00F6BE9200CDA68B00FFFF
      FF00FFFFFF00C8977200FFCA9F00D69C7000EEE3DB00FFFFFF00F7F0EB00EFE3
      DA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C8906700FFD0A300CD936700F6F0EC00EFE4DB00D59C
      6F00FEC79B00CD9F7D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEC1AB00FAC19600E4AB7E00DFC6B300DDC4B100E6AC8000F3BB8E00DFC6
      B300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEE0D600E9B0
      8400F4BB8F00DABBA300D8BAA400ECB38700EEB58900E8D6C800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEE2D900E1A77B00FBC29600DBBA
      A100D9BCA700EBB28600F0B78B00E6D2C400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EEE1D800E2A87C00FAC19500DBBAA100E0C9B900E3AA
      7E00F5BC9100DCBFAA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ECDDD100EDB38800F1B88C00DABCA500F3EAE300D2986C00FFC99D00CA9A
      7500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9B79D00FDC5
      9A00E1A87C00E0CAB900FFFFFF00CB9E7E00FDC69900DFA57A00E5D3C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F3E9E100E9D5C600FFFFFF00F8F4F100CC926600FFCFA300C9906700FBF9
      F700FFFFFF00E9DACF00DAA17500FFCEA200C48D6200FEFEFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4EBE400B97F
      5300EEDFD500CEA68800FAC39700EEB58800D5B7A100FFFFFF00FFFFFF00FFFF
      FF00D0A88B00F9C29600FAC39700C7997600FBF9F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAF6F300D3996D00D99F7300E5AC
      8000FEC79C00C7936E00FFFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C186
      5B00FFCDA100FBC39700C68F6700E2CDBF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F8F3EF00D2996E00FFD1A500FFC99C00CE997200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDE1D800C68F6600FAC2
      9600FFCFA300DFA57900CB9B7800D9BAA300E5D1C300E5D1C200E4CEBE00FFFF
      FF00F9F4F100D0966A00FEC59900F8C09400CC936600ECDBCE00FEFEFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF9F800D1AC8F00DAA17500FEC6
      9900FFC99D00F5BC9100F1B88B00F5BD9100C7916800FFFFFF00FDFBF900D2AD
      9200D5B09400D5B09400D5AE9000CDA78A00F8F1EC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5D4C700CDA48500D2986C00E3AA
      7E00EBB28600F0B78B00C4906800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F2EAE300E2CCBC00DBBEAA00D9BB
      A500E8D6C900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00}
    ParentFont = False
    OnClick = spbGerarBoletosSiaceClick
  end
  object spbCancelar: TSpeedButton
    Left = 392
    Top = 72
    Width = 120
    Height = 33
    BiDiMode = bdLeftToRight
    Caption = 'Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    Glyph.Data = {
      C6070000424DC607000000000000360000002800000016000000160000000100
      20000000000090070000120B0000120B00000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3FB00BEBEED00AEAE
      EB00AAAAEC00A9A9EC00AEAEEB00B9B9EC00E7E7F800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A2A2E6008080E8008F8FF6009999FE009B9BFE009B9B
      FE009A9AFE009191F8007F7FEC009797E400F4F4FC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3F6008282
      E6009C9CFF009F9FFF009393FA008F8FF7008F8FF7008F8FF7008F8FF7009292
      F9009D9DFF009F9FFF007E7EE900C5C5EE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B6B6EA008484F0009E9EFF009292F9008E8E
      F6008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008E8EF7009090
      F7009F9FFF009191F800A2A2E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EEEEFA008686F000A2A2FF008F8FF7008F8FF7008F8FF7008F8FF7008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008E8EF6009F9F
      FF009191F700CDCDF100FFFFFF00FFFFFF00FFFFFF00FFFFFF008686E400A0A0
      FF008F8FF7008F8FF7009191F7008080F6008686F6009292F7008F8FF7008F8F
      F7009191F7008989F7007E7EF6008E8EF7009090F7008E8EF6009E9EFF007878
      E700F6F6FC00FFFFFF00FFFFFF00BBBBEB009494FA009494FB008F8FF7009090
      F7008484F600B5B5FA009D9DF8008080F6009191F7009090F7008686F6009393
      F700BABAFA008A8AF7008E8EF7008F8FF7009090F800A0A0FF009494E300FFFF
      FF00FFFFFF008080E400A1A1FF008E8EF6008F8FF7008383F6009D9DF800FFFF
      FF00F0F0FE007F7FF6008080F6008989F7007272F500DBDBFC00FFFFFF00BCBC
      FA007C7CF6008F8FF7008E8EF7009D9DFF007B7BEA00EBEBF900DBDBF4008282
      EF009999FD008F8FF7008F8FF7008B8BF7008C8CF700C2C2FB00FFFFFF00EBEB
      FD008888F7007878F500D7D7FC00FFFFFF00D7D7FC009292F7008989F7008F8F
      F7008F8FF7009292F9009191F700B6B6EC00B4B4EA009090F7009292F9008F8F
      F7008F8FF7009090F7008C8CF7007070F500C8C8FB00FFFFFF00ECECFE00DDDD
      FD00FFFFFF00DBDBFC007272F5008686F6009191F7008F8FF7008F8FF7008F8F
      F7009A9AFE00AAAAEA00AAAAE8009393F9009191F8008F8FF7008F8FF7008F8F
      F7009090F7008F8FF7007171F500C2C2FB00FFFFFF00FFFFFF00DBDBFD007878
      F6008989F7009090F7008F8FF7008F8FF7008F8FF7008F8FF7009A9AFE00A9A9
      EC00ABABE9009393F9009191F8008F8FF7008F8FF7008F8FF7009090F7008787
      F7008080F600D2D2FC00FFFFFF00FFFFFF00E5E5FD008A8AF7008181F6009191
      F7008F8FF7008F8FF7008F8FF7008F8FF7009A9AFE00A9A9EC00BABAEB008E8E
      F6009393FA008F8FF7008F8FF7009191F7008888F7007575F500E1E1FD00FFFF
      FF00D6D6FC00C0C0FB00FFFFFF00F1F1FE007F7FF6008080F6009292F7008F8F
      F7008F8FF7008F8FF7009999FD00ABABEA00E3E3F7007F7FED009B9BFE008F8F
      F7008F8FF7008989F7009191F700D7D7FC00FFFFFF00DDDDFD008080F6007171
      F500C6C6FB00FFFFFF00EBEBFE009B9BF8008686F7008F8FF7008F8FF7009494
      FA008F8FF600BABAED00FFFFFF008989E300A0A0FF008E8EF6008F8FF7008585
      F6009999F800FFFFFF00DCDCFC007575F5008787F6008E8EF7007070F500C6C6
      FB00FFFFFF00B5B5FA007F7FF6008F8FF7008E8EF6009F9FFF007979E700F6F6
      FC00FFFFFF00CFCFF0008D8DF5009898FD008E8EF7009191F7008383F6009D9D
      F8009191F7008787F6009090F7009090F7008C8CF7008D8DF700A1A1F8008484
      F6009191F7008F8FF7009292F9009D9DFF00A4A4E500FFFFFF00FFFFFF00FFFF
      FF009393E500A0A0FF009090F8008F8FF7009191F7008585F6008989F7009191
      F7008F8FF7008F8FF7009090F7008B8BF7008383F6009090F7008F8FF7008F8F
      F7009F9FFF007E7EE400FDFDFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF007777
      E700A4A4FF009090F8008E8EF7008F8FF7008F8FF7008F8FF7008F8FF7008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7008E8EF700A3A3FF008484EF00EBEB
      F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6F2007F7FE9009F9F
      FF009898FD008E8EF6008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8F
      F7008E8EF6009595FB00A0A0FF008686F100B9B9EA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7FD009797E6008D8DF5009F9F
      FF009A9AFE009393FA009191F8009191F8009292F9009999FD00A1A1FF009494
      FA008B8BE500E1E1F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6EE008F8FE5007E7EEC008E8E
      F6009393F9009393FA009090F7008282EF008A8AE600B6B6EA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2E2F600BDBDEC00ACACE900AAAA
      E800B8B8EB00D8D8F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00}
    ParentFont = False
    ParentBiDiMode = False
    OnClick = spbCancelarClick
  end
  object cbxCidade: TComboBox
    Left = 72
    Top = 20
    Width = 201
    Height = 27
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object cbxMes: TComboBox
    Left = 314
    Top = 20
    Width = 89
    Height = 27
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 1
    Text = 'Janeiro'
    Items.Strings = (
      'Janeiro'
      'Fevereiro'
      'Mar'#231'o'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
  end
  object cbxAno: TComboBox
    Left = 448
    Top = 20
    Width = 65
    Height = 27
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ItemIndex = 4
    ParentFont = False
    TabOrder = 2
    Text = '2014'
    Items.Strings = (
      '2010'
      '2011'
      '2012'
      '2013'
      '2014'
      '2015'
      '2016'
      '2017'
      '2018'
      '2019'
      '2020')
  end
end