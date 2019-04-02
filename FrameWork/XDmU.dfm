object XDmF: TXDmF
  OldCreateOrder = False
  Height = 571
  Width = 1007
  object LocalConnection: TLocalConnection
    Left = 114
    Top = 4
  end
  object SQLConnection: TSQLConnection
    LoginPrompt = False
    Left = 28
    Top = 4
  end
  object dmCdsGeraCodigo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dmDspGeraCodigo'
    Left = 227
    Top = 31
  end
  object dmDspGeraCodigo: TDataSetProvider
    DataSet = dmQryGeraCodigo
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 227
    Top = 17
  end
  object dmQryGeraCodigo: TSQLQuery
    NumericMapping = True
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 227
    Top = 4
  end
  object dmCdsSistema: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dmDspSistema'
    Left = 503
    Top = 31
  end
  object dmDspSistema: TDataSetProvider
    DataSet = dmQrySistema
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 503
    Top = 17
  end
  object dmQrySistema: TSQLQuery
    NumericMapping = True
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 503
    Top = 4
  end
  object dmCdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dmDspConsulta'
    Left = 329
    Top = 31
  end
  object dmDspConsulta: TDataSetProvider
    DataSet = dmQryConsulta
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 329
    Top = 17
  end
  object dmQryConsulta: TSQLQuery
    NumericMapping = True
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 329
    Top = 4
  end
  object dmCdsExecuta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dmDspExecuta'
    Left = 419
    Top = 31
  end
  object dmDspExecuta: TDataSetProvider
    DataSet = dmQryExecuta
    Options = [poIncFieldProps, poCascadeDeletes, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 419
    Top = 17
  end
  object dmQryExecuta: TSQLQuery
    NumericMapping = True
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 419
    Top = 4
  end
  object dmDspPesquisa: TDataSetProvider
    DataSet = dmQryPesquisa
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poRetainServerOrder]
    UpdateMode = upWhereKeyOnly
    Left = 590
    Top = 17
  end
  object dmQryPesquisa: TSQLQuery
    NumericMapping = True
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 590
    Top = 4
  end
  object dmDspPesquisaTela: TDataSetProvider
    DataSet = dmQryPesquisaTela
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poRetainServerOrder]
    UpdateMode = upWhereKeyOnly
    Left = 691
    Top = 17
  end
  object dmQryPesquisaTela: TSQLQuery
    NumericMapping = True
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 691
    Top = 4
  end
end
