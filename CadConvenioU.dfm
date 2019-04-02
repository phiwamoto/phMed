inherited CadConvenioF: TCadConvenioF
  Caption = 'Cadastro de Conv'#234'nio'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlTelaCadastro: TPanel
    inherited PcTelaCadastro: TcxPageControl
      ActivePage = TsPrincipal
      ClientRectTop = 26
      object TsPrincipal: TcxTabSheet
        Caption = 'Principal'
        ImageIndex = 13
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object LblConvenio: TLabel
          Left = 10
          Top = 55
          Width = 52
          Height = 15
          Caption = 'Conv'#234'nio'
        end
        object LblDataCadastro: TLabel
          Left = 10
          Top = 10
          Width = 76
          Height = 15
          Caption = 'Data Inclus'#227'o'
        end
        object DbConvenio: TcxDBTextEdit
          Left = 10
          Top = 70
          DataBinding.DataField = 'CONVENIO'
          DataBinding.DataSource = DsConvenio
          TabOrder = 0
          Width = 400
        end
        object DbDataInclusao: TcxDBDateEdit
          Left = 10
          Top = 25
          TabStop = False
          DataBinding.DataField = 'DATAINCLUSAO'
          DataBinding.DataSource = DsConvenio
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 1
          Width = 100
        end
        object CbAtivo: TcxDBCheckBox
          Left = 10
          Top = 100
          Caption = 'Ativo'
          DataBinding.DataField = 'IDSITUACAOREGISTRO'
          DataBinding.DataSource = DsConvenio
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 2
          Width = 50
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
  object DsConvenio: TDataSource
    DataSet = CdsConvenio
    Left = 504
    Top = 240
  end
  object CdsConvenio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConvenio'
    RemoteServer = DmCadastroF.LocalConnection
    AfterInsert = CdsConvenioAfterInsert
    Left = 504
    Top = 224
    object CdsConvenioIDCONVENIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCONVENIO'
      Required = True
    end
    object CdsConvenioIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsConvenioDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsConvenioCONVENIO: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'CONVENIO'
      Required = True
      Size = 100
    end
    object CdsConvenioSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
end
