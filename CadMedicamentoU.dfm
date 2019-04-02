inherited CadMedicamentoF: TCadMedicamentoF
  Caption = 'Cadastro de Medicamento'
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
        object LblMedicamento: TLabel
          Left = 10
          Top = 55
          Width = 74
          Height = 15
          Caption = 'Medicamento'
        end
        object LblDataInclusao: TLabel
          Left = 10
          Top = 10
          Width = 76
          Height = 15
          Caption = 'Data Inclus'#227'o'
        end
        object LblMedicamentoQuantidade: TLabel
          Left = 10
          Top = 100
          Width = 64
          Height = 15
          Caption = 'Quantidade'
        end
        object LblMedicamentoUso: TLabel
          Left = 315
          Top = 100
          Width = 23
          Height = 15
          Caption = 'Uso'
        end
        object LblPosologia: TLabel
          Left = 215
          Top = 281
          Width = 56
          Height = 15
          Caption = 'Posologia'
          Visible = False
        end
        object DbComboMedicamentoQtde: TcxDBComboBox
          Left = 10
          Top = 115
          DataBinding.DataField = 'MEDICAMENTOQTDE'
          DataBinding.DataSource = DsMedicamento
          Properties.DropDownListStyle = lsFixedList
          Properties.OnChange = DbComboMedicamentoQtdePropertiesChange
          TabOrder = 2
          Width = 295
        end
        object DbMedicamento: TcxDBTextEdit
          Left = 10
          Top = 70
          DataBinding.DataField = 'DESCRICAO'
          DataBinding.DataSource = DsMedicamento
          TabOrder = 1
          Width = 600
        end
        object DbDataInclusao: TcxDBDateEdit
          Left = 10
          Top = 25
          TabStop = False
          DataBinding.DataField = 'DATAINCLUSAO'
          DataBinding.DataSource = DsMedicamento
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 0
          Width = 100
        end
        object DbPosologia: TcxDBTextEdit
          Left = 215
          Top = 296
          DataBinding.DataField = 'DS_POSOLOGIA'
          TabOrder = 7
          Visible = False
          Width = 600
        end
        object DbComboMedicamentoQtdeID: TcxDBComboBox
          Left = 220
          Top = 115
          DataBinding.DataField = 'IDMEDICAMENTOQTDE'
          DataBinding.DataSource = DsMedicamento
          TabOrder = 3
          Visible = False
          Width = 80
        end
        object CbAtivo: TcxDBCheckBox
          Left = 10
          Top = 150
          Caption = 'Ativo'
          DataBinding.DataField = 'IDSITUACAOREGISTRO'
          DataBinding.DataSource = DsMedicamento
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 6
          Width = 50
        end
        object DbComboMedicamentoUso: TcxDBComboBox
          Left = 315
          Top = 115
          DataBinding.DataField = 'MEDICAMENTOUSO'
          DataBinding.DataSource = DsMedicamento
          Properties.DropDownListStyle = lsFixedList
          Properties.OnChange = DbComboMedicamentoUsoPropertiesChange
          TabOrder = 4
          Width = 295
        end
        object DbComboMedicamentoUsoID: TcxDBComboBox
          Left = 524
          Top = 115
          DataBinding.DataField = 'IDMEDICAMENTOUSO'
          DataBinding.DataSource = DsMedicamento
          TabOrder = 5
          Visible = False
          Width = 80
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
  object DsMedicamento: TDataSource
    DataSet = CdsMedicamento
    Left = 232
    Top = 328
  end
  object CdsMedicamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMedicamento'
    RemoteServer = DmCadastroF.LocalConnection
    AfterInsert = CdsMedicamentoAfterInsert
    Left = 232
    Top = 312
    object CdsMedicamentoIDMEDICAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDMEDICAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsMedicamentoIDMEDICAMENTOQTDE: TIntegerField
      DisplayLabel = 'C'#243'd. Medicamento Qtde'
      FieldName = 'IDMEDICAMENTOQTDE'
      Required = True
    end
    object CdsMedicamentoIDMEDICAMENTOUSO: TIntegerField
      DisplayLabel = 'C'#243'd. Medicamento Uso'
      FieldName = 'IDMEDICAMENTOUSO'
      Required = True
    end
    object CdsMedicamentoIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsMedicamentoDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsMedicamentoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 400
    end
    object CdsMedicamentoPOSOLOGIA: TStringField
      DisplayLabel = 'Posologia'
      FieldName = 'POSOLOGIA'
      Required = True
      Size = 400
    end
    object CdsMedicamentoMEDICAMENTOUSO: TStringField
      DisplayLabel = 'Uso'
      FieldName = 'MEDICAMENTOUSO'
      ProviderFlags = []
      Size = 100
    end
    object CdsMedicamentoMEDICAMENTOQTDE: TStringField
      DisplayLabel = 'Quantidade'
      FieldName = 'MEDICAMENTOQTDE'
      ProviderFlags = []
      Size = 100
    end
    object CdsMedicamentoSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
end
