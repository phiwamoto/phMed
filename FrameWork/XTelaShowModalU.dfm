object XTelaShowModalF: TXTelaShowModalF
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'XTelaShowModalF'
  ClientHeight = 550
  ClientWidth = 960
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 15
  object PnlBotton: TPanel
    Left = 0
    Top = 545
    Width = 960
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 5
    Top = 5
    Width = 950
    Height = 540
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object PnlCaption: TPanel
      Left = 0
      Top = 0
      Width = 950
      Height = 20
      Align = alTop
      BevelOuter = bvNone
      Color = clGray
      ParentBackground = False
      TabOrder = 1
      object LblPesquisa: TLabel
        Left = 5
        Top = 2
        Width = 20
        Height = 16
        Caption = '. . .'
        Color = clGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object PnlBotao: TPanel
      Left = 0
      Top = 20
      Width = 950
      Height = 35
      Align = alTop
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
    end
    object PnlFiltros: TPanel
      Left = 0
      Top = 55
      Width = 950
      Height = 50
      Align = alTop
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
    end
    object PnlInformacao: TPanel
      Left = 0
      Top = 105
      Width = 950
      Height = 435
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
    end
  end
  object PnlLeft: TPanel
    Left = 0
    Top = 5
    Width = 5
    Height = 540
    Align = alLeft
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 2
  end
  object PnlRight: TPanel
    Left = 955
    Top = 5
    Width = 5
    Height = 540
    Align = alRight
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 3
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 960
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 4
  end
end
