inherited ConsAgendamentoDoPacienteF: TConsAgendamentoDoPacienteF
  Caption = 'Consulta de Agendamentos do Paciente'
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlGeral: TPanel
    Top = 155
    Height = 387
    ExplicitTop = 155
    ExplicitHeight = 387
    inherited BarraDeStatus: TStatusBar
      Top = 368
      ExplicitTop = 368
    end
    object GridConsulta: TcxGrid
      Left = 0
      Top = 0
      Width = 938
      Height = 368
      Align = alClient
      TabOrder = 1
      object GridConsultaDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        FilterBox.CustomizeDialog = False
        DataController.DataSource = DsConsulta
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Clique aqui para definir o filtro'
        NewItemRow.InfoText = 'Clique aqui para adicionar uma nova linha'
        OptionsData.Editing = False
        OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' registro para ser listado'
        OptionsView.Indicator = True
        object GridConsultaDBTableView1DATAAGENDA: TcxGridDBColumn
          DataBinding.FieldName = 'DATAAGENDA'
          Width = 100
        end
        object GridConsultaDBTableView1HORAAGENDA: TcxGridDBColumn
          DataBinding.FieldName = 'HORAAGENDA'
          Width = 100
        end
        object GridConsultaDBTableView1STATUS: TcxGridDBColumn
          DataBinding.FieldName = 'STATUS'
          Width = 190
        end
        object GridConsultaDBTableView1MOTIVO: TcxGridDBColumn
          DataBinding.FieldName = 'MOTIVO'
          Width = 190
        end
        object GridConsultaDBTableView1NOME: TcxGridDBColumn
          DataBinding.FieldName = 'NOME'
          Width = 320
        end
      end
      object GridConsultaLevel1: TcxGridLevel
        GridView = GridConsultaDBTableView1
      end
    end
  end
  inherited PnlBotao: TPanel
    object BtnPesquisaPaciente: TcxButton
      Left = 8
      Top = 5
      Width = 150
      Height = 25
      Caption = 'Pesquisa Paciente'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000011001F006700C7027003D8001C0035000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000150021027F03DF16AF2BFF14B02AFF048206EF002000370000
        0000000000000000000000000000000000000000000000000000000000000000
        000000180022028503E018B234FF16B12FFF13AD2AFF12B028FF038406F00021
        0038000000000000000000000000000000000000000000000000000000000018
        0123028B04E11DB73DFF1CB639FF19B435FF3DBF53FF18B231FF12B029FF0384
        07F1002100390000000000000000000000000000000000000000000000001693
        21DC20BA45FF1FB942FF1CBB3EFF009A03FF1C8610FF55C767FF18B331FF13B1
        2AFF048507F10022003B0000000000000000000000000000000000000000209E
        31E350CC70FF1DBD44FF00A102FF9E866EFFCF8395FF168B0EFF53C866FF18B2
        32FF13B12BFF048608F10023003C000000000000000000000000000000000028
        063B14A42CE012B227FFA18F75FFCE8E97FFCB9195FFD08B97FF168C0DFF52C7
        65FF18B434FF14B22CFF048808F20024003D0000000000000000000000000B06
        0811854755CECE8894FFD2969CFFD39FA0FFAF7F80FFDCB1B5FFD995A0FF178C
        0EFF51C765FF1AB335FF14B32DFF04890AF3001E003700000000000000003F2A
        2A6BCA9F9FFFD09C9CFFD9A6A6FFA67474F83622225D7B5151D0E4BABEFFDD98
        A3FF178D0DFF50C665FF1DB638FF14B12EFF0047008D00000000000000001B11
        1126AE8383F2E1BABAFFB07C7CF93622224D000000000D0808147F5556D2E5BC
        C0FFDD98A3FF158F0CFF3AC04EFF009505F7001D003400000000000000000000
        00002217172B6342428C332121420000000000000000000000000E0909158457
        57D4E4BABEFFD3939BFF6E8E4EFF74574BE314090C2100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000F0A
        0A17885B5CD5DDB6B8FFCA8F94FFBD8488FF774E4FCE00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000120C0C188C6060D7D6B3B3FFC09090FF7C5353D000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000110C0C1A845B5BCE8C6262DA2015153500000000000000000000
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
      OnClick = BtnPesquisaPacienteClick
    end
  end
  inherited PnlFiltros: TPanel
    Height = 120
    ExplicitHeight = 120
    object GbInformacoesDoPaciente: TcxGroupBox
      Left = 8
      Top = 5
      Caption = ' Informa'#231#245'es do Paciente '
      ParentFont = False
      Style.BorderColor = clBlack
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.Color = clWhite
      StyleDisabled.TextColor = clBlack
      TabOrder = 0
      Height = 100
      Width = 920
      object LblRG: TLabel
        Left = 280
        Top = 20
        Width = 15
        Height = 14
        Caption = 'RG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object LblCPF: TLabel
        Left = 390
        Top = 20
        Width = 19
        Height = 14
        Caption = 'CPF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object LblTelefone1: TLabel
        Left = 500
        Top = 20
        Width = 50
        Height = 14
        Caption = 'Telefone 1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object LblTelefone2: TLabel
        Left = 605
        Top = 20
        Width = 50
        Height = 14
        Caption = 'Telefone 2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object LblPaciente: TLabel
        Left = 10
        Top = 20
        Width = 41
        Height = 14
        Caption = 'Paciente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object LblEmail: TLabel
        Left = 10
        Top = 55
        Width = 24
        Height = 14
        Caption = 'Email'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DbNomePaciente: TLabel
        Left = 10
        Top = 35
        Width = 60
        Height = 16
        Caption = '...............'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DbRG: TLabel
        Left = 280
        Top = 35
        Width = 60
        Height = 16
        Caption = '...............'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DbCPF: TLabel
        Left = 390
        Top = 35
        Width = 60
        Height = 16
        Caption = '...............'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DbTelefone1: TLabel
        Left = 500
        Top = 35
        Width = 60
        Height = 16
        Caption = '...............'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DbTelefone2: TLabel
        Left = 605
        Top = 35
        Width = 60
        Height = 16
        Caption = '...............'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DbEmail: TLabel
        Left = 10
        Top = 70
        Width = 60
        Height = 16
        Caption = '...............'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DbDataNascimento: TLabel
        Left = 710
        Top = 35
        Width = 60
        Height = 16
        Caption = '...............'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object LblDataNascimento: TLabel
        Left = 710
        Top = 20
        Width = 96
        Height = 14
        Caption = 'Data de Nascimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DbIdade: TLabel
        Left = 830
        Top = 35
        Width = 60
        Height = 16
        Caption = '...............'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object LblIdade: TLabel
        Left = 830
        Top = 20
        Width = 26
        Height = 14
        Caption = 'Idade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DbPacienteCidadeUF: TLabel
        Left = 280
        Top = 70
        Width = 60
        Height = 16
        Caption = '...............'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object LblPacienteCidadeUF: TLabel
        Left = 280
        Top = 55
        Width = 50
        Height = 14
        Caption = 'Cidade-UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
  end
  inherited CdsConsulta: TClientDataSet
    CommandText = 
      'SELECT agenda.dataagenda'#13#10'      ,agenda.horaagenda'#13#10'      ,agend' +
      'a.status'#13#10'      ,agenda.motivo'#13#10'      ,doutor.nome'#13#10'  FROM pacie' +
      'nteconsulta'#13#10'       join agenda on (agenda.idagenda = pacienteco' +
      'nsulta.idagenda)'#13#10'       join doutor on (doutor.iddoutor = agend' +
      'a.iddoutor)'#13#10' where 1 = -1'#13#10'order by agenda.dataagenda, agenda.h' +
      'oraagenda'
    object CdsConsultaDATAAGENDA: TDateField
      DisplayLabel = 'Data Agenda'
      FieldName = 'DATAAGENDA'
      Required = True
    end
    object CdsConsultaHORAAGENDA: TTimeField
      DisplayLabel = 'Hora Agenda'
      FieldName = 'HORAAGENDA'
      Required = True
      EditMask = '!90:00;0;_'
    end
    object CdsConsultaSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Required = True
      Size = 80
    end
    object CdsConsultaMOTIVO: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      Required = True
      Size = 80
    end
    object CdsConsultaNOME: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
  end
end
