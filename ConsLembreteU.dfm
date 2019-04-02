object ConsLembreteF: TConsLembreteF
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Lembrete Di'#225'rio'
  ClientHeight = 502
  ClientWidth = 904
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object PnlGeral: TPanel
    Left = 0
    Top = 0
    Width = 904
    Height = 502
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object PnlBotao: TPanel
      Left = 0
      Top = 0
      Width = 904
      Height = 35
      Align = alTop
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object BtnSair: TcxButton
        Left = 800
        Top = 5
        Width = 100
        Height = 25
        Action = AcaoSair
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object GbTitulo: TcxGroupBox
      Left = 5
      Top = 40
      Caption = ' T'#237'tulos a Receber / T'#237'tulos a Pagar '
      Style.BorderColor = clBlack
      Style.BorderStyle = ebsSingle
      Style.TextColor = clBlack
      Style.TransparentBorder = True
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.TextColor = clBlack
      TabOrder = 1
      Height = 250
      Width = 895
      object GridTitulo: TcxGrid
        Left = 2
        Top = 20
        Width = 891
        Height = 228
        Align = alClient
        TabOrder = 0
        object GridTituloDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DsTitulo
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object GridTituloDBTableView1TIPOTITULO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPOTITULO'
            OnCustomDrawCell = GridTituloDBTableView1TIPOTITULOCustomDrawCell
            Width = 70
          end
          object GridTituloDBTableView1IDTITULO: TcxGridDBColumn
            DataBinding.FieldName = 'IDTITULO'
            Width = 55
          end
          object GridTituloDBTableView1IDTITULOPARCELA: TcxGridDBColumn
            DataBinding.FieldName = 'IDTITULOPARCELA'
            Width = 50
          end
          object GridTituloDBTableView1SITUACAOTITULO: TcxGridDBColumn
            DataBinding.FieldName = 'SITUACAOTITULO'
            Width = 90
          end
          object GridTituloDBTableView1DATAVENCIMENTO: TcxGridDBColumn
            DataBinding.FieldName = 'DATAVENCIMENTO'
            PropertiesClassName = 'TcxDateEditProperties'
            OnCustomDrawCell = GridTituloDBTableView1DATAVENCIMENTOCustomDrawCell
            Width = 80
          end
          object GridTituloDBTableView1CPFCNPJ: TcxGridDBColumn
            DataBinding.FieldName = 'CPFCNPJ'
            Width = 120
          end
          object GridTituloDBTableView1NOMEFANTASIA: TcxGridDBColumn
            DataBinding.FieldName = 'NOMEFANTASIA'
            Width = 265
          end
          object GridTituloDBTableView1VALORCONTABIL: TcxGridDBColumn
            Caption = 'Cont'#225'bil'
            DataBinding.FieldName = 'VALORCONTABIL'
            Width = 70
          end
          object GridTituloDBTableView1VALORPAGO: TcxGridDBColumn
            Caption = 'Pago'
            DataBinding.FieldName = 'VALORPAGO'
            Width = 70
          end
          object GridTituloDBTableView1VALORSALDODEVEDOR: TcxGridDBColumn
            DataBinding.FieldName = 'VALORSALDODEVEDOR'
          end
        end
        object GridTituloLevel1: TcxGridLevel
          GridView = GridTituloDBTableView1
        end
      end
    end
    object GbAgendaCompromisso: TcxGroupBox
      Left = 5
      Top = 295
      Caption = ' Agenda de Compromisso '
      Style.BorderColor = clBlack
      Style.BorderStyle = ebsSingle
      Style.TextColor = clBlack
      Style.TransparentBorder = True
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.TextColor = clBlack
      TabOrder = 2
      Height = 200
      Width = 895
      object GridAgenda: TcxGrid
        Left = 2
        Top = 20
        Width = 891
        Height = 178
        Align = alClient
        TabOrder = 0
        object GridAgendaDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DsAgendaCompromisso
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object GridAgendaDBTableView1IDAGENDACOMPROMISSO: TcxGridDBColumn
            DataBinding.FieldName = 'IDAGENDACOMPROMISSO'
            Width = 60
          end
          object GridAgendaDBTableView1DATACOMPROMISSO: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DATACOMPROMISSO'
            Width = 90
          end
          object GridAgendaDBTableView1HORACOMPROMISSO: TcxGridDBColumn
            Caption = 'Hora'
            DataBinding.FieldName = 'HORACOMPROMISSO'
            Width = 80
          end
          object GridAgendaDBTableView1ASSUNTO: TcxGridDBColumn
            DataBinding.FieldName = 'ASSUNTO'
            Width = 250
          end
          object GridAgendaDBTableView1NOME: TcxGridDBColumn
            DataBinding.FieldName = 'NOME'
            Width = 250
          end
          object GridAgendaDBTableView1TELEFONE: TcxGridDBColumn
            DataBinding.FieldName = 'TELEFONE'
            Width = 90
          end
          object GridAgendaDBTableView1DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRICAO'
            Width = 500
          end
        end
        object GridAgendaLevel1: TcxGridLevel
          GridView = GridAgendaDBTableView1
        end
      end
    end
  end
  object AcaoTela: TActionList
    Left = 24
    Top = 32
    object AcaoSair: TAction
      Category = 'Tela'
      Caption = '&Sair'
      ImageIndex = 25
      ShortCut = 32851
      OnExecute = AcaoSairExecute
    end
  end
  object DsTitulo: TDataSource
    DataSet = CdsTitulo
    Left = 224
    Top = 136
  end
  object CdsTitulo: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT TTI.DESCRICAO AS TIPOTITULO'#13#10'            ,TPA.IDTITULO'#13#10' ' +
      '           ,TPA.IDTITULOPARCELA'#13#10'            ,TPA.DATAVENCIMENTO' +
      #13#10'            ,TPA.VALORCONTABIL'#13#10'            ,TPA.VALORDESCONTO' +
      #13#10'            ,TPA.VALORMULTA'#13#10'            ,TPA.VALORJUROS'#13#10'    ' +
      '        ,TPA.VALORCANCELADO'#13#10'            ,TPA.VALORPAGO'#13#10'       ' +
      '     ,(TPA.VALORCONTABIL - (TPA.VALORPAGO - TPA.VALORMULTA - TPA' +
      '.VALORJUROS)) AS VALORSALDODEVEDOR'#13#10'            ,STI.DESCRICAO A' +
      'S SITUACAOTITULO'#13#10'            ,PES.IDPESSOA'#13#10'            ,PES.ID' +
      'TIPOPESSOA'#13#10'            ,PES.CPFCNPJ'#13#10'            ,PES.NOMEFANTA' +
      'SIA'#13#10'            ,PES.TELEFONE01'#13#10'  FROM TITULOPARCELA TPA'#13#10'    ' +
      '        JOIN TITULO TIT ON (TIT.IDTITULO = TPA.IDTITULO AND TIT.' +
      'IDTIPOTITULO = TPA.IDTIPOTITULO)'#13#10'            JOIN PESSOA PES ON' +
      ' (PES.IDPESSOA = TIT.IDPESSOA)'#13#10'            JOIN TIPOTITULO TTI ' +
      'ON (TTI.IDTIPOTITULO = TPA.IDTIPOTITULO)'#13#10'            JOIN SITUA' +
      'CAOTITULO STI ON (STI.IDSITUACAOTITULO = TPA.IDSITUACAOTITULO)'#13#10 +
      'WHERE 1 = 1'#13#10'     AND TPA.IDSITUACAOTITULO IN (1, 3, 5)'#13#10'     AN' +
      'D TPA.DATAVENCIMENTO <= CURRENT_DATE'#13#10'ORDER BY TTI.DESCRICAO, PE' +
      'S.NOMEFANTASIA, TPA.IDTITULO, TPA.IDTITULOPARCELA'
    Params = <>
    ProviderName = 'dmDspConsulta'
    RemoteServer = DmConexaoF.LocalConnection
    AfterScroll = CdsTituloAfterScroll
    Left = 224
    Top = 120
    object CdsTituloTIPOTITULO: TStringField
      DisplayLabel = 'Tipo T'#237'tulo'
      FieldName = 'TIPOTITULO'
      Required = True
      Size = 50
    end
    object CdsTituloIDTITULO: TIntegerField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'IDTITULO'
      Required = True
    end
    object CdsTituloIDTITULOPARCELA: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'IDTITULOPARCELA'
      Required = True
    end
    object CdsTituloDATAVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'DATAVENCIMENTO'
      Required = True
    end
    object CdsTituloVALORCONTABIL: TFMTBCDField
      DisplayLabel = 'Valor Cont'#225'bil'
      FieldName = 'VALORCONTABIL'
      Required = True
      DisplayFormat = ',#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object CdsTituloVALORDESCONTO: TFMTBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'VALORDESCONTO'
      Required = True
      DisplayFormat = ',#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object CdsTituloVALORMULTA: TFMTBCDField
      DisplayLabel = 'Valor Multa'
      FieldName = 'VALORMULTA'
      Required = True
      DisplayFormat = ',#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object CdsTituloVALORJUROS: TFMTBCDField
      DisplayLabel = 'Valor Juros'
      FieldName = 'VALORJUROS'
      Required = True
      DisplayFormat = ',#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object CdsTituloVALORCANCELADO: TFMTBCDField
      DisplayLabel = 'Valor Cancelado'
      FieldName = 'VALORCANCELADO'
      Required = True
      DisplayFormat = ',#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object CdsTituloVALORPAGO: TFMTBCDField
      DisplayLabel = 'Valor Pago'
      FieldName = 'VALORPAGO'
      Required = True
      DisplayFormat = ',#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object CdsTituloSITUACAOTITULO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOTITULO'
      Required = True
      Size = 50
    end
    object CdsTituloVALORSALDODEVEDOR: TFMTBCDField
      DisplayLabel = 'Saldo Devedor'
      FieldName = 'VALORSALDODEVEDOR'
      Required = True
      DisplayFormat = ',#0.00'
      EditFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object CdsTituloIDPESSOA: TLargeintField
      DisplayLabel = 'C'#243'digo Pessoa'
      FieldName = 'IDPESSOA'
      Required = True
    end
    object CdsTituloIDTIPOPESSOA: TSmallintField
      DisplayLabel = 'C'#243'digo Tipo Pessoa'
      FieldName = 'IDTIPOPESSOA'
      Required = True
    end
    object CdsTituloCPFCNPJ: TStringField
      DisplayLabel = 'CPF / CNPJ'
      FieldName = 'CPFCNPJ'
    end
    object CdsTituloNOMEFANTASIA: TStringField
      DisplayLabel = 'Nome / Nome Fantasia'
      FieldName = 'NOMEFANTASIA'
      Size = 150
    end
    object CdsTituloTELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'TELEFONE01'
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 12
    end
  end
  object DsAgendaCompromisso: TDataSource
    DataSet = CdsAgendaCompromisso
    Left = 344
    Top = 136
  end
  object CdsAgendaCompromisso: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT *'#13#10'  FROM AGENDACOMPROMISSO AGE'#13#10' WHERE 1 = 1'#13#10'   AND AGE' +
      '.DATACOMPROMISSO = CURRENT_DATE'#13#10'   AND AGE.IDSITUACAOAGENDACOMP' +
      'ROMISSO = 1'#13#10' ORDER BY AGE.DATACOMPROMISSO, AGE.HORACOMPROMISSO'
    Params = <>
    ProviderName = 'dmDspConsulta'
    RemoteServer = DmConexaoF.LocalConnection
    Left = 344
    Top = 120
    object CdsAgendaCompromissoIDAGENDACOMPROMISSO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDAGENDACOMPROMISSO'
      Required = True
    end
    object CdsAgendaCompromissoIDPESSOA: TLargeintField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'IDPESSOA'
    end
    object CdsAgendaCompromissoIDSITUACAOAGENDACOMPROMISSO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Agenda'
      FieldName = 'IDSITUACAOAGENDACOMPROMISSO'
      Required = True
    end
    object CdsAgendaCompromissoDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsAgendaCompromissoDATACOMPROMISSO: TDateField
      DisplayLabel = 'Data Compromisso'
      FieldName = 'DATACOMPROMISSO'
      Required = True
    end
    object CdsAgendaCompromissoHORACOMPROMISSO: TTimeField
      DisplayLabel = 'Hora Compromisso'
      FieldName = 'HORACOMPROMISSO'
      Required = True
    end
    object CdsAgendaCompromissoTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)9999-9999;0;_'
      Size = 12
    end
    object CdsAgendaCompromissoASSUNTO: TStringField
      DisplayLabel = 'Assunto'
      FieldName = 'ASSUNTO'
      Size = 80
    end
    object CdsAgendaCompromissoNOME: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'NOME'
      Size = 150
    end
    object CdsAgendaCompromissoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 200
    end
  end
end
