object DmCadastroF: TDmCadastroF
  OldCreateOrder = False
  Height = 564
  Width = 1030
  object LocalConnection: TLocalConnection
    Left = 34
    Top = 12
  end
  object DspPaciente: TDataSetProvider
    DataSet = QryPaciente
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 88
  end
  object QryPaciente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PAC.*'
      
        '       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / ' +
        '365.25), 3) AS INT) AS IDADE'
      '      ,(CID.CIDADE || '#39' - '#39' || CID.UF) AS CIDADEUF'
      '       ,SRE.DESCRICAO AS SITUACAOREGISTRO'
      '     FROM PACIENTE PAC'
      '          LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PAC.IDCIDADE)'
      
        '            JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO' +
        ' = PAC.IDSITUACAOREGISTRO)'
      '     WHERE 1 = -1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 48
    Top = 72
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
  object DspCidade: TDataSetProvider
    DataSet = QryCidade
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 312
    Top = 56
  end
  object QryCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT cid.*'
      '            ,sre.descricao AS situacaoregistro'
      '  FROM cidade cid'
      
        '            JOIN situacaoregistro sre ON (sre.idsituacaoregistro' +
        ' = cid.idsituacaoregistro)'
      'WHERE 1 = -1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 312
    Top = 40
    object QryCidadeIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCidadeIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryCidadeDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryCidadeCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Required = True
      Size = 50
    end
    object QryCidadeUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object QryCidadeSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o Registro'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
  object DspUsuario: TDataSetProvider
    DataSet = QryUsuario
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 432
    Top = 56
  end
  object QryUsuario: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      ' SELECT USU.*'
      '             ,SRE.DESCRICAO AS SITUACAOREGISTRO'
      '   FROM USUARIO USU'
      
        '             JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTR' +
        'O = USU.IDSITUACAOREGISTRO)'
      '  WHERE 1 = 1'
      '        AND USU.IDUSUARIO > 0')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 432
    Top = 40
    object QryUsuarioIDUSUARIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryUsuarioIDPERFIL: TIntegerField
      DisplayLabel = 'C'#243'd. Perfil'
      FieldName = 'IDPERFIL'
      Required = True
    end
    object QryUsuarioIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryUsuarioDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryUsuarioLOGIN: TStringField
      DisplayLabel = 'Login'
      FieldName = 'LOGIN'
      Required = True
    end
    object QryUsuarioSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Required = True
    end
    object QryUsuarioSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
  object DspAgenda: TDataSetProvider
    DataSet = QryAgenda
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 56
  end
  object QryAgenda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT age.*'
      '            ,pes.nomefantasia'
      '            ,pes.cpfcnpj'
      '            ,pes.idtipopessoa'
      '            ,pes.telefone01'
      '            ,sac.descricao as situacaoagenda'
      '  FROM agendacompromisso age'
      '       LEFT join pessoa pes on (pes.idpessoa = age.idpessoa)'
      
        '       JOIN situacaoagendacompromisso sac on (sac.idsituacaoagen' +
        'dacompromisso = age.idsituacaoagendacompromisso)'
      ' WHERE 1 = 1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 536
    Top = 40
    object QryAgendaIDAGENDACOMPROMISSO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDAGENDACOMPROMISSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryAgendaIDPESSOA: TLargeintField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'IDPESSOA'
    end
    object QryAgendaIDSITUACAOAGENDACOMPROMISSO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Agenda'
      FieldName = 'IDSITUACAOAGENDACOMPROMISSO'
      Required = True
    end
    object QryAgendaDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryAgendaDATACOMPROMISSO: TDateField
      DisplayLabel = 'Data Compromisso'
      FieldName = 'DATACOMPROMISSO'
      Required = True
    end
    object QryAgendaHORACOMPROMISSO: TTimeField
      DisplayLabel = 'Hora Compromisso'
      FieldName = 'HORACOMPROMISSO'
      Required = True
    end
    object QryAgendaTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 12
    end
    object QryAgendaASSUNTO: TStringField
      DisplayLabel = 'Assunto'
      FieldName = 'ASSUNTO'
      Size = 80
    end
    object QryAgendaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 150
    end
    object QryAgendaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object QryAgendaNOMEFANTASIA: TStringField
      DisplayLabel = 'Nome / Nome Fantasia'
      FieldName = 'NOMEFANTASIA'
      ProviderFlags = []
      Size = 150
    end
    object QryAgendaCPFCNPJ: TStringField
      DisplayLabel = 'CPF / CNPJ'
      FieldName = 'CPFCNPJ'
      ProviderFlags = []
    end
    object QryAgendaIDTIPOPESSOA: TSmallintField
      DisplayLabel = 'C'#243'd. Tipo Pessoa'
      FieldName = 'IDTIPOPESSOA'
      ProviderFlags = []
    end
    object QryAgendaTELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'TELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 12
    end
    object QryAgendaSITUACAOAGENDA: TStringField
      DisplayLabel = 'Situa'#231#227'o Agenda'
      FieldName = 'SITUACAOAGENDA'
      ProviderFlags = []
      Size = 50
    end
  end
  object DspExame: TDataSetProvider
    DataSet = QryExame
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 200
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
      'WHERE 1 = -1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 48
    Top = 184
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
  object DspMedicamento: TDataSetProvider
    DataSet = QryMedicamento
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 200
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
      ' WHERE 1 = -1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 144
    Top = 184
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
  object DspMedicamentoUso: TDataSetProvider
    DataSet = QryMedicamentoUso
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 520
    Top = 200
  end
  object QryMedicamentoUso: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT MUS.*'
      '            ,SRE.DESCRICAO AS SITUACAOREGISTRO'
      '  FROM MEDICAMENTOUSO MUS'
      
        '            JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO' +
        ' = MUS.IDSITUACAOREGISTRO)'
      'WHERE 1 = -1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 520
    Top = 184
    object QryMedicamentoUsoIDMEDICAMENTOUSO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDMEDICAMENTOUSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMedicamentoUsoIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryMedicamentoUsoDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryMedicamentoUsoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object QryMedicamentoUsoSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
  object DspMedicamentoQtde: TDataSetProvider
    DataSet = QryMedicamentoQtde
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 376
    Top = 200
  end
  object QryMedicamentoQtde: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT MQT.*'
      '            ,SRE.DESCRICAO AS SITUACAOREGISTRO'
      '  FROM MEDICAMENTOQTDE MQT'
      
        '             JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTR' +
        'O = MQT.IDSITUACAOREGISTRO)'
      ' WHERE 1 = -1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 376
    Top = 184
    object QryMedicamentoQtdeIDMEDICAMENTOQTDE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDMEDICAMENTOQTDE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMedicamentoQtdeIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryMedicamentoQtdeDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryMedicamentoQtdeDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object QryMedicamentoQtdeSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
  object DspConvenio: TDataSetProvider
    DataSet = QryConvenio
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 288
  end
  object QryConvenio: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT CON.*'
      '            ,SRE.DESCRICAO AS SITUACAOREGISTRO'
      '  FROM CONVENIO CON'
      
        '            JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO' +
        ' = CON.IDSITUACAOREGISTRO)'
      'WHERE 1 = -1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 40
    Top = 272
    object QryConvenioIDCONVENIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCONVENIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryConvenioIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryConvenioDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryConvenioCONVENIO: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'CONVENIO'
      Required = True
      Size = 100
    end
    object QryConvenioSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
  object DsQryPaciente: TDataSource
    DataSet = QryPaciente
    Left = 144
    Top = 88
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
    Left = 144
    Top = 72
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
  object DspDoutor: TDataSetProvider
    DataSet = QryDoutor
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 368
  end
  object QryDoutor: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT DOU.*'
      '            ,(CID.CIDADE || '#39' - '#39' || CID.UF) AS CIDADEUF'
      '            ,USU.LOGIN AS USUARIOLOGIN'
      '            ,SRE.DESCRICAO AS SITUACAOREGISTRO'
      '  FROM DOUTOR DOU'
      
        '            LEFT JOIN CIDADE CID ON (CID.IDCIDADE = DOU.IDCIDADE' +
        ')'
      
        '            LEFT JOIN USUARIO USU ON (USU.IDUSUARIO = DOU.IDUSUA' +
        'RIO)'
      
        '            JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO' +
        ' = DOU.IDSITUACAOREGISTRO)'
      ' WHERE 1 = -1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 48
    Top = 352
    object QryDoutorIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDDOUTOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryDoutorIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'IDCIDADE'
    end
    object QryDoutorIDUSUARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'IDUSUARIO'
    end
    object QryDoutorIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryDoutorDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryDoutorNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
    end
    object QryDoutorNOME: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object QryDoutorENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 100
    end
    object QryDoutorBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QryDoutorEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 100
    end
    object QryDoutorCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999\.999\.999\-99;0;_'
    end
    object QryDoutorRG: TStringField
      FieldName = 'RG'
    end
    object QryDoutorTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QryDoutorCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QryDoutorCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999\-999;0;_'
      Size = 10
    end
    object QryDoutorCRM: TStringField
      FieldName = 'CRM'
      Size = 10
    end
    object QryDoutorINTERVALO: TIntegerField
      DisplayLabel = 'Intervalo'
      FieldName = 'INTERVALO'
      Required = True
    end
    object QryDoutorHORAINICIALMANHA: TStringField
      DisplayLabel = 'Hora Inicial Manh'#227
      FieldName = 'HORAINICIALMANHA'
      Required = True
      Size = 10
    end
    object QryDoutorHORAFINALMANHA: TStringField
      DisplayLabel = 'Hora Final Manh'#227
      FieldName = 'HORAFINALMANHA'
      Required = True
      Size = 10
    end
    object QryDoutorHORAINICIALTARDE: TStringField
      DisplayLabel = 'Hora Inicial Tarde'
      FieldName = 'HORAINICIALTARDE'
      Required = True
      Size = 10
    end
    object QryDoutorHORAFINALTARDE: TStringField
      DisplayLabel = 'Hora Final Tarde'
      FieldName = 'HORAFINALTARDE'
      Required = True
      Size = 10
    end
    object QryDoutorFOTODOUTOR: TBlobField
      DisplayLabel = 'Foto'
      FieldName = 'FOTODOUTOR'
      Size = 1
    end
    object QryDoutorCIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'CIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object QryDoutorUSUARIOLOGIN: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIOLOGIN'
      ProviderFlags = []
    end
    object QryDoutorSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
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
  object DspSecretaria: TDataSetProvider
    DataSet = QrySecretaria
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 168
    Top = 368
  end
  object QrySecretaria: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT SEC.*'
      '            ,(CID.CIDADE || '#39' - '#39' || CID.UF) AS CIDADEUF'
      '            ,USU.LOGIN AS USUARIOLOGIN'
      '            ,SRE.DESCRICAO AS SITUACAOREGISTRO'
      '  FROM SECRETARIA SEC'
      
        '            LEFT JOIN CIDADE CID ON (CID.IDCIDADE = SEC.IDCIDADE' +
        ')'
      
        '            LEFT JOIN USUARIO USU ON (USU.IDUSUARIO = SEC.IDUSUA' +
        'RIO)'
      
        '            JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO' +
        ' = SEC.IDSITUACAOREGISTRO)'
      ' WHERE 1 = -1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 168
    Top = 352
    object QrySecretariaIDSECRETARIA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDSECRETARIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrySecretariaIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'IDCIDADE'
    end
    object QrySecretariaIDUSUARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'IDUSUARIO'
    end
    object QrySecretariaIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QrySecretariaDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QrySecretariaNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
    end
    object QrySecretariaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object QrySecretariaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 100
    end
    object QrySecretariaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QrySecretariaEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 100
    end
    object QrySecretariaCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999\.999\.999\-99;0;_'
    end
    object QrySecretariaRG: TStringField
      FieldName = 'RG'
    end
    object QrySecretariaTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QrySecretariaCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QrySecretariaCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999\-999;0;_'
      Size = 10
    end
    object QrySecretariaFOTOSECRETARIA: TBlobField
      DisplayLabel = 'Foto'
      FieldName = 'FOTOSECRETARIA'
      Size = 1
    end
    object QrySecretariaCIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'CIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object QrySecretariaUSUARIOLOGIN: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIOLOGIN'
      ProviderFlags = []
    end
    object QrySecretariaSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
  object DspClinica: TDataSetProvider
    DataSet = QryClinica
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 832
    Top = 80
  end
  object QryClinica: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT CLI.*'
      '      ,(CID.CIDADE || '#39' - '#39' || CID.UF) AS CIDADEUF'
      '  FROM CLINICA CLI'
      '       LEFT JOIN CIDADE CID ON (CID.IDCIDADE = CLI.IDCIDADE)'
      ' WHERE 1 = 1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 832
    Top = 64
    object QryClinicaIDCLINICA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCLINICA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryClinicaIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'IDCIDADE'
    end
    object QryClinicaDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryClinicaNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
    end
    object QryClinicaCLINICA: TStringField
      DisplayLabel = 'Cl'#237'nica'
      FieldName = 'CLINICA'
      Size = 100
    end
    object QryClinicaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 100
    end
    object QryClinicaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QryClinicaSITECLINICA: TStringField
      DisplayLabel = 'Site'
      FieldName = 'SITECLINICA'
      Size = 100
    end
    object QryClinicaEMAILCLINICA: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAILCLINICA'
      Size = 100
    end
    object QryClinicaTELEFONE1: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'TELEFONE1'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QryClinicaTELEFONE2: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'TELEFONE2'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QryClinicaCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999\-999;0;_'
      Size = 10
    end
    object QryClinicaFOTOMENUPRINCIPAL: TBlobField
      DisplayLabel = 'Foto Menu Principal'
      FieldName = 'FOTOMENUPRINCIPAL'
      Size = 1
    end
    object QryClinicaFOTORELATORIO: TBlobField
      DisplayLabel = 'Foto Relat'#243'rio'
      FieldName = 'FOTORELATORIO'
      Size = 1
    end
    object QryClinicaCIDADEUF: TStringField
      DisplayLabel = 'Cidade - UF'
      FieldName = 'CIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object QryClinicaSMTPPORTA: TIntegerField
      DisplayLabel = 'Porta SMTP'
      FieldName = 'SMTPPORTA'
    end
    object QryClinicaSMTPSERVIDOR: TStringField
      DisplayLabel = 'Servidor SMTP'
      FieldName = 'SMTPSERVIDOR'
      Size = 100
    end
    object QryClinicaEMAILCLINICASENHA: TStringField
      DisplayLabel = 'Senha Email'
      FieldName = 'EMAILCLINICASENHA'
    end
  end
end
