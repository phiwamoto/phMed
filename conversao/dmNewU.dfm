object DmNEW: TDmNEW
  OldCreateOrder = False
  Height = 563
  Width = 1039
  object SQLConnection: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database=C:\Users\PedroHenrique\Desktop\conversao\new.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    VendorLib = 'fbclient.dll'
    Left = 48
    Top = 24
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 680
    Top = 56
  end
  object DataSetProvider2: TDataSetProvider
    Left = 680
    Top = 40
  end
  object SQLQuery2: TSQLQuery
    Params = <>
    Left = 680
    Top = 24
  end
  object CdsPaciente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPaciente'
    Left = 136
    Top = 160
    object CdsPacienteIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsPacienteIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
    end
    object CdsPacienteIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
    end
    object CdsPacienteDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
    end
    object CdsPacienteDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
    end
    object CdsPacienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CdsPacienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 50
    end
    object CdsPacienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 16
    end
    object CdsPacienteOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 26000
    end
    object CdsPacienteNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object CdsPacienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object CdsPacienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object CdsPacienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object CdsPacienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object CdsPacienteRG: TStringField
      FieldName = 'RG'
    end
    object CdsPacienteCPF: TStringField
      FieldName = 'CPF'
    end
    object CdsPacienteTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object CdsPacienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object CdsPacienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
  end
  object DspPaciente: TDataSetProvider
    DataSet = QryPaciente
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 136
    Top = 144
  end
  object QryPaciente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from paciente')
    SQLConnection = SQLConnection
    Left = 136
    Top = 128
    object QryPacienteIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryPacienteIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
    end
    object QryPacienteIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
    end
    object QryPacienteDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
    end
    object QryPacienteDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
    end
    object QryPacienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object QryPacienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 50
    end
    object QryPacienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 16
    end
    object QryPacienteOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 26000
    end
    object QryPacienteNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object QryPacienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object QryPacienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QryPacienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object QryPacienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object QryPacienteRG: TStringField
      FieldName = 'RG'
    end
    object QryPacienteCPF: TStringField
      FieldName = 'CPF'
    end
    object QryPacienteTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object QryPacienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object QryPacienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
  end
  object CdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCidade'
    Left = 152
    Top = 64
    object CdsCidadeIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Required = True
    end
    object CdsCidadeIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsCidadeDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsCidadeCIDADE: TStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 50
    end
    object CdsCidadeUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
  end
  object DspCidade: TDataSetProvider
    DataSet = QryCidade
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 152
    Top = 48
  end
  object QryCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cidade')
    SQLConnection = SQLConnection
    Left = 152
    Top = 32
    object QryCidadeIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCidadeIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryCidadeDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryCidadeCIDADE: TStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 50
    end
    object QryCidadeUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
  end
  object CdsConvenio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConvenio'
    Left = 264
    Top = 64
    object CdsConvenioIDCONVENIO: TIntegerField
      FieldName = 'IDCONVENIO'
      Required = True
    end
    object CdsConvenioIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsConvenioDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsConvenioCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Required = True
      Size = 100
    end
  end
  object DspConvenio: TDataSetProvider
    DataSet = QryConvenio
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 264
    Top = 48
  end
  object QryConvenio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from convenio')
    SQLConnection = SQLConnection
    Left = 264
    Top = 32
    object QryConvenioIDCONVENIO: TIntegerField
      FieldName = 'IDCONVENIO'
      Required = True
    end
    object QryConvenioIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryConvenioDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryConvenioCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Required = True
      Size = 100
    end
  end
  object CdsExame: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspExame'
    Left = 376
    Top = 160
    object CdsExameIDEXAME: TIntegerField
      FieldName = 'IDEXAME'
      Required = True
    end
    object CdsExameIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsExameDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsExameDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object DspExame: TDataSetProvider
    DataSet = QryExame
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 376
    Top = 144
  end
  object QryExame: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from exame')
    SQLConnection = SQLConnection
    Left = 376
    Top = 128
    object QryExameIDEXAME: TIntegerField
      FieldName = 'IDEXAME'
      Required = True
    end
    object QryExameIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryExameDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryExameDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object CdsMedicamentoUso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMedicamentoUso'
    Left = 472
    Top = 160
    object CdsMedicamentoUsoIDMEDICAMENTOUSO: TIntegerField
      FieldName = 'IDMEDICAMENTOUSO'
      Required = True
    end
    object CdsMedicamentoUsoIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsMedicamentoUsoDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsMedicamentoUsoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object DspMedicamentoUso: TDataSetProvider
    DataSet = QryMedicamentoUso
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 472
    Top = 144
  end
  object QryMedicamentoUso: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from medicamentouso')
    SQLConnection = SQLConnection
    Left = 472
    Top = 128
    object QryMedicamentoUsoIDMEDICAMENTOUSO: TIntegerField
      FieldName = 'IDMEDICAMENTOUSO'
      Required = True
    end
    object QryMedicamentoUsoIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryMedicamentoUsoDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryMedicamentoUsoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object CdsMedicamentoQuantidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMedicamentoQuantidade'
    Left = 600
    Top = 168
    object CdsMedicamentoQuantidadeIDMEDICAMENTOQTDE: TIntegerField
      FieldName = 'IDMEDICAMENTOQTDE'
      Required = True
    end
    object CdsMedicamentoQuantidadeIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsMedicamentoQuantidadeDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsMedicamentoQuantidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object DspMedicamentoQuantidade: TDataSetProvider
    DataSet = QryMedicamentoQuantidade
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 600
    Top = 152
  end
  object QryMedicamentoQuantidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from medicamentoqtde')
    SQLConnection = SQLConnection
    Left = 600
    Top = 136
    object QryMedicamentoQuantidadeIDMEDICAMENTOQTDE: TIntegerField
      FieldName = 'IDMEDICAMENTOQTDE'
      Required = True
    end
    object QryMedicamentoQuantidadeIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryMedicamentoQuantidadeDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryMedicamentoQuantidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object CdsMedicamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMedicamento'
    Left = 64
    Top = 264
    object CdsMedicamentoIDMEDICAMENTO: TIntegerField
      FieldName = 'IDMEDICAMENTO'
      Required = True
    end
    object CdsMedicamentoIDMEDICAMENTOQTDE: TIntegerField
      FieldName = 'IDMEDICAMENTOQTDE'
      Required = True
    end
    object CdsMedicamentoIDMEDICAMENTOUSO: TIntegerField
      FieldName = 'IDMEDICAMENTOUSO'
      Required = True
    end
    object CdsMedicamentoIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsMedicamentoDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsMedicamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 400
    end
    object CdsMedicamentoPOSOLOGIA: TStringField
      FieldName = 'POSOLOGIA'
      Required = True
      Size = 400
    end
  end
  object DspMedicamento: TDataSetProvider
    DataSet = QryMedicamento
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 64
    Top = 248
  end
  object QryMedicamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from medicamento')
    SQLConnection = SQLConnection
    Left = 64
    Top = 232
    object QryMedicamentoIDMEDICAMENTO: TIntegerField
      FieldName = 'IDMEDICAMENTO'
      Required = True
    end
    object QryMedicamentoIDMEDICAMENTOQTDE: TIntegerField
      FieldName = 'IDMEDICAMENTOQTDE'
      Required = True
    end
    object QryMedicamentoIDMEDICAMENTOUSO: TIntegerField
      FieldName = 'IDMEDICAMENTOUSO'
      Required = True
    end
    object QryMedicamentoIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryMedicamentoDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryMedicamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 400
    end
    object QryMedicamentoPOSOLOGIA: TStringField
      FieldName = 'POSOLOGIA'
      Required = True
      Size = 400
    end
  end
  object CdsSecretaria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspSecretaria'
    Left = 184
    Top = 264
    object CdsSecretariaIDSECRETARIA: TIntegerField
      FieldName = 'IDSECRETARIA'
      Required = True
    end
    object CdsSecretariaIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
    end
    object CdsSecretariaIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
    object CdsSecretariaIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsSecretariaDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsSecretariaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CdsSecretariaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object CdsSecretariaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object CdsSecretariaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object CdsSecretariaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object CdsSecretariaCPF: TStringField
      FieldName = 'CPF'
    end
    object CdsSecretariaRG: TStringField
      FieldName = 'RG'
    end
    object CdsSecretariaTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object CdsSecretariaCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object CdsSecretariaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsSecretariaFOTOSECRETARIA: TBlobField
      FieldName = 'FOTOSECRETARIA'
      Size = 1
    end
  end
  object DspSecretaria: TDataSetProvider
    DataSet = QrySecretaria
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 184
    Top = 248
  end
  object QrySecretaria: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from secretaria')
    SQLConnection = SQLConnection
    Left = 184
    Top = 232
    object QrySecretariaIDSECRETARIA: TIntegerField
      FieldName = 'IDSECRETARIA'
      Required = True
    end
    object QrySecretariaIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
    end
    object QrySecretariaIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
    object QrySecretariaIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QrySecretariaDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QrySecretariaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object QrySecretariaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object QrySecretariaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object QrySecretariaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QrySecretariaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object QrySecretariaCPF: TStringField
      FieldName = 'CPF'
    end
    object QrySecretariaRG: TStringField
      FieldName = 'RG'
    end
    object QrySecretariaTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object QrySecretariaCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object QrySecretariaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object QrySecretariaFOTOSECRETARIA: TBlobField
      FieldName = 'FOTOSECRETARIA'
      Size = 1
    end
  end
  object CdsDoutor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspDoutor'
    Left = 288
    Top = 272
    object CdsDoutorIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object CdsDoutorIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
    end
    object CdsDoutorIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
    object CdsDoutorIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsDoutorDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsDoutorNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CdsDoutorNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object CdsDoutorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object CdsDoutorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object CdsDoutorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object CdsDoutorCPF: TStringField
      FieldName = 'CPF'
    end
    object CdsDoutorRG: TStringField
      FieldName = 'RG'
    end
    object CdsDoutorTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object CdsDoutorCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object CdsDoutorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsDoutorCRM: TStringField
      FieldName = 'CRM'
      Size = 10
    end
    object CdsDoutorINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
      Required = True
    end
    object CdsDoutorHORAINICIALMANHA: TStringField
      FieldName = 'HORAINICIALMANHA'
      Required = True
      Size = 10
    end
    object CdsDoutorHORAFINALMANHA: TStringField
      FieldName = 'HORAFINALMANHA'
      Required = True
      Size = 10
    end
    object CdsDoutorHORAINICIALTARDE: TStringField
      FieldName = 'HORAINICIALTARDE'
      Required = True
      Size = 10
    end
    object CdsDoutorHORAFINALTARDE: TStringField
      FieldName = 'HORAFINALTARDE'
      Required = True
      Size = 10
    end
    object CdsDoutorFOTODOUTOR: TBlobField
      FieldName = 'FOTODOUTOR'
      Size = 1
    end
  end
  object DspDoutor: TDataSetProvider
    DataSet = QryDoutor
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 288
    Top = 256
  end
  object QryDoutor: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from doutor')
    SQLConnection = SQLConnection
    Left = 288
    Top = 240
    object QryDoutorIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object QryDoutorIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
    end
    object QryDoutorIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
    object QryDoutorIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryDoutorDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryDoutorNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object QryDoutorNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object QryDoutorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object QryDoutorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QryDoutorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object QryDoutorCPF: TStringField
      FieldName = 'CPF'
    end
    object QryDoutorRG: TStringField
      FieldName = 'RG'
    end
    object QryDoutorTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object QryDoutorCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object QryDoutorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object QryDoutorCRM: TStringField
      FieldName = 'CRM'
      Size = 10
    end
    object QryDoutorINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
      Required = True
    end
    object QryDoutorHORAINICIALMANHA: TStringField
      FieldName = 'HORAINICIALMANHA'
      Required = True
      Size = 10
    end
    object QryDoutorHORAFINALMANHA: TStringField
      FieldName = 'HORAFINALMANHA'
      Required = True
      Size = 10
    end
    object QryDoutorHORAINICIALTARDE: TStringField
      FieldName = 'HORAINICIALTARDE'
      Required = True
      Size = 10
    end
    object QryDoutorHORAFINALTARDE: TStringField
      FieldName = 'HORAFINALTARDE'
      Required = True
      Size = 10
    end
    object QryDoutorFOTODOUTOR: TBlobField
      FieldName = 'FOTODOUTOR'
      Size = 1
    end
  end
  object CdsClinica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspClinica'
    Left = 392
    Top = 272
    object CdsClinicaIDCLINICA: TIntegerField
      FieldName = 'IDCLINICA'
      Required = True
    end
    object CdsClinicaIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
    end
    object CdsClinicaDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsClinicaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CdsClinicaSMTPPORTA: TIntegerField
      FieldName = 'SMTPPORTA'
    end
    object CdsClinicaCLINICA: TStringField
      FieldName = 'CLINICA'
      Size = 100
    end
    object CdsClinicaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object CdsClinicaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object CdsClinicaSITECLINICA: TStringField
      FieldName = 'SITECLINICA'
      Size = 100
    end
    object CdsClinicaEMAILCLINICA: TStringField
      FieldName = 'EMAILCLINICA'
      Size = 100
    end
    object CdsClinicaSMTPSERVIDOR: TStringField
      FieldName = 'SMTPSERVIDOR'
      Size = 100
    end
    object CdsClinicaEMAILCLINICASENHA: TStringField
      FieldName = 'EMAILCLINICASENHA'
    end
    object CdsClinicaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object CdsClinicaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object CdsClinicaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsClinicaFOTOMENUPRINCIPAL: TBlobField
      FieldName = 'FOTOMENUPRINCIPAL'
      Size = 1
    end
    object CdsClinicaFOTORELATORIO: TBlobField
      FieldName = 'FOTORELATORIO'
      Size = 1
    end
  end
  object DspClinica: TDataSetProvider
    DataSet = QryClinica
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 392
    Top = 256
  end
  object QryClinica: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from clinica')
    SQLConnection = SQLConnection
    Left = 392
    Top = 240
    object QryClinicaIDCLINICA: TIntegerField
      FieldName = 'IDCLINICA'
      Required = True
    end
    object QryClinicaIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
    end
    object QryClinicaDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryClinicaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object QryClinicaSMTPPORTA: TIntegerField
      FieldName = 'SMTPPORTA'
    end
    object QryClinicaCLINICA: TStringField
      FieldName = 'CLINICA'
      Size = 100
    end
    object QryClinicaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object QryClinicaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QryClinicaSITECLINICA: TStringField
      FieldName = 'SITECLINICA'
      Size = 100
    end
    object QryClinicaEMAILCLINICA: TStringField
      FieldName = 'EMAILCLINICA'
      Size = 100
    end
    object QryClinicaSMTPSERVIDOR: TStringField
      FieldName = 'SMTPSERVIDOR'
      Size = 100
    end
    object QryClinicaEMAILCLINICASENHA: TStringField
      FieldName = 'EMAILCLINICASENHA'
    end
    object QryClinicaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object QryClinicaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object QryClinicaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object QryClinicaFOTOMENUPRINCIPAL: TBlobField
      FieldName = 'FOTOMENUPRINCIPAL'
      Size = 1
    end
    object QryClinicaFOTORELATORIO: TBlobField
      FieldName = 'FOTORELATORIO'
      Size = 1
    end
  end
  object CdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspUsuario'
    Left = 488
    Top = 272
    object CdsUsuarioIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsUsuarioIDPERFIL: TIntegerField
      FieldName = 'IDPERFIL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsUsuarioIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsUsuarioDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object DspUsuario: TDataSetProvider
    DataSet = QryUsuario
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 488
    Top = 256
  end
  object QryUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from usuario')
    SQLConnection = SQLConnection
    Left = 488
    Top = 240
    object QryUsuarioIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryUsuarioIDPERFIL: TIntegerField
      FieldName = 'IDPERFIL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryUsuarioIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryUsuarioDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object CdsPacienteConvenio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacienteConvenio'
    Left = 80
    Top = 400
    object CdsPacienteConvenioIDPACIENTECONVENIO: TIntegerField
      FieldName = 'IDPACIENTECONVENIO'
      Required = True
    end
    object CdsPacienteConvenioIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object CdsPacienteConvenioIDCONVENIO: TIntegerField
      FieldName = 'IDCONVENIO'
      Required = True
    end
    object CdsPacienteConvenioIDPRINCIPAL: TSmallintField
      FieldName = 'IDPRINCIPAL'
      Required = True
    end
    object CdsPacienteConvenioIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsPacienteConvenioDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
  end
  object DspPacienteConvenio: TDataSetProvider
    DataSet = QryPacienteConvenio
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 80
    Top = 384
  end
  object QryPacienteConvenio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from pacienteconvenio')
    SQLConnection = SQLConnection
    Left = 80
    Top = 368
    object QryPacienteConvenioIDPACIENTECONVENIO: TIntegerField
      FieldName = 'IDPACIENTECONVENIO'
      Required = True
    end
    object QryPacienteConvenioIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object QryPacienteConvenioIDCONVENIO: TIntegerField
      FieldName = 'IDCONVENIO'
      Required = True
    end
    object QryPacienteConvenioIDPRINCIPAL: TSmallintField
      FieldName = 'IDPRINCIPAL'
      Required = True
    end
    object QryPacienteConvenioIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object QryPacienteConvenioDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
  end
  object CdsPacienteConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacienteConsulta'
    Left = 200
    Top = 400
    object CdsPacienteConsultaIDPACIENTECONSULTA: TIntegerField
      FieldName = 'IDPACIENTECONSULTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteConsultaIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteConsultaIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object CdsPacienteConsultaIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
      Required = True
    end
    object CdsPacienteConsultaDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsPacienteConsultaHORAINCLUSAO: TTimeField
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
  end
  object DspPacienteConsulta: TDataSetProvider
    DataSet = QryPacienteConsulta
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 200
    Top = 384
  end
  object QryPacienteConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from pacienteconsulta')
    SQLConnection = SQLConnection
    Left = 200
    Top = 368
    object QryPacienteConsultaIDPACIENTECONSULTA: TIntegerField
      FieldName = 'IDPACIENTECONSULTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryPacienteConsultaIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryPacienteConsultaIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
    end
    object QryPacienteConsultaIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
    end
    object QryPacienteConsultaDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
    end
    object QryPacienteConsultaHORAINCLUSAO: TTimeField
      FieldName = 'HORAINCLUSAO'
    end
  end
  object CdsPacienteEvolucao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacienteEvolucao'
    Left = 328
    Top = 400
    object CdsPacienteEvolucaoIDPACIENTEEVOLUCAO: TIntegerField
      FieldName = 'IDPACIENTEEVOLUCAO'
      Required = True
    end
    object CdsPacienteEvolucaoIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object CdsPacienteEvolucaoIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object CdsPacienteEvolucaoIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
      Required = True
    end
    object CdsPacienteEvolucaoIDRASCUNHO: TSmallintField
      FieldName = 'IDRASCUNHO'
      Required = True
    end
    object CdsPacienteEvolucaoDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsPacienteEvolucaoHORAINCLUSAO: TTimeField
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object CdsPacienteEvolucaoEVOLUCAOCLINICA: TStringField
      FieldName = 'EVOLUCAOCLINICA'
      Required = True
      Size = 26000
    end
  end
  object DspPacienteEvolucao: TDataSetProvider
    DataSet = QryPacienteEvolucao
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 328
    Top = 384
  end
  object QryPacienteEvolucao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from pacienteevolucao')
    SQLConnection = SQLConnection
    Left = 328
    Top = 368
    object QryPacienteEvolucaoIDPACIENTEEVOLUCAO: TIntegerField
      FieldName = 'IDPACIENTEEVOLUCAO'
      Required = True
    end
    object QryPacienteEvolucaoIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object QryPacienteEvolucaoIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object QryPacienteEvolucaoIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
      Required = True
    end
    object QryPacienteEvolucaoIDRASCUNHO: TSmallintField
      FieldName = 'IDRASCUNHO'
      Required = True
    end
    object QryPacienteEvolucaoDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryPacienteEvolucaoHORAINCLUSAO: TTimeField
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object QryPacienteEvolucaoEVOLUCAOCLINICA: TStringField
      FieldName = 'EVOLUCAOCLINICA'
      Required = True
      Size = 26000
    end
  end
  object CdsPacienteReceituarioUso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacienteReceituarioUso'
    Left = 600
    Top = 408
    object CdsPacienteReceituarioUsoIDPACIENTERECEITUARIOUSO: TIntegerField
      FieldName = 'IDPACIENTERECEITUARIOUSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteReceituarioUsoIDPACIENTERECEITUARIO: TIntegerField
      FieldName = 'IDPACIENTERECEITUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteReceituarioUsoIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteReceituarioUsoIDMEDICAMENTO: TIntegerField
      FieldName = 'IDMEDICAMENTO'
      Required = True
    end
    object CdsPacienteReceituarioUsoPOSOLOGIA: TStringField
      FieldName = 'POSOLOGIA'
      Size = 200
    end
  end
  object DspPacienteReceituarioUso: TDataSetProvider
    DataSet = QryPacienteReceituarioUso
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 600
    Top = 392
  end
  object QryPacienteReceituarioUso: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from pacientereceituariouso')
    SQLConnection = SQLConnection
    Left = 600
    Top = 376
    object QryPacienteReceituarioUsoIDPACIENTERECEITUARIOUSO: TIntegerField
      FieldName = 'IDPACIENTERECEITUARIOUSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPacienteReceituarioUsoIDPACIENTERECEITUARIO: TIntegerField
      FieldName = 'IDPACIENTERECEITUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPacienteReceituarioUsoIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPacienteReceituarioUsoIDMEDICAMENTO: TIntegerField
      FieldName = 'IDMEDICAMENTO'
      Required = True
    end
    object QryPacienteReceituarioUsoPOSOLOGIA: TStringField
      FieldName = 'POSOLOGIA'
      Size = 200
    end
  end
  object CdsPacienteReceituario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacienteReceituario'
    Left = 456
    Top = 408
    object CdsPacienteReceituarioIDPACIENTERECEITUARIO: TIntegerField
      FieldName = 'IDPACIENTERECEITUARIO'
      Required = True
    end
    object CdsPacienteReceituarioIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object CdsPacienteReceituarioIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object CdsPacienteReceituarioIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
      Required = True
    end
    object CdsPacienteReceituarioDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsPacienteReceituarioHORAINCLUSAO: TTimeField
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
  end
  object DspPacienteReceituario: TDataSetProvider
    DataSet = QryPacienteReceituario
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 456
    Top = 392
  end
  object QryPacienteReceituario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from pacientereceituario')
    SQLConnection = SQLConnection
    Left = 456
    Top = 376
    object QryPacienteReceituarioIDPACIENTERECEITUARIO: TIntegerField
      FieldName = 'IDPACIENTERECEITUARIO'
      Required = True
    end
    object QryPacienteReceituarioIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object QryPacienteReceituarioIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object QryPacienteReceituarioIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
      Required = True
    end
    object QryPacienteReceituarioDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryPacienteReceituarioHORAINCLUSAO: TTimeField
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
  end
  object CdsPacienteExameSolicitado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacienteExameSolicitado'
    Left = 848
    Top = 408
    object CdsPacienteExameSolicitadoIDPACIENTEEXAMESOLICITADO: TIntegerField
      FieldName = 'IDPACIENTEEXAMESOLICITADO'
      Required = True
    end
    object CdsPacienteExameSolicitadoIDPACIENTEEXAME: TIntegerField
      FieldName = 'IDPACIENTEEXAME'
      Required = True
    end
    object CdsPacienteExameSolicitadoIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object CdsPacienteExameSolicitadoIDEXAME: TIntegerField
      FieldName = 'IDEXAME'
      Required = True
    end
  end
  object DspPacienteExameSolicitado: TDataSetProvider
    DataSet = QryPacienteExameSolicitado
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 848
    Top = 392
  end
  object QryPacienteExameSolicitado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from pacienteexamesolicitado')
    SQLConnection = SQLConnection
    Left = 848
    Top = 376
    object QryPacienteExameSolicitadoIDPACIENTEEXAMESOLICITADO: TIntegerField
      FieldName = 'IDPACIENTEEXAMESOLICITADO'
      Required = True
    end
    object QryPacienteExameSolicitadoIDPACIENTEEXAME: TIntegerField
      FieldName = 'IDPACIENTEEXAME'
      Required = True
    end
    object QryPacienteExameSolicitadoIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object QryPacienteExameSolicitadoIDEXAME: TIntegerField
      FieldName = 'IDEXAME'
      Required = True
    end
  end
  object CdsPacienteExame: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacienteExame'
    Left = 728
    Top = 408
    object CdsPacienteExameIDPACIENTEEXAME: TIntegerField
      FieldName = 'IDPACIENTEEXAME'
      Required = True
    end
    object CdsPacienteExameIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object CdsPacienteExameIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object CdsPacienteExameIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
      Required = True
    end
    object CdsPacienteExameDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsPacienteExameHORAINCLUSAO: TTimeField
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
  end
  object DspPacienteExame: TDataSetProvider
    DataSet = QryPacienteExame
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 728
    Top = 392
  end
  object QryPacienteExame: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from pacienteexame')
    SQLConnection = SQLConnection
    Left = 728
    Top = 376
    object QryPacienteExameIDPACIENTEEXAME: TIntegerField
      FieldName = 'IDPACIENTEEXAME'
      Required = True
    end
    object QryPacienteExameIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object QryPacienteExameIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object QryPacienteExameIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
      Required = True
    end
    object QryPacienteExameDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryPacienteExameHORAINCLUSAO: TTimeField
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
  end
  object CdsPacienteLaudoMedico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacienteLaudoMedico'
    Left = 728
    Top = 280
    object CdsPacienteLaudoMedicoIDPACIENTELAUDOOFTALMO: TIntegerField
      FieldName = 'IDPACIENTELAUDOOFTALMO'
      Required = True
    end
    object CdsPacienteLaudoMedicoIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object CdsPacienteLaudoMedicoIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object CdsPacienteLaudoMedicoIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
      Required = True
    end
    object CdsPacienteLaudoMedicoIDAPTO: TSmallintField
      FieldName = 'IDAPTO'
      Required = True
    end
    object CdsPacienteLaudoMedicoDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsPacienteLaudoMedicoHORAINCLUSAO: TTimeField
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object CdsPacienteLaudoMedicoACUIDADEODCOMCORRECAO: TStringField
      FieldName = 'ACUIDADEODCOMCORRECAO'
      Size = 10
    end
    object CdsPacienteLaudoMedicoACUIDADEOECOMCORRECAO: TStringField
      FieldName = 'ACUIDADEOECOMCORRECAO'
      Size = 10
    end
    object CdsPacienteLaudoMedicoACUIDADEODSEMCORRECAO: TStringField
      FieldName = 'ACUIDADEODSEMCORRECAO'
      Size = 10
    end
    object CdsPacienteLaudoMedicoACUIDADEOESEMCORRECAO: TStringField
      FieldName = 'ACUIDADEOESEMCORRECAO'
      Size = 10
    end
    object CdsPacienteLaudoMedicoTONOMETRIAOD: TStringField
      FieldName = 'TONOMETRIAOD'
      Size = 10
    end
    object CdsPacienteLaudoMedicoTONOMETRIAOE: TStringField
      FieldName = 'TONOMETRIAOE'
      Size = 10
    end
    object CdsPacienteLaudoMedicoFUNDOSCOPIAOD: TStringField
      FieldName = 'FUNDOSCOPIAOD'
      Size = 10
    end
    object CdsPacienteLaudoMedicoFUNDOSCOPIAOE: TStringField
      FieldName = 'FUNDOSCOPIAOE'
      Size = 10
    end
  end
  object DspPacienteLaudoMedico: TDataSetProvider
    DataSet = QryPacienteLaudoMedico
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 728
    Top = 264
  end
  object QryPacienteLaudoMedico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from pacientelaudooftalmo')
    SQLConnection = SQLConnection
    Left = 728
    Top = 248
    object QryPacienteLaudoMedicoIDPACIENTELAUDOOFTALMO: TIntegerField
      FieldName = 'IDPACIENTELAUDOOFTALMO'
      Required = True
    end
    object QryPacienteLaudoMedicoIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object QryPacienteLaudoMedicoIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object QryPacienteLaudoMedicoIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
      Required = True
    end
    object QryPacienteLaudoMedicoIDAPTO: TSmallintField
      FieldName = 'IDAPTO'
      Required = True
    end
    object QryPacienteLaudoMedicoDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryPacienteLaudoMedicoHORAINCLUSAO: TTimeField
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object QryPacienteLaudoMedicoACUIDADEODCOMCORRECAO: TStringField
      FieldName = 'ACUIDADEODCOMCORRECAO'
      Size = 10
    end
    object QryPacienteLaudoMedicoACUIDADEOECOMCORRECAO: TStringField
      FieldName = 'ACUIDADEOECOMCORRECAO'
      Size = 10
    end
    object QryPacienteLaudoMedicoACUIDADEODSEMCORRECAO: TStringField
      FieldName = 'ACUIDADEODSEMCORRECAO'
      Size = 10
    end
    object QryPacienteLaudoMedicoACUIDADEOESEMCORRECAO: TStringField
      FieldName = 'ACUIDADEOESEMCORRECAO'
      Size = 10
    end
    object QryPacienteLaudoMedicoTONOMETRIAOD: TStringField
      FieldName = 'TONOMETRIAOD'
      Size = 10
    end
    object QryPacienteLaudoMedicoTONOMETRIAOE: TStringField
      FieldName = 'TONOMETRIAOE'
      Size = 10
    end
    object QryPacienteLaudoMedicoFUNDOSCOPIAOD: TStringField
      FieldName = 'FUNDOSCOPIAOD'
      Size = 10
    end
    object QryPacienteLaudoMedicoFUNDOSCOPIAOE: TStringField
      FieldName = 'FUNDOSCOPIAOE'
      Size = 10
    end
  end
  object CdsPacientePrescricaoLente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacientePrescricaoLente'
    Left = 880
    Top = 280
    object CdsPacientePrescricaoLenteIDPACIENTEPRESCRICAOLENTE: TIntegerField
      FieldName = 'IDPACIENTEPRESCRICAOLENTE'
      Required = True
    end
    object CdsPacientePrescricaoLenteIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object CdsPacientePrescricaoLenteIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object CdsPacientePrescricaoLenteIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
    end
    object CdsPacientePrescricaoLenteDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsPacientePrescricaoLenteHORAINCLUSAO: TTimeField
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object CdsPacientePrescricaoLenteLONGEODESF: TStringField
      FieldName = 'LONGEODESF'
      Size = 10
    end
    object CdsPacientePrescricaoLenteLONGEOEESF: TStringField
      FieldName = 'LONGEOEESF'
      Size = 10
    end
    object CdsPacientePrescricaoLenteLONGEODCIL: TStringField
      FieldName = 'LONGEODCIL'
      Size = 10
    end
    object CdsPacientePrescricaoLenteLONGEOECIL: TStringField
      FieldName = 'LONGEOECIL'
      Size = 10
    end
    object CdsPacientePrescricaoLenteLONGEODEIXO: TStringField
      FieldName = 'LONGEODEIXO'
      Size = 10
    end
    object CdsPacientePrescricaoLenteLONGEOEEIXO: TStringField
      FieldName = 'LONGEOEEIXO'
      Size = 10
    end
    object CdsPacientePrescricaoLenteLONGEODDP: TStringField
      FieldName = 'LONGEODDP'
      Size = 10
    end
    object CdsPacientePrescricaoLenteLONGEOEDP: TStringField
      FieldName = 'LONGEOEDP'
      Size = 10
    end
    object CdsPacientePrescricaoLentePERTOODESF: TStringField
      FieldName = 'PERTOODESF'
      Size = 10
    end
    object CdsPacientePrescricaoLentePERTOOEESF: TStringField
      FieldName = 'PERTOOEESF'
      Size = 10
    end
    object CdsPacientePrescricaoLentePERTOODCIL: TStringField
      FieldName = 'PERTOODCIL'
      Size = 10
    end
    object CdsPacientePrescricaoLentePERTOOECIL: TStringField
      FieldName = 'PERTOOECIL'
      Size = 10
    end
    object CdsPacientePrescricaoLentePERTOODEIXO: TStringField
      FieldName = 'PERTOODEIXO'
      Size = 10
    end
    object CdsPacientePrescricaoLentePERTOOEEIXO: TStringField
      FieldName = 'PERTOOEEIXO'
      Size = 10
    end
    object CdsPacientePrescricaoLentePERTOODDP: TStringField
      FieldName = 'PERTOODDP'
      Size = 10
    end
    object CdsPacientePrescricaoLentePERTOOEDP: TStringField
      FieldName = 'PERTOOEDP'
      Size = 10
    end
    object CdsPacientePrescricaoLenteADICAO: TStringField
      FieldName = 'ADICAO'
      Size = 10
    end
  end
  object DspPacientePrescricaoLente: TDataSetProvider
    DataSet = QryPacientePrescricaoLente
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 880
    Top = 264
  end
  object QryPacientePrescricaoLente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from pacienteprescricaolente')
    SQLConnection = SQLConnection
    Left = 880
    Top = 248
    object QryPacientePrescricaoLenteIDPACIENTEPRESCRICAOLENTE: TIntegerField
      FieldName = 'IDPACIENTEPRESCRICAOLENTE'
      Required = True
    end
    object QryPacientePrescricaoLenteIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object QryPacientePrescricaoLenteIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object QryPacientePrescricaoLenteIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
    end
    object QryPacientePrescricaoLenteDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryPacientePrescricaoLenteHORAINCLUSAO: TTimeField
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object QryPacientePrescricaoLenteLONGEODESF: TStringField
      FieldName = 'LONGEODESF'
      Size = 10
    end
    object QryPacientePrescricaoLenteLONGEOEESF: TStringField
      FieldName = 'LONGEOEESF'
      Size = 10
    end
    object QryPacientePrescricaoLenteLONGEODCIL: TStringField
      FieldName = 'LONGEODCIL'
      Size = 10
    end
    object QryPacientePrescricaoLenteLONGEOECIL: TStringField
      FieldName = 'LONGEOECIL'
      Size = 10
    end
    object QryPacientePrescricaoLenteLONGEODEIXO: TStringField
      FieldName = 'LONGEODEIXO'
      Size = 10
    end
    object QryPacientePrescricaoLenteLONGEOEEIXO: TStringField
      FieldName = 'LONGEOEEIXO'
      Size = 10
    end
    object QryPacientePrescricaoLenteLONGEODDP: TStringField
      FieldName = 'LONGEODDP'
      Size = 10
    end
    object QryPacientePrescricaoLenteLONGEOEDP: TStringField
      FieldName = 'LONGEOEDP'
      Size = 10
    end
    object QryPacientePrescricaoLentePERTOODESF: TStringField
      FieldName = 'PERTOODESF'
      Size = 10
    end
    object QryPacientePrescricaoLentePERTOOEESF: TStringField
      FieldName = 'PERTOOEESF'
      Size = 10
    end
    object QryPacientePrescricaoLentePERTOODCIL: TStringField
      FieldName = 'PERTOODCIL'
      Size = 10
    end
    object QryPacientePrescricaoLentePERTOOECIL: TStringField
      FieldName = 'PERTOOECIL'
      Size = 10
    end
    object QryPacientePrescricaoLentePERTOODEIXO: TStringField
      FieldName = 'PERTOODEIXO'
      Size = 10
    end
    object QryPacientePrescricaoLentePERTOOEEIXO: TStringField
      FieldName = 'PERTOOEEIXO'
      Size = 10
    end
    object QryPacientePrescricaoLentePERTOODDP: TStringField
      FieldName = 'PERTOODDP'
      Size = 10
    end
    object QryPacientePrescricaoLentePERTOOEDP: TStringField
      FieldName = 'PERTOOEDP'
      Size = 10
    end
    object QryPacientePrescricaoLenteADICAO: TStringField
      FieldName = 'ADICAO'
      Size = 10
    end
  end
  object CdsAgenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAgenda'
    Left = 832
    Top = 168
    object CdsAgendaIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
      Required = True
    end
    object CdsAgendaIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object CdsAgendaIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object CdsAgendaIDCONVENIO: TIntegerField
      FieldName = 'IDCONVENIO'
    end
    object CdsAgendaINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
    end
    object CdsAgendaIDENCAIXE: TSmallintField
      FieldName = 'IDENCAIXE'
      Required = True
    end
    object CdsAgendaIDURGENTE: TSmallintField
      FieldName = 'IDURGENTE'
      Required = True
    end
    object CdsAgendaDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsAgendaDATAAGENDA: TDateField
      FieldName = 'DATAAGENDA'
      Required = True
    end
    object CdsAgendaHORAAGENDA: TTimeField
      FieldName = 'HORAAGENDA'
      Required = True
    end
    object CdsAgendaHORACHEGADA: TTimeField
      FieldName = 'HORACHEGADA'
    end
    object CdsAgendaHORAMANHAINICIAL: TTimeField
      FieldName = 'HORAMANHAINICIAL'
    end
    object CdsAgendaHORAMANHAFINAL: TTimeField
      FieldName = 'HORAMANHAFINAL'
    end
    object CdsAgendaHORATARDEINICIAL: TTimeField
      FieldName = 'HORATARDEINICIAL'
    end
    object CdsAgendaHORATARDEFINAL: TTimeField
      FieldName = 'HORATARDEFINAL'
    end
    object CdsAgendaSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 80
    end
    object CdsAgendaMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Required = True
      Size = 80
    end
    object CdsAgendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 26000
    end
  end
  object DspAgenda: TDataSetProvider
    DataSet = QryAgenda
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 832
    Top = 152
  end
  object QryAgenda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from agenda')
    SQLConnection = SQLConnection
    Left = 832
    Top = 136
    object QryAgendaIDAGENDA: TIntegerField
      FieldName = 'IDAGENDA'
      Required = True
    end
    object QryAgendaIDDOUTOR: TIntegerField
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object QryAgendaIDPACIENTE: TIntegerField
      FieldName = 'IDPACIENTE'
      Required = True
    end
    object QryAgendaIDCONVENIO: TIntegerField
      FieldName = 'IDCONVENIO'
    end
    object QryAgendaINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
    end
    object QryAgendaIDENCAIXE: TSmallintField
      FieldName = 'IDENCAIXE'
      Required = True
    end
    object QryAgendaIDURGENTE: TSmallintField
      FieldName = 'IDURGENTE'
      Required = True
    end
    object QryAgendaDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryAgendaDATAAGENDA: TDateField
      FieldName = 'DATAAGENDA'
      Required = True
    end
    object QryAgendaHORAAGENDA: TTimeField
      FieldName = 'HORAAGENDA'
      Required = True
    end
    object QryAgendaHORACHEGADA: TTimeField
      FieldName = 'HORACHEGADA'
    end
    object QryAgendaHORAMANHAINICIAL: TTimeField
      FieldName = 'HORAMANHAINICIAL'
    end
    object QryAgendaHORAMANHAFINAL: TTimeField
      FieldName = 'HORAMANHAFINAL'
    end
    object QryAgendaHORATARDEINICIAL: TTimeField
      FieldName = 'HORATARDEINICIAL'
    end
    object QryAgendaHORATARDEFINAL: TTimeField
      FieldName = 'HORATARDEFINAL'
    end
    object QryAgendaSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 80
    end
    object QryAgendaMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Required = True
      Size = 80
    end
    object QryAgendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 26000
    end
  end
end
