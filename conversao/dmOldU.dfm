object DmOLD: TDmOLD
  OldCreateOrder = False
  Height = 544
  Width = 1040
  object SQLConnection: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database=C:\Users\PedroHenrique\Desktop\conversao\old.fdb'
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
  object CdsPaciente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPaciente'
    Left = 136
    Top = 160
    object CdsPacienteID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object CdsPacienteID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object CdsPacienteDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object CdsPacienteDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
    end
    object CdsPacienteNR_NUMERO: TIntegerField
      FieldName = 'NR_NUMERO'
    end
    object CdsPacienteTP_ESTADOCIVIL: TStringField
      FieldName = 'TP_ESTADOCIVIL'
      Required = True
      Size = 50
    end
    object CdsPacienteTP_SEXO: TStringField
      FieldName = 'TP_SEXO'
      Required = True
      Size = 16
    end
    object CdsPacienteDS_OBSERVACAO: TStringField
      FieldName = 'DS_OBSERVACAO'
      Size = 5000
    end
    object CdsPacienteDS_NOME: TStringField
      FieldName = 'DS_NOME'
      Required = True
      Size = 100
    end
    object CdsPacienteDS_ENDERECO: TStringField
      FieldName = 'DS_ENDERECO'
      Size = 100
    end
    object CdsPacienteDS_BAIRRO: TStringField
      FieldName = 'DS_BAIRRO'
      Size = 100
    end
    object CdsPacienteDS_EMAIL: TStringField
      FieldName = 'DS_EMAIL'
      Size = 100
    end
    object CdsPacienteDS_COMPLEMENTO: TStringField
      FieldName = 'DS_COMPLEMENTO'
      Size = 100
    end
    object CdsPacienteDS_RG: TStringField
      FieldName = 'DS_RG'
    end
    object CdsPacienteDS_CPF: TStringField
      FieldName = 'DS_CPF'
    end
    object CdsPacienteDS_TELEFONE1: TStringField
      FieldName = 'DS_TELEFONE1'
    end
    object CdsPacienteDS_TELEFONE2: TStringField
      FieldName = 'DS_TELEFONE2'
    end
    object CdsPacienteDS_CEP: TStringField
      FieldName = 'DS_CEP'
      Size = 10
    end
    object CdsPacienteBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
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
    object QryPacienteID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPacienteID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object QryPacienteDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object QryPacienteDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
    end
    object QryPacienteNR_NUMERO: TIntegerField
      FieldName = 'NR_NUMERO'
    end
    object QryPacienteTP_ESTADOCIVIL: TStringField
      FieldName = 'TP_ESTADOCIVIL'
      Required = True
      Size = 50
    end
    object QryPacienteTP_SEXO: TStringField
      FieldName = 'TP_SEXO'
      Required = True
      Size = 16
    end
    object QryPacienteDS_OBSERVACAO: TStringField
      FieldName = 'DS_OBSERVACAO'
      Size = 5000
    end
    object QryPacienteDS_NOME: TStringField
      FieldName = 'DS_NOME'
      Required = True
      Size = 100
    end
    object QryPacienteDS_ENDERECO: TStringField
      FieldName = 'DS_ENDERECO'
      Size = 100
    end
    object QryPacienteDS_BAIRRO: TStringField
      FieldName = 'DS_BAIRRO'
      Size = 100
    end
    object QryPacienteDS_EMAIL: TStringField
      FieldName = 'DS_EMAIL'
      Size = 100
    end
    object QryPacienteDS_COMPLEMENTO: TStringField
      FieldName = 'DS_COMPLEMENTO'
      Size = 100
    end
    object QryPacienteDS_RG: TStringField
      FieldName = 'DS_RG'
    end
    object QryPacienteDS_CPF: TStringField
      FieldName = 'DS_CPF'
    end
    object QryPacienteDS_TELEFONE1: TStringField
      FieldName = 'DS_TELEFONE1'
    end
    object QryPacienteDS_TELEFONE2: TStringField
      FieldName = 'DS_TELEFONE2'
    end
    object QryPacienteDS_CEP: TStringField
      FieldName = 'DS_CEP'
      Size = 10
    end
    object QryPacienteBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
    end
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 704
    Top = 48
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLQuery2
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 704
    Top = 32
  end
  object SQLQuery2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 704
    Top = 16
  end
  object CdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCidade'
    Left = 152
    Top = 64
    object CdsCidadeID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Required = True
    end
    object CdsCidadeDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object CdsCidadeDS_CIDADE: TStringField
      FieldName = 'DS_CIDADE'
      Required = True
      Size = 50
    end
    object CdsCidadeDS_ESTADO: TStringField
      FieldName = 'DS_ESTADO'
      Required = True
      Size = 2
    end
    object CdsCidadeBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
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
    object QryCidadeID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCidadeDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object QryCidadeDS_CIDADE: TStringField
      FieldName = 'DS_CIDADE'
      Required = True
      Size = 50
    end
    object QryCidadeDS_ESTADO: TStringField
      FieldName = 'DS_ESTADO'
      Required = True
      Size = 2
    end
    object QryCidadeBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
    end
  end
  object CdsConvenio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConvenio'
    Left = 288
    Top = 160
    object CdsConvenioID_CONVENIO: TIntegerField
      FieldName = 'ID_CONVENIO'
      Required = True
    end
    object CdsConvenioDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object CdsConvenioDS_CONVENIO: TStringField
      FieldName = 'DS_CONVENIO'
      Required = True
      Size = 100
    end
    object CdsConvenioBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
    end
  end
  object DspConvenio: TDataSetProvider
    DataSet = QryConvenio
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 288
    Top = 144
  end
  object QryConvenio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from convenio')
    SQLConnection = SQLConnection
    Left = 288
    Top = 128
    object QryConvenioID_CONVENIO: TIntegerField
      FieldName = 'ID_CONVENIO'
      Required = True
    end
    object QryConvenioDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object QryConvenioDS_CONVENIO: TStringField
      FieldName = 'DS_CONVENIO'
      Required = True
      Size = 100
    end
    object QryConvenioBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
    end
  end
  object CdsExame: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspExame'
    Left = 376
    Top = 160
    object CdsExameID_EXAME: TIntegerField
      FieldName = 'ID_EXAME'
      Required = True
    end
    object CdsExameDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object CdsExameDS_DESCRICAO: TStringField
      FieldName = 'DS_DESCRICAO'
      Required = True
      Size = 100
    end
    object CdsExameBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
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
    object QryExameID_EXAME: TIntegerField
      FieldName = 'ID_EXAME'
      Required = True
    end
    object QryExameDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object QryExameDS_DESCRICAO: TStringField
      FieldName = 'DS_DESCRICAO'
      Required = True
      Size = 100
    end
    object QryExameBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
    end
  end
  object CdsMedicamentoUso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMedicamentoUso'
    Left = 472
    Top = 160
    object CdsMedicamentoUsoID_MEDICAMENTO_USO: TIntegerField
      FieldName = 'ID_MEDICAMENTO_USO'
      Required = True
    end
    object CdsMedicamentoUsoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object CdsMedicamentoUsoDS_DESCRICAO: TStringField
      FieldName = 'DS_DESCRICAO'
      Required = True
      Size = 100
    end
    object CdsMedicamentoUsoBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
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
      'select * from medicamento_uso')
    SQLConnection = SQLConnection
    Left = 472
    Top = 128
    object QryMedicamentoUsoID_MEDICAMENTO_USO: TIntegerField
      FieldName = 'ID_MEDICAMENTO_USO'
      Required = True
    end
    object QryMedicamentoUsoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object QryMedicamentoUsoDS_DESCRICAO: TStringField
      FieldName = 'DS_DESCRICAO'
      Required = True
      Size = 100
    end
    object QryMedicamentoUsoBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
    end
  end
  object CdsMedicamentoQuantidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMedicamentoQuantidade'
    Left = 600
    Top = 168
    object CdsMedicamentoQuantidadeID_MEDICAMENTO_QUANTIDADE: TIntegerField
      FieldName = 'ID_MEDICAMENTO_QUANTIDADE'
      Required = True
    end
    object CdsMedicamentoQuantidadeDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object CdsMedicamentoQuantidadeDS_DESCRICAO: TStringField
      FieldName = 'DS_DESCRICAO'
      Required = True
      Size = 100
    end
    object CdsMedicamentoQuantidadeBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
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
      'select * from medicamento_quantidade')
    SQLConnection = SQLConnection
    Left = 600
    Top = 136
    object QryMedicamentoQuantidadeID_MEDICAMENTO_QUANTIDADE: TIntegerField
      FieldName = 'ID_MEDICAMENTO_QUANTIDADE'
      Required = True
    end
    object QryMedicamentoQuantidadeDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object QryMedicamentoQuantidadeDS_DESCRICAO: TStringField
      FieldName = 'DS_DESCRICAO'
      Required = True
      Size = 100
    end
    object QryMedicamentoQuantidadeBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
    end
  end
  object CdsMedicamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMedicamento'
    Left = 64
    Top = 264
    object CdsMedicamentoID_MEDICAMENTO: TIntegerField
      FieldName = 'ID_MEDICAMENTO'
      Required = True
    end
    object CdsMedicamentoID_MEDICAMENTO_QUANTIDADE: TIntegerField
      FieldName = 'ID_MEDICAMENTO_QUANTIDADE'
      Required = True
    end
    object CdsMedicamentoID_MEDICAMENTO_USO: TIntegerField
      FieldName = 'ID_MEDICAMENTO_USO'
      Required = True
    end
    object CdsMedicamentoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object CdsMedicamentoDS_DESCRICAO: TStringField
      FieldName = 'DS_DESCRICAO'
      Required = True
      Size = 300
    end
    object CdsMedicamentoDS_POSOLOGIA: TStringField
      FieldName = 'DS_POSOLOGIA'
      Required = True
      Size = 300
    end
    object CdsMedicamentoBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
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
    object QryMedicamentoID_MEDICAMENTO: TIntegerField
      FieldName = 'ID_MEDICAMENTO'
      Required = True
    end
    object QryMedicamentoID_MEDICAMENTO_QUANTIDADE: TIntegerField
      FieldName = 'ID_MEDICAMENTO_QUANTIDADE'
      Required = True
    end
    object QryMedicamentoID_MEDICAMENTO_USO: TIntegerField
      FieldName = 'ID_MEDICAMENTO_USO'
      Required = True
    end
    object QryMedicamentoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object QryMedicamentoDS_DESCRICAO: TStringField
      FieldName = 'DS_DESCRICAO'
      Required = True
      Size = 300
    end
    object QryMedicamentoDS_POSOLOGIA: TStringField
      FieldName = 'DS_POSOLOGIA'
      Required = True
      Size = 300
    end
    object QryMedicamentoBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
    end
  end
  object CdsSecretaria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspSecretaria'
    Left = 184
    Top = 264
    object CdsSecretariaID_EQUIPE: TIntegerField
      FieldName = 'ID_EQUIPE'
      Required = True
    end
    object CdsSecretariaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object CdsSecretariaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object CdsSecretariaNR_NUMERO: TIntegerField
      FieldName = 'NR_NUMERO'
    end
    object CdsSecretariaTP_EQUIPE: TStringField
      FieldName = 'TP_EQUIPE'
      Required = True
    end
    object CdsSecretariaDS_NOME: TStringField
      FieldName = 'DS_NOME'
      Required = True
      Size = 100
    end
    object CdsSecretariaDS_ENDERECO: TStringField
      FieldName = 'DS_ENDERECO'
      Size = 100
    end
    object CdsSecretariaDS_BAIRRO: TStringField
      FieldName = 'DS_BAIRRO'
      Size = 100
    end
    object CdsSecretariaDS_EMAIL: TStringField
      FieldName = 'DS_EMAIL'
      Size = 100
    end
    object CdsSecretariaDS_FOTO: TStringField
      FieldName = 'DS_FOTO'
      Size = 50
    end
    object CdsSecretariaDS_CPF: TStringField
      FieldName = 'DS_CPF'
    end
    object CdsSecretariaDS_RG: TStringField
      FieldName = 'DS_RG'
    end
    object CdsSecretariaDS_TELEFONE: TStringField
      FieldName = 'DS_TELEFONE'
    end
    object CdsSecretariaDS_CELULAR: TStringField
      FieldName = 'DS_CELULAR'
    end
    object CdsSecretariaDS_CEP: TStringField
      FieldName = 'DS_CEP'
      Size = 10
    end
    object CdsSecretariaDS_CRM: TStringField
      FieldName = 'DS_CRM'
      Size = 10
    end
    object CdsSecretariaBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
    end
  end
  object DspSecretaria: TDataSetProvider
    DataSet = QrySecretaria
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 184
    Top = 248
  end
  object QrySecretaria: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from equipe where tp_equipe = '#39'SECRETARIA'#39)
    SQLConnection = SQLConnection
    Left = 184
    Top = 232
    object QrySecretariaID_EQUIPE: TIntegerField
      FieldName = 'ID_EQUIPE'
      Required = True
    end
    object QrySecretariaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object QrySecretariaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object QrySecretariaNR_NUMERO: TIntegerField
      FieldName = 'NR_NUMERO'
    end
    object QrySecretariaTP_EQUIPE: TStringField
      FieldName = 'TP_EQUIPE'
      Required = True
    end
    object QrySecretariaDS_NOME: TStringField
      FieldName = 'DS_NOME'
      Required = True
      Size = 100
    end
    object QrySecretariaDS_ENDERECO: TStringField
      FieldName = 'DS_ENDERECO'
      Size = 100
    end
    object QrySecretariaDS_BAIRRO: TStringField
      FieldName = 'DS_BAIRRO'
      Size = 100
    end
    object QrySecretariaDS_EMAIL: TStringField
      FieldName = 'DS_EMAIL'
      Size = 100
    end
    object QrySecretariaDS_FOTO: TStringField
      FieldName = 'DS_FOTO'
      Size = 50
    end
    object QrySecretariaDS_CPF: TStringField
      FieldName = 'DS_CPF'
    end
    object QrySecretariaDS_RG: TStringField
      FieldName = 'DS_RG'
    end
    object QrySecretariaDS_TELEFONE: TStringField
      FieldName = 'DS_TELEFONE'
    end
    object QrySecretariaDS_CELULAR: TStringField
      FieldName = 'DS_CELULAR'
    end
    object QrySecretariaDS_CEP: TStringField
      FieldName = 'DS_CEP'
      Size = 10
    end
    object QrySecretariaDS_CRM: TStringField
      FieldName = 'DS_CRM'
      Size = 10
    end
    object QrySecretariaBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
    end
  end
  object CdsDoutor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspDoutor'
    Left = 288
    Top = 272
    object CdsDoutorID_EQUIPE: TIntegerField
      FieldName = 'ID_EQUIPE'
      Required = True
    end
    object CdsDoutorID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object CdsDoutorDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object CdsDoutorNR_NUMERO: TIntegerField
      FieldName = 'NR_NUMERO'
    end
    object CdsDoutorTP_EQUIPE: TStringField
      FieldName = 'TP_EQUIPE'
      Required = True
    end
    object CdsDoutorDS_NOME: TStringField
      FieldName = 'DS_NOME'
      Required = True
      Size = 100
    end
    object CdsDoutorDS_ENDERECO: TStringField
      FieldName = 'DS_ENDERECO'
      Size = 100
    end
    object CdsDoutorDS_BAIRRO: TStringField
      FieldName = 'DS_BAIRRO'
      Size = 100
    end
    object CdsDoutorDS_EMAIL: TStringField
      FieldName = 'DS_EMAIL'
      Size = 100
    end
    object CdsDoutorDS_FOTO: TStringField
      FieldName = 'DS_FOTO'
      Size = 50
    end
    object CdsDoutorDS_CPF: TStringField
      FieldName = 'DS_CPF'
    end
    object CdsDoutorDS_RG: TStringField
      FieldName = 'DS_RG'
    end
    object CdsDoutorDS_TELEFONE: TStringField
      FieldName = 'DS_TELEFONE'
    end
    object CdsDoutorDS_CELULAR: TStringField
      FieldName = 'DS_CELULAR'
    end
    object CdsDoutorDS_CEP: TStringField
      FieldName = 'DS_CEP'
      Size = 10
    end
    object CdsDoutorDS_CRM: TStringField
      FieldName = 'DS_CRM'
      Size = 10
    end
    object CdsDoutorBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
    end
  end
  object DspDoutor: TDataSetProvider
    DataSet = QryDoutor
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 288
    Top = 256
  end
  object QryDoutor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from equipe where tp_equipe = '#39'DOUTOR'#39)
    SQLConnection = SQLConnection
    Left = 288
    Top = 240
    object QryDoutorID_EQUIPE: TIntegerField
      FieldName = 'ID_EQUIPE'
      Required = True
    end
    object QryDoutorID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object QryDoutorDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object QryDoutorNR_NUMERO: TIntegerField
      FieldName = 'NR_NUMERO'
    end
    object QryDoutorTP_EQUIPE: TStringField
      FieldName = 'TP_EQUIPE'
      Required = True
    end
    object QryDoutorDS_NOME: TStringField
      FieldName = 'DS_NOME'
      Required = True
      Size = 100
    end
    object QryDoutorDS_ENDERECO: TStringField
      FieldName = 'DS_ENDERECO'
      Size = 100
    end
    object QryDoutorDS_BAIRRO: TStringField
      FieldName = 'DS_BAIRRO'
      Size = 100
    end
    object QryDoutorDS_EMAIL: TStringField
      FieldName = 'DS_EMAIL'
      Size = 100
    end
    object QryDoutorDS_FOTO: TStringField
      FieldName = 'DS_FOTO'
      Size = 50
    end
    object QryDoutorDS_CPF: TStringField
      FieldName = 'DS_CPF'
    end
    object QryDoutorDS_RG: TStringField
      FieldName = 'DS_RG'
    end
    object QryDoutorDS_TELEFONE: TStringField
      FieldName = 'DS_TELEFONE'
    end
    object QryDoutorDS_CELULAR: TStringField
      FieldName = 'DS_CELULAR'
    end
    object QryDoutorDS_CEP: TStringField
      FieldName = 'DS_CEP'
      Size = 10
    end
    object QryDoutorDS_CRM: TStringField
      FieldName = 'DS_CRM'
      Size = 10
    end
    object QryDoutorBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
    end
  end
  object CdsClinica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspClinica'
    Left = 392
    Top = 272
    object CdsClinicaID_CLINICA: TIntegerField
      FieldName = 'ID_CLINICA'
      Required = True
    end
    object CdsClinicaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object CdsClinicaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object CdsClinicaNR_NUMERO: TIntegerField
      FieldName = 'NR_NUMERO'
    end
    object CdsClinicaNR_SALA: TIntegerField
      FieldName = 'NR_SALA'
    end
    object CdsClinicaNR_SMTPPORTA: TIntegerField
      FieldName = 'NR_SMTPPORTA'
    end
    object CdsClinicaDS_CLINICA: TStringField
      FieldName = 'DS_CLINICA'
      Size = 100
    end
    object CdsClinicaDS_ENDERECO: TStringField
      FieldName = 'DS_ENDERECO'
      Size = 100
    end
    object CdsClinicaDS_BAIRRO: TStringField
      FieldName = 'DS_BAIRRO'
      Size = 100
    end
    object CdsClinicaDS_EMAIL: TStringField
      FieldName = 'DS_EMAIL'
      Size = 100
    end
    object CdsClinicaDS_SMTP: TStringField
      FieldName = 'DS_SMTP'
      Size = 100
    end
    object CdsClinicaDS_SITE: TStringField
      FieldName = 'DS_SITE'
      Size = 100
    end
    object CdsClinicaDS_FOTO: TStringField
      FieldName = 'DS_FOTO'
      Size = 50
    end
    object CdsClinicaDS_FOTOGRANDE: TStringField
      FieldName = 'DS_FOTOGRANDE'
      Size = 50
    end
    object CdsClinicaDS_TELEFONE: TStringField
      FieldName = 'DS_TELEFONE'
    end
    object CdsClinicaDS_SENHAEMAIL: TStringField
      FieldName = 'DS_SENHAEMAIL'
    end
    object CdsClinicaDS_CEP: TStringField
      FieldName = 'DS_CEP'
      Size = 10
    end
  end
  object DspClinica: TDataSetProvider
    DataSet = QryClinica
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 392
    Top = 256
  end
  object QryClinica: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from clinica')
    SQLConnection = SQLConnection
    Left = 392
    Top = 240
    object QryClinicaID_CLINICA: TIntegerField
      FieldName = 'ID_CLINICA'
      Required = True
    end
    object QryClinicaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object QryClinicaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object QryClinicaNR_NUMERO: TIntegerField
      FieldName = 'NR_NUMERO'
    end
    object QryClinicaNR_SALA: TIntegerField
      FieldName = 'NR_SALA'
    end
    object QryClinicaNR_SMTPPORTA: TIntegerField
      FieldName = 'NR_SMTPPORTA'
    end
    object QryClinicaDS_CLINICA: TStringField
      FieldName = 'DS_CLINICA'
      Size = 100
    end
    object QryClinicaDS_ENDERECO: TStringField
      FieldName = 'DS_ENDERECO'
      Size = 100
    end
    object QryClinicaDS_BAIRRO: TStringField
      FieldName = 'DS_BAIRRO'
      Size = 100
    end
    object QryClinicaDS_EMAIL: TStringField
      FieldName = 'DS_EMAIL'
      Size = 100
    end
    object QryClinicaDS_SMTP: TStringField
      FieldName = 'DS_SMTP'
      Size = 100
    end
    object QryClinicaDS_SITE: TStringField
      FieldName = 'DS_SITE'
      Size = 100
    end
    object QryClinicaDS_FOTO: TStringField
      FieldName = 'DS_FOTO'
      Size = 50
    end
    object QryClinicaDS_FOTOGRANDE: TStringField
      FieldName = 'DS_FOTOGRANDE'
      Size = 50
    end
    object QryClinicaDS_TELEFONE: TStringField
      FieldName = 'DS_TELEFONE'
    end
    object QryClinicaDS_SENHAEMAIL: TStringField
      FieldName = 'DS_SENHAEMAIL'
    end
    object QryClinicaDS_CEP: TStringField
      FieldName = 'DS_CEP'
      Size = 10
    end
  end
  object CdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspUsuario'
    Left = 488
    Top = 272
    object CdsUsuarioID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object CdsUsuarioID_PERFIL: TIntegerField
      FieldName = 'ID_PERFIL'
    end
    object CdsUsuarioID_EQUIPE: TIntegerField
      FieldName = 'ID_EQUIPE'
    end
    object CdsUsuarioDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object CdsUsuarioDS_LOGIN: TStringField
      FieldName = 'DS_LOGIN'
    end
    object CdsUsuarioDS_SENHA: TStringField
      FieldName = 'DS_SENHA'
    end
    object CdsUsuarioBO_SISTEMA: TStringField
      FieldName = 'BO_SISTEMA'
      Size = 3
    end
    object CdsUsuarioBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Size = 3
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
      'select * from usuario where id_usuario > 0')
    SQLConnection = SQLConnection
    Left = 488
    Top = 240
    object QryUsuarioID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object QryUsuarioID_PERFIL: TIntegerField
      FieldName = 'ID_PERFIL'
    end
    object QryUsuarioID_EQUIPE: TIntegerField
      FieldName = 'ID_EQUIPE'
    end
    object QryUsuarioDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object QryUsuarioDS_LOGIN: TStringField
      FieldName = 'DS_LOGIN'
    end
    object QryUsuarioDS_SENHA: TStringField
      FieldName = 'DS_SENHA'
    end
    object QryUsuarioBO_SISTEMA: TStringField
      FieldName = 'BO_SISTEMA'
      Size = 3
    end
    object QryUsuarioBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Size = 3
    end
  end
  object CdsPacienteConvenio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacienteConvenio'
    Left = 80
    Top = 400
    object CdsPacienteConvenioID_PACIENTE_CONVENIO: TIntegerField
      FieldName = 'ID_PACIENTE_CONVENIO'
      Required = True
    end
    object CdsPacienteConvenioID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object CdsPacienteConvenioID_CONVENIO: TIntegerField
      FieldName = 'ID_CONVENIO'
      Required = True
    end
    object CdsPacienteConvenioBO_PRINCIPAL: TStringField
      FieldName = 'BO_PRINCIPAL'
      Required = True
      Size = 3
    end
    object CdsPacienteConvenioBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
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
      'select * from paciente_convenio')
    SQLConnection = SQLConnection
    Left = 80
    Top = 368
    object QryPacienteConvenioID_PACIENTE_CONVENIO: TIntegerField
      FieldName = 'ID_PACIENTE_CONVENIO'
      Required = True
    end
    object QryPacienteConvenioID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object QryPacienteConvenioID_CONVENIO: TIntegerField
      FieldName = 'ID_CONVENIO'
      Required = True
    end
    object QryPacienteConvenioBO_PRINCIPAL: TStringField
      FieldName = 'BO_PRINCIPAL'
      Required = True
      Size = 3
    end
    object QryPacienteConvenioBO_ATIVO: TStringField
      FieldName = 'BO_ATIVO'
      Required = True
      Size = 3
    end
  end
  object CdsPacienteConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacienteConsulta'
    Left = 200
    Top = 400
    object CdsPacienteConsultaID_PACIENTE_CONSULTA: TIntegerField
      FieldName = 'ID_PACIENTE_CONSULTA'
      Required = True
    end
    object CdsPacienteConsultaID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object CdsPacienteConsultaID_DOUTOR: TIntegerField
      FieldName = 'ID_DOUTOR'
      Required = True
    end
    object CdsPacienteConsultaID_AGENDA: TIntegerField
      FieldName = 'ID_AGENDA'
      Required = True
    end
    object CdsPacienteConsultaDT_CONSULTA: TDateField
      FieldName = 'DT_CONSULTA'
      Required = True
    end
    object CdsPacienteConsultaHR_CONSULTA: TTimeField
      FieldName = 'HR_CONSULTA'
      Required = True
    end
    object CdsPacienteConsultaTP_STATUS: TStringField
      FieldName = 'TP_STATUS'
      Required = True
      Size = 80
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
      'select * from paciente_consulta')
    SQLConnection = SQLConnection
    Left = 200
    Top = 368
    object QryPacienteConsultaID_PACIENTE_CONSULTA: TIntegerField
      FieldName = 'ID_PACIENTE_CONSULTA'
    end
    object QryPacienteConsultaID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
    end
    object QryPacienteConsultaID_DOUTOR: TIntegerField
      FieldName = 'ID_DOUTOR'
    end
    object QryPacienteConsultaID_AGENDA: TIntegerField
      FieldName = 'ID_AGENDA'
    end
    object QryPacienteConsultaDT_CONSULTA: TDateField
      FieldName = 'DT_CONSULTA'
    end
    object QryPacienteConsultaHR_CONSULTA: TTimeField
      FieldName = 'HR_CONSULTA'
    end
    object QryPacienteConsultaTP_STATUS: TStringField
      FieldName = 'TP_STATUS'
      Size = 80
    end
  end
  object CdsPacienteEvolucao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacienteEvolucao'
    Left = 328
    Top = 400
    object CdsPacienteEvolucaoID_PACIENTE_EVOLUCAOCLINICA: TIntegerField
      FieldName = 'ID_PACIENTE_EVOLUCAOCLINICA'
      Required = True
    end
    object CdsPacienteEvolucaoID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object CdsPacienteEvolucaoID_DOUTOR: TIntegerField
      FieldName = 'ID_DOUTOR'
      Required = True
    end
    object CdsPacienteEvolucaoID_AGENDA: TIntegerField
      FieldName = 'ID_AGENDA'
      Required = True
    end
    object CdsPacienteEvolucaoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object CdsPacienteEvolucaoHR_CADASTRO: TTimeField
      FieldName = 'HR_CADASTRO'
      Required = True
    end
    object CdsPacienteEvolucaoDS_EVOLUCAOCLINICA: TStringField
      FieldName = 'DS_EVOLUCAOCLINICA'
      Required = True
      Size = 10000
    end
    object CdsPacienteEvolucaoBO_RASCUNHO: TStringField
      FieldName = 'BO_RASCUNHO'
      Required = True
      Size = 3
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
      'select * from paciente_evolucaoclinica')
    SQLConnection = SQLConnection
    Left = 328
    Top = 368
    object QryPacienteEvolucaoID_PACIENTE_EVOLUCAOCLINICA: TIntegerField
      FieldName = 'ID_PACIENTE_EVOLUCAOCLINICA'
      Required = True
    end
    object QryPacienteEvolucaoID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object QryPacienteEvolucaoID_DOUTOR: TIntegerField
      FieldName = 'ID_DOUTOR'
      Required = True
    end
    object QryPacienteEvolucaoID_AGENDA: TIntegerField
      FieldName = 'ID_AGENDA'
      Required = True
    end
    object QryPacienteEvolucaoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object QryPacienteEvolucaoHR_CADASTRO: TTimeField
      FieldName = 'HR_CADASTRO'
      Required = True
    end
    object QryPacienteEvolucaoDS_EVOLUCAOCLINICA: TStringField
      FieldName = 'DS_EVOLUCAOCLINICA'
      Required = True
      Size = 10000
    end
    object QryPacienteEvolucaoBO_RASCUNHO: TStringField
      FieldName = 'BO_RASCUNHO'
      Required = True
      Size = 3
    end
  end
  object CdsPacienteReceituario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacienteReceituario'
    Left = 456
    Top = 408
    object CdsPacienteReceituarioID_PACIENTE_RECEITUARIO: TIntegerField
      FieldName = 'ID_PACIENTE_RECEITUARIO'
      Required = True
    end
    object CdsPacienteReceituarioID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object CdsPacienteReceituarioID_DOUTOR: TIntegerField
      FieldName = 'ID_DOUTOR'
      Required = True
    end
    object CdsPacienteReceituarioID_AGENDA: TIntegerField
      FieldName = 'ID_AGENDA'
      Required = True
    end
    object CdsPacienteReceituarioDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object CdsPacienteReceituarioHR_CADASTRO: TTimeField
      FieldName = 'HR_CADASTRO'
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
      'select * from paciente_receituario')
    SQLConnection = SQLConnection
    Left = 456
    Top = 376
    object QryPacienteReceituarioID_PACIENTE_RECEITUARIO: TIntegerField
      FieldName = 'ID_PACIENTE_RECEITUARIO'
      Required = True
    end
    object QryPacienteReceituarioID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object QryPacienteReceituarioID_DOUTOR: TIntegerField
      FieldName = 'ID_DOUTOR'
      Required = True
    end
    object QryPacienteReceituarioID_AGENDA: TIntegerField
      FieldName = 'ID_AGENDA'
      Required = True
    end
    object QryPacienteReceituarioDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object QryPacienteReceituarioHR_CADASTRO: TTimeField
      FieldName = 'HR_CADASTRO'
      Required = True
    end
  end
  object CdsPacienteReceituarioUso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacienteReceituarioUso'
    Left = 600
    Top = 408
    object CdsPacienteReceituarioUsoID_PACIENTE_RECEITUARIO_USO: TIntegerField
      FieldName = 'ID_PACIENTE_RECEITUARIO_USO'
      Required = True
    end
    object CdsPacienteReceituarioUsoID_PACIENTE_RECEITUARIO: TIntegerField
      FieldName = 'ID_PACIENTE_RECEITUARIO'
      Required = True
    end
    object CdsPacienteReceituarioUsoID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object CdsPacienteReceituarioUsoID_MEDICAMENTO: TIntegerField
      FieldName = 'ID_MEDICAMENTO'
      Required = True
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
      'select * from paciente_receituario_uso')
    SQLConnection = SQLConnection
    Left = 600
    Top = 376
    object QryPacienteReceituarioUsoID_PACIENTE_RECEITUARIO_USO: TIntegerField
      FieldName = 'ID_PACIENTE_RECEITUARIO_USO'
      Required = True
    end
    object QryPacienteReceituarioUsoID_PACIENTE_RECEITUARIO: TIntegerField
      FieldName = 'ID_PACIENTE_RECEITUARIO'
      Required = True
    end
    object QryPacienteReceituarioUsoID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object QryPacienteReceituarioUsoID_MEDICAMENTO: TIntegerField
      FieldName = 'ID_MEDICAMENTO'
      Required = True
    end
  end
  object CdsPacienteExame: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacienteExame'
    Left = 728
    Top = 408
    object CdsPacienteExameID_PACIENTE_EXAME: TIntegerField
      FieldName = 'ID_PACIENTE_EXAME'
      Required = True
    end
    object CdsPacienteExameID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object CdsPacienteExameID_DOUTOR: TIntegerField
      FieldName = 'ID_DOUTOR'
      Required = True
    end
    object CdsPacienteExameID_AGENDA: TIntegerField
      FieldName = 'ID_AGENDA'
      Required = True
    end
    object CdsPacienteExameDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object CdsPacienteExameHR_CADASTRO: TTimeField
      FieldName = 'HR_CADASTRO'
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
      'select * from paciente_exame')
    SQLConnection = SQLConnection
    Left = 728
    Top = 376
    object QryPacienteExameID_PACIENTE_EXAME: TIntegerField
      FieldName = 'ID_PACIENTE_EXAME'
      Required = True
    end
    object QryPacienteExameID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object QryPacienteExameID_DOUTOR: TIntegerField
      FieldName = 'ID_DOUTOR'
      Required = True
    end
    object QryPacienteExameID_AGENDA: TIntegerField
      FieldName = 'ID_AGENDA'
      Required = True
    end
    object QryPacienteExameDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object QryPacienteExameHR_CADASTRO: TTimeField
      FieldName = 'HR_CADASTRO'
      Required = True
    end
  end
  object CdsPacienteExameSolicitado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacienteExameSolicitado'
    Left = 848
    Top = 408
    object CdsPacienteExameSolicitadoID_PACIENTE_EXAME_SOLICITADO: TIntegerField
      FieldName = 'ID_PACIENTE_EXAME_SOLICITADO'
      Required = True
    end
    object CdsPacienteExameSolicitadoID_PACIENTE_EXAME: TIntegerField
      FieldName = 'ID_PACIENTE_EXAME'
      Required = True
    end
    object CdsPacienteExameSolicitadoID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object CdsPacienteExameSolicitadoID_EXAME: TIntegerField
      FieldName = 'ID_EXAME'
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
      'select * from paciente_exame_solicitado')
    SQLConnection = SQLConnection
    Left = 848
    Top = 376
    object QryPacienteExameSolicitadoID_PACIENTE_EXAME_SOLICITADO: TIntegerField
      FieldName = 'ID_PACIENTE_EXAME_SOLICITADO'
      Required = True
    end
    object QryPacienteExameSolicitadoID_PACIENTE_EXAME: TIntegerField
      FieldName = 'ID_PACIENTE_EXAME'
      Required = True
    end
    object QryPacienteExameSolicitadoID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object QryPacienteExameSolicitadoID_EXAME: TIntegerField
      FieldName = 'ID_EXAME'
      Required = True
    end
  end
  object CdsPacienteLaudoMedico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacienteLaudoMedico'
    Left = 728
    Top = 280
    object CdsPacienteLaudoMedicoID_PACIENTE_LAUDOMEDICO: TIntegerField
      FieldName = 'ID_PACIENTE_LAUDOMEDICO'
      Required = True
    end
    object CdsPacienteLaudoMedicoID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object CdsPacienteLaudoMedicoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object CdsPacienteLaudoMedicoHR_CADASTRO: TTimeField
      FieldName = 'HR_CADASTRO'
      Required = True
    end
    object CdsPacienteLaudoMedicoID_DOUTOR: TIntegerField
      FieldName = 'ID_DOUTOR'
      Required = True
    end
    object CdsPacienteLaudoMedicoID_AGENDA: TIntegerField
      FieldName = 'ID_AGENDA'
      Required = True
    end
    object CdsPacienteLaudoMedicoDS_ACUIDADEOD_COMCORRECAO: TStringField
      FieldName = 'DS_ACUIDADEOD_COMCORRECAO'
      Size = 10
    end
    object CdsPacienteLaudoMedicoDS_ACUIDADEOE_COMCORRECAO: TStringField
      FieldName = 'DS_ACUIDADEOE_COMCORRECAO'
      Size = 10
    end
    object CdsPacienteLaudoMedicoDS_ACUIDADEOD_SEMCORRECAO: TStringField
      FieldName = 'DS_ACUIDADEOD_SEMCORRECAO'
      Size = 10
    end
    object CdsPacienteLaudoMedicoDS_ACUIDADEOE_SEMCORRECAO: TStringField
      FieldName = 'DS_ACUIDADEOE_SEMCORRECAO'
      Size = 10
    end
    object CdsPacienteLaudoMedicoDS_TONOMETRIAOD: TStringField
      FieldName = 'DS_TONOMETRIAOD'
      Size = 10
    end
    object CdsPacienteLaudoMedicoDS_TONOMETRIAOE: TStringField
      FieldName = 'DS_TONOMETRIAOE'
      Size = 10
    end
    object CdsPacienteLaudoMedicoDS_FUNDOSCOPIAOD: TStringField
      FieldName = 'DS_FUNDOSCOPIAOD'
      Size = 10
    end
    object CdsPacienteLaudoMedicoDS_FUNDOSCOPIAOE: TStringField
      FieldName = 'DS_FUNDOSCOPIAOE'
      Size = 10
    end
    object CdsPacienteLaudoMedicoBO_APTO: TStringField
      FieldName = 'BO_APTO'
      Required = True
      Size = 3
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
      'select * from paciente_laudomedico')
    SQLConnection = SQLConnection
    Left = 728
    Top = 248
    object QryPacienteLaudoMedicoID_PACIENTE_LAUDOMEDICO: TIntegerField
      FieldName = 'ID_PACIENTE_LAUDOMEDICO'
      Required = True
    end
    object QryPacienteLaudoMedicoID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object QryPacienteLaudoMedicoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object QryPacienteLaudoMedicoHR_CADASTRO: TTimeField
      FieldName = 'HR_CADASTRO'
      Required = True
    end
    object QryPacienteLaudoMedicoID_DOUTOR: TIntegerField
      FieldName = 'ID_DOUTOR'
      Required = True
    end
    object QryPacienteLaudoMedicoID_AGENDA: TIntegerField
      FieldName = 'ID_AGENDA'
      Required = True
    end
    object QryPacienteLaudoMedicoDS_ACUIDADEOD_COMCORRECAO: TStringField
      FieldName = 'DS_ACUIDADEOD_COMCORRECAO'
      Size = 10
    end
    object QryPacienteLaudoMedicoDS_ACUIDADEOE_COMCORRECAO: TStringField
      FieldName = 'DS_ACUIDADEOE_COMCORRECAO'
      Size = 10
    end
    object QryPacienteLaudoMedicoDS_ACUIDADEOD_SEMCORRECAO: TStringField
      FieldName = 'DS_ACUIDADEOD_SEMCORRECAO'
      Size = 10
    end
    object QryPacienteLaudoMedicoDS_ACUIDADEOE_SEMCORRECAO: TStringField
      FieldName = 'DS_ACUIDADEOE_SEMCORRECAO'
      Size = 10
    end
    object QryPacienteLaudoMedicoDS_TONOMETRIAOD: TStringField
      FieldName = 'DS_TONOMETRIAOD'
      Size = 10
    end
    object QryPacienteLaudoMedicoDS_TONOMETRIAOE: TStringField
      FieldName = 'DS_TONOMETRIAOE'
      Size = 10
    end
    object QryPacienteLaudoMedicoDS_FUNDOSCOPIAOD: TStringField
      FieldName = 'DS_FUNDOSCOPIAOD'
      Size = 10
    end
    object QryPacienteLaudoMedicoDS_FUNDOSCOPIAOE: TStringField
      FieldName = 'DS_FUNDOSCOPIAOE'
      Size = 10
    end
    object QryPacienteLaudoMedicoBO_APTO: TStringField
      FieldName = 'BO_APTO'
      Required = True
      Size = 3
    end
  end
  object CdsPacientePrescricaoLente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPacientePrescricaoLente'
    Left = 880
    Top = 280
    object CdsPacientePrescricaoLenteID_PACIENTE_PRESCRICAOLENTE: TIntegerField
      FieldName = 'ID_PACIENTE_PRESCRICAOLENTE'
      Required = True
    end
    object CdsPacientePrescricaoLenteID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object CdsPacientePrescricaoLenteDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object CdsPacientePrescricaoLenteID_DOUTOR: TIntegerField
      FieldName = 'ID_DOUTOR'
      Required = True
    end
    object CdsPacientePrescricaoLenteDS_LONGE_OD_ESF: TStringField
      FieldName = 'DS_LONGE_OD_ESF'
      Size = 10
    end
    object CdsPacientePrescricaoLenteDS_LONGE_OE_ESF: TStringField
      FieldName = 'DS_LONGE_OE_ESF'
      Size = 10
    end
    object CdsPacientePrescricaoLenteDS_LONGE_OD_CIL: TStringField
      FieldName = 'DS_LONGE_OD_CIL'
      Size = 10
    end
    object CdsPacientePrescricaoLenteDS_LONGE_OE_CIL: TStringField
      FieldName = 'DS_LONGE_OE_CIL'
      Size = 10
    end
    object CdsPacientePrescricaoLenteDS_LONGE_OD_EIXO: TStringField
      FieldName = 'DS_LONGE_OD_EIXO'
      Size = 10
    end
    object CdsPacientePrescricaoLenteDS_LONGE_OE_EIXO: TStringField
      FieldName = 'DS_LONGE_OE_EIXO'
      Size = 10
    end
    object CdsPacientePrescricaoLenteDS_LONGE_OD_DP: TStringField
      FieldName = 'DS_LONGE_OD_DP'
      Size = 10
    end
    object CdsPacientePrescricaoLenteDS_LONGE_OE_DP: TStringField
      FieldName = 'DS_LONGE_OE_DP'
      Size = 10
    end
    object CdsPacientePrescricaoLenteDS_PERTO_OD_ESF: TStringField
      FieldName = 'DS_PERTO_OD_ESF'
      Size = 10
    end
    object CdsPacientePrescricaoLenteDS_PERTO_OE_ESF: TStringField
      FieldName = 'DS_PERTO_OE_ESF'
      Size = 10
    end
    object CdsPacientePrescricaoLenteDS_PERTO_OD_CIL: TStringField
      FieldName = 'DS_PERTO_OD_CIL'
      Size = 10
    end
    object CdsPacientePrescricaoLenteDS_PERTO_OE_CIL: TStringField
      FieldName = 'DS_PERTO_OE_CIL'
      Size = 10
    end
    object CdsPacientePrescricaoLenteDS_PERTO_OD_EIXO: TStringField
      FieldName = 'DS_PERTO_OD_EIXO'
      Size = 10
    end
    object CdsPacientePrescricaoLenteDS_PERTO_OE_EIXO: TStringField
      FieldName = 'DS_PERTO_OE_EIXO'
      Size = 10
    end
    object CdsPacientePrescricaoLenteDS_PERTO_OD_DP: TStringField
      FieldName = 'DS_PERTO_OD_DP'
      Size = 10
    end
    object CdsPacientePrescricaoLenteDS_PERTO_OE_DP: TStringField
      FieldName = 'DS_PERTO_OE_DP'
      Size = 10
    end
    object CdsPacientePrescricaoLenteDS_ADICAO: TStringField
      FieldName = 'DS_ADICAO'
      Size = 10
    end
    object CdsPacientePrescricaoLenteID_AGENDA: TIntegerField
      FieldName = 'ID_AGENDA'
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
      'select * from paciente_prescricaolente')
    SQLConnection = SQLConnection
    Left = 880
    Top = 248
    object QryPacientePrescricaoLenteID_PACIENTE_PRESCRICAOLENTE: TIntegerField
      FieldName = 'ID_PACIENTE_PRESCRICAOLENTE'
      Required = True
    end
    object QryPacientePrescricaoLenteID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object QryPacientePrescricaoLenteDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object QryPacientePrescricaoLenteID_DOUTOR: TIntegerField
      FieldName = 'ID_DOUTOR'
      Required = True
    end
    object QryPacientePrescricaoLenteDS_LONGE_OD_ESF: TStringField
      FieldName = 'DS_LONGE_OD_ESF'
      Size = 10
    end
    object QryPacientePrescricaoLenteDS_LONGE_OE_ESF: TStringField
      FieldName = 'DS_LONGE_OE_ESF'
      Size = 10
    end
    object QryPacientePrescricaoLenteDS_LONGE_OD_CIL: TStringField
      FieldName = 'DS_LONGE_OD_CIL'
      Size = 10
    end
    object QryPacientePrescricaoLenteDS_LONGE_OE_CIL: TStringField
      FieldName = 'DS_LONGE_OE_CIL'
      Size = 10
    end
    object QryPacientePrescricaoLenteDS_LONGE_OD_EIXO: TStringField
      FieldName = 'DS_LONGE_OD_EIXO'
      Size = 10
    end
    object QryPacientePrescricaoLenteDS_LONGE_OE_EIXO: TStringField
      FieldName = 'DS_LONGE_OE_EIXO'
      Size = 10
    end
    object QryPacientePrescricaoLenteDS_LONGE_OD_DP: TStringField
      FieldName = 'DS_LONGE_OD_DP'
      Size = 10
    end
    object QryPacientePrescricaoLenteDS_LONGE_OE_DP: TStringField
      FieldName = 'DS_LONGE_OE_DP'
      Size = 10
    end
    object QryPacientePrescricaoLenteDS_PERTO_OD_ESF: TStringField
      FieldName = 'DS_PERTO_OD_ESF'
      Size = 10
    end
    object QryPacientePrescricaoLenteDS_PERTO_OE_ESF: TStringField
      FieldName = 'DS_PERTO_OE_ESF'
      Size = 10
    end
    object QryPacientePrescricaoLenteDS_PERTO_OD_CIL: TStringField
      FieldName = 'DS_PERTO_OD_CIL'
      Size = 10
    end
    object QryPacientePrescricaoLenteDS_PERTO_OE_CIL: TStringField
      FieldName = 'DS_PERTO_OE_CIL'
      Size = 10
    end
    object QryPacientePrescricaoLenteDS_PERTO_OD_EIXO: TStringField
      FieldName = 'DS_PERTO_OD_EIXO'
      Size = 10
    end
    object QryPacientePrescricaoLenteDS_PERTO_OE_EIXO: TStringField
      FieldName = 'DS_PERTO_OE_EIXO'
      Size = 10
    end
    object QryPacientePrescricaoLenteDS_PERTO_OD_DP: TStringField
      FieldName = 'DS_PERTO_OD_DP'
      Size = 10
    end
    object QryPacientePrescricaoLenteDS_PERTO_OE_DP: TStringField
      FieldName = 'DS_PERTO_OE_DP'
      Size = 10
    end
    object QryPacientePrescricaoLenteDS_ADICAO: TStringField
      FieldName = 'DS_ADICAO'
      Size = 10
    end
    object QryPacientePrescricaoLenteID_AGENDA: TIntegerField
      FieldName = 'ID_AGENDA'
    end
  end
  object CdsAgenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAgenda'
    Left = 832
    Top = 168
    object CdsAgendaID_AGENDA: TIntegerField
      FieldName = 'ID_AGENDA'
      Required = True
    end
    object CdsAgendaID_DOUTOR: TIntegerField
      FieldName = 'ID_DOUTOR'
      Required = True
    end
    object CdsAgendaID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object CdsAgendaID_CONVENIO: TIntegerField
      FieldName = 'ID_CONVENIO'
    end
    object CdsAgendaMN_INTERVALO: TIntegerField
      FieldName = 'MN_INTERVALO'
    end
    object CdsAgendaDT_AGENDA: TDateField
      FieldName = 'DT_AGENDA'
      Required = True
    end
    object CdsAgendaHR_AGENDA: TTimeField
      FieldName = 'HR_AGENDA'
      Required = True
    end
    object CdsAgendaHR_CHEGADA: TTimeField
      FieldName = 'HR_CHEGADA'
    end
    object CdsAgendaHR_MANHAINICIAL: TTimeField
      FieldName = 'HR_MANHAINICIAL'
    end
    object CdsAgendaHR_MANHAFINAL: TTimeField
      FieldName = 'HR_MANHAFINAL'
    end
    object CdsAgendaHR_TARDEINICIAL: TTimeField
      FieldName = 'HR_TARDEINICIAL'
    end
    object CdsAgendaHR_TARDEFINAL: TTimeField
      FieldName = 'HR_TARDEFINAL'
    end
    object CdsAgendaTP_STATUS: TStringField
      FieldName = 'TP_STATUS'
      Required = True
      Size = 80
    end
    object CdsAgendaTP_MOTIVO: TStringField
      FieldName = 'TP_MOTIVO'
      Required = True
      Size = 80
    end
    object CdsAgendaDS_OBSERVACAO: TStringField
      FieldName = 'DS_OBSERVACAO'
      Size = 5000
    end
    object CdsAgendaBO_URGENTE: TStringField
      FieldName = 'BO_URGENTE'
      Required = True
      Size = 3
    end
    object CdsAgendaBO_ENCAIXE: TStringField
      FieldName = 'BO_ENCAIXE'
      Required = True
      Size = 3
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
      'select * from agenda order by id_agenda')
    SQLConnection = SQLConnection
    Left = 832
    Top = 136
    object QryAgendaID_AGENDA: TIntegerField
      FieldName = 'ID_AGENDA'
      Required = True
    end
    object QryAgendaID_DOUTOR: TIntegerField
      FieldName = 'ID_DOUTOR'
      Required = True
    end
    object QryAgendaID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Required = True
    end
    object QryAgendaID_CONVENIO: TIntegerField
      FieldName = 'ID_CONVENIO'
    end
    object QryAgendaMN_INTERVALO: TIntegerField
      FieldName = 'MN_INTERVALO'
    end
    object QryAgendaDT_AGENDA: TDateField
      FieldName = 'DT_AGENDA'
      Required = True
    end
    object QryAgendaHR_AGENDA: TTimeField
      FieldName = 'HR_AGENDA'
      Required = True
    end
    object QryAgendaHR_CHEGADA: TTimeField
      FieldName = 'HR_CHEGADA'
    end
    object QryAgendaHR_MANHAINICIAL: TTimeField
      FieldName = 'HR_MANHAINICIAL'
    end
    object QryAgendaHR_MANHAFINAL: TTimeField
      FieldName = 'HR_MANHAFINAL'
    end
    object QryAgendaHR_TARDEINICIAL: TTimeField
      FieldName = 'HR_TARDEINICIAL'
    end
    object QryAgendaHR_TARDEFINAL: TTimeField
      FieldName = 'HR_TARDEFINAL'
    end
    object QryAgendaTP_STATUS: TStringField
      FieldName = 'TP_STATUS'
      Required = True
      Size = 80
    end
    object QryAgendaTP_MOTIVO: TStringField
      FieldName = 'TP_MOTIVO'
      Required = True
      Size = 80
    end
    object QryAgendaDS_OBSERVACAO: TStringField
      FieldName = 'DS_OBSERVACAO'
      Size = 5000
    end
    object QryAgendaBO_URGENTE: TStringField
      FieldName = 'BO_URGENTE'
      Required = True
      Size = 3
    end
    object QryAgendaBO_ENCAIXE: TStringField
      FieldName = 'BO_ENCAIXE'
      Required = True
      Size = 3
    end
  end
end
