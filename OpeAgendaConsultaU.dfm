inherited OpeAgendaConsultaF: TOpeAgendaConsultaF
  Caption = 'Agenda de Consulta'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlBotao: TPanel
    object BtnAlterarAgenda: TcxButton [0]
      Left = 5
      Top = 5
      Width = 130
      Height = 25
      Action = AcaoAlterarAgenda
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      TabOrder = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object BtnIncluir: TcxButton [1]
      Left = 5
      Top = 5
      Width = 130
      Height = 25
      Action = AcaoIncluirAlterarAgenda
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object BtnRemover: TcxButton
      Left = 141
      Top = 4
      Width = 130
      Height = 25
      Action = AcaoRemoverAgenda
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object cxButton3: TcxButton
      Left = 507
      Top = 5
      Width = 130
      Height = 25
      Action = AcaoAtualizaDados
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      TabOrder = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object BtnEnviarEmail: TcxButton
      Left = 276
      Top = 5
      Width = 174
      Height = 25
      Action = AcaoEnviarEmailRelacaoAgendaDoutor
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      TabOrder = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
  end
  inherited PnlChaves: TPanel
    Height = 195
    ExplicitHeight = 195
    object Panel1: TPanel
      Left = 1
      Top = 159
      Width = 942
      Height = 35
      Align = alBottom
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object BtnEvolucaoClinica: TcxButton
        Left = 5
        Top = 5
        Width = 130
        Height = 25
        Action = AcaoEvolucaoClinica
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
      object BtnReceituarioMedico: TcxButton
        Left = 140
        Top = 5
        Width = 130
        Height = 25
        Action = AcaoReceituarioMedico
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object BtnSolicitacaoExame: TcxButton
        Left = 275
        Top = 5
        Width = 130
        Height = 25
        Action = AcaoSolicitacaoExame
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
        TabOrder = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object BtnAtestadoMedico: TcxButton
        Left = 411
        Top = 5
        Width = 130
        Height = 25
        Action = AcaoAtestadoMedico
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
        TabOrder = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object BtnFotoPaciente: TcxButton
        Left = 545
        Top = 5
        Width = 130
        Height = 25
        Action = AcaoFotoPaciente
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
        TabOrder = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object PnlControladot: TPanel
      Left = 1
      Top = 1
      Width = 942
      Height = 158
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object PnlCalendario: TPanel
        Left = 1
        Top = 1
        Width = 190
        Height = 156
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object DataCalendario: TcxDateNavigator
          Left = 0
          Top = 0
          Width = 190
          Height = 156
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          TabOrder = 0
          OnClick = DataCalendarioClick
        end
      end
      object PnlFiltros: TPanel
        Left = 191
        Top = 1
        Width = 750
        Height = 156
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label1: TLabel
          Left = 10
          Top = 5
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
        object Label2: TLabel
          Left = 370
          Top = 5
          Width = 44
          Height = 16
          Caption = 'Per'#237'odo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object CbDoutorNome: TcxComboBox
          Left = 10
          Top = 25
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Marcelo Shindy Iwamoto')
          Properties.OnChange = CbDoutorNomePropertiesChange
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 350
        end
        object CbDoutorID: TcxComboBox
          Left = 217
          Top = 25
          TabStop = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Visible = False
          Width = 40
        end
        object CbPeriodo: TcxComboBox
          Left = 370
          Top = 25
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Todos'
            'Manh'#227
            'Tarde')
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          OnClick = CbPeriodoClick
          Width = 140
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 96
          Width = 750
          Height = 60
          ActivePage = TsOftalmo
          Align = alBottom
          TabOrder = 3
          ClientRectBottom = 60
          ClientRectRight = 750
          ClientRectTop = 26
          object TsOftalmo: TcxTabSheet
            Caption = 'Especifico'
            Color = clWhite
            ImageIndex = 0
            ParentColor = False
            object BtnPrescricaoOculos: TcxButton
              Left = 5
              Top = 5
              Width = 130
              Height = 25
              Action = AcaoPrescricaoOculos
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
            object BtnLaudoOftalmo: TcxButton
              Left = 140
              Top = 5
              Width = 130
              Height = 25
              Action = AcaoLaudoOfatalmo
              ParentShowHint = False
              ShowHint = True
              Spacing = 0
              TabOrder = 1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
          end
        end
      end
    end
  end
  inherited PnlTelaCadastro: TPanel
    Top = 230
    Height = 322
    ExplicitTop = 230
    ExplicitHeight = 322
    inherited PcTelaCadastro: TcxPageControl
      Height = 322
      ActivePage = TsLista
      ExplicitHeight = 322
      ClientRectBottom = 322
      ClientRectTop = 26
      object TsLista: TcxTabSheet
        Caption = 'Lista'
        ImageIndex = 13
        object GridAgenda: TcxGrid
          Left = 0
          Top = 0
          Width = 944
          Height = 296
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object GridAgendaDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellDblClick = GridAgendaDBTableView1CellDblClick
            OnCustomDrawCell = GridAgendaDBTableView1CustomDrawCell
            DataController.DataSource = DsVirtualAgenda
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object GridAgendaDBTableView1HORAAGENDA: TcxGridDBColumn
              DataBinding.FieldName = 'HORAAGENDA'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Styles.Header = cxStyle_GridTitulo
              Width = 50
            end
            object GridAgendaDBTableView1STATUSIMAGEM: TcxGridDBColumn
              DataBinding.FieldName = 'STATUSIMAGEM'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Styles.Header = cxStyle_GridTitulo
              Width = 30
              IsCaptionAssigned = True
            end
            object GridAgendaDBTableView1STATUS: TcxGridDBColumn
              DataBinding.FieldName = 'STATUS'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Styles.Header = cxStyle_GridTitulo
              Width = 100
            end
            object GridAgendaDBTableView1MOTIVO: TcxGridDBColumn
              DataBinding.FieldName = 'MOTIVO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Styles.Header = cxStyle_GridTitulo
              Width = 120
            end
            object GridAgendaDBTableView1PACIENTENOME: TcxGridDBColumn
              DataBinding.FieldName = 'PACIENTENOME'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Styles.Header = cxStyle_GridTitulo
              Width = 205
            end
            object GridAgendaDBTableView1PACIENTEIDADE: TcxGridDBColumn
              DataBinding.FieldName = 'PACIENTEIDADE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Styles.Header = cxStyle_GridTitulo
              Width = 35
            end
            object GridAgendaDBTableView1PACIENTECPF: TcxGridDBColumn
              DataBinding.FieldName = 'PACIENTECPF'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Styles.Header = cxStyle_GridTitulo
              Width = 110
            end
            object GridAgendaDBTableView1PACIENTETELEFONE01: TcxGridDBColumn
              DataBinding.FieldName = 'PACIENTETELEFONE01'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Styles.Header = cxStyle_GridTitulo
              Width = 100
            end
            object GridAgendaDBTableView1DESCRICAOCONVENIO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRICAOCONVENIO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Styles.Header = cxStyle_GridTitulo
              Width = 140
            end
          end
          object GridAgendaLevel1: TcxGridLevel
            GridView = GridAgendaDBTableView1
          end
        end
      end
    end
  end
  inherited ImageList32: TcxImageList
    FormatVersion = 1
    DesignInfo = 769
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
    DesignInfo = 689
  end
  inherited Timer: TTimer
    Left = 208
    Top = 88
  end
  inherited AcaoTela: TActionList
    Images = ImageListTelaAgenda
    Left = 264
    Top = 88
    object AcaoIncluirAlterarAgenda: TAction
      Category = 'AcaoTela'
      Caption = 'Incluir'
      ImageIndex = 0
      OnExecute = AcaoIncluirAlterarAgendaExecute
    end
    object AcaoRemoverAgenda: TAction
      Category = 'AcaoTela'
      Caption = 'Remover'
      ImageIndex = 3
      OnExecute = AcaoRemoverAgendaExecute
    end
    object AcaoEvolucaoClinica: TAction
      Category = 'AcaoTela'
      Caption = 'Evolu'#231#227'o Cl'#237'nica'
      ImageIndex = 17
      OnExecute = AcaoEvolucaoClinicaExecute
    end
    object AcaoReceituarioMedico: TAction
      Category = 'AcaoTela'
      Caption = 'Receitu'#225'rio'
      ImageIndex = 29
      OnExecute = AcaoReceituarioMedicoExecute
    end
    object AcaoSolicitacaoExame: TAction
      Category = 'AcaoTela'
      Caption = 'Solicita'#231#227'o Exame'
      ImageIndex = 18
      OnExecute = AcaoSolicitacaoExameExecute
    end
    object AcaoAtestadoMedico: TAction
      Category = 'AcaoTela'
      Caption = 'Atestado M'#233'dico'
      ImageIndex = 27
      OnExecute = AcaoAtestadoMedicoExecute
    end
    object AcaoAtualizaDados: TAction
      Category = 'AcaoTela'
      Caption = 'Atualizar Dados'
      ImageIndex = 16
      OnExecute = AcaoAtualizaDadosExecute
    end
    object AcaoAlterarAgenda: TAction
      Category = 'AcaoTela'
      Caption = 'Alterar'
      ImageIndex = 1
      OnExecute = AcaoAlterarAgendaExecute
    end
    object AcaoEnviarEmailRelacaoAgendaDoutor: TAction
      Category = 'AcaoTela'
      Caption = 'Enviar Agenda Por Email'
      ImageIndex = 14
      OnExecute = AcaoEnviarEmailRelacaoAgendaDoutorExecute
    end
    object AcaoFotoPaciente: TAction
      Category = 'AcaoTela'
      Caption = 'Foto Paciente'
      ImageIndex = 5
      OnExecute = AcaoFotoPacienteExecute
    end
    object AcaoPrescricaoOculos: TAction
      Category = 'AcaoTela'
      Caption = 'Prescri'#231#227'o '#211'culos'
      ImageIndex = 24
      OnExecute = AcaoPrescricaoOculosExecute
    end
    object AcaoLaudoOfatalmo: TAction
      Category = 'AcaoTela'
      Caption = 'Laudo Oftalmo'
      ImageIndex = 25
      OnExecute = AcaoLaudoOfatalmoExecute
    end
  end
  object DsVirtualAgenda: TDataSource
    DataSet = CdsVirtualAgenda
    Left = 192
    Top = 376
  end
  object CdsVirtualAgenda: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'HORAAGENDA'
    Params = <>
    ProviderName = 'DspVirtualAgenda'
    RemoteServer = DmRotinaF.LocalConnection
    AfterScroll = CdsVirtualAgendaAfterScroll
    Left = 192
    Top = 360
    object CdsVirtualAgendaIDVIRTUALAGENDA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDVIRTUALAGENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsVirtualAgendaIDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Agenda'
      FieldName = 'IDAGENDA'
    end
    object CdsVirtualAgendaIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
    end
    object CdsVirtualAgendaIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
    end
    object CdsVirtualAgendaIDCONVENIO: TIntegerField
      DisplayLabel = 'C'#243'd. Conv'#234'nio'
      FieldName = 'IDCONVENIO'
    end
    object CdsVirtualAgendaDATAAGENDA: TDateField
      DisplayLabel = 'Data Agenda'
      FieldName = 'DATAAGENDA'
    end
    object CdsVirtualAgendaHORAAGENDA: TTimeField
      DisplayLabel = 'Hor'#225'rio'
      FieldName = 'HORAAGENDA'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;0;_'
    end
    object CdsVirtualAgendaSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Size = 50
    end
    object CdsVirtualAgendaSTATUSIMAGEM: TStringField
      DisplayLabel = 'Imagem'
      FieldName = 'STATUSIMAGEM'
      Size = 50
    end
    object CdsVirtualAgendaMOTIVO: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      Size = 50
    end
    object CdsVirtualAgendaDOUTORNOME: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsVirtualAgendaDOUTOREMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'DOUTOREMAIL'
      ProviderFlags = []
      Size = 100
    end
    object CdsVirtualAgendaPACIENTENOME: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsVirtualAgendaPACIENTETELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsVirtualAgendaPACIENTETELEFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsVirtualAgendaPACIENTERG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object CdsVirtualAgendaPACIENTECPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsVirtualAgendaPACIENTEIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object CdsVirtualAgendaDESCRICAOCONVENIO: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'DESCRICAOCONVENIO'
      ProviderFlags = []
      Size = 100
    end
    object CdsVirtualAgendaINTERVALO: TIntegerField
      DisplayLabel = 'Intervalo'
      FieldName = 'INTERVALO'
      ProviderFlags = []
    end
  end
  object DsConsultaAgenda: TDataSource
    DataSet = CdsConsultaAgenda
    Left = 312
    Top = 376
  end
  object CdsConsultaAgenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConsultaAgenda'
    RemoteServer = DmRotinaF.LocalConnection
    Left = 304
    Top = 336
  end
  object cxStyleRepository: TcxStyleRepository
    Left = 544
    Top = 88
    PixelsPerInch = 96
    object cxStyle_GridTitulo: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
    end
  end
  object ImageListAgenda: TcxImageList
    FormatVersion = 1
    DesignInfo = 5767512
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFCFCFFFDFDFAFFFDFDF9FFFDFDF9FFFDFD
          FAFFFCFCFCFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFE6E6E1FFC1C1BAFF818194FF686885FF676785FF7E7E
          93FFBFBFB9FFE5E5E1FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF79799DFF414188FF6363AFFF6A6ABDFF7272C3FF7575
          BFFF4D4D95FF767699FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF454585FF6060ABFF4040A7FF3434A5FF3939ACFF4444B3FF5252
          BCFF6E6ECCFF8787D2FF444484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF5C5C98FF5C5CAAFF2E2EA0FF5757B9FF3838BAFF4040BDFF4949C3FF5454
          CCFF7C7CD3FF6767D0FF8B8BD7FF595996FFFFFFFFFFFFFFFFFFFFFFFFFFC6C6
          DBFF5858A4FF3232A2FF3B3B96FF111151FF5C5CAFFF5454D9FF5E5EDFFF6D6D
          B8FF24245CFF6060B1FF6B6BD0FF7676C0FFC2C2D7FFFFFFFFFFFFFFFFFF7979
          B0FF5757AFFF2C2CAAFF252583FF1F1F57FF232368FF6C6CC3FF7070C4FF2E2E
          6CFF2C2C5EFF424294FF5B5BCCFF7F7FD2FF7575B0FFFFFFFFFFFFFFFFFF5252
          A2FF4A4AAEFF3333AEFF4848CFFF3A3A96FF282863FF343478FF363678FF2E2E
          65FF47479EFF6363DFFF4E4EC2FF6666C3FF5858A8FFFFFFFFFFFFFFFFFF4646
          A2FF4F4FB3FF3E3EB9FF5050D1FF6B6BFBFF5B5BA9FF3A3A83FF3C3C83FF5D5D
          ABFF7373FEFF5959D8FF4949C2FF5959BBFF4949A4FFFFFFFFFFFFFFFFFF5858
          AFFF5D5DBBFF4949C3FF6666EEFF7676CCFF373780FF363674FF353574FF3535
          7FFF7171CBFF5F5FEEFF4242C7FF5353B6FF5656ADFFFFFFFFFFFFFFFFFF7D7D
          C3FF7676C9FF5959D4FF6767C5FF37377FFF353570FF5959BFFF5858BFFF2F2F
          70FF2C2C7EFF5555C2FF4141D6FF5D5DB9FF7C7CC2FFFFFFFFFFFFFFFFFFC7C7
          E6FF7979CAFF6F6FDCFF5353B9FF232349FF5757B8FF7F7FFFFF7777FFFF4848
          B8FF1A1A49FF3434BBFF4747DCFF6161B7FFCACAE8FFFFFFFFFFFFFFFFFFFFFF
          FFFF6A6AC3FF8C8CD9FF7C7CF6FF7878FCFF7D7DFFFF7272FFFF6969FFFF6161
          FFFF4E4EFFFF4A4AFBFF6464C8FF6A6AC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF5A5AC1FF8E8ED9FF8484E8FF7676F4FF6B6BF9FF6161FAFF5959
          F6FF5B5BE8FF6767C9FF5959BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9898DAFF6060C6FF7D7DD2FF7E7ED7FF7777D5FF6C6C
          CBFF5454BCFF9A9ADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8ECFFABABE3FFACACE3FFCACA
          EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000097A6BCFF0016
          41FF001942FF001A42FF001941FF001940FF00193FFF00183EFF00183EFF0019
          3FFF001940FF001941FF001A42FF001942FF001641FF97A6BCFF001B4BFF001E
          4CFF000D3BFF00144AFF001B5BFF00226CFF00287CFF002E8BFF002E8BFF0028
          7CFF00226CFF001B5BFF00144AFF000D3BFF001E4CFF001B4BFF002359FF0009
          31FF00B4D8FF00A4C7FF00A3C6FF00A2C4FF00A2C2FF00A1C1FF00A1C1FF00A2
          C2FF00A2C4FF00A3C6FF00A4C7FF00B4D8FF000931FF002359FF002864FF000B
          33FF00ADD4FF009DC5FF009DC5FF009CC4FF009DC4FF009DC4FF009DC5FF009D
          C5FF009DC5FF009DC5FF009DC5FF00ADD4FF000B33FF002864FF002C6FFF000C
          36FF00B5DEFF00A4CEFF00A3CCFF03B3D9FF1DB0E2FF00A8D0FF00A4CDFF00A4
          CEFF00A4CEFF00A4CEFF00A4CEFF00B5DEFF000C36FF002C6FFF003079FF000D
          3AFF00BDE7FF00ABD6FF04BFE6FF1684C1FF001166FF14B5E3FF00ADD7FF00AC
          D7FF00ACD7FF00ACD7FF00ACD7FF00BDE7FF000D3AFF003079FF003483FF000D
          3EFF00C5F1FF00BAE4FF147EBCFF00176AFF002272FF063683FF0BCCF4FF00B3
          DFFF00B3E0FF00B3E0FF00B3E0FF00C5F1FF000D3EFF003483FF00378CFF000D
          40FF00CDFAFF00C6F1FF003F88FF0074B3FF00BBE9FF002373FF116BACFF01CC
          F7FF00BAE8FF00BAE9FF00BAE9FF00CDFAFF000D40FF00378CFF0042A5FF0012
          4CFF00D4FFFF00C1F2FF00CDFAFF00C9F8FF00C7F6FF00C4F4FF00196BFF1A96
          CFFF00D0FEFF00C1F1FF00C1F2FF00D4FFFF00124CFF0042A5FF0047B3FF0014
          51FF00DCFFFF00C8FBFF00C8FBFF00C8FBFF00C8FBFF00CDFFFF00C8FBFF0026
          76FF198AC4FF08D9FFFF00C9FCFF00DCFFFF001451FF0047B3FF0047B1FF0013
          50FF00E0FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CFFFFF00E0
          FFFF0084C4FF1381BEFF0DCBFCFF00E1FFFF001350FF0047B1FF0047B1FF0013
          50FF00E2FFFF00CDFFFF00CDFFFF00CDFFFF00CDFFFF00CDFFFF00CDFFFF00CE
          FFFF00D5FFFF00D4FFFF00CEFFFF00E2FFFF001350FF0047B1FF0047B2FF0013
          50FF00D0FEFF00BEEEFF00BEEEFF00BEEEFF00BEEEFF00BEEEFF00BEEEFF00BE
          EEFF00BEEEFF00BEEEFF00BEEEFF00D0FEFF001350FF0047B2FF0045B0FF001A
          58FF00B3D3FF00A6C9FF00A6C9FF00A6C9FF00A6C9FF00A6C9FF00A6C9FF00A6
          C9FF00A6C9FF00A6C9FF00A6C9FF00B3D3FF001A58FF0045B0FF0042AAFF003D
          ABFF00104FFF000D4BFF000D4CFF000C4BFF000B4BFF000A4AFF000A4AFF000B
          4BFF000C4BFF000D4BFF000D4BFF00104FFF003DAAFF0042AAFFBCCEE9FF4577
          C2FF5384CDFF5F8DD2FF6A95D6FF759DD9FF7FA4DDFF89ACE0FF8BAEE1FF82A7
          DEFF779FDAFF6D98D7FF6290D3FF5686CEFF4878C2FFBDCFE9FF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEAEAEBFFD9DCE5FFE9F1FFFFEBF2FFFFECF2FFFFE7EE
          FCFFD6D8E0FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFBFBFBFFC4C5C8FFEDF3FFFFE4CE99FFC69524FFC08800FFBF8800FFC798
          2BFFE9D8AEFFE5EDFFFFCACBCCFFF8F8F8FFFFFFFFFFFFFFFFFFFEFEFEFFF4F4
          F4FFC2C3C5FFFBFDFFFFC38E09FFCD9300FFE0AC00FFE5B000FFE5B200FFDFAA
          00FFC98E00FFC89822FFF5FAFFFFC6C7C8FFF0F0F0FFFFFFFFFFFCFCFCFFD7D7
          D7FFEFF6FFFFC68F04FFDEA900FFEFBA00FFF7BF04FFFCD13DFFFBBF00FFF4BE
          00FFEDB900FFD7A100FFCB9B24FFE2EBFFFFDFDEDEFFFBFBFBFFFFFFFFFFD0D3
          DEFFE3CA88FFD89F00FFF4BE00FFFFC300FFFFFFFEFFFFFFFFFFFFDC2AFFFFCD
          00FFFDC600FFF0BE00FFD19500FFE9DBB0FFCFD1D7FFFFFFFFFFFFFFFFFFD8E0
          F4FFD29C0EFFEFB900FFFFC400FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4
          1FFFFFD100FFFDC500FFE9B400FFD3A530FFD2DAEEFFFFFFFFFFFEFEFFFFDCE1
          F0FFE2A500FFFFCC00FFFFFFFEFFFFFFFFFFFFFDC9FFFFFB6DFFFFFFFFFFFFFF
          FFFFFFE21FFFFFCD00FFFFCD00FFDCA400FFDEE5FBFFFFFFFFFFFDFEFEFFD9DF
          EDFFE8A600FFFFF2A7FFFFFFFFFFFFFDDBFFFFF100FFFFFC00FFFFFC7AFFFFFF
          FFFFFFFFFFFFFFE21FFFFFCD00FFE2A800FFDCE3F6FFFFFFFFFFFFFFFFFFDBE3
          FBFFE6AC0BFFFFCD00FFFFF293FFFFEC00FFFFFD00FFFFFF00FFFFFF00FFFFFC
          78FFFFFFFFFFFFFFFFFFFFD625FFE0AE22FFDFE7FEFFFFFFFFFFFFFFFFFFE8ED
          FAFFDBBE6EFFFFC600FFFFD900FFFFE700FFFFF300FFFFF900FFFFF800FFFFED
          00FFFFF282FFFFFDE1FFFCBB00FFD7C591FFEEF1F8FFFFFFFFFFFFFFFFFFFEFE
          FEFFCDD6EFFFF1B100FFFFD600FFFFDF00FFFFE600FFFFEA00FFFFE900FFFFE5
          00FFFFDB00FFFFCE00FFEAB215FFD0D8F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF2F3F6FFC4C8D4FFF3B602FFFFCE00FFFFDD00FFFFDF00FFFFDF00FFFFDB
          00FFFFCA00FFEEB613FFC4CBE2FFF8F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF3F3F6FFC1CAE3FFD5B96CFFF2BC16FFFABF00FFFAC000FFEFBA
          1CFFD1BB7DFFC2CCE6FFF9F8F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E7F3FFC7CFE9FFC2C7DAFFC3C8DBFFC9D1
          EBFFE7EBF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF2
          F4FFCCD1D8FFCDD3D9FFCDD3D9FFCDD3D9FFCDD3D9FFCDD3D9FFCDD3D9FFCDD3
          D9FFCDD3D9FFCDD3D9FFCDD3D9FFCCD1D8FFEFF2F4FFFFFFFFFFFFFFFFFFBFAA
          95FFCC9759FFC89255FFC89255FFC89255FFC89255FFC89255FFC89255FFC892
          55FFC89255FFC89255FFC89255FFCC9759FFBFAA95FFFFFFFFFFFFFFFFFFBAA2
          8BFFFCC989FFFBE6CAFFFAE2C2FFFFE4C5FFFFEED3FFFFE4C5FFFAE2C2FFFAE2
          C2FFFAE2C2FFFAE2C2FFFBE6CAFFFCC989FFBAA28BFFFFFFFFFFFFFFFFFFBBA4
          8DFFF0BA77FFFFFFFFFFFFFFFFFFFAFFFFFF00825DFFFAFFFFFFFFFFFFFFFCFF
          FFFFFDFFFFFFFCFFFFFFFFFFFFFFF0BA77FFBBA48DFFFFFFFFFFFFFFFFFFBBA4
          8DFFECB878FFFFFFFFFFFBFCFCFF008456FF008F66FF008456FFFBFDFDFFFFFB
          FFFFF7F7F7FFF8F7F7FFFBFFFFFFECB878FFBBA48DFFFFFFFFFFFFFFFFFFBBA4
          8BFFEFB77CFFEFFFFFFF008852FF009464FF008D58FF009464FF008953FFFBFC
          FCFFFFF8FBFFF4F4F3FFF8FFFFFFEAB579FFBBA48BFFFFFFFFFFFFFFFFFFBBA4
          8BFFF8BA86FF77CBB1FF009158FF008F53FFE5F2EEFF008F53FF009660FF008C
          50FFFBF6FBFFFCF4F6FFF4FDFFFFE7B47BFFBCA48BFFFFFFFFFFFFFFFFFFBCA4
          8BFFF6B988FF79CEB1FF008C43FFFAF4F8FFFFF5FAFFFAF4F8FF00924DFF009A
          5DFF00904DFFFAF2F7FFFCFDFFFFE5B27DFFBCA58BFFFFFFFFFFFFFFFFFFBCA4
          8BFFEAB484FFB5E0D3FFE0E8E3FFF7EEF0FFEAEAE9FFF7EEF0FFF9F1F4FF0095
          4CFF009D5BFF00944AFFECF6FDFFE7B381FFBCA48BFFFFFFFFFFFFFFFFFFBCA3
          8BFFE1B282FFF3F5FFFFEEE8E9FFE8E7E6FFE9E7E7FFE8E7E6FFF3EAEDFFF9ED
          F1FF009A4AFF009C4FFF78CCADFFF1B78DFFBCA38AFFFFFFFFFFFFFFFFFFBDA4
          89FFDFB185FFE7EEF5FFE5E3E1FFE5E3E2FFE5E3E2FFE5E3E2FFE4E3E2FFEFE6
          E9FFF6E8EDFF00993BFF79CDABFFEEB68FFFBCA389FFFFFFFFFFFFFFFFFFBDA4
          89FFDFB189FFE6F1FCFFE3E6E8FFE4E6E9FFE4E6E9FFE4E6E9FFE4E6E9FFE3E6
          E8FFEEE9F0FFDBE5E3FFAFE0D1FFE6B38EFFBDA389FFFFFFFFFFFFFFFFFFBCA2
          87FFE3BB9BFFD1B59DFFD2B298FFD2B298FFD2B298FFD2B298FFD2B298FFD2B2
          98FFD1B298FFD6B49BFFD8B7A2FFE2BB9BFFBCA285FFFFFFFFFFFFFFFFFFC5A9
          8DFFC19C76FFBB8F64FFBC9066FFBC9066FFBC9066FFBC9066FFBC9066FFBC90
          66FFBC9066FFBB9066FFBB8F64FFC19B74FFCCB69EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D0D0DFF1717
          17FF141414FF141414FF141414FF202020FF222222FF151515FF080808FF5E5E
          5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C2C2CFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2FF9B9B9BFFFFFFFFFFFCFCFCFF3B3B
          3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF282828FFFFFF
          FFFFFFFFFFFFFFFFFFFF8D8D8DFF000000FF000000FF747474FFFFFFFFFF3D3D
          3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF282828FFFFFF
          FFFFFFFFFFFF808080FF000000FF2A2A2AFF3F3F3FFF000000FF515151FF5252
          52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF282828FFFFFF
          FFFF7C7C7CFF000000FF161616FFFFFFFFFFFFFFFFFF2D2D2DFF000000FF3A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF333333FFB7B7
          B7FF000000FF1E1E1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3AFF0000
          00FF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B2B2BFFFFFF
          FFFF666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
          4FFF000000FF464646FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292929FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1FF8A8A
          8AFF5B5B5BFF000000FF383838FFFFFFFFFFFFFFFFFFFFFFFFFF191919FFEBEB
          EBFFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFDBDBDBFFC1C1C1FF3333
          33FFFFFFFFFF545454FF000000FF323232FFFFFFFFFFFFFFFFFF787878FF4E4E
          4EFF505050FF505050FF505050FF505050FF505050FF505050FF4B4B4BFFB0B0
          B0FFFFFFFFFFFFFFFFFF646464FF000000FF272727FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF686868FF000000FF353535FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF757575FF232323FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF9F8F8FFD9D7D3FFD1CFC8FFD1CEC7FFC7C5BBFFBEBA
          ADFFB8B5A5FFBBB6A6FFDEDDD8FFFFFFFFFFFFFFFFFFFFFFFFFFC7C5BCFFBBB8
          AEFFB9B5A8FFB5B2A3FFC7C5B6FFDAD7CAFFDEDCCEFFD2CDB8FFDCD7A6FFBBB5
          99FFB3AE9AFFABA490FFCCCAC0FFFFFFFFFFFFFFFFFFFFFFFFFFD9D6D0FFBEBB
          B0FF938E7BFF726B52FF696045FF6F684EFF787050FFB1AEA2FF2B2BFFFFA4A1
          BFFF8B8461FFA19A85FFA6A28FFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F3FFFFFF
          FFFFFFFFFFFFFAF9F4FFF2F1EAFFDEDBD1FFE6E3B0FF1010FFFF0000FFFF2425
          FFFFA7A05FFF908972FF9E9882FFE2E2DEFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE
          E9FFF3F3EFFFE4E1D8FFDDDAD0FFE7E2B9FF7777FEFF0000FFFF0202FCFF0000
          FFFFA39EADFF776F4DFF80785DFFD3D1C8FFFFFFFFFFFFFFFFFFFFFFFFFFDFDC
          D5FFE9E6DEFFDEDBD2FFD6D2C3FFE3E1D7FF0000EDFF0000E1FFEEEDE5FF0000
          DCFF4E4FF0FF6D6224FF6E6547FF959079FFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
          FCFFC7C4B6FFD5D1C7FFE8E2B8FF4343E0FF0000C5FF2F2FD5FFECE6A5FF9A99
          D7FF0000BBFF938D76FF534923FF5C522FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB4AEA1FFCBC6B6FFC9C7D2FF0000A8FF00009FFFA8A6C8FFC0BBA0FFF4F0
          C8FF1D1FA6FF4E4FB9FF5B5017FF39300BFFDAD8D1FFFFFFFFFFFFFFFFFFFFFF
          FFFFD4D2CBFFC0BB9AFF3F40ABFF00007DFF00007FFFDBD5B5FFBAB6A4FFD3CD
          BAFFC2BCA4FF000060FF949298FF302500FF8B856EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF8B846AFFABA9B5FF1F2176FF9391A0FFA89F82FFBAB4A3FFD3CE
          BEFFB1AB92FF888478FF0D0F7AFF8C8675FF302600FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC0BCB2FF7A7354FF978F66FF564A1EFF9B957FFFBBB6A4FFD1CE
          BFFFEFEDE3FF332905FF88826DFF4C4FA7FF6B6874FFE5E4DAFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF504524FF554C2BFF4B4120FFA39D8AFFBFBBAAFFD5CF
          C2FFF6F5EFFF8A836CFF2D2507FF534924FF666166FFD2D1D0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFA29E90FF493E20FF585031FFB2AC9BFFC2BDAEFFD9D4
          C9FFE7E5DDFFFFFFFFFFC1BDB3FF181000FF1D1400FF433B20FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFCFCFBFF322807FF918A74FFB5B1A0FFCDC9BBFFE1DF
          D5FFF2F1EDFFFFFFFFFFFFFFFFFFB4B1A6FFDCDAD4FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAF8FFF1F1EDFFF2F1ECFFFCFB
          FAFFFFFFFFFFFFFFFFFFFFFFFFFFCFCBC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9
          F8FFF4F2EFFFF3F1EFFFF1F0ECFFD1CFC6FFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFCFBFFFDFDF6FFFCFCF3FFFCFCF3FFFDFD
          F6FFFCFCFBFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFE5E5DBFFC0C0B4FF8282B7FF6A6AB9FF6969B9FF7F7F
          B6FFBEBEB3FFE5E5DBFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF7B7BD1FF4646D5FF6969DDFF7070DFFF7878E1FF7C7C
          E6FF5353DCFF7878D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4949D5FF6666D3FF4949CEFF4040D8FF5B5BE5FF6666E9FF6464
          E4FF7C7CE3FF9292EBFF4747D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF6060D8FF6363D0FF3232CDFF5656E5FF5252AFFF3C3C90FF41418DFF5252
          AAFF6666EDFF7373E5FF9797EBFF5D5DD9FFFFFFFFFFFFFFFFFFFFFFFFFFC6C6
          F1FF5E5ED2FF3A3ACCFF4E4EDFFF28287CFF28287EFF303085FF2A2A69FF6F6F
          FFFF6F6FF3FF6B6BEAFF7878E5FF7F7FE4FFC2C2EEFFFFFFFFFFFFFFFFFF7B7B
          DFFF5D5DD2FF3A3AE2FF38388EFF2A2A84FF34348CFF2E2E6CFF7979FFFF7575
          FFFF7272F8FF7373F8FF6868E7FF8A8AE6FF7777DDFFFFFFFFFFFFFFFFFF5858
          D5FF5454D5FF4949D5FF262676FF34348AFF2F2F6CFF7D7DFFFF7B7BFFFF7A7A
          FFFF7B7BFFFF6F6FC2FF5D5DD2FF7171E3FF5E5ED5FFFFFFFFFFFFFFFFFF4F4F
          D2FF5A5ADAFF4848C4FF313181FF2F2F6CFF8181FFFF8080FFFF8181FFFF8585
          FFFF7B7BD3FF2B2B73FF4E4EC2FF6565E0FF5151D4FFFFFFFFFFFFFFFFFF6060
          D9FF6868DDFF5555E0FF29295DFF8282FFFF8383FFFF8585FFFF8B8BFFFF8080
          D2FF34347CFF32327CFF4C4CE0FF5E5EDDFF5D5DD7FFFFFFFFFFFFFFFFFF8484
          E2FF8080E3FF6868F1FF7C7CFFFF8585FFFF8787FFFF9090FFFF8282D1FF3838
          7CFF3E3E8DFF2F2F79FF5353FFFF6565DEFF8181DFFFFFFFFFFFFFFFFFFFC6C6
          EEFF8282E3FF7A7AECFF8282FEFF8989FFFF9292FFFF8484CFFF3B3B7CFF3E3E
          83FF27275CFF5858FCFF5454F4FF6969DAFFC9C9EFFFFFFFFFFFFFFFFFFFFFFF
          FFFF7070DBFF9797ECFF8787F6FF8A8AFFFF8080EFFF35356CFF3B3B7BFF4646
          A2FF6767FFFF5959FCFF6D6DE3FF7171DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF6262DAFF9898ECFF9090F3FF8686FCFF8585FFFF7A7AFFFF6F6F
          FFFF6969F4FF7070E2FF6161D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9D9DE6FF6969DDFF8787E7FF8989EBFF8181E9FF7676
          E2FF5C5CD8FF9F9FE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACAF1FFAFAFEBFFB0B0ECFFCCCC
          F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF2FFFFFCF2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDD0FF8E8EB6FFE5E5EAFFFFFFFFFFFFFF
          FFFFF9F9F9FFFDF8F2FFDED7D5FF6898D0FF318BDCFF1E8CE9FF1E8CE9FF318A
          DCFF6A99CFFFE0D8D5FFFFFFFFFF4242C7FF0000EFFFA5A5DDFFFFFFFFFFF9F9
          F9FFFFF9EFFF86A0C8FF2196F8FF4AB9FFFF44A1F3FF519AE3FF519BE3FF45A1
          F4FF4ABAFFFF1E94F7FF9DB5D0FF948DC4FF4848C2FFD2D2EEFFFFFFFFFFFFFF
          FFFF88A9D4FF37B0FFFF439CEFFF7B9EC1FFC6C8BCFFD2D3C0FFD3D2C0FFC4C7
          BCFF799CC0FF439DF2FF40BFFFFF2332B6FF0C08C0FFAEAEE1FFFFFFFFFFD8E1
          F4FF2FA3FDFF3C95EAFFBCC1BBFFD3D7CAFFCBD3CEFFCCD5D0FFCCD5D0FFCBD3
          CEFFD4D7CAFFB8BEBBFF42AAF2FF253AD2FF0000D2FF9D9DDFFFFFFFFFFF559D
          E8FF39A8FFFFA3B3BEFFD2D7CEFFD0D8D4FFD5DCD7FFDEE5E1FFDBE2DFFFD4DC
          D8FFCFD7D2FFD2D6CBFFA6C5C6FF1A2DD0FF0000D3FF9797DFFFF8F6FBFF329E
          F5FF4490DDFFE0DDC8FFD0D8D4FFD9DFDCFFEAF0EEFFB0B3AFFFD0D3D0FFF4FA
          F8FFEDF3F1FFE3ECE8FFDEE6CAFF3032CBFF0000D1FF8F8FDDFFC4D5F0FF46B2
          FFFF6D9CCDFFDADCCFFFD7DDD9FFE5EBE8FFE0E3E1FF3F403BFF282721FF2C2C
          27FF494741FF61615BFFE4EDD6FF2A26D3FF1408D7FF7A77DAFFBBCFEFFF46B2
          FFFF78A1CCFFDBDDD2FFDBE2DFFFFBFEFDFF4F402EFF283A47FF8F98A3FFFFFF
          FEFFF4F9F7FFECF3EFFFDEE1D4FF5071BEFF3183E5FFA6B3E3FFCFDCF1FF49B3
          FFFF5F96CFFFE3E4D5FFF5F8F2FF49341DFF125DA3FF0093FFFFB8D2F5FFFBFA
          F2FFE5E9E6FFD9DFDCFFE2E1D2FF5D9AD1FF4BB8FFFFD7E3F5FFFFFFFFFF439F
          F0FF2187E5FFEFE4CCFF31383AFF006FEEFF1092FFFF1291F9FFACC4E3FFF4F4
          ECFFE1E6E4FFD8DEDBFFE5DECAFF1E86E6FF449FEEFFFFFFFFFFFFFFFFFF80B0
          E9FF36AFFFFF7B95B2FF227CE8FF0080FFFF2297FAFF219FFCFFA4BDDBFFEAEB
          E4FFD9E0DEFFECE9D6FF6A92C0FF37B1FFFF84B1E9FFFFFFFFFFFFFFFFFFFFFB
          FCFF4CA0EDFF1897FDFF97A5B6FF6195D0FF1288F4FF149DFFFF98B5D8FFECEA
          DDFFEEE6CFFF7695B9FF1999FDFF4C9FECFFFFFEFCFFFFFFFFFFFFFFFFFFFFFF
          FFFFD4DFF3FF4FA5F0FF23A2FFFF3E86CEFF94A3B5FF8A9BB7FFA7B3BDFF8DA3
          BAFF2479D0FF25A5FFFF4FA4EFFFD8E2F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE8ECF6FF5EA0E7FF49B1FDFF31AAFFFF239BF8FF1F99F9FF30A9
          FFFF49B1FDFF5F9DE6FFEBEDF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E0F3FF83AEE7FF6CA6E7FF6EA8E6FF86B1
          E7FFD9E2F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFDCD0
          DCFFBEB3BEFFC2B6C1FFC2B6C2FFC2B6C1FFC1B6C1FFC1B6C1FFC1B6C1FFC1B6
          C1FFC2B6C1FFC2B6C2FFC1B6C1FFBEB3BEFFDCD0DCFFFFFFFFFFEFE2EFFF006B
          00FF008100FF008200FF008200FF008400FF008500FF008600FF008600FF0085
          00FF008400FF008300FF008100FF008100FF006A00FFEFE2EFFFE5D6E4FF0080
          00FF028609FF028609FF028608FF028608FF018608FF018608FF018608FF0286
          08FF028608FF008704FF008607FF028609FF008000FFE6D8E5FFE7DAE6FF0085
          00FF028B10FF038B10FF038B10FF038B10FF038B10FF038B10FF038B10FF038B
          10FF00880AFF296A2DFF0D7C17FF008C0DFF008500FFE9DAE8FFE8D9E6FF008B
          00FF029016FF039016FF039016FF039016FF039016FF039016FF039016FF0391
          17FF007800FFFFFFFFFF6FB473FF008B0BFF008B02FFEADAE7FFEBDAE7FF0092
          0BFF01961FFF01961FFF01961FFF01961FFF01961FFF01961FFF01961FFF0196
          1FFF00961BFF117E21FF079321FF00961DFF00910CFFECDBE8FFECDBE7FF0099
          15FF019C28FF029C28FF029C28FF029C28FF029C28FF029C28FF029C28FF029C
          28FF009618FFCFD5CFFF0F912BFF009C26FF009715FFEEDDE9FFECDBE8FF00A0
          20FF01A132FF02A232FF02A232FF02A232FF02A232FF02A232FF02A232FF02A2
          32FF009921FFDFE8E0FF1E9D43FF00A12EFF009F22FFEEDDE9FFEFDDE7FF00A8
          2BFF01A93BFF02A93CFF02A93CFF02A93CFF02A93CFF02A93CFF02A93CFF02A9
          3CFF00A02AFFF2EEEBFF39A95AFF00A836FF00A72CFFF1DEEAFFF0DDE9FF00AF
          36FF01AF45FF02AF45FF02AF45FF02AF45FF02AF45FF02AF45FF02AF45FF02B0
          45FF00A331FFF8F2F4FF47B370FF00AE3FFF00AD37FFF1DEEAFFF1DEE9FF00B6
          42FF01B44EFF01B54EFF01B54EFF01B54EFF01B54EFF01B54EFF01B54EFF01B6
          4FFF00A433FFFFFFFFFF69C089FF00B346FF00B443FFF3DFEAFFF1DEE8FF00BE
          52FF00BB55FF00BB56FF00BB56FF00BB56FF00BB56FF00BB56FF00BB56FF00BB
          56FF00B74CFF78D6A0FF2DC471FF00B951FF00BE52FFF3DFE9FFF1DFE9FF01C5
          5FFF00BF5CFF01C05EFF01C05EFF01C05EFF01C05EFF01C05EFF01C05EFF01C0
          5EFF01C05EFF00BD56FF00BE5AFF00BF5CFF02C45FFFF3E0EAFFF0DDE7FF06CC
          6AFF00C361FF00C361FF00C361FF00C361FF00C361FF00C361FF00C361FF00C3
          61FF00C361FF00C361FF00C361FF00C260FF07CB6AFFF1DFE8FFFFFCFFFF42BD
          7FFF14CB72FF1ACA75FF1ACA73FF1ACA73FF1ACA74FF1ACA75FF1ACA74FF1ACA
          73FF1ACA73FF1ACA74FF1ACA75FF14CC72FF44BB7FFFFFFCFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBFBFBFFF959595FF999999FF999999FF959595FFBFBFBFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0
          C0FF101010FF212121FF262626FF262626FF262626FF262626FF212121FF1010
          10FFBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9292
          92FF1E1E1EFF333333FF333333FF333333FF333333FF333333FF333333FF1F1F
          1FFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF525252FF1A1A1AFF2E2E2EFF333333FF333333FF2D2D2DFF252525FF5252
          52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCDCDCDFF494949FF2E2E2EFF2D2D2DFF575757FF737373FFD1D1
          D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE8E8E8FF212121FF212121FFF8F8F8FF707070FF3B3B
          3BFF333333FF545454FF8C8C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF333333FF2F2F2FFF2F2F2FFF343434FFEBEBEBFF5454
          54FFFFFFFFFFF9F9F9FFABABABFF232323FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC1C1C1FF1E1E1EFF333333FF333333FF212121FFADADADFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9BFFA4A4A4FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF939393FF262626FF333333FF333333FF262626FF9A9A9AFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBCFF8E8E8EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF9C9C9CFF222222FF333333FF333333FF272727FF757575FF7878
          78FFFFFFFFFFFFFFFFFFFFFFFFFF1A1A1AFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF212121FF232323FF232323FF222222FFFFFFFFFF9999
          99FF2B2B2BFF3C3C3CFF363636FFE8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF979797FF989898FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE
          FFFFFBFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFCDEDFDFF53C2FAFF73CAF9FFF4F9FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEBF9FFFF1BABF6FF3DB6F6FF48BDFAFF36B7FCFF35B6FBFF49BE
          FBFF8AD4FBFFDAF0FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFF60C5FBFF3DBCFFFF2FB7FFFF20B2FFFF1BB0FFFF1BB0FFFF21B2
          FFFF28B4FFFF2BB5FEFF6ECAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4FBFFAFF23B3FFFF11B2FFFF00B0FFFF00A7FFFF00AEFFFF00ADFFFF00A6
          FFFF00B1FFFF11B0FFFF23B4FFFF6DCAFBFFFFFFFFFFFFFFFFFFFFFFFFFFCEED
          FCFF0EACFFFF09AEFFFF0B87C8FF385767FF23BAFFFF23688BFF417995FF1EBC
          FFFF264A5CFF2793CEFF0CAFFFFF0BAAFEFFEDF8FFFFFFFFFFFFFFFFFFFFB2E4
          FFFF29B5FFFF2FC1FFFF245167FF000000FF5BB4E1FF080706FF000000FF60C4
          F9FF000000FF26424FFF30C3FFFF25B4FFFFC8ECFFFFFFFFFFFFFFFFFFFFFBFE
          FFFF2AB5FFFF35B9FFFF4CC9FFFF53AFDFFF61D3FFFF6ACAFCFF66C5F5FF5DD0
          FFFF53B2E5FF48C5FFFF32B9FFFF35B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAAE1FFFF2BB6FFFF4AC1FFFF60CDFFFF6FCDFFFF78D2FFFF77D3FFFF6CCD
          FFFF5DCAFFFF44BFFFFF2AB5FFFFCCEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCAECFFFF61C8FFFF59C6FFFF6FCEFFFF7FD3FFFF7CD3FFFF6CCD
          FFFF57C6FFFF67CAFFFFDAF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F7FFFFCCEEFFFFC9ECFFFFCAECFFFFCDEE
          FFFFEAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0
          B0FF000000FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7272
          72FF000000FFBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7777
          77FF000000FFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF646464FF111111FF121212FF0D0D0DFF4E4E4EFF8B8B
          8BFF000000FFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF262626FF000000FF6F6F6FFF717171FF6B6B6BFFA2A2A2FF8989
          89FF000000FFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE1E1E1FF000000FFA4A4A4FF000000FF000000FF000000FF000000FF0000
          00FF000000FFBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF969696FF000000FF6B6B6BFF000000FF000000FF000000FF000000FF0000
          00FF000000FFEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4F4F4FFF404040FF212121FF000000FF000000FFAEAEAEFFBEBEBEFFB7B7
          B7FFE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF090909FF808080FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7
          F7FF000000FF838383FF000000FF000000FF262626FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFBEBEBEFF898989FF000000FF000000FF686868FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFB4B4B4FF000000FF000000FFC5C5C5FFFFFFFFFFFFFFFFFFFFFF
          FFFF4E4E4EFF797979FF565656FFC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF767676FFABABABFFFFFFFFFFFFFFFFFFFFFFFFFF6262
          62FFFFFFFFFFFFFFFFFFFFFFFFFF5D5D5DFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF444444FF000000FF000000FFCFCFCFFFFFFFFFFFFFFFFFFF7171
          71FFFFFFFFFF7E7E7EFF939393FFAAAAAAFFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FF000000FF000000FF858585FFFFFFFFFFFFFFFFFF6868
          68FFFFFFFFFFA3A3A3FFFFFFFFFF515151FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC0C0C0FF010101FF2E2E2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF6C6C6CFF8A8A8AFF666666FFE3E3E3FFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000051
          6E8D007EAEE3009DD0FE0094C8FE00719FE50043598D0000182A0000070A0000
          00000000000000000000000000000000000000000000000000000000000002B2
          E5FE2CD3F9FF40E9FFFF18DFFFFF00C2F4FF008FB7FF0C22AFFF0407A0F80000
          5B880324043A011E0535000B011300000000000000000000000000000000039B
          C6DD77FCFFFF6DEFFDFF15BBE7FF00D1FFFF0086B9FF1A4DD6FF123ECBFF0618
          8BFF3CC435FF30AB36FF1F9A27FE06650CCB002A04550000000000000000003E
          4F5121C4EBF9007EB3FF4D91B2FF0092C4FF2868C0FF4D52A9FF0003B5FF3D80
          79FF6FED65FF5FDB5EFF50D350FF209C25FF118716FE00000000000000000005
          080D005887E40079AEFF0076AAFF005D97FF4095EFFF3B8CF4FF317094FF90FF
          78FF85F680FF73E671FF5BD65AFF46CF45FF108216F600000000000000000007
          0A800083B8FF009FD6FF0093C9FF0070A3FF50A8DDFF74C3FFFF43ADF6FF59DB
          54FF54AE69FF32B542FF66E062FF45C745FF044B0DA300000000000000000300
          00CF000205FF003C51FF005A7CFF003854FF8DD4FFFF92D7FFFF44A3FFFF32BD
          34FFE0DDFFFF5AAB87FF44C637FF15821EE2010E021A00000000000000000000
          00A05B5857FF443B39FF080000FF000000FF056B94FF006E9EFF127AC2F8349C
          FBFE44A5FFFF42A3FFFF2087C0EE0110031B0000000000000000000000000000
          000F0000008D000000B5020001CC004662FD008AC1FF0075A3FE0E79C3FA71C1
          FFFF76C2FFFF73C1FFFF55AEFFFF15415F5F0000000000000000000000000000
          0000000000000000000000000000000F171A001A263100131C293D8FD7D78ED1
          FFFF91D3FFFF85CDFFFF76C3FFFF2473ABAB0000000000000000000000000000
          00000000000000000000000000000000000000000000000000003191D7D741A3
          D3FF4FAAD6FF7FC6F6FF8BCEFFFF2078C0C00000000000000000000000000000
          0000000000000000000000000000000000000000000000000000007EADD000A8
          D9FF00A5D9FF008BBEFF0080B2FF0070A0E80000000000000000000000000000
          000000000000000000000000000000000000000000000000000000678C9F00BA
          EDFF00C9FCFF00BAEDFF00A2D4FF0050759C0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000080A0C005E
          7F9E00A0D1F70097C9FA005374A50005090C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 5767800
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFCFCFFFDFDFAFFFDFDF9FFFDFDF9FFFDFD
          FAFFFCFCFCFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFE6E6E1FFC1C1BAFF818194FF686885FF676785FF7E7E
          93FFBFBFB9FFE5E5E1FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF79799DFF414188FF6363AFFF6A6ABDFF7272C3FF7575
          BFFF4D4D95FF767699FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF454585FF6060ABFF4040A7FF3434A5FF3939ACFF4444B3FF5252
          BCFF6E6ECCFF8787D2FF444484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF5C5C98FF5C5CAAFF2E2EA0FF5757B9FF3838BAFF4040BDFF4949C3FF5454
          CCFF7C7CD3FF6767D0FF8B8BD7FF595996FFFFFFFFFFFFFFFFFFFFFFFFFFC6C6
          DBFF5858A4FF3232A2FF3B3B96FF111151FF5C5CAFFF5454D9FF5E5EDFFF6D6D
          B8FF24245CFF6060B1FF6B6BD0FF7676C0FFC2C2D7FFFFFFFFFFFFFFFFFF7979
          B0FF5757AFFF2C2CAAFF252583FF1F1F57FF232368FF6C6CC3FF7070C4FF2E2E
          6CFF2C2C5EFF424294FF5B5BCCFF7F7FD2FF7575B0FFFFFFFFFFFFFFFFFF5252
          A2FF4A4AAEFF3333AEFF4848CFFF3A3A96FF282863FF343478FF363678FF2E2E
          65FF47479EFF6363DFFF4E4EC2FF6666C3FF5858A8FFFFFFFFFFFFFFFFFF4646
          A2FF4F4FB3FF3E3EB9FF5050D1FF6B6BFBFF5B5BA9FF3A3A83FF3C3C83FF5D5D
          ABFF7373FEFF5959D8FF4949C2FF5959BBFF4949A4FFFFFFFFFFFFFFFFFF5858
          AFFF5D5DBBFF4949C3FF6666EEFF7676CCFF373780FF363674FF353574FF3535
          7FFF7171CBFF5F5FEEFF4242C7FF5353B6FF5656ADFFFFFFFFFFFFFFFFFF7D7D
          C3FF7676C9FF5959D4FF6767C5FF37377FFF353570FF5959BFFF5858BFFF2F2F
          70FF2C2C7EFF5555C2FF4141D6FF5D5DB9FF7C7CC2FFFFFFFFFFFFFFFFFFC7C7
          E6FF7979CAFF6F6FDCFF5353B9FF232349FF5757B8FF7F7FFFFF7777FFFF4848
          B8FF1A1A49FF3434BBFF4747DCFF6161B7FFCACAE8FFFFFFFFFFFFFFFFFFFFFF
          FFFF6A6AC3FF8C8CD9FF7C7CF6FF7878FCFF7D7DFFFF7272FFFF6969FFFF6161
          FFFF4E4EFFFF4A4AFBFF6464C8FF6A6AC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF5A5AC1FF8E8ED9FF8484E8FF7676F4FF6B6BF9FF6161FAFF5959
          F6FF5B5BE8FF6767C9FF5959BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9898DAFF6060C6FF7D7DD2FF7E7ED7FF7777D5FF6C6C
          CBFF5454BCFF9A9ADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8ECFFABABE3FFACACE3FFCACA
          EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000097A6BCFF0016
          41FF001942FF001A42FF001941FF001940FF00193FFF00183EFF00183EFF0019
          3FFF001940FF001941FF001A42FF001942FF001641FF97A6BCFF001B4BFF001E
          4CFF000D3BFF00144AFF001B5BFF00226CFF00287CFF002E8BFF002E8BFF0028
          7CFF00226CFF001B5BFF00144AFF000D3BFF001E4CFF001B4BFF002359FF0009
          31FF00B4D8FF00A4C7FF00A3C6FF00A2C4FF00A2C2FF00A1C1FF00A1C1FF00A2
          C2FF00A2C4FF00A3C6FF00A4C7FF00B4D8FF000931FF002359FF002864FF000B
          33FF00ADD4FF009DC5FF009DC5FF009CC4FF009DC4FF009DC4FF009DC5FF009D
          C5FF009DC5FF009DC5FF009DC5FF00ADD4FF000B33FF002864FF002C6FFF000C
          36FF00B5DEFF00A4CEFF00A3CCFF03B3D9FF1DB0E2FF00A8D0FF00A4CDFF00A4
          CEFF00A4CEFF00A4CEFF00A4CEFF00B5DEFF000C36FF002C6FFF003079FF000D
          3AFF00BDE7FF00ABD6FF04BFE6FF1684C1FF001166FF14B5E3FF00ADD7FF00AC
          D7FF00ACD7FF00ACD7FF00ACD7FF00BDE7FF000D3AFF003079FF003483FF000D
          3EFF00C5F1FF00BAE4FF147EBCFF00176AFF002272FF063683FF0BCCF4FF00B3
          DFFF00B3E0FF00B3E0FF00B3E0FF00C5F1FF000D3EFF003483FF00378CFF000D
          40FF00CDFAFF00C6F1FF003F88FF0074B3FF00BBE9FF002373FF116BACFF01CC
          F7FF00BAE8FF00BAE9FF00BAE9FF00CDFAFF000D40FF00378CFF0042A5FF0012
          4CFF00D4FFFF00C1F2FF00CDFAFF00C9F8FF00C7F6FF00C4F4FF00196BFF1A96
          CFFF00D0FEFF00C1F1FF00C1F2FF00D4FFFF00124CFF0042A5FF0047B3FF0014
          51FF00DCFFFF00C8FBFF00C8FBFF00C8FBFF00C8FBFF00CDFFFF00C8FBFF0026
          76FF198AC4FF08D9FFFF00C9FCFF00DCFFFF001451FF0047B3FF0047B1FF0013
          50FF00E0FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CFFFFF00E0
          FFFF0084C4FF1381BEFF0DCBFCFF00E1FFFF001350FF0047B1FF0047B1FF0013
          50FF00E2FFFF00CDFFFF00CDFFFF00CDFFFF00CDFFFF00CDFFFF00CDFFFF00CE
          FFFF00D5FFFF00D4FFFF00CEFFFF00E2FFFF001350FF0047B1FF0047B2FF0013
          50FF00D0FEFF00BEEEFF00BEEEFF00BEEEFF00BEEEFF00BEEEFF00BEEEFF00BE
          EEFF00BEEEFF00BEEEFF00BEEEFF00D0FEFF001350FF0047B2FF0045B0FF001A
          58FF00B3D3FF00A6C9FF00A6C9FF00A6C9FF00A6C9FF00A6C9FF00A6C9FF00A6
          C9FF00A6C9FF00A6C9FF00A6C9FF00B3D3FF001A58FF0045B0FF0042AAFF003D
          ABFF00104FFF000D4BFF000D4CFF000C4BFF000B4BFF000A4AFF000A4AFF000B
          4BFF000C4BFF000D4BFF000D4BFF00104FFF003DAAFF0042AAFFBCCEE9FF4577
          C2FF5384CDFF5F8DD2FF6A95D6FF759DD9FF7FA4DDFF89ACE0FF8BAEE1FF82A7
          DEFF779FDAFF6D98D7FF6290D3FF5686CEFF4878C2FFBDCFE9FF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEAEAEBFFD9DCE5FFE9F1FFFFEBF2FFFFECF2FFFFE7EE
          FCFFD6D8E0FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFBFBFBFFC4C5C8FFEDF3FFFFE4CE99FFC69524FFC08800FFBF8800FFC798
          2BFFE9D8AEFFE5EDFFFFCACBCCFFF8F8F8FFFFFFFFFFFFFFFFFFFEFEFEFFF4F4
          F4FFC2C3C5FFFBFDFFFFC38E09FFCD9300FFE0AC00FFE5B000FFE5B200FFDFAA
          00FFC98E00FFC89822FFF5FAFFFFC6C7C8FFF0F0F0FFFFFFFFFFFCFCFCFFD7D7
          D7FFEFF6FFFFC68F04FFDEA900FFEFBA00FFF7BF04FFFCD13DFFFBBF00FFF4BE
          00FFEDB900FFD7A100FFCB9B24FFE2EBFFFFDFDEDEFFFBFBFBFFFFFFFFFFD0D3
          DEFFE3CA88FFD89F00FFF4BE00FFFFC300FFFFFFFEFFFFFFFFFFFFDC2AFFFFCD
          00FFFDC600FFF0BE00FFD19500FFE9DBB0FFCFD1D7FFFFFFFFFFFFFFFFFFD8E0
          F4FFD29C0EFFEFB900FFFFC400FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4
          1FFFFFD100FFFDC500FFE9B400FFD3A530FFD2DAEEFFFFFFFFFFFEFEFFFFDCE1
          F0FFE2A500FFFFCC00FFFFFFFEFFFFFFFFFFFFFDC9FFFFFB6DFFFFFFFFFFFFFF
          FFFFFFE21FFFFFCD00FFFFCD00FFDCA400FFDEE5FBFFFFFFFFFFFDFEFEFFD9DF
          EDFFE8A600FFFFF2A7FFFFFFFFFFFFFDDBFFFFF100FFFFFC00FFFFFC7AFFFFFF
          FFFFFFFFFFFFFFE21FFFFFCD00FFE2A800FFDCE3F6FFFFFFFFFFFFFFFFFFDBE3
          FBFFE6AC0BFFFFCD00FFFFF293FFFFEC00FFFFFD00FFFFFF00FFFFFF00FFFFFC
          78FFFFFFFFFFFFFFFFFFFFD625FFE0AE22FFDFE7FEFFFFFFFFFFFFFFFFFFE8ED
          FAFFDBBE6EFFFFC600FFFFD900FFFFE700FFFFF300FFFFF900FFFFF800FFFFED
          00FFFFF282FFFFFDE1FFFCBB00FFD7C591FFEEF1F8FFFFFFFFFFFFFFFFFFFEFE
          FEFFCDD6EFFFF1B100FFFFD600FFFFDF00FFFFE600FFFFEA00FFFFE900FFFFE5
          00FFFFDB00FFFFCE00FFEAB215FFD0D8F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF2F3F6FFC4C8D4FFF3B602FFFFCE00FFFFDD00FFFFDF00FFFFDF00FFFFDB
          00FFFFCA00FFEEB613FFC4CBE2FFF8F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF3F3F6FFC1CAE3FFD5B96CFFF2BC16FFFABF00FFFAC000FFEFBA
          1CFFD1BB7DFFC2CCE6FFF9F8F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E7F3FFC7CFE9FFC2C7DAFFC3C8DBFFC9D1
          EBFFE7EBF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF2
          F4FFCCD1D8FFCDD3D9FFCDD3D9FFCDD3D9FFCDD3D9FFCDD3D9FFCDD3D9FFCDD3
          D9FFCDD3D9FFCDD3D9FFCDD3D9FFCCD1D8FFEFF2F4FFFFFFFFFFFFFFFFFFBFAA
          95FFCC9759FFC89255FFC89255FFC89255FFC89255FFC89255FFC89255FFC892
          55FFC89255FFC89255FFC89255FFCC9759FFBFAA95FFFFFFFFFFFFFFFFFFBAA2
          8BFFFCC989FFFBE6CAFFFAE2C2FFFFE4C5FFFFEED3FFFFE4C5FFFAE2C2FFFAE2
          C2FFFAE2C2FFFAE2C2FFFBE6CAFFFCC989FFBAA28BFFFFFFFFFFFFFFFFFFBBA4
          8DFFF0BA77FFFFFFFFFFFFFFFFFFFAFFFFFF00825DFFFAFFFFFFFFFFFFFFFCFF
          FFFFFDFFFFFFFCFFFFFFFFFFFFFFF0BA77FFBBA48DFFFFFFFFFFFFFFFFFFBBA4
          8DFFECB878FFFFFFFFFFFBFCFCFF008456FF008F66FF008456FFFBFDFDFFFFFB
          FFFFF7F7F7FFF8F7F7FFFBFFFFFFECB878FFBBA48DFFFFFFFFFFFFFFFFFFBBA4
          8BFFEFB77CFFEFFFFFFF008852FF009464FF008D58FF009464FF008953FFFBFC
          FCFFFFF8FBFFF4F4F3FFF8FFFFFFEAB579FFBBA48BFFFFFFFFFFFFFFFFFFBBA4
          8BFFF8BA86FF77CBB1FF009158FF008F53FFE5F2EEFF008F53FF009660FF008C
          50FFFBF6FBFFFCF4F6FFF4FDFFFFE7B47BFFBCA48BFFFFFFFFFFFFFFFFFFBCA4
          8BFFF6B988FF79CEB1FF008C43FFFAF4F8FFFFF5FAFFFAF4F8FF00924DFF009A
          5DFF00904DFFFAF2F7FFFCFDFFFFE5B27DFFBCA58BFFFFFFFFFFFFFFFFFFBCA4
          8BFFEAB484FFB5E0D3FFE0E8E3FFF7EEF0FFEAEAE9FFF7EEF0FFF9F1F4FF0095
          4CFF009D5BFF00944AFFECF6FDFFE7B381FFBCA48BFFFFFFFFFFFFFFFFFFBCA3
          8BFFE1B282FFF3F5FFFFEEE8E9FFE8E7E6FFE9E7E7FFE8E7E6FFF3EAEDFFF9ED
          F1FF009A4AFF009C4FFF78CCADFFF1B78DFFBCA38AFFFFFFFFFFFFFFFFFFBDA4
          89FFDFB185FFE7EEF5FFE5E3E1FFE5E3E2FFE5E3E2FFE5E3E2FFE4E3E2FFEFE6
          E9FFF6E8EDFF00993BFF79CDABFFEEB68FFFBCA389FFFFFFFFFFFFFFFFFFBDA4
          89FFDFB189FFE6F1FCFFE3E6E8FFE4E6E9FFE4E6E9FFE4E6E9FFE4E6E9FFE3E6
          E8FFEEE9F0FFDBE5E3FFAFE0D1FFE6B38EFFBDA389FFFFFFFFFFFFFFFFFFBCA2
          87FFE3BB9BFFD1B59DFFD2B298FFD2B298FFD2B298FFD2B298FFD2B298FFD2B2
          98FFD1B298FFD6B49BFFD8B7A2FFE2BB9BFFBCA285FFFFFFFFFFFFFFFFFFC5A9
          8DFFC19C76FFBB8F64FFBC9066FFBC9066FFBC9066FFBC9066FFBC9066FFBC90
          66FFBC9066FFBB9066FFBB8F64FFC19B74FFCCB69EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D0D0DFF1717
          17FF141414FF141414FF141414FF202020FF222222FF151515FF080808FF5E5E
          5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C2C2CFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2FF9B9B9BFFFFFFFFFFFCFCFCFF3B3B
          3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF282828FFFFFF
          FFFFFFFFFFFFFFFFFFFF8D8D8DFF000000FF000000FF747474FFFFFFFFFF3D3D
          3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF282828FFFFFF
          FFFFFFFFFFFF808080FF000000FF2A2A2AFF3F3F3FFF000000FF515151FF5252
          52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF282828FFFFFF
          FFFF7C7C7CFF000000FF161616FFFFFFFFFFFFFFFFFF2D2D2DFF000000FF3A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF333333FFB7B7
          B7FF000000FF1E1E1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3AFF0000
          00FF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B2B2BFFFFFF
          FFFF666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
          4FFF000000FF464646FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292929FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1FF8A8A
          8AFF5B5B5BFF000000FF383838FFFFFFFFFFFFFFFFFFFFFFFFFF191919FFEBEB
          EBFFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFDBDBDBFFC1C1C1FF3333
          33FFFFFFFFFF545454FF000000FF323232FFFFFFFFFFFFFFFFFF787878FF4E4E
          4EFF505050FF505050FF505050FF505050FF505050FF505050FF4B4B4BFFB0B0
          B0FFFFFFFFFFFFFFFFFF646464FF000000FF272727FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF686868FF000000FF353535FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF757575FF232323FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF9F8F8FFD9D7D3FFD1CFC8FFD1CEC7FFC7C5BBFFBEBA
          ADFFB8B5A5FFBBB6A6FFDEDDD8FFFFFFFFFFFFFFFFFFFFFFFFFFC7C5BCFFBBB8
          AEFFB9B5A8FFB5B2A3FFC7C5B6FFDAD7CAFFDEDCCEFFD2CDB8FFDCD7A6FFBBB5
          99FFB3AE9AFFABA490FFCCCAC0FFFFFFFFFFFFFFFFFFFFFFFFFFD9D6D0FFBEBB
          B0FF938E7BFF726B52FF696045FF6F684EFF787050FFB1AEA2FF2B2BFFFFA4A1
          BFFF8B8461FFA19A85FFA6A28FFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F3FFFFFF
          FFFFFFFFFFFFFAF9F4FFF2F1EAFFDEDBD1FFE6E3B0FF1010FFFF0000FFFF2425
          FFFFA7A05FFF908972FF9E9882FFE2E2DEFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE
          E9FFF3F3EFFFE4E1D8FFDDDAD0FFE7E2B9FF7777FEFF0000FFFF0202FCFF0000
          FFFFA39EADFF776F4DFF80785DFFD3D1C8FFFFFFFFFFFFFFFFFFFFFFFFFFDFDC
          D5FFE9E6DEFFDEDBD2FFD6D2C3FFE3E1D7FF0000EDFF0000E1FFEEEDE5FF0000
          DCFF4E4FF0FF6D6224FF6E6547FF959079FFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
          FCFFC7C4B6FFD5D1C7FFE8E2B8FF4343E0FF0000C5FF2F2FD5FFECE6A5FF9A99
          D7FF0000BBFF938D76FF534923FF5C522FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB4AEA1FFCBC6B6FFC9C7D2FF0000A8FF00009FFFA8A6C8FFC0BBA0FFF4F0
          C8FF1D1FA6FF4E4FB9FF5B5017FF39300BFFDAD8D1FFFFFFFFFFFFFFFFFFFFFF
          FFFFD4D2CBFFC0BB9AFF3F40ABFF00007DFF00007FFFDBD5B5FFBAB6A4FFD3CD
          BAFFC2BCA4FF000060FF949298FF302500FF8B856EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF8B846AFFABA9B5FF1F2176FF9391A0FFA89F82FFBAB4A3FFD3CE
          BEFFB1AB92FF888478FF0D0F7AFF8C8675FF302600FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC0BCB2FF7A7354FF978F66FF564A1EFF9B957FFFBBB6A4FFD1CE
          BFFFEFEDE3FF332905FF88826DFF4C4FA7FF6B6874FFE5E4DAFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF504524FF554C2BFF4B4120FFA39D8AFFBFBBAAFFD5CF
          C2FFF6F5EFFF8A836CFF2D2507FF534924FF666166FFD2D1D0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFA29E90FF493E20FF585031FFB2AC9BFFC2BDAEFFD9D4
          C9FFE7E5DDFFFFFFFFFFC1BDB3FF181000FF1D1400FF433B20FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFCFCFBFF322807FF918A74FFB5B1A0FFCDC9BBFFE1DF
          D5FFF2F1EDFFFFFFFFFFFFFFFFFFB4B1A6FFDCDAD4FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAF8FFF1F1EDFFF2F1ECFFFCFB
          FAFFFFFFFFFFFFFFFFFFFFFFFFFFCFCBC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9
          F8FFF4F2EFFFF3F1EFFFF1F0ECFFD1CFC6FFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFCFBFFFDFDF6FFFCFCF3FFFCFCF3FFFDFD
          F6FFFCFCFBFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFDFFE5E5DBFFC0C0B4FF8282B7FF6A6AB9FF6969B9FF7F7F
          B6FFBEBEB3FFE5E5DBFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF7B7BD1FF4646D5FF6969DDFF7070DFFF7878E1FF7C7C
          E6FF5353DCFF7878D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4949D5FF6666D3FF4949CEFF4040D8FF5B5BE5FF6666E9FF6464
          E4FF7C7CE3FF9292EBFF4747D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF6060D8FF6363D0FF3232CDFF5656E5FF5252AFFF3C3C90FF41418DFF5252
          AAFF6666EDFF7373E5FF9797EBFF5D5DD9FFFFFFFFFFFFFFFFFFFFFFFFFFC6C6
          F1FF5E5ED2FF3A3ACCFF4E4EDFFF28287CFF28287EFF303085FF2A2A69FF6F6F
          FFFF6F6FF3FF6B6BEAFF7878E5FF7F7FE4FFC2C2EEFFFFFFFFFFFFFFFFFF7B7B
          DFFF5D5DD2FF3A3AE2FF38388EFF2A2A84FF34348CFF2E2E6CFF7979FFFF7575
          FFFF7272F8FF7373F8FF6868E7FF8A8AE6FF7777DDFFFFFFFFFFFFFFFFFF5858
          D5FF5454D5FF4949D5FF262676FF34348AFF2F2F6CFF7D7DFFFF7B7BFFFF7A7A
          FFFF7B7BFFFF6F6FC2FF5D5DD2FF7171E3FF5E5ED5FFFFFFFFFFFFFFFFFF4F4F
          D2FF5A5ADAFF4848C4FF313181FF2F2F6CFF8181FFFF8080FFFF8181FFFF8585
          FFFF7B7BD3FF2B2B73FF4E4EC2FF6565E0FF5151D4FFFFFFFFFFFFFFFFFF6060
          D9FF6868DDFF5555E0FF29295DFF8282FFFF8383FFFF8585FFFF8B8BFFFF8080
          D2FF34347CFF32327CFF4C4CE0FF5E5EDDFF5D5DD7FFFFFFFFFFFFFFFFFF8484
          E2FF8080E3FF6868F1FF7C7CFFFF8585FFFF8787FFFF9090FFFF8282D1FF3838
          7CFF3E3E8DFF2F2F79FF5353FFFF6565DEFF8181DFFFFFFFFFFFFFFFFFFFC6C6
          EEFF8282E3FF7A7AECFF8282FEFF8989FFFF9292FFFF8484CFFF3B3B7CFF3E3E
          83FF27275CFF5858FCFF5454F4FF6969DAFFC9C9EFFFFFFFFFFFFFFFFFFFFFFF
          FFFF7070DBFF9797ECFF8787F6FF8A8AFFFF8080EFFF35356CFF3B3B7BFF4646
          A2FF6767FFFF5959FCFF6D6DE3FF7171DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF6262DAFF9898ECFF9090F3FF8686FCFF8585FFFF7A7AFFFF6F6F
          FFFF6969F4FF7070E2FF6161D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9D9DE6FF6969DDFF8787E7FF8989EBFF8181E9FF7676
          E2FF5C5CD8FF9F9FE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACAF1FFAFAFEBFFB0B0ECFFCCCC
          F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF2FFFFFCF2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDD0FF8E8EB6FFE5E5EAFFFFFFFFFFFFFF
          FFFFF9F9F9FFFDF8F2FFDED7D5FF6898D0FF318BDCFF1E8CE9FF1E8CE9FF318A
          DCFF6A99CFFFE0D8D5FFFFFFFFFF4242C7FF0000EFFFA5A5DDFFFFFFFFFFF9F9
          F9FFFFF9EFFF86A0C8FF2196F8FF4AB9FFFF44A1F3FF519AE3FF519BE3FF45A1
          F4FF4ABAFFFF1E94F7FF9DB5D0FF948DC4FF4848C2FFD2D2EEFFFFFFFFFFFFFF
          FFFF88A9D4FF37B0FFFF439CEFFF7B9EC1FFC6C8BCFFD2D3C0FFD3D2C0FFC4C7
          BCFF799CC0FF439DF2FF40BFFFFF2332B6FF0C08C0FFAEAEE1FFFFFFFFFFD8E1
          F4FF2FA3FDFF3C95EAFFBCC1BBFFD3D7CAFFCBD3CEFFCCD5D0FFCCD5D0FFCBD3
          CEFFD4D7CAFFB8BEBBFF42AAF2FF253AD2FF0000D2FF9D9DDFFFFFFFFFFF559D
          E8FF39A8FFFFA3B3BEFFD2D7CEFFD0D8D4FFD5DCD7FFDEE5E1FFDBE2DFFFD4DC
          D8FFCFD7D2FFD2D6CBFFA6C5C6FF1A2DD0FF0000D3FF9797DFFFF8F6FBFF329E
          F5FF4490DDFFE0DDC8FFD0D8D4FFD9DFDCFFEAF0EEFFB0B3AFFFD0D3D0FFF4FA
          F8FFEDF3F1FFE3ECE8FFDEE6CAFF3032CBFF0000D1FF8F8FDDFFC4D5F0FF46B2
          FFFF6D9CCDFFDADCCFFFD7DDD9FFE5EBE8FFE0E3E1FF3F403BFF282721FF2C2C
          27FF494741FF61615BFFE4EDD6FF2A26D3FF1408D7FF7A77DAFFBBCFEFFF46B2
          FFFF78A1CCFFDBDDD2FFDBE2DFFFFBFEFDFF4F402EFF283A47FF8F98A3FFFFFF
          FEFFF4F9F7FFECF3EFFFDEE1D4FF5071BEFF3183E5FFA6B3E3FFCFDCF1FF49B3
          FFFF5F96CFFFE3E4D5FFF5F8F2FF49341DFF125DA3FF0093FFFFB8D2F5FFFBFA
          F2FFE5E9E6FFD9DFDCFFE2E1D2FF5D9AD1FF4BB8FFFFD7E3F5FFFFFFFFFF439F
          F0FF2187E5FFEFE4CCFF31383AFF006FEEFF1092FFFF1291F9FFACC4E3FFF4F4
          ECFFE1E6E4FFD8DEDBFFE5DECAFF1E86E6FF449FEEFFFFFFFFFFFFFFFFFF80B0
          E9FF36AFFFFF7B95B2FF227CE8FF0080FFFF2297FAFF219FFCFFA4BDDBFFEAEB
          E4FFD9E0DEFFECE9D6FF6A92C0FF37B1FFFF84B1E9FFFFFFFFFFFFFFFFFFFFFB
          FCFF4CA0EDFF1897FDFF97A5B6FF6195D0FF1288F4FF149DFFFF98B5D8FFECEA
          DDFFEEE6CFFF7695B9FF1999FDFF4C9FECFFFFFEFCFFFFFFFFFFFFFFFFFFFFFF
          FFFFD4DFF3FF4FA5F0FF23A2FFFF3E86CEFF94A3B5FF8A9BB7FFA7B3BDFF8DA3
          BAFF2479D0FF25A5FFFF4FA4EFFFD8E2F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE8ECF6FF5EA0E7FF49B1FDFF31AAFFFF239BF8FF1F99F9FF30A9
          FFFF49B1FDFF5F9DE6FFEBEDF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD6E0F3FF83AEE7FF6CA6E7FF6EA8E6FF86B1
          E7FFD9E2F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFDCD0
          DCFFBEB3BEFFC2B6C1FFC2B6C2FFC2B6C1FFC1B6C1FFC1B6C1FFC1B6C1FFC1B6
          C1FFC2B6C1FFC2B6C2FFC1B6C1FFBEB3BEFFDCD0DCFFFFFFFFFFEFE2EFFF006B
          00FF008100FF008200FF008200FF008400FF008500FF008600FF008600FF0085
          00FF008400FF008300FF008100FF008100FF006A00FFEFE2EFFFE5D6E4FF0080
          00FF028609FF028609FF028608FF028608FF018608FF018608FF018608FF0286
          08FF028608FF008704FF008607FF028609FF008000FFE6D8E5FFE7DAE6FF0085
          00FF028B10FF038B10FF038B10FF038B10FF038B10FF038B10FF038B10FF038B
          10FF00880AFF296A2DFF0D7C17FF008C0DFF008500FFE9DAE8FFE8D9E6FF008B
          00FF029016FF039016FF039016FF039016FF039016FF039016FF039016FF0391
          17FF007800FFFFFFFFFF6FB473FF008B0BFF008B02FFEADAE7FFEBDAE7FF0092
          0BFF01961FFF01961FFF01961FFF01961FFF01961FFF01961FFF01961FFF0196
          1FFF00961BFF117E21FF079321FF00961DFF00910CFFECDBE8FFECDBE7FF0099
          15FF019C28FF029C28FF029C28FF029C28FF029C28FF029C28FF029C28FF029C
          28FF009618FFCFD5CFFF0F912BFF009C26FF009715FFEEDDE9FFECDBE8FF00A0
          20FF01A132FF02A232FF02A232FF02A232FF02A232FF02A232FF02A232FF02A2
          32FF009921FFDFE8E0FF1E9D43FF00A12EFF009F22FFEEDDE9FFEFDDE7FF00A8
          2BFF01A93BFF02A93CFF02A93CFF02A93CFF02A93CFF02A93CFF02A93CFF02A9
          3CFF00A02AFFF2EEEBFF39A95AFF00A836FF00A72CFFF1DEEAFFF0DDE9FF00AF
          36FF01AF45FF02AF45FF02AF45FF02AF45FF02AF45FF02AF45FF02AF45FF02B0
          45FF00A331FFF8F2F4FF47B370FF00AE3FFF00AD37FFF1DEEAFFF1DEE9FF00B6
          42FF01B44EFF01B54EFF01B54EFF01B54EFF01B54EFF01B54EFF01B54EFF01B6
          4FFF00A433FFFFFFFFFF69C089FF00B346FF00B443FFF3DFEAFFF1DEE8FF00BE
          52FF00BB55FF00BB56FF00BB56FF00BB56FF00BB56FF00BB56FF00BB56FF00BB
          56FF00B74CFF78D6A0FF2DC471FF00B951FF00BE52FFF3DFE9FFF1DFE9FF01C5
          5FFF00BF5CFF01C05EFF01C05EFF01C05EFF01C05EFF01C05EFF01C05EFF01C0
          5EFF01C05EFF00BD56FF00BE5AFF00BF5CFF02C45FFFF3E0EAFFF0DDE7FF06CC
          6AFF00C361FF00C361FF00C361FF00C361FF00C361FF00C361FF00C361FF00C3
          61FF00C361FF00C361FF00C361FF00C260FF07CB6AFFF1DFE8FFFFFCFFFF42BD
          7FFF14CB72FF1ACA75FF1ACA73FF1ACA73FF1ACA74FF1ACA75FF1ACA74FF1ACA
          73FF1ACA73FF1ACA74FF1ACA75FF14CC72FF44BB7FFFFFFCFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBFBFBFFF959595FF999999FF999999FF959595FFBFBFBFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0
          C0FF101010FF212121FF262626FF262626FF262626FF262626FF212121FF1010
          10FFBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9292
          92FF1E1E1EFF333333FF333333FF333333FF333333FF333333FF333333FF1F1F
          1FFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF525252FF1A1A1AFF2E2E2EFF333333FF333333FF2D2D2DFF252525FF5252
          52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCDCDCDFF494949FF2E2E2EFF2D2D2DFF575757FF737373FFD1D1
          D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE8E8E8FF212121FF212121FFF8F8F8FF707070FF3B3B
          3BFF333333FF545454FF8C8C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF333333FF2F2F2FFF2F2F2FFF343434FFEBEBEBFF5454
          54FFFFFFFFFFF9F9F9FFABABABFF232323FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC1C1C1FF1E1E1EFF333333FF333333FF212121FFADADADFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9BFFA4A4A4FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF939393FF262626FF333333FF333333FF262626FF9A9A9AFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBCFF8E8E8EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF9C9C9CFF222222FF333333FF333333FF272727FF757575FF7878
          78FFFFFFFFFFFFFFFFFFFFFFFFFF1A1A1AFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF212121FF232323FF232323FF222222FFFFFFFFFF9999
          99FF2B2B2BFF3C3C3CFF363636FFE8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF979797FF989898FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE
          FFFFFBFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFCDEDFDFF53C2FAFF73CAF9FFF4F9FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEBF9FFFF1BABF6FF3DB6F6FF48BDFAFF36B7FCFF35B6FBFF49BE
          FBFF8AD4FBFFDAF0FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFF60C5FBFF3DBCFFFF2FB7FFFF20B2FFFF1BB0FFFF1BB0FFFF21B2
          FFFF28B4FFFF2BB5FEFF6ECAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4FBFFAFF23B3FFFF11B2FFFF00B0FFFF00A7FFFF00AEFFFF00ADFFFF00A6
          FFFF00B1FFFF11B0FFFF23B4FFFF6DCAFBFFFFFFFFFFFFFFFFFFFFFFFFFFCEED
          FCFF0EACFFFF09AEFFFF0B87C8FF385767FF23BAFFFF23688BFF417995FF1EBC
          FFFF264A5CFF2793CEFF0CAFFFFF0BAAFEFFEDF8FFFFFFFFFFFFFFFFFFFFB2E4
          FFFF29B5FFFF2FC1FFFF245167FF000000FF5BB4E1FF080706FF000000FF60C4
          F9FF000000FF26424FFF30C3FFFF25B4FFFFC8ECFFFFFFFFFFFFFFFFFFFFFBFE
          FFFF2AB5FFFF35B9FFFF4CC9FFFF53AFDFFF61D3FFFF6ACAFCFF66C5F5FF5DD0
          FFFF53B2E5FF48C5FFFF32B9FFFF35B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAAE1FFFF2BB6FFFF4AC1FFFF60CDFFFF6FCDFFFF78D2FFFF77D3FFFF6CCD
          FFFF5DCAFFFF44BFFFFF2AB5FFFFCCEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCAECFFFF61C8FFFF59C6FFFF6FCEFFFF7FD3FFFF7CD3FFFF6CCD
          FFFF57C6FFFF67CAFFFFDAF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F7FFFFCCEEFFFFC9ECFFFFCAECFFFFCDEE
          FFFFEAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0
          B0FF000000FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7272
          72FF000000FFBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7777
          77FF000000FFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF646464FF111111FF121212FF0D0D0DFF4E4E4EFF8B8B
          8BFF000000FFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF262626FF000000FF6F6F6FFF717171FF6B6B6BFFA2A2A2FF8989
          89FF000000FFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE1E1E1FF000000FFA4A4A4FF000000FF000000FF000000FF000000FF0000
          00FF000000FFBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF969696FF000000FF6B6B6BFF000000FF000000FF000000FF000000FF0000
          00FF000000FFEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4F4F4FFF404040FF212121FF000000FF000000FFAEAEAEFFBEBEBEFFB7B7
          B7FFE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF090909FF808080FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7
          F7FF000000FF838383FF000000FF000000FF262626FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFBEBEBEFF898989FF000000FF000000FF686868FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFB4B4B4FF000000FF000000FFC5C5C5FFFFFFFFFFFFFFFFFFFFFF
          FFFF4E4E4EFF797979FF565656FFC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF767676FFABABABFFFFFFFFFFFFFFFFFFFFFFFFFF6262
          62FFFFFFFFFFFFFFFFFFFFFFFFFF5D5D5DFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF444444FF000000FF000000FFCFCFCFFFFFFFFFFFFFFFFFFF7171
          71FFFFFFFFFF7E7E7EFF939393FFAAAAAAFFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FF000000FF000000FF858585FFFFFFFFFFFFFFFFFF6868
          68FFFFFFFFFFA3A3A3FFFFFFFFFF515151FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC0C0C0FF010101FF2E2E2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF6C6C6CFF8A8A8AFF666666FFE3E3E3FFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000051
          6E8D007EAEE3009DD0FE0094C8FE00719FE50043598D0000182A0000070A0000
          00000000000000000000000000000000000000000000000000000000000002B2
          E5FE2CD3F9FF40E9FFFF18DFFFFF00C2F4FF008FB7FF0C22AFFF0407A0F80000
          5B880324043A011E0535000B011300000000000000000000000000000000039B
          C6DD77FCFFFF6DEFFDFF15BBE7FF00D1FFFF0086B9FF1A4DD6FF123ECBFF0618
          8BFF3CC435FF30AB36FF1F9A27FE06650CCB002A04550000000000000000003E
          4F5121C4EBF9007EB3FF4D91B2FF0092C4FF2868C0FF4D52A9FF0003B5FF3D80
          79FF6FED65FF5FDB5EFF50D350FF209C25FF118716FE00000000000000000005
          080D005887E40079AEFF0076AAFF005D97FF4095EFFF3B8CF4FF317094FF90FF
          78FF85F680FF73E671FF5BD65AFF46CF45FF108216F600000000000000000007
          0A800083B8FF009FD6FF0093C9FF0070A3FF50A8DDFF74C3FFFF43ADF6FF59DB
          54FF54AE69FF32B542FF66E062FF45C745FF044B0DA300000000000000000300
          00CF000205FF003C51FF005A7CFF003854FF8DD4FFFF92D7FFFF44A3FFFF32BD
          34FFE0DDFFFF5AAB87FF44C637FF15821EE2010E021A00000000000000000000
          00A05B5857FF443B39FF080000FF000000FF056B94FF006E9EFF127AC2F8349C
          FBFE44A5FFFF42A3FFFF2087C0EE0110031B0000000000000000000000000000
          000F0000008D000000B5020001CC004662FD008AC1FF0075A3FE0E79C3FA71C1
          FFFF76C2FFFF73C1FFFF55AEFFFF15415F5F0000000000000000000000000000
          0000000000000000000000000000000F171A001A263100131C293D8FD7D78ED1
          FFFF91D3FFFF85CDFFFF76C3FFFF2473ABAB0000000000000000000000000000
          00000000000000000000000000000000000000000000000000003191D7D741A3
          D3FF4FAAD6FF7FC6F6FF8BCEFFFF2078C0C00000000000000000000000000000
          0000000000000000000000000000000000000000000000000000007EADD000A8
          D9FF00A5D9FF008BBEFF0080B2FF0070A0E80000000000000000000000000000
          000000000000000000000000000000000000000000000000000000678C9F00BA
          EDFF00C9FCFF00BAEDFF00A2D4FF0050759C0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000080A0C005E
          7F9E00A0D1F70097C9FA005374A50005090C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object ImageListTelaAgenda: TcxImageList
    BlendColor = clWhite
    BkColor = clWhite
    FormatVersion = 1
    DesignInfo = 5767609
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000004403CE0C8E16FF098A13FF088812FF0785
          10FF003700C70000000000000000000000000000000000000000000000000000
          0000000000000000000000000000014504CE4FDA79FF38CF67FF37CD65FF30C2
          59FF003801C70000000000000000000000000000000000000000000000000000
          0000000000000000000000000000024604CE5AE084FF3CD46CFF3BD36BFF32C5
          5DFF003A02C70000000000000000000000000000000000000000000000000000
          0000000000000000000000000000034706CE62E48AFF3FD76FFF3DD56DFF35C8
          5FFF003B02C70000000000000000000000000000000000000000000000000453
          08D4045209D4035108D4035007D406760DF054E282FF42DA72FF3FD870FF37CB
          62FF016506EC004103CE004003CE003F02CE003E01CE00000000000000001FA7
          2BFF5EE487FF49DD77FF48DC76FF47DC75FF48E078FF44DD75FF42DB73FF3ED6
          6EFF39CD65FF37CB63FF34C860FF31C45CFF088411FF000000000000000020A9
          2DFF74F099FF5CEA8AFF58E888FF54E684FF51E481FF4CE17BFF45DE76FF42DB
          73FF3FD870FF3DD56DFF3BD36BFF37CD65FF098713FF000000000000000022AB
          2EFF7CF39FFF66EE91FF62ED8EFF5EEA8BFF57E886FF52E482FF4CE17BFF44DD
          75FF42DA72FF3FD76FFF3CD46CFF38CF67FF0A8914FF000000000000000023AD
          30FF91F7ABFF8DF6A8FF8BF5A6FF89F4A5FF78F09BFF57E886FF51E481FF48DF
          78FF59E486FF65E58CFF5CE186FF51DB7AFF0D8D18FF00000000000000000452
          09CE045009CE044F09CE044E09CE087C10EF89F4A5FF5EEA8BFF54E684FF43D8
          70FF046E0BEC034706CE034506CE024505CE014304CE00000000000000000000
          0000000000000000000000000000044E09CE8BF5A6FF62ED8EFF58E888FF43D7
          6FFF024005C70000000000000000000000000000000000000000000000000000
          0000000000000000000000000000044F09CE8DF6A8FF66EE91FF5CEA8AFF44D8
          70FF024206C70000000000000000000000000000000000000000000000000000
          0000000000000000000000000000054F0ACE91F7ABFF7DF39FFF74F099FF56DF
          7DFF024306C70000000000000000000000000000000000000000000000000000
          000000000000000000000000000004510BCE24AD31FF23AB30FF21A92EFF1FA6
          2CFF024306C70000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009B7A69FF9D7C6BFF9C7C6BFF9C7C6BFF9C7C6BFF9C7B6BFF9C7B6AFF9B7A
          69FF9B7A69FF9A7A68FF997966FF9B7A69FF0000000000000000000000000000
          00009B7564FFFFFFFFFFFAF4E9FFFAF4E9FFEEE9DEFFE8E2D8FFF7F0E4FFFAF2
          E6FFFAF1E4FFF9EFE0FFF8EDDAFF977765FF0000000000000000000000000000
          0000A27D6DFFFFFFFFFFDDC2B5FFDDC2B5FFB5A9A4FFB1A19AFFDBC2B4FFDCBB
          A9FFDCBAA5FFDCBAA3FFFAF1E2FF987766FF0000000000000000000000000000
          0000A3806EFFFFFFFFFFDBC3BBFFEADDD7FF6D6B6FFF928B96FFC3CDB9FFE8D6
          CCFFDAB8A5FFDCB9A5FFFAF3E6FF997868FF0000000000000000000000000000
          0000A98776FFFFFFFFFFDBC7C2FFE9DDDAFFA8BBCEFF32B354FF2AB442FF6FB4
          6DFFECDBD2FFDCBBA7FFFBF4E8FF997969FF0000000000000000000000000000
          0000AB8978FFFFFFFFFFDBC7C3FFE6D7D4FF99D0A7FF64FF98FF58EC86FF2CAD
          44FF87BE81FFEAD8CCFFFBF5EAFF9A7A69FF0000000000000000000000000000
          0000AF8E7DFFFFFFFFFFDCC5C0FFDEC9C3FFDBE4D6FF55E27DFF68FF9DFF53E1
          7AFF28A43AFF9CC494FFFCF8F2FF9B7A69FF0000000000000000000000000000
          0000AF8F80FFFFFFFFFFFEFEFEFFFEFEFEFFFEFDFDFFD1F8DCFF52EE83FF66FF
          9BFF4EDC75FF229E36FFB7DCB6FFB69F94FF0000000000000000000000000000
          0000AF8F80FFFFFFFFFFDFCECCFFDFCDCBFFDECAC6FFE9D9D5FFADEAB9FF58F6
          88FF62FF97FF40DA67FF32873CFFC6BDB6FF0000000000000000000000000000
          0000B19080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFDFF91EF
          ACFF53FC88FF9AC1A4FFCDBBB6FF6C6B8CFF0000001800000000000000000000
          0000B79787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFBFFFBFC
          FAFFA5C5A6FFFFFFFFFF7692F5FF1E3BDCFF000044C200000000000000000000
          0000B89888FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFDFFFEFCFAFFFDFB
          F9FFDED0C9FF8C99DEFF4075FFFF2B48D8FF000056D100000000000000000000
          0000B89888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB39384FFC1B9D0FF2C3BB5F7030750C90000002500000000000000000000
          0000B89888FFB89888FFB49383FFB49383FFB08E7BFFB08E7BFFAC8875FFAC88
          75FFA7826EFF0C0A096800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0014000258CB010678E10000127B000000070000000000000000000000000000
          0000000017850000188B0000002A000000000000000000000000000000000000
          1C8D1642F6FF174BF8FF0E2FD2FF00005BD00000002400000000000000010000
          21930726D7FF072CD7FF0111B3FF00001D8F0000000000000000000000000000
          60D0224FF9FF1D50FFFF1B4DFFFF1542E8FF02088CEC0000023A000023970B2C
          DDFF0F40F9FF0B3BF5FF0939F0FF0218BCFF0000075D00000000000000000000
          02421630DBFF2659FFFF2254FFFF2051FFFF1949F1FF030BA8FB0D2EDDFF1448
          FEFF1142F9FF0E3FF6FF0C3CF6FF083AF0FF000041BF00000000000000000000
          05511D35DDFF386DFFFF2A5CFFFF2758FFFF2455FFFF1E50FCFF1A4DFFFF1748
          FDFF1444FAFF1243FAFF0D3BF2FF000783E70000024300000000000000000000
          000100000C660E17A6F03B68FBFF3365FFFF2A5BFFFF2657FFFF2051FFFF1B4C
          FFFF184BFFFF103BEDFF000056CB0000001A0000000000000000000000000000
          0000000000000000001C000046BA2C4CE7FF3466FFFF2C5CFFFF2657FFFF2052
          FFFF143BEAFF000044BE0000000B000000000000000000000000000000000000
          000000000000000000000000054D233DDFFF396BFFFF3262FFFF2C5CFFFF2557
          FFFF1944EAFF00005CCF00000008000000000000000000000000000000000000
          00000000000000000000000055C1497AFFFF3F6EFFFF3969FFFF376AFFFF2B5C
          FFFF2356FFFF1134D7FF00002293000000000000000000000000000000000000
          0000000000000000012C243AD8FE4E80FFFF4373FFFF3460FAFF0B12C0FE3A6B
          FFFF2859FFFF1E51FDFF091BBEFD000003470000000000000000000000000000
          0000000000000000208B507AFAFF4E81FFFF497BFFFF080D9BEA000003420A0F
          97E93668FFFF2254FFFF1848F2FF00047DE30000000F00000000000000000000
          0000000000000C1295E0689CFFFF5588FFFF2944E7FF0000095C000000000000
          01320C16ADF22E63FFFF1D4FFFFF1237DDFF0000279C00000000000000000000
          000000000000000028913850E1FE5582FBFF00005AC200000000000000000000
          0000000004471223CAFA2458FFFF0D2CE3FF000061CF00000000000000000000
          000000000000000000000000023C000031A40000013000000000000000000000
          00000000000000000B63000049BC000003490000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000010403034532261A967A5B3CCBBC8C5BECD99C60F9C888
          46F593571FE03C1F01AA02010039000000000000000000000000000000000000
          000000000007684E3CBEFDE2CEFFFFF0EAFFFFF5F6FFFFEFEAFFFDE5DEFFF6D5
          C9FFEABEA9FFD79776FFB25400F4000000050000000000000000000000000000
          000005040347FEE0C7FFFFFFFFFFFFFFFFFFD7D8C2FFFFE7E5FFFFE8DEFFF4D2
          C1FFDFB59CFFD49F82FFC96B1CFF010000300000000000000000000000000000
          000016150F73FFE7D5FFFFF4FAFF9EB17AFF1DAB32FF0FA52EFFB6B799FFEFD5
          CAFFF3D0BBFFE0B195FFCC7B3DFF0D0701620000000000000000000000000000
          00003E392AA0FFF4F1FF46B543FF00B81AFF1EBB34FF66BD66FF49A746FF3C96
          38FFFFDACCFFE1B899FFD08D5DFF2E1701950000000000000000000000000000
          000082745ACCF4EEE5FF2FAC2BFFA3C88CFFE6DFC4FFFFFBFFFF23AC2EFF19A7
          28FFFFE0D9FFE4BCA1FFD49B7AFF6D3600C80000000000000000000000000000
          0002DFBCA0F4ABCA9FFF55C668FF397A31FFFFF0F5FF69B85DFF27D14BFF32A2
          33FFFFDFD2FFE8C3A7FFD8A286FFB85C06F60000000400000000000000000000
          0023FFD9BDFF78C171FF33ED67FF2DAD3AFF5B814EFF68B662FF27DF55FF87C1
          75FFFFE5D9FFEBC7AFFFDBAB8EFFC86A18FF0100002E00000000000000000706
          0450FFDFC8FFBCD4A7FF81C46EFF00B010FF008D00FFE0E4C8FFE0E6CAFFFFF4
          F1FFFBE5D7FFEECEB5FFE0B194FFCC7A39FF0B06016100000000000000001D17
          117CF9E4D3FFFDE7DFFFFFF0E8FFFFF0E6FFFFF3ECFFFFF6F0FFFFF6EEFFFFF0
          E3FFF8E6D6FFEFD0B8FFE2B495FFCF8753FF2714009400000000000000004839
          2AA8F5EAE4FFF5E4D7FFFFF3E6FFFFF4EAFFFFF6ECFFFFF8F4FFFFFDFAFFFEFB
          FAFFFEF9F7FFFAF2ECFFF3DED3FFDBAC91FF5E2C00C60000000000000000947B
          5ED5F3EBEAFFEECAB2FFFBDBBCFFFFE6CAFFFFEFDFFFFFF6EDFFFFFDFCFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB67635F10000000000000000BDA7
          90E7D1A087FFDC9F71FFF9D4B0FFFFE7CEFFFFF1E3FFFFF9F5FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF6E6D4FFC78E52F4160B007600000000000000000000
          002A302A22937F7669CABFAB96E8ECD0B5FAF9DABAFFE1C1A3F8BB9F81EA876D
          52D34F3A25B321120489060300520000000E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0020602803D38C3D0AEF807873FEA4917DFEB3ADA8FEA7A5A3FE6E6865FE8D40
          0DEF92491AEF200B009800000000000000000000000000000000000000007C3B
          02DDC47325FFC77527FF98846FFFC96B11FFE0CEB8FFFFFFFFFFABA9A6FFD48A
          31FFE1A95CFF9A4A11F30000000000000000000000000000000000000000B15B
          0AF6BE6A22FFBF6B21FFA18879FFB44900FFC0AC99FFE5E6E8FFB9B6B4FFCE82
          2CFFDCA157FF984612F40000000000000000000000000000000000000000B059
          09F6BA631DFFBB641DFFA39D99FFA69383FF95908AFF9F9D9BFF86817AFFB06B
          25FFC98739FFAA5115FFAA8164F6753408EF1A0500980000000000000000AF57
          06F6B65C19FFB75E19FFB9611BFFBB641DFFBD681FFFC16D22FFC47225FFC878
          28FFCE822DFFAB5118FFD2AB7CFFBA8842FF7B3100F30000000000000000AD56
          06F6B05615FFBEB2A9FFCDC6C0FFCCC5BFFFC9C2BCFFC6BFB9FFC3BCB6FFB2A8
          9EFFCC802BFFAC5117FFCEA77AFFB6803DFF782D00F40000000000000000AC53
          04F6AC4F11FFD4CECBFFEFEFEFFFEEEEEEFFEBEBEBFFE6E6E6FFE0E0E0FFC2BE
          BAFFC87829FFA94E14FFBF9C76FFA56722FF782E00F40000000000000000AC51
          03F6A8480DFFDBD6D2FFF6F6F6FFDCDCDCFFD9D9D9FFD2D2D2FFE3E3E3FFC5C1
          BDFFC87627FFAB4C11FFCBA378FFA96217FF772C00F40000000000000000A950
          01F6A4420AFFDFD9D5FFFDFDFDFFE4E4E4FFDFDFDFFFD8D8D8FFE6E6E6FFC8C3
          C0FFC77627FFAB5016FFC0BBB6FFA76015FF772B00F40000000000000000A74C
          00F69E3B06FFE2DCD9FFFFFFFFFFFFFFFFFFFBFBFBFFF2F2F2FFE9E9E9FFC8C4
          C1FFA15F21FFAE5617FFC8C6C4FFA45B13FF772A00F400000000000000003017
          00A0B05102FAD5CBC3FFE6E2DEFFE3DFDBFFDDD9D5FFD5D1CDFFCEC9C6FFBBB2
          AAFFC36311FFC38E64FFCAC7C6FFA45912FF762A00F400000000000000000000
          00000000000000000000BC8F6DFABB8B71FFD9D5D3FFE7E7E7FFDBDBDBFFD9D9
          D9FFD5D5D5FFDBDBDBFFBEBAB8FFA35912FF772A00F400000000000000000000
          00000000000000000000893500F67C2400FFBBB6B3FFD6D6D6FFD6D6D6FFD2D2
          D2FFCACACAFFC2C2C2FFA4A09DFF80440CFF782F00F400000000000000000000
          00000000000000000000281100A08F3700FAAFA69FFFBFBBB8FFBCB9B5FFB7B3
          AFFFAFACA8FFA9A5A2FF989089FF964300FA230C00A000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000900000025000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000294E4743E4957B6CFF242424C10000
          000A000000000000000000000026000000100000000000000000000000000000
          0000000000000000000000000022424344E3F9C694FFFFCC9AFFDEB48FFF0404
          0573000000041B1A1BA7977B6BFF625B55F10000003F00000000000000000000
          00000000000000000025383838DD908C8BFFFFE4C0FFFFE8CDFFFFE2B3FF2929
          29D2191B1BB6C0A388FFFFD3A1FFFFCA99FF343330CD00000000000000000000
          00000000002D2D2D2DE79D9D9DFFB6B8BAFFC5B0A7FFFFF5EEFFF2D3B6FF4143
          46FF96989AFFD5BBA7FFFFF0DAFFFFE8C4FF73665AF100000000000000000000
          00374F4F4FEC787878FF929292FFEEEEEEFFE3E2E4FF897B79FF666263FF5B5C
          5CFFCBCBCCFFC1BBBAFFE4D3CEFFF9DBC3FF201F1DAE00000000000000002323
          23DBAAAAAAFFAEAEAEFF9D9D9DFF9A9A9AFF717171FF464646FF585858FF8181
          81FFFFFFFFFFFFFFFFFF777575F8151414920000001000000000000000002C2C
          2CD9858585FFD2D2D2FFC3C3C3FFB3B3B3FF989898FF818181FF6F6F6FFF7171
          71FF5E5E5EFE111111AA00000021000000000000000000000000000000000000
          003B292929C3262626B45A5A5ADC868686FD8D8D8DFF979797FF949494FF3939
          39D5010101430000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000E040404611313139D0101014C0000
          0005000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000014181818917A7A7AF2343434BC040404540000
          0005000000000000000000000000000000000000000000000000000000000000
          00000000000A1010107A878787F0909090FF818181FE777777FF656565FF5D5D
          5DE5111111820000001D00000000000000000000000000000000000000000202
          02427A7A7AE49D9D9DFF979797FFC1C1C1FFCECECEFFAEAEAEFF4C4C4CFF2626
          26FF474747FF626262FB272727AF020202460000000100000000000000002626
          26A6ABABABFFD0D0D0FFE3E3E3FFDCDCDCFFC8C8C8FFB2B2B2FFB2B4B7FF8F93
          99FF575B5FFF2F3234FF2B2C2CFF535353FF090909740000000000000000A4A4
          A4F3EFEFEFFFE7E7E7FFE0E0E0FFDEDEDEFFC8C8C8FFB9BABCFFBDB0A3FFD398
          4EFFD0975AFFB4A08CFF888C91FF747474FF5D5D5DE800000000000000007F7F
          7FDEEFEFEFFFE8E8E8FFE4E4E4FFE3E3E3FFC6C6C7FFC0C6CEFFD79E55FFECAD
          5AFFE8A750FFE18C23FFC5AE98FFC9C7C6FF5D5D5DDF00000000000000003636
          36AAF7F7F7FFEDEDEDFFE9E9E9FFDFDFDFFFC9CBCEFFCCBAA5FFEBAE5FFFE9AC
          5DFFE6A857FFE69C3DFFA59B8BFF67BAFDFF282826AE00000000000000000404
          044AEBEBEBFEF4F4F4FFECECECFFDCDDDFFFD7D9DAFFE2A95DFFF0BA74FFEBAE
          61FFEAAC5BFFE09130FFB4B9C0FFA6B4BDFF0403035400000000000000000000
          00001A1A1A82BFBEBEF9CACECFFFDCD6CDFFEAB877FFF5C185FFF0B56FFFEDB2
          68FFEBAB57FFDCAE74FFDDE0E5FF3D3D3DBA0000000100000000000000000000
          000000000005B2ADA5F4FFEBCCFFF6BF7CFFF2BB76FFEEAE60FFECAD5CFFECAC
          58FF996E36E587898CE1212122960000000C0000000000000000000000000000
          000001010135EAE2D9FFFFF8EAFFFFF5E5FFFFF3DFFFFFEDCFFFDCC9AEFF0302
          0142000000020000000000000000000000000000000000000000000000000000
          00000D0D0D70FFFFFCFFFFFDF0FFFFF9E7FFFFF6DFFFFFF7DAFF8D867EE20000
          0000000000000000000000000000000000000000000000000000000000000000
          00000707075D2D2C2CA23D3B3BB2514F4EC2686560D2888278E2201F1E940000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000012002900AC000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000001E0F6E1FE30F811EEE000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000002D168227ED4EF48FFF0C7316F0000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000001003D1D9934F450EF8BFF47E480FF199030FF158F27FF1590
          27FF139025FF138E25FF159029FF0A6A13EC0000000000000000000000000000
          00000005005325AD42F955F390FF4BE781FF49E57DFF49E67DFF49E580FF47E3
          7CFF45E17AFF43E078FF43E581FF0C7618F3000000000000000000000000000B
          006A3EC45CFD63FA9BFF50ED86FF4DE882FF4BE680FF49E47CFF47E27AFF45E0
          78FF43DE76FF42DD75FF45E37DFF0D7C17F4000000000000000000000000000D
          006F48CB67FE98FFC1FF51F189FF51ED87FF4FEA84FF4CE882FF48E67CFF46E4
          7AFF44E278FF42E077FF47E781FF0F851BF60000000000000000000000000000
          00000006005737B751FA9FFFC6FF56F38EFF51F088FF5EF092FF7DF5A9FF77F3
          A6FF72F2A0FF6FEE9EFF65F29CFF118C20F60000000000000000000000000000
          000000000000000200412BA942F5A5FFCCFF6AFA9FFF32BD4EFF32B546FF30B5
          47FF2FB345FF2DB243FF2FB446FF10871DEE0000000000000000000000000000
          0000000000000000000000010030209631EEB2FFDCFF118C1FF0000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000021188328E5138F1DF4000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000014003B00B0000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000125C2902C8000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000001E8A460DE3A45411EE000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000100002D9F5616EDF0A551FF974C0EF00000000E0000
          000C0000000A000000090000000A0000000C0000000000000000000000000000
          0000000000000301003DB56723F4EFAA60FFE69C4DFFAB601CFFAF5A14FFAD5A
          11FFAC560DFFAB5209FFAB5205FF8E3C02F20000000000000000000000000000
          000007030053C87A34F9F4B674FFEBA65EFFE89F51FFE69A48FFE3933EFFE08C
          32FFDC8427FFD87B1BFFD9760FFF934103F30000000000000000000000001008
          006AD99553FDFCC68FFFF1B06EFFEEA963FFE9A257FFE59A4CFFE39343FFDE8D
          38FFDA842BFFD87C20FFD97916FF984404F40000000000000000000000001309
          006FDF9C5EFEFFDEBAFFF4B674FFEFAE6AFFEBA65FFFE79F52FFE49746FFE08E
          3BFFDD8830FFD98024FFD97B1CFFA04806F60000000000000000000000000000
          000009040057CF8846FAFFDDBDFFF3B472FFEEAB64FFEDAC66FFEEB97DFFEBB1
          70FFE9A864FFE5A057FFE49640FFA34D09F60000000000000000000000000000
          00000000000003010041BF7736F5FFDFBDFFF4BB81FFD2853CFFCC7D36FFCB79
          32FFC9752DFFC77127FFC56F24FF934205EE0000000000000000000000000000
          0000000000000000000001000030A96425EEFFE6C7FFA85A1AF0000000150000
          0015000000140000001200000012000000110000000000000000000000000000
          00000000000000000000000000000000002194531AE5B06624EE000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000014673002CB000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005E2902C90000
          0011000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000A2520FF08040
          0BE20000001D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000A0500FF1C98B
          45FF924C12EC0100002B00000000000000000000000000000000000000000000
          0000873500EEAB5104FFAC5309FFAC560DFFAC5911FFAC5913FFB66620FFECA0
          50FFCE9453FFA25A1AF30201003C000000000000000000000000000000000000
          00009F4B09F5D87611FFD87A1AFFDC8427FFE08C32FFE3933EFFE59848FFE9A0
          52FFF1AA60FFD5A065FFAE6627F8070300500000000000000000000000000000
          0000A14B0AF6DB852AFFD77B1EFFDA842BFFDE8D36FFE39342FFE59A4CFFEAA1
          57FFEFAB62FFF6B674FFE0AE7AFFBA783CFC0E07006700000000000000000000
          0000A54E0BF8E19341FFD97B1FFFDD872EFFE08E3BFFE49744FFE79E50FFEBA6
          5CFFEFAE6AFFF6B878FFFFCD96FFC18144FD1108006C00000000000000000000
          0000A8530FF8EBB472FFE6A157FFE9A967FFEBB172FFEEB67BFFF0BC86FFF0B4
          76FFF2B372FFFBC68FFFCF8440FA080300550000000000000000000000000000
          0000974406F0C66F24FFC67027FFC9752CFFCB7931FFCC7B32FFE7A869FFF6C3
          8EFFFCC38AFFBC7230F40301003F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000AC6223F2FFCB
          95FFA96222EE0100002E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B66928F09252
          19E4000000200000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000673002CB0000
          0013000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000004100C90000
          0011000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000F811DF00E69
          1AE20000001D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000C000000000E7D1AF144CC
          7BFF127B21EC0000002B00000000000000000000000000000000000000000000
          00000A6715EE148F28FF138E25FF138F26FF158E26FF158E25FF1E9D35FF4DEB
          85FF47CE78FF188A2CF30002003C000000000000000000000000000000000000
          000013801FF542E27CFF40DD76FF44E079FF47E37CFF49E681FF49E681FF4BE7
          81FF4FEE86FF4DD580FF1F9736F8000500500000000000000000000000000000
          0000117F1DF64FE185FF3EDA71FF41DD74FF44E077FF47E27AFF4AE680FF4EE9
          83FF50EC85FF55F38CFF54DF89FF29A544FC000B006700000000000000000000
          000011831EF85FE791FF39DB6EFF41DF75FF43E278FF46E57BFF4AE880FF4FEB
          85FF53EF88FF58F38DFF65FFA0FF33BC51FD000D006C00000000000000000000
          0000138721F88CF5B4FF68EA98FF71EE9FFF75F1A3FF79F3A5FF7CF4A7FF65F2
          96FF57F58EFF65FFA0FF32C84FFA000600550000000000000000000000000000
          00000F7B1CF029AB41FF29AB3EFF2CAD42FF2DB143FF2CAF42FF3FBD56FF78FA
          A7FF65FFA1FF29B141F40002003F000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001C8D26F272FF
          B1FF209E32EE0000002E00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001B972AF01989
          28E4000000200000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000003600B10000
          0013000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          0C640A209CE10F29ADE70A26ADE70825AEE70625AFE70225AFE70227B1E70329
          B2E7052AB6E7062DB7E7062EB8E7052AABE100010D620000000000000000091D
          9BE489A1FFFF5F84FFFF4B79FFFF3771FFFF256BFFFF1B6EFFFF217BFFFF288A
          FFFF2F97FFFF35A1FFFF35A3FFFF35A5FFFF0327AAE200000000000000000F22
          A4EA7490FDFF4E73FEFF3969FFFF2762FFFF155EFFFF1968FFFF1F74FFFF2582
          FFFF2C8FFFFF319BFFFF319AFFFF34A0FFFF052AB8EA00000000000000000E1F
          9FEA6D8BFEFF486EFEFF3364FFFF1F5CFFFF115AFFFF1867FFFF1E72FFFF2581
          FFFF298DFFFF2F96FFFF3098FFFF309AFFFF0429B4EA00000000000000000E1D
          9BEA6B89FCFF446AFFFF2F5FFFFF1957FFFF0F57FFFF1664FFFF1B6FFFFF2279
          FFFF2583FFFF2889FFFF2A8BFFFF2C91FFFF0426B0EA00000000000000000E1B
          95EA6B88FBFF4468FDFF2D5CFFFF1753FFFF0D52FFFF135EFFFF1868FFFF1C6F
          FFFF2077FFFF227CFFFF227DFFFF2485FFFF0321ABEA00000000000000000E19
          92EA6F88F8FF4668FAFF2E5AFFFF1950FFFF0A4BFFFF0F55FFFF145FFFFF1767
          FFFF1A6BFFFF1C6FFFFF1C6FFFFF1E76FFFF031FA6EA00000000000000000F16
          8CEA748CF5FF4C6BF5FF345BFDFF1E4FFFFF0A46FFFF0B4CFFFF0F54FFFF125C
          FFFF1461FFFF1664FFFF1663FFFF1869FFFF011BA2EA00000000000000000F15
          88EA7D92F3FF556FF0FF3D5FF7FF2651FEFF1347FFFF0442FFFF0A4AFFFF0C4F
          FFFF0F54FFFF1056FFFF1058FFFF115CFFFF02169EEA00000000000000001114
          83EA8B9AF0FF6076ECFF4966F1FF3358F7FF1E4BFFFF0D41FFFF0340FFFF0744
          FFFF0948FFFF0A4AFFFF0A4AFFFF0A4FFFFF001399EA00000000000000001414
          7FEA98A5EFFF6E81E8FF586FEBFF4361F0FF2F54F5FF1E49FDFF0E3FFFFF043A
          FEFF013BFFFF033DFFFF033CFFFF0441FFFF000F95EA00000000000000001616
          80EAA9B1EFFF808CE6FF687AE7FF556CEAFF435FEEFF3254F2FF244BF6FF1944
          FAFF103EFEFF0B3CFFFF0A3CFFFF1044FFFF010D91EA0000000000000000090B
          74E4CAD0F5FFA3ACECFF8C98EBFF758AEDFF6379EFFF526EF1FF4564F5FF3B5C
          F7FF3258FAFF2D54FAFF2D54FCFF335EFFFF00077DE300000000000000000000
          0966090C74E4151580EA10137FEA0E107FEA0D0F80EA0B0E7FEA090D80EA090C
          7FEA090B81EA080A80EA090C82EA020879E40000086400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008D8D
          8DFF8A8A8AFF878787FF858585FF828282FF7E7E7EFF7C7C7CFF797979FF7676
          76FF737373FF707070FF6D6D6DFF6A6A6AFF676767FF00000000000000008E8E
          8EFFFFDFDFFFFFDFDFFFFFDFDFFFB39C9CFFFFDDDDFFFFDCDCFFFFDBDBFFFFD9
          D9FFB39898FFFFD7D7FFFFD5D5FFFFD3D3FF686868FF00000000000000008F8F
          8FFFFFE2E2FFFFE2E2FFFFE2E2FFB39E9EFFFFE0E0FFFFDFDFFFFFDEDEFFFFDC
          DCFFB39999FFFFD8D8FFFFD7D7FFFFD5D5FF686868FF00000000000000008F8F
          8FFFFFE5E5FFFFE5E5FFFFE5E5FFB3A0A0FFFFE3E3FFFFE2E2FFFFE0E0FFFFDE
          DEFFB39A9AFFFFDADAFFFFD8D8FFFFD7D7FF696969FF00000000000000009090
          90FFB3A2A2FFB3A2A2FFB3A2A2FFB3A1A1FFB3A1A1FFB3A0A0FFB39F9FFFB39E
          9EFFB39D9DFFB39A9AFFB39999FFB39898FF6A6A6AFF00000000000000009191
          91FFFFEAEAFFFFEAEAFFFFEAEAFFB3A4A4FFFFE7E7FFFFE6E6FFFFE5E5FFFFE3
          E3FFB39E9EFFFFDEDEFFFFDCDCFFFFD9D9FF6B6B6BFF00000000000000009191
          91FFFFEDEDFFFFEDEDFFFFEDEDFFB3A5A5FFFFEAEAFFFFE8E8FFFFE6E6FFFFE5
          E5FFB39F9FFFFFE0E0FFFFDEDEFFFFDBDBFF6B6B6BFF00000000000000009292
          92FFFFF0F0FFFFF0F0FFFFEFEFFFB3A7A7FFFFECECFFFFEAEAFFFFE8E8FFFFE6
          E6FFB3A0A0FFFFE2E2FFFFDFDFFFFFDCDCFF6C6C6CFF00000000000000009393
          93FFFFF3F3FFFFF3F3FFFFF2F2FFB3A8A8FFFFEFEFFFFFECECFFFFEAEAFFFFE7
          E7FFB3A1A1FFFFE3E3FFFFE0E0FFFFDDDDFF6D6D6DFF00000000000000009393
          93FFB3ADADFFB3ADADFFB3ACACFFB3ABABFFB3A8A8FFB3A7A7FFB3A5A5FFB3A4
          A4FFB3A1A1FFB3A0A0FFB39E9EFFB39C9CFF6D6D6DFF00000000000000009494
          94FFFFF9F9FFFFF9F9FFFFF7F7FFB3ACACFFFFF2F2FFFFEFEFFFFFEDEDFFFFEA
          EAFFB3A2A2FFFFE5E5FFFFE2E2FFFFDFDFFF6E6E6EFF00000000000000009595
          95FFFFFCFCFFFFFBFBFFFFF9F9FFB3ADADFFFFF3F3FFFFF0F0FFFFEDEDFFFFEA
          EAFFB3A2A2FFFFE5E5FFFFE2E2FFFFDFDFFF6F6F6FFF00000000000000009696
          96FFFFFFFFFFFFFCFCFFFFF9F9FFB3ADADFFFFF3F3FFFFF0F0FFFFEDEDFFFFEA
          EAFFB3A2A2FFFFE5E5FFFFE2E2FFFFDFDFFF6F6F6FFF00000000000000009696
          96FF939393FF909090FF8D8D8DFF8A8A8AFF878787FF858585FF828282FF7E7E
          7EFF7C7C7CFF797979FF767676FF737373FF707070FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000009B7B6AFF9D7D6CFF9C7D
          6CFF9C7C6CFF9B7B6AFF9B7B6AFF997A67FF9B7B6AFF00000000000000000000
          000000000000000000000000000000000000000000009B7665FFFFFFFFFFFAF4
          E9FFFAF3E8FFFAF2E6FFFAF1E4FFF8EDDAFF977866FF00000000000000000000
          00000000000000000000000000000000000000000000A27E6EFFFFFFFFFFFCF6
          EDFFFBF5ECFFFBF4EAFFFBF3E8FFFAF1E2FF987867FF00000000000000000000
          00000000000000000000000000000000000000000000A98777FFFFFFFFFFFDF9
          F4FFFCF8F2FFFCF7EFFFFBF6EDFFFBF4E8FF997A6AFF00000000000000009B7B
          6AFF9D7D6CFF9C7D6CFF9C7C6CFF9B7B6AFF9B7B6AFFAB8979FFFFFFFFFFFDFB
          F7FFFDFAF5FFFCF8F2FFFCF7EFFFFBF5EAFF9A7B6AFF00000000000000009B76
          65FFFFFFFFFFFAF4E9FFFAF3E8FFFAF2E6FFFAF1E4FFAF8F80FFFFFFFFFFFEFE
          FEFFFEFCFBFFFDFAF6FFFCF9F3FFFCF6EDFF9B7B6BFF0000000000000000A27E
          6EFFFFFFFFFFFCF6EDFFFBF5ECFFFBF4EAFFFBF3E8FFB19080FFFFFFFFFFFFFF
          FFFFFEFEFEFFFDFBF8FFFCF9F4FFF0E8E0FF9F806FFF0000000000000000A987
          77FFFFFFFFFFFDF9F4FFFCF8F2FFFCF7EFFFFBF6EDFFB79787FFFFFFFFFFFFFF
          FFFFFEFEFEFFFDFBF9FFA7826FFFA7826FFFA7826FFF0000000000000000AB89
          79FFFFFFFFFFFDFBF7FFFDFAF5FFFCF8F2FFFCF7EFFFB89888FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFA7826FFFB18E7DFF130F0D580000000000000000AF8F
          80FFFFFFFFFFFEFEFEFFFEFCFBFFFDFAF6FFFCF9F3FFB89888FFB89888FFB493
          83FFB08E7CFFAC8876FFA7826FFF130F0D58000000000000000000000000B190
          80FFFFFFFFFFFFFFFFFFFEFEFEFFFDFBF8FFFCF9F4FFF0E8E0FF9F806FFF0000
          000000000000000000000000000000000000000000000000000000000000B797
          87FFFFFFFFFFFFFFFFFFFEFEFEFFFDFBF9FFA7826FFFA7826FFFA7826FFF0000
          000000000000000000000000000000000000000000000000000000000000B898
          88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7826FFFB18E7DFF130F0D580000
          000000000000000000000000000000000000000000000000000000000000B898
          88FFB89888FFB49383FFB08E7CFFAC8876FFA7826FFF130F0D58000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000070A3E003750B1005E88E5005D87E50034
          4DB200060A3F0000000000000000000000000000000000000000000000000000
          00000000000000000000001C27740089BCFD00B2E5FF00BAEDFF00B6E9FF00A6
          D9FF007DB0FD0018257400000000000000000000000000000000000000000000
          00000000000000070B3E008FC1FD00C9FBFF00C3F5FF00C0F1FF00BBEEFF00B5
          E8FF00B1E4FF007DAFFD00060A3F000000000000000000000000000000000000
          000000000000003D55AF00C5F6FF01CEFFFF00CCFEFF00C8FBFF00C2F6FF00BD
          EEFF00B5E8FF00A6D9FF00344DB2000000000000000000000000000000000000
          00000000000000729CE60BDEFFFF0CD9FFFF0AD7FFFF05D3FFFF00CAFDFF00C2
          F6FF00BBECFF00B5E8FF005E88E6000000000000000000000000000000000000
          00000000000000759FE617E9FFFF19E6FFFF16E3FFFF0FDCFFFF04D1FFFF00C9
          FBFF00BFF2FF00B9ECFF005F89E6000000000000000000000000000000000000
          00000000000000425CAF1DE4F9FF27F5FFFF20EDFFFF16E3FFFF09D6FFFF00CB
          FEFF00C2F4FF00B1E4FF003750B1000000000000000000000000000000000000
          00000000000000090C3D08ADD5FD32FFFFFF24F3FFFF18E5FFFF0BD9FFFF00CD
          FFFF00C7F9FF0089BBFD00070A3E000000000000000000000000000000000000
          0000000000000000000000212D7208ACD4FD1AE3F9FF14E7FFFF0ADCFFFF00C4
          F7FF0090C1FD001C277300000000000000000000000000000000000000000000
          000000000000000000000000000000090C3D00425CAF0077A0E600729DE6003C
          54AF00080B3E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000008003E004200B1007100E5006F00E50041
          00B20008003F0000000000000000000000000000000000000000000000000000
          00000000000000000000002100740A9E0EFD26BE39FF2BC541FF27C23AFF1BB4
          2AFF069309FD001F007400000000000000000000000000000000000000000000
          0000000000000009003E0BA412FD39D355FF35CF4FFF31CC4BFF2CC644FF28C2
          3CFF23BD34FF059308FD0008003F000000000000000000000000000000000000
          000000000000004700AF38D254FF3FD960FF3DD75CFF3BD558FF34CE50FF2EC9
          45FF26C13BFF1CB42AFF004100B2000000000000000000000000000000000000
          00000000000006840CE64CE673FF49E36DFF46E06BFF43DD63FF3DD75BFF34CE
          50FF2DC742FF26C13AFF007200E6000000000000000000000000000000000000
          000000000000088512E655EF81FF51EB7CFF50EA78FF4AE470FF43DD64FF39D3
          56FF31CB4AFF2AC540FF007400E6000000000000000000000000000000000000
          000000000000044C0AAF4FE97AFF5EF88DFF58F285FF50EA78FF47E169FF3CD6
          5BFF34CE4EFF25BE38FF004200B1000000000000000000000000000000000000
          000000000000000A023D25BD40FD68FF9DFF5DF78CFF51EB7AFF48E26CFF3ED8
          5EFF38D253FF0A9E0EFD0008003E000000000000000000000000000000000000
          0000000000000000000004270A7225BD41FD4EE877FF54EE7DFF4AE470FF36D0
          51FF0BA411FD0021007300000000000000000000000000000000000000000000
          0000000000000000000000000000000A023D044C0CAF0A8714E607840DE60047
          00AF0009003E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF3F9FFD5DBE3FFD6DCE5FFFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEDF3FAFFB7AEA7FFBD9C71FFD59E52FFBE7E2BFFF7FDFFFFD8DE
          E6FFCBD1DAFFCCD2DBFFCCD2DBFFCCD2DBFFCCD2DAFFF0F2F5FFFFFFFFFFFFFF
          FFFFE3EBF6FFB49166FFEDB563FFF7C577FFF6C67CFFD1984BFFEFFBFFFFBF84
          3AFFD59C4FFFD39A4FFFD39A4FFFD49A4CFFD3994AFFD9C6AEFFFFFFFFFFEEF5
          FEFFB78D5AFFF4BF6FFFEBBA71FFE9B76EFFEDBA6DFFCD9345FFEDFAFFFFD198
          4BFFF7C77EFFF2C279FFF2C278FFF4C783FFCEB493FFFFFFFFFFFFFFFFFFB8A4
          8CFFEAB362FFE7B56BFFE5B267FFEBBD76FFECC78EFFBC8138FFF6FFFFFFCD93
          47FFEFBE74FFEAB970FFEBBA71FFE4AE60FFBBAA98FFFFFFFFFFEFF7FFFFC48A
          3EFFE6B569FFE1AE64FFEABB76FFCB9D61FFD8C1A7FFFFFFFFFFF8FEFFFFC990
          44FFE9B86CFFE6B367FFE6B56DFFEDBC72FFC38B41FFEFF6FFFFD2C6B8FFD8A1
          51FFDEAC62FFDEAA5BFFD5A96EFFE9E1D8FFFFFFFFFFFFFFFFFFF6FDFFFFC78B
          39FFECC48AFFE6C28EFFE3B061FFE5B369FFDDA557FFD1C5B7FFCFB79AFFDDA7
          56FFD9A65CFFDEAA5EFFC9AA84FFFFFFFFFFFCFFFFFFFFFFFFFFFAFFFFFFC994
          4FFFCDAB83FFCAAC86FFE4B266FFDFAD63FFE4AF5EFFCDB49AFFCFB79DFFDBA8
          5BFFD5A256FFD9A455FFC9B194FFEAF4FFFFB69C7DFFFBFEFFFFFFFFFFFFD8BE
          9CFFFFFFFFFFC8B197FFE2AD60FFDBA85EFFE3B165FFCDB69BFFCFB597FFDBAE
          6BFFD19C4FFFD59F51FFB99365FFB69873FFC28330FFF7FEFFFFFFFFFFFFFFFF
          FFFFFCFFFFFFB99464FFDDA758FFD7A457FFE3B772FFCEB497FFE0D2C1FFD7B0
          79FFCB9342FFCE9A4EFFCC974AFFCF9846FFC38F4AFFF8FEFFFFFFFFFFFFFCFF
          FFFFBFBBB7FFCC9241FFD7A357FFD49F52FFD7AA6AFFE0D2C2FFFFFFFFFFC89D
          66FFD3A561FFC99346FFCA9549FFCA9242FFC69557FFF6FCFFFFCFD5DCFFB19E
          89FFC2883BFFD7A154FFD19D53FFD29B4AFFC89E67FFFFFFFFFFFFFFFFFFD0BE
          ABFFCFA263FFC58F41FFC69145FFC38C3BFFCB9E65FFF0FCFFFFB77724FFCF98
          46FFD09C4FFFCD9A4FFFC98F3CFFE0BD8BFFD6BEA2FFFFFFFFFFEAF1FAFFB390
          65FFBC7E26FFBE8430FFBE8431FFB97D24FFCFA876FFF0FCFFFFBE8233FFCC96
          48FFC99243FFC58A35FFE0BE8BFFCBA679FFFFFFFFFFFFFFFFFFD3B692FFC695
          57FFCCA46FFFCBA26EFFCBA26EFFCCA470FFBB8645FFFAFFFFFFBB8032FFCA96
          4AFFD3A96BFFDCBC8FFFD1B088FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8A4BFFD3B0
          84FFDFC7ABFFEEE4D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009B7C6BFF9D7E6DFF9C7E6DFF9C7E6DFF9C7E6DFF9C7D6DFF9C7D6CFF9B7C
          6BFF9B7C6BFF9A7C6AFF997B68FF9B7C6BFF0000000000000000000000000000
          00009B7766FFFFFFFFFFFAF4E9FFFAF4E9FFFAF4E9FFFAF3E8FFFAF3E7FFFAF2
          E6FFFAF1E4FFF9EFE0FFF8EDDAFF977967FF0000000000000000000000000000
          0000A27F6FFFFFFFFFFF9E9B97FF9E9B97FF9E9B97FFFBF5ECFF9E9B96FF9E9A
          95FF9E9A94FF9D9993FFFAF1E2FF987968FF0000000000000000000000000000
          0000A38070FFFFFFFFFFFCF8F1FFFCF8F1FFFCF7F0FFFCF7EFFFFCF6EEFFFBF6
          ECFFFBF5EBFFFBF4E9FFFAF3E6FF997A6AFF0000000000000000000000000000
          0000A98778FFFFFFFFFF9F9D9AFF9F9D9AFF9E9D9AFF9E9C99FF9E9C99FF9E9C
          98FF9E9B97FF9E9B96FFFBF4E8FF997B6BFF0000000000000000000000000000
          0000AB897AFFFFFFFFFFFDFBF7FFFDFBF7FFFDFAF6FFFDFAF5FFFCF9F4FFFCF8
          F2FFFCF7EFFFFBF6EDFFFBF5EAFF9A7C6BFF0000000000000000000000000000
          0000AF8E7FFFFFFFFFFF9F9E9EFF9F9E9DFF9F9E9DFF9F9E9CFF9F9D9BFF9F9D
          9AFFFCF8F1FF9E9C98FFFBF5ECFF9B7C6BFF0000000000000000000000000000
          0000AF8F80FFFFFFFFFFFEFEFEFFFEFEFEFFFEFDFDFFFEFCFBFFFDFBF8FFFDFA
          F6FFFCF9F3FFFCF7F0FFFCF6EDFF9B7C6CFF0000000000000000000000000000
          0000AF8F80FFFFFFFFFFA0A0A0FFA0A0A0FF9F9F9FFFFEFDFDFF9F9E9DFF9F9E
          9CFF9F9D9AFF9E9C99FFFCF6EEFF9C7C6DFF0000000000000000000000000000
          0000B19080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFBFFFDFB
          F8FFFCF9F4FFF9F4EEFFF0E8E0FF9E7F70FE0000000000000000000000000000
          0000B79787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFBFFFDFB
          F9FFA78270FFA78270FFA78270FFA78270FF0000000000000000000000000000
          0000B89888FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFDFFFEFCFAFFFDFB
          F9FFA78270FFF5E2D9FFB18E7EFF3A2D27580000000000000000000000000000
          0000B89888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA78270FFB18E7EFF3A2D2758000000000000000000000000000000000000
          0000B89888FFB89888FFB49383FFB49383FFB08E7DFFB08E7DFFAC8877FFAC88
          77FFA78270FF3A2D275800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000A03000D5A250083A94C00E6B14E00F2A74800E4843700BA4A1B
          0071210E00340200000300000000000000000000000000000000000000000000
          000036170042B45304E9D36E01FFD56F00FFD46E00FFD16B00FFC85E00FFC459
          00FFBB5300FFA24600EC742C00A2341300450000000000000000000000003917
          004ACB670EFCDB7D1AFFDE8012FFD97401FFD77100FFD46E00FFD06A00FFCC66
          00FFC45E00FFBC5600FFB14B00FFA84000FE6021008B00000000000000009248
          0BBEE38F35FFE89835FFE79027FFE07E07FFDD7700FFDA7400FFD56F00FFD06A
          00FFCB6500FFC05A00FFB54F00FFAB4500FF752B00B90000000000000000A551
          0CD5F3B25BFFEFA546FFEE9F38FFDE7906FFE37D00FFDF7900FFDA7400FFD46E
          00FFCF6900FFC66000FFBA5400FFAF4900FF7F3000C50000000000000000B655
          0AEBF9C072FFF5B258FFF4AB47FFDB7204FFE98300FFE57F00FFDE7800FFD771
          00FFD26C00FFCA6400FFBF5900FFB24C00FF863300D10000000000000000BB5B
          0FEFFCCD86FFFBBC65FFFFB850FFD56600FFF48700FFED8100FFE67B00FFDD75
          00FFD66F00FFCE6800FFC15B00FFB54F00FF913700DD0000000000000000C15F
          12F4FFD791FFED993EFFCB640CFFA8622DFFC1906AFFBD8151FFBE7535FFBE64
          13FFBF5000FFC04D00FFBE5000FFB74C00FF993A00E90000000000000000C663
          11F9D2721BFFB97139FF8E99A5FF8F959BFFEBF2F9FFE0E8F0FFD9E3ECFFD4E0
          EBFFD0DEEAFFCAC5C5FFC1A08EFFAC714CFF9C3500F50000000000000000BA4E
          00F5ABAFB5FF999DA1FFD2D4D4FFADADADFFC6C6C6FFD6D6D6FFE6E6E6FFF1F1
          F1FFEEEEEFFFEBEDEFFFEBF0F4FFBBC6CCFF4626128C00000000000000003631
          2B6CCED4DAFFA4A4A4FFA2A2A2FFA4A4A4FFA7A7A7FF9F9F9FFFAAAAAAFFA2A2
          A2FFAEAEAEFFEDEDEDFFEFEFEFFFB7B8B9FF3234355C00000000000000001314
          141F727373C7F1F1F1FFC6C6C6FFA1A1A1FFFFFFFFFFB9B9B9FFF8F8F8FFFFFF
          FFFFAAAAAAFFF5F5F5FFF8F8F8FF696969BA0B0B0B1100000000000000000000
          00004040407BFFFFFFFFFFFFFFFFB5B5B5FFFFFFFFFFAEAEAEFFCBCBCBFFEAEA
          EAFF9D9D9DFF919191DEA7A7A7E86F6F6FAE0000000000000000000000000000
          000024242438757575C38F8F8FDC8B8B8BEE585858A86A6A6AB75252529E2A2A
          2A5D3838386E0000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000151A1A00546C720014191900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000404040196C0C6B9F5FFFF4DD7F8FA008DAFAF003F4B4B0002
          0303000000000000000000000000000000000000000000000000000000000000
          000000000000005470709DEDFBFFC6EAEFFFD9F4F6FFF8FFFFFF8DEAFBFF1CB6
          DCE300678282001D202000000000000000000000000000000000000000000000
          0000000A0C0C1EB5DEEBECFFFFFFBCF1F5FF667C87FF648299FF8DC3BCFFF1FE
          FBFFD3FFFFFF5ADBFBFC0098B9B9004755550004060600000000000000000000
          0000004F696A95EFFBFFA6E5ECFFBFF9FBFFA0C3D8FF34B356FF2CB444FF3DA3
          6AFF82BDD2FFC2E3EBFFF8FFFFFFA7EFFBFF00A5D0DE00000000000000000000
          0000039AC6CCD5FFFFFF9DE5EEFF78C4D7FF51B69CFF66FF98FF5AEC86FF2EAD
          46FF76CB92FF9FD9E5FFA0CEDCFF7AE4FCFE0044555500000000000000000017
          1E204BD0EEFEB5FCFBFFBEFFFFFFC9FFFFFFB3FAEDFF4FE17FFF6AFF9DFF55E1
          7CFF29A33CFF85D2A5FFBCF9FFFF00709393000000000000000000000000003D
          546787EEF8FF87DDE7FF5FBACFFF6CC2D6FF8EDCE9FF95F3D9FF53EE83FF68FF
          9BFF50DC77FF239E37FF0C9E9AE900080A0A000000000000000000000000005E
          82A2B2FFFFFFB1FFFFFFB6FFFFFFA8FCFEFF8DE1ECFF6FC6D8FF4EC8A9FF59F6
          88FF64FF97FF42DA69FF287E36F7181916340000000000000000000000000987
          ADD298F7F8FF56BAD1FF72D3E1FF8DE9EFFFAAFFFFFFBCFFFFFFBCFFFFFF67E8
          A8FF55FC88FF9AC1A4FFCDBBB6FF585878E600011118000000000000000028AF
          D3F5B8FFFFFFA3FFFFFF8BEFF5FF72D7E4FF5BBDD3FF57B7D0FF70CCDDFF90E7
          ECFF95D1B5FFFFFFFFFF7892F5FF203DDCFF000279C20000000000000000028A
          B7CD2FB9DEF954D1E9FF7DECF7FFA6FFFFFFB4FFFFFFADFFFFFF96F2F4FF86DE
          E8FF69D9ECFF6B7EC6E54277FFFF2D4AD8FF010281D100000000000000000000
          0000000607080023303600445E6900628A9C0891BCCF2DB7DBFA55D4E9FF8DF6
          FBFF2DBDDEF80208262C1829A9DD070C83C90000152500000000000000000000
          0000000000000000000000000000000000000000000000050808001F2B37003C
          536A00526E7C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008E6060E8B18384FBAC7F7EF3956E7BEB9B6E6DE3906565DA885E
          5ED2825A5ACA7F5656C2704E4EA7000000000000000000000000000000000000
          000000000000A27070F6FFF0EBFFFFFFF7FF9EAEFEFFFFFEFBFFFFF8FAFFFFF7
          F9FFFFEDEFFFFCE7E8FFAD8181F6000000000000000000000000000000000000
          000000000000A37070F6FBE8E0FEFFF5E2FF9EA7E9FFFFEDD6FFFFE7D5FFFFE5
          D3FFFFE3D0FFFFE8D3FFB1837FF6000000000000000000000000000000000000
          000000000000A77374F6FBE7D9FEFFF4DCFFA2A9E8FFFFEFD8FFFFE8D7FFFFE6
          D3FFFFE4D1FFFFE7D4FFB18580F6000000000000000000000000000000000000
          000000000000A87575F6FBEDEAFEFFFBF2FFA3B1F6FFFFF7EEFFFFF1ECFFFFEF
          ECFFFFEEEBFFFFF2F0FFB28A89F6000000000000000000000000000000000000
          000000000000AC7878F6FBEDE5FEFFF9EAFFA6B2F1FFFFF3E4FFFFEDE2FFFFEB
          DFFFFFE9DDFFFFEDDFFFB48A85F6000000000000000000000000000000000000
          000000000000AE7B7BF6FCEADCFEFFF5DFFFA8B3EAFFFFF1DBFFFFEBDAFFFFE9
          D6FFFFE7D5FFFFEBD7FFB48987F5000000000000000000000000000000000000
          000000000000B17C7CF6FDF2EDFDFFFDF2FFACBAF3FFFFF7E8FFFFEFE4FFFFED
          DFFFFFEADBFFFFECDAFFB58985F5000000000000000000000000000000000000
          000000000000B37F7FF6FCF0E8FDFFFEF0FFAEBDF6FFFFFBF1FFFFF6F3FFFFF7
          F3FFFFF6F5FFFFFCFDFFB58D8EF5000000000000000000000000000000000000
          000000000000B68283F6FDEEDDFDFFF9E2FFB4BEEDFFFFF6DEFFFFF0DBFFFFEA
          D7FFFFE8D5FFFFEDD7FFB48984F5000000000000000000000000000000000000
          000000000000B98585F6F1EBECFDECEEECFF99A5C8FFC0C1C0FFD3D4D5FFAEAD
          AEFF7D7C7EFFAFB0B1FF816363F3000000000000000000000000000000000000
          000000000000C18C8CF6DCD4D4FC7E7D7CFF5D5E6EFFB8AAA8FF8E8585FF665E
          5EFF9E8787FF9F8383F5524545E2000000000000000000000000000000000000
          000000000000674D4DA8896565BE4D4848E45A4B4BC6493D3DA4403B3BBF4846
          46E2393838AD373838A0292A2A87000000000000000000000000000000000000
          0000000000000B0B0B1B484A4ABA424242B63737379F3A3A3A9D2D2D2D742223
          23581A1A1A481717173D02020205000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A27A66CCC9967EFFC5927CFFC18E7AFFBD8A78FFB98676FFB58274FFB17E
          72FFAD7A70FFA9766EFFA5726CFF845B56CC000000000000000000000000A57C
          66CCEEDACEFFF9F9F9FFF9F9F9FFFAFAFAFFFCFCFCFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBC7C4FF845B56CC0000000000000000D29F
          82FFFFFFFFFF999087FF99948EFF999794FF999999FF999999FFFFFFFFFF9999
          99FF999999FF999999FF999999FFFFFFFFFFA5726CFF0000000000000000D7A4
          84FFFFFFFFFFFFF0E1FFFFF6ECFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9766EFF0000000000000000DCA9
          87FFFFFFFFFF999087FF99948EFF999794FF999999FF999999FF999999FF9999
          99FF999999FF999999FF999999FFFFFFFFFFAE7B70FF0000000000000000E1AE
          8AFFFFFFFFFFFFEEDDFFFFF4E8FFFFF9F3FFFFFDFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB38073FF0000000000000000E5B2
          8CFFFFFFFFFF998E83FF999189FF99948EFF999794FF999999FF999999FF9999
          99FFFFFFFFFF999999FF999999FFFFFFFFFFB78475FF0000000000000000E9B6
          8EFFFFFFFFFFFFEBD6FFFFEEDDFFFFF4E8FFFFF7F0FFFFFBF7FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFBA8777FF0000000000000000EDBA
          90FFFFFFFFFF998B7CFF998D80FF999087FFFFF4E8FF999490FF999794FF9998
          97FF999999FF999999FF999999FFFCFCFCFFBE8B79FF0000000000000000F1BE
          92FFFFFFFFFFFFE4C7FFFFE9D2FFFFEDDAFFFFF0E1FFFFF4E8FFFFF6ECFFFFF9
          F3FFFFFBF7FFFFFBF7FFFFFBF7FFFAFAFAFFC28F7BFF0000000000000000F5C2
          94FFFFFFFFFF998673FF99897AFF998C7EFF998D80FFFFEEDDFF999189FF9992
          8BFF99948EFF99948EFF99948EFFF9F9F9FFC6937DFF0000000000000000F9C6
          96FFFFFFFFFFFFDCB8FFFFE0C0FFFFE4C7FFFFE7CEFFFFEBD6FFFFEDDAFFFFEE
          DDFFFFF0E1FFFFF0E1FFFFF0E1FFF9F9F9FFC9967EFF0000000000000000C29A
          76CCFDE8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEDACEFF885F58CC00000000000000000000
          0000BE9673CCF9C696FFF5C294FFF1BE92FFEDBA90FFE9B68EFFE5B28CFFE1AE
          8AFFDDAA88FFD9A686FFD5A284FF885F58CC0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A27A66CCC9967EFFC5927CFFC18E7AFFBD8A78FFB98676FFB58274FFB17E
          72FFAD7A70FFA9766EFFA5726CFF845B56CC000000000000000000000000A57C
          66CCEEDACEFFF9F9F9FFF9F9F9FFFAFAFAFFFCFCFCFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBC7C4FF845B56CC0000000000000000D29F
          82FFFFFFFFFFFFF0E1FF99948EFF999794FF999999FF999999FF999999FF9999
          99FF999999FF999999FFFFFFFFFFFFFFFFFFA5726CFF0000000000000000D7A4
          84FFFFFFFFFFFFF0E1FFFFF6ECFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9766EFF0000000000000000DCA9
          87FFFFFFFFFFFFF0E1FFFFF6ECFFFFFBF7FF999999FF999999FF999999FF9999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE7B70FF0000000000000000E1AE
          8AFFFFFFFFFFFFEEDDFFFFF4E8FFFFF9F3FFFFFDFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB38073FF0000000000000000E5B2
          8CFFFFFFFFFFFFEDDAFFFFF2E5FF99948EFF999794FF999999FF999999FF9999
          99FF999999FFFFFFFFFFFFFFFFFFFFFFFFFFB78475FF0000000000000000E9B6
          8EFFFFFFFFFFFFEBD6FFFFEEDDFFFFF4E8FFFFF7F0FFFFFBF7FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFBA8777FF0000000000000000EDBA
          90FFFFFFFFFFFFE7CEFFFFEBD6FF999087FF99928BFF999490FF999794FF9998
          97FF999999FFFFFFFFFFFFFFFFFFFCFCFCFFBE8B79FF0000000000000000F1BE
          92FFFFFFFFFFFFE4C7FFFFE9D2FFFFEDDAFFFFF0E1FFFFF4E8FFFFF6ECFFFFF9
          F3FFFFFBF7FFFFFBF7FFFFFBF7FFFAFAFAFFC28F7BFF0000000000000000F5C2
          94FFFFFFFFFFFFE0C0FF99897AFF998C7EFF998D80FF998F85FF999189FF9992
          8BFF99948EFF99948EFFFFF6ECFFF9F9F9FFC6937DFF0000000000000000F9C6
          96FFFFFFFFFFFFDCB8FFFFE0C0FFFFE4C7FFFFE7CEFFFFEBD6FFFFEDDAFFFFEE
          DDFFFFF0E1FFFFF0E1FFFFF0E1FFF9F9F9FFC9967EFF0000000000000000C29A
          76CCFDE8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEDACEFF885F58CC00000000000000000000
          0000BE9673CCF9C696FFF5C294FFF1BE92FFEDBA90FFE9B68EFFE5B28CFFE1AE
          8AFFDDAA88FFD9A686FFD5A284FF885F58CC0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A27A66CCC9967EFFC5927CFFC18E7AFFBD8A78FFB98676FFB58274FFB17E
          72FFAD7A70FFA9766EFFA5726CFF845B56CC000000000000000000000000A57C
          66CCEEDACEFFF9F9F9FFF9F9F9FFFAFAFAFFFCFCFCFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBC7C4FF845B56CC0000000000000000D29F
          82FFFFFFFFFFFFF0E1FF99948EFF999794FF999999FF999999FF999999FF9999
          99FF999999FF999999FFFFFFFFFFFFFFFFFFA5726CFF0000000000000000D7A4
          84FFFFFFFFFFFFF0E1FFFFF6ECFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9766EFF0000000000000000DCA9
          87FFFFFFFFFFFFF0E1FF99948EFF999794FF999999FF999999FF999999FF9999
          99FF999999FF999999FFFFFFFFFFFFFFFFFFAE7B70FF0000000000000000E1AE
          8AFFFFFFFFFFFFEEDDFFFFF4E8FFFFF9F3FFFFFDFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB38073FF0000000000000000E5B2
          8CFFFFFFFFFFFFEDDAFF999189FF99948EFF999794FF999999FF999999FF9999
          99FF999999FF999999FFFFFFFFFFFFFFFFFFB78475FF0000000000000000E9B6
          8EFFFFFFFFFFFFEBD6FFFFEEDDFFFFF4E8FFFFF7F0FFFFFBF7FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFBA8777FF0000000000000000EDBA
          90FFFFFFFFFFFFE7CEFF998D80FF999087FF99928BFF999490FF999794FF9998
          97FF999999FF999999FFFFFFFFFFFCFCFCFFBE8B79FF0000000000000000F1BE
          92FFFFFFFFFFFFE4C7FFFFE9D2FFFFEDDAFFFFF0E1FFFFF4E8FFFFF6ECFFFFF9
          F3FFFFFBF7FFFFFBF7FFFFFBF7FFFAFAFAFFC28F7BFF0000000000000000F5C2
          94FFFFFFFFFFFFE0C0FF99897AFF998C7EFF998D80FF998F85FF999189FF9992
          8BFF99948EFF99948EFFFFF6ECFFF9F9F9FFC6937DFF0000000000000000F9C6
          96FFFFFFFFFFFFDCB8FFFFE0C0FFFFE4C7FFFFE7CEFFFFEBD6FFFFEDDAFFFFEE
          DDFFFFF0E1FFFFF0E1FFFFF0E1FFF9F9F9FFC9967EFF0000000000000000C29A
          76CCFDE8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEDACEFF885F58CC00000000000000000000
          0000BE9673CCF9C696FFF5C294FFF1BE92FFEDBA90FFE9B68EFFE5B28CFFE1AE
          8AFFDDAA88FFD9A686FFD5A284FF885F58CC0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A27A66CCC9967EFFC5927CFFC18E7AFFBD8A78FFB98676FFB58274FFB17E
          72FFAD7A70FFA9766EFFA5726CFF845B56CC000000000000000000000000A57C
          66CCEEDACEFFF9F9F9FFF9F9F9FFFAFAFAFFFCFCFCFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBC7C4FF845B56CC0000000000000000D29F
          82FFFFFFFFFFFFF0E1FF99948EFF999794FF999999FF999999FF999999FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5726CFF0000000000000000D7A4
          84FFFFFFFFFFFFF0E1FFFFF6ECFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9766EFF0000000000000000DCA9
          87FFFFFFFFFFFFF0E1FF99948EFF999794FF999999FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE7B70FF0000000000000000E1AE
          8AFFFFFFFFFFFFEEDDFFFFF4E8FFFFF9F3FFFFFDFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB38073FF0000000000000000E5B2
          8CFFFFFFFFFFFFEDDAFF999189FF99948EFF999794FF999999FF999999FF9999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB78475FF0000000000000000E9B6
          8EFFFFFFFFFFFFEBD6FFFFEEDDFFFFF4E8FFFFF7F0FFFFFBF7FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFBA8777FF0000000000000000EDBA
          90FFFFFFFFFFFFE7CEFF998D80FF999087FF99928BFF999490FF999794FFFFFD
          FBFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFBE8B79FF0000000000000000F1BE
          92FFFFFFFFFFFFE4C7FFFFE9D2FFFFEDDAFFFFF0E1FFFFF4E8FFFFF6ECFFFFF9
          F3FFFFFBF7FFFFFBF7FFFFFBF7FFFAFAFAFFC28F7BFF0000000000000000F5C2
          94FFFFFFFFFFFFE0C0FF99897AFF998C7EFF998D80FF998F85FF999189FF9992
          8BFF99948EFF99948EFFFFF6ECFFF9F9F9FFC6937DFF0000000000000000F9C6
          96FFFFFFFFFFFFDCB8FFFFE0C0FFFFE4C7FFFFE7CEFFFFEBD6FFFFEDDAFFFFEE
          DDFFFFF0E1FFFFF0E1FFFFF0E1FFF9F9F9FFC9967EFF0000000000000000C29A
          76CCFDE8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEDACEFF885F58CC00000000000000000000
          0000BE9673CCF9C696FFF5C294FFF1BE92FFEDBA90FFE9B68EFFE5B28CFFE1AE
          8AFFDDAA88FFD9A686FFD5A284FF885F58CC0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A27A66CCC9967EFFC5927CFFC18E7AFFBD8A78FFB98676FFB58274FFB17E
          72FFAD7A70FFA9766EFFA5726CFF845B56CC000000000000000000000000A57C
          66CCEEDACEFFF9F9F9FFF9F9F9FFFAFAFAFFFCFCFCFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBC7C4FF845B56CC0000000000000000D29F
          82FFFFFFFFFFFFF0E1FFFFF6ECFFFFFBF7FFFFFFFFFF999999FF999999FF9999
          99FF999999FF999999FFFFFFFFFFFFFFFFFFA5726CFF0000000000000000D7A4
          84FFFFFFFFFFFFF0E1FFFFF6ECFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9766EFF0000000000000000DCA9
          87FFFFFFFFFFFFF0E1FFFFF6ECFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFF9999
          99FF999999FF999999FFFFFFFFFFFFFFFFFFAE7B70FF0000000000000000E1AE
          8AFFFFFFFFFFFFEEDDFFFFF4E8FFFFF9F3FFFFFDFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB38073FF0000000000000000E5B2
          8CFFFFFFFFFFFFEDDAFFFFF2E5FFFFF6ECFF999794FF999999FF999999FF9999
          99FF999999FF999999FFFFFFFFFFFFFFFFFFB78475FF0000000000000000E9B6
          8EFFFFFFFFFFFFEBD6FFFFEEDDFFFFF4E8FFFFF7F0FFFFFBF7FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFBA8777FF0000000000000000EDBA
          90FFFFFFFFFFFFE7CEFFFFEBD6FFFFF0E1FFFFF4E8FF999490FF999794FF9998
          97FF999999FF999999FFFFFFFFFFFCFCFCFFBE8B79FF0000000000000000F1BE
          92FFFFFFFFFFFFE4C7FFFFE9D2FFFFEDDAFFFFF0E1FFFFF4E8FFFFF6ECFFFFF9
          F3FFFFFBF7FFFFFBF7FFFFFBF7FFFAFAFAFFC28F7BFF0000000000000000F5C2
          94FFFFFFFFFFFFE0C0FF99897AFF998C7EFF998D80FF998F85FF999189FF9992
          8BFF99948EFF99948EFFFFF6ECFFF9F9F9FFC6937DFF0000000000000000F9C6
          96FFFFFFFFFFFFDCB8FFFFE0C0FFFFE4C7FFFFE7CEFFFFEBD6FFFFEDDAFFFFEE
          DDFFFFF0E1FFFFF0E1FFFFF0E1FFF9F9F9FFC9967EFF0000000000000000C29A
          76CCFDE8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEDACEFF885F58CC00000000000000000000
          0000BE9673CCF9C696FFF5C294FFF1BE92FFEDBA90FFE9B68EFFE5B28CFFE1AE
          8AFFDDAA88FFD9A686FFD5A284FF885F58CC0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A27A66CCC9967EFFC5927CFFC18E7AFFBD8A78FFB98676FFB58274FFB17E
          72FFAD7A70FFA9766EFFA5726CFF845B56CC000000000000000000000000A57C
          66CCEEDACEFFF9F9F9FFF9F9F9FFFAFAFAFFFCFCFCFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBC7C4FF845B56CC0000000000000000D29F
          82FFFFFFFFFFFFF0E1FF99948EFF999794FF999999FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5726CFF0000000000000000D7A4
          84FFFFFFFFFFFFF0E1FFFFF6ECFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9766EFF0000000000000000DCA9
          87FFFFFFFFFFFFF0E1FFFFF6ECFF999794FF999999FF999999FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE7B70FF0000000000000000E1AE
          8AFFFFFFFFFFFFEEDDFFFFF4E8FFFFF9F3FFFFFDFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB38073FF0000000000000000E5B2
          8CFFFFFFFFFFFFEDDAFFFFF2E5FFFFF6ECFF999794FF999999FF999999FF9999
          99FF999999FF999999FF999999FFFFFFFFFFB78475FF0000000000000000E9B6
          8EFFFFFFFFFFFFEBD6FFFFEEDDFFFFF4E8FFFFF7F0FFFFFBF7FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFBA8777FF0000000000000000EDBA
          90FFFFFFFFFFFFE7CEFFFFEBD6FF999087FF99928BFF999490FFFFFBF7FFFFFD
          FBFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFBE8B79FF0000000000000000F1BE
          92FFFFFFFFFFFFE4C7FFFFE9D2FFFFEDDAFFFFF0E1FFFFF4E8FFFFF6ECFFFFF9
          F3FFFFFBF7FFFFFBF7FFFFFBF7FFFAFAFAFFC28F7BFF0000000000000000F5C2
          94FFFFFFFFFFFFE0C0FF99897AFF998C7EFF998D80FF998F85FF999189FF9992
          8BFF99948EFFFFF6ECFFFFF6ECFFF9F9F9FFC6937DFF0000000000000000F9C6
          96FFFFFFFFFFFFDCB8FFFFE0C0FFFFE4C7FFFFE7CEFFFFEBD6FFFFEDDAFFFFEE
          DDFFFFF0E1FFFFF0E1FFFFF0E1FFF9F9F9FFC9967EFF0000000000000000C29A
          76CCFDE8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEDACEFF885F58CC00000000000000000000
          0000BE9673CCF9C696FFF5C294FFF1BE92FFEDBA90FFE9B68EFFE5B28CFFE1AE
          8AFFDDAA88FFD9A686FFD5A284FF885F58CC0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A27A66CCC9967EFFC5927CFFC18E7AFFBD8A78FFB98676FFB58274FFB17E
          72FFAD7A70FFA9766EFFA5726CFF845B56CC000000000000000000000000A57C
          66CCEEDACEFFF9F9F9FFF9F9F9FFFAFAFAFFFCFCFCFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBC7C4FF845B56CC0000000000000000D29F
          82FFFFFFFFFFFFF0E1FF0099CCFF0099CCFF0099CCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5726CFF0000000000000000D7A4
          84FFFFFFFFFFFFF0E1FFFFF6ECFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9766EFF0000000000000000DCA9
          87FFFFFFFFFFFFF0E1FFFFF6ECFF0012BFFF0012BFFF0012BFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE7B70FF0000000000000000E1AE
          8AFFFFFFFFFFFFEEDDFFFFF4E8FFFFF9F3FFFFFDFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB38073FF0000000000000000E5B2
          8CFFFFFFFFFFFFEDDAFFFFF2E5FFFFF6ECFFCC6600FFCC6600FFCC6600FFCC66
          00FFCC6600FFCC6600FFCC6600FFFFFFFFFFB78475FF0000000000000000E9B6
          8EFFFFFFFFFFFFEBD6FFFFEEDDFFFFF4E8FFFFF7F0FFFFFBF7FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFBA8777FF0000000000000000EDBA
          90FFFFFFFFFFFFE7CEFFFFEBD6FF0012BFFF0012BFFF0012BFFFFFFBF7FFFFFD
          FBFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFBE8B79FF0000000000000000F1BE
          92FFFFFFFFFFFFE4C7FFFFE9D2FFFFEDDAFFFFF0E1FFFFF4E8FFFFF6ECFFFFF9
          F3FFFFFBF7FFFFFBF7FFFFFBF7FFFAFAFAFFC28F7BFF0000000000000000F5C2
          94FFFFFFFFFFFFE0C0FF007E00FF007E00FF007E00FF007E00FF007E00FF007E
          00FF007E00FFFFF6ECFFFFF6ECFFF9F9F9FFC6937DFF0000000000000000F9C6
          96FFFFFFFFFFFFDCB8FFFFE0C0FFFFE4C7FFFFE7CEFFFFEBD6FFFFEDDAFFFFEE
          DDFFFFF0E1FFFFF0E1FFFFF0E1FFF9F9F9FFC9967EFF0000000000000000C29A
          76CCFDE8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEDACEFF885F58CC00000000000000000000
          0000BE9673CCF9C696FFF5C294FFF1BE92FFEDBA90FFE9B68EFFE5B28CFFE1AE
          8AFFDDAA88FFD9A686FFD5A284FF885F58CC0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A27A66CCC9967EFFC5927CFFC18E7AFFBD8A78FFB98676FFB58274FFB17E
          72FFAD7A70FFA9766EFFA5726CFF845B56CC000000000000000000000000A57C
          66CCEEDACEFFF9F9F9FFF9F9F9FFFAFAFAFFFCFCFCFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBC7C4FF845B56CC0000000000000000D29F
          82FFFFFFFFFF7B7B7BFF7D7D7DFF7F7F7FFF828282FF848484FFFDFDFDFF8888
          88FF8B8B8BFF8C8C8CFF8F8F8FFFFFFFFFFFA5726CFF0000000000000000D7A4
          84FFFFFFFFFFF3F3F3FFF4F4F4FFF5F5F5FFF6F6F6FFF8F8F8FFF9F9F9FF8787
          87FF898989FF8C8C8CFF8C8C8CFFFFFFFFFFA9766EFF0000000000000000DCA9
          87FFFFFFFFFF797979FF7B7B7BFF7E7E7EFF808080FF828282FFF7F7F7FF8686
          86FF878787FF898989FF8B8B8BFFFFFFFFFFAE7B70FF0000000000000000E1AE
          8AFFFFFFFFFFECECECFFEDEDEDFFEEEEEEFFF1F1F1FFF3F3F3FFF5F5F5FFF7F7
          F7FFF9F9F9FFFCFCFCFFFFFFFFFFFFFFFFFFB38073FF0000000000000000E5B2
          8CFFFFFFFFFF777777FF797979FF7B7B7BFF7D7D7DFF7F7F7FFFF2F2F2FF8383
          83FF848484FF858585FF878787FFFFFFFFFFB78475FF0000000000000000E9B6
          8EFFFFFFFFFF767676FF787878FF7A7A7AFF7B7B7BFF7E7E7EFFEFEFEFFFF3F3
          F3FFF5F5F5FFF8F8F8FFFAFAFAFFFEFEFEFFBA8777FF0000000000000000EDBA
          90FFFFFFFFFF747474FF777777FF787878FF7A7A7AFF7B7B7BFFEEEEEEFF7F7F
          7FFF808080FF818181FF828282FFFCFCFCFFBE8B79FF0000000000000000F1BE
          92FFFFFFFFFFE0E0E0FFE3E3E3FFE5E5E5FFE7E7E7FFE9E9E9FFECECECFFEEEE
          EEFFF2F2F2FFF5F5F5FFF8F8F8FFFAFAFAFFC28F7BFF0000000000000000F5C2
          94FFFFFFFFFF727272FF747474FF757575FF777777FF787878FF797979FF7B7B
          7BFF7B7B7BFF7C7C7CFF7D7D7DFFF9F9F9FFC6937DFF0000000000000000F9C6
          96FFFFFFFFFF707070FF727272FF747474FF747474FF767676FF777777FF7878
          78FF797979FF7B7B7BFF7B7B7BFFF9F9F9FFC9967EFF0000000000000000C29A
          76CCFDE8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEDACEFF885F58CC00000000000000000000
          0000BE9673CCF9C696FFF5C294FFF1BE92FFEDBA90FFE9B68EFFE5B28CFFE1AE
          8AFFDDAA88FFD9A686FFD5A284FF885F58CC0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A27A66CCC9967EFFC5927CFFC18E7AFFBD8A78FFB98676FFB58274FFB17E
          72FFAD7A70FFA9766EFFA5726CFF845B56CC000000000000000000000000A57C
          66CCEEDACEFFF9F9F9FFF9F9F9FFFAFAFAFFFCFCFCFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBC7C4FF845B56CC0000000000000000D29F
          82FFFFFFFFFF7B7B7BFF7D7D7DFF7F7F7FFF828282FF848484FFFDFDFDFF0033
          DFFF0033E3FF0033E7FF0033EBFFFFFFFFFFA5726CFF0000000000000000D7A4
          84FFFFFFFFFFF3F3F3FFF4F4F4FFF5F5F5FFF6F6F6FFF8F8F8FFF9F9F9FF0033
          DDFF898989FF8C8C8CFF0033E7FFFFFFFFFFA9766EFF0000000000000000DCA9
          87FFFFFFFFFF797979FF7B7B7BFF7E7E7EFF808080FF828282FFF7F7F7FF0033
          DAFF0033DDFF0033E0FF0033E3FFFFFFFFFFAE7B70FF0000000000000000E1AE
          8AFFFFFFFFFFECECECFFEDEDEDFFEEEEEEFFF1F1F1FFF3F3F3FFF5F5F5FFF7F7
          F7FFF9F9F9FFFCFCFCFFFFFFFFFFFFFFFFFFB38073FF0000000000000000E5B2
          8CFFFFFFFFFF0033BDFF0033C0FF0033C5FF0033C8FF0033CDFFF2F2F2FF8383
          83FF848484FF858585FF878787FFFFFFFFFFB78475FF0000000000000000E9B6
          8EFFFFFFFFFF0033BAFF787878FF7A7A7AFF7B7B7BFF0033CAFFEFEFEFFFF3F3
          F3FFF5F5F5FFF8F8F8FFFAFAFAFFFEFEFEFFBA8777FF0000000000000000EDBA
          90FFFFFFFFFF0033B7FF0033BCFF0033BFFF0033C2FF0033C5FFEEEEEEFF7F7F
          7FFF808080FF818181FF828282FFFCFCFCFFBE8B79FF0000000000000000F1BE
          92FFFFFFFFFFE0E0E0FFE3E3E3FFE5E5E5FFE7E7E7FFE9E9E9FFECECECFFEEEE
          EEFFF2F2F2FFF5F5F5FFF8F8F8FFFAFAFAFFC28F7BFF0000000000000000F5C2
          94FFFFFFFFFF727272FF747474FF757575FF777777FF787878FF797979FF7B7B
          7BFF7B7B7BFF7C7C7CFF7D7D7DFFF9F9F9FFC6937DFF0000000000000000F9C6
          96FFFFFFFFFF707070FF727272FF747474FF747474FF767676FF777777FF7878
          78FF797979FF7B7B7BFF7B7B7BFFF9F9F9FFC9967EFF0000000000000000C29A
          76CCFDE8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEDACEFF885F58CC00000000000000000000
          0000BE9673CCF9C696FFF5C294FFF1BE92FFEDBA90FFE9B68EFFE5B28CFFE1AE
          8AFFDDAA88FFD9A686FFD5A284FF885F58CC0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
