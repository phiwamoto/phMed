inherited SmdEvolucaoClinicaF: TSmdEvolucaoClinicaF
  Caption = 'SmdEvolucaoClinicaF'
  ExplicitWidth = 960
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlFundo: TPanel
    inherited PnlCaption: TPanel
      inherited LblPesquisa: TLabel
        Width = 190
        Caption = 'Evolu'#231#227'o Cli'#237'nica do Paciente'
        ExplicitWidth = 190
      end
    end
    inherited PnlBotao: TPanel
      object BtnConfirmarRascunho: TcxButton
        Left = 690
        Top = 6
        Width = 150
        Height = 25
        Caption = 'Confirmar Rascunho'
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
        OnClick = BtnConfirmarRascunhoClick
      end
      object BtnCancelar: TcxButton
        Left = 845
        Top = 6
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
      object BtnConfirmarDefinitivo: TcxButton
        Left = 534
        Top = 6
        Width = 150
        Height = 25
        Caption = 'Confirmar Definitivo'
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
        TabOrder = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = BtnConfirmarDefinitivoClick
      end
    end
    inherited PnlFiltros: TPanel
      Height = 2
      Visible = False
      ExplicitHeight = 2
    end
    inherited PnlInformacao: TPanel
      Top = 57
      Height = 483
      ExplicitTop = 57
      ExplicitHeight = 483
      object PcTelaCadastro: TcxPageControl
        Left = 1
        Top = 1
        Width = 948
        Height = 481
        ActivePage = TsPrincipal
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 481
        ClientRectRight = 948
        ClientRectTop = 26
        object TsPrincipal: TcxTabSheet
          Caption = 'Principal'
          ImageIndex = 0
          object GbEvolucaoClinicaAtual: TcxGroupBox
            Left = 0
            Top = 200
            Align = alClient
            Caption = ' Evolu'#231#227'o Cl'#237'nica do Paciente '
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
            Height = 255
            Width = 948
            object DbEvolucaoClinica: TcxDBMemo
              Left = 2
              Top = 20
              Align = alClient
              DataBinding.DataField = 'EVOLUCAOCLINICA'
              DataBinding.DataSource = DsEvolucaoClinica
              ParentFont = False
              Properties.ScrollBars = ssVertical
              Style.BorderStyle = ebsNone
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnEnter = DbEvolucaoClinicaEnter
              OnExit = DbEvolucaoClinicaExit
              Height = 233
              Width = 944
            end
          end
          object GbInformacoesPaciente: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
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
            TabOrder = 1
            Height = 100
            Width = 948
            object LblPacienteRG: TLabel
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
            object LblPacienteCPF: TLabel
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
            object LblPacienteTelefone01: TLabel
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
            object LblPacienteTelefone02: TLabel
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
            object LblPacienteNome: TLabel
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
            object LblPacienteEmail: TLabel
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
            object DbPacienteNome: TDBText
              Left = 10
              Top = 35
              Width = 260
              Height = 17
              Color = clWhite
              DataField = 'PACIENTENOME'
              DataSource = DsEvolucaoClinica
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DbPacienteRG: TDBText
              Left = 280
              Top = 35
              Width = 100
              Height = 17
              Color = clWhite
              DataField = 'PACIENTERG'
              DataSource = DsEvolucaoClinica
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DbPacienteCPF: TDBText
              Left = 390
              Top = 35
              Width = 100
              Height = 17
              Color = clWhite
              DataField = 'PACIENTECPF'
              DataSource = DsEvolucaoClinica
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DbPacienteTelefone01: TDBText
              Left = 500
              Top = 35
              Width = 95
              Height = 17
              Color = clWhite
              DataField = 'PACIENTETELEFONE01'
              DataSource = DsEvolucaoClinica
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DbPacienteTelefone02: TDBText
              Left = 605
              Top = 35
              Width = 95
              Height = 17
              Color = clWhite
              DataField = 'PACIENTETELEFONE02'
              DataSource = DsEvolucaoClinica
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DbPacienteEmail: TDBText
              Left = 10
              Top = 70
              Width = 260
              Height = 17
              Color = clWhite
              DataField = 'PACIENTEEMAIL'
              DataSource = DsEvolucaoClinica
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DbPacienteDataNascimento: TDBText
              Left = 710
              Top = 35
              Width = 100
              Height = 17
              Color = clWhite
              DataField = 'PACIENTEDATANASCIMENTO'
              DataSource = DsEvolucaoClinica
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object LblPacienteDataNascimento: TLabel
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
            object DbPacienteIdade: TDBText
              Left = 830
              Top = 35
              Width = 80
              Height = 17
              Color = clWhite
              DataField = 'PACIENTEIDADE'
              DataSource = DsEvolucaoClinica
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object LblPacienteIdade: TLabel
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
            object DbPacienteCidadeUF: TDBText
              Left = 280
              Top = 70
              Width = 210
              Height = 17
              Color = clWhite
              DataField = 'PACIENTECIDADEUF'
              DataSource = DsEvolucaoClinica
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
            object LblPacienteIndicacao: TLabel
              Left = 500
              Top = 55
              Width = 46
              Height = 14
              Caption = 'Indica'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DbPacienteIndicacao: TDBText
              Left = 500
              Top = 70
              Width = 200
              Height = 17
              Color = clWhite
              DataField = 'PACIENTEINDICACAO'
              DataSource = DsEvolucaoClinica
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
          object GbInformacoesDeAtendimento: TcxGroupBox
            Left = 0
            Top = 100
            Align = alTop
            Caption = ' Informa'#231#245'es Atendimento '
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
            TabOrder = 2
            Height = 100
            Width = 948
            object Label1: TLabel
              Left = 10
              Top = 15
              Width = 31
              Height = 15
              Caption = 'Idade'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object LblAltura: TLabel
              Left = 80
              Top = 15
              Width = 31
              Height = 15
              Caption = 'Altura'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object LblPeso: TLabel
              Left = 150
              Top = 15
              Width = 29
              Height = 15
              Caption = 'Peso'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object LblIMC: TLabel
              Left = 220
              Top = 15
              Width = 21
              Height = 15
              Caption = 'IMC'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object LblTabagismo: TLabel
              Left = 290
              Top = 15
              Width = 62
              Height = 15
              Caption = 'Tabagismo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object LblDoencaEmTratamento: TLabel
              Left = 500
              Top = 15
              Width = 130
              Height = 15
              Caption = 'Doen'#231'a em Tratamento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object LblAlergia: TLabel
              Left = 720
              Top = 15
              Width = 38
              Height = 15
              Caption = 'Alergia'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object LblCirurgiaPrevia: TLabel
              Left = 10
              Top = 55
              Width = 81
              Height = 15
              Caption = 'Cirurgia Pr'#233'via'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object LblQueixaPrincipal: TLabel
              Left = 260
              Top = 55
              Width = 89
              Height = 15
              Caption = 'Queixa Principal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object LblConduta: TLabel
              Left = 510
              Top = 55
              Width = 47
              Height = 15
              Caption = 'Conduta'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 10
              Top = 30
              DataBinding.DataField = 'IDADE'
              DataBinding.DataSource = DsEvolucaoClinica
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 60
            end
            object DbAltura: TcxDBTextEdit
              Left = 80
              Top = 30
              DataBinding.DataField = 'ALTURA'
              DataBinding.DataSource = DsEvolucaoClinica
              ParentFont = False
              Properties.OnChange = DbAlturaPropertiesChange
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 60
            end
            object DbPeso: TcxDBTextEdit
              Left = 150
              Top = 30
              DataBinding.DataField = 'PESO'
              DataBinding.DataSource = DsEvolucaoClinica
              ParentFont = False
              Properties.OnChange = DbPesoPropertiesChange
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 60
            end
            object DbIMC: TcxDBTextEdit
              Left = 220
              Top = 30
              DataBinding.DataField = 'IMC'
              DataBinding.DataSource = DsEvolucaoClinica
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 60
            end
            object DbTabagismo: TcxDBTextEdit
              Left = 290
              Top = 30
              DataBinding.DataField = 'TABAGISMO'
              DataBinding.DataSource = DsEvolucaoClinica
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 200
            end
            object DbDoencaEmTratamento: TcxDBTextEdit
              Left = 500
              Top = 30
              DataBinding.DataField = 'DOENCASEMTRATAMENTO'
              DataBinding.DataSource = DsEvolucaoClinica
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              Width = 210
            end
            object DbAlergia: TcxDBTextEdit
              Left = 720
              Top = 30
              DataBinding.DataField = 'ALERGIA'
              DataBinding.DataSource = DsEvolucaoClinica
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 6
              Width = 220
            end
            object DbCirurgiaPrevia: TcxDBTextEdit
              Left = 10
              Top = 70
              DataBinding.DataField = 'CIRURGIASPREVIA'
              DataBinding.DataSource = DsEvolucaoClinica
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 7
              Width = 240
            end
            object DbQueixaPrincipal: TcxDBTextEdit
              Left = 260
              Top = 71
              DataBinding.DataField = 'QUEIXAPRINCIPAL'
              DataBinding.DataSource = DsEvolucaoClinica
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 8
              Width = 240
            end
            object DbConduta: TcxDBTextEdit
              Left = 510
              Top = 71
              DataBinding.DataField = 'CONDUTA'
              DataBinding.DataSource = DsEvolucaoClinica
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 9
              Width = 240
            end
            object BtnPreencherEvolucaoClinica: TcxButton
              Left = 756
              Top = 71
              Width = 184
              Height = 22
              Caption = 'Preencher Evolu'#231#227'o Cl'#237'nica'
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
              TabOrder = 10
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnPreencherEvolucaoClinicaClick
            end
          end
        end
        object TsHistorico: TcxTabSheet
          Caption = 'Hist'#243'rico'
          ImageIndex = 1
          object cxGroupBox1: TcxGroupBox
            Left = 0
            Top = 0
            Align = alClient
            Caption = ' Hist'#243'rico - Evolu'#231#227'o Cl'#237'nica do Paciente '
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
            Height = 455
            Width = 948
            object EdEvolucaoClinicaGeral: TcxMemo
              Left = 2
              Top = 20
              Align = alClient
              ParentFont = False
              Properties.ReadOnly = True
              Properties.ScrollBars = ssVertical
              Style.BorderStyle = ebsNone
              Style.Color = 15921906
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Height = 433
              Width = 944
            end
          end
        end
      end
    end
  end
  object DsEvolucaoClinica: TDataSource
    DataSet = CdsEvolucaoClinica
    Left = 640
    Top = 360
  end
  object CdsEvolucaoClinica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEvolucaoClinica'
    RemoteServer = DmRotinaF.LocalConnection
    AfterInsert = CdsEvolucaoClinicaAfterInsert
    Left = 640
    Top = 344
    object CdsEvolucaoClinicaIDPACIENTEEVOLUCAO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTEEVOLUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEvolucaoClinicaIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEvolucaoClinicaIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object CdsEvolucaoClinicaIDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Agenda'
      FieldName = 'IDAGENDA'
      Required = True
    end
    object CdsEvolucaoClinicaIDRASCUNHO: TSmallintField
      DisplayLabel = 'C'#243'd. Rascunho'
      FieldName = 'IDRASCUNHO'
      Required = True
    end
    object CdsEvolucaoClinicaDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsEvolucaoClinicaHORAINCLUSAO: TTimeField
      DisplayLabel = 'Hora Inclus'#227'o'
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object CdsEvolucaoClinicaEVOLUCAOCLINICA: TStringField
      DisplayLabel = 'Evolu'#231#227'o Cl'#237'nica'
      FieldName = 'EVOLUCAOCLINICA'
      Required = True
      Size = 26000
    end
    object CdsEvolucaoClinicaPACIENTENOME: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsEvolucaoClinicaPACIENTERG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object CdsEvolucaoClinicaPACIENTECPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsEvolucaoClinicaPACIENTETELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsEvolucaoClinicaPACIENTETELEFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsEvolucaoClinicaPACIENTEDATANASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'PACIENTEDATANASCIMENTO'
      ProviderFlags = []
    end
    object CdsEvolucaoClinicaPACIENTEIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object CdsEvolucaoClinicaPACIENTEINDICACAO: TStringField
      DisplayLabel = 'Indica'#231#227'o'
      FieldName = 'PACIENTEINDICACAO'
      ProviderFlags = []
      Size = 250
    end
    object CdsEvolucaoClinicaPACIENTEEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
    object CdsEvolucaoClinicaPACIENTECIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object CdsEvolucaoClinicaDOUTORNOME: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsEvolucaoClinicaDOUTORCRM: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object CdsEvolucaoClinicaDOUTORCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsEvolucaoClinicaDOUTORTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
    end
    object CdsEvolucaoClinicaDOUTORCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
    end
    object CdsEvolucaoClinicaIDADE: TSmallintField
      DisplayLabel = 'Idade'
      FieldName = 'IDADE'
    end
    object CdsEvolucaoClinicaALTURA: TFMTBCDField
      DisplayLabel = 'Altura'
      FieldName = 'ALTURA'
      Precision = 15
      Size = 4
    end
    object CdsEvolucaoClinicaPESO: TFMTBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Precision = 15
      Size = 4
    end
    object CdsEvolucaoClinicaIMC: TFMTBCDField
      FieldName = 'IMC'
      Precision = 15
      Size = 4
    end
    object CdsEvolucaoClinicaTABAGISMO: TStringField
      DisplayLabel = 'Tabagismo'
      FieldName = 'TABAGISMO'
      Size = 250
    end
    object CdsEvolucaoClinicaDOENCASEMTRATAMENTO: TStringField
      DisplayLabel = 'Doen'#231'as em Tratamento'
      FieldName = 'DOENCASEMTRATAMENTO'
      Size = 250
    end
    object CdsEvolucaoClinicaALERGIA: TStringField
      DisplayLabel = 'Alergia'
      FieldName = 'ALERGIA'
      Size = 250
    end
    object CdsEvolucaoClinicaCIRURGIASPREVIA: TStringField
      DisplayLabel = 'Cirurgias Pr'#233'via'
      FieldName = 'CIRURGIASPREVIA'
      Size = 250
    end
    object CdsEvolucaoClinicaQUEIXAPRINCIPAL: TStringField
      DisplayLabel = 'Queixa Principal'
      FieldName = 'QUEIXAPRINCIPAL'
      Size = 250
    end
    object CdsEvolucaoClinicaCONDUTA: TStringField
      DisplayLabel = 'Conduta'
      FieldName = 'CONDUTA'
      Size = 250
    end
  end
end
