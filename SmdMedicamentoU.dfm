inherited SmdMedicamentoF: TSmdMedicamentoF
  Caption = 'SmdMedicamentoF'
  ClientHeight = 240
  ClientWidth = 630
  OnShow = FormShow
  ExplicitWidth = 630
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlBotton: TPanel
    Top = 235
    Width = 630
  end
  inherited PnlFundo: TPanel
    Width = 620
    Height = 230
    inherited PnlCaption: TPanel
      Width = 620
      inherited LblPesquisa: TLabel
        Width = 166
        Caption = 'Cadastro de Medicamento'
        ExplicitWidth = 166
      end
    end
    inherited PnlBotao: TPanel
      Width = 620
      object BtnCancelar: TcxButton
        Left = 515
        Top = 5
        Width = 100
        Height = 25
        Caption = 'Cancelar'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0D1402058CCB03099AE10000507B000004070000000000000000000000000000
          0000000057850000548B00001C2A000000000000000000000000000000000000
          5D8D1844F6FF194DF8FF1031D2FF01028BD000001A2400000000000000010000
          66930928D7FF092ED7FF0313B3FF0000608F0000000000000000000000000102
          92D02451F9FF1F52FFFF1D4FFFFF1744E8FF040AA3EC0000283A000066970D2E
          DDFF1142F9FF0D3DF5FF0B3BF0FF041ABCFF00003C5D00000000000000000000
          2D421832DBFF285BFFFF2456FFFF2253FFFF1B4BF1FF050DAEFB0F30DDFF164A
          FEFF1344F9FF1041F6FF0E3EF6FF0A3CF0FF000077BF00000000000000000000
          3C511F37DDFF3A6FFFFF2C5EFFFF295AFFFF2657FFFF2052FCFF1C4FFFFF194A
          FDFF1646FAFF1445FAFF0F3DF2FF0209A0E700002C4300000000000000000000
          000100005066111BBCF03D6AFBFF3567FFFF2C5DFFFF2859FFFF2253FFFF1D4E
          FFFF1A4DFFFF123DEDFF000289CB0000131A0000000000000000000000000000
          0000000000000000161C000085BA2E4EE7FF3668FFFF2E5EFFFF2859FFFF2254
          FFFF163DEAFF00007DBE0000070B000000000000000000000000000000000000
          0000000000000000000000003A4D253FDFFF3B6DFFFF3464FFFF2E5EFFFF2759
          FFFF1B46EAFF00018CCF00000508000000000000000000000000000000000000
          00000000000000000000020297C14B7CFFFF4170FFFF3B6BFFFF396CFFFF2D5E
          FFFF2558FFFF1336D7FF00006993000000000000000000000000000000000000
          0000000000000000252C263CDAFE5080FFFF4575FFFF3662FAFF0D14C2FE3C6D
          FFFF2A5BFFFF2053FDFF0B1DC2FD000035470000000000000000000000000000
          00000000000000006F8B527CFAFF5081FFFF4B7DFFFF0A11B8EA000030420D13
          B6E9386AFFFF2456FFFF1A4AF2FF02069FE300000B0F00000000000000000000
          0000000000001119C2E06A9CFFFF5788FFFF2B46E7FF00004A5C000000000000
          28320E1AC1F23065FFFF1F51FFFF1439DDFF00006C9C00000000000000000000
          00000000000000007E913A52E3FE5782FBFF01019EC200000000000000000000
          0000000039471425D2FA265AFFFF0F2EE3FF010295CF00000000000000000000
          000000000000000000000000313C00007BA40000273000000000000000000000
          00000000000000004C63000188BC000034490000010200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Spacing = 0
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = BtnCancelarClick
      end
      object BtnSalvar: TcxButton
        Left = 410
        Top = 5
        Width = 100
        Height = 25
        Caption = 'Salvar'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          00020F501A9101700AE6386539ECA7A2A9F2A4B0A7F2BEC2BFF2C6C3C5F2AAAA
          AAF5AB9CA8FF004E00EB006504E60B650DE3012C007000000000000000001D71
          379F1DAF3EFF1AC540FF8B9C8DFF55B269FF00BE2CFF72D38EFFFFFFFFFFFEFD
          FEFFF0DDEBFF18A141FF2BD560FF6FEC9DFF05710DF7000000000000000030C4
          5CFF1AB537FF14B935FF87A88EFF58AB60FF00B019FF65BE79FFEADBE6FFFCFA
          FBFFFFFDFFFF119533FF22C54FFF65DF8CFF077710FF000000000000000033C9
          63FF17B12FFF10B42EFF83B08DFF62B361FF00A80AFF58B069FFD1BFCEFFE7DF
          E5FFFFFFFFFF139734FF21C64DFF66DE8CFF077710FF000000000000000034C9
          62FF14AD2AFF11B22BFF65AE73FFC1C1C3FFADAEAFFF8D968FFF839686FF8BA0
          8FFFA2AEA4FF168230FF1A9A3BFF3BD367FF097611FF000000000000000032C8
          60FF10AB22FF0EAE26FF05AF1FFF00B01AFF00B41EFF02B623FF04B926FF05BB
          2AFF0ABE31FF17C23FFF21C348FF29CB57FF0C7811FF000000000000000031C7
          60FF06A718FF30AA3FFF3CA94CFF38A949FF39A84AFF39AA4CFF3AAA4DFF3BAA
          50FF3BAA51FF40AB58FF3BB357FF25CA50FF0C7811FF000000000000000032C8
          5EFF00A40AFF8BAE8FFFFFE9FFFFF9E7F6FFFAE8F7FFF9E8F7FFF5E3F2FFF1DF
          EDFFEAD8E6FFEDD3E7FF8CA692FF1AC847FF0B7712FF000000000000000031C7
          5DFF009F01FF86B188FFFFF7FFFFE2E1E2FFBCBDBDFFBEBFBEFFBFC0BFFFC0C0
          C0FFD6D5D6FFEBE2E8FF86A98DFF16C742FF0B7711FF000000000000000030C6
          5DFF009B00FF86B18BFFFFFCFFFFF3F3F3FFEDEDEDFFEDEDEDFFE8E8E8FFE4E4
          E4FFE2E1E2FFEDE4EBFF86AA8EFF14C540FF0B7712FF000000000000000031C7
          5BFF009900FF8AB58DFFFFFFFFFFEBEBEBFFC0C1C0FFC1C3C2FFC1C2C1FFC0C1
          C0FFD9D9D9FFEFE6EDFF88AB8FFF14C63EFF0B770FFF000000000000000030C6
          5AFF009400FF8BB68EFFFFFFFFFFFDFDFDFFEFEFEFFFEFEFEFFFEAEAEAFFE4E4
          E4FFE4E4E4FFF1E8EFFF89AE90FF11BA39FF0E7F17FF00000000000000002CBF
          55FA008E00FF8BB68BFFFFFFFFFFF7F6F7FFCECFCEFFD0D1D0FFCDCFCDFFCBCD
          CCFFE1E0E1FFF5ECF2FF8BB191FF068222FF148C24FA0000000000000000206B
          3B8319BD46FB92C0A0FFD9D4D9FFD2D6D3FFD1D5D2FFCDD1CEFFC9CCC9FFC2C7
          C3FFBCC0BEFFBFBDBFFF86AB90FF13AF3AFB104F1C8400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Spacing = 0
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = BtnSalvarClick
      end
    end
    inherited PnlFiltros: TPanel
      Width = 620
      Height = 2
      Visible = False
      ExplicitWidth = 620
      ExplicitHeight = 2
    end
    inherited PnlInformacao: TPanel
      Top = 57
      Width = 620
      Height = 173
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
  inherited PnlLeft: TPanel
    Height = 230
  end
  inherited PnlRight: TPanel
    Left = 625
    Height = 230
  end
  inherited pnlTop: TPanel
    Width = 630
  end
  object DsMedicamento: TDataSource
    DataSet = CdsMedicamento
    Left = 329
    Top = 80
  end
  object CdsMedicamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMedicamento'
    RemoteServer = DmRotinaF.LocalConnection
    AfterInsert = CdsMedicamentoAfterInsert
    Left = 329
    Top = 64
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