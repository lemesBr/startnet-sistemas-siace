object FormReciboCP: TFormReciboCP
  Left = 299
  Top = 95
  Width = 835
  Height = 577
  Caption = 'FormReciboCP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -1
    Top = 0
    Width = 794
    Height = 527
    DataSource = DM.DTS_CP_Baixar
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 139.500000000000000000
    OnPageStarting = RLReport1PageStarting
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 437
      object RLLabel1: TRLLabel
        Left = 267
        Top = 8
        Width = 113
        Height = 19
        Caption = 'R E C I B O  N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 18
        Top = 55
        Width = 110
        Height = 16
        Caption = 'Recebi(emos) de: '
      end
      object RLLabel4: TRLLabel
        Left = 19
        Top = 103
        Width = 110
        Height = 16
        Caption = 'A importancia de: '
      end
      object RLLabel6: TRLLabel
        Left = 20
        Top = 148
        Width = 78
        Height = 16
        Caption = 'Referente a: '
      end
      object RLLabel8: TRLLabel
        Left = 18
        Top = 219
        Width = 218
        Height = 16
        Caption = 'Para maior clareza firmo o presente: '
      end
      object RLLabel12: TRLLabel
        Left = 341
        Top = 339
        Width = 361
        Height = 16
        Caption = '___________________________________________________'
      end
      object RLDBText1: TRLDBText
        Left = 385
        Top = 8
        Width = 123
        Height = 19
        DataField = 'CODIGO_GERA'
        DataSource = DM.DTS_CP_Baixar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 152
        Top = 56
        Width = 102
        Height = 16
        DataField = 'RAZAO_SOCIAL'
        DataSource = DM.DTS_Empresa
      end
      object RLDBText4: TRLDBText
        Left = 153
        Top = 147
        Width = 105
        Height = 16
        DataField = 'OBSERVACOES'
        DataSource = DM.DTS_CP_Baixar
      end
      object RLDBText6: TRLDBText
        Left = 340
        Top = 355
        Width = 95
        Height = 16
        DataField = 'FORNECEDOR'
        DataSource = DM.DTS_CP_Baixar
      end
      object RLLabel3: TRLLabel
        Left = 514
        Top = 8
        Width = 80
        Height = 16
        Caption = 'Valor de R$: '
      end
      object RLDBText8: TRLDBText
        Left = 605
        Top = 8
        Width = 116
        Height = 16
        DataField = 'VALOR_PARCELA'
        DataSource = DM.DTS_CP_Baixar
      end
      object rldbtxt1: TRLDBText
        Left = 152
        Top = 106
        Width = 54
        Height = 18
        DataSource = DMC.Dts_Crediario_contrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 473
        Top = 253
        Width = 39
        Height = 16
      end
      object RLDBText3: TRLDBText
        Left = 340
        Top = 253
        Width = 52
        Height = 16
        DataField = 'CIDADE'
        DataSource = DM.DTS_Empresa
      end
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Matricial'
    Left = 539
    Top = 69
  end
end
