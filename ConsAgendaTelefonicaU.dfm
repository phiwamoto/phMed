inherited ConsAgendaTelefonicaF: TConsAgendaTelefonicaF
  Caption = 'Agenda Telef'#244'nica'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlGeral: TPanel
    ExplicitWidth = 938
    ExplicitHeight = 457
    inherited BarraDeStatus: TStatusBar
      ExplicitTop = 438
      ExplicitWidth = 938
    end
    object GridConsulta: TcxGrid
      Left = 0
      Top = 0
      Width = 938
      Height = 438
      Align = alClient
      TabOrder = 0
      object GridConsultaDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DsConsulta
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Clique aqui para definir o filtro'
        NewItemRow.InfoText = 'Clique aqui para adicionar uma nova linha'
        OptionsData.Editing = False
        OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' registro para ser listado'
        OptionsView.Indicator = True
        object GridConsultaDBTableView1NOME: TcxGridDBColumn
          DataBinding.FieldName = 'NOME'
          Width = 340
        end
        object GridConsultaDBTableView1TELEFONE01: TcxGridDBColumn
          DataBinding.FieldName = 'TELEFONE01'
          Width = 105
        end
        object GridConsultaDBTableView1TELEFONE02: TcxGridDBColumn
          DataBinding.FieldName = 'TELEFONE02'
          Width = 105
        end
        object GridConsultaDBTableView1TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO'
          Width = 80
        end
        object GridConsultaDBTableView1CIDADEUF: TcxGridDBColumn
          DataBinding.FieldName = 'CIDADEUF'
          Width = 187
        end
        object GridConsultaDBTableView1SITUACAOREGISTRO: TcxGridDBColumn
          DataBinding.FieldName = 'SITUACAOREGISTRO'
          Width = 86
        end
      end
      object GridConsultaLevel1: TcxGridLevel
        GridView = GridConsultaDBTableView1
      end
    end
  end
  inherited PnlBotao: TPanel
    ExplicitWidth = 938
  end
  inherited PnlFiltros: TPanel
    ExplicitWidth = 938
    object LblNome: TLabel
      Left = 10
      Top = 5
      Width = 34
      Height = 15
      Caption = 'Nome'
    end
    object BtnLimpar: TcxButton
      Left = 705
      Top = 20
      Width = 100
      Height = 21
      Caption = 'Limpar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000080B100017233A00263A64003B5790005070BA005E83E10064
        87F5003E5DA3000A0E160000000000000000000000000000000000000000005A
        7FAA007FA9E70085AFFE008FB7FF00A7D0FF00A7CFFF00B4DFFF00B0DAFF0093
        B7FF0086A4FF005E85E300141E2A00000000000000000000000000000000002A
        3D5100AAD9FE00BFEDFF00C0EEFF00B8E4FF00C4F5FF00C9FBFF00C1F2FF00B1
        DEFF009EC5FF008AABFF006186E000070B0E0000000000000000000000000000
        000000719BB900C8F8FF00BEEEFF00C5F7FF00C7FAFF00C5F8FF00C3F5FF00BA
        E9FF00A3CDFF008CB1FF007494FF003A58790000000000000000000000000000
        0000001C283000B5E7FD00C6F7FF00C1F4FF00C2F4FF00C2F5FF00C3F5FF00B4
        E7FF0092C1FF007CA7FE3D7F9BFE6D7A7FEF0E0E0E1B00000000000000000000
        000000000000006D93AC00C5F9FF00BFF1FF00BBEEFF00AEE2FF0096CCFE3391
        B3FD7F9AA8FEB2AAA8FE9EA0A3FE7B5B5DFE47100CA700000000000000000000
        000000000000001B252A00A3D7F6009FD7FE1F9BC2FD7AA8BCFDC5BDBDFEC0C0
        C3FEA28F8FFC8D4C3EFD902400FEA93A00FF7D1B00EA00000000000000000000
        000000000000000000001B3D4963ABB0B5FDE6DFE2FFC3BCBFFBA26E5EFB9E3A
        06FCAE3C00FFBC5000FFBA5200FFAC4400FE440B008100000000000000000000
        00000000000000000000040404058A6A59D7B36022F9BB4D00FECD5E00FFCB62
        00FFC55E00FFC15B00FF8E3100E32F0900510000000000000000000000000000
        000000000000000000000000000033110041C46712F2E09444FFD07A28FFC56C
        21FFCE6F11FFB95300FF2F0B0052000000000000000000000000000000000000
        0000000000000000000000000000000000000D0500112F100040230C00331507
        00219D4202DFD57103FFA04101E91F08002E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000782F00A2D16C03FFDA7C15FF9D3F00E40A03000F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003D1A0056C76500FFA74000FFD26D00FF3411005800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000100000161310092B85800EF984400D41507002100000000000000000000
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
      OnClick = BtnLimparClick
    end
    object EdtNome: TcxTextEdit
      Left = 10
      Top = 20
      Properties.OnChange = EdtNomePropertiesChange
      TabOrder = 0
      Width = 690
    end
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
  end
  inherited CdsConsulta: TClientDataSet
    CommandText = 
      'SELECT *'#13#10'  FROM ( SELECT '#39'Paciente'#39' AS TIPO'#13#10'               ,PA' +
      'C.NOME'#13#10'               ,PAC.TELEFONE1 AS TELEFONE01'#13#10'           ' +
      '    ,PAC.TELEFONE2 AS TELEFONE02'#13#10'               ,(CID.CIDADE ||' +
      ' '#39' - '#39' || CID.UF) AS CIDADEUF'#13#10'               ,SRE.DESCRICAO AS ' +
      'SITUACAOREGISTRO'#13#10'           FROM PACIENTE PAC'#13#10'                ' +
      'LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PAC.IDCIDADE)'#13#10'         ' +
      '       JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PA' +
      'C.IDSITUACAOREGISTRO)'#13#10'          WHERE 1 = 1'#13#10#13#10'          UNION ' +
      'ALL'#13#10#13#10'         SELECT '#39'Doutor'#39' AS TIPO'#13#10'               ,DOU.NOM' +
      'E'#13#10'               ,DOU.TELEFONE AS TELEFONE01'#13#10'               ,D' +
      'OU.CELULAR AS TELEFONE02'#13#10'               ,(CID.CIDADE || '#39' - '#39' |' +
      '| CID.UF) AS CIDADEUF'#13#10'               ,SRE.DESCRICAO AS SITUACAO' +
      'REGISTRO'#13#10'          FROM DOUTOR DOU'#13#10'               LEFT JOIN CI' +
      'DADE CID ON (CID.IDCIDADE = DOU.IDCIDADE)'#13#10'               JOIN S' +
      'ITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = DOU.IDSITUACAOR' +
      'EGISTRO)'#13#10'         WHERE 1 = 1'#13#10#13#10'         UNION ALL'#13#10#13#10'        ' +
      'SELECT '#39'Secret'#225'ria'#39' AS TIPO'#13#10'              ,SEC.NOME'#13#10'          ' +
      '    ,SEC.TELEFONE AS TELEFONE01'#13#10'              ,SEC.CELULAR AS T' +
      'ELEFONE02'#13#10'              ,(CID.CIDADE || '#39' - '#39' || CID.UF) AS CID' +
      'ADEUF'#13#10'              ,SRE.DESCRICAO AS SITUACAOREGISTRO'#13#10'       ' +
      '  FROM SECRETARIA SEC'#13#10'              LEFT JOIN CIDADE CID ON (CI' +
      'D.IDCIDADE = SEC.IDCIDADE)'#13#10'              JOIN SITUACAOREGISTRO ' +
      'SRE ON (SRE.IDSITUACAOREGISTRO = SEC.IDSITUACAOREGISTRO)'#13#10'      ' +
      '  WHERE 1 = 1'#13#10'       ) TBL'#13#10'  ORDER BY TBL.NOME, TBL.TELEFONE01' +
      ', TBL.TELEFONE02, TBL.CIDADEUF'
    object CdsConsultaTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 10
    end
    object CdsConsultaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object CdsConsultaTELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'TELEFONE01'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsConsultaTELEFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'TELEFONE02'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsConsultaCIDADEUF: TStringField
      DisplayLabel = 'Cidade - UF'
      FieldName = 'CIDADEUF'
      Size = 55
    end
    object CdsConsultaSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      Required = True
      Size = 50
    end
  end
end
