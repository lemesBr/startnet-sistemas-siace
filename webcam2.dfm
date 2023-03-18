object frmwebcam2: Tfrmwebcam2
  Left = 411
  Top = 219
  Caption = 'Webcam - Aquisi'#231#227'o de Imagem'
  ClientHeight = 610
  ClientWidth = 1112
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn3: TBitBtn
    Left = 8
    Top = 267
    Width = 81
    Height = 25
    Caption = 'iniciar'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 8
    Top = 323
    Width = 81
    Height = 25
    Caption = 'TIRAR FOTO'
    TabOrder = 3
    OnClick = BitBtn4Click
  end
  object BitBtn1: TBitBtn
    Left = 122
    Top = 267
    Width = 73
    Height = 25
    Caption = 'Gravar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 264
    Top = 267
    Width = 61
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object CAMERA: TJvAVICapture
    Left = 24
    Top = 24
    Width = 20
    Height = 20
    FileName = 'C:\CAPTURE.AVI'
    PreviewFrameDelay = 40
    PreviewFPS = 25.000000000000000000
    ScrollPos.Left = 0
    ScrollPos.Top = 0
    Title = 'CAMERA'
    UsedEvents = [ueCapControl, ueError, ueFrame, ueStatus, ueVideoStream, ueWaveStream, ueYield]
  end
end
