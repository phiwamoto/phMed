inherited SmdAgendaF: TSmdAgendaF
  Caption = 'SmdAgendaF'
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlFundo: TPanel
    inherited PnlCaption: TPanel
      inherited LblPesquisa: TLabel
        Width = 208
        Caption = 'Cadastro de Agenda de Consulta'
        ExplicitWidth = 208
      end
    end
    inherited PnlBotao: TPanel
      object BtnCancelar: TcxButton
        Left = 844
        Top = 5
        Width = 100
        Height = 25
        Caption = 'Cancelar'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0D1402058CCB03099AE10000507B000004070000000000000000000000000000
          0000000057850000548B00001C2A000000000000000000000000000000000000
          5D8D1844F6FF194DF8FF1031D2FF01028BD000001A2400000000000000010000
          66930928D7FF092ED7FF0313B3FF0000608F0000000000000000000000000102
          92D02451F9FF1F52FFFF1D4FFFFF1744E8FF040AA3EC0000283A000066970D2E
          DDFF1142F9FF0D3DF5FF0B3BF0FF041ABCFF00003C5D00000000000000000000
          2D421832DBFF285BFFFF2456FFFF2253FFFF1B4BF1FF050DAEFB0F30DDFF164A
          FEFF1344F9FF1041F6FF0E3EF6FF0A3CF0FF000077BF00000000000000000000
          3C511F37DDFF3A6FFFFF2C5EFFFF295AFFFF2657FFFF2052FCFF1C4FFFFF194A
          FDFF1646FAFF1445FAFF0F3DF2FF0209A0E700002C4300000000000000000000
          000100005066111BBCF03D6AFBFF3567FFFF2C5DFFFF2859FFFF2253FFFF1D4E
          FFFF1A4DFFFF123DEDFF000289CB0000131A0000000000000000000000000000
          0000000000000000161C000085BA2E4EE7FF3668FFFF2E5EFFFF2859FFFF2254
          FFFF163DEAFF00007DBE0000070B000000000000000000000000000000000000
          0000000000000000000000003A4D253FDFFF3B6DFFFF3464FFFF2E5EFFFF2759
          FFFF1B46EAFF00018CCF00000508000000000000000000000000000000000000
          00000000000000000000020297C14B7CFFFF4170FFFF3B6BFFFF396CFFFF2D5E
          FFFF2558FFFF1336D7FF00006993000000000000000000000000000000000000
          0000000000000000252C263CDAFE5080FFFF4575FFFF3662FAFF0D14C2FE3C6D
          FFFF2A5BFFFF2053FDFF0B1DC2FD000035470000000000000000000000000000
          00000000000000006F8B527CFAFF5081FFFF4B7DFFFF0A11B8EA000030420D13
          B6E9386AFFFF2456FFFF1A4AF2FF02069FE300000B0F00000000000000000000
          0000000000001119C2E06A9CFFFF5788FFFF2B46E7FF00004A5C000000000000
          28320E1AC1F23065FFFF1F51FFFF1439DDFF00006C9C00000000000000000000
          00000000000000007E913A52E3FE5782FBFF01019EC200000000000000000000
          0000000039471425D2FA265AFFFF0F2EE3FF010295CF00000000000000000000
          000000000000000000000000313C00007BA40000273000000000000000000000
          00000000000000004C63000188BC000034490000010200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Spacing = 0
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = BtnCancelarClick
      end
      object BtnSelecionar: TcxButton
        Left = 740
        Top = 5
        Width = 100
        Height = 25
        Caption = 'Selecionar'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000011001F006700C7027003D8001C0035000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000150021027F03DF16AF2BFF14B02AFF048206EF002000370000
          0000000000000000000000000000000000000000000000000000000000000000
          000000180022028503E018B234FF16B12FFF13AD2AFF12B028FF038406F00021
          0038000000000000000000000000000000000000000000000000000000000018
          0123028B04E11DB73DFF1CB639FF19B435FF3DBF53FF18B231FF12B029FF0384
          07F1002100390000000000000000000000000000000000000000000000001693
          21DC20BA45FF1FB942FF1CBB3EFF009A03FF1C8610FF55C767FF18B331FF13B1
          2AFF048507F10022003B0000000000000000000000000000000000000000209E
          31E350CC70FF1DBD44FF00A102FF9E866EFFCF8395FF168B0EFF53C866FF18B2
          32FF13B12BFF048608F10023003C000000000000000000000000000000000028
          063B14A42CE012B227FFA18F75FFCE8E97FFCB9195FFD08B97FF168C0DFF52C7
          65FF18B434FF14B22CFF048808F20024003D0000000000000000000000000B06
          0811854755CECE8894FFD2969CFFD39FA0FFAF7F80FFDCB1B5FFD995A0FF178C
          0EFF51C765FF1AB335FF14B32DFF04890AF3001E003700000000000000003F2A
          2A6BCA9F9FFFD09C9CFFD9A6A6FFA67474F83622225D7B5151D0E4BABEFFDD98
          A3FF178D0DFF50C665FF1DB638FF14B12EFF0047008D00000000000000001B11
          1126AE8383F2E1BABAFFB07C7CF93622224D000000000D0808147F5556D2E5BC
          C0FFDD98A3FF158F0CFF3AC04EFF009505F7001D003400000000000000000000
          00002217172B6342428C332121420000000000000000000000000E0909158457
          57D4E4BABEFFD3939BFF6E8E4EFF74574BE314090C2100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000F0A
          0A17885B5CD5DDB6B8FFCA8F94FFBD8488FF774E4FCE00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000120C0C188C6060D7D6B3B3FFC09090FF7C5353D000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000110C0C1A845B5BCE8C6262DA2015153500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Spacing = 0
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = BtnSelecionarClick
      end
    end
    inherited PnlFiltros: TPanel
      Visible = False
    end
    inherited PnlInformacao: TPanel
      object GbDoutor: TcxGroupBox
        Left = 10
        Top = 6
        Caption = ' Informa'#231#227'o Doutor(a) '
        Style.BorderColor = clBlack
        Style.BorderStyle = ebsSingle
        Style.TextColor = clBlack
        Style.TransparentBorder = True
        StyleDisabled.BorderColor = clBlack
        StyleDisabled.TextColor = clBlack
        TabOrder = 0
        Height = 80
        Width = 930
        object LblDoutor_Nome: TLabel
          Left = 20
          Top = 25
          Width = 37
          Height = 15
          Caption = 'Doutor'
        end
        object LblDoutor_CRM: TLabel
          Left = 330
          Top = 25
          Width = 27
          Height = 15
          Caption = 'CRM'
        end
        object LblDoutor_Telefone: TLabel
          Left = 410
          Top = 25
          Width = 47
          Height = 15
          Caption = 'Telefone'
        end
        object Label1: TLabel
          Left = 520
          Top = 25
          Width = 40
          Height = 15
          Caption = 'Celular'
        end
        object DbDoutor_Nome: TcxDBTextEdit
          Left = 20
          Top = 40
          TabStop = False
          DataBinding.DataField = 'DOUTORNOME'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 0
          Width = 300
        end
        object DbDoutor_CRM: TcxDBTextEdit
          Left = 330
          Top = 40
          TabStop = False
          DataBinding.DataField = 'DOUTORCRM'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 1
          Width = 70
        end
        object DbDoutor_Telefone: TcxDBTextEdit
          Left = 410
          Top = 40
          TabStop = False
          DataBinding.DataField = 'DOUTORTELEFONE'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 2
          Width = 100
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 520
          Top = 40
          TabStop = False
          DataBinding.DataField = 'DOUTORCELULAR'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 3
          Width = 100
        end
      end
      object GbAgendaConsulta: TcxGroupBox
        Left = 10
        Top = 90
        Caption = ' Informa'#231#227'o Agenda de Consulta '
        Style.BorderColor = clBlack
        Style.BorderStyle = ebsSingle
        Style.TextColor = clBlack
        Style.TransparentBorder = True
        StyleDisabled.BorderColor = clBlack
        StyleDisabled.TextColor = clBlack
        TabOrder = 1
        Height = 80
        Width = 930
        object LblDataAgenda: TLabel
          Left = 20
          Top = 25
          Width = 70
          Height = 15
          Caption = 'Data Agenda'
        end
        object LblHoraAgenda: TLabel
          Left = 130
          Top = 25
          Width = 71
          Height = 15
          Caption = 'Hora Agenda'
        end
        object LblTpStatus: TLabel
          Left = 350
          Top = 25
          Width = 35
          Height = 15
          Caption = 'Status'
        end
        object LblHoraChegada: TLabel
          Left = 240
          Top = 25
          Width = 81
          Height = 15
          Caption = 'Hora Chegada'
        end
        object LblTpMotivo: TLabel
          Left = 480
          Top = 25
          Width = 34
          Height = 15
          Caption = 'Motivo'
        end
        object DbDataAgenda: TcxDBDateEdit
          Left = 20
          Top = 40
          TabStop = False
          DataBinding.DataField = 'DATAAGENDA'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 0
          Width = 100
        end
        object DbHoraAgenda: TcxDBTimeEdit
          Left = 130
          Top = 40
          TabStop = False
          DataBinding.DataField = 'HORAAGENDA'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Properties.TimeFormat = tfHourMin
          Style.Color = clSilver
          TabOrder = 1
          Width = 100
        end
        object CbTpStatus: TcxDBComboBox
          Left = 350
          Top = 40
          DataBinding.DataField = 'STATUS'
          DataBinding.DataSource = DsAgenda
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Ausente'
            'Em Espera'
            'Atendido'
            'Desmarcou'
            'Faltou')
          TabOrder = 2
          Width = 120
        end
        object DbHoraChegada: TcxDBTimeEdit
          Left = 240
          Top = 40
          TabStop = False
          DataBinding.DataField = 'HORACHEGADA'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Properties.TimeFormat = tfHourMin
          Style.Color = clSilver
          TabOrder = 3
          Width = 100
        end
        object CbUrgente: TcxDBCheckBox
          Left = 640
          Top = 30
          Caption = 'Urgente'
          DataBinding.DataField = 'IDURGENTE'
          DataBinding.DataSource = DsAgenda
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 4
          Width = 90
        end
        object CbEncaixe: TcxDBCheckBox
          Left = 640
          Top = 45
          Caption = 'Encaixe'
          DataBinding.DataField = 'IDENCAIXE'
          DataBinding.DataSource = DsAgenda
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 5
          Width = 90
        end
        object CbTpMotivo: TcxDBComboBox
          Left = 480
          Top = 40
          DataBinding.DataField = 'MOTIVO'
          DataBinding.DataSource = DsAgenda
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Consulta'
            'Retorno'
            'Procedimento'
            'Exame')
          TabOrder = 6
          Width = 140
        end
      end
      object GbPaciente: TcxGroupBox
        Left = 10
        Top = 175
        Caption = ' Informa'#231#227'o Paciente '
        Style.BorderColor = clBlack
        Style.BorderStyle = ebsSingle
        Style.TextColor = clBlack
        Style.TransparentBorder = True
        StyleDisabled.BorderColor = clBlack
        StyleDisabled.TextColor = clBlack
        TabOrder = 2
        Height = 150
        Width = 930
        object LblPaciente_CodigoNome: TLabel
          Left = 20
          Top = 50
          Width = 48
          Height = 15
          Caption = 'Paciente'
        end
        object LblPaciente_CPF: TLabel
          Left = 570
          Top = 50
          Width = 24
          Height = 15
          Caption = 'CPF'
        end
        object LblPaciente_Telefone01: TLabel
          Left = 700
          Top = 50
          Width = 57
          Height = 15
          Caption = 'Telefone 1'
        end
        object LblPaciente_Telefone02: TLabel
          Left = 810
          Top = 50
          Width = 57
          Height = 15
          Caption = 'Telefone 2'
        end
        object LblPaciente_Email: TLabel
          Left = 410
          Top = 95
          Width = 32
          Height = 15
          Caption = 'Email'
        end
        object LblConvenio: TLabel
          Left = 20
          Top = 95
          Width = 52
          Height = 15
          Caption = 'Conv'#234'nio'
        end
        object LblPaciente_CidadeEstado: TLabel
          Left = 700
          Top = 95
          Width = 40
          Height = 15
          Caption = 'Cidade'
        end
        object LblPaciente_RG: TLabel
          Left = 460
          Top = 50
          Width = 18
          Height = 15
          Caption = 'RG'
        end
        object LblPaciente_Idade: TLabel
          Left = 410
          Top = 50
          Width = 31
          Height = 15
          Caption = 'Idade'
        end
        object DbPacienteID: TcxDBButtonEdit
          Left = 20
          Top = 65
          DataBinding.DataField = 'IDPACIENTE'
          DataBinding.DataSource = DsAgenda
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = DbPaciente_CodigoPropertiesButtonClick
          TabOrder = 0
          OnExit = DbPacienteIDExit
          Width = 70
        end
        object DbPaciente_Nome: TcxDBTextEdit
          Left = 90
          Top = 65
          TabStop = False
          DataBinding.DataField = 'PACIENTENOME'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 1
          Width = 310
        end
        object DbPaciente_CPF: TcxDBTextEdit
          Left = 570
          Top = 65
          TabStop = False
          DataBinding.DataField = 'PACIENTECPF'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 2
          Width = 120
        end
        object DbPaciente_Telefone01: TcxDBTextEdit
          Left = 700
          Top = 65
          TabStop = False
          DataBinding.DataField = 'PACIENTETELEFONE01'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 3
          Width = 100
        end
        object DbPaciente_Email: TcxDBTextEdit
          Left = 410
          Top = 110
          TabStop = False
          DataBinding.DataField = 'PACIENTEEMAIL'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 4
          Width = 280
        end
        object DbPaciente_ConvenioCodigo: TcxDBButtonEdit
          Left = 20
          Top = 110
          DataBinding.DataField = 'IDCONVENIO'
          DataBinding.DataSource = DsAgenda
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = DbPaciente_ConvenioCodigoPropertiesButtonClick
          TabOrder = 5
          OnExit = DbPaciente_ConvenioCodigoExit
          Width = 70
        end
        object DbPaciente_ConvenioDescricao: TcxDBTextEdit
          Left = 90
          Top = 110
          TabStop = False
          DataBinding.DataField = 'CONVENIO'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 6
          Width = 310
        end
        object DbPaciente_Telefone02: TcxDBTextEdit
          Left = 810
          Top = 65
          TabStop = False
          DataBinding.DataField = 'PACIENTETELEFONE02'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 7
          Width = 100
        end
        object DbPaciente_CidadeEstado: TcxDBTextEdit
          Left = 700
          Top = 110
          TabStop = False
          DataBinding.DataField = 'PACIENTECIDADEUF'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 8
          Width = 210
        end
        object DbPaciente_RG: TcxDBTextEdit
          Left = 460
          Top = 65
          TabStop = False
          DataBinding.DataField = 'PACIENTERG'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 9
          Width = 100
        end
        object DbPaciente_Idade: TcxDBTextEdit
          Left = 410
          Top = 65
          TabStop = False
          DataBinding.DataField = 'PACIENTEIDADE'
          DataBinding.DataSource = DsAgenda
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 10
          Width = 40
        end
        object BtnPreCadastroPaciente: TcxButton
          Left = 20
          Top = 20
          Width = 210
          Height = 25
          Caption = 'Pr'#233'-Cadastro de Paciente'
          Spacing = 0
          TabOrder = 11
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = BtnPreCadastroPacienteClick
        end
      end
      object GbObservacao: TcxGroupBox
        Left = 10
        Top = 330
        Caption = ' Observa'#231#227'o '
        Style.BorderColor = clBlack
        Style.BorderStyle = ebsSingle
        Style.TextColor = clBlack
        Style.TransparentBorder = True
        StyleDisabled.BorderColor = clBlack
        StyleDisabled.TextColor = clBlack
        TabOrder = 3
        Height = 100
        Width = 930
        object DbObservacao: TcxDBMemo
          Left = 2
          Top = 20
          Align = alClient
          DataBinding.DataField = 'OBSERVACAO'
          DataBinding.DataSource = DsAgenda
          Properties.ScrollBars = ssVertical
          TabOrder = 0
          OnEnter = DbObservacaoEnter
          OnExit = DbObservacaoExit
          Height = 78
          Width = 926
        end
      end
    end
  end
  object DsAgenda: TDataSource
    DataSet = CdsAgenda
    Left = 760
    Top = 176
  end
  object CdsAgenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAgenda'
    RemoteServer = DmRotinaF.LocalConnection
    AfterInsert = CdsAgendaAfterInsert
    Left = 760
    Top = 160
    object CdsAgendaIDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDAGENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsAgendaIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object CdsAgendaIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object CdsAgendaIDCONVENIO: TIntegerField
      DisplayLabel = 'C'#243'd. Conv'#234'nio'
      FieldName = 'IDCONVENIO'
    end
    object CdsAgendaINTERVALO: TIntegerField
      DisplayLabel = 'Intervalo'
      FieldName = 'INTERVALO'
    end
    object CdsAgendaIDENCAIXE: TSmallintField
      DisplayLabel = 'Encaixe'
      FieldName = 'IDENCAIXE'
      Required = True
    end
    object CdsAgendaIDURGENTE: TSmallintField
      DisplayLabel = 'Urgente'
      FieldName = 'IDURGENTE'
      Required = True
    end
    object CdsAgendaDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsAgendaDATAAGENDA: TDateField
      DisplayLabel = 'Data Agenda'
      FieldName = 'DATAAGENDA'
      Required = True
    end
    object CdsAgendaHORAAGENDA: TTimeField
      DisplayLabel = 'Hora Agenda'
      FieldName = 'HORAAGENDA'
      Required = True
    end
    object CdsAgendaHORACHEGADA: TTimeField
      DisplayLabel = 'Hora Chegada'
      FieldName = 'HORACHEGADA'
    end
    object CdsAgendaHORAMANHAINICIAL: TTimeField
      DisplayLabel = 'Hora Inicial Manh'#227
      FieldName = 'HORAMANHAINICIAL'
    end
    object CdsAgendaHORAMANHAFINAL: TTimeField
      DisplayLabel = 'Hora Final Manh'#227
      FieldName = 'HORAMANHAFINAL'
    end
    object CdsAgendaHORATARDEINICIAL: TTimeField
      DisplayLabel = 'Hora Inicial Tarde'
      FieldName = 'HORATARDEINICIAL'
    end
    object CdsAgendaHORATARDEFINAL: TTimeField
      DisplayLabel = 'Hora Final Tarde'
      FieldName = 'HORATARDEFINAL'
    end
    object CdsAgendaSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Required = True
      Size = 80
    end
    object CdsAgendaMOTIVO: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      Required = True
      Size = 80
    end
    object CdsAgendaOBSERVACAO: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      Size = 26000
    end
    object CdsAgendaDOUTORNOME: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsAgendaDOUTORCRM: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object CdsAgendaDOUTORCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
    end
    object CdsAgendaDOUTORTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
    end
    object CdsAgendaDOUTORCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
    end
    object CdsAgendaPACIENTENOME: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsAgendaPACIENTERG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object CdsAgendaPACIENTECPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
    end
    object CdsAgendaPACIENTETELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
    end
    object CdsAgendaPACIENTETELEFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
    end
    object CdsAgendaPACIENTEEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
    object CdsAgendaPACIENTEIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object CdsAgendaPACIENTECIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object CdsAgendaCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 100
    end
  end
end
