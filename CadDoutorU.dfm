inherited CadDoutorF: TCadDoutorF
  Caption = 'Cadastro de Doutor'
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlTelaCadastro: TPanel
    inherited PcTelaCadastro: TcxPageControl
      ActivePage = TsPrincipal
      ClientRectTop = 26
      object TsPrincipal: TcxTabSheet
        Caption = 'Principal'
        ImageIndex = 13
        object LblCrm: TLabel
          Left = 10
          Top = 100
          Width = 27
          Height = 15
          Caption = 'CRM'
        end
        object LblDataInclusao: TLabel
          Left = 10
          Top = 10
          Width = 76
          Height = 15
          Caption = 'Data Inclus'#227'o'
        end
        object LblSecretaria: TLabel
          Left = 10
          Top = 55
          Width = 52
          Height = 15
          Caption = 'Doutor(a)'
        end
        object LblNumero: TLabel
          Left = 650
          Top = 145
          Width = 45
          Height = 15
          Caption = 'N'#250'mero'
        end
        object LblEndereco: TLabel
          Left = 120
          Top = 145
          Width = 53
          Height = 15
          Caption = 'Endere'#231'o'
        end
        object LblEmail: TLabel
          Left = 410
          Top = 55
          Width = 32
          Height = 15
          Caption = 'Email'
        end
        object LblBairro: TLabel
          Left = 10
          Top = 190
          Width = 33
          Height = 15
          Caption = 'Bairro'
        end
        object LblCpf: TLabel
          Left = 250
          Top = 100
          Width = 24
          Height = 15
          Caption = 'CPF'
        end
        object LblRg: TLabel
          Left = 120
          Top = 100
          Width = 18
          Height = 15
          Caption = 'RG'
        end
        object LblTelefone: TLabel
          Left = 410
          Top = 100
          Width = 72
          Height = 15
          Caption = 'Telefone Fixo'
        end
        object LblCelular: TLabel
          Left = 565
          Top = 100
          Width = 90
          Height = 15
          Caption = 'Telefone Celular'
        end
        object LblCep: TLabel
          Left = 10
          Top = 145
          Width = 25
          Height = 15
          Caption = 'CEP'
        end
        object Label33: TLabel
          Left = 340
          Top = 190
          Width = 40
          Height = 15
          Caption = 'Cidade'
        end
        object LblUsuarioSistema: TLabel
          Left = 10
          Top = 235
          Width = 93
          Height = 15
          Caption = 'Usu'#225'rio Sistema'
        end
        object DbDataInclusao: TcxDBDateEdit
          Left = 10
          Top = 25
          TabStop = False
          DataBinding.DataField = 'DATAINCLUSAO'
          DataBinding.DataSource = DsDoutor
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 0
          Width = 100
        end
        object DbCrm: TcxDBTextEdit
          Left = 10
          Top = 115
          DataBinding.DataField = 'CRM'
          DataBinding.DataSource = DsDoutor
          TabOrder = 3
          Width = 100
        end
        object DbDoutor: TcxDBTextEdit
          Left = 10
          Top = 70
          DataBinding.DataField = 'NOME'
          DataBinding.DataSource = DsDoutor
          TabOrder = 1
          Width = 390
        end
        object DbNomeCidade: TcxDBTextEdit
          Left = 410
          Top = 205
          TabStop = False
          DataBinding.DataField = 'CIDADEUF'
          DataBinding.DataSource = DsDoutor
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 13
          Width = 300
        end
        object DbCodigoCidade: TcxDBButtonEdit
          Left = 340
          Top = 205
          DataBinding.DataField = 'IDCIDADE'
          DataBinding.DataSource = DsDoutor
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = DbCodigoCidadePropertiesButtonClick
          TabOrder = 12
          OnExit = DbCodigoCidadeExit
          Width = 70
        end
        object DbRg: TcxDBTextEdit
          Left = 120
          Top = 115
          DataBinding.DataField = 'RG'
          DataBinding.DataSource = DsDoutor
          TabOrder = 4
          Width = 120
        end
        object DbCep: TcxDBTextEdit
          Left = 10
          Top = 160
          DataBinding.DataField = 'CEP'
          DataBinding.DataSource = DsDoutor
          TabOrder = 8
          Width = 100
        end
        object DbCelular: TcxDBTextEdit
          Left = 565
          Top = 115
          DataBinding.DataField = 'CELULAR'
          DataBinding.DataSource = DsDoutor
          TabOrder = 7
          Width = 145
        end
        object DbNumero: TcxDBTextEdit
          Left = 650
          Top = 160
          DataBinding.DataField = 'NUMERO'
          DataBinding.DataSource = DsDoutor
          TabOrder = 10
          Width = 60
        end
        object DbEmail: TcxDBTextEdit
          Left = 410
          Top = 70
          DataBinding.DataField = 'EMAIL'
          DataBinding.DataSource = DsDoutor
          TabOrder = 2
          Width = 300
        end
        object DbCpf: TcxDBTextEdit
          Left = 250
          Top = 115
          DataBinding.DataField = 'CPF'
          DataBinding.DataSource = DsDoutor
          TabOrder = 5
          Width = 150
        end
        object DbTelefone: TcxDBTextEdit
          Left = 410
          Top = 115
          DataBinding.DataField = 'TELEFONE'
          DataBinding.DataSource = DsDoutor
          TabOrder = 6
          Width = 145
        end
        object DbBairro: TcxDBTextEdit
          Left = 10
          Top = 205
          DataBinding.DataField = 'BAIRRO'
          DataBinding.DataSource = DsDoutor
          TabOrder = 11
          Width = 320
        end
        object DbEndereco: TcxDBTextEdit
          Left = 120
          Top = 160
          DataBinding.DataField = 'ENDERECO'
          DataBinding.DataSource = DsDoutor
          TabOrder = 9
          Width = 520
        end
        object CbAtivo: TcxDBCheckBox
          Left = 10
          Top = 290
          Caption = 'Ativo'
          DataBinding.DataField = 'IDSITUACAOREGISTRO'
          DataBinding.DataSource = DsDoutor
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 15
          Width = 50
        end
        object GbImagem: TGroupBox
          Left = 730
          Top = 48
          Width = 200
          Height = 180
          Caption = ' Foto '
          TabOrder = 14
          object DbFotoDoutor: TcxDBImage
            Left = 2
            Top = 17
            Align = alClient
            DataBinding.DataField = 'FOTODOUTOR'
            DataBinding.DataSource = DsDoutor
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.PopupMenuLayout.MenuItems = [pmiSave]
            Properties.Stretch = True
            TabOrder = 0
            Height = 131
            Width = 196
          end
          object PnlBotaoFotoDoutor: TPanel
            Left = 2
            Top = 148
            Width = 196
            Height = 30
            Align = alBottom
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object BtnSelecionarFotoDoutor: TcxButton
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
              OnClick = BtnSelecionarFotoDoutorClick
            end
            object BtnDeletarFotoDoutor: TcxButton
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
              OnClick = BtnDeletarFotoDoutorClick
            end
          end
        end
        object DbLoginUsuarioSistema: TcxDBTextEdit
          Left = 80
          Top = 250
          TabStop = False
          DataBinding.DataField = 'USUARIOLOGIN'
          DataBinding.DataSource = DsDoutor
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 16
          Width = 320
        end
        object DbCodigoUsuarioSistema: TcxDBButtonEdit
          Left = 10
          Top = 250
          DataBinding.DataField = 'IDUSUARIO'
          DataBinding.DataSource = DsDoutor
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = DbCodigoUsuarioSistemaPropertiesButtonClick
          TabOrder = 17
          OnExit = DbCodigoUsuarioSistemaExit
          Width = 70
        end
      end
      object TsConfiguracaoAgenda: TcxTabSheet
        Caption = 'Configura'#231#227'o'
        ImageIndex = 1
        object GbConfiguracaoAgenda: TGroupBox
          Left = 10
          Top = 10
          Width = 880
          Height = 120
          Caption = ' Configura'#231#227'o Agenda '
          TabOrder = 0
          object GbAgenda_HoraTrabalhoManha: TcxGroupBox
            Left = 10
            Top = 30
            Caption = ' Atendimento - Manh'#227' '
            ParentFont = False
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 80
            Width = 260
            object LblAgenda_HoraManhaInicial: TLabel
              Left = 15
              Top = 20
              Width = 32
              Height = 15
              Caption = 'Inicial'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object LblAgenda_HoraManhaFinal: TLabel
              Left = 120
              Top = 20
              Width = 27
              Height = 15
              Caption = 'Final'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object CbAgenda_HoraManhaInicial: TcxDBComboBox
              Left = 15
              Top = 35
              DataBinding.DataField = 'HORAINICIALMANHA'
              DataBinding.DataSource = DsDoutor
              ParentFont = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                '06:00'
                '06:30'
                '07:00'
                '07:30'
                '08:00'
                '08:30'
                '09:00')
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 90
            end
            object CbAgenda_HoraManhaFinal: TcxDBComboBox
              Left = 120
              Top = 35
              DataBinding.DataField = 'HORAFINALMANHA'
              DataBinding.DataSource = DsDoutor
              ParentFont = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                '10:00'
                '10:30'
                '11:00'
                '11:30'
                '12:00'
                '12:30'
                '13:00')
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 90
            end
          end
          object GbAgenda_HoraTrabalhoTarde: TcxGroupBox
            Left = 280
            Top = 30
            Caption = ' Atendimento - Tarde '
            ParentFont = False
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 80
            Width = 260
            object LblAgenda_HoraTardeFinal: TLabel
              Left = 120
              Top = 20
              Width = 27
              Height = 15
              Caption = 'Final'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object LblAgenda_HoraTardeInicial: TLabel
              Left = 15
              Top = 20
              Width = 32
              Height = 15
              Caption = 'Inicial'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object CbAgenda_HoraTardeFinal: TcxDBComboBox
              Left = 120
              Top = 35
              DataBinding.DataField = 'HORAFINALTARDE'
              DataBinding.DataSource = DsDoutor
              ParentFont = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                '17:00'
                '17:30'
                '18:00'
                '18:30'
                '19:00'
                '19:30'
                '20:00')
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 90
            end
            object CbAgenda_HoraTardeInicial: TcxDBComboBox
              Left = 15
              Top = 35
              DataBinding.DataField = 'HORAINICIALTARDE'
              DataBinding.DataSource = DsDoutor
              ParentFont = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                '13:00'
                '13:30'
                '14:00'
                '14:30'
                '15:00'
                '15:30'
                '16:00')
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 90
            end
          end
          object GbAgenda_IntervaloConsulta: TcxGroupBox
            Left = 550
            Top = 30
            Caption = ' Intervalo Atendimento '
            ParentFont = False
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Height = 80
            Width = 260
            object LblAgenda_IntervaloMinutoConsulta: TLabel
              Left = 15
              Top = 20
              Width = 43
              Height = 15
              Caption = 'Minutos'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object CbAgenda_IntervaloMinutoConsulta: TcxDBComboBox
              Left = 15
              Top = 35
              DataBinding.DataField = 'INTERVALO'
              DataBinding.DataSource = DsDoutor
              ParentFont = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                '5'
                '10'
                '15'
                '30'
                '60')
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 90
            end
          end
        end
      end
    end
  end
  inherited PnlChaves: TPanel
    object LblCodigo: TLabel
      Left = 10
      Top = 5
      Width = 40
      Height = 15
      Caption = 'C'#243'digo'
    end
    object EdCodigo: TcxButtonEdit
      Left = 10
      Top = 20
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = EdCodigoPropertiesButtonClick
      TabOrder = 0
      OnExit = EdCodigoExit
      Width = 100
    end
  end
  inherited ImageList32: TcxImageList
    FormatVersion = 1
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
  end
  object DsDoutor: TDataSource
    DataSet = CdsDoutor
    Left = 792
    Top = 232
  end
  object CdsDoutor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspDoutor'
    RemoteServer = DmCadastroF.LocalConnection
    AfterInsert = CdsDoutorAfterInsert
    Left = 792
    Top = 216
    object CdsDoutorIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDDOUTOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsDoutorIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'IDCIDADE'
    end
    object CdsDoutorIDUSUARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'IDUSUARIO'
    end
    object CdsDoutorIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsDoutorDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsDoutorNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
    end
    object CdsDoutorNOME: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object CdsDoutorENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 100
    end
    object CdsDoutorBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 100
    end
    object CdsDoutorEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 100
    end
    object CdsDoutorCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsDoutorRG: TStringField
      FieldName = 'RG'
    end
    object CdsDoutorTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsDoutorCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsDoutorCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999\-999;0;_'
      Size = 10
    end
    object CdsDoutorCRM: TStringField
      FieldName = 'CRM'
      Size = 10
    end
    object CdsDoutorINTERVALO: TIntegerField
      DisplayLabel = 'Intervalo'
      FieldName = 'INTERVALO'
      Required = True
    end
    object CdsDoutorHORAINICIALMANHA: TStringField
      DisplayLabel = 'Hora Inicial Manh'#227
      FieldName = 'HORAINICIALMANHA'
      Required = True
      Size = 10
    end
    object CdsDoutorHORAFINALMANHA: TStringField
      DisplayLabel = 'Hora Final Manh'#227
      FieldName = 'HORAFINALMANHA'
      Required = True
      Size = 10
    end
    object CdsDoutorHORAINICIALTARDE: TStringField
      DisplayLabel = 'Hora Inicial Tarde'
      FieldName = 'HORAINICIALTARDE'
      Required = True
      Size = 10
    end
    object CdsDoutorHORAFINALTARDE: TStringField
      DisplayLabel = 'Hora Final Tarde'
      FieldName = 'HORAFINALTARDE'
      Required = True
      Size = 10
    end
    object CdsDoutorFOTODOUTOR: TBlobField
      DisplayLabel = 'Foto'
      FieldName = 'FOTODOUTOR'
      Size = 1
    end
    object CdsDoutorCIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'CIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object CdsDoutorUSUARIOLOGIN: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIOLOGIN'
      ProviderFlags = []
    end
    object CdsDoutorSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
end
