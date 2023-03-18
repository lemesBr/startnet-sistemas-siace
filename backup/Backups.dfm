object FormBackup: TFormBackup
  Left = 192
  Top = 107
  BorderIcons = [biSystemMenu]
  Caption = 'C'#243'pias de Seguran'#231'a'
  ClientHeight = 430
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 585
    Height = 425
    ActivePage = TabSheet2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Backup'#39's'
      object Label2: TLabel
        Left = 341
        Top = 120
        Width = 83
        Height = 13
        Caption = 'T'#237'tulo do Backup'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object FileListBox: TListBox
        Left = 6
        Top = 8
        Width = 317
        Height = 325
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 341
        Top = 136
        Width = 117
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'Backup Siace'
      end
      object RadioGroup1: TRadioGroup
        Left = 341
        Top = 177
        Width = 117
        Height = 60
        Caption = ' Tipo do Backup '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Total'
          'Incremento')
        ParentFont = False
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 336
        Top = 8
        Width = 137
        Height = 25
        Caption = 'Adicionar Arquivos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
          333333333333337FF3333333333333903333333333333377FF33333333333399
          03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
          99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
          99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
          03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
          33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
          33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 336
        Top = 40
        Width = 137
        Height = 25
        Caption = 'Adicionar Pastas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
          0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
          B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
          FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
          FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
          FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
          0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
          0555555555777777755555555555555555555555555555555555}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 336
        Top = 72
        Width = 137
        Height = 25
        Caption = 'Limpar Arquivos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
          0EEE333377777777777733330FF00FBFB0EE33337F37733F377733330F0BFB0B
          FB0E33337F73FF73337733330FF000BFBFB033337F377733333733330FFF0BFB
          FBF033337FFF733F333733300000BF0FBFB03FF77777F3733F37000FBFB0F0FB
          0BF077733FF7F7FF7337E0FB00000000BF0077F377777777F377E0BFBFBFBFB0
          F0F077F3333FFFF7F737E0FBFB0000000FF077F3337777777337E0BFBFBFBFB0
          FFF077F3333FFFF73FF7E0FBFB00000F000077FF337777737777E00FBFBFB0FF
          0FF07773FFFFF7337F37003000000FFF0F037737777773337F7333330FFFFFFF
          003333337FFFFFFF773333330000000003333333777777777333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 5
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 336
        Top = 265
        Width = 137
        Height = 25
        Caption = 'Gerar Backup'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
          555555777777777FF5555500000000805555557777777777FF555550BBBBB008
          05555557F5FFF7777FF55550B000B03080555557F77757F777F55550BBBBB033
          00555557F55557F577555550BBBBB03305555557FFFFF7F57F55555000000033
          05555557777777F57F555550BBBBB03305555557F5FFF7F57F555550B000B033
          05555557F77757F57F555550BBBBB03305555557F55557F57F555550BBBBB033
          05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
          05555575FF5555777F5555500B3B3B300555555775FF55577FF555555003B3B3
          005555555775FFFF77F555555570000000555555555777777755}
        NumGlyphs = 2
        TabOrder = 6
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 336
        Top = 308
        Width = 137
        Height = 25
        Caption = 'Cancelar Backup'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000012170000121700001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777770101777771010777199907770999077781999071999
          0777778199909910777777781999990777777777819990777777777819999907
          7777778199919990777778199918199917777199918781999077711118777811
          1177777777777777777777777777777777777777777777777777}
        ParentFont = False
        TabOrder = 7
        OnClick = BitBtn5Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Restaurar'
      ImageIndex = 1
      object Label3: TLabel
        Left = 307
        Top = 17
        Width = 82
        Height = 13
        Caption = 'T'#237'tulo do Arquivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DriveComboBox1: TDriveComboBox
        Left = 15
        Top = 18
        Width = 278
        Height = 19
        DirList = DirectoryListBox1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 307
        Top = 34
        Width = 254
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object RadioGroup2: TRadioGroup
        Left = 308
        Top = 61
        Width = 253
        Height = 38
        Caption = ' Modo de Restaura'#231#227'o '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Total')
        ParentFont = False
        TabOrder = 3
      end
      object FileListBox1: TFileListBox
        Left = 15
        Top = 216
        Width = 278
        Height = 119
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Mask = '*.bck'
        ParentFont = False
        TabOrder = 4
        OnChange = FileListBox1Change
      end
      object BitBtn6: TBitBtn
        Left = 52
        Top = 369
        Width = 156
        Height = 25
        Caption = 'Restaurar Backup'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
          555555777777777FF5555500000000805555557777777777FF555550BBBBB008
          05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
          005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
          055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
          055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
          05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
          05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
          005555555775FFFF77F555555570000000555555555777777755}
        NumGlyphs = 2
        TabOrder = 5
        OnClick = BitBtn6Click
      end
      object BitBtn7: TBitBtn
        Left = 251
        Top = 368
        Width = 156
        Height = 25
        Caption = 'Cancelar Backup'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000012170000121700001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777770101777771010777199907770999077781999071999
          0777778199909910777777781999990777777777819990777777777819999907
          7777778199919990777778199918199917777199918781999077711118777811
          1177777777777777777777777777777777777777777777777777}
        ParentFont = False
        TabOrder = 6
        OnClick = BitBtn5Click
      end
      object DirectoryListBox1: TDirectoryListBox
        Left = 15
        Top = 41
        Width = 278
        Height = 169
        FileList = FileListBox1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object rgRestoreMode: TRadioGroup
        Left = 309
        Top = 105
        Width = 252
        Height = 80
        Caption = 'Modo de Restaura'#231#227'o:'
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Total'
          'Sobrepor'
          'Mais Recente'
          'Manter Existente'
          'Se n'#227'o Existir')
        ParentFont = False
        TabOrder = 7
      end
      object gbRestorepath: TGroupBox
        Left = 308
        Top = 191
        Width = 253
        Height = 117
        Caption = 'Restore path'
        TabOrder = 8
        object rbOrigpath: TRadioButton
          Left = 3
          Top = 25
          Width = 309
          Height = 17
          Caption = 'Pasta Original do Arquivo'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object rbOtherPath: TRadioButton
          Left = 3
          Top = 48
          Width = 113
          Height = 17
          Caption = 'Outras Pastas'
          TabOrder = 1
          OnClick = rbOtherPathClick
        end
        object EdPath: TEdit
          Left = 24
          Top = 68
          Width = 225
          Height = 21
          Enabled = False
          TabOrder = 2
          Text = 'C:\StartNet_Sistemas\BACKUP'
        end
        object CbFullPath: TCheckBox
          Left = 3
          Top = 95
          Width = 237
          Height = 17
          Caption = 'Restaurar Caminho Completo'
          Enabled = False
          TabOrder = 3
        end
      end
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'bck'
    Filter = 'Backup archives (*.bck)|*.bck'
    InitialDir = 'C:\StartNet_Sistemas\BACKUP'
    Left = 200
    Top = 259
  end
  object OpenDialog: TOpenDialog
    Filter = 'STARTNET|*.FDB'
    InitialDir = 'C:\StartNet_Sistemas'
    Options = [ofHideReadOnly, ofAllowMultiSelect]
    Left = 132
    Top = 260
  end
  object Backupfile: TBackupFile
    Version = '5.00'
    BackupMode = bmAll
    CompressionLevel = clDefault
    RestoreMode = rmAll
    MaxSize = 0
    SetArchiveFlag = True
    OnRestoreFile = BackupfileRestoreFile
    RestoreFullPath = False
    SaveFileID = False
    Left = 56
    Top = 260
  end
end
