object DmRelatorioF: TDmRelatorioF
  OldCreateOrder = False
  Height = 562
  Width = 961
  object LocalConnection: TLocalConnection
    Left = 34
    Top = 12
  end
  object DsCabecalhoRelatorio: TDataSource
    DataSet = CdsCabecalhoRelatorio
    Left = 863
    Top = 103
  end
  object CdsCabecalhoRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCabecalhoRelatorio'
    Left = 862
    Top = 88
    object CdsCabecalhoRelatorioIDCLINICA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCLINICA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsCabecalhoRelatorioIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'IDCIDADE'
    end
    object CdsCabecalhoRelatorioDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsCabecalhoRelatorioNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
    end
    object CdsCabecalhoRelatorioCLINICA: TStringField
      DisplayLabel = 'Cl'#237'nica'
      FieldName = 'CLINICA'
      Size = 100
    end
    object CdsCabecalhoRelatorioENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 100
    end
    object CdsCabecalhoRelatorioBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 100
    end
    object CdsCabecalhoRelatorioSITECLINICA: TStringField
      DisplayLabel = 'Site'
      FieldName = 'SITECLINICA'
      Size = 100
    end
    object CdsCabecalhoRelatorioEMAILCLINICA: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAILCLINICA'
      Size = 100
    end
    object CdsCabecalhoRelatorioTELEFONE1: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'TELEFONE1'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsCabecalhoRelatorioTELEFONE2: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'TELEFONE2'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsCabecalhoRelatorioCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999\-999;0;_'
      Size = 10
    end
    object CdsCabecalhoRelatorioFOTOMENUPRINCIPAL: TBlobField
      DisplayLabel = 'Foto Menu Principal'
      FieldName = 'FOTOMENUPRINCIPAL'
      Size = 1
    end
    object CdsCabecalhoRelatorioFOTORELATORIO: TBlobField
      DisplayLabel = 'Foto Relat'#243'rio'
      FieldName = 'FOTORELATORIO'
      Size = 1
    end
    object CdsCabecalhoRelatorioCIDADEUF: TStringField
      DisplayLabel = 'Cidade - UF'
      FieldName = 'CIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object CdsCabecalhoRelatorioSMTPPORTA: TIntegerField
      DisplayLabel = 'Porta SMTP'
      FieldName = 'SMTPPORTA'
    end
    object CdsCabecalhoRelatorioSMTPSERVIDOR: TStringField
      DisplayLabel = 'Servidor SMTP'
      FieldName = 'SMTPSERVIDOR'
      Size = 100
    end
    object CdsCabecalhoRelatorioEMAILCLINICASENHA: TStringField
      DisplayLabel = 'Senha Email'
      FieldName = 'EMAILCLINICASENHA'
    end
  end
  object DspCabecalhoRelatorio: TDataSetProvider
    DataSet = QryCabecalhoRelatorio
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 864
    Top = 72
  end
  object QryCabecalhoRelatorio: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT CLI.*'
      '      ,(CID.CIDADE || '#39' - '#39' || CID.UF) AS CIDADEUF'
      '  FROM CLINICA CLI'
      '       LEFT JOIN CIDADE CID ON (CID.IDCIDADE = CLI.IDCIDADE)'
      ' WHERE 1 = 1')
    SQLConnection = DmConexaoF.SQLConnection
    Left = 864
    Top = 56
    object QryCabecalhoRelatorioIDCLINICA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCLINICA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCabecalhoRelatorioIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'IDCIDADE'
    end
    object QryCabecalhoRelatorioDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object QryCabecalhoRelatorioNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
    end
    object QryCabecalhoRelatorioCLINICA: TStringField
      DisplayLabel = 'Cl'#237'nica'
      FieldName = 'CLINICA'
      Size = 100
    end
    object QryCabecalhoRelatorioENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 100
    end
    object QryCabecalhoRelatorioBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QryCabecalhoRelatorioSITECLINICA: TStringField
      DisplayLabel = 'Site'
      FieldName = 'SITECLINICA'
      Size = 100
    end
    object QryCabecalhoRelatorioEMAILCLINICA: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAILCLINICA'
      Size = 100
    end
    object QryCabecalhoRelatorioTELEFONE1: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'TELEFONE1'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QryCabecalhoRelatorioTELEFONE2: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'TELEFONE2'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object QryCabecalhoRelatorioCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999\-999;0;_'
      Size = 10
    end
    object QryCabecalhoRelatorioFOTOMENUPRINCIPAL: TBlobField
      DisplayLabel = 'Foto Menu Principal'
      FieldName = 'FOTOMENUPRINCIPAL'
      Size = 1
    end
    object QryCabecalhoRelatorioFOTORELATORIO: TBlobField
      DisplayLabel = 'Foto Relat'#243'rio'
      FieldName = 'FOTORELATORIO'
      Size = 1
    end
    object QryCabecalhoRelatorioCIDADEUF: TStringField
      DisplayLabel = 'Cidade - UF'
      FieldName = 'CIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object QryCabecalhoRelatorioSMTPPORTA: TIntegerField
      DisplayLabel = 'Porta SMTP'
      FieldName = 'SMTPPORTA'
    end
    object QryCabecalhoRelatorioSMTPSERVIDOR: TStringField
      DisplayLabel = 'Servidor SMTP'
      FieldName = 'SMTPSERVIDOR'
      Size = 100
    end
    object QryCabecalhoRelatorioEMAILCLINICASENHA: TStringField
      DisplayLabel = 'Senha Email'
      FieldName = 'EMAILCLINICASENHA'
    end
  end
  object frxCdsClinica: TfrxDBDataset
    UserName = 'frxCdsClinica'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDCLINICA=IDCLINICA'
      'IDCIDADE=IDCIDADE'
      'DATAINCLUSAO=DATAINCLUSAO'
      'NUMERO=NUMERO'
      'CLINICA=CLINICA'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'SITECLINICA=SITECLINICA'
      'EMAILCLINICA=EMAILCLINICA'
      'TELEFONE1=TELEFONE1'
      'TELEFONE2=TELEFONE2'
      'CEP=CEP'
      'FOTOMENUPRINCIPAL=FOTOMENUPRINCIPAL'
      'FOTORELATORIO=FOTORELATORIO'
      'CIDADEUF=CIDADEUF'
      'SMTPPORTA=SMTPPORTA'
      'SMTPSERVIDOR=SMTPSERVIDOR'
      'EMAILCLINICASENHA=EMAILCLINICASENHA')
    DataSet = CdsCabecalhoRelatorio
    BCDToCurrency = False
    Left = 862
    Top = 36
  end
  object DspGenerico: TDataSetProvider
    DataSet = QryGenerico
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poRetainServerOrder]
    UpdateMode = upWhereKeyOnly
    Left = 158
    Top = 25
  end
  object QryGenerico: TSQLQuery
    NumericMapping = True
    MaxBlobSize = 1
    Params = <>
    SQLConnection = DmConexaoF.SQLConnection
    Left = 158
    Top = 12
  end
end
