inherited OpeCorrigePacienteDuplicadoF: TOpeCorrigePacienteDuplicadoF
  Caption = 'Corre'#231#227'o de Pacientes Duplicados'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlBotao: TPanel
    object BtnIncluir: TcxButton
      Left = 4
      Top = 4
      Width = 200
      Height = 25
      Action = AcaoCorrigir
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
      Left = 210
      Top = 4
      Width = 200
      Height = 25
      Action = AcaoCorrigirTodos
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      TabOrder = 2
      Visible = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
  end
  inherited PnlChaves: TPanel
    Visible = False
  end
  inherited PnlTelaCadastro: TPanel
    inherited PcTelaCadastro: TcxPageControl
      ActivePage = tsListaPacientesDuplicados
      ClientRectTop = 26
      object tsListaPacientesDuplicados: TcxTabSheet
        Caption = 'Listagem de Pacientes Duplicados para Corre'#231#227'o'
        ImageIndex = 1
        object GridAgenda: TcxGrid
          Left = 3
          Top = 3
          Width = 938
          Height = 432
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object GridAgendaDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = DsDuplicado
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object GridAgendaDBTableView1COUNT: TcxGridDBColumn
              Caption = 'Quantidade Agrupado'
              DataBinding.FieldName = 'COUNT'
              Width = 151
            end
            object GridAgendaDBTableView1NOME: TcxGridDBColumn
              Caption = 'Paciente Nome'
              DataBinding.FieldName = 'NOME'
              Width = 750
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
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
  end
  inherited AcaoTela: TActionList
    object AcaoCorrigir: TAction
      Category = 'AcaoTela'
      Caption = 'Corrigir Selecionado'
      ImageIndex = 9
      OnExecute = AcaoCorrigirExecute
    end
    object AcaoCorrigirTodos: TAction
      Category = 'AcaoTela'
      Caption = 'Corrigir Todos da Lista'
      ImageIndex = 10
      OnExecute = AcaoCorrigirTodosExecute
    end
  end
  object DsDuplicado: TDataSource
    DataSet = CdsDuplicado
    Left = 640
    Top = 232
  end
  object CdsDuplicado: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select count(paciente.idpaciente),'#13#10'       paciente.nome'#13#10'  from' +
      ' ( select idpaciente,'#13#10'                trim(nome) as nome'#13#10'     ' +
      '      from paciente'#13#10'          where paciente.IDSITUACAOREGISTRO' +
      ' = 1'#13#10'        ) paciente'#13#10'where trim(paciente.nome) <> '#39#39#13#10' grou' +
      'p by paciente.nome'#13#10'having count(paciente.idpaciente) > 1'#13#10'order' +
      ' by paciente.nome'
    Params = <>
    ProviderName = 'dmDspConsulta'
    RemoteServer = DmConexaoF.LocalConnection
    Left = 640
    Top = 208
    object CdsDuplicadoCOUNT: TIntegerField
      FieldName = 'COUNT'
      Required = True
    end
    object CdsDuplicadoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
  end
  object SQLConnection: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database=D:\Projetos\Delphi\phMedNew\Base.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    VendorLib = 'fbclient.dll'
    Left = 644
    Top = 140
  end
end
