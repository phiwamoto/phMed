inherited PesqUsuarioF: TPesqUsuarioF
  Caption = 'PesqUsuarioF'
  ExplicitWidth = 960
  ExplicitHeight = 560
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlFundo: TPanel
    inherited PnlCaption: TPanel
      inherited LblPesquisa: TLabel
        Width = 129
        Caption = 'Pesquisa de Usu'#225'rio'
        ExplicitWidth = 129
      end
    end
    inherited PnlFiltros: TPanel
      object LblCodigoLogin: TLabel
        Left = 10
        Top = 5
        Width = 68
        Height = 13
        Caption = 'C'#243'digo / Login'
      end
      object EdtCodigoLogin: TcxTextEdit
        Left = 10
        Top = 20
        Properties.OnChange = EdtCodigoLoginPropertiesChange
        TabOrder = 0
        Width = 690
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
    end
    inherited GridPesquisa: TcxGrid
      inherited GridPesquisaDBTableView1: TcxGridDBTableView
        object GridPesquisaDBTableView1IDUSUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'IDUSUARIO'
          Width = 70
        end
        object GridPesquisaDBTableView1DATAINCLUSAO: TcxGridDBColumn
          DataBinding.FieldName = 'DATAINCLUSAO'
          Width = 80
        end
        object GridPesquisaDBTableView1LOGIN: TcxGridDBColumn
          DataBinding.FieldName = 'LOGIN'
          Width = 558
        end
        object GridPesquisaDBTableView1SITUACAOREGISTRO: TcxGridDBColumn
          DataBinding.FieldName = 'SITUACAOREGISTRO'
          Width = 120
        end
      end
    end
  end
  inherited CdsPesquisa: TClientDataSet
    CommandText = 
      'SELECT USU.*'#13#10'             ,SRE.DESCRICAO AS SITUACAOREGISTRO'#13#10' ' +
      '  FROM USUARIO USU'#13#10'             JOIN SITUACAOREGISTRO SRE ON (S' +
      'RE.IDSITUACAOREGISTRO = USU.IDSITUACAOREGISTRO)'#13#10'  WHERE 1 = 1'#13#10 +
      '        AND USU.IDUSUARIO > 0'
    object CdsPesquisaIDUSUARIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDUSUARIO'
      Required = True
    end
    object CdsPesquisaIDPERFIL: TIntegerField
      DisplayLabel = 'C'#243'd. Perfil'
      FieldName = 'IDPERFIL'
      Required = True
    end
    object CdsPesquisaIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsPesquisaDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsPesquisaLOGIN: TStringField
      DisplayLabel = 'Login'
      FieldName = 'LOGIN'
      Required = True
    end
    object CdsPesquisaSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Required = True
    end
    object CdsPesquisaSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
end