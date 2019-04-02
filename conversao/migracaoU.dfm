object migracaoF: TmigracaoF
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'migracaoF'
  ClientHeight = 429
  ClientWidth = 662
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblStatusConexaoOLD: TLabel
    Left = 185
    Top = 15
    Width = 20
    Height = 18
    Caption = '. . .'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblStatusConexaoNEW: TLabel
    Left = 185
    Top = 50
    Width = 20
    Height = 18
    Caption = '. . .'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object LblMigracaoIdentificacao: TLabel
    Left = 185
    Top = 85
    Width = 139
    Height = 18
    Caption = 'Migra'#231#227'o de Dados'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object btnConexaoOLD: TButton
    Left = 20
    Top = 15
    Width = 155
    Height = 30
    Caption = 'Abre Conex'#227'o OLD'
    TabOrder = 0
    OnClick = btnConexaoOLDClick
  end
  object btnConexaoNEW: TButton
    Left = 20
    Top = 50
    Width = 155
    Height = 30
    Caption = 'Abre Conex'#227'o NEW'
    TabOrder = 1
    OnClick = btnConexaoNEWClick
  end
  object btnMigrarDadosCadastro: TButton
    Left = 20
    Top = 85
    Width = 155
    Height = 60
    Caption = 'MIGRAR CADASTRO'
    TabOrder = 2
    OnClick = btnMigrarDadosCadastroClick
  end
  object pbMigracao: TProgressBar
    Left = 185
    Top = 110
    Width = 390
    Height = 30
    TabOrder = 3
  end
  object Button1: TButton
    Left = 20
    Top = 151
    Width = 155
    Height = 60
    Caption = 'MIGRAR PACIENTE'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 20
    Top = 217
    Width = 155
    Height = 60
    Caption = 'MIGRAR AGENDA'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 20
    Top = 283
    Width = 155
    Height = 60
    Caption = 'MIGRAR HIST'#211'RICO'
    TabOrder = 6
    OnClick = Button3Click
  end
end
