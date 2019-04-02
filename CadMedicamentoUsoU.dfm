inherited CadMedicamentoUsoF: TCadMedicamentoUsoF
  Caption = 'Cadastro de Medicamento Uso'
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
          DataBinding.DataSource = DsMedicamentoUso
          TabOrder = 1
          Width = 600
        end
        object DbDataInclusão: TcxDBDateEdit
          Left = 10
          Top = 25
          TabStop = False
          DataBinding.DataField = 'DATAINCLUSAO'
          DataBinding.DataSource = DsMedicamentoUso
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 0
          Width = 100
        end
        object CbAtivo: TcxDBCheckBox
          Left = 10
          Top = 100
          Caption = 'Ativo'
          DataBinding.DataField = 'IDSITUACAOREGISTRO'
          DataBinding.DataSource = DsMedicamentoUso
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
  object DsMedicamentoUso: TDataSource
    DataSet = CdsMedicamentoUso
    Left = 504
    Top = 240
  end
  object CdsMedicamentoUso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMedicamentoUso'
    RemoteServer = DmCadastroF.LocalConnection
    AfterInsert = CdsMedicamentoUsoAfterInsert
    Left = 504
    Top = 224
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
    object CdsMedicamentoUsoSITUACAOREGISTRO: TStringField
      FieldName = 'SITUACAOREGISTRO'
      Size = 50
    end
  end
end
