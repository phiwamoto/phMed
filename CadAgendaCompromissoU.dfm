inherited CadAgendaCompromissoF: TCadAgendaCompromissoF
  Caption = 'Cadastro de Agenda de Compromisso'
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlTelaCadastro: TPanel
    inherited PcTelaCadastro: TcxPageControl
      ActivePage = TsPrincipal
      ClientRectTop = 26
      object TsPrincipal: TcxTabSheet
        Caption = 'Principal'
        ImageIndex = 13
        object LblDataCadastro: TLabel
          Left = 10
          Top = 10
          Width = 76
          Height = 15
          Caption = 'Data Inclus'#227'o'
        end
        object LblTelefone: TLabel
          Left = 620
          Top = 189
          Width = 47
          Height = 15
          Caption = 'Telefone'
        end
        object LblSituacaoAgenda: TLabel
          Left = 120
          Top = 10
          Width = 92
          Height = 15
          Caption = 'Situa'#231#227'o Agenda'
        end
        object LblTitular: TLabel
          Left = 12
          Top = 190
          Width = 43
          Height = 15
          Caption = 'Pessoa'
        end
        object LblDataAgenda: TLabel
          Left = 10
          Top = 55
          Width = 70
          Height = 15
          Caption = 'Data Agenda'
        end
        object LblAssunto: TLabel
          Left = 10
          Top = 100
          Width = 45
          Height = 15
          Caption = 'Assunto'
        end
        object LblDescricao: TLabel
          Left = 10
          Top = 145
          Width = 56
          Height = 15
          Caption = 'Descri'#231#227'o'
        end
        object LblHoraAgenda: TLabel
          Left = 120
          Top = 55
          Width = 71
          Height = 15
          Caption = 'Hora Agenda'
        end
        object DbDataInclusao: TcxDBDateEdit
          Left = 10
          Top = 25
          TabStop = False
          DataBinding.DataField = 'DATAINCLUSAO'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 0
          Width = 100
        end
        object DbTelefone: TcxDBTextEdit
          Left = 620
          Top = 205
          DataBinding.DataField = 'TELEFONE'
          DataBinding.DataSource = DsAgenda
          TabOrder = 8
          Width = 110
        end
        object DbSituacaoAgenda: TcxDBTextEdit
          Left = 120
          Top = 25
          DataBinding.DataField = 'SITUACAOAGENDA'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 1
          Width = 100
        end
        object DbNomeFantasia: TcxDBTextEdit
          Left = 160
          Top = 205
          DataBinding.DataField = 'NOME'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = False
          Style.Color = clWindow
          TabOrder = 7
          Width = 450
        end
        object DbCpfCnpj: TcxDBButtonEdit
          Left = 10
          Top = 205
          DataBinding.DataField = 'CPFCNPJ'
          DataBinding.DataSource = DsAgenda
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = DbCpfCnpjPropertiesButtonClick
          TabOrder = 6
          OnExit = DbCpfCnpjExit
          Width = 150
        end
        object DbDataAgenda: TcxDBDateEdit
          Left = 10
          Top = 70
          DataBinding.DataField = 'DATACOMPROMISSO'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = False
          Style.Color = clWindow
          TabOrder = 2
          Width = 100
        end
        object DbAssunto: TcxDBTextEdit
          Left = 10
          Top = 115
          DataBinding.DataField = 'ASSUNTO'
          DataBinding.DataSource = DsAgenda
          TabOrder = 4
          Width = 300
        end
        object DbDescricao: TcxDBTextEdit
          Left = 10
          Top = 160
          DataBinding.DataField = 'DESCRICAO'
          DataBinding.DataSource = DsAgenda
          TabOrder = 5
          Width = 600
        end
        object DbHoraAgenda: TcxDBTimeEdit
          Left = 120
          Top = 70
          DataBinding.DataField = 'HORACOMPROMISSO'
          DataBinding.DataSource = DsAgenda
          TabOrder = 3
          Width = 80
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
  object DsAgenda: TDataSource
    DataSet = CdsAgenda
    Left = 600
    Top = 224
  end
  object CdsAgenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAgenda'
    RemoteServer = DmCadastroF.LocalConnection
    AfterInsert = CdsAgendaAfterInsert
    Left = 600
    Top = 208
    object CdsAgendaIDAGENDACOMPROMISSO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDAGENDACOMPROMISSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsAgendaIDPESSOA: TLargeintField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'IDPESSOA'
    end
    object CdsAgendaIDSITUACAOAGENDACOMPROMISSO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Agenda'
      FieldName = 'IDSITUACAOAGENDACOMPROMISSO'
      Required = True
    end
    object CdsAgendaDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsAgendaDATACOMPROMISSO: TDateField
      DisplayLabel = 'Data Compromisso'
      FieldName = 'DATACOMPROMISSO'
      Required = True
    end
    object CdsAgendaHORACOMPROMISSO: TTimeField
      DisplayLabel = 'Hora Compromisso'
      FieldName = 'HORACOMPROMISSO'
      Required = True
    end
    object CdsAgendaTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 12
    end
    object CdsAgendaASSUNTO: TStringField
      DisplayLabel = 'Assunto'
      FieldName = 'ASSUNTO'
      Size = 80
    end
    object CdsAgendaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 150
    end
    object CdsAgendaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object CdsAgendaNOMEFANTASIA: TStringField
      DisplayLabel = 'Nome / Nome Fantasia'
      FieldName = 'NOMEFANTASIA'
      ProviderFlags = []
      Size = 150
    end
    object CdsAgendaCPFCNPJ: TStringField
      DisplayLabel = 'CPF / CNPJ'
      FieldName = 'CPFCNPJ'
      ProviderFlags = []
    end
    object CdsAgendaIDTIPOPESSOA: TSmallintField
      DisplayLabel = 'C'#243'd. Tipo Pessoa'
      FieldName = 'IDTIPOPESSOA'
      ProviderFlags = []
    end
    object CdsAgendaTELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'TELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 12
    end
    object CdsAgendaSITUACAOAGENDA: TStringField
      FieldName = 'SITUACAOAGENDA'
      Size = 50
    end
  end
end
