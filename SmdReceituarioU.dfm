inherited SmdReceituarioF: TSmdReceituarioF
  Caption = 'SmdReceituarioF'
  ExplicitWidth = 960
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlFundo: TPanel
    inherited PnlCaption: TPanel
      inherited LblPesquisa: TLabel
        Width = 123
        Caption = 'Receitu'#225'rio M'#233'dico'
        ExplicitWidth = 123
      end
    end
    inherited PnlBotao: TPanel
      object BtnSelecionar: TcxButton
        Left = 690
        Top = 6
        Width = 150
        Height = 25
        Caption = 'Confirmar'
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
      object GbListagemMedicamento: TcxGroupBox
        Left = 10
        Top = 110
        Caption = ' Listagem de medicamento(s) '
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
        Height = 200
        Width = 930
        object PnlListagemMedicamentoBotao: TPanel
          Left = 2
          Top = 20
          Width = 926
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 8
          ExplicitTop = 14
          object BtnIncluirMedicamento: TcxButton
            Left = 309
            Top = 5
            Width = 200
            Height = 25
            Hint = 
              'Caso o <Medicamento> n'#227'o esteja incluso na listagem, clique para' +
              ' incluir novo medicamento'
            Caption = '<INCLUIR> Medicamento'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00009B7C6BFF9D7E6DFF9C7E6DFF9C7E6DFF9C7E6DFF9C7D6DFF9C7D6CFF9B7C
              6BFF9B7C6BFF9A7C6AFF997B68FF9B7C6BFF0000000000000000000000000000
              00009B7766FFFFFFFFFFFAF4E9FFFAF4E9FFFAF4E9FFFAF3E8FFFAF3E7FFFAF2
              E6FFFAF1E4FFFBF5EBFFF8EDDAFF977967FF0000000000000000000000000000
              0000A27F6FFFFFFFFFFFDDC2B5FFDDC2B5FFDCC2B5FFDCBFB1FFDCBEAEFFDCBB
              A9FFEAD5C8FF389E31FFFCF7EFFFA58A7CFF0000000000000000000000000000
              0000A38070FFFFFFFFFFDBC3BBFFDBC3BAFFDBC2B8FFEBDCD5FFEBDBD3FFEBDA
              D0FFEBD9CFFF058F05FF58B155FFC5B3AAFF0000000000000000000000000000
              0000A98778FFFFFFFFFFDBC7C2FFDBC6C1FFEBDFDAFF0B920BFF0E950FFF0E95
              0FFF129813FF2DC649FF119C1AFF419A3AFF0000000000000000000000000000
              0000AB897AFFFFFFFFFFDBC7C3FFDBC7C2FFECE0DCFF0A940CFF4EE781FF4EE7
              81FF4EE781FF4EE781FF4CE57EFF139F1DFF006A01C100000000000000000000
              0000AF8E7FFFFFFFFFFFDCC5C0FFDCC5BFFFECDFDBFF0B950DFF56EF89FF56EF
              89FF56EF89FF56EF89FF54ED87FF15A120FF006D01C500000000000000000000
              0000AF8F80FFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFF1D9B1DFF169E1DFF169E
              1DFF149C1AFF36CF54FF15A320FF31972CFF0000000000000000000000000000
              0000AF8F80FFFFFFFFFFDFCECCFFDFCDCBFFDECAC6FFECDEDAFFEDDED9FFEDDC
              D5FFEEDDD4FF049004FF53AF52FFC9B7AFFF0000000000000000000000000000
              0000B19080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFBFFFDFB
              F8FFFDFBF8FF47AA46FFF6F2EDFFAA9082FE0000000000000000000000000000
              0000B79787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFBFFFDFB
              F9FFB29283FFC8B1A6FFB29283FFA78270FF0000000000000000000000000000
              0000B89888FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFDFFFEFCFAFFFDFB
              F9FFA78270FFF5E2D9FFB18E7EFF3A2D27580000000000000000000000000000
              0000B89888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFA78270FFB18E7EFF3A2D2758000000000000000000000000000000000000
              0000B89888FFB89888FFB49383FFB49383FFB08E7DFFB08E7DFFAC8877FFAC88
              77FFA78270FF3A2D275800000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BtnIncluirMedicamentoClick
          end
          object BtnAlterarMedicamentoSelecionado: TcxButton
            Left = 514
            Top = 5
            Width = 200
            Height = 25
            Hint = 
              'Alterar <Medicamento> selecionado da listagem, clique para alter' +
              'ar o medicamento'
            Caption = '<ALTERAR> Medicamento'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00009B7C6BFF9D7E6DFF9C7E6DFF9C7E6DFF9C7E6DFF9C7D6DFF9C7D6CFF9B7C
              6BFF9B7C6BFF9A7C6AFF997B68FF9B7C6BFF0000000000000000000000000000
              00009B7766FFFFFFFFFFFAF4E9FFFAF4E9FFEEE9DEFFE8E2D8FFF7F0E4FFFAF2
              E6FFFAF1E4FFF9EFE0FFF8EDDAFF977967FF0000000000000000000000000000
              0000A27F6FFFFFFFFFFFDDC2B5FFDDC2B5FFB5A9A4FFB1A19AFFDBC2B4FFDCBB
              A9FFDCBAA5FFDCBAA3FFFAF1E2FF987968FF0000000000000000000000000000
              0000A38070FFFFFFFFFFDBC3BBFFEADDD7FF6F6D71FF928B96FFC3CDB9FFE8D6
              CCFFDAB8A5FFDCB9A5FFFAF3E6FF997A6AFF0000000000000000000000000000
              0000A98778FFFFFFFFFFDBC7C2FFE9DDDAFFA8BBCEFF34B356FF2CB444FF71B4
              6FFFECDBD2FFDCBBA7FFFBF4E8FF997B6BFF0000000000000000000000000000
              0000AB897AFFFFFFFFFFDBC7C3FFE6D7D4FF99D0A7FF66FF98FF5AEC86FF2EAD
              46FF87BE81FFEAD8CCFFFBF5EAFF9A7C6BFF0000000000000000000000000000
              0000AF8E7FFFFFFFFFFFDCC5C0FFDEC9C3FFDBE4D6FF57E27FFF6AFF9DFF55E1
              7CFF2AA43CFF9CC494FFFCF8F2FF9B7C6BFF0000000000000000000000000000
              0000AF8F80FFFFFFFFFFFEFEFEFFFEFEFEFFFEFDFDFFD1F8DCFF54EE83FF68FF
              9BFF50DC77FF249E38FFB7DCB6FFB69F94FF0000000000000000000000000000
              0000AF8F80FFFFFFFFFFDFCECCFFDFCDCBFFDECAC6FFE9D9D5FFADEAB9FF5AF6
              88FF64FF97FF42DA69FF34873EFFC6BDB6FF0000000000000000000000000000
              0000B19080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFDFF91EF
              ACFF55FC88FF9AC1A4FFCDBBB6FF6E6D8CFF0001111800000000000000000000
              0000B79787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFBFFFBFC
              FAFFA5C5A6FFFFFFFFFF7892F5FF203DDCFF000279C200000000000000000000
              0000B89888FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFDFFFEFCFAFFFDFB
              F9FFDED0C9FF8C99DEFF4277FFFF2D4AD8FF010281D100000000000000000000
              0000B89888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFB39384FFC1B9D0FF3041C1F7070C83C90000152500000000000000000000
              0000B89888FFB89888FFB49383FFB49383FFB08E7DFFB08E7DFFAC8877FFAC88
              77FFA78270FF4D413C6800000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BtnAlterarMedicamentoSelecionadoClick
          end
          object BtnInativarMedicamentoSelecionado: TcxButton
            Left = 719
            Top = 5
            Width = 200
            Height = 25
            Hint = 'Inativar <Medicamento> que n'#227'o '#233'/ser'#225' utilizado da listagem'
            Caption = '<INATIVAR> Medicamento'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000103
              86AF0A14AFFF867EB8FFD4C8C3FF2E2DB3FF2526B8FFB7ACC3FFA58879FF9B7C
              6BFF9B7C6BFF9A7C6AFF997B68FF9B7C6BFF0000000000000000000000000202
              8FD32C72FFFF1534D4FF2135C4FF174EFFFF155CFFFF363AC5FFFDF9F3FFFAF2
              E6FFFAF1E4FFF9EFE0FFF8EDDAFF977967FF0000000000000000000000000000
              4A601225C5FF2C67FFFF255DFFFF205BFFFF141FBAFFD3C9D8FFDFC3B5FFDCBB
              A9FFDCBAA5FFDCBAA3FFFAF1E2FF987968FF0000000000000000000000000000
              0000A79EC1FF1022BFFF2D66FFFF1C49F4FF7471C4FFECDDD6FFDBBDAFFFDABB
              AAFFDAB8A5FFDCB9A5FFFAF3E6FF997A6AFF0000000000000000000000000000
              00002725A6FF3F7DFFFF1C3FDDFF2961FFFF1223C4FFD2CADAFFDEC4B8FFDBBC
              ADFFDABAA8FFDCBBA7FFFBF4E8FF997B6BFF0000000000000000000000000000
              0000151CC0FF396DFFFF8683CCFF3738B4FF2B6DFFFF292ABDFFEEE2DCFFDBBD
              AFFFDBBAA9FFDCBCA9FFFBF5EAFF9A7C6BFF0000000000000000000000000000
              0000A59BCAFF4242C4FFF0E6E4FFCAC3DAFF3231BBFFBDB8E5FFE7D4CCFFDBBD
              AFFFDBBAAAFFDDBBA9FFFBF5ECFF9B7C6BFF0000000000000000000000000000
              0000BCA194FFFFFFFFFFFEFEFEFFFEFEFEFFFFFEFEFFFEFDFCFFFDFBF8FFFDFA
              F6FFFCF9F3FFFCF7F0FFFCF6EDFF9B7C6CFF0000000000000000000000000000
              0000AF8F80FFFFFFFFFFDFCECCFFDFCDCBFFDFCBC7FFDEC6C0FFDEC4BAFFDEC1
              B4FFDEBEADFFDEBEABFFFCF6EEFF9C7C6DFF0000000000000000000000000000
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
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = BtnInativarMedicamentoSelecionadoClick
          end
          object BtnMedicamentoSolicitadoAoPaciente: TcxButton
            Left = 8
            Top = 5
            Width = 200
            Height = 25
            Hint = 
              'Solicitar este medicamento ao paciente <Clicar no Bot'#227'o / Duplo ' +
              'clique no item da listagem>'
            Caption = '<SOLICITAR ESTE MEDICAMENTO>'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000632E00705E2C006B0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000050240056C27C3AFDC97E36FC4B21
              0052000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000003818003ED8802DF7FFD09BFFD3A779FFBE69
              1BF53517003A0000000000000000000000000000000000000000000000000000
              000000000000000000002811002BC76B1AEEFEC991FFF7BA7DFFF7B776FFC998
              64FFB55B0EEC230F002800000000000000000000000000000000000000000000
              000000000000190A001CB75C0DE2FAC289FFF4B577FFF0AF6CFFF0AB67FFEEA9
              62FFC58C50FFA74F05DF16080019000000000000000000000000000000000000
              00000D06000FA6540BD1FDC58AFFF8C48DFFF0B579FFEBA660FFEAA35AFFE99F
              55FFEBA052FFC28440FF964403CE0B03000D0000000000000000000000000602
              0007914300BEC96F1FFECA7730FEDD9656FFF2C18DFFE89D53FFE69A4EFFDD93
              48FFBA6B24FFB35A11FEB3560DFE863A00BA0301000500000000000000000100
              00020A04000B0903000B00000000CE782FFFF1BB84FFE49647FFE49445FFDC8F
              3EFFAA5511FF000000000803000B0804000B0100000200000000000000000000
              0000000000000000000000000000CC762EFFEFB77AFFE08E3CFFE08E39FFD988
              34FFAA5410FF0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C9712AFFECAF70FFDD8630FFDB852EFFD682
              29FFA9500AFF0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C46C24FFE7A760FFD97E21FFD87D21FFD37A
              1CFFA74D07FF0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C46B20FFF0BC7EFFE49A4BFFE08B33FFD57B
              17FFA74A03FF0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000A44000F6AC4907FAA94403FAA44405F8A644
              03F69C3900F50000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BtnMedicamentoSolicitadoAoPacienteClick
          end
        end
        object PnlListagemMedicamentoLista: TPanel
          Left = 2
          Top = 55
          Width = 926
          Height = 143
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          object GridMedicamento: TcxGrid
            Left = 0
            Top = 0
            Width = 926
            Height = 143
            Hint = 
              'Solicitar este medicamento ao paciente <Clicar no Bot'#227'o / Duplo ' +
              'clique no item da listagem>'
            Align = alClient
            TabOrder = 0
            object GridMedicamentoDBTableView1: TcxGridDBTableView
              OnDblClick = GridMedicamentoDBTableView1DblClick
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = DsMedicamento
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.InfoText = 'Clique aqui para definir o filtro'
              NewItemRow.InfoText = 'Clique aqui para adicionar uma nova linha'
              OptionsData.Editing = False
              OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' registro para ser listado'
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object GridMedicamentoDBTableView1DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'DESCRICAO'
                Width = 400
              end
              object GridMedicamentoDBTableView1MEDICAMENTOUSO: TcxGridDBColumn
                DataBinding.FieldName = 'MEDICAMENTOUSO'
                Width = 250
              end
              object GridMedicamentoDBTableView1MEDICAMENTOQTDE: TcxGridDBColumn
                DataBinding.FieldName = 'MEDICAMENTOQTDE'
                Width = 240
              end
            end
            object GridMedicamentoLevel1: TcxGridLevel
              GridView = GridMedicamentoDBTableView1
            end
          end
        end
      end
      object GmMedicamentoReceitado: TcxGroupBox
        Left = 10
        Top = 315
        Caption = '  Medicamento(s) solicitado(s) ao paciente  '
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
        Height = 165
        Width = 930
        object PnlMedicamentoReceitadoBotao: TPanel
          Left = 2
          Top = 20
          Width = 926
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object BtnRemoverMedicamentoDaListaSolicitado: TcxButton
            Left = 10
            Top = 5
            Width = 250
            Height = 25
            Caption = 'Remover Medicamento da Listagem Solicitada'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000058442B61A17141B2C58E57D2DA9757F1DA8C44FCCC7C
              2FFAC26E1EF3A8590CD4331F0938000000000000000000000000000000000000
              000006060506BD9561C6F6DDB8FFA59B95FF958E8EFFB0A39EFF988E85FFA18E
              7FFFBF9783FFD29272FFC56103F6050505050000000000000000000000000000
              0000453F2F45EFC197FFF9FDFFFFD0C3CAFF6D8963FFC0A6A6FFC4AEA6FFA28A
              7AFFC09D83FFB68466FFC46915FF2C1B0A2E0000000000000000000000000000
              00007D684586EFD2BAFFF2E5F6FF77A170FF22AD36FF259F39FFAEB496FFBFA5
              9AFFD8B59DFFBE9073FFC87632FF5A3108600000000000000000000000000000
              0000A78453B8FFF4FAFF3EAC43FF07BD1FFF1CB934FF54A656FF459F43FF3A91
              36FFE7BEAFFFC69A7EFFD0874EFFA0540BBD0000000000000000000000000000
              0000C89F68D8F4F3EEFF23AB28FF87BB84FFA3B298FFF9D6E0FF24AE30FF1EA9
              2DFFE7BCB3FFAC8366FFB87F5FFFB95F09DB0000000000000000000000000101
              0101E6B27BF6ADCFA8FF52B865FF3A7B38FFFBE1F0FF5CA355FF2CD350FF2E99
              2DFFC3A396FFC69F84FFB48063FFC5630DF8030303030000000000000000221D
              1722EFB98CFF61A961FF39EE6BFF2BA63AFF5E8057FF62B163FF34EB62FF4C8D
              3EFFE4C7BBFFE2BEA4FFC29172FFCB6D1AFF2515092C00000000000000005F45
              2C68F6CDACFFB7D7ABFF71C576FF04B917FF009900FF99A78CFF7C976DFFB599
              96FFB49D8FFFDFBFA8FFDBAD91FFCD7935FF6035097700000000000000008563
              428EF5E8DDFFF6F3FCFFF1E5F1FFB7AFB3FFAEA4A6FFDECFD1FFE0D3CCFFDFCE
              C1FFC2AE9CFFBE9E85FFCD9E80FFD28B56FF8B4A08B00000000000000000AA80
              56B3F1F2F3FFEEEFF0FFF3F3F3FFEFEEEEFFDDDCDCFFECEBEAFFF8F7F6FFFEFC
              FCFFF6F4F3FFEAE5E0FFE6D7CEFFCE9F83FFA85406D40000000000000000D0A2
              71D9FCFFFFFFE4E4E5FFCDCDCDFFC0C0C0FF979797FF5B5B5BFFADADAEFFA8A8
              A8FFA2A2A3FFBBBCBDFFDADFE1FFDBEFFFFFCC7F35F40000000000000000E9CF
              B4E9E4E5EBFFBDC0C0FFBFC0C0FFE7E9EAFF8E9295FF9DA1A4FFBEC1C4FFA6A9
              ACFF868788FFA1A4A7FFE3E5E5FFCE8D4CFA82470C950000000000000000352B
              22359E8E7EA1C1C0BFD8E3E3E2F9E7D6C5FFD9B08AFFDEB58EFFD7B491F9CCA4
              82E9BEA187E28F7862BB7448218B150D06160000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            TabOrder = 0
            OnClick = BtnRemoverMedicamentoDaListaSolicitadoClick
          end
        end
        object PnlMedicamentoReceitadoListagem: TPanel
          Left = 2
          Top = 55
          Width = 926
          Height = 108
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          object GridMedicamentoPedido: TcxGrid
            Left = 0
            Top = 0
            Width = 926
            Height = 108
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = DsReceituarioPedido
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.InfoText = 'Clique aqui para definir o filtro'
              NewItemRow.InfoText = 'Clique aqui para adicionar uma nova linha'
              OptionsData.Editing = False
              OptionsView.NoDataToDisplayInfoText = 'N'#227'o h'#225' registro para ser listado'
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGridDBTableView1MEDICAMENTO: TcxGridDBColumn
                DataBinding.FieldName = 'MEDICAMENTO'
                Width = 250
              end
              object cxGridDBTableView1MEDICAMENTOUSO: TcxGridDBColumn
                DataBinding.FieldName = 'MEDICAMENTOUSO'
                Width = 180
              end
              object cxGridDBTableView1MEDICAMENTOQTDE: TcxGridDBColumn
                DataBinding.FieldName = 'MEDICAMENTOQTDE'
                Width = 180
              end
              object cxGridDBTableView1POSOLOGIA: TcxGridDBColumn
                DataBinding.FieldName = 'POSOLOGIA'
                Width = 280
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
      end
      object GbInformacoesDoPaciente: TcxGroupBox
        Left = 10
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
        TabOrder = 2
        Height = 100
        Width = 930
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
        object DbNomePaciente: TDBText
          Left = 10
          Top = 35
          Width = 260
          Height = 17
          Color = clWhite
          DataField = 'PACIENTENOME'
          DataSource = DsReceituario
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DbtRG: TDBText
          Left = 280
          Top = 35
          Width = 100
          Height = 17
          Color = clWhite
          DataField = 'PACIENTERG'
          DataSource = DsReceituario
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DbtCPF: TDBText
          Left = 390
          Top = 35
          Width = 100
          Height = 17
          Color = clWhite
          DataField = 'PACIENTECPF'
          DataSource = DsReceituario
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DbtTelefone1: TDBText
          Left = 500
          Top = 35
          Width = 95
          Height = 17
          Color = clWhite
          DataField = 'PACIENTETELEFONE01'
          DataSource = DsReceituario
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DbtTelefone2: TDBText
          Left = 605
          Top = 35
          Width = 95
          Height = 17
          Color = clWhite
          DataField = 'PACIENTETELEFONE02'
          DataSource = DsReceituario
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DbDataNascimento: TDBText
          Left = 710
          Top = 35
          Width = 100
          Height = 17
          Color = clWhite
          DataField = 'PACIENTEDATANASCIMENTO'
          DataSource = DsReceituario
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
        object DbIdade: TDBText
          Left = 830
          Top = 35
          Width = 80
          Height = 17
          Color = clWhite
          DataField = 'PACIENTEIDADE'
          DataSource = DsReceituario
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
        object DbtEmail: TDBText
          Left = 10
          Top = 70
          Width = 260
          Height = 17
          Color = clWhite
          DataField = 'PACIENTEEMAIL'
          DataSource = DsReceituario
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
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
        object DbPacienteCidadeUF: TDBText
          Left = 280
          Top = 70
          Width = 210
          Height = 17
          Color = clWhite
          DataField = 'PACIENTECIDADEUF'
          DataSource = DsReceituario
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
  end
  object DsReceituario: TDataSource
    DataSet = CdsReceituario
    Left = 464
    Top = 264
  end
  object CdsReceituario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspReceituario'
    RemoteServer = DmRotinaF.LocalConnection
    AfterInsert = CdsReceituarioAfterInsert
    Left = 464
    Top = 248
    object CdsReceituarioIDPACIENTERECEITUARIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTERECEITUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsReceituarioIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsReceituarioIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object CdsReceituarioIDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Agenda'
      FieldName = 'IDAGENDA'
      Required = True
    end
    object CdsReceituarioDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsReceituarioHORAINCLUSAO: TTimeField
      DisplayLabel = 'Hora Inclus'#227'o'
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object CdsReceituarioPACIENTENOME: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsReceituarioPACIENTERG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object CdsReceituarioPACIENTECPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsReceituarioPACIENTETELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsReceituarioPACIENTETELEFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsReceituarioPACIENTEDATANASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'PACIENTEDATANASCIMENTO'
      ProviderFlags = []
    end
    object CdsReceituarioPACIENTEIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object CdsReceituarioPACIENTEEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
    object CdsReceituarioPACIENTECIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object CdsReceituarioDOUTORNOME: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsReceituarioDOUTORCRM: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object CdsReceituarioDOUTORCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsReceituarioDOUTORTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
    end
    object CdsReceituarioDOUTORCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
    end
  end
  object DsMedicamento: TDataSource
    DataSet = CdsMedicamento
    Left = 848
    Top = 200
  end
  object CdsMedicamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMedicamento'
    RemoteServer = DmRotinaF.LocalConnection
    Left = 848
    Top = 184
    object CdsMedicamentoIDMEDICAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDMEDICAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsMedicamentoIDMEDICAMENTOQTDE: TIntegerField
      DisplayLabel = 'C'#243'd. Medicamento Qtde'
      FieldName = 'IDMEDICAMENTOQTDE'
      Required = True
    end
    object CdsMedicamentoIDMEDICAMENTOUSO: TIntegerField
      DisplayLabel = 'C'#243'd. Medicamento Uso'
      FieldName = 'IDMEDICAMENTOUSO'
      Required = True
    end
    object CdsMedicamentoIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsMedicamentoDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsMedicamentoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 400
    end
    object CdsMedicamentoPOSOLOGIA: TStringField
      DisplayLabel = 'Posologia'
      FieldName = 'POSOLOGIA'
      Required = True
      Size = 400
    end
    object CdsMedicamentoMEDICAMENTOUSO: TStringField
      DisplayLabel = 'Uso'
      FieldName = 'MEDICAMENTOUSO'
      ProviderFlags = []
      Size = 100
    end
    object CdsMedicamentoMEDICAMENTOQTDE: TStringField
      DisplayLabel = 'Quantidade'
      FieldName = 'MEDICAMENTOQTDE'
      ProviderFlags = []
      Size = 100
    end
    object CdsMedicamentoSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
  object DsReceituarioPedido: TDataSource
    DataSet = CdsReceituarioPedido
    Left = 328
    Top = 304
  end
  object CdsReceituarioPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspReceituarioPedido'
    RemoteServer = DmRotinaF.LocalConnection
    AfterInsert = CdsReceituarioPedidoAfterInsert
    Left = 328
    Top = 288
    object CdsReceituarioPedidoIDPACIENTERECEITUARIOUSO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTERECEITUARIOUSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsReceituarioPedidoIDPACIENTERECEITUARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Receitu'#225'rio Paciente'
      FieldName = 'IDPACIENTERECEITUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsReceituarioPedidoIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsReceituarioPedidoIDMEDICAMENTO: TIntegerField
      DisplayLabel = 'C'#243'd. Medicamento'
      FieldName = 'IDMEDICAMENTO'
      Required = True
    end
    object CdsReceituarioPedidoPOSOLOGIA: TStringField
      DisplayLabel = 'Posologia'
      FieldName = 'POSOLOGIA'
      Size = 200
    end
    object CdsReceituarioPedidoMEDICAMENTO: TStringField
      DisplayLabel = 'Medicamento'
      FieldName = 'MEDICAMENTO'
      ProviderFlags = []
      Size = 400
    end
    object CdsReceituarioPedidoMEDICAMENTOUSO: TStringField
      DisplayLabel = 'Uso'
      FieldName = 'MEDICAMENTOUSO'
      ProviderFlags = []
      Size = 100
    end
    object CdsReceituarioPedidoMEDICAMENTOQTDE: TStringField
      DisplayLabel = 'Quantidade'
      FieldName = 'MEDICAMENTOQTDE'
      ProviderFlags = []
      Size = 100
    end
  end
  object frxCdsReceituario: TfrxDBDataset
    UserName = 'frxCdsReceituario'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDPACIENTERECEITUARIO=IDPACIENTERECEITUARIO'
      'IDPACIENTE=IDPACIENTE'
      'IDDOUTOR=IDDOUTOR'
      'IDAGENDA=IDAGENDA'
      'DATAINCLUSAO=DATAINCLUSAO'
      'HORAINCLUSAO=HORAINCLUSAO'
      'PACIENTENOME=PACIENTENOME'
      'PACIENTERG=PACIENTERG'
      'PACIENTECPF=PACIENTECPF'
      'PACIENTETELEFONE01=PACIENTETELEFONE01'
      'PACIENTETELEFONE02=PACIENTETELEFONE02'
      'PACIENTEDATANASCIMENTO=PACIENTEDATANASCIMENTO'
      'PACIENTEIDADE=PACIENTEIDADE'
      'PACIENTEEMAIL=PACIENTEEMAIL'
      'PACIENTECIDADEUF=PACIENTECIDADEUF'
      'DOUTORNOME=DOUTORNOME'
      'DOUTORCRM=DOUTORCRM'
      'DOUTORCPF=DOUTORCPF'
      'DOUTORTELEFONE=DOUTORTELEFONE'
      'DOUTORCELULAR=DOUTORCELULAR')
    DataSet = CdsReceituario
    BCDToCurrency = False
    Left = 704
    Top = 200
  end
  object frxCdsReceituarioPedido: TfrxDBDataset
    UserName = 'frxCdsReceituarioPedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDPACIENTERECEITUARIOUSO=IDPACIENTERECEITUARIOUSO'
      'IDPACIENTERECEITUARIO=IDPACIENTERECEITUARIO'
      'IDPACIENTE=IDPACIENTE'
      'IDMEDICAMENTO=IDMEDICAMENTO'
      'POSOLOGIA=POSOLOGIA'
      'MEDICAMENTO=MEDICAMENTO'
      'MEDICAMENTOUSO=MEDICAMENTOUSO'
      'MEDICAMENTOQTDE=MEDICAMENTOQTDE')
    DataSet = CdsReceituarioPedido
    BCDToCurrency = False
    Left = 704
    Top = 184
  end
  object frxRelatorioReceituarioInteira: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41397.954102847200000000
    ReportOptions.LastChange = 41462.708182997700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 794
    Top = 128
    Datasets = <
      item
        DataSet = DmRelatorioF.frxCdsClinica
        DataSetName = 'frxCdsClinica'
      end
      item
        DataSet = frxCdsReceituario
        DataSetName = 'frxCdsReceituario'
      end
      item
        DataSet = frxCdsReceituarioPedido
        DataSetName = 'frxCdsReceituarioPedido'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 83.149660000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxCdsReceituarioPedido
        DataSetName = 'frxCdsReceituarioPedido'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 75.590551180000000000
          Top = 3.779527560000000000
          Width = 566.929451180000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSetName = 'frxCdsAgenda_ReceitaPacienteUso'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '***** [frxCdsReceituarioPedido."MEDICAMENTOUSO"]:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 75.590551180000000000
          Top = 22.677165350000000000
          Width = 566.929451180000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSetName = 'frxCdsAgenda_ReceitaPacienteUso'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              ' - [frxCdsReceituarioPedido."MEDICAMENTO"]  --------------------' +
              ' Qtde: [frxCdsReceituarioPedido."MEDICAMENTOQTDE"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 75.590551180000000000
          Top = 41.574803150000000000
          Width = 566.929451180000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxCdsAgenda_ReceitaPacienteUso'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' - [frxCdsReceituarioPedido."POSOLOGIA"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 18.897637800000000000
          Width = 718.110407090000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RECEITU'#193'RIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 75.590551180000000000
          Top = 83.149606299212600000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sr.(a)')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 124.724409450000000000
          Top = 83.149606300000000000
          Width = 517.795610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxCdsAgenda_ReceitaPaciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxCdsReceituario."PACIENTENOME"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 245.669450000000000000
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        object Memo41: TfrxMemoView
          Left = 75.590551180000000000
          Top = 22.677165350000000000
          Width = 566.929133860000000000
          Height = 22.677165350000000000
          ShowHint = False
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxCdsClinica."CIDADEUF"]  -  [DATE]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 75.590551180000000000
          Top = 120.944881890000000000
          Width = 566.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxCdsAgenda_PacientePrescricaoOculos'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dr(a). [frxCdsReceituario."DOUTORNOME"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 75.590551180000000000
          Top = 98.267716540000000000
          Width = 566.929133860000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'frxCdsAgenda_PacientePrescricaoOculos'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 37.795275590000000000
          Top = 226.701282910000000000
          Width = 495.117990630000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = DmRelatorioF.frxCdsClinica
          DataSetName = 'frxCdsClinica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxCdsClinica."ENDERECO"], [frxCdsClinica."NUMERO"]  - CEP: [fr' +
              'xCdsClinica."CEP"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 534.913742200000000000
          Top = 226.701282910000000000
          Width = 143.622066770000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = DmRelatorioF.frxCdsClinica
          DataSetName = 'frxCdsClinica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxCdsClinica."TELEFONE1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 75.590551180000000000
          Top = 188.976377952756000000
          Width = 566.929060630000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = DmRelatorioF.frxCdsClinica
          DataSetName = 'frxCdsClinica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Observa'#231#227'o: CID (n'#227'o obrigat'#243'rio segundo Portaria 3.270/4 (do MP' +
              'AS) e Resolu'#231#227'o 1190/80 (do CFM)).')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 75.590551180000000000
          Top = 143.622047240000000000
          Width = 566.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CRM: [frxCdsReceituario."DOUTORCRM"]')
          ParentFont = False
        end
      end
    end
  end
  object frxRelatorioReceituarioMeia: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41397.954102847200000000
    ReportOptions.LastChange = 41448.784383298600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 794
    Top = 112
    Datasets = <
      item
        DataSet = DmRelatorioF.frxCdsClinica
        DataSetName = 'frxCdsClinica'
      end
      item
        DataSet = frxCdsReceituario
        DataSetName = 'frxCdsReceituario'
      end
      item
        DataSet = frxCdsReceituarioPedido
        DataSetName = 'frxCdsReceituarioPedido'
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
      object MasterData1: TfrxMasterData
        Height = 83.149660000000000000
        Top = 188.976500000000000000
        Width = 1046.929810000000000000
        DataSet = frxCdsReceituarioPedido
        DataSetName = 'frxCdsReceituarioPedido'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 576.488560000000000000
          Top = 4.000000000000000000
          Width = 453.543551180000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSetName = 'frxCdsAgenda_ReceitaPacienteUso'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '***** [frxCdsReceituarioPedido."MEDICAMENTOUSO"]:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 576.488560000000000000
          Top = 24.118120000000000000
          Width = 453.543551180000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSetName = 'frxCdsAgenda_ReceitaPacienteUso'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              ' - [frxCdsReceituarioPedido."MEDICAMENTO"]  --------------------' +
              ' Qtde: [frxCdsReceituarioPedido."MEDICAMENTOQTDE"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 576.488560000000000000
          Top = 44.236240000000000000
          Width = 453.543551180000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxCdsAgenda_ReceitaPacienteUso'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' - [frxCdsReceituarioPedido."POSOLOGIA"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 557.590910000000000000
          Width = 487.559077090000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RECEITU'#193'RIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 576.377952755906000000
          Top = 60.472440940000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sr.(a)')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 621.842920000000000000
          Top = 60.472440940000000000
          Width = 423.307360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxCdsAgenda_ReceitaPaciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxCdsReceituario."PACIENTENOME"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 181.417440000000000000
        Top = 332.598640000000000000
        Width = 1046.929810000000000000
        object Memo41: TfrxMemoView
          Left = 633.181522200000000000
          Top = 11.015770000000000000
          Width = 340.157651180000000000
          Height = 22.677165350000000000
          ShowHint = False
          DataSet = DmRelatorioF.frxCdsClinica
          DataSetName = 'frxCdsClinica'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxCdsClinica."CIDADEUF"]  -  [DATE]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 576.488560000000000000
          Top = 93.401596770000000000
          Width = 453.543307090000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxCdsAgenda_PacientePrescricaoOculos'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dr(a). [frxCdsReceituario."DOUTORNOME"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 599.165752200000000000
          Top = 55.606321180000000000
          Width = 415.748251180000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'frxCdsAgenda_PacientePrescricaoOculos'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 576.488572200000000000
          Top = 162.449272910000000000
          Width = 340.157260630000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = DmRelatorioF.frxCdsClinica
          DataSetName = 'frxCdsClinica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxCdsClinica."ENDERECO"], [frxCdsClinica."NUMERO"]  - CEP: [fr' +
              'xCdsClinica."CEP"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 916.646272200000000000
          Top = 162.449272910000000000
          Width = 113.385826770000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = DmRelatorioF.frxCdsClinica
          DataSetName = 'frxCdsClinica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxCdsClinica."TELEFONE1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 576.488572200000000000
          Top = 134.976407240000000000
          Width = 453.543160630000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = DmRelatorioF.frxCdsClinica
          DataSetName = 'frxCdsClinica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Observa'#231#227'o: CID (n'#227'o obrigat'#243'rio segundo Portaria 3.270/4 (do MP' +
              'AS) e Resolu'#231#227'o 1190/80 (do CFM)).')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 576.488572200000000000
          Top = 112.299612910000000000
          Width = 453.543551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CRM: [frxCdsReceituario."DOUTORCRM"]')
          ParentFont = False
        end
      end
    end
  end
  object frxRelatorioReceituarioTimbrado: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41397.954102847200000000
    ReportOptions.LastChange = 41463.997290740700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 794
    Top = 96
    Datasets = <
      item
        DataSet = DmRelatorioF.frxCdsClinica
        DataSetName = 'frxCdsClinica'
      end
      item
        DataSet = frxCdsReceituario
        DataSetName = 'frxCdsReceituario'
      end
      item
        DataSet = frxCdsReceituarioPedido
        DataSetName = 'frxCdsReceituarioPedido'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 83.149660000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        DataSet = frxCdsReceituarioPedido
        DataSetName = 'frxCdsReceituarioPedido'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 75.590551180000000000
          Top = 3.779527560000000000
          Width = 566.929451180000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSetName = 'frxCdsAgenda_ReceitaPacienteUso'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '***** [frxCdsReceituarioPedido."MEDICAMENTOUSO"]:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 75.590551180000000000
          Top = 22.677165350000000000
          Width = 566.929451180000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSetName = 'frxCdsAgenda_ReceitaPacienteUso'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              ' - [frxCdsReceituarioPedido."MEDICAMENTO"]  --------------------' +
              ' Qtde: [frxCdsReceituarioPedido."MEDICAMENTOQTDE"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 75.590551180000000000
          Top = 41.574803150000000000
          Width = 566.929451180000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxCdsAgenda_ReceitaPacienteUso'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' - [frxCdsReceituarioPedido."POSOLOGIA"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 287.244280000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 188.976377952756000000
          Width = 718.110407090000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RECEITU'#193'RIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 75.590551180000000000
          Top = 241.889763779528000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sr.(a)')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 124.724409450000000000
          Top = 241.889763780000000000
          Width = 517.795610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxCdsAgenda_ReceitaPaciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxCdsReceituario."PACIENTENOME"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 245.669450000000000000
        Top = 510.236550000000000000
        Width = 718.110700000000000000
        object Memo41: TfrxMemoView
          Left = 75.590551180000000000
          Top = 22.677165350000000000
          Width = 566.929133860000000000
          Height = 22.677165350000000000
          ShowHint = False
          DataSet = DmRelatorioF.frxCdsClinica
          DataSetName = 'frxCdsClinica'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxCdsClinica."CIDADEUF"]  -  [DATE]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 75.590551180000000000
          Top = 120.944881890000000000
          Width = 566.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxCdsAgenda_PacientePrescricaoOculos'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dr(a). [frxCdsReceituario."DOUTORNOME"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 75.590551180000000000
          Top = 98.267716535433100000
          Width = 566.929133860000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'frxCdsAgenda_PacientePrescricaoOculos'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 75.590551180000000000
          Top = 188.976377952756000000
          Width = 566.929060630000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = DmRelatorioF.frxCdsClinica
          DataSetName = 'frxCdsClinica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Observa'#231#227'o: CID (n'#227'o obrigat'#243'rio segundo Portaria 3.270/4 (do MP' +
              'AS) e Resolu'#231#227'o 1190/80 (do CFM)).')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 75.590551180000000000
          Top = 143.622047240000000000
          Width = 566.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CRM: [frxCdsReceituario."DOUTORCRM"]')
          ParentFont = False
        end
      end
    end
  end
end
