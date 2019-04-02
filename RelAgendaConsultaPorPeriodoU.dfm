inherited RelAgendaConsultaPorPeriodoF: TRelAgendaConsultaPorPeriodoF
  Caption = 'Relat'#243'rio - Agenda de Consulta por Per'#237'odo'
  ClientHeight = 311
  ClientWidth = 534
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlGeral: TPanel
    Width = 534
    Height = 276
    ExplicitTop = 36
    ExplicitWidth = 534
    ExplicitHeight = 276
    object LblDataAgendaInicial: TLabel
      Left = 15
      Top = 15
      Width = 111
      Height = 16
      Caption = 'Data Agenda Inicial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object LblDoutor: TLabel
      Left = 15
      Top = 65
      Width = 53
      Height = 16
      Caption = 'Doutor(a)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object LblDataAgendaFinal: TLabel
      Left = 150
      Top = 15
      Width = 106
      Height = 16
      Caption = 'Data Agenda Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object EdDataAgendaInicial: TcxDateEdit
      Left = 15
      Top = 35
      TabOrder = 0
      Width = 120
    end
    object EdCodigoDoutor: TcxButtonEdit
      Left = 15
      Top = 85
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = EdCodigoDoutorPropertiesButtonClick
      TabOrder = 2
      OnExit = EdCodigoDoutorExit
      Width = 80
    end
    object EdNomeDoutor: TcxTextEdit
      Left = 95
      Top = 85
      TabStop = False
      Properties.ReadOnly = True
      Style.Color = clSilver
      TabOrder = 3
      Width = 400
    end
    object EdDataAgendaFinal: TcxDateEdit
      Left = 150
      Top = 35
      TabOrder = 1
      Width = 120
    end
  end
  inherited PnlBotao: TPanel
    Width = 534
  end
  inherited AcaoTela: TActionList
    inherited AcaoVisualisar: TAction
      OnExecute = AcaoVisualisarExecute
    end
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
    DesignInfo = 1573233
  end
  object DsAgenda: TDataSource
    DataSet = CdsAgenda
    Left = 256
    Top = 216
  end
  object CdsAgenda: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT AGE.IDAGENDA'#13#10'       ,AGE.DATAAGENDA'#13#10'       ,AGE.HORAAGE' +
      'NDA'#13#10'       ,AGE.STATUS'#13#10'       ,AGE.MOTIVO'#13#10'       ,AGE.IDCONVE' +
      'NIO'#13#10'       ,CON.CONVENIO'#13#10'       ,PAC.IDPACIENTE'#13#10'       ,PAC.N' +
      'OME AS PACIENTENOME'#13#10'       ,PAC.CPF AS PACIENTECPF'#13#10'       ,PAC' +
      '.TELEFONE1 AS PACIENTETELEFONE01'#13#10'       ,PAC.TELEFONE2 AS PACIE' +
      'NTETELEFONE02'#13#10'       ,(CIDPAC.CIDADE || '#39' - '#39' || CIDPAC.UF) AS ' +
      'PACIENTECIDADEUF'#13#10'       ,DOU.IDDOUTOR'#13#10'       ,DOU.NOME AS DOUT' +
      'ORNOME'#13#10'       ,DOU.CRM AS DOUTORCRM'#13#10'       ,DOU.TELEFONE AS DO' +
      'UTORTELEFONE'#13#10'       ,DOU.CELULAR AS DOUTORCELULAR'#13#10'       ,(CID' +
      'DOU.CIDADE || '#39' - '#39' || CIDDOU.UF) AS DOUTORCIDADEUF'#13#10'   FROM AGE' +
      'NDA AGE'#13#10'        JOIN PACIENTE PAC ON (PAC.IDPACIENTE = AGE.IDPA' +
      'CIENTE)'#13#10'        LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = P' +
      'AC.IDCIDADE)'#13#10'        JOIN DOUTOR DOU ON (DOU.IDDOUTOR = AGE.IDD' +
      'OUTOR)'#13#10'        LEFT JOIN CIDADE CIDDOU ON (CIDDOU.IDCIDADE = DO' +
      'U.IDCIDADE)'#13#10'        LEFT JOIN CONVENIO CON ON (CON.IDCONVENIO =' +
      ' AGE.IDCONVENIO)'#13#10' WHERE 1 = 1'
    Params = <>
    ProviderName = 'DspGenerico'
    RemoteServer = DmRelatorioF.LocalConnection
    Left = 256
    Top = 200
    object CdsAgendaIDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDAGENDA'
      ProviderFlags = []
    end
    object CdsAgendaDATAAGENDA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATAAGENDA'
      ProviderFlags = []
    end
    object CdsAgendaHORAAGENDA: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HORAAGENDA'
      ProviderFlags = []
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;0;_'
    end
    object CdsAgendaSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      ProviderFlags = []
      Size = 80
    end
    object CdsAgendaMOTIVO: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      ProviderFlags = []
      Size = 80
    end
    object CdsAgendaIDCONVENIO: TIntegerField
      DisplayLabel = 'C'#243'd. Conv'#234'nio'
      FieldName = 'IDCONVENIO'
      ProviderFlags = []
    end
    object CdsAgendaCONVENIO: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'CONVENIO'
      ProviderFlags = []
      Size = 100
    end
    object CdsAgendaIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = []
    end
    object CdsAgendaPACIENTENOME: TStringField
      DisplayLabel = 'Paciente Nome'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsAgendaPACIENTECPF: TStringField
      DisplayLabel = 'Paciente CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsAgendaPACIENTETELEFONE01: TStringField
      DisplayLabel = 'Paciente Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsAgendaPACIENTETELEFONE02: TStringField
      DisplayLabel = 'Paciente Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsAgendaPACIENTECIDADEUF: TStringField
      DisplayLabel = 'Paciente Cidade - UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object CdsAgendaIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      ProviderFlags = []
    end
    object CdsAgendaDOUTORNOME: TStringField
      DisplayLabel = 'Doutor Nome'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsAgendaDOUTORCRM: TStringField
      DisplayLabel = 'Doutor CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object CdsAgendaDOUTORTELEFONE: TStringField
      DisplayLabel = 'Doutor Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsAgendaDOUTORCELULAR: TStringField
      DisplayLabel = 'Doutor Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsAgendaDOUTORCIDADEUF: TStringField
      DisplayLabel = 'Doutor Cidade - UF'
      FieldName = 'DOUTORCIDADEUF'
      ProviderFlags = []
      Size = 55
    end
  end
  object frxCdsAgenda: TfrxDBDataset
    UserName = 'frxCdsAgenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDAGENDA=IDAGENDA'
      'DATAAGENDA=DATAAGENDA'
      'HORAAGENDA=HORAAGENDA'
      'STATUS=STATUS'
      'MOTIVO=MOTIVO'
      'IDCONVENIO=IDCONVENIO'
      'CONVENIO=CONVENIO'
      'IDPACIENTE=IDPACIENTE'
      'PACIENTENOME=PACIENTENOME'
      'PACIENTECPF=PACIENTECPF'
      'PACIENTETELEFONE01=PACIENTETELEFONE01'
      'PACIENTETELEFONE02=PACIENTETELEFONE02'
      'PACIENTECIDADEUF=PACIENTECIDADEUF'
      'IDDOUTOR=IDDOUTOR'
      'DOUTORNOME=DOUTORNOME'
      'DOUTORCRM=DOUTORCRM'
      'DOUTORTELEFONE=DOUTORTELEFONE'
      'DOUTORCELULAR=DOUTORCELULAR'
      'DOUTORCIDADEUF=DOUTORCIDADEUF')
    DataSet = CdsAgenda
    BCDToCurrency = False
    Left = 280
    Top = 80
  end
  object frxRelatorio: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40967.986189606500000000
    ReportOptions.LastChange = 42701.476398090300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 280
    Top = 96
    Datasets = <
      item
        DataSet = frxCdsAgenda
        DataSetName = 'frxCdsAgenda'
      end
      item
        DataSet = DmRelatorioF.frxCdsClinica
        DataSetName = 'frxCdsClinica'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 419.527830000000000000
        Width = 1046.929810000000000000
        DataSet = frxCdsAgenda
        DataSetName = 'frxCdsAgenda'
        RowCount = 0
        object frxCdsAgendaDATAAGENDA: TfrxMemoView
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATAAGENDA'
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxCdsAgenda."DATAAGENDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxCdsAgendaHORAAGENDA: TfrxMemoView
          Left = 64.251968500000000000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'HORAAGENDA'
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxCdsAgenda."HORAAGENDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxCdsAgendaSTATUS: TfrxMemoView
          Left = 117.165354330000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'STATUS'
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsAgenda."STATUS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxCdsAgendaMOTIVO: TfrxMemoView
          Left = 215.433070870000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MOTIVO'
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsAgenda."MOTIVO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxCdsAgendaPACIENTENOME: TfrxMemoView
          Left = 313.700787400000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PACIENTENOME'
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsAgenda."PACIENTENOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxCdsAgendaPACIENTECPF: TfrxMemoView
          Left = 487.559055120000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PACIENTECPF'
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsAgenda."PACIENTECPF"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 585.826771650000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PACIENTETELEFONE01'
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsAgenda."PACIENTETELEFONE01"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 668.976377950000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PACIENTETELEFONE02'
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsAgenda."PACIENTETELEFONE02"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 752.125984250000000000
          Width = 136.062992130000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PACIENTECIDADEUF'
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsAgenda."PACIENTECIDADEUF"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 888.188976380000000000
          Width = 158.740157480000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CONVENIO'
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsAgenda."CONVENIO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 136.063080000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Width = 1046.929346220000000000
          Height = 132.283486540000000000
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
          Left = 341.551181100000000000
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
          Left = 413.362204720000000000
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
          Left = 413.362204720000000000
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
          Left = 413.362204720000000000
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
          Left = 341.551181100000000000
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
          Left = 341.551181100000000000
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
          Left = 341.551181100000000000
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
          Left = 341.551181100000000000
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
          Left = 621.236220470000000000
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
          Left = 696.826771650000000000
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
          Left = 621.236220470000000000
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
          Left = 696.826771650000000000
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
        object SysMemo1: TfrxSysMemoView
          Left = 925.724800000000000000
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
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897637800000000000
        Top = 631.181510000000000000
        Width = 1046.929810000000000000
        object Memo21: TfrxMemoView
          Width = 1046.929810000000000000
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
          Width = 737.008086380000000000
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
      object GroupHeader1: TfrxGroupHeader
        Height = 45.354360000000000000
        Top = 275.905690000000000000
        Width = 1046.929810000000000000
        Condition = 'frxCdsAgenda."DOUTORNOME"'
        StartNewPage = True
        object frxCdsAgendaDOUTORNOME: TfrxMemoView
          Left = 83.149660000000000000
          Top = 11.338582680000000000
          Width = 294.803095910000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DOUTORNOME'
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsAgenda."DOUTORNOME"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Top = 11.338582680000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Doutor(a): ')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 434.645950000000000000
          Top = 11.338582680000000000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DOUTORCRM'
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsAgenda."DOUTORCRM"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 377.953000000000000000
          Top = 11.338582680000000000
          Width = 56.692896300000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CRM: ')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 835.276130000000000000
          Top = 11.338582680000000000
          Width = 211.653557950000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DOUTORCIDADEUF'
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsAgenda."DOUTORCIDADEUF"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 740.787880000000000000
          Top = 11.338582680000000000
          Width = 94.488196300000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cidade - UF: ')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 597.165740000000000000
          Top = 11.338582680000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DOUTORCELULAR'
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxCdsAgenda."DOUTORCELULAR"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 525.354670000000000000
          Top = 11.338582680000000000
          Width = 71.811016300000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Celular: ')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 1035.590756220000000000
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
      object GroupFooter1: TfrxGroupFooter
        Height = 30.236240000000000000
        Top = 468.661720000000000000
        Width = 1046.929810000000000000
        object SysMemo3: TfrxSysMemoView
          Left = 990.339210000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 812.701300000000000000
          Top = 3.779530000000000000
          Width = 177.637856300000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total de atendimento:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 529.236550000000000000
          Width = 510.236086220000000000
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
      object PageHeader1: TfrxPageHeader
        Height = 37.795300000000000000
        Top = 177.637910000000000000
        Width = 1046.929810000000000000
        object Memo38: TfrxMemoView
          Top = 3.779530000000000000
          Width = 1046.929810000000000000
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
            'Relat'#243'rio de Agenda de Consulta')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 52.913420000000000000
        Top = 343.937230000000000000
        Width = 1046.929810000000000000
        Condition = 'frxCdsAgenda."DATAAGENDA"'
        object Memo12: TfrxMemoView
          Top = 30.236240000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' Data')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 64.251968500000000000
          Top = 30.236240000000000000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hor'#225'rio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 117.165354330000000000
          Top = 30.236240000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Status')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 215.433070870000000000
          Top = 30.236240000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Motivo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 313.700787400000000000
          Top = 30.236240000000000000
          Width = 173.858267720000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Paciente')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 487.559055120000000000
          Top = 30.236240000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 585.826771650000000000
          Top = 30.236240000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone 01')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 668.976377950000000000
          Top = 30.236240000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone 02')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 752.125984250000000000
          Top = 30.236240000000000000
          Width = 136.062992130000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cidade - UF')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 888.188976380000000000
          Top = 30.236240000000000000
          Width = 158.740157480000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Conv'#234'nio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 147.401670000000000000
          Top = 3.779530000000000000
          Width = 136.062835910000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxCdsAgenda."DATAAGENDA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 132.283496300000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Data da Consulta: ')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 49.133890000000000000
        Top = 521.575140000000000000
        Width = 1046.929810000000000000
        object SysMemo4: TfrxSysMemoView
          Left = 990.236860000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 687.874460000000000000
          Top = 3.779530000000000000
          Width = 302.362346300000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxCdsAgenda
          DataSetName = 'frxCdsAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total de atendimento do per'#237'odo:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 7.559060000000000000
          Width = 1031.811226220000000000
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
    end
  end
end
