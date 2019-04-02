inherited ConsAgendamentoDoPacientePesquisaPacienteF: TConsAgendamentoDoPacientePesquisaPacienteF
  Caption = 'ConsAgendamentoDoPacientePesquisaPacienteF'
  ClientHeight = 440
  ClientWidth = 820
  OnShow = FormShow
  ExplicitWidth = 820
  ExplicitHeight = 440
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlBotton: TPanel
    Top = 435
    Width = 820
    ExplicitTop = 435
    ExplicitWidth = 820
  end
  inherited PnlFundo: TPanel
    Width = 810
    Height = 430
    ExplicitWidth = 810
    ExplicitHeight = 430
    inherited PnlCaption: TPanel
      Width = 810
      ExplicitWidth = 810
      inherited LblPesquisa: TLabel
        Width = 137
        Caption = 'Pesquisa de Paciente'
        ExplicitWidth = 137
      end
    end
    inherited PnlBotao: TPanel
      Width = 810
      ExplicitWidth = 810
      object BtnSelecionar: TcxButton
        Left = 598
        Top = 4
        Width = 100
        Height = 25
        Caption = 'Selecionar'
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
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = BtnSelecionarClick
      end
      object BtnCancelar: TcxButton
        Left = 704
        Top = 4
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
    end
    inherited PnlFiltros: TPanel
      Width = 810
      ExplicitWidth = 810
      object LblNome: TLabel
        Left = 10
        Top = 5
        Width = 229
        Height = 15
        Caption = 'Nome <Pressione Enter Para Pesquisar>'
      end
      object EdtNome: TcxTextEdit
        Left = 10
        Top = 20
        TabOrder = 0
        OnKeyPress = EdtNomeKeyPress
        Width = 350
      end
    end
    inherited PnlInformacao: TPanel
      Width = 810
      Height = 325
      ExplicitWidth = 810
      ExplicitHeight = 325
      object GridPesquisa: TcxGrid
        Left = 1
        Top = 1
        Width = 808
        Height = 323
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 0
        ExplicitTop = 105
        ExplicitWidth = 954
        ExplicitHeight = 449
        object GridPesquisaDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DsPesquisa
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Clique aqui para definir o filtro'
          NewItemRow.InfoText = 'Clique aqui para adicionar uma nova linha'
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' registro para ser listado'
          OptionsView.Indicator = True
          object GridPesquisaDBTableView1IDPACIENTE: TcxGridDBColumn
            DataBinding.FieldName = 'IDPACIENTE'
            Width = 55
          end
          object GridPesquisaDBTableView1SEXO: TcxGridDBColumn
            DataBinding.FieldName = 'SEXO'
            Width = 85
          end
          object GridPesquisaDBTableView1CPF: TcxGridDBColumn
            DataBinding.FieldName = 'CPF'
            Width = 100
          end
          object GridPesquisaDBTableView1NOME: TcxGridDBColumn
            DataBinding.FieldName = 'NOME'
            Width = 250
          end
          object GridPesquisaDBTableView1IDADE: TcxGridDBColumn
            DataBinding.FieldName = 'IDADE'
            Width = 40
          end
          object GridPesquisaDBTableView1TELEFONE1: TcxGridDBColumn
            DataBinding.FieldName = 'TELEFONE1'
            Width = 80
          end
          object GridPesquisaDBTableView1CIDADEUF: TcxGridDBColumn
            DataBinding.FieldName = 'CIDADEUF'
            Width = 145
          end
        end
        object GridPesquisaLevel1: TcxGridLevel
          GridView = GridPesquisaDBTableView1
        end
      end
    end
  end
  inherited PnlLeft: TPanel
    Height = 430
    ExplicitHeight = 430
  end
  inherited PnlRight: TPanel
    Left = 815
    Height = 430
    ExplicitLeft = 815
    ExplicitHeight = 430
  end
  inherited pnlTop: TPanel
    Width = 820
    ExplicitWidth = 820
  end
  object DsPesquisa: TDataSource
    DataSet = CdsPesquisa
    Left = 160
    Top = 288
  end
  object CdsPesquisa: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT PAC.*'#13#10'             ,CAST(LEFT( (( (CURRENT_DATE - PAC.DA' +
      'TANASCIMENTO)-1 ) / 365.25), 3) AS INT) AS IDADE'#13#10'            ,(' +
      'CID.CIDADE || '#39' - '#39' || CID.UF) AS CIDADEUF'#13#10'            ,SRE.DES' +
      'CRICAO AS SITUACAOREGISTRO'#13#10'  FROM PACIENTE PAC'#13#10'            LEF' +
      'T JOIN CIDADE CID ON (CID.IDCIDADE = PAC.IDCIDADE)'#13#10'            ' +
      'JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PAC.IDSIT' +
      'UACAOREGISTRO)'#13#10' WHERE 1 = 1'
    Params = <>
    ProviderName = 'dmDspPesquisa'
    RemoteServer = DmConexaoF.LocalConnection
    Left = 160
    Top = 240
    object CdsPesquisaIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPesquisaIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'IDCIDADE'
    end
    object CdsPesquisaIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsPesquisaDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
    end
    object CdsPesquisaDATANASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'DATANASCIMENTO'
    end
    object CdsPesquisaNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
    end
    object CdsPesquisaESTADOCIVIL: TStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'ESTADOCIVIL'
      Required = True
      Size = 50
    end
    object CdsPesquisaSEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      Required = True
      Size = 16
    end
    object CdsPesquisaOBSERVACAO: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      Size = 26000
    end
    object CdsPesquisaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object CdsPesquisaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 100
    end
    object CdsPesquisaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 100
    end
    object CdsPesquisaEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 100
    end
    object CdsPesquisaCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object CdsPesquisaRG: TStringField
      FieldName = 'RG'
    end
    object CdsPesquisaCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsPesquisaTELEFONE1: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'TELEFONE1'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsPesquisaTELEFONE2: TStringField
      DisplayLabel = 'Teleone 02'
      FieldName = 'TELEFONE2'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsPesquisaCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999\-999;0;_'
      Size = 10
    end
    object CdsPesquisaIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'IDADE'
      ProviderFlags = []
    end
    object CdsPesquisaCIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'CIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object CdsPesquisaSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
end
