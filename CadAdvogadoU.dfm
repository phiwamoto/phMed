inherited CadAdvogadoF: TCadAdvogadoF
  Caption = 'Cadastro de Advogado'
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
        object LblPessoa: TLabel
          Left = 10
          Top = 55
          Width = 43
          Height = 15
          Caption = 'Pessoa'
        end
        object LblUsuario: TLabel
          Left = 10
          Top = 100
          Width = 44
          Height = 15
          Caption = 'Usu'#225'rio'
        end
        object DbDataInclusao: TcxDBDateEdit
          Left = 10
          Top = 25
          TabStop = False
          DataBinding.DataField = 'DATAINCLUSAO'
          DataBinding.DataSource = DsAdvogado
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 0
          Width = 100
        end
        object CbSituacaoRegistro: TcxDBCheckBox
          Left = 10
          Top = 150
          Caption = 'Ativo'
          DataBinding.DataField = 'IDSITUACAOREGISTRO'
          DataBinding.DataSource = DsAdvogado
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 1
          Width = 50
        end
        object DbNomeFantasia: TcxDBTextEdit
          Left = 160
          Top = 70
          TabStop = False
          DataBinding.DataField = 'NOMEFANTASIA'
          DataBinding.DataSource = DsAdvogado
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 2
          Width = 425
        end
        object DbCpfCnpj: TcxDBButtonEdit
          Left = 10
          Top = 70
          DataBinding.DataField = 'CPFCNPJ'
          DataBinding.DataSource = DsAdvogado
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = DbCpfCnpjPropertiesButtonClick
          TabOrder = 3
          OnExit = DbCpfCnpjExit
          Width = 150
        end
        object DbCodigoUsuario: TcxDBButtonEdit
          Left = 10
          Top = 115
          DataBinding.DataField = 'IDUSUARIO'
          DataBinding.DataSource = DsAdvogado
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = DbCodigoUsuarioPropertiesButtonClick
          TabOrder = 4
          OnExit = DbCodigoUsuarioExit
          Width = 100
        end
        object DbUsuarioLogin: TcxDBTextEdit
          Left = 110
          Top = 115
          TabStop = False
          DataBinding.DataField = 'LOGIN'
          DataBinding.DataSource = DsAdvogado
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 5
          Width = 475
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
  object DsAdvogado: TDataSource
    DataSet = CdsAdvogado
    Left = 600
    Top = 224
  end
  object CdsAdvogado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAdvogado'
    RemoteServer = DmCadastroF.LocalConnection
    AfterInsert = CdsAdvogadoAfterInsert
    Left = 600
    Top = 208
    object CdsAdvogadoIDADVOGADO: TIntegerField
      FieldName = 'IDADVOGADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsAdvogadoIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Required = True
    end
    object CdsAdvogadoIDPESSOA: TLargeintField
      FieldName = 'IDPESSOA'
      Required = True
    end
    object CdsAdvogadoIDSITUACAOREGISTRO: TSmallintField
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsAdvogadoDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsAdvogadoNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      ProviderFlags = []
      Size = 150
    end
    object CdsAdvogadoCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      ProviderFlags = []
    end
    object CdsAdvogadoIDTIPOPESSOA: TSmallintField
      FieldName = 'IDTIPOPESSOA'
      ProviderFlags = []
    end
    object CdsAdvogadoLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = []
    end
    object CdsAdvogadoSITUACAOREGISTRO: TStringField
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
end
