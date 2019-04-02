inherited CadExameF: TCadExameF
  Caption = 'Cadastro de Exame'
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
        object LblDescricao: TLabel
          Left = 10
          Top = 55
          Width = 56
          Height = 15
          Caption = 'Descri'#231#227'o'
        end
        object LblDataCadastro: TLabel
          Left = 10
          Top = 10
          Width = 76
          Height = 15
          Caption = 'Data Inclus'#227'o'
        end
        object DbDescricao: TcxDBTextEdit
          Left = 10
          Top = 70
          DataBinding.DataField = 'DESCRICAO'
          DataBinding.DataSource = DsExame
          TabOrder = 0
          Width = 600
        end
        object DbDataInclusão: TcxDBDateEdit
          Left = 10
          Top = 25
          TabStop = False
          DataBinding.DataField = 'DATAINCLUSAO'
          DataBinding.DataSource = DsExame
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
          DataBinding.DataSource = DsExame
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
  object DsExame: TDataSource
    DataSet = CdsExame
    Left = 504
    Top = 240
  end
  object CdsExame: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspExame'
    RemoteServer = DmCadastroF.LocalConnection
    AfterInsert = CdsExameAfterInsert
    Left = 504
    Top = 224
    object CdsExameIDEXAME: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDEXAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsExameIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsExameDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsExameDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object CdsExameSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o Registro'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
end
