inherited CadClinicaF: TCadClinicaF
  Caption = 'Cadastro da Cl'#237'nica'
  OnShow = FormShow
  ExplicitTop = -26
  ExplicitWidth = 960
  ExplicitHeight = 610
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlTelaCadastro: TPanel
    inherited PcTelaCadastro: TcxPageControl
      ActivePage = TsPrincipal
      ClientRectTop = 26
      object TsPrincipal: TcxTabSheet
        Caption = 'Principal'
        ImageIndex = 13
        ExplicitTop = 20
        ExplicitWidth = 0
        ExplicitHeight = 0
        object LblNome: TLabel
          Left = 10
          Top = 10
          Width = 38
          Height = 15
          Caption = 'Cl'#237'nica'
        end
        object LblTelefone01: TLabel
          Left = 10
          Top = 55
          Width = 64
          Height = 15
          Caption = 'Telefone 01'
        end
        object LblTelefone02: TLabel
          Left = 150
          Top = 55
          Width = 64
          Height = 15
          Caption = 'Telefone 02'
        end
        object LblNumero: TLabel
          Left = 730
          Top = 100
          Width = 45
          Height = 15
          Caption = 'N'#250'mero'
        end
        object LblEndereco: TLabel
          Left = 100
          Top = 100
          Width = 53
          Height = 15
          Caption = 'Endere'#231'o'
        end
        object LblBairro: TLabel
          Left = 10
          Top = 145
          Width = 33
          Height = 15
          Caption = 'Bairro'
        end
        object LblCep: TLabel
          Left = 10
          Top = 100
          Width = 25
          Height = 15
          Caption = 'CEP'
        end
        object LblCidade: TLabel
          Left = 460
          Top = 145
          Width = 40
          Height = 15
          Caption = 'Cidade'
        end
        object LblSite: TLabel
          Left = 290
          Top = 55
          Width = 21
          Height = 15
          Caption = 'Site'
        end
        object DbClinica: TcxDBTextEdit
          Left = 10
          Top = 25
          DataBinding.DataField = 'CLINICA'
          DataBinding.DataSource = DsClinica
          TabOrder = 0
          Width = 800
        end
        object DbTelefone02: TcxDBTextEdit
          Left = 150
          Top = 70
          DataBinding.DataField = 'TELEFONE2'
          DataBinding.DataSource = DsClinica
          TabOrder = 2
          Width = 130
        end
        object DbTelefone01: TcxDBTextEdit
          Left = 10
          Top = 70
          DataBinding.DataField = 'TELEFONE1'
          DataBinding.DataSource = DsClinica
          TabOrder = 1
          Width = 130
        end
        object DbNomeCidade: TcxDBTextEdit
          Left = 530
          Top = 160
          TabStop = False
          DataBinding.DataField = 'CIDADEUF'
          DataBinding.DataSource = DsClinica
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 9
          Width = 280
        end
        object DbCodigoCidade: TcxDBButtonEdit
          Left = 460
          Top = 160
          DataBinding.DataField = 'IDCIDADE'
          DataBinding.DataSource = DsClinica
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = DbCodigoCidadePropertiesButtonClick
          TabOrder = 8
          OnExit = DbCodigoCidadeExit
          Width = 70
        end
        object DbCep: TcxDBTextEdit
          Left = 10
          Top = 115
          DataBinding.DataField = 'CEP'
          DataBinding.DataSource = DsClinica
          TabOrder = 4
          Width = 80
        end
        object DbNumero: TcxDBTextEdit
          Left = 730
          Top = 115
          DataBinding.DataField = 'NUMERO'
          DataBinding.DataSource = DsClinica
          TabOrder = 6
          Width = 80
        end
        object DbBairro: TcxDBTextEdit
          Left = 10
          Top = 160
          DataBinding.DataField = 'BAIRRO'
          DataBinding.DataSource = DsClinica
          TabOrder = 7
          Width = 440
        end
        object DbEndereco: TcxDBTextEdit
          Left = 100
          Top = 115
          DataBinding.DataField = 'ENDERECO'
          DataBinding.DataSource = DsClinica
          TabOrder = 5
          Width = 620
        end
        object DbSite: TcxDBTextEdit
          Left = 290
          Top = 70
          DataBinding.DataField = 'SITECLINICA'
          DataBinding.DataSource = DsClinica
          TabOrder = 3
          Width = 520
        end
        object GbConfiguracaoEmail: TGroupBox
          Left = 10
          Top = 210
          Width = 600
          Height = 140
          Caption = ' Configurador Email '
          TabOrder = 10
          object LblSMTP: TLabel
            Left = 10
            Top = 75
            Width = 80
            Height = 15
            Caption = 'SMTP Servidor'
          end
          object LblSenhaEmail: TLabel
            Left = 450
            Top = 30
            Width = 71
            Height = 15
            Caption = 'Senha Email'
          end
          object LblEmail: TLabel
            Left = 10
            Top = 30
            Width = 32
            Height = 15
            Caption = 'Email'
          end
          object LblPorta: TLabel
            Left = 450
            Top = 75
            Width = 29
            Height = 15
            Caption = 'Porta'
          end
          object DbSMTPServidor: TcxDBTextEdit
            Left = 10
            Top = 90
            DataBinding.DataField = 'SMTPSERVIDOR'
            DataBinding.DataSource = DsClinica
            TabOrder = 2
            Width = 430
          end
          object DbSenhaEmail: TcxDBTextEdit
            Left = 450
            Top = 45
            DataBinding.DataField = 'EMAILCLINICASENHA'
            DataBinding.DataSource = DsClinica
            Properties.EchoMode = eemPassword
            Properties.PasswordChar = '*'
            TabOrder = 1
            Width = 120
          end
          object DbEmail: TcxDBTextEdit
            Left = 10
            Top = 45
            DataBinding.DataField = 'EMAILCLINICA'
            DataBinding.DataSource = DsClinica
            TabOrder = 0
            Width = 430
          end
          object DbPorta: TcxDBTextEdit
            Left = 450
            Top = 90
            DataBinding.DataField = 'SMTPPORTA'
            DataBinding.DataSource = DsClinica
            TabOrder = 3
            Width = 120
          end
        end
      end
      object TsImagem: TcxTabSheet
        Caption = 'Imagens'
        ImageIndex = 1
        ExplicitLeft = -3
        ExplicitTop = 20
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GbImagem: TGroupBox
          Left = 10
          Top = 10
          Width = 200
          Height = 180
          Caption = ' Menu Sistema '
          TabOrder = 0
          object DbImageMenuSistema: TcxDBImage
            Left = 2
            Top = 17
            Align = alClient
            DataBinding.DataField = 'FOTOMENUPRINCIPAL'
            DataBinding.DataSource = DsClinica
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.PopupMenuLayout.MenuItems = [pmiSave]
            TabOrder = 0
            Height = 131
            Width = 196
          end
          object PnlBotaoImagemMenuSistema: TPanel
            Left = 2
            Top = 148
            Width = 196
            Height = 30
            Align = alBottom
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            ExplicitLeft = 1
            ExplicitTop = 124
            ExplicitWidth = 176
            object BtnSelecionarImagemMenuSistema: TcxButton
              Left = 10
              Top = 5
              Width = 80
              Height = 20
              Caption = 'Selecionar'
              Colors.Default = clWhite
              Colors.DefaultText = clBlack
              Colors.Normal = clWhite
              Colors.NormalText = clBlack
              Colors.Hot = clSilver
              Colors.HotText = clBlack
              Colors.Pressed = clWhite
              Colors.PressedText = clBlack
              Colors.Disabled = clWhite
              Colors.DisabledText = clGray
              TabOrder = 0
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnSelecionarImagemMenuSistemaClick
            end
            object BtnDeletarImagemMenuSistema: TcxButton
              Left = 105
              Top = 5
              Width = 80
              Height = 20
              Caption = 'Deletar'
              Colors.Default = clWhite
              Colors.DefaultText = clBlack
              Colors.Normal = clWhite
              Colors.NormalText = clBlack
              Colors.Hot = clSilver
              Colors.HotText = clBlack
              Colors.Pressed = clWhite
              Colors.PressedText = clBlack
              Colors.Disabled = clWhite
              Colors.DisabledText = clGray
              TabOrder = 1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnDeletarImagemMenuSistemaClick
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 220
          Top = 10
          Width = 200
          Height = 180
          Caption = ' Cabe'#231'alho Relat'#243'rio '
          TabOrder = 1
          object DbImageCabecalhoRelatorio: TcxDBImage
            Left = 2
            Top = 17
            Align = alClient
            DataBinding.DataField = 'FOTORELATORIO'
            DataBinding.DataSource = DsClinica
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.PopupMenuLayout.MenuItems = [pmiSave]
            TabOrder = 0
            Height = 131
            Width = 196
          end
          object PnlBotaoImagemCabecalhoRelatorio: TPanel
            Left = 2
            Top = 148
            Width = 196
            Height = 30
            Align = alBottom
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            ExplicitLeft = -38
            ExplicitTop = 126
            ExplicitWidth = 176
            object BtnSelecionarImagemCabecalhoRelatorio: TcxButton
              Left = 10
              Top = 5
              Width = 80
              Height = 20
              Caption = 'Selecionar'
              Colors.Default = clWhite
              Colors.DefaultText = clBlack
              Colors.Normal = clWhite
              Colors.NormalText = clBlack
              Colors.Hot = clSilver
              Colors.HotText = clBlack
              Colors.Pressed = clWhite
              Colors.PressedText = clBlack
              Colors.Disabled = clWhite
              Colors.DisabledText = clGray
              TabOrder = 0
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnSelecionarImagemCabecalhoRelatorioClick
            end
            object BtnDeletarrImagemCabecalhoRelatorio: TcxButton
              Left = 105
              Top = 5
              Width = 80
              Height = 20
              Caption = 'Deletar'
              Colors.Default = clWhite
              Colors.DefaultText = clBlack
              Colors.Normal = clWhite
              Colors.NormalText = clBlack
              Colors.Hot = clSilver
              Colors.HotText = clBlack
              Colors.Pressed = clWhite
              Colors.PressedText = clBlack
              Colors.Disabled = clWhite
              Colors.DisabledText = clGray
              TabOrder = 1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnDeletarrImagemCabecalhoRelatorioClick
            end
          end
        end
      end
    end
  end
  inherited PnlBotao: TPanel
    inherited BtnIncluir: TcxButton [0]
    end
    inherited BtnAlterar: TcxButton [1]
      Left = 5
      ExplicitLeft = 5
    end
    inherited BtnExcluir: TcxButton [2]
    end
    inherited BtnCancelar: TcxButton [3]
    end
    inherited BtnConfirmar: TcxButton [4]
    end
  end
  inherited PnlChaves: TPanel
    Visible = False
  end
  inherited ImageList32: TcxImageList
    FormatVersion = 1
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
  end
  object DsClinica: TDataSource
    DataSet = CdsClinica
    Left = 872
    Top = 152
  end
  object CdsClinica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspClinica'
    RemoteServer = DmCadastroF.LocalConnection
    AfterInsert = CdsClinicaAfterInsert
    Left = 872
    Top = 136
    object CdsClinicaIDCLINICA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCLINICA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsClinicaIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'IDCIDADE'
    end
    object CdsClinicaDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsClinicaNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
    end
    object CdsClinicaCLINICA: TStringField
      DisplayLabel = 'Cl'#237'nica'
      FieldName = 'CLINICA'
      Size = 100
    end
    object CdsClinicaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 100
    end
    object CdsClinicaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 100
    end
    object CdsClinicaSITECLINICA: TStringField
      DisplayLabel = 'Site'
      FieldName = 'SITECLINICA'
      Size = 100
    end
    object CdsClinicaEMAILCLINICA: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAILCLINICA'
      Size = 100
    end
    object CdsClinicaTELEFONE1: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'TELEFONE1'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsClinicaTELEFONE2: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'TELEFONE2'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsClinicaCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999\-999;0;_'
      Size = 10
    end
    object CdsClinicaFOTOMENUPRINCIPAL: TBlobField
      DisplayLabel = 'Foto Menu Principal'
      FieldName = 'FOTOMENUPRINCIPAL'
      Size = 1
    end
    object CdsClinicaFOTORELATORIO: TBlobField
      DisplayLabel = 'Foto Relat'#243'rio'
      FieldName = 'FOTORELATORIO'
      Size = 1
    end
    object CdsClinicaCIDADEUF: TStringField
      DisplayLabel = 'Cidade - UF'
      FieldName = 'CIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object CdsClinicaSMTPPORTA: TIntegerField
      DisplayLabel = 'Porta SMTP'
      FieldName = 'SMTPPORTA'
    end
    object CdsClinicaSMTPSERVIDOR: TStringField
      DisplayLabel = 'Servidor SMTP'
      FieldName = 'SMTPSERVIDOR'
      Size = 100
    end
    object CdsClinicaEMAILCLINICASENHA: TStringField
      DisplayLabel = 'Senha Email'
      FieldName = 'EMAILCLINICASENHA'
    end
  end
end
