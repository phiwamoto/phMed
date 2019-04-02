object DmRotinaF: TDmRotinaF
  OldCreateOrder = False
  Height = 538
  Width = 967
  object LocalConnection: TLocalConnection
    Left = 34
    Top = 12
  end
  object DspVirtualAgenda: TDataSetProvider
    DataSet = QryVirtualAgenda
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 112
  end
  object QryVirtualAgenda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT VAG.*'
      '            ,DOU.NOME AS DOUTORNOME'
      '            ,DOU.EMAIL AS DOUTOREMAIL'
      '            ,PAC.NOME AS PACIENTENOME'
      '            ,PAC.TELEFONE1 AS PACIENTETELEFONE01'
      '            ,PAC.TELEFONE2 AS PACIENTETELEFONE02'
      '            ,PAC.RG AS PACIENTERG'
      '            ,PAC.CPF AS PACIENTECPF'
      
        '            ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1' +
        ' ) / 365.25), 2) AS INT) AS PACIENTEIDADE'
      '            ,CON.CONVENIO AS DESCRICAOCONVENIO'
      '            ,AGE.INTERVALO'
      '  FROM VIRTUALAGENDA VAG'
      '             JOIN AGENDA AGE ON (AGE.IDAGENDA = VAG.IDAGENDA)'
      
        '             JOIN PACIENTE PAC ON (PAC.IDPACIENTE = VAG.IDPACIEN' +
        'TE)'
      '             JOIN DOUTOR DOU ON (DOU.IDDOUTOR = VAG.IDDOUTOR)'
      
        '             JOIN CONVENIO CON ON (CON.IDCONVENIO = VAG.IDCONVEN' +
        'IO)'
      ' WHERE 1 = 1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 64
    Top = 96
    object QryVirtualAgendaIDVIRTUALAGENDA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDVIRTUALAGENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryVirtualAgendaIDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Agenda'
      FieldName = 'IDAGENDA'
    end
    object QryVirtualAgendaIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
    end
    object QryVirtualAgendaIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
    end
    object QryVirtualAgendaIDCONVENIO: TIntegerField
      DisplayLabel = 'C'#243'd. Conv'#234'nio'
      FieldName = 'IDCONVENIO'
    end
    object QryVirtualAgendaDATAAGENDA: TDateField
      DisplayLabel = 'Data Agenda'
      FieldName = 'DATAAGENDA'
    end
    object QryVirtualAgendaHORAAGENDA: TTimeField
      DisplayLabel = 'Hor'#225'rio'
      FieldName = 'HORAAGENDA'
      EditMask = '!90:00;0;_'
    end
    object QryVirtualAgendaSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Size = 50
    end
    object QryVirtualAgendaSTATUSIMAGEM: TStringField
      DisplayLabel = 'Imagem'
      FieldName = 'STATUSIMAGEM'
      Size = 50
    end
    object QryVirtualAgendaMOTIVO: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      Size = 50
    end
    object QryVirtualAgendaDOUTORNOME: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object QryVirtualAgendaDOUTOREMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'DOUTOREMAIL'
      ProviderFlags = []
      Size = 100
    end
    object QryVirtualAgendaPACIENTENOME: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object QryVirtualAgendaPACIENTETELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QryVirtualAgendaPACIENTETELEFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QryVirtualAgendaPACIENTERG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object QryVirtualAgendaPACIENTECPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object QryVirtualAgendaPACIENTEIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object QryVirtualAgendaDESCRICAOCONVENIO: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'DESCRICAOCONVENIO'
      ProviderFlags = []
      Size = 100
    end
    object QryVirtualAgendaINTERVALO: TIntegerField
      DisplayLabel = 'Intervalo'
      FieldName = 'INTERVALO'
      ProviderFlags = []
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 880
    Top = 304
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmConexaoF.SQLConnection
    Left = 880
    Top = 288
  end
  object DspConsultaAgenda: TDataSetProvider
    DataSet = QryConsultaAgenda
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 112
  end
  object QryConsultaAgenda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmConexaoF.SQLConnection
    Left = 176
    Top = 96
  end
  object DspAgenda: TDataSetProvider
    DataSet = QryAgenda
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 296
    Top = 112
  end
  object QryAgenda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ' SELECT AGE.*'
      '             ,DOU.NOME AS DOUTORNOME'
      '             ,DOU.CRM AS DOUTORCRM'
      '             ,DOU.CPF AS DOUTORCPF'
      '             ,DOU.TELEFONE AS DOUTORTELEFONE'
      '             ,DOU.CELULAR AS DOUTORCELULAR'
      '             ,PAC.NOME AS PACIENTENOME'
      '             ,PAC.RG AS PACIENTERG'
      '             ,PAC.CPF AS PACIENTECPF'
      '             ,PAC.TELEFONE1 AS PACIENTETELEFONE01'
      '             ,PAC.TELEFONE2 AS PACIENTETELEFONE02'
      '             ,PAC.EMAIL AS PACIENTEEMAIL'
      
        '             ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-' +
        '1 ) / 365.25), 3) AS INT) PACIENTEIDADE'
      
        '             ,(CIDPAC.CIDADE || '#39' - '#39' || CIDPAC.UF) AS PACIENTEC' +
        'IDADEUF'
      '             ,CON.CONVENIO AS CONVENIO'
      '   FROM AGENDA AGE'
      '              JOIN DOUTOR DOU ON (DOU.IDDOUTOR = AGE.IDDOUTOR)'
      
        '              JOIN PACIENTE PAC ON (PAC.IDPACIENTE = AGE.IDPACIE' +
        'NTE)'
      
        '              LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.' +
        'IDCIDADE)'
      
        '              LEFT JOIN CONVENIO CON ON (CON.IDCONVENIO = AGE.ID' +
        'CONVENIO)'
      ' WHERE 1 = 1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 296
    Top = 96
    object QryAgendaIDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDAGENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryAgendaIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object QryAgendaIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object QryAgendaIDCONVENIO: TIntegerField
      DisplayLabel = 'C'#243'd. Conv'#234'nio'
      FieldName = 'IDCONVENIO'
    end
    object QryAgendaINTERVALO: TIntegerField
      DisplayLabel = 'Intervalo'
      FieldName = 'INTERVALO'
    end
    object QryAgendaIDENCAIXE: TSmallintField
      DisplayLabel = 'Encaixe'
      FieldName = 'IDENCAIXE'
      Required = True
    end
    object QryAgendaIDURGENTE: TSmallintField
      DisplayLabel = 'Urgente'
      FieldName = 'IDURGENTE'
      Required = True
    end
    object QryAgendaDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryAgendaDATAAGENDA: TDateField
      DisplayLabel = 'Data Agenda'
      FieldName = 'DATAAGENDA'
      Required = True
    end
    object QryAgendaHORAAGENDA: TTimeField
      DisplayLabel = 'Hora Agenda'
      FieldName = 'HORAAGENDA'
      Required = True
    end
    object QryAgendaHORACHEGADA: TTimeField
      DisplayLabel = 'Hora Chegada'
      FieldName = 'HORACHEGADA'
    end
    object QryAgendaHORAMANHAINICIAL: TTimeField
      DisplayLabel = 'Hora Inicial Manh'#227
      FieldName = 'HORAMANHAINICIAL'
    end
    object QryAgendaHORAMANHAFINAL: TTimeField
      DisplayLabel = 'Hora Final Manh'#227
      FieldName = 'HORAMANHAFINAL'
    end
    object QryAgendaHORATARDEINICIAL: TTimeField
      DisplayLabel = 'Hora Inicial Tarde'
      FieldName = 'HORATARDEINICIAL'
    end
    object QryAgendaHORATARDEFINAL: TTimeField
      DisplayLabel = 'Hora Final Tarde'
      FieldName = 'HORATARDEFINAL'
    end
    object QryAgendaSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Required = True
      Size = 80
    end
    object QryAgendaMOTIVO: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      Required = True
      Size = 80
    end
    object QryAgendaOBSERVACAO: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      Size = 26000
    end
    object QryAgendaDOUTORNOME: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object QryAgendaDOUTORCRM: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object QryAgendaDOUTORCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
    end
    object QryAgendaDOUTORTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
    end
    object QryAgendaDOUTORCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
    end
    object QryAgendaPACIENTENOME: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object QryAgendaPACIENTERG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object QryAgendaPACIENTECPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
    end
    object QryAgendaPACIENTETELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
    end
    object QryAgendaPACIENTETELEFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
    end
    object QryAgendaPACIENTEEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
    object QryAgendaPACIENTEIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object QryAgendaPACIENTECIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object QryAgendaCONVENIO: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'CONVENIO'
      ProviderFlags = []
      Size = 100
    end
  end
  object DspEvolucaoClinica: TDataSetProvider
    DataSet = QryEvolucaoClinica
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 216
  end
  object QryEvolucaoClinica: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PEV.*'
      '            ,PAC.NOME AS PACIENTENOME'
      '            ,PAC.RG AS PACIENTERG'
      '            ,PAC.CPF AS PACIENTECPF'
      '            ,PAC.TELEFONE1 AS PACIENTETELEFONE01'
      '            ,PAC.TELEFONE2 AS PACIENTETELEFONE02'
      '            ,PAC.DATANASCIMENTO AS PACIENTEDATANASCIMENTO'
      
        '            ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1' +
        ' ) / 365.25), 3) AS INT) PACIENTEIDADE'
      '            ,PAC.EMAIL AS PACIENTEEMAIL'
      
        '            ,(CIDPAC.CIDADE || '#39' - '#39' || CIDPAC.UF) AS PACIENTECI' +
        'DADEUF'
      '            ,DOU.NOME AS DOUTORNOME'
      '            ,DOU.CRM AS DOUTORCRM'
      '            ,DOU.CPF AS DOUTORCPF'
      '            ,DOU.TELEFONE AS DOUTORTELEFONE'
      '            ,DOU.CELULAR AS DOUTORCELULAR'
      '  FROM PACIENTEEVOLUCAO PEV'
      
        '            JOIN PACIENTE PAC ON (PAC.IDPACIENTE = PEV.IDPACIENT' +
        'E)'
      
        '             LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.I' +
        'DCIDADE)'
      '            JOIN DOUTOR DOU ON (DOU.IDDOUTOR = PEV.IDDOUTOR)'
      
        '            JOIN VALORNAOSIM RAS ON (RAS.IDVALORNAOSIM = PEV.IDR' +
        'ASCUNHO)'
      'WHERE 1 = -1'
      '   ')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 64
    Top = 201
    object QryEvolucaoClinicaIDPACIENTEEVOLUCAO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTEEVOLUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEvolucaoClinicaIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEvolucaoClinicaIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object QryEvolucaoClinicaIDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Agenda'
      FieldName = 'IDAGENDA'
      Required = True
    end
    object QryEvolucaoClinicaIDRASCUNHO: TSmallintField
      DisplayLabel = 'C'#243'd. Rascunho'
      FieldName = 'IDRASCUNHO'
      Required = True
    end
    object QryEvolucaoClinicaDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryEvolucaoClinicaHORAINCLUSAO: TTimeField
      DisplayLabel = 'Hora Inclus'#227'o'
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object QryEvolucaoClinicaEVOLUCAOCLINICA: TStringField
      DisplayLabel = 'Evolu'#231#227'o Cl'#237'nica'
      FieldName = 'EVOLUCAOCLINICA'
      Required = True
      Size = 26000
    end
    object QryEvolucaoClinicaPACIENTENOME: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object QryEvolucaoClinicaPACIENTERG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object QryEvolucaoClinicaPACIENTECPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object QryEvolucaoClinicaPACIENTETELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QryEvolucaoClinicaPACIENTETELEFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QryEvolucaoClinicaPACIENTEDATANASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'PACIENTEDATANASCIMENTO'
      ProviderFlags = []
    end
    object QryEvolucaoClinicaPACIENTEIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object QryEvolucaoClinicaPACIENTEEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
    object QryEvolucaoClinicaPACIENTECIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object QryEvolucaoClinicaDOUTORNOME: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object QryEvolucaoClinicaDOUTORCRM: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object QryEvolucaoClinicaDOUTORCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object QryEvolucaoClinicaDOUTORTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
    end
    object QryEvolucaoClinicaDOUTORCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
    end
  end
  object DspAtestadoMedico: TDataSetProvider
    DataSet = QryAtestadoMedico
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 440
  end
  object QryAtestadoMedico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ' select cast(0 as integer) as atestado_qtdedia'
      '       ,ate.hr_agenda as atestado_horario'
      '       ,cast('#39#39' as varchar(2000)) as atestado_descricaoinicial'
      '       ,cast('#39#39' as varchar(2000)) as atestado_descricao'
      '       ,pac.id_paciente as paciente_codigo'
      '       ,pac.ds_nome as paciente_nome'
      '       ,dou.id_equipe as doutor_codigo'
      '       ,dou.ds_nome as doutor_nome'
      '       ,dou.ds_crm as doutor_crm'
      '   from agendavirtual ate'
      '        join paciente pac on (pac.id_paciente = ate.id_paciente)'
      
        '        join equipe dou on (dou.id_equipe = ate.id_doutor and up' +
        'per(dou.tp_equipe) = '#39'DOUTOR'#39')'
      '  where 1 = 1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 64
    Top = 424
    object QryAtestadoMedicoATESTADO_QTDEDIA: TIntegerField
      FieldName = 'ATESTADO_QTDEDIA'
      ProviderFlags = []
    end
    object QryAtestadoMedicoATESTADO_HORARIO: TTimeField
      FieldName = 'ATESTADO_HORARIO'
      ProviderFlags = []
    end
    object QryAtestadoMedicoATESTADO_DESCRICAOINICIAL: TStringField
      FieldName = 'ATESTADO_DESCRICAOINICIAL'
      ProviderFlags = []
      Size = 2000
    end
    object QryAtestadoMedicoATESTADO_DESCRICAO: TStringField
      FieldName = 'ATESTADO_DESCRICAO'
      ProviderFlags = []
      Size = 2000
    end
    object QryAtestadoMedicoPACIENTE_CODIGO: TIntegerField
      FieldName = 'PACIENTE_CODIGO'
      ProviderFlags = []
    end
    object QryAtestadoMedicoPACIENTE_NOME: TStringField
      FieldName = 'PACIENTE_NOME'
      ProviderFlags = []
      Size = 100
    end
    object QryAtestadoMedicoDOUTOR_CODIGO: TIntegerField
      FieldName = 'DOUTOR_CODIGO'
      ProviderFlags = []
    end
    object QryAtestadoMedicoDOUTOR_NOME: TStringField
      FieldName = 'DOUTOR_NOME'
      ProviderFlags = []
      Size = 100
    end
    object QryAtestadoMedicoDOUTOR_CRM: TStringField
      FieldName = 'DOUTOR_CRM'
      ProviderFlags = []
      Size = 10
    end
  end
  object DspPrescricaoOculos: TDataSetProvider
    DataSet = QryPrescricaoOculos
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 592
    Top = 56
  end
  object QryPrescricaoOculos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PPL.*'
      '            ,DOU.NOME AS DOUTORNOME'
      '            ,DOU.CRM AS DOUTORCRM'
      '            ,DOU.RG AS DOUTORRG'
      '            ,DOU.CPF AS DOUTORCPF'
      '            ,DOU.TELEFONE AS DOUTORTELEFONE'
      '            ,DOU.CELULAR AS DOUTORCELULAR'
      '            ,PAC.NOME AS PACIENTENOME'
      '            ,PAC.RG AS PACIENTERG'
      '            ,PAC.CPF AS PACIENTECPF'
      '            ,PAC.TELEFONE1 AS PACIENTETELEFONE01'
      '            ,PAC.TELEFONE2 AS PACIENTETELEFONE02'
      '            ,PAC.DATANASCIMENTO AS PACIENTEDATANASCIMENTO'
      
        '            ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1' +
        ' ) / 365.25), 3) AS INT) PACIENTEIDADE'
      '            ,PAC.EMAIL AS PACIENTEEMAIL'
      '  FROM PACIENTEPRESCRICAOLENTE PPL'
      '            JOIN DOUTOR DOU ON (DOU.IDDOUTOR = PPL.IDDOUTOR)'
      
        '            JOIN PACIENTE PAC ON (PAC.IDPACIENTE = PPL.IDPACIENT' +
        'E)'
      ' WHERE 1 = -1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 592
    Top = 40
    object QryPrescricaoOculosIDPACIENTEPRESCRICAOLENTE: TIntegerField
      FieldName = 'IDPACIENTEPRESCRICAOLENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPrescricaoOculosIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPrescricaoOculosIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object QryPrescricaoOculosIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
    end
    object QryPrescricaoOculosDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryPrescricaoOculosHORAINCLUSAO: TTimeField
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object QryPrescricaoOculosLONGEODESF: TStringField
      FieldName = 'LONGEODESF'
      Size = 10
    end
    object QryPrescricaoOculosLONGEOEESF: TStringField
      FieldName = 'LONGEOEESF'
      Size = 10
    end
    object QryPrescricaoOculosLONGEODCIL: TStringField
      FieldName = 'LONGEODCIL'
      Size = 10
    end
    object QryPrescricaoOculosLONGEOECIL: TStringField
      FieldName = 'LONGEOECIL'
      Size = 10
    end
    object QryPrescricaoOculosLONGEODEIXO: TStringField
      FieldName = 'LONGEODEIXO'
      Size = 10
    end
    object QryPrescricaoOculosLONGEOEEIXO: TStringField
      FieldName = 'LONGEOEEIXO'
      Size = 10
    end
    object QryPrescricaoOculosLONGEODDP: TStringField
      FieldName = 'LONGEODDP'
      Size = 10
    end
    object QryPrescricaoOculosLONGEOEDP: TStringField
      FieldName = 'LONGEOEDP'
      Size = 10
    end
    object QryPrescricaoOculosPERTOODESF: TStringField
      FieldName = 'PERTOODESF'
      Size = 10
    end
    object QryPrescricaoOculosPERTOOEESF: TStringField
      FieldName = 'PERTOOEESF'
      Size = 10
    end
    object QryPrescricaoOculosPERTOODCIL: TStringField
      FieldName = 'PERTOODCIL'
      Size = 10
    end
    object QryPrescricaoOculosPERTOOECIL: TStringField
      FieldName = 'PERTOOECIL'
      Size = 10
    end
    object QryPrescricaoOculosPERTOODEIXO: TStringField
      FieldName = 'PERTOODEIXO'
      Size = 10
    end
    object QryPrescricaoOculosPERTOOEEIXO: TStringField
      FieldName = 'PERTOOEEIXO'
      Size = 10
    end
    object QryPrescricaoOculosPERTOODDP: TStringField
      FieldName = 'PERTOODDP'
      Size = 10
    end
    object QryPrescricaoOculosPERTOOEDP: TStringField
      FieldName = 'PERTOOEDP'
      Size = 10
    end
    object QryPrescricaoOculosADICAO: TStringField
      FieldName = 'ADICAO'
      Size = 10
    end
    object QryPrescricaoOculosDOUTORNOME: TStringField
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object QryPrescricaoOculosDOUTORCRM: TStringField
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object QryPrescricaoOculosDOUTORRG: TStringField
      FieldName = 'DOUTORRG'
      ProviderFlags = []
    end
    object QryPrescricaoOculosDOUTORCPF: TStringField
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
    end
    object QryPrescricaoOculosDOUTORTELEFONE: TStringField
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
    end
    object QryPrescricaoOculosDOUTORCELULAR: TStringField
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
    end
    object QryPrescricaoOculosPACIENTENOME: TStringField
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object QryPrescricaoOculosPACIENTERG: TStringField
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object QryPrescricaoOculosPACIENTECPF: TStringField
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
    end
    object QryPrescricaoOculosPACIENTETELEFONE01: TStringField
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
    end
    object QryPrescricaoOculosPACIENTETELEFONE02: TStringField
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
    end
    object QryPrescricaoOculosPACIENTEDATANASCIMENTO: TDateField
      FieldName = 'PACIENTEDATANASCIMENTO'
      ProviderFlags = []
    end
    object QryPrescricaoOculosPACIENTEIDADE: TIntegerField
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object QryPrescricaoOculosPACIENTEEMAIL: TStringField
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
  end
  object DspReceituario: TDataSetProvider
    DataSet = QryReceituario
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 63
    Top = 296
  end
  object QryReceituario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PRE.*'
      '            ,PAC.NOME AS PACIENTENOME'
      '            ,PAC.RG AS PACIENTERG'
      '            ,PAC.CPF AS PACIENTECPF'
      '            ,PAC.TELEFONE1 AS PACIENTETELEFONE01'
      '            ,PAC.TELEFONE2 AS PACIENTETELEFONE02'
      '            ,PAC.DATANASCIMENTO AS PACIENTEDATANASCIMENTO'
      
        '            ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1' +
        ' ) / 365.25), 3) AS INT) PACIENTEIDADE'
      '            ,PAC.EMAIL AS PACIENTEEMAIL'
      
        '            ,(CIDPAC.CIDADE || '#39' - '#39' || CIDPAC.UF) AS PACIENTECI' +
        'DADEUF'
      '            ,DOU.NOME AS DOUTORNOME'
      '            ,DOU.CRM AS DOUTORCRM'
      '            ,DOU.CPF AS DOUTORCPF'
      '            ,DOU.TELEFONE AS DOUTORTELEFONE'
      '            ,DOU.CELULAR AS DOUTORCELULAR'
      '  FROM PACIENTERECEITUARIO PRE'
      
        '            JOIN PACIENTE PAC ON (PAC.IDPACIENTE = PRE.IDPACIENT' +
        'E)'
      
        '            LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.ID' +
        'CIDADE)'
      '            JOIN DOUTOR DOU ON (DOU.IDDOUTOR = PRE.IDDOUTOR)'
      'WHERE 1 = -1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 63
    Top = 280
    object QryReceituarioIDPACIENTERECEITUARIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTERECEITUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryReceituarioIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryReceituarioIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object QryReceituarioIDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Agenda'
      FieldName = 'IDAGENDA'
      Required = True
    end
    object QryReceituarioDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryReceituarioHORAINCLUSAO: TTimeField
      DisplayLabel = 'Hora Inclus'#227'o'
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object QryReceituarioPACIENTENOME: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object QryReceituarioPACIENTERG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object QryReceituarioPACIENTECPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object QryReceituarioPACIENTETELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QryReceituarioPACIENTETELEFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QryReceituarioPACIENTEDATANASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'PACIENTEDATANASCIMENTO'
      ProviderFlags = []
    end
    object QryReceituarioPACIENTEIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object QryReceituarioPACIENTEEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
    object QryReceituarioPACIENTECIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object QryReceituarioDOUTORNOME: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object QryReceituarioDOUTORCRM: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object QryReceituarioDOUTORCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object QryReceituarioDOUTORTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
    end
    object QryReceituarioDOUTORCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
    end
  end
  object DspLaudoOftalmo: TDataSetProvider
    DataSet = QryLaudoOftalmo
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 592
    Top = 144
  end
  object QryLaudoOftalmo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PLO.*'
      '            ,DOU.NOME AS DOUTORNOME'
      '            ,DOU.CRM AS DOUTORCRM'
      '            ,DOU.RG AS DOUTORRG'
      '            ,DOU.CPF AS DOUTORCPF'
      '            ,DOU.TELEFONE AS DOUTORTELEFONE'
      '            ,DOU.CELULAR AS DOUTORCELULAR'
      '            ,PAC.NOME AS PACIENTENOME'
      '            ,PAC.RG AS PACIENTERG'
      '            ,PAC.CPF AS PACIENTECPF'
      '            ,PAC.TELEFONE1 AS PACIENTETELEFONE01'
      '            ,PAC.TELEFONE2 AS PACIENTETELEFONE02'
      '            ,PAC.DATANASCIMENTO AS PACIENTEDATANASCIMENTO'
      
        '            ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1' +
        ' ) / 365.25), 3) AS INT) PACIENTEIDADE'
      '            ,PAC.EMAIL AS PACIENTEEMAIL'
      '  FROM PACIENTELAUDOOFTALMO PLO'
      '            JOIN DOUTOR DOU ON (DOU.IDDOUTOR = PLO.IDDOUTOR)'
      
        '            JOIN PACIENTE PAC ON (PAC.IDPACIENTE = PLO.IDPACIENT' +
        'E)'
      ' WHERE 1 = 1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 592
    Top = 128
    object QryLaudoOftalmoIDPACIENTELAUDOOFTALMO: TIntegerField
      FieldName = 'IDPACIENTELAUDOOFTALMO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryLaudoOftalmoIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryLaudoOftalmoIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object QryLaudoOftalmoIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
      Required = True
    end
    object QryLaudoOftalmoIDAPTO: TSmallintField
      FieldName = 'IDAPTO'
      Required = True
    end
    object QryLaudoOftalmoDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryLaudoOftalmoHORAINCLUSAO: TTimeField
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object QryLaudoOftalmoACUIDADEODCOMCORRECAO: TStringField
      FieldName = 'ACUIDADEODCOMCORRECAO'
      Size = 10
    end
    object QryLaudoOftalmoACUIDADEOECOMCORRECAO: TStringField
      FieldName = 'ACUIDADEOECOMCORRECAO'
      Size = 10
    end
    object QryLaudoOftalmoACUIDADEODSEMCORRECAO: TStringField
      FieldName = 'ACUIDADEODSEMCORRECAO'
      Size = 10
    end
    object QryLaudoOftalmoACUIDADEOESEMCORRECAO: TStringField
      FieldName = 'ACUIDADEOESEMCORRECAO'
      Size = 10
    end
    object QryLaudoOftalmoTONOMETRIAOD: TStringField
      FieldName = 'TONOMETRIAOD'
      Size = 10
    end
    object QryLaudoOftalmoTONOMETRIAOE: TStringField
      FieldName = 'TONOMETRIAOE'
      Size = 10
    end
    object QryLaudoOftalmoFUNDOSCOPIAOD: TStringField
      FieldName = 'FUNDOSCOPIAOD'
      Size = 10
    end
    object QryLaudoOftalmoFUNDOSCOPIAOE: TStringField
      FieldName = 'FUNDOSCOPIAOE'
      Size = 10
    end
    object QryLaudoOftalmoDOUTORNOME: TStringField
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object QryLaudoOftalmoDOUTORCRM: TStringField
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object QryLaudoOftalmoDOUTORRG: TStringField
      FieldName = 'DOUTORRG'
      ProviderFlags = []
    end
    object QryLaudoOftalmoDOUTORCPF: TStringField
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
    end
    object QryLaudoOftalmoDOUTORTELEFONE: TStringField
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
    end
    object QryLaudoOftalmoDOUTORCELULAR: TStringField
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
    end
    object QryLaudoOftalmoPACIENTENOME: TStringField
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object QryLaudoOftalmoPACIENTERG: TStringField
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object QryLaudoOftalmoPACIENTECPF: TStringField
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
    end
    object QryLaudoOftalmoPACIENTETELEFONE01: TStringField
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
    end
    object QryLaudoOftalmoPACIENTETELEFONE02: TStringField
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
    end
    object QryLaudoOftalmoPACIENTEDATANASCIMENTO: TDateField
      FieldName = 'PACIENTEDATANASCIMENTO'
      ProviderFlags = []
    end
    object QryLaudoOftalmoPACIENTEIDADE: TIntegerField
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object QryLaudoOftalmoPACIENTEEMAIL: TStringField
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
  end
  object DspSolicitacaoExame: TDataSetProvider
    DataSet = QrySolicitacaoExame
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 63
    Top = 368
  end
  object QrySolicitacaoExame: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ''
      'SELECT pex.*'
      '            ,PAC.NOME AS PACIENTENOME'
      '            ,PAC.RG AS PACIENTERG'
      '            ,PAC.CPF AS PACIENTECPF'
      '            ,PAC.TELEFONE1 AS PACIENTETELEFONE01'
      '            ,PAC.TELEFONE2 AS PACIENTETELEFONE02'
      '            ,PAC.DATANASCIMENTO AS PACIENTEDATANASCIMENTO'
      
        '            ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1' +
        ' ) / 365.25), 3) AS INT) PACIENTEIDADE'
      '            ,PAC.EMAIL AS PACIENTEEMAIL'
      
        '            ,(CIDPAC.CIDADE || '#39' - '#39' || CIDPAC.UF) AS PACIENTECI' +
        'DADEUF'
      '            ,DOU.NOME AS DOUTORNOME'
      '            ,DOU.CRM AS DOUTORCRM'
      '            ,DOU.CPF AS DOUTORCPF'
      '            ,DOU.TELEFONE AS DOUTORTELEFONE'
      '            ,DOU.CELULAR AS DOUTORCELULAR'
      '  FROM pacienteexame pex'
      
        '            JOIN PACIENTE PAC ON (PAC.IDPACIENTE = pex.IDPACIENT' +
        'E)'
      
        '             LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.I' +
        'DCIDADE)'
      '            JOIN DOUTOR DOU ON (DOU.IDDOUTOR = pex.IDDOUTOR)'
      'WHERE 1 = -1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 63
    Top = 352
    object QrySolicitacaoExameIDPACIENTEEXAME: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTEEXAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrySolicitacaoExameIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrySolicitacaoExameIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object QrySolicitacaoExameIDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Agenda'
      FieldName = 'IDAGENDA'
      Required = True
    end
    object QrySolicitacaoExameDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QrySolicitacaoExameHORAINCLUSAO: TTimeField
      DisplayLabel = 'Hora Inclus'#227'o'
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object QrySolicitacaoExamePACIENTENOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object QrySolicitacaoExamePACIENTERG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object QrySolicitacaoExamePACIENTECPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object QrySolicitacaoExamePACIENTETELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QrySolicitacaoExamePACIENTETELEFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QrySolicitacaoExamePACIENTEDATANASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'PACIENTEDATANASCIMENTO'
      ProviderFlags = []
    end
    object QrySolicitacaoExamePACIENTEIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object QrySolicitacaoExamePACIENTEEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
    object QrySolicitacaoExamePACIENTECIDADEUF: TStringField
      DisplayLabel = 'Cidade - UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object QrySolicitacaoExameDOUTORNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object QrySolicitacaoExameDOUTORCRM: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object QrySolicitacaoExameDOUTORCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object QrySolicitacaoExameDOUTORTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QrySolicitacaoExameDOUTORCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLQuery2
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 887
    Top = 392
  end
  object SQLQuery2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ' select pre.*'
      '            ,DOU.DS_NOME AS DOUTOR_NOME'
      '            ,DOU.DS_CRM AS DOUTOR_CRM'
      '            ,DOU.DS_RG AS DOUTOR_RG'
      '            ,DOU.DS_CPF AS DOUTOR_CPF'
      '            ,DOU.DS_TELEFONE AS DOUTOR_TELEFONE'
      '            ,DOU.DS_CELULAR AS DOUTOR_CELULAR'
      '            ,PAC.DS_NOME AS PACIENTE_NOME'
      '            ,PAC.DS_RG AS PACIENTE_RG'
      '            ,PAC.DS_CPF AS PACIENTE_CPF'
      '            ,PAC.DS_TELEFONE1 AS PACIENTE_TELEFONE01'
      '            ,PAC.DS_TELEFONE2 AS PACIENTE_TELEFONE02'
      '            ,PAC.DT_NASCIMENTO AS PACIENTE_DATANASCIMENTO'
      
        '            ,CAST(LEFT( (( (CURRENT_DATE - PAC.DT_NASCIMENTO)-1 ' +
        ') / 365.25), 2) AS INT) PACIENTE_IDADE'
      '            ,PAC.DS_EMAIL AS PACIENTE_EMAIL'
      '  from paciente_receituario pre'
      
        '            JOIN EQUIPE DOU ON (DOU.ID_EQUIPE = PRE.ID_DOUTOR AN' +
        'D UPPER(DOU.TP_EQUIPE) = '#39'DOUTOR'#39')'
      
        '            JOIN PACIENTE PAC ON (PAC.ID_PACIENTE = PRE.ID_PACIE' +
        'NTE)'
      ' where 1 = -1;')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 887
    Top = 376
  end
  object DspMedicamento: TDataSetProvider
    DataSet = QryMedicamento
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 864
    Top = 48
  end
  object QryMedicamento: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT MED.*'
      '            ,MUS.DESCRICAO AS MEDICAMENTOUSO'
      '            ,MQT.DESCRICAO AS MEDICAMENTOQTDE'
      '            ,SRE.DESCRICAO AS SITUACAOREGISTRO'
      '  FROM MEDICAMENTO MED'
      
        '            JOIN MEDICAMENTOUSO MUS ON (MUS.IDMEDICAMENTOUSO = M' +
        'ED.IDMEDICAMENTOUSO)'
      
        '            JOIN MEDICAMENTOQTDE MQT ON (MQT.IDMEDICAMENTOQTDE =' +
        ' MED.IDMEDICAMENTOQTDE)'
      
        '            JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO' +
        ' = MED.IDSITUACAOREGISTRO)'
      ' WHERE 1 = 1'
      '   AND MED.IDSITUACAOREGISTRO = 1'
      ' ORDER BY DESCRICAO, MUS.DESCRICAO, SRE.DESCRICAO')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 864
    Top = 32
    object QryMedicamentoIDMEDICAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDMEDICAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMedicamentoIDMEDICAMENTOQTDE: TIntegerField
      DisplayLabel = 'C'#243'd. Medicamento Qtde'
      FieldName = 'IDMEDICAMENTOQTDE'
      Required = True
    end
    object QryMedicamentoIDMEDICAMENTOUSO: TIntegerField
      DisplayLabel = 'C'#243'd. Medicamento Uso'
      FieldName = 'IDMEDICAMENTOUSO'
      Required = True
    end
    object QryMedicamentoIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryMedicamentoDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryMedicamentoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 400
    end
    object QryMedicamentoPOSOLOGIA: TStringField
      DisplayLabel = 'Posologia'
      FieldName = 'POSOLOGIA'
      Required = True
      Size = 400
    end
    object QryMedicamentoMEDICAMENTOUSO: TStringField
      DisplayLabel = 'Uso'
      FieldName = 'MEDICAMENTOUSO'
      ProviderFlags = []
      Size = 100
    end
    object QryMedicamentoMEDICAMENTOQTDE: TStringField
      DisplayLabel = 'Quantidade'
      FieldName = 'MEDICAMENTOQTDE'
      ProviderFlags = []
      Size = 100
    end
    object QryMedicamentoSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
  object DspExame: TDataSetProvider
    DataSet = QryExame
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 864
    Top = 136
  end
  object QryExame: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT EXA.*'
      '           ,SRE.DESCRICAO AS SITUACAOREGISTRO'
      '  FROM EXAME EXA'
      
        '            JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO' +
        ' = EXA.IDSITUACAOREGISTRO)'
      'WHERE 1 = 1'
      '  AND EXA.IDSITUACAOREGISTRO = 1'
      'ORDER BY EXA.DESCRICAO')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 864
    Top = 120
    object QryExameIDEXAME: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDEXAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryExameIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryExameDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryExameDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object QryExameSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
  object DspSolicitacaoExamePedido: TDataSetProvider
    DataSet = QrySolicitacaoExamePedido
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 183
    Top = 368
  end
  object QrySolicitacaoExamePedido: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select pes.*'
      '      ,exa.descricao as examedescricao'
      '  from pacienteexamesolicitado pes'
      '       join exame exa on (exa.idexame = pes.idexame)'
      ' where 1 = -1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 183
    Top = 352
    object QrySolicitacaoExamePedidoIDPACIENTEEXAMESOLICITADO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTEEXAMESOLICITADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrySolicitacaoExamePedidoIDPACIENTEEXAME: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente Exame'
      FieldName = 'IDPACIENTEEXAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrySolicitacaoExamePedidoIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrySolicitacaoExamePedidoIDEXAME: TIntegerField
      DisplayLabel = 'C'#243'd. Exame'
      FieldName = 'IDEXAME'
      Required = True
    end
    object QrySolicitacaoExamePedidoEXAMEDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'EXAMEDESCRICAO'
      ProviderFlags = []
      Size = 100
    end
  end
  object DspReceituarioPedido: TDataSetProvider
    DataSet = QryReceituarioPedido
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 183
    Top = 296
  end
  object QryReceituarioPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select pru.*'
      '            ,MED.DESCRICAO AS MEDICAMENTO'
      '            ,MUS.DESCRICAO AS MEDICAMENTOUSO'
      '            ,MQT.DESCRICAO AS MEDICAMENTOQTDE'
      ''
      '  from pacientereceituariouso pru'
      
        '            JOIN MEDICAMENTO MED ON (MED.idmedicamento = PRU.idm' +
        'edicamento)'
      
        '            JOIN MEDICAMENTOUSO MUS ON (MUS.IDMEDICAMENTOUSO = M' +
        'ED.IDMEDICAMENTOUSO)'
      
        '            JOIN MEDICAMENTOQTDE MQT ON (MQT.IDMEDICAMENTOQTDE =' +
        ' MED.IDMEDICAMENTOQTDE)'
      ' where 1 = -1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 183
    Top = 280
    object QryReceituarioPedidoIDPACIENTERECEITUARIOUSO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTERECEITUARIOUSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryReceituarioPedidoIDPACIENTERECEITUARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Receitu'#225'rio Paciente'
      FieldName = 'IDPACIENTERECEITUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryReceituarioPedidoIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryReceituarioPedidoIDMEDICAMENTO: TIntegerField
      DisplayLabel = 'C'#243'd. Medicamento'
      FieldName = 'IDMEDICAMENTO'
      Required = True
    end
    object QryReceituarioPedidoPOSOLOGIA: TStringField
      DisplayLabel = 'Posologia'
      FieldName = 'POSOLOGIA'
      Size = 200
    end
    object QryReceituarioPedidoMEDICAMENTO: TStringField
      DisplayLabel = 'Medicamento'
      FieldName = 'MEDICAMENTO'
      ProviderFlags = []
      Size = 400
    end
    object QryReceituarioPedidoMEDICAMENTOUSO: TStringField
      DisplayLabel = 'Uso'
      FieldName = 'MEDICAMENTOUSO'
      ProviderFlags = []
      Size = 100
    end
    object QryReceituarioPedidoMEDICAMENTOQTDE: TStringField
      DisplayLabel = 'Quantidade'
      FieldName = 'MEDICAMENTOQTDE'
      ProviderFlags = []
      Size = 100
    end
  end
  object DspPaciente: TDataSetProvider
    DataSet = QryPaciente
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 424
    Top = 440
  end
  object QryPaciente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ' SELECT PAC.*'
      
        '             ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-' +
        '1 ) / 365.25), 2) AS INT) AS IDADE'
      '            ,(CID.CIDADE || '#39' - '#39' || CID.UF) AS CIDADEUF'
      '            ,SRE.DESCRICAO AS SITUACAOREGISTRO'
      '  FROM PACIENTE PAC'
      
        '            LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PAC.IDCIDADE' +
        ')'
      
        '            JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO' +
        ' = PAC.IDSITUACAOREGISTRO)'
      ' WHERE 1 = 1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 424
    Top = 424
    object QryPacienteIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPacienteIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'IDCIDADE'
    end
    object QryPacienteIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryPacienteDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
    end
    object QryPacienteDATANASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'DATANASCIMENTO'
    end
    object QryPacienteNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
    end
    object QryPacienteESTADOCIVIL: TStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'ESTADOCIVIL'
      Required = True
      Size = 50
    end
    object QryPacienteSEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      Required = True
      Size = 16
    end
    object QryPacienteOBSERVACAO: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      Size = 26000
    end
    object QryPacienteNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object QryPacienteENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 100
    end
    object QryPacienteBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QryPacienteEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 100
    end
    object QryPacienteCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object QryPacienteRG: TStringField
      FieldName = 'RG'
    end
    object QryPacienteCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999\.999\.999\-99;0;_'
    end
    object QryPacienteTELEFONE1: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'TELEFONE1'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QryPacienteTELEFONE2: TStringField
      DisplayLabel = 'Teleone 02'
      FieldName = 'TELEFONE2'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QryPacienteCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999\-999;0;_'
      Size = 10
    end
    object QryPacienteIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'IDADE'
      ProviderFlags = []
    end
    object QryPacienteCIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'CIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object QryPacienteSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
  object DsQryPaciente: TDataSource
    DataSet = QryPaciente
    Left = 520
    Top = 440
  end
  object QryPacienteConvenio: TSQLQuery
    DataSource = DsQryPaciente
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPACIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select pco.*'
      '      ,con.convenio as convenio'
      '      ,vsn.descricao as Principal'
      '      ,sre.descricao as situacaoregistro'
      '  from pacienteconvenio pco'
      '       join convenio con on (con.idconvenio = pco.idconvenio)'
      
        '       join valornaosim vsn on (vsn.idvalornaosim = pco.idprinci' +
        'pal)'
      
        '       join situacaoregistro sre on (sre.idsituacaoregistro = pc' +
        'o.idsituacaoregistro)'
      ' where 1 = 1'
      '   and pco.idpaciente = :idpaciente')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 520
    Top = 424
    object QryPacienteConvenioIDPACIENTECONVENIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTECONVENIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPacienteConvenioIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPacienteConvenioIDCONVENIO: TIntegerField
      DisplayLabel = 'C'#243'digo Conv'#234'nio'
      FieldName = 'IDCONVENIO'
      Required = True
    end
    object QryPacienteConvenioIDPRINCIPAL: TSmallintField
      DisplayLabel = 'C'#243'd. Principal'
      FieldName = 'IDPRINCIPAL'
      Required = True
    end
    object QryPacienteConvenioIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryPacienteConvenioDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryPacienteConvenioCONVENIO: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'CONVENIO'
      ProviderFlags = []
      Size = 100
    end
    object QryPacienteConvenioPRINCIPAL: TStringField
      DisplayLabel = 'Principal'
      FieldName = 'PRINCIPAL'
      ProviderFlags = []
      Size = 50
    end
    object QryPacienteConvenioSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
  object QryPacienteEvolucaoClinica: TSQLQuery
    DataSource = DsQryPaciente
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPACIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PEV.*'
      '            ,PAC.NOME AS PACIENTENOME'
      '            ,PAC.RG AS PACIENTERG'
      '            ,PAC.CPF AS PACIENTECPF'
      '            ,PAC.TELEFONE1 AS PACIENTETELEFONE01'
      '            ,PAC.TELEFONE2 AS PACIENTETELEFONE02'
      '            ,PAC.DATANASCIMENTO AS PACIENTEDATANASCIMENTO'
      
        '            ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1' +
        ' ) / 365.25), 3) AS INT) PACIENTEIDADE'
      '            ,PAC.EMAIL AS PACIENTEEMAIL'
      
        '            ,(CIDPAC.CIDADE || '#39' - '#39' || CIDPAC.UF) AS PACIENTECI' +
        'DADEUF'
      '            ,DOU.NOME AS DOUTORNOME'
      '            ,DOU.CRM AS DOUTORCRM'
      '            ,DOU.CPF AS DOUTORCPF'
      '            ,DOU.TELEFONE AS DOUTORTELEFONE'
      '            ,DOU.CELULAR AS DOUTORCELULAR'
      '  FROM PACIENTEEVOLUCAO PEV'
      
        '            JOIN PACIENTE PAC ON (PAC.IDPACIENTE = PEV.IDPACIENT' +
        'E)'
      
        '             LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.I' +
        'DCIDADE)'
      '            JOIN DOUTOR DOU ON (DOU.IDDOUTOR = PEV.IDDOUTOR)'
      
        '            JOIN VALORNAOSIM RAS ON (RAS.IDVALORNAOSIM = PEV.IDR' +
        'ASCUNHO)'
      'WHERE 1 = 1'
      '      AND pev.idpaciente = :idpaciente'
      '   ')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 520
    Top = 409
    object IntegerField1: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTEEVOLUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object IntegerField4: TIntegerField
      DisplayLabel = 'C'#243'd. Agenda'
      FieldName = 'IDAGENDA'
      Required = True
    end
    object SmallintField1: TSmallintField
      DisplayLabel = 'C'#243'd. Rascunho'
      FieldName = 'IDRASCUNHO'
      Required = True
    end
    object DateField1: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object TimeField1: TTimeField
      DisplayLabel = 'Hora Inclus'#227'o'
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object StringField1: TStringField
      DisplayLabel = 'Evolu'#231#227'o Cl'#237'nica'
      FieldName = 'EVOLUCAOCLINICA'
      Required = True
      Size = 26000
    end
    object StringField2: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object StringField3: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object StringField4: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object StringField5: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object StringField6: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object DateField2: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'PACIENTEDATANASCIMENTO'
      ProviderFlags = []
    end
    object IntegerField5: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object StringField7: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
    object StringField8: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object StringField9: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object StringField10: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object StringField11: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object StringField12: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
    end
    object StringField13: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
    end
  end
  object QryPacienteReceituario: TSQLQuery
    DataSource = DsQryPaciente
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPACIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PRE.*'
      '            ,PAC.NOME AS PACIENTENOME'
      '            ,PAC.RG AS PACIENTERG'
      '            ,PAC.CPF AS PACIENTECPF'
      '            ,PAC.TELEFONE1 AS PACIENTETELEFONE01'
      '            ,PAC.TELEFONE2 AS PACIENTETELEFONE02'
      '            ,PAC.DATANASCIMENTO AS PACIENTEDATANASCIMENTO'
      
        '            ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1' +
        ' ) / 365.25), 3) AS INT) PACIENTEIDADE'
      '            ,PAC.EMAIL AS PACIENTEEMAIL'
      
        '            ,(CIDPAC.CIDADE || '#39' - '#39' || CIDPAC.UF) AS PACIENTECI' +
        'DADEUF'
      '            ,DOU.NOME AS DOUTORNOME'
      '            ,DOU.CRM AS DOUTORCRM'
      '            ,DOU.CPF AS DOUTORCPF'
      '            ,DOU.TELEFONE AS DOUTORTELEFONE'
      '            ,DOU.CELULAR AS DOUTORCELULAR'
      '  FROM PACIENTERECEITUARIO PRE'
      
        '            JOIN PACIENTE PAC ON (PAC.IDPACIENTE = PRE.IDPACIENT' +
        'E)'
      
        '            LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.ID' +
        'CIDADE)'
      '            JOIN DOUTOR DOU ON (DOU.IDDOUTOR = PRE.IDDOUTOR)'
      'WHERE 1 = 1'
      '      AND PRE.idpaciente = :idpaciente')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 519
    Top = 392
    object IntegerField6: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTERECEITUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField7: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField8: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object IntegerField9: TIntegerField
      DisplayLabel = 'C'#243'd. Agenda'
      FieldName = 'IDAGENDA'
      Required = True
    end
    object DateField3: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object TimeField2: TTimeField
      DisplayLabel = 'Hora Inclus'#227'o'
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object StringField14: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object StringField15: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object StringField16: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object StringField17: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object StringField18: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object DateField4: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'PACIENTEDATANASCIMENTO'
      ProviderFlags = []
    end
    object IntegerField10: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object StringField19: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
    object StringField20: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object StringField21: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object StringField22: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object StringField23: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object StringField24: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
    end
    object StringField25: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
    end
  end
  object DsQryPacienteReceituario: TDataSource
    DataSet = QryPacienteReceituario
    Left = 656
    Top = 392
  end
  object QryPacienteReceituarioPedido: TSQLQuery
    DataSource = DsQryPacienteReceituario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPACIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IDPACIENTERECEITUARIO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select pru.*'
      '            ,MED.DESCRICAO AS MEDICAMENTO'
      '            ,MUS.DESCRICAO AS MEDICAMENTOUSO'
      '            ,MQT.DESCRICAO AS MEDICAMENTOQTDE'
      ''
      '  from pacientereceituariouso pru'
      
        '            JOIN MEDICAMENTO MED ON (MED.idmedicamento = PRU.idm' +
        'edicamento)'
      
        '            JOIN MEDICAMENTOUSO MUS ON (MUS.IDMEDICAMENTOUSO = M' +
        'ED.IDMEDICAMENTOUSO)'
      
        '            JOIN MEDICAMENTOQTDE MQT ON (MQT.IDMEDICAMENTOQTDE =' +
        ' MED.IDMEDICAMENTOQTDE)'
      ' where 1 = 1'
      '   AND pru.idpaciente = :idpaciente'
      '   AND pru.idpacientereceituario = :idpacientereceituario')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 655
    Top = 378
    object IntegerField11: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTERECEITUARIOUSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField12: TIntegerField
      DisplayLabel = 'C'#243'd. Receitu'#225'rio Paciente'
      FieldName = 'IDPACIENTERECEITUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField13: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField14: TIntegerField
      DisplayLabel = 'C'#243'd. Medicamento'
      FieldName = 'IDMEDICAMENTO'
      Required = True
    end
    object StringField26: TStringField
      DisplayLabel = 'Posologia'
      FieldName = 'POSOLOGIA'
      Size = 200
    end
    object StringField27: TStringField
      DisplayLabel = 'Medicamento'
      FieldName = 'MEDICAMENTO'
      ProviderFlags = []
      Size = 400
    end
    object StringField28: TStringField
      DisplayLabel = 'Uso'
      FieldName = 'MEDICAMENTOUSO'
      ProviderFlags = []
      Size = 100
    end
    object StringField29: TStringField
      DisplayLabel = 'Quantidade'
      FieldName = 'MEDICAMENTOQTDE'
      ProviderFlags = []
      Size = 100
    end
  end
  object QryPacienteExame: TSQLQuery
    DataSource = DsQryPaciente
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPACIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      ''
      'SELECT pex.*'
      '            ,PAC.NOME AS PACIENTENOME'
      '            ,PAC.RG AS PACIENTERG'
      '            ,PAC.CPF AS PACIENTECPF'
      '            ,PAC.TELEFONE1 AS PACIENTETELEFONE01'
      '            ,PAC.TELEFONE2 AS PACIENTETELEFONE02'
      '            ,PAC.DATANASCIMENTO AS PACIENTEDATANASCIMENTO'
      
        '            ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1' +
        ' ) / 365.25), 3) AS INT) PACIENTEIDADE'
      '            ,PAC.EMAIL AS PACIENTEEMAIL'
      
        '            ,(CIDPAC.CIDADE || '#39' - '#39' || CIDPAC.UF) AS PACIENTECI' +
        'DADEUF'
      '            ,DOU.NOME AS DOUTORNOME'
      '            ,DOU.CRM AS DOUTORCRM'
      '            ,DOU.CPF AS DOUTORCPF'
      '            ,DOU.TELEFONE AS DOUTORTELEFONE'
      '            ,DOU.CELULAR AS DOUTORCELULAR'
      '  FROM pacienteexame pex'
      
        '            JOIN PACIENTE PAC ON (PAC.IDPACIENTE = pex.IDPACIENT' +
        'E)'
      
        '             LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.I' +
        'DCIDADE)'
      '            JOIN DOUTOR DOU ON (DOU.IDDOUTOR = pex.IDDOUTOR)'
      'WHERE 1 = 1'
      '      AND pex.idpaciente = :idpaciente')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 516
    Top = 375
    object IntegerField15: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTEEXAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField16: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField17: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object IntegerField18: TIntegerField
      DisplayLabel = 'C'#243'd. Agenda'
      FieldName = 'IDAGENDA'
      Required = True
    end
    object DateField5: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object TimeField3: TTimeField
      DisplayLabel = 'Hora Inclus'#227'o'
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object StringField30: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object StringField31: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object StringField32: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object StringField33: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object StringField34: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object DateField6: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'PACIENTEDATANASCIMENTO'
      ProviderFlags = []
    end
    object IntegerField19: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object StringField35: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
    object StringField36: TStringField
      DisplayLabel = 'Cidade - UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object StringField37: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object StringField38: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object StringField39: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object StringField40: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object StringField41: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
  end
  object DsQryPacienteExame: TDataSource
    DataSet = QryPacienteExame
    Left = 656
    Top = 328
  end
  object QryPacienteExamePedido: TSQLQuery
    DataSource = DsQryPacienteExame
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPACIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IDPACIENTEEXAME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select pes.*'
      '      ,exa.descricao as examedescricao'
      '  from pacienteexamesolicitado pes'
      '       join exame exa on (exa.idexame = pes.idexame)'
      ' where 1 = 1'
      '   AND pes.idpaciente = :idpaciente'
      '   AND pes.idpacienteexame = :idpacienteexame')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 655
    Top = 312
    object QryPacienteExamePedidoIDPACIENTEEXAMESOLICITADO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTEEXAMESOLICITADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPacienteExamePedidoIDPACIENTEEXAME: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente Exame'
      FieldName = 'IDPACIENTEEXAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPacienteExamePedidoIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPacienteExamePedidoIDEXAME: TIntegerField
      DisplayLabel = 'C'#243'd. Exame'
      FieldName = 'IDEXAME'
      Required = True
    end
    object QryPacienteExamePedidoEXAMEDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'EXAMEDESCRICAO'
      ProviderFlags = []
      Size = 100
    end
  end
  object DspAgendaFoto: TDataSetProvider
    DataSet = QryAgendaFoto
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 311
    Top = 224
  end
  object QryAgendaFoto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PFO.*'
      '            ,PAC.NOME AS PACIENTENOME'
      '            ,PAC.RG AS PACIENTERG'
      '            ,PAC.CPF AS PACIENTECPF'
      '            ,PAC.TELEFONE1 AS PACIENTETELEFONE01'
      '            ,PAC.TELEFONE2 AS PACIENTETELEFONE02'
      '            ,PAC.DATANASCIMENTO AS PACIENTEDATANASCIMENTO'
      
        '            ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1' +
        ' ) / 365.25), 3) AS INT) PACIENTEIDADE'
      '            ,PAC.EMAIL AS PACIENTEEMAIL'
      
        '            ,(CIDPAC.CIDADE || '#39' - '#39' || CIDPAC.UF) AS PACIENTECI' +
        'DADEUF'
      '            ,DOU.NOME AS DOUTORNOME'
      '            ,DOU.CRM AS DOUTORCRM'
      '            ,DOU.CPF AS DOUTORCPF'
      '            ,DOU.TELEFONE AS DOUTORTELEFONE'
      '            ,DOU.CELULAR AS DOUTORCELULAR'
      '  FROM pacientefoto PFO'
      
        '            JOIN PACIENTE PAC ON (PAC.IDPACIENTE = PFO.IDPACIENT' +
        'E)'
      
        '            LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.ID' +
        'CIDADE)'
      '            JOIN DOUTOR DOU ON (DOU.IDDOUTOR = PFO.IDDOUTOR)'
      'WHERE 1 = -1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 311
    Top = 208
    object QryAgendaFotoIDPACIENTEFOTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTEFOTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField21: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField22: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object IntegerField23: TIntegerField
      DisplayLabel = 'C'#243'd. Agenda'
      FieldName = 'IDAGENDA'
      Required = True
    end
    object DateField7: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object TimeField4: TTimeField
      DisplayLabel = 'Hora Inclus'#227'o'
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object StringField42: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object StringField43: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object StringField44: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object StringField45: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object StringField46: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object DateField8: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'PACIENTEDATANASCIMENTO'
      ProviderFlags = []
    end
    object IntegerField24: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object StringField47: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
    object StringField48: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object StringField49: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object StringField50: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object StringField51: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object StringField52: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
    end
    object StringField53: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
    end
    object QryAgendaFotoOSERVACAO: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OSERVACAO'
      Size = 25000
    end
  end
  object DspAgendaFotoItem: TDataSetProvider
    DataSet = QryAgendaFotoItem
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DspAgendaFotoItemBeforeUpdateRecord
    Left = 407
    Top = 224
  end
  object QryAgendaFotoItem: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select pfi.*'
      '      ,CAST('#39#39' AS VARCHAR(200)) AS PACIENTENOME'
      '      ,CAST('#39#39' AS VARCHAR(500)) AS DIRETORIOORIGEM'
      '      ,CURRENT_DATE AS DATAAGENDA'
      '  from pacientefotoitem pfi'
      ' where 1 = -1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 407
    Top = 208
    object QryAgendaFotoItemIDPACIENTEFOTOITEM: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTEFOTOITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryAgendaFotoItemIDPACIENTEFOTO: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente Foto'
      FieldName = 'IDPACIENTEFOTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryAgendaFotoItemIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryAgendaFotoItemFOTODESCRICAO: TStringField
      DisplayLabel = 'Nome Foto'
      FieldName = 'FOTODESCRICAO'
      Required = True
      Size = 100
    end
    object QryAgendaFotoItemFOTOBINARIO: TBlobField
      DisplayLabel = 'Foto Bin'#225'rio'
      FieldName = 'FOTOBINARIO'
      Required = True
      Size = 1
    end
    object QryAgendaFotoItemOBSERVACAO: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      Size = 26000
    end
    object QryAgendaFotoItemPACIENTENOME: TStringField
      DisplayLabel = 'Paciente Nome'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 200
    end
    object QryAgendaFotoItemDIRETORIOORIGEM: TStringField
      DisplayLabel = 'Diretorio Origem'
      FieldName = 'DIRETORIOORIGEM'
      ProviderFlags = []
      Size = 500
    end
    object QryAgendaFotoItemDATAAGENDA: TDateField
      DisplayLabel = 'Data Agenda'
      FieldName = 'DATAAGENDA'
      ProviderFlags = []
    end
  end
  object QryPacienteFoto: TSQLQuery
    DataSource = DsQryPaciente
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPACIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT PFO.*'
      '            ,PAC.NOME AS PACIENTENOME'
      '            ,PAC.RG AS PACIENTERG'
      '            ,PAC.CPF AS PACIENTECPF'
      '            ,PAC.TELEFONE1 AS PACIENTETELEFONE01'
      '            ,PAC.TELEFONE2 AS PACIENTETELEFONE02'
      '            ,PAC.DATANASCIMENTO AS PACIENTEDATANASCIMENTO'
      
        '            ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1' +
        ' ) / 365.25), 3) AS INT) PACIENTEIDADE'
      '            ,PAC.EMAIL AS PACIENTEEMAIL'
      
        '            ,(CIDPAC.CIDADE || '#39' - '#39' || CIDPAC.UF) AS PACIENTECI' +
        'DADEUF'
      '            ,DOU.NOME AS DOUTORNOME'
      '            ,DOU.CRM AS DOUTORCRM'
      '            ,DOU.CPF AS DOUTORCPF'
      '            ,DOU.TELEFONE AS DOUTORTELEFONE'
      '            ,DOU.CELULAR AS DOUTORCELULAR'
      '  FROM pacientefoto PFO'
      
        '            JOIN PACIENTE PAC ON (PAC.IDPACIENTE = PFO.IDPACIENT' +
        'E)'
      
        '            LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.ID' +
        'CIDADE)'
      '            JOIN DOUTOR DOU ON (DOU.IDDOUTOR = PFO.IDDOUTOR)'
      'WHERE 1 = 1'
      '      AND PFO.idpaciente = :idpaciente')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 516
    Top = 359
    object QryPacienteFotoIDPACIENTEFOTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTEFOTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPacienteFotoIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPacienteFotoIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object QryPacienteFotoIDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Agenda'
      FieldName = 'IDAGENDA'
      Required = True
    end
    object QryPacienteFotoDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryPacienteFotoHORAINCLUSAO: TTimeField
      DisplayLabel = 'Hora Inclus'#227'o'
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object QryPacienteFotoPACIENTENOME: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object QryPacienteFotoPACIENTERG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object QryPacienteFotoPACIENTECPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object QryPacienteFotoPACIENTETELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QryPacienteFotoPACIENTETELEFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QryPacienteFotoPACIENTEDATANASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'PACIENTEDATANASCIMENTO'
      ProviderFlags = []
    end
    object QryPacienteFotoPACIENTEIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object QryPacienteFotoPACIENTEEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
    object QryPacienteFotoPACIENTECIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object QryPacienteFotoDOUTORNOME: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object QryPacienteFotoDOUTORCRM: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object QryPacienteFotoDOUTORCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object QryPacienteFotoDOUTORTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
    end
    object QryPacienteFotoDOUTORCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
    end
    object QryPacienteFotoOSERVACAO: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OSERVACAO'
      Size = 25000
    end
  end
  object DsQryPacienteFoto: TDataSource
    DataSet = QryPacienteFoto
    Left = 656
    Top = 256
  end
  object QryPacienteFotoItem: TSQLQuery
    DataSource = DsQryPacienteFoto
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPACIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IDPACIENTEFOTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select pfi.*'
      '      ,CAST('#39#39' AS VARCHAR(200)) AS PACIENTENOME'
      '      ,CAST('#39#39' AS VARCHAR(500)) AS DIRETORIOORIGEM'
      '      ,CURRENT_DATE AS DATAAGENDA'
      '  from pacientefotoitem pfi'
      ' where 1 = 1'
      '   AND pfi.idpaciente = :idpaciente'
      '   AND pfi.idpacientefoto = :idpacientefoto')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 655
    Top = 240
    object QryPacienteFotoItemIDPACIENTEFOTOITEM: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTEFOTOITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPacienteFotoItemIDPACIENTEFOTO: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente Foto'
      FieldName = 'IDPACIENTEFOTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPacienteFotoItemIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPacienteFotoItemFOTODESCRICAO: TStringField
      DisplayLabel = 'Nome Foto'
      FieldName = 'FOTODESCRICAO'
      Required = True
      Size = 100
    end
    object QryPacienteFotoItemFOTOBINARIO: TBlobField
      DisplayLabel = 'Foto Bin'#225'rio'
      FieldName = 'FOTOBINARIO'
      Required = True
      Size = 1
    end
    object QryPacienteFotoItemOBSERVACAO: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      Size = 26000
    end
    object QryPacienteFotoItemPACIENTENOME: TStringField
      DisplayLabel = 'Paciente Nome'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 200
    end
    object QryPacienteFotoItemDIRETORIOORIGEM: TStringField
      DisplayLabel = 'Diretorio Origem'
      FieldName = 'DIRETORIOORIGEM'
      ProviderFlags = []
      Size = 500
    end
    object QryPacienteFotoItemDATAAGENDA: TDateField
      DisplayLabel = 'Data Agenda'
      FieldName = 'DATAAGENDA'
      ProviderFlags = []
    end
  end
end
