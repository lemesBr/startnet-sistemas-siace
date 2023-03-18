object FrmSendEmail: TFrmSendEmail
  Left = 439
  Top = 187
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Email'
  ClientHeight = 427
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 495
    Height = 408
    Align = alClient
    BevelOuter = bvNone
    BevelWidth = 2
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 31
      Height = 13
      Caption = 'Para:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 43
      Width = 25
      Height = 13
      Caption = 'C.C:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 67
      Width = 42
      Height = 13
      Caption = 'C.C.O.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 99
      Width = 50
      Height = 13
      Caption = 'Assunto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 131
      Width = 62
      Height = 13
      Caption = 'Prioridade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 243
      Width = 65
      Height = 13
      Caption = 'Mensagem:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 152
      Top = 96
      Width = 32
      Height = 13
      Caption = 'Label4'
    end
    object EdtPara: TEdit
      Left = 96
      Top = 16
      Width = 361
      Height = 21
      TabOrder = 0
    end
    object EdtCC: TEdit
      Left = 96
      Top = 40
      Width = 361
      Height = 21
      TabOrder = 1
    end
    object EdtCCO: TEdit
      Left = 96
      Top = 64
      Width = 361
      Height = 21
      TabOrder = 2
    end
    object ComboPrioridade: TComboBox
      Left = 96
      Top = 125
      Width = 121
      Height = 21
      Style = csDropDownList
      Color = clSilver
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 4
      Text = 'Normal'
      Items.Strings = (
        'Alta'
        'Normal'
        'Baixa')
    end
    object CheckLeitura: TCheckBox
      Left = 232
      Top = 128
      Width = 225
      Height = 17
      Caption = 'Solicito confirma'#231#227'o de Leitura.'
      TabOrder = 5
    end
    object BtnAnexar: TButton
      Left = 8
      Top = 172
      Width = 73
      Height = 25
      Caption = '&Anexar'
      TabOrder = 8
      TabStop = False
      OnClick = BtnAnexarClick
    end
    object MemoMensagem: TMemo
      Left = 96
      Top = 240
      Width = 361
      Height = 121
      Lines.Strings = (
        '')
      TabOrder = 7
    end
    object BtnEnviar: TButton
      Left = 96
      Top = 376
      Width = 169
      Height = 25
      Caption = 'Enviar'
      TabOrder = 9
      OnClick = BtnEnviarClick
    end
    object BtnCancelar: TButton
      Left = 288
      Top = 375
      Width = 169
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 10
      OnClick = BtnCancelarClick
    end
    object LbAnexos: TListBox
      Left = 96
      Top = 168
      Width = 361
      Height = 57
      ItemHeight = 13
      TabOrder = 6
    end
    object EdtAssunto: TEdit
      Left = 96
      Top = 96
      Width = 361
      Height = 21
      TabOrder = 3
    end
    object BtnRemover: TButton
      Left = 8
      Top = 200
      Width = 73
      Height = 25
      Caption = '&Remover'
      TabOrder = 11
      TabStop = False
      OnClick = BtnRemoverClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 408
    Width = 495
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'Aguardando envio de e-mail'
        Width = 50
      end>
  end
  object Panel2: TPanel
    Left = 87
    Top = 78
    Width = 321
    Height = 227
    TabOrder = 2
    Visible = False
    object Panel3: TPanel
      Left = 3
      Top = 2
      Width = 313
      Height = 222
      BevelOuter = bvNone
      TabOrder = 0
      object Label8: TLabel
        Left = 10
        Top = 8
        Width = 98
        Height = 13
        Caption = 'Status do envio :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Memo1: TMemo
        Left = 8
        Top = 28
        Width = 296
        Height = 147
        Color = clBtnFace
        Lines.Strings = (
          'Memo1')
        ReadOnly = True
        TabOrder = 0
      end
      object Button1: TButton
        Left = 119
        Top = 184
        Width = 75
        Height = 25
        Caption = 'OK'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 352
    Top = 272
  end
  object IdMessage: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 240
    Top = 216
  end
  object IdSMTP: TIdSMTP
    OnStatus = IdSMTPStatus
    SASLMechanisms = <>
    Left = 312
    Top = 200
  end
  object IdPOP3Server1: TIdPOP3Server
    Bindings = <>
    CommandHandlers = <>
    ExceptionReply.Code = '-ERR'
    ExceptionReply.Text.Strings = (
      'Unknown Internal Error')
    Greeting.Code = '+OK'
    Greeting.Text.Strings = (
      'Welcome to Indy POP3 Server')
    HelpReply.Code = '+OK'
    HelpReply.Text.Strings = (
      'Help follows')
    MaxConnectionReply.Code = '-ERR'
    MaxConnectionReply.Text.Strings = (
      'Too many connections. Try again later.')
    ReplyTexts = <>
    ReplyUnknownCommand.Code = '-ERR'
    ReplyUnknownCommand.Text.Strings = (
      'Sorry, Unknown Command')
    Left = 226
    Top = 176
  end
end
