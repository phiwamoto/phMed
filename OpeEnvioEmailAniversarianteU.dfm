inherited OpeEnvioEmailAniversarianteF: TOpeEnvioEmailAniversarianteF
  Caption = 'Email Aniversariantes'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlBotao: TPanel
    object BtnIncluir: TcxButton
      Left = 5
      Top = 5
      Width = 130
      Height = 25
      Action = AcaoEnviarEmail
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
  inherited PnlChaves: TPanel
    Height = 2
    Visible = False
    ExplicitHeight = 2
  end
  inherited PnlTelaCadastro: TPanel
    Top = 37
    Height = 515
    ExplicitTop = 37
    ExplicitHeight = 515
    inherited PcTelaCadastro: TcxPageControl
      Height = 515
      ActivePage = TsPrincipal
      ExplicitHeight = 515
      ClientRectBottom = 515
      ClientRectTop = 26
      object TsPrincipal: TcxTabSheet
        Caption = 'Principal'
        ImageIndex = 13
        object GridEnviarEmail: TcxGrid
          Left = 0
          Top = 0
          Width = 944
          Height = 112
          Align = alClient
          TabOrder = 0
          object GridEnviarEmailDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = DsAniversariante
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = 'Clique aqui para definir o filtro'
            NewItemRow.InfoText = 'Clique aqui para adicionar uma nova linha'
            OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' registro para ser listado'
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object GridEnviarEmailDBTableView1IDPACIENTE: TcxGridDBColumn
              DataBinding.FieldName = 'IDPACIENTE'
              Options.Editing = False
              Width = 60
            end
            object GridEnviarEmailDBTableView1NOME: TcxGridDBColumn
              DataBinding.FieldName = 'NOME'
              Options.Editing = False
              Width = 230
            end
            object GridEnviarEmailDBTableView1SEXO: TcxGridDBColumn
              DataBinding.FieldName = 'SEXO'
              Options.Editing = False
              Width = 80
            end
            object GridEnviarEmailDBTableView1DATANASCIMENTO: TcxGridDBColumn
              Caption = 'Nascimento'
              DataBinding.FieldName = 'DATANASCIMENTO'
              Options.Editing = False
              Width = 80
            end
            object GridEnviarEmailDBTableView1IDADE: TcxGridDBColumn
              DataBinding.FieldName = 'IDADE'
              Options.Editing = False
              Width = 40
            end
            object GridEnviarEmailDBTableView1CPF: TcxGridDBColumn
              DataBinding.FieldName = 'CPF'
              Options.Editing = False
              Width = 100
            end
            object GridEnviarEmailDBTableView1TELEFONE1: TcxGridDBColumn
              DataBinding.FieldName = 'TELEFONE1'
              Options.Editing = False
              Width = 90
            end
            object GridEnviarEmailDBTableView1CIDADEUF: TcxGridDBColumn
              DataBinding.FieldName = 'CIDADEUF'
              Options.Editing = False
              Width = 150
            end
            object GridEnviarEmailDBTableView1ENVIAREMAIL: TcxGridDBColumn
              DataBinding.FieldName = 'ENVIAREMAIL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
            end
          end
          object GridEnviarEmailLevel1: TcxGridLevel
            GridView = GridEnviarEmailDBTableView1
          end
        end
        object PnlEnviarEmail: TPanel
          Left = 0
          Top = 112
          Width = 944
          Height = 377
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object LblAssunto: TLabel
            Left = 10
            Top = 10
            Width = 45
            Height = 15
            Caption = 'Assunto'
          end
          object LblMensagem: TLabel
            Left = 10
            Top = 150
            Width = 62
            Height = 15
            Caption = 'Mensagem'
          end
          object LblAnexos: TLabel
            Left = 10
            Top = 55
            Width = 40
            Height = 15
            Caption = 'Anexos'
          end
          object EdtAssunto: TcxTextEdit
            Left = 10
            Top = 25
            TabOrder = 0
            Width = 900
          end
          object EdtAnexo01: TcxButtonEdit
            Left = 10
            Top = 70
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = EdtAnexo01PropertiesButtonClick
            Style.Color = clSilver
            StyleDisabled.Color = clSilver
            StyleFocused.Color = clSilver
            StyleHot.Color = clSilver
            TabOrder = 1
            Width = 850
          end
          object EdtAnexo02: TcxButtonEdit
            Left = 10
            Top = 95
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = EdtAnexo02PropertiesButtonClick
            Style.Color = clSilver
            StyleFocused.Color = clSilver
            StyleHot.Color = clSilver
            TabOrder = 3
            Width = 850
          end
          object EdtAnexo03: TcxButtonEdit
            Left = 10
            Top = 120
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = EdtAnexo03PropertiesButtonClick
            Style.Color = clSilver
            StyleFocused.Color = clSilver
            StyleHot.Color = clSilver
            TabOrder = 5
            Width = 850
          end
          object EdtMensagem: TcxMemo
            Left = 10
            Top = 165
            TabOrder = 7
            OnEnter = EdtMensagemEnter
            OnExit = EdtMensagemExit
            Height = 120
            Width = 900
          end
          object BtnExcluirAnexo01: TcxButton
            Left = 861
            Top = 70
            Width = 49
            Height = 23
            Caption = 'Excluir'
            TabOrder = 2
            OnClick = BtnExcluirAnexo01Click
          end
          object BtnExcluirAnexo02: TcxButton
            Left = 861
            Top = 95
            Width = 49
            Height = 23
            Caption = 'Excluir'
            TabOrder = 4
            OnClick = BtnExcluirAnexo02Click
          end
          object BtnExcluirAnexo03: TcxButton
            Left = 861
            Top = 120
            Width = 49
            Height = 23
            Caption = 'Excluir'
            TabOrder = 6
            OnClick = BtnExcluirAnexo03Click
          end
        end
      end
    end
  end
  inherited ImageList32: TcxImageList
    FormatVersion = 1
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
  end
  inherited AcaoTela: TActionList
    object AcaoEnviarEmail: TAction
      Category = 'AcaoTela'
      Caption = 'Enviar Email'
      ImageIndex = 14
      OnExecute = AcaoEnviarEmailExecute
    end
  end
  object DsAniversariante: TDataSource
    DataSet = CdsAniversariante
    Left = 288
    Top = 208
  end
  object CdsAniversariante: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT PAC.*'#13#10'             ,CAST(LEFT( (( (CURRENT_DATE - PAC.DA' +
      'TANASCIMENTO)-1 ) / 365.25), 2) AS INT) AS IDADE'#13#10'            ,(' +
      'CID.CIDADE || '#39' - '#39' || CID.UF) AS CIDADEUF'#13#10'            ,SRE.DES' +
      'CRICAO AS SITUACAOREGISTRO'#13#10'            ,1 AS ENVIAREMAIL'#13#10'  FRO' +
      'M PACIENTE PAC'#13#10'            LEFT JOIN CIDADE CID ON (CID.IDCIDAD' +
      'E = PAC.IDCIDADE)'#13#10'            JOIN SITUACAOREGISTRO SRE ON (SRE' +
      '.IDSITUACAOREGISTRO = PAC.IDSITUACAOREGISTRO)'#13#10' WHERE 1 = 1'#13#10'   ' +
      'AND EXTRACT(MONTH FROM PAC.DATANASCIMENTO) = EXTRACT(MONTH FROM ' +
      'CURRENT_DATE)'#13#10'   AND EXTRACT(DAY FROM PAC.DATANASCIMENTO) = EXT' +
      'RACT(DAY FROM CURRENT_DATE)'#13#10'   AND TRIM(PAC.EMAIL) <> '#39#39
    Params = <>
    ProviderName = 'dmDspConsulta'
    RemoteServer = DmConexaoF.LocalConnection
    Left = 288
    Top = 192
    object CdsAniversarianteIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsAniversarianteIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'IDCIDADE'
    end
    object CdsAniversarianteIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsAniversarianteDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
    end
    object CdsAniversarianteDATANASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'DATANASCIMENTO'
    end
    object CdsAniversarianteNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
    end
    object CdsAniversarianteESTADOCIVIL: TStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'ESTADOCIVIL'
      Required = True
      Size = 50
    end
    object CdsAniversarianteSEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      Required = True
      Size = 16
    end
    object CdsAniversarianteOBSERVACAO: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      Size = 26000
    end
    object CdsAniversarianteNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object CdsAniversarianteENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 100
    end
    object CdsAniversarianteBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 100
    end
    object CdsAniversarianteEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 100
    end
    object CdsAniversarianteCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object CdsAniversarianteRG: TStringField
      FieldName = 'RG'
    end
    object CdsAniversarianteCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsAniversarianteTELEFONE1: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'TELEFONE1'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsAniversarianteTELEFONE2: TStringField
      DisplayLabel = 'Teleone 02'
      FieldName = 'TELEFONE2'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsAniversarianteCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999\-999;0;_'
      Size = 10
    end
    object CdsAniversarianteIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'IDADE'
      ProviderFlags = []
    end
    object CdsAniversarianteCIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'CIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object CdsAniversarianteSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
    object CdsAniversarianteENVIAREMAIL: TIntegerField
      DisplayLabel = 'Enviar Email'
      FieldName = 'ENVIAREMAIL'
      ProviderFlags = []
    end
  end
end
