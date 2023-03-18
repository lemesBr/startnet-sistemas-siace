object SaidaNFCadFrm: TSaidaNFCadFrm
  Left = -2
  Top = -2
  Width = 792
  Height = 603
  Caption = 'Cadastro :: Sa'#237'da de Nota Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 16
  object Panel2: TPanel
    Left = 8
    Top = 224
    Width = 737
    Height = 209
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object PageControl2: TPageControl
      Left = 8
      Top = 8
      Width = 718
      Height = 193
      ActivePage = TabSheet4
      Style = tsFlatButtons
      TabIndex = 1
      TabOrder = 0
      OnChange = PageControl2Change
      object TabSheet3: TTabSheet
        Caption = 'Produtos da Nota'
        object ListView1: TListView
          Left = 0
          Top = 0
          Width = 713
          Height = 153
          Columns = <
            item
              Caption = 'Refer'#234'ncia'
              Width = 70
            end
            item
              Caption = 'Produto'
              Width = 250
            end
            item
              Caption = 'C.T.'
              Width = 70
            end
            item
              Caption = 'Sit.Trib.'
            end
            item
              Caption = 'Unidade'
              Width = 55
            end
            item
              Alignment = taRightJustify
              Caption = 'Quantidade'
              Width = 70
            end
            item
              Alignment = taRightJustify
              Caption = 'Valor Unit'#225'rio'
              Width = 75
            end
            item
              Alignment = taRightJustify
              Caption = 'Valor Total'
              Width = 75
            end
            item
              Alignment = taRightJustify
              Caption = 'ICMS'
            end
            item
              Alignment = taRightJustify
              Caption = 'IPI'
            end
            item
              Alignment = taRightJustify
              Caption = 'Valor IPI'
              Width = 75
            end
            item
              Caption = 'Cod_Produto'
              Width = 0
            end>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GridLines = True
          ReadOnly = True
          RowSelect = True
          ParentFont = False
          TabOrder = 0
          ViewStyle = vsReport
          OnDblClick = ListView1DblClick
          OnKeyDown = ListView1KeyDown
        end
        object Panel14: TPanel
          Left = 128
          Top = 56
          Width = 489
          Height = 73
          BevelInner = bvLowered
          BevelWidth = 4
          TabOrder = 1
          Visible = False
          object Label68: TLabel
            Left = 14
            Top = 14
            Width = 459
            Height = 41
            AutoSize = False
            Caption = 'Nota Fiscal Cancelada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -37
            Font.Name = 'Arial Black'
            Font.Style = []
            ParentFont = False
          end
          object Label69: TLabel
            Left = 16
            Top = 11
            Width = 459
            Height = 47
            Alignment = taCenter
            AutoSize = False
            Caption = 'Nota Fiscal Cancelada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -37
            Font.Name = 'Arial Black'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'C'#225'lculo do Imposto'
        ImageIndex = 1
        object Panel3: TPanel
          Left = 2
          Top = 1
          Width = 689
          Height = 163
          BevelOuter = bvNone
          TabOrder = 0
          object PageControl3: TPageControl
            Left = 0
            Top = 0
            Width = 553
            Height = 161
            ActivePage = TabSheet6
            Style = tsFlatButtons
            TabIndex = 0
            TabOrder = 0
            object TabSheet6: TTabSheet
              Caption = 'ICMS'
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 457
                Height = 129
                BevelOuter = bvNone
                TabOrder = 0
                object Label55: TLabel
                  Left = 0
                  Top = 40
                  Width = 109
                  Height = 16
                  Caption = 'Valor Isento ICMS:'
                end
                object Label56: TLabel
                  Left = 160
                  Top = 0
                  Width = 110
                  Height = 16
                  Caption = 'Aliquota ICMS (%):'
                end
                object Label47: TLabel
                  Left = 320
                  Top = 0
                  Width = 123
                  Height = 16
                  Caption = 'Valor Total do ICMS:'
                end
                object Label37: TLabel
                  Left = 0
                  Top = 0
                  Width = 103
                  Height = 16
                  Caption = 'Base C'#225'lc. ICMS:'
                end
                object Label33: TLabel
                  Left = 160
                  Top = 80
                  Width = 112
                  Height = 16
                  Caption = 'Valor Outros ICMS:'
                end
                object Label54: TLabel
                  Left = 0
                  Top = 80
                  Width = 107
                  Height = 16
                  Caption = 'ICMS Antecipado:'
                end
                object Label35: TLabel
                  Left = 320
                  Top = 40
                  Width = 110
                  Height = 16
                  Caption = 'Valor ICMS Subst.:'
                end
                object Label36: TLabel
                  Left = 160
                  Top = 40
                  Width = 110
                  Height = 16
                  Caption = 'Base ICMS Subst.:'
                end
                object DBEdit13: TDBEdit
                  Left = 0
                  Top = 16
                  Width = 133
                  Height = 24
                  DataField = 'BASE_ICMS'
                  DataSource = DtsDstPedidos
                  TabOrder = 0
                  OnEnter = Edit1Enter
                  OnExit = Edit1Exit
                  OnKeyPress = DBEdit13KeyPress
                end
                object DBEdit14: TDBEdit
                  Left = 160
                  Top = 16
                  Width = 133
                  Height = 24
                  DataField = 'ALIQUOTA_ICMS'
                  DataSource = DtsDstPedidos
                  TabOrder = 1
                  OnEnter = Edit1Enter
                  OnExit = Edit1Exit
                  OnKeyPress = DBEdit14KeyPress
                end
                object DBEdit15: TDBEdit
                  Left = 320
                  Top = 16
                  Width = 133
                  Height = 24
                  DataField = 'VALOR_ICMS'
                  DataSource = DtsDstPedidos
                  TabOrder = 2
                  OnEnter = Edit1Enter
                  OnExit = Edit1Exit
                  OnKeyPress = DBEdit14KeyPress
                end
                object DBEdit16: TDBEdit
                  Left = 0
                  Top = 56
                  Width = 133
                  Height = 24
                  DataField = 'VALOR_ISENTO_ICMS'
                  DataSource = DtsDstPedidos
                  TabOrder = 3
                  OnEnter = Edit1Enter
                  OnExit = Edit1Exit
                  OnKeyPress = DBEdit14KeyPress
                end
                object DBEdit18: TDBEdit
                  Left = 160
                  Top = 56
                  Width = 133
                  Height = 24
                  DataField = 'BASE_ICMS_SUBST'
                  DataSource = DtsDstPedidos
                  TabOrder = 4
                  OnEnter = Edit1Enter
                  OnExit = Edit1Exit
                  OnKeyPress = DBEdit14KeyPress
                end
                object DBEdit19: TDBEdit
                  Left = 320
                  Top = 56
                  Width = 133
                  Height = 24
                  DataField = 'VALOR_ICMS_SUBST'
                  DataSource = DtsDstPedidos
                  TabOrder = 5
                  OnEnter = Edit1Enter
                  OnExit = Edit1Exit
                  OnKeyPress = DBEdit14KeyPress
                end
                object DBEdit20: TDBEdit
                  Left = 0
                  Top = 96
                  Width = 133
                  Height = 24
                  DataField = 'ICMS_ANTECIPADO'
                  DataSource = DtsDstPedidos
                  TabOrder = 6
                  OnEnter = Edit1Enter
                  OnExit = Edit1Exit
                  OnKeyPress = DBEdit14KeyPress
                end
                object DBEdit21: TDBEdit
                  Left = 160
                  Top = 96
                  Width = 133
                  Height = 24
                  DataField = 'OUTRAS_ICMS'
                  DataSource = DtsDstPedidos
                  TabOrder = 7
                  OnEnter = Edit1Enter
                  OnExit = Edit1Exit
                  OnKeyPress = DBEdit22KeyPress
                end
              end
            end
            object TabSheet7: TTabSheet
              Caption = 'IPI'
              ImageIndex = 1
              object Panel9: TPanel
                Left = 0
                Top = 0
                Width = 465
                Height = 89
                BevelOuter = bvNone
                TabOrder = 0
                object Label58: TLabel
                  Left = 0
                  Top = 40
                  Width = 92
                  Height = 16
                  Caption = 'Valor Isento IPI:'
                end
                object Label59: TLabel
                  Left = 160
                  Top = 0
                  Width = 93
                  Height = 16
                  Caption = 'Aliquota IPI (%):'
                end
                object Label60: TLabel
                  Left = 0
                  Top = 0
                  Width = 83
                  Height = 16
                  Caption = 'Base C'#225'lc IPI:'
                end
                object Label63: TLabel
                  Left = 320
                  Top = 0
                  Width = 106
                  Height = 16
                  Caption = 'Valor Total do IPI:'
                end
                object Label57: TLabel
                  Left = 160
                  Top = 40
                  Width = 95
                  Height = 16
                  Caption = 'Valor Outros IPI:'
                end
                object DBEdit23: TDBEdit
                  Left = 0
                  Top = 16
                  Width = 133
                  Height = 24
                  DataField = 'BASE_IPI'
                  DataSource = DtsDstPedidos
                  TabOrder = 0
                  OnEnter = Edit1Enter
                  OnExit = Edit1Exit
                  OnKeyPress = DBEdit23KeyPress
                end
                object DBEdit24: TDBEdit
                  Left = 160
                  Top = 16
                  Width = 133
                  Height = 24
                  DataField = 'ALIQUOTA_IPI'
                  DataSource = DtsDstPedidos
                  TabOrder = 1
                  OnEnter = Edit1Enter
                  OnExit = Edit1Exit
                  OnKeyPress = DBEdit14KeyPress
                end
                object DBEdit25: TDBEdit
                  Left = 320
                  Top = 16
                  Width = 133
                  Height = 24
                  DataField = 'VALOR_IPI'
                  DataSource = DtsDstPedidos
                  TabOrder = 2
                  OnEnter = Edit1Enter
                  OnExit = Edit1Exit
                  OnKeyPress = DBEdit14KeyPress
                end
                object DBEdit26: TDBEdit
                  Left = 0
                  Top = 56
                  Width = 133
                  Height = 24
                  DataField = 'VALOR_ISENTO_IPI'
                  DataSource = DtsDstPedidos
                  TabOrder = 3
                  OnEnter = Edit1Enter
                  OnExit = Edit1Exit
                  OnKeyPress = DBEdit14KeyPress
                end
                object DBEdit28: TDBEdit
                  Left = 160
                  Top = 56
                  Width = 133
                  Height = 24
                  DataField = 'OUTRAS_IPI'
                  DataSource = DtsDstPedidos
                  TabOrder = 4
                  OnEnter = Edit1Enter
                  OnExit = Edit1Exit
                  OnKeyPress = DBEdit27KeyPress
                end
              end
            end
            object TabSheet8: TTabSheet
              Caption = 'Outros'
              ImageIndex = 2
              object Panel11: TPanel
                Left = 0
                Top = 0
                Width = 489
                Height = 97
                BevelOuter = bvNone
                TabOrder = 0
                object Label30: TLabel
                  Left = 0
                  Top = 0
                  Width = 88
                  Height = 16
                  Caption = 'Valor do Frete:'
                end
                object Label31: TLabel
                  Left = 160
                  Top = 0
                  Width = 82
                  Height = 16
                  Caption = 'Valor Seguro:'
                end
                object Label32: TLabel
                  Left = 320
                  Top = 0
                  Width = 106
                  Height = 16
                  Caption = 'Outras despesas:'
                end
                object Label65: TLabel
                  Left = 0
                  Top = 40
                  Width = 61
                  Height = 16
                  Caption = 'Desconto:'
                end
                object DBEdit29: TDBEdit
                  Left = 0
                  Top = 16
                  Width = 133
                  Height = 24
                  DataField = 'VALOR_FRETE'
                  DataSource = DtsDstPedidos
                  TabOrder = 0
                  OnEnter = Edit1Enter
                  OnExit = DBEdit29Exit
                  OnKeyPress = DBEdit29KeyPress
                end
                object DBEdit30: TDBEdit
                  Left = 160
                  Top = 16
                  Width = 133
                  Height = 24
                  DataField = 'VALOR_SEGURO'
                  DataSource = DtsDstPedidos
                  TabOrder = 1
                  OnEnter = Edit1Enter
                  OnExit = DBEdit29Exit
                  OnKeyPress = DBEdit14KeyPress
                end
                object DBEdit31: TDBEdit
                  Left = 320
                  Top = 16
                  Width = 133
                  Height = 24
                  DataField = 'OUTRAS_DESPESAS'
                  DataSource = DtsDstPedidos
                  TabOrder = 2
                  OnEnter = Edit1Enter
                  OnExit = DBEdit29Exit
                  OnKeyPress = DBEdit14KeyPress
                end
                object DBEdit10: TDBEdit
                  Left = 0
                  Top = 56
                  Width = 133
                  Height = 24
                  DataField = 'DESCONTO'
                  DataSource = DtsDstPedidos
                  TabOrder = 3
                  OnEnter = Edit1Enter
                  OnExit = DBEdit29Exit
                  OnKeyPress = DBEdit31KeyPress
                end
              end
            end
          end
          object Panel12: TPanel
            Left = 544
            Top = 32
            Width = 137
            Height = 89
            BevelOuter = bvNone
            TabOrder = 1
            object Label34: TLabel
              Left = 8
              Top = 0
              Width = 126
              Height = 16
              Caption = 'Valor Total Produtos:'
            end
            object Label38: TLabel
              Left = 8
              Top = 40
              Width = 101
              Height = 16
              Caption = 'Valor Total Nota:'
            end
            object DBEdit17: TDBEdit
              Left = 8
              Top = 16
              Width = 125
              Height = 24
              DataField = 'VALOR_TOTALPRODUTO'
              DataSource = DtsDstPedidos
              TabOrder = 0
              OnEnter = Edit1Enter
              OnExit = Edit1Exit
              OnKeyPress = DBEdit17KeyPress
            end
            object DBEdit32: TDBEdit
              Left = 8
              Top = 56
              Width = 125
              Height = 24
              DataField = 'VALOR_TOTALNF'
              DataSource = DtsDstPedidos
              TabOrder = 1
              OnEnter = Edit1Enter
              OnExit = Edit1Exit
              OnKeyPress = DBEdit32KeyPress
            end
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Transportadora'
        ImageIndex = 2
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 721
          Height = 145
          BevelOuter = bvNone
          TabOrder = 0
          object Label39: TLabel
            Left = 0
            Top = 0
            Width = 131
            Height = 16
            Caption = 'Nome / Raz'#227'o Social:'
          end
          object Label40: TLabel
            Left = 600
            Top = 48
            Width = 113
            Height = 16
            Caption = 'Inscri'#231#227'o Estadual:'
          end
          object Label41: TLabel
            Left = 336
            Top = 48
            Width = 60
            Height = 16
            Caption = 'Munic'#237'pio:'
          end
          object Label42: TLabel
            Left = 0
            Top = 48
            Width = 62
            Height = 16
            Caption = 'Endere'#231'o:'
          end
          object Label43: TLabel
            Left = 544
            Top = 48
            Width = 27
            Height = 16
            Caption = 'U.F.:'
          end
          object Label44: TLabel
            Left = 544
            Top = 0
            Width = 27
            Height = 16
            Caption = 'U.F.:'
          end
          object Label45: TLabel
            Left = 336
            Top = 96
            Width = 51
            Height = 16
            Caption = 'N'#250'mero:'
          end
          object Label46: TLabel
            Left = 600
            Top = 0
            Width = 92
            Height = 16
            Caption = 'C.N.P.J / C.P.F.:'
          end
          object Label48: TLabel
            Left = 440
            Top = 0
            Width = 86
            Height = 16
            Caption = 'Placa Veiculo:'
          end
          object Label49: TLabel
            Left = 336
            Top = 0
            Width = 96
            Height = 16
            Caption = 'Frete Por Conta:'
          end
          object Label50: TLabel
            Left = 0
            Top = 96
            Width = 73
            Height = 16
            Caption = 'Quantidade:'
          end
          object Label51: TLabel
            Left = 104
            Top = 96
            Width = 53
            Height = 16
            Caption = 'Esp'#233'cie:'
          end
          object Label52: TLabel
            Left = 232
            Top = 96
            Width = 41
            Height = 16
            Caption = 'Marca:'
          end
          object Label53: TLabel
            Left = 456
            Top = 96
            Width = 69
            Height = 16
            Caption = 'Peso Bruto:'
          end
          object Label64: TLabel
            Left = 600
            Top = 96
            Width = 82
            Height = 16
            Caption = 'Peso L'#237'quido:'
          end
          object ComboBox3: TComboBox
            Left = 336
            Top = 16
            Width = 89
            Height = 24
            Style = csDropDownList
            ItemHeight = 16
            ItemIndex = 0
            MaxLength = 28
            TabOrder = 1
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
            Items.Strings = (
              ''
              '[1] - Emitente'
              '[2] - Destinat'#225'rio')
          end
          object BitBtn5: TBitBtn
            Left = 280
            Top = 16
            Width = 45
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 15
            TabStop = False
            OnClick = BitBtn5Click
            Glyph.Data = {
              42010000424D4201000000000000760000002800000011000000110000000100
              040000000000CC00000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              777770000000777777777770000070000000777777777770BFB0700000007777
              77700000FBF07000000077777770BFB0BFB07000000077000000FBF000007000
              0000770FBFB0BFBFB07770000000770BFBF0FBFBF07770000000770FBFB0BFBF
              B07770000000770BFBF00000007770000000770FBFBFBFB0777770000000770B
              FBFBFBF0777770000000770FBFBFBFB0777770000000770BFBFBFBF077777000
              0000770000000000777770000000777777777777777770000000777777777777
              777770000000}
          end
          object ComboBox1: TComboBox
            Left = 544
            Top = 16
            Width = 41
            Height = 24
            Style = csDropDownList
            ItemHeight = 16
            ItemIndex = 0
            MaxLength = 2
            TabOrder = 3
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
            Items.Strings = (
              ''
              'AC'
              'AL'
              'AP'
              'AM'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MT'
              'MS'
              'MG'
              'PA'
              'PB'
              'PR'
              'PE'
              'PI'
              'RJ'
              'RN'
              'RS'
              'RO'
              'RR'
              'SC'
              'SP'
              'SE'
              'TO')
          end
          object ComboBox2: TComboBox
            Left = 544
            Top = 64
            Width = 41
            Height = 24
            Style = csDropDownList
            ItemHeight = 16
            ItemIndex = 0
            MaxLength = 2
            TabOrder = 7
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
            Items.Strings = (
              ''
              'AC'
              'AL'
              'AP'
              'AM'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MT'
              'MS'
              'MG'
              'PA'
              'PB'
              'PR'
              'PE'
              'PI'
              'RJ'
              'RN'
              'RS'
              'RO'
              'RR'
              'SC'
              'SP'
              'SE'
              'TO')
          end
          object DBEdit34: TDBEdit
            Left = 440
            Top = 16
            Width = 89
            Height = 24
            DataField = 'TRANSP_PLACA_VEICULO'
            DataSource = DtsDstPedidos
            TabOrder = 2
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit35: TDBEdit
            Left = 600
            Top = 16
            Width = 113
            Height = 24
            DataField = 'TRANSP_CNPJ_CPF'
            DataSource = DtsDstPedidos
            TabOrder = 4
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit36: TDBEdit
            Left = 600
            Top = 64
            Width = 113
            Height = 24
            DataField = 'TRANSP_IE'
            DataSource = DtsDstPedidos
            TabOrder = 8
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit37: TDBEdit
            Left = 336
            Top = 64
            Width = 193
            Height = 24
            DataField = 'TRANSP_MUNICIPIO'
            DataSource = DtsDstPedidos
            TabOrder = 6
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit38: TDBEdit
            Left = 0
            Top = 64
            Width = 321
            Height = 24
            DataField = 'TRANSP_ENDER'
            DataSource = DtsDstPedidos
            TabOrder = 5
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit39: TDBEdit
            Left = 0
            Top = 112
            Width = 89
            Height = 24
            DataField = 'TRANSP_QNT'
            DataSource = DtsDstPedidos
            TabOrder = 9
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit40: TDBEdit
            Left = 104
            Top = 112
            Width = 113
            Height = 24
            DataField = 'TRANSP_ESPECIE'
            DataSource = DtsDstPedidos
            TabOrder = 10
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit41: TDBEdit
            Left = 232
            Top = 112
            Width = 89
            Height = 24
            DataField = 'TRANSP_MARCA'
            DataSource = DtsDstPedidos
            TabOrder = 11
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit42: TDBEdit
            Left = 336
            Top = 112
            Width = 105
            Height = 24
            DataField = 'TRANSP_NRO'
            DataSource = DtsDstPedidos
            TabOrder = 12
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit14KeyPress
          end
          object DBEdit43: TDBEdit
            Left = 456
            Top = 112
            Width = 129
            Height = 24
            DataField = 'TRANSP_PESO_B'
            DataSource = DtsDstPedidos
            TabOrder = 13
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit14KeyPress
          end
          object DBEdit44: TDBEdit
            Left = 600
            Top = 112
            Width = 113
            Height = 24
            DataField = 'TRANSP_PESO_L'
            DataSource = DtsDstPedidos
            TabOrder = 14
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit44KeyPress
          end
          object Edit7: TEdit
            Left = 0
            Top = 16
            Width = 265
            Height = 24
            TabOrder = 0
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit33KeyPress
          end
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'Dados Adicionais'
        ImageIndex = 3
        object Panel13: TPanel
          Left = 0
          Top = 0
          Width = 713
          Height = 153
          BevelOuter = bvNone
          TabOrder = 0
          object DBMemo1: TDBMemo
            Left = 0
            Top = 8
            Width = 305
            Height = 145
            DataField = 'DADOS_ADICIONAIS'
            DataSource = DtsDstPedidos
            TabOrder = 0
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 737
    Height = 209
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 8
      Top = 8
      Width = 721
      Height = 193
      ActivePage = TabSheet1
      Style = tsFlatButtons
      TabIndex = 0
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Dados da Nota'
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 705
          Height = 161
          BevelOuter = bvNone
          TabOrder = 0
          object Label5: TLabel
            Left = 568
            Top = 0
            Width = 88
            Height = 16
            Caption = 'Data Emiss'#227'o:'
          end
          object Label6: TLabel
            Left = 568
            Top = 40
            Width = 71
            Height = 16
            Caption = 'Data Sa'#237'da:'
          end
          object Label7: TLabel
            Left = 568
            Top = 80
            Width = 72
            Height = 16
            Caption = 'Hora Sa'#237'da:'
          end
          object Label8: TLabel
            Left = 0
            Top = 0
            Width = 103
            Height = 16
            Caption = 'Nome do Cliente:'
          end
          object Label9: TLabel
            Left = 440
            Top = 0
            Width = 68
            Height = 16
            Caption = 'CNPJ/CPF:'
          end
          object Label10: TLabel
            Left = 0
            Top = 40
            Width = 62
            Height = 16
            Caption = 'Endere'#231'o:'
          end
          object Label11: TLabel
            Left = 312
            Top = 40
            Width = 39
            Height = 16
            Caption = 'Bairro:'
          end
          object Label12: TLabel
            Left = 440
            Top = 40
            Width = 30
            Height = 16
            Caption = 'CEP:'
          end
          object Label13: TLabel
            Left = 0
            Top = 80
            Width = 60
            Height = 16
            Caption = 'Munic'#237'pio:'
          end
          object Label14: TLabel
            Left = 136
            Top = 80
            Width = 60
            Height = 16
            Caption = 'Fone/Fax:'
          end
          object Label15: TLabel
            Left = 360
            Top = 80
            Width = 21
            Height = 16
            Caption = 'UF:'
          end
          object Label16: TLabel
            Left = 248
            Top = 80
            Width = 74
            Height = 16
            Caption = 'Vencimento:'
          end
          object Label18: TLabel
            Left = 440
            Top = 80
            Width = 86
            Height = 16
            Caption = 'Insc. Estadual:'
          end
          object Label2: TLabel
            Left = 360
            Top = 120
            Width = 39
            Height = 16
            Caption = 'CFOP:'
          end
          object Label3: TLabel
            Left = 440
            Top = 120
            Width = 94
            Height = 16
            Caption = 'I. E. Subst. Trib.:'
          end
          object Label1: TLabel
            Left = 0
            Top = 120
            Width = 140
            Height = 16
            Caption = 'Natureza da Opera'#231#227'o:'
          end
          object Label4: TLabel
            Left = 568
            Top = 120
            Width = 50
            Height = 16
            Caption = 'N'#186' Nota:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 640
            Top = 120
            Width = 62
            Height = 16
            Caption = 'Ctrl. Form.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBDateEdit1: TDBDateEdit
            Left = 568
            Top = 16
            Width = 129
            Height = 24
            DataField = 'DATAHORA_EMISSAO'
            DataSource = DtsDstPedidos
            NumGlyphs = 2
            TabOrder = 2
            OnEnter = Edit1Enter
            OnExit = DBDateEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBDateEdit2: TDBDateEdit
            Left = 568
            Top = 56
            Width = 129
            Height = 24
            DataField = 'DATAHORA_SAIDAENTRADA'
            DataSource = DtsDstPedidos
            NumGlyphs = 2
            TabOrder = 6
            OnEnter = Edit1Enter
            OnExit = DBDateEdit2Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DateTimePicker1: TDateTimePicker
            Left = 568
            Top = 96
            Width = 131
            Height = 24
            CalAlignment = dtaLeft
            Date = 38016.3785574537
            Time = 38016.3785574537
            ShowCheckbox = True
            DateFormat = dfShort
            DateMode = dmComboBox
            Kind = dtkTime
            ParseInput = False
            TabOrder = 11
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit4: TDBEdit
            Left = 440
            Top = 16
            Width = 113
            Height = 24
            DataField = 'CNPJ_DESTINATARIO'
            DataSource = DtsDstPedidos
            TabOrder = 1
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit5: TDBEdit
            Left = 0
            Top = 56
            Width = 297
            Height = 24
            DataField = 'ENDERECO_DESTINATARIO'
            DataSource = DtsDstPedidos
            TabOrder = 3
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit6: TDBEdit
            Left = 312
            Top = 56
            Width = 113
            Height = 24
            DataField = 'BAIRRO_DESTINATARIO'
            DataSource = DtsDstPedidos
            TabOrder = 4
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit7: TDBEdit
            Left = 440
            Top = 56
            Width = 113
            Height = 24
            DataField = 'CEP_DESTINATARIO'
            DataSource = DtsDstPedidos
            TabOrder = 5
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit8: TDBEdit
            Left = 0
            Top = 96
            Width = 121
            Height = 24
            DataField = 'CIDADE_DESTINATARIO'
            DataSource = DtsDstPedidos
            TabOrder = 7
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBDateEdit3: TDBDateEdit
            Left = 248
            Top = 96
            Width = 97
            Height = 24
            DataField = 'VENCIMENTO'
            DataSource = DtsDstPedidos
            NumGlyphs = 2
            TabOrder = 8
            OnEnter = Edit1Enter
            OnExit = DBDateEdit3Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit11: TDBEdit
            Left = 440
            Top = 96
            Width = 113
            Height = 24
            DataField = 'IE_DESTINATARIO'
            DataSource = DtsDstPedidos
            TabOrder = 10
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object BitBtn2: TBitBtn
            Left = 376
            Top = 16
            Width = 51
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 17
            TabStop = False
            OnClick = BitBtn2Click
            Glyph.Data = {
              42010000424D4201000000000000760000002800000011000000110000000100
              040000000000CC00000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              777770000000777777777770000070000000777777777770BFB0700000007777
              77700000FBF07000000077777770BFB0BFB07000000077000000FBF000007000
              0000770FBFB0BFBFB07770000000770BFBF0FBFBF07770000000770FBFB0BFBF
              B07770000000770BFBF00000007770000000770FBFBFBFB0777770000000770B
              FBFBFBF0777770000000770FBFBFBFB0777770000000770BFBFBFBF077777000
              0000770000000000777770000000777777777777777770000000777777777777
              777770000000}
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 360
            Top = 136
            Width = 65
            Height = 24
            DataField = 'CFOP'
            DataSource = DtsDstPedidos
            KeyField = 'COD_CFOP_CODIGO'
            ListField = 'COD_CFOP_CODIGO'
            ListSource = DstQryCFOP
            NullValueKey = 46
            TabOrder = 13
            OnDropDown = DBLookupComboBox1DropDown
            OnEnter = DBLookupComboBox1Enter
            OnExit = DBLookupComboBox1Exit
            OnKeyPress = DBLookupComboBox1KeyPress
          end
          object DBEdit1: TDBEdit
            Left = 440
            Top = 136
            Width = 113
            Height = 24
            DataField = 'IE_SUBST_TRIB'
            DataSource = DtsDstPedidos
            TabOrder = 14
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit2: TDBEdit
            Left = 568
            Top = 136
            Width = 57
            Height = 24
            DataField = 'NUM_NF'
            DataSource = DtsDstPedidos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 6
            ParentFont = False
            TabOrder = 15
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit12: TDBEdit
            Left = 640
            Top = 136
            Width = 57
            Height = 24
            DataField = 'NUM_FORM'
            DataSource = DtsDstPedidos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 6
            ParentFont = False
            TabOrder = 16
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DateTimePicker1KeyPress
          end
          object Edit1: TEdit
            Left = 0
            Top = 136
            Width = 345
            Height = 24
            TabOrder = 12
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object ComboBox4: TComboBox
            Left = 360
            Top = 96
            Width = 65
            Height = 24
            Style = csDropDownList
            ItemHeight = 16
            ItemIndex = 0
            MaxLength = 2
            TabOrder = 9
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
            Items.Strings = (
              ''
              'AC'
              'AL'
              'AP'
              'AM'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MT'
              'MS'
              'MG'
              'PA'
              'PB'
              'PR'
              'PE'
              'PI'
              'RJ'
              'RN'
              'RS'
              'RO'
              'RR'
              'SC'
              'SP'
              'SE'
              'TO')
          end
          object Edit6: TEdit
            Left = 0
            Top = 16
            Width = 361
            Height = 24
            TabOrder = 0
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit3KeyPress
          end
          object ComboBox5: TComboBox
            Left = 136
            Top = 96
            Width = 97
            Height = 24
            ItemHeight = 16
            TabOrder = 18
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Dados do Produto'
        ImageIndex = 1
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 705
          Height = 129
          BevelOuter = bvNone
          TabOrder = 0
          object Label19: TLabel
            Left = 0
            Top = 0
            Width = 69
            Height = 16
            Caption = 'Refer'#234'ncia:'
          end
          object Label20: TLabel
            Left = 104
            Top = 0
            Width = 50
            Height = 16
            Caption = 'Produto:'
          end
          object Label21: TLabel
            Left = 104
            Top = 48
            Width = 84
            Height = 16
            Hint = 'N'#186' de Controle do Formul'#225'rio'
            Caption = 'Valor Unit'#225'rio:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Label22: TLabel
            Left = 336
            Top = 48
            Width = 58
            Height = 16
            Caption = 'ICMS (%):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 408
            Top = 48
            Width = 41
            Height = 16
            Caption = 'IPI (%):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 0
            Top = 48
            Width = 73
            Height = 16
            Caption = 'Quantidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 216
            Top = 48
            Width = 59
            Height = 16
            Caption = 'Sub-Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 480
            Top = 48
            Width = 53
            Height = 16
            Caption = 'Valor IPI:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 480
            Top = 0
            Width = 27
            Height = 16
            Caption = 'C.T.:'
          end
          object Label28: TLabel
            Left = 576
            Top = 0
            Width = 51
            Height = 16
            Caption = 'Sit. Trib.:'
          end
          object Label29: TLabel
            Left = 640
            Top = 0
            Width = 55
            Height = 16
            Caption = 'Unidade:'
          end
          object Edit2: TEdit
            Left = 0
            Top = 16
            Width = 89
            Height = 24
            TabOrder = 0
            OnChange = Edit2Change
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyDown = Edit2KeyDown
          end
          object Edit4: TEdit
            Left = 480
            Top = 16
            Width = 81
            Height = 24
            TabOrder = 1
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = Edit5KeyPress
          end
          object Edit5: TEdit
            Left = 576
            Top = 16
            Width = 49
            Height = 24
            TabOrder = 2
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = Edit4KeyPress
          end
          object Edit10: TEdit
            Left = 640
            Top = 16
            Width = 57
            Height = 24
            TabOrder = 3
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = Edit4KeyPress
          end
          object CurrencyEdit1: TCurrencyEdit
            Left = 0
            Top = 64
            Width = 89
            Height = 24
            AutoSize = False
            DisplayFormat = '0.00'
            TabOrder = 4
            OnChange = CurrencyEdit1Change
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = CurrencyEdit1KeyPress
          end
          object CurrencyEdit2: TCurrencyEdit
            Left = 104
            Top = 64
            Width = 97
            Height = 24
            AutoSize = False
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            TabOrder = 5
            OnChange = CurrencyEdit1Change
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = CurrencyEdit1KeyPress
          end
          object CurrencyEdit3: TCurrencyEdit
            Left = 216
            Top = 64
            Width = 105
            Height = 24
            AutoSize = False
            DisplayFormat = '0.00'
            TabOrder = 6
            OnChange = CurrencyEdit3Change
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = CurrencyEdit1KeyPress
          end
          object CurrencyEdit4: TCurrencyEdit
            Left = 336
            Top = 64
            Width = 57
            Height = 24
            AutoSize = False
            DisplayFormat = '0.00'
            MaxValue = 99.99
            TabOrder = 7
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = CurrencyEdit1KeyPress
          end
          object CurrencyEdit5: TCurrencyEdit
            Left = 408
            Top = 64
            Width = 57
            Height = 24
            AutoSize = False
            DisplayFormat = '0.00'
            MaxValue = 99.99
            TabOrder = 8
            OnChange = CurrencyEdit3Change
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = CurrencyEdit1KeyPress
          end
          object CurrencyEdit6: TCurrencyEdit
            Left = 480
            Top = 64
            Width = 81
            Height = 24
            AutoSize = False
            DisplayFormat = '0.00'
            TabOrder = 9
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = CurrencyEdit6KeyPress
          end
          object Button1: TButton
            Left = 576
            Top = 64
            Width = 121
            Height = 25
            Caption = 'Adicionar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
            TabStop = False
            OnClick = Button1Click
          end
          object BitBtn1: TBitBtn
            Left = 408
            Top = 16
            Width = 57
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
            OnClick = BitBtn1Click
            Glyph.Data = {
              42010000424D4201000000000000760000002800000011000000110000000100
              040000000000CC00000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              777770000000777777777770000070000000777777777770BFB0700000007777
              77700000FBF07000000077777770BFB0BFB07000000077000000FBF000007000
              0000770FBFB0BFBFB07770000000770BFBF0FBFBF07770000000770FBFB0BFBF
              B07770000000770BFBF00000007770000000770FBFBFBFB0777770000000770B
              FBFBFBF0777770000000770FBFBFBFB0777770000000770BFBFBFBF077777000
              0000770000000000777770000000777777777777777770000000777777777777
              777770000000}
          end
          object Edit3: TEdit
            Left = 104
            Top = 16
            Width = 289
            Height = 24
            TabOrder = 12
            Visible = False
            OnChange = Edit3Change
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = Edit3KeyPress
          end
        end
      end
    end
  end
  object Panel16: TPanel
    Left = 96
    Top = 170
    Width = 577
    Height = 121
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelWidth = 4
    TabOrder = 2
    Visible = False
    object Label66: TLabel
      Left = 72
      Top = 48
      Width = 441
      Height = 52
      Caption = 'Finalizando Opera'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object Label67: TLabel
      Left = 71
      Top = 47
      Width = 441
      Height = 52
      Alignment = taCenter
      Caption = 'Finalizando Opera'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -37
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label70: TLabel
      Left = 32
      Top = 16
      Width = 109
      Height = 29
      Caption = 'Aguarde...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel5: TPanel
    Left = 114
    Top = 457
    Width = 294
    Height = 196
    BevelInner = bvRaised
    TabOrder = 3
    Visible = False
    object Panel6: TPanel
      Left = 2
      Top = 2
      Width = 290
      Height = 17
      Align = alTop
      BevelOuter = bvLowered
      Caption = 'Produtos'
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 19
      Width = 290
      Height = 175
      Hint = 'Contatos '
      Align = alClient
      DataSource = DtsQry1Prod
      Options = [dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 250
          Visible = True
        end>
    end
  end
  object QryCFOP: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CFOP_CODIGO'
      'Order By COD_CFOP_CODIGO')
    Left = 656
    Top = 440
  end
  object DstQryCFOP: TDataSource
    DataSet = QryCFOP
    Left = 656
    Top = 472
  end
  object DtsDstPedidos: TDataSource
    DataSet = DM1.DstPedidos
    Left = 624
    Top = 472
  end
  object QrySintegra: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SINTEGRA_INFO')
    Left = 624
    Top = 440
  end
  object Qry1Prod: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select COD_PRODUTOS, ALIQUOTA_ICMS, ALIQUOTA_IPI, OBS, PRC_VENDA' +
        ', CODIGO_NCM, APR_UND, S_TRIB, Nome, REFERENCIA from Produtos or' +
        'der by COD_PRODUTOS')
    Left = 688
    Top = 440
    object Qry1ProdCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'PRODUTOS.COD_PRODUTOS'
      Required = True
    end
    object Qry1ProdALIQUOTA_ICMS: TIBBCDField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = 'PRODUTOS.ALIQUOTA_ICMS'
      Precision = 18
      Size = 3
    end
    object Qry1ProdALIQUOTA_IPI: TIBBCDField
      FieldName = 'ALIQUOTA_IPI'
      Origin = 'PRODUTOS.ALIQUOTA_IPI'
      Precision = 18
      Size = 3
    end
    object Qry1ProdPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = 'PRODUTOS.PRC_VENDA'
      Required = True
      Precision = 18
      Size = 3
    end
    object Qry1ProdCODIGO_NCM: TIBStringField
      FieldName = 'CODIGO_NCM'
      Origin = 'PRODUTOS.CODIGO_NCM'
      Size = 15
    end
    object Qry1ProdAPR_UND: TIBStringField
      FieldName = 'APR_UND'
      Origin = 'PRODUTOS.APR_UND'
      Required = True
      Size = 6
    end
    object Qry1ProdS_TRIB: TIBStringField
      FieldName = 'S_TRIB'
      Origin = 'PRODUTOS.S_TRIB'
      Size = 15
    end
    object Qry1ProdNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'PRODUTOS.NOME'
      Size = 50
    end
    object Qry1ProdREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = 'PRODUTOS.REFERENCIA'
      Required = True
      Size = 30
    end
    object Qry1ProdOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'PRODUTOS.OBS'
      Size = 100
    end
  end
  object DtsQry1Prod: TDataSource
    DataSet = Qry1Prod
    Left = 688
    Top = 472
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 496
    Top = 472
  end
  object SQLSaida: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 560
    Top = 472
  end
  object QryUpdate: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsDstPedidos
    SQL.Strings = (
      'select COD_PRODUTOS, QUANTIDADE from PEDIDOS_ITENS'
      'where COD_PEDIDOS = :Cod_Pedidos')
    Left = 592
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Cod_Pedidos'
        ParamType = ptUnknown
      end>
  end
  object SQLUpdate: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 496
    Top = 440
  end
  object SQLInsert: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    SQL.Strings = (
      'select * from NF_ENTRADA_PRODUTO')
    Transaction = DM1.IBTransaction1
    Left = 560
    Top = 440
  end
  object SQLImpressao: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 528
    Top = 440
  end
  object RDprint1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = True
    OpcoesPreview.Remalina = True
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = -1
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0f - Registrado'
    Acentuacao = SemAcento
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Nota Fiscal  - Prisma Pack'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = False
    TamanhoQteLinhas = 106
    TamanhoQteColunas = 145
    TamanhoQteLPP = Oito
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 528
    Top = 472
  end
  object QryPedidos_Itens: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsDstPedidos
    SQL.Strings = (
      'select * from PEDIDOS_ITENS where COD_PEDIDOS = :Cod_Pedidos')
    Left = 592
    Top = 472
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COD_PEDIDOS'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object QryContato: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CADASTROFRM'
      'where ((CODTIPOFRM = 1) or (CODTIPOFRM = 2)) '
      'and (CODCLI = :SELECT_COD_CLI)'
      'order by CODTIPOFRM')
    Left = 464
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SELECT_COD_CLI'
        ParamType = ptUnknown
      end>
  end
end
