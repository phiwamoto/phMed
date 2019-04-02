inherited CadEmpresaF: TCadEmpresaF
  Caption = 'Configura'#231#227'o de Empresa'
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlTelaCadastro: TPanel
    inherited PcTelaCadastro: TcxPageControl
      ActivePage = TsPrincipal
      ClientRectTop = 26
      object TsPrincipal: TcxTabSheet
        Caption = 'Informa'#231#245'es da Empresa'
        ImageIndex = 13
        object LblNomeFantasia: TLabel
          Left = 10
          Top = 10
          Width = 85
          Height = 15
          Caption = 'Nome Fantasia'
        end
        object LblTelefone: TLabel
          Left = 420
          Top = 10
          Width = 47
          Height = 15
          Caption = 'Telefone'
        end
        object LblCidade: TLabel
          Left = 270
          Top = 100
          Width = 40
          Height = 15
          Caption = 'Cidade'
        end
        object LblCEP: TLabel
          Left = 10
          Top = 55
          Width = 25
          Height = 15
          Caption = 'CEP'
        end
        object LblEndereco: TLabel
          Left = 100
          Top = 55
          Width = 53
          Height = 15
          Caption = 'Endere'#231'o'
        end
        object LblBairro: TLabel
          Left = 10
          Top = 100
          Width = 33
          Height = 15
          Caption = 'Bairro'
        end
        object DbNomeFantasia: TcxDBTextEdit
          Left = 10
          Top = 25
          DataBinding.DataField = 'NOMEFANTASIA'
          DataBinding.DataSource = DsEmpresa
          TabOrder = 0
          Width = 400
        end
        object DbTelefone: TcxDBTextEdit
          Left = 420
          Top = 25
          DataBinding.DataField = 'TELEFONE'
          DataBinding.DataSource = DsEmpresa
          Properties.MaxLength = 10
          TabOrder = 1
          Width = 110
        end
        object DbNomeCidade: TcxDBTextEdit
          Left = 340
          Top = 115
          TabStop = False
          DataBinding.DataField = 'CIDADE'
          DataBinding.DataSource = DsEmpresa
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 6
          Width = 190
        end
        object DbCodigoCidade: TcxDBButtonEdit
          Left = 270
          Top = 115
          DataBinding.DataField = 'IDCIDADE'
          DataBinding.DataSource = DsEmpresa
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = DbCodigoCidadePropertiesButtonClick
          TabOrder = 5
          OnExit = DbCodigoCidadeExit
          Width = 70
        end
        object DbCEP: TcxDBTextEdit
          Left = 10
          Top = 70
          DataBinding.DataField = 'CEP'
          DataBinding.DataSource = DsEmpresa
          Properties.MaxLength = 8
          TabOrder = 2
          Width = 80
        end
        object DbEndereco: TcxDBTextEdit
          Left = 100
          Top = 70
          DataBinding.DataField = 'ENDERECO'
          DataBinding.DataSource = DsEmpresa
          TabOrder = 3
          Width = 430
        end
        object DbBairro: TcxDBTextEdit
          Left = 10
          Top = 115
          DataBinding.DataField = 'BAIRRO'
          DataBinding.DataSource = DsEmpresa
          TabOrder = 4
          Width = 250
        end
      end
    end
  end
  inherited PnlBotao: TPanel
    inherited BtnIncluir: TcxButton [0]
      Visible = False
    end
    inherited BtnExcluir: TcxButton [1]
      Visible = False
    end
    inherited BtnCancelar: TcxButton [2]
    end
    inherited BtnConfirmar: TcxButton [3]
    end
    inherited BtnAlterar: TcxButton [4]
      Left = 5
      ExplicitLeft = 5
    end
    inherited BtnConsultar: TcxButton
      Visible = False
    end
  end
  inherited PnlChaves: TPanel
    Visible = False
  end
  inherited ImageList32: TcxImageList
    FormatVersion = 1
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
  end
  object DsEmpresa: TDataSource
    DataSet = CdsEmpresa
    Left = 600
    Top = 224
  end
  object CdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEmpresa'
    RemoteServer = DmCadastroF.LocalConnection
    Left = 600
    Top = 208
    object CdsEmpresaIDEMPRESA: TSmallintField
      FieldName = 'IDEMPRESA'
      Required = True
    end
    object CdsEmpresaIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
    end
    object CdsEmpresaNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Size = 150
    end
    object CdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 150
    end
    object CdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object CdsEmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 12
    end
    object CdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 55
    end
  end
end
