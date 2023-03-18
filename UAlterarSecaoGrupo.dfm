object FrmAlterarSecao: TFrmAlterarSecao
  Left = 466
  Top = 229
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Alterar Se'#231#227'o/Setor Estoque'
  ClientHeight = 266
  ClientWidth = 489
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 489
    Height = 247
    Align = alClient
    Color = 16710131
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 56
      Width = 51
      Height = 13
      Caption = 'Cod.Grupo'
    end
    object Label2: TLabel
      Left = 88
      Top = 56
      Width = 95
      Height = 13
      Caption = 'Descri'#231#227'o do Grupo'
    end
    object Label3: TLabel
      Left = 8
      Top = 100
      Width = 48
      Height = 13
      Caption = 'SubGrupo'
    end
    object Label4: TLabel
      Left = 88
      Top = 100
      Width = 114
      Height = 13
      Caption = 'Descri'#231#227'o do SubGrupo'
    end
    object Label6: TLabel
      Left = 8
      Top = 12
      Width = 53
      Height = 13
      Caption = 'Cod.Se'#231#227'o'
    end
    object Label7: TLabel
      Left = 88
      Top = 12
      Width = 97
      Height = 13
      Caption = 'Descri'#231#227'o da Se'#231#227'o'
    end
    object Label5: TLabel
      Left = 8
      Top = 148
      Width = 83
      Height = 13
      Caption = 'Local de Estoque'
    end
    object Label8: TLabel
      Left = 88
      Top = 148
      Width = 149
      Height = 13
      Caption = 'Descri'#231#227'o do Local de Estoque'
    end
    object BtnConsSec: TAdvGlowButton
      Left = 61
      Top = 28
      Width = 23
      Height = 21
      Hint = 'Consultar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = BtnConsSecClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object BtnConsGrupo: TAdvGlowButton
      Left = 61
      Top = 72
      Width = 23
      Height = 21
      Hint = 'Consultar Se'#231#227'o'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = BtnConsGrupoClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object BtnConsSub: TAdvGlowButton
      Left = 61
      Top = 116
      Width = 23
      Height = 21
      Hint = 'Consultar Se'#231#227'o'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = BtnConsSubClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object BtnConsSetor: TAdvGlowButton
      Left = 61
      Top = 164
      Width = 23
      Height = 21
      Hint = 'Consultar Se'#231#227'o'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = BtnConsSetorClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object EdtCodSec: TAlignEdit
      Left = 8
      Top = 28
      Width = 49
      Height = 21
      Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar'
      Alignment = taRightJustify
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = EdtCodSecEnter
      OnExit = EdtCodSecExit
      OnKeyDown = EdtCodSecKeyDown
      OnKeyPress = EdtCodSecKeyPress
    end
    object EdtNomeSec: TEdit
      Left = 88
      Top = 28
      Width = 369
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object EdtCodGrupo: TAlignEdit
      Left = 8
      Top = 72
      Width = 49
      Height = 21
      Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar Se'#231#227'o'
      Alignment = taRightJustify
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnEnter = EdtCodGrupoEnter
      OnExit = EdtCodGrupoExit
      OnKeyDown = EdtCodGrupoKeyDown
      OnKeyPress = EdtCodSecKeyPress
    end
    object EdtNomeGrupo: TEdit
      Left = 88
      Top = 72
      Width = 369
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object EdtCodSub: TAlignEdit
      Left = 8
      Top = 116
      Width = 49
      Height = 21
      Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar Se'#231#227'o'
      Alignment = taRightJustify
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnEnter = EdtCodSubEnter
      OnExit = EdtCodSubExit
      OnKeyDown = EdtCodSubKeyDown
      OnKeyPress = EdtCodSecKeyPress
    end
    object EdtNomeSub: TEdit
      Left = 88
      Top = 116
      Width = 369
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object BtnCancelar: TAdvGlowButton
      Left = 259
      Top = 208
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      ImageIndex = 8
      Images = FormPrincipal.sAlphaImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      OnClick = BtnCancelarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object BtnOK: TAdvGlowButton
      Left = 155
      Top = 208
      Width = 75
      Height = 25
      Caption = '&OK'
      ImageIndex = 11
      Images = FormPrincipal.sAlphaImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      OnClick = BtnOKClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object EdtCodSetor: TAlignEdit
      Left = 8
      Top = 164
      Width = 49
      Height = 21
      Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar Se'#231#227'o'
      Alignment = taRightJustify
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnEnter = EdtCodSetorEnter
      OnExit = EdtCodSetorExit
      OnKeyDown = EdtCodSetorKeyDown
      OnKeyPress = EdtCodSecKeyPress
    end
    object EdtNomeSetor: TEdit
      Left = 88
      Top = 164
      Width = 369
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 247
    Width = 489
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'ESC p/sair'
  end
end
