object FormMenuCR: TFormMenuCR
  Left = 255
  Top = 213
  BorderStyle = bsDialog
  Caption = 'Almoxarifado e Estoque'
  ClientHeight = 156
  ClientWidth = 727
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object myLabel3d2: TsLabelFX
    Left = 285
    Top = 126
    Width = 188
    Height = 33
    Caption = 'SIACE - Sistemas'
    Color = cl3DLight
    ParentColor = False
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Angle = 0
    Shadow.OffsetKeeper.LeftTop = -3
    Shadow.OffsetKeeper.RightBottom = 5
  end
  object Panel1: TsPanel
    Left = 10
    Top = 7
    Width = 705
    Height = 110
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object suiButton1: TsBitBtn
      Left = 10
      Top = 10
      Width = 220
      Height = 90
      Caption = 'Entrada de Mercadorias'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = suiButton1Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFBD4C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8222038222038222
        03822203822203822203822203FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFBD4C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        822203EDA160EA984EE08337D77424CF6714822203FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00BD4C00BD4C00BD
        4C00BF4D00C14D00822203F6AD6BF3A557E78E3DDD7D28D76F17822203FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF82220382220382220382220382220382
        2203822203FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD4C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFBD4C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        822203822203822203822203822203822203822203FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF822203F4AC69F2A356E68C3CDC7B28D76D16822203FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C
        00BD4C00BD4C00BD4C00BF4E00C14D00822203F6AC6AF3A456E68C3DDC7B28D7
        6E16822203FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD4C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8222038222038222
        03822203822203822203822203FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFBD4C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF822203822203822203822203822203822203822203FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF822203F4AB69F2A355E68C3CDC7A28D5
        6D16822203FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD4C00BD4C00BD4C00BD4C00BD4C00C14F00BB4900822203F6AD6BF3A5
        56E78E3DDD7D28D76E16822203FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFBD4C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        822203822203822203822203822203822203822203FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4C00FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8222038222038222038222038222
        03822203822203FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF1C600C1C600C1C600CFF00FFFF00FFFF00FF822203FCB875
        F4A659E58B3BD87622CF640C822203FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF1C600C1B69101C600CFF00FFFF00FFFF
        00FF822203F4B174F0A665E18E46D77A30CF6B1A822203FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C600C1973151C60
        0CFF00FFFF00FFFF00FF822203822203822203822203822203822203822203FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C600C1C600C1C600C
        1C600C187E1B1C600C1C600C1C600C1C600CFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C
        600C169328169027168C2417892217862018821F187F1C1C600CFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF1C600C1C600C1C600C1C600C1695291C600C1C600C1C600C1C
        600CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C600C14A0301C60
        0CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        1C600C13A6351C600CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF1C600C1C600C1C600CFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
      SkinData.SkinSection = 'BUTTON'
    end
    object suiButton2: TsBitBtn
      Left = 240
      Top = 10
      Width = 220
      Height = 90
      Caption = 'Entrega de Pedidos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = suiButton2Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0571
        0AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF05710A05710AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF05710A0EA31B05710AFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF05710A05710A05710A05710A05710A05710A05710A05710A0FA41D0EA31B05
        710AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF05710A57DF8550D97C48D26F3DCA6032C04F27B73F1CAF
        3114A8240EA31B0EA31B05710AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF05710A58E08756DE844ED87A45D16C
        3BC85C2FBF4C24B63C1AAD2E13A7220EA31B0EA31B05710AFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05710A58E08758
        E08755DD824DD77843CF6938C65A2EBD4922B43919AC2B11A52005710AFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C78D51C78D51C78D51C78
        D505710A05710A05710A05710A05710A05710A05710A05710A2BBB4620B23605
        710AE4F0FC1C78D51C78D51C78D51C78D51C78D51C78D5FF00FF1C78D5A7DAFF
        4EB3FE4CB1FE4AAFFF48ADFF46ABFF44A9FF1C5996FF00FFFF00FFFF00FF0571
        0A34C25205710AFF00FFE4F0FC3499FF3499FF3499FF3499FF3499FF3499FF1C
        78D51C78D5A8DBFF50B5FE4EB3FE4CB1FE4AAFFF48ADFF46ABFF1C5996FF00FF
        FF00FFFF00FF05710A05710AFF00FFFF00FFE4F0FC3499FF3499FF3499FF3499
        FF3499FF3499FF1C78D51C78D5A9DCFF52B7FE50B5FE4EB3FE4CB1FE4AAFFF48
        FDFF1C5996FF00FFFF00FFFF00FF05710AFF00FFFF00FFFF00FFE4F0FC3499FF
        3499FF3499FF3499FF3499FF3499FF1C78D51C78D5AADDFF54B9FE52B7FE50B5
        FE4EB3FE4CB1FE4AAFFF1C5996FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFE4F0FC3499FF3499FF3499FF3499FF3499FF3499FF1C78D51C78D5ABDEFF
        56BBFE54B9FE52B7FE50B5FE4EB3FE4CB1FE1C5996FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFE4F0FC3499FF3499FF3499FF3499FF3499FF3499FF1C
        78D51C78D5ACDFFF58BDFE56BBFE54B9FE52B7FE50B5FE4EB3FE1C5996FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE4F0FC3499FF3499FF3499FF3499
        FF3499FF3499FF1C78D51C78D5ADE0FF5ABFFE58BDFE56BBFE54B9FE52B7FE50
        B5FE1C5996FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE4F0FCE4F0FC
        E4F0FCE4F0FCE4F0FCE4F0FCE4F0FCE4F0FC1C78D5629DCF398DCF388CCF378B
        CF368ACF3589CF3488CF1C59961C59961C59961C59961C59961C59961C59961C
        59961C5996FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C78D5AFE2FF
        5EC3FE5CC1FE5ABFFE58BDFE56BBFE54B9FE3488CF50B5FE4EB3FE4CB1FE4AAF
        FF48ADFF46ABFF44A9FF1C78D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF1C78D5B0E2FF5FC4FE5EC3FE5CC1FE5ABFFE58BDFE56BBFE3589CF52B7FE
        50B5FE4EB3FE4CB1FE4AAFFF48ADFF46ABFF1C78D5FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF1C78D5B0E3FF61C6FE5FC4FE5DC2FE5CC1FE5ABFFE58
        BDFE368ACF54B9FE52B7FE50B5FE4EB3FE4CB1FE4AAFFF48ADFF1C78D5FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C78D5B0E3FF61C6FE61C6FE5FC4
        FE5DC2FE5BC0FE59BEFE378BCF56BBFE54B9FE52B7FE50B5FE4EB3FE4CB1FE4A
        AFFF1C78D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C78D5B0E3FF
        61C6FE61C6FE61C6FE5FC4FE5DC2FE5BC0FE388CCF58BDFE56BBFE54B9FE52B7
        FE50B5FE4EB3FE4CB1FE1C78D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF1C78D5BAE6FF61C6FE61C6FE61C6FE61C6FE5FC4FE5DC2FE398DCF59BEFE
        58BDFE56BBFE54B9FE52B7FE50B5FE4EB3FE1C78D5FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF1C78D5E7F3FCBAE6FFB0E3FFB0E3FFB0E3FFB0E2FFAF
        E1FF629DCFADDFFFACDEFFABDEFFAADDFFA9DCFFA8DBFFA7DAFF1C78D5FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1C78D51C78D51C78D51C78
        D51C78D51C78D51C78D51C78D51C78D51C78D51C78D51C78D51C78D51C78D51C
        78D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
      SkinData.SkinSection = 'BUTTON'
    end
    object suiButton3: TsBitBtn
      Left = 470
      Top = 10
      Width = 220
      Height = 90
      Caption = 'Devolu'#231#227'o de Pedidos / Itens'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = suiButton3Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF015603FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF015603015603FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF015603099213015603FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF01560313A3250D9A1C01560301560301
        5603015603015603015603015603015603FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01560323B63F1BAD3315A4
        280F9D1E0B9516079010058C0D058C0D058C0D058C0D015603FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01560332C95A
        2CC14E24B8421DB03516A62B119F200B9718079011058C0D058C0D058C0D0156
        03FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF01560335CB5C2DC45126BB441FB23918A92D11A0230D981A099213
        068C0D058C0D015603FF00FFFF00FFFF00FFFF00FF0D5DC90D5DC90D5DC90D5D
        C90D5DC90D5DC90D5DC90D3F7EFF00FF01560335CC5F2FC55401560301560301
        56030156030156030156030156030156030D5DC90D5DC9FF00FF0D5DC991CFFF
        359FFE339DFE319AFF2F98FF2D96FF2C93FF0D3F7EFF00FFFF00FF01560336CE
        62015603FF00FFFF00FFDCEBFB1F81FF1F81FF1F81FF1F81FF1F81FF1F81FF0D
        5DC90D5DC992D0FF36A1FE359FFE339DFE319AFF2F98FF2D96FF0D3F7EFF00FF
        FF00FFFF00FF015603015603FF00FFFF00FFDCEBFB1F81FF1F81FF1F81FF1F81
        FF1F81FF1F81FF0D5DC90D5DC993D1FF38A4FE36A1FE359FFE339DFE319AFF2F
        98FF0D3F7EFF00FFFF00FFFF00FFFF00FF015603FF00FFFF00FFDCEBFB1F81FF
        1F81FF1F81FF1F81FF1F81FF1F81FF0D5DC90D5DC995D3FF3AA6FE38A4FE36A1
        FE359FFE339DFE319AFF0D3F7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFDCEBFB1F81FF1F81FF1F81FF1F81FF1F81FF1F81FF0D5DC90D5DC996D4FF
        3CA9FE3AA6FE38A4FE36A1FE359FFE339DFE0D3F7EFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFDCEBFB1F81FF1F81FF1F81FF1F81FF1F81FF1F81FF0D
        5DC90D5DC997D5FF3EABFE3CA9FE3AA6FE38A4FE36A1FE359FFE0D3F7EFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDCEBFB1F81FF1F81FF1F81FF1F81
        FF1F81FF1F81FF0D5DC90D5DC998D7FF40ADFE3EABFE3CA9FE3AA6FE38A4FE36
        A1FE0D3F7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDCEBFBDCEBFB
        DCEBFBDCEBFBDCEBFBDCEBFBDCEBFBDCEBFB0D5DC94786C12374C12273C12172
        C12070C11F6FC11F6EC10D3F7E0D3F7E0D3F7E0D3F7E0D3F7E0D3F7E0D3F7E0D
        3F7E0D3F7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D5DC99AD9FF
        43B2FE41B0FE40ADFE3EABFE3CA9FE3AA6FE1F6EC136A1FE359FFE339DFE319A
        FF2F98FF2D96FF2C93FF0D5DC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF0D5DC99CD9FF44B4FE43B2FE41B0FE40ADFE3EABFE3CA9FE1F6FC138A4FE
        36A1FE359FFE339DFE319AFF2F98FF2D96FF0D5DC9FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF0D5DC99CDAFF46B6FE44B4FE42B1FE41B0FE40ADFE3E
        ABFE2070C13AA6FE38A4FE36A1FE359FFE339DFE319AFF2F98FF0D5DC9FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D5DC99CDAFF46B6FE46B6FE44B4
        FE42B1FE41AFFE3FACFE2172C13CA9FE3AA6FE38A4FE36A1FE359FFE339DFE31
        9AFF0D5DC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D5DC99CDAFF
        46B6FE46B6FE46B6FE44B4FE42B1FE41AFFE2273C13EABFE3CA9FE3AA6FE38A4
        FE36A1FE359FFE339DFE0D5DC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF0D5DC9A7DEFF46B6FE46B6FE46B6FE46B6FE44B4FE42B1FE2374C13FACFE
        3EABFE3CA9FE3AA6FE38A4FE36A1FE359FFE0D5DC9FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF0D5DC9E0EFFBA7DEFF9CDAFF9CDAFF9CDAFF9CD9FF9A
        D8FF4786C198D5FF97D4FF96D4FF95D3FF93D1FF92D0FF91CFFF0D5DC9FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0D5DC90D5DC90D5DC90D5D
        C90D5DC90D5DC90D5DC90D5DC90D5DC90D5DC90D5DC90D5DC90D5DC90D5DC90D
        5DC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
      SkinData.SkinSection = 'BUTTON'
    end
  end
end
