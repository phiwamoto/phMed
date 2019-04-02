inherited CadCidadeF: TCadCidadeF
  Caption = 'Cadastro de Cidade'
  ExplicitWidth = 960
  ExplicitHeight = 610
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
        object LblFisicaNome: TLabel
          Left = 10
          Top = 55
          Width = 40
          Height = 15
          Caption = 'Cidade'
        end
        object LblUF: TLabel
          Left = 366
          Top = 55
          Width = 16
          Height = 15
          Caption = 'UF'
        end
        object DbDataInclusao: TcxDBDateEdit
          Left = 10
          Top = 25
          TabStop = False
          DataBinding.DataField = 'DATAINCLUSAO'
          DataBinding.DataSource = DsCidade
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 0
          Width = 100
        end
        object DbCidade: TcxDBTextEdit
          Left = 10
          Top = 70
          DataBinding.DataField = 'CIDADE'
          DataBinding.DataSource = DsCidade
          TabOrder = 1
          Width = 350
        end
        object CbAtivo: TcxDBCheckBox
          Left = 10
          Top = 100
          Caption = 'Ativo'
          DataBinding.DataField = 'IDSITUACAOREGISTRO'
          DataBinding.DataSource = DsCidade
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 3
          Width = 50
        end
        object CbUF: TcxDBComboBox
          Left = 366
          Top = 70
          DataBinding.DataField = 'UF'
          DataBinding.DataSource = DsCidade
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'GO'
            'ES'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SP'
            'SC'
            'SE'
            'TO')
          TabOrder = 2
          Width = 50
        end
      end
    end
  end
  inherited PnlBotao: TPanel
    inherited BtnExcluir: TcxButton
      Left = 214
      Top = 4
      ExplicitLeft = 214
      ExplicitTop = 4
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
      Properties.Alignment.Horz = taRightJustify
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
  object DsCidade: TDataSource
    DataSet = CdsCidade
    Left = 480
    Top = 176
  end
  object CdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCidade'
    RemoteServer = DmCadastroF.LocalConnection
    AfterInsert = CdsCidadeAfterInsert
    Left = 480
    Top = 160
    object CdsCidadeIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsCidadeIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsCidadeDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsCidadeCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Required = True
      Size = 50
    end
    object CdsCidadeUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object CdsCidadeSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o Registro'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
end
