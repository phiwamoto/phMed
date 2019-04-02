object XMenuF: TXMenuF
  Left = 0
  Top = 0
  Width = 800
  Height = 601
  AutoScroll = True
  Caption = 'XMenuF'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 784
    Height = 27
    Bands = <
      item
        Control = tbForms
        ImageIndex = -1
        MinHeight = 22
        Width = 778
      end>
    object tbForms: TToolBar
      Left = 9
      Top = 0
      Width = 771
      Height = 22
      Align = alClient
      Caption = 'tbForms'
      Color = clWhite
      List = True
      ParentColor = False
      TabOrder = 0
      Wrapable = False
    end
  end
  object dxRibbon: TdxRibbon
    Left = 0
    Top = 27
    Width = 784
    Height = 27
    BarManager = dxBarManager
    ColorSchemeName = 'Black'
    Contexts = <>
    TabOrder = 3
    TabStop = False
  end
  object dxRibbonStatusBar: TdxRibbonStatusBar
    Left = 0
    Top = 539
    Width = 784
    Height = 23
    Panels = <>
    Ribbon = dxRibbon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dxBarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 136
    Top = 144
    DockControlHeights = (
      0
      0
      0
      0)
    object Sistema_Sair: TdxBarLargeButton
      Caption = 'Sair do Sistema'
      Category = 0
      Hint = 'Sair do Sistema'
      Visible = ivAlways
    end
  end
  object dxBarApplicationMenu: TdxBarApplicationMenu
    BarManager = dxBarManager
    Buttons = <>
    ExtraPane.Items = <>
    ItemLinks = <>
    UseOwnFont = False
    Left = 232
    Top = 144
  end
  object Timer: TTimer
    Interval = 500
    OnTimer = TimerTimer
    Left = 336
    Top = 144
  end
end
