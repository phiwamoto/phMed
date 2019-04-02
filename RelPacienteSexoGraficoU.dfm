inherited RelPacienteSexoGraficoF: TRelPacienteSexoGraficoF
  Caption = 'Relat'#243'rio - Paciente Sexo (Gr'#225'fico)'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  inherited AcaoTela: TActionList
    inherited AcaoVisualisar: TAction
      OnExecute = AcaoVisualisarExecute
    end
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
  end
  object DsPacienteSexo: TDataSource [7]
    DataSet = CdsPacienteSexo
    Left = 256
    Top = 216
  end
  object CdsPacienteSexo: TClientDataSet [8]
    Aggregates = <>
    CommandText = 
      'SELECT PAC.SEXO'#13#10'           ,COUNT(1) AS QUANTIDADE'#13#10'  FROM PACI' +
      'ENTE PAC'#13#10'WHERE 1 = 1'#13#10' GROUP BY PAC.SEXO'
    Params = <>
    ProviderName = 'DspGenerico'
    RemoteServer = DmRelatorioF.LocalConnection
    Left = 256
    Top = 200
    object CdsPacienteSexoSEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      ProviderFlags = []
      Size = 16
    end
    object CdsPacienteSexoQUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      ProviderFlags = []
    end
  end
  object frxRelatorio: TfrxReport [9]
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40967.986189606500000000
    ReportOptions.LastChange = 41448.459575185200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 280
    Top = 96
    Datasets = <
      item
        DataSet = DmRelatorioF.frxCdsClinica
        DataSetName = 'frxCdsClinica'
      end
      item
        DataSet = frxCdsPacienteSexo
        DataSetName = 'frxCdsPacienteSexo'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object MasterData1: TfrxMasterData
        Height = 491.338900000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        DataSet = frxCdsPacienteSexo
        DataSetName = 'frxCdsPacienteSexo'
        RowCount = 0
        object Chart1: TfrxChartView
          Left = 18.897637800000000000
          Top = 18.897637800000000000
          Width = 680.314960630000000000
          Height = 453.543307086614200000
          ShowHint = False
          Chart = {
            5450463006544368617274054368617274044C656674020003546F7002000557
            696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
            697369626C65080D4672616D652E56697369626C650806566965773344081656
            69657733444F7074696F6E732E526F746174696F6E02000A426576656C4F7574
            6572070662764E6F6E6505436F6C6F720707636C5768697465000A5442617253
            657269657307536572696573310E436F6C6F7245616368506F696E7409134D61
            726B732E4172726F772E56697369626C6509194D61726B732E43616C6C6F7574
            2E42727573682E436F6C6F720707636C426C61636B1B4D61726B732E43616C6C
            6F75742E4172726F772E56697369626C65090D4D61726B732E56697369626C65
            090B56616C7565466F726D61740601300B4175746F42617253697A6509104175
            746F4D61726B506F736974696F6E08124772616469656E742E44697265637469
            6F6E070B6764546F70426F74746F6D145469636B4C696E65732E536D616C6C53
            7061636502010C5856616C7565732E4E616D650601580D5856616C7565732E4F
            72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650603
            4261720D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
          ChartElevation = 345
          SeriesData = <
            item
              DataType = dtDBData
              DataSet = frxCdsPacienteSexo
              DataSetName = 'frxCdsPacienteSexo'
              SortOrder = soNone
              TopN = 0
              XType = xtText
              Source1 = 'frxCdsPacienteSexo."SEXO"'
              Source2 = 'frxCdsPacienteSexo."QUANTIDADE"'
              XSource = 'frxCdsPacienteSexo."SEXO"'
              YSource = 'frxCdsPacienteSexo."QUANTIDADE"'
            end>
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 170.078850000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 718.110236220000000000
          Height = 170.078786540000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Logo: TfrxPictureView
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 211.653543310000000000
          Height = 113.385826770000000000
          ShowHint = False
          DataField = 'FOTORELATORIO'
          DataSet = DmRelatorioF.frxCdsClinica
          DataSetName = 'frxCdsClinica'
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frxCdsClinicaDS_CLINICA: TfrxMemoView
          Left = 230.551181100000000000
          Top = 22.677165350000000000
          Width = 468.661417320000000000
          Height = 26.456692910000000000
          ShowHint = False
          DataField = 'CLINICA'
          DataSet = DmRelatorioF.frxCdsClinica
          DataSetName = 'frxCdsClinica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxCdsClinica."CLINICA"]')
          ParentFont = False
        end
        object frxCdsClinicaDS_ENDERECO: TfrxMemoView
          Left = 302.362204720000000000
          Top = 60.472440940000000000
          Width = 396.850393700000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = DmRelatorioF.frxCdsClinica
          DataSetName = 'frxCdsClinica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsClinica."ENDERECO"], [frxCdsClinica."NUMERO"]')
          ParentFont = False
        end
        object frxCdsClinicaCIDADE: TfrxMemoView
          Left = 302.362204720000000000
          Top = 98.267716540000000000
          Width = 207.874015750000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'CIDADEUF'
          DataSet = DmRelatorioF.frxCdsClinica
          DataSetName = 'frxCdsClinica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsClinica."CIDADEUF"]')
          ParentFont = False
        end
        object frxCdsClinicaDS_BAIRRO: TfrxMemoView
          Left = 302.362204720000000000
          Top = 79.370078740000000000
          Width = 207.874015750000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'BAIRRO'
          DataSet = DmRelatorioF.frxCdsClinica
          DataSetName = 'frxCdsClinica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsClinica."BAIRRO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 230.551181100000000000
          Top = 7.559055120000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cl'#237'nica')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 230.551181100000000000
          Top = 60.472440940000000000
          Width = 71.811023620000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 230.551181100000000000
          Top = 79.370078740000000000
          Width = 71.811023620000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 230.551181100000000000
          Top = 98.267716540000000000
          Width = 71.811023620000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 510.236220470000000000
          Top = 79.370078740000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 585.826771650000000000
          Top = 79.370078740000000000
          Width = 113.385826770000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'CEP'
          DataSet = DmRelatorioF.frxCdsClinica
          DataSetName = 'frxCdsClinica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsClinica."CEP"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 510.236220470000000000
          Top = 98.267716540000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 585.826771650000000000
          Top = 98.267716540000000000
          Width = 113.385826770000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'TELEFONE1'
          DataSet = DmRelatorioF.frxCdsClinica
          DataSetName = 'frxCdsClinica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsClinica."TELEFONE1"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Top = 139.842519690000000000
          Width = 718.110700000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Quantidade de Paciente(s) por Sexo (Gr'#225'fico)')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE] - [TIME]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Top = 128.504020000000000000
          Width = 718.110236220000000000
          Height = 3.779530000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897637800000000000
        Top = 933.543910000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 14737632
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 7.559055120000000000
          Width = 264.566929130000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 302.362204720000000000
          Width = 408.188976380000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'phMed - Sistema de Prontu'#225'rios M'#233'dicos')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.897650000000000000
        Top = 805.039890000000000000
        Width = 718.110700000000000000
        DataSet = frxCdsPacienteSexo
        DataSetName = 'frxCdsPacienteSexo'
        RowCount = 0
        object frxCdsPacienteSexoSEXO: TfrxMemoView
          Left = 226.771800000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SEXO'
          DataSet = frxCdsPacienteSexo
          DataSetName = 'frxCdsPacienteSexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxCdsPacienteSexo."SEXO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxCdsPacienteSexoQUANTIDADE: TfrxMemoView
          Left = 377.953000000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'QUANTIDADE'
          DataSet = frxCdsPacienteSexo
          DataSetName = 'frxCdsPacienteSexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxCdsPacienteSexo."QUANTIDADE"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 18.897650000000000000
        Top = 763.465060000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Left = 226.771800000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Sexo do Paciente ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 377.953000000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 26.456692910000000000
        Top = 846.614720000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Left = 226.771800000000000000
          Top = 3.779527560000000000
          Width = 151.181102360000000000
          Height = 22.677165350000000000
          ShowHint = False
          DataSet = frxCdsPacienteSexo
          DataSetName = 'frxCdsPacienteSexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Total de Paciente(s): ')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 377.953000000000000000
          Top = 3.779527560000000000
          Width = 113.385826770000000000
          Height = 22.677165350000000000
          ShowHint = False
          DataSet = frxCdsPacienteSexo
          DataSetName = 'frxCdsPacienteSexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxCdsPacienteSexo."QUANTIDADE">,MasterData2)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 226.771800000000000000
          Width = 264.567026770000000000
          Height = 3.779530000000000000
          ShowHint = False
          DataSet = frxCdsPacienteSexo
          DataSetName = 'frxCdsPacienteSexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxCdsPacienteSexo: TfrxDBDataset [10]
    UserName = 'frxCdsPacienteSexo'
    CloseDataSource = False
    DataSet = CdsPacienteSexo
    BCDToCurrency = False
    Left = 280
    Top = 80
  end
end
