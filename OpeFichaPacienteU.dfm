inherited OpeFichaPacienteF: TOpeFichaPacienteF
  Caption = 'Ficha do Paciente'
  OnClose = FormClose
  ExplicitTop = -26
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlBotao: TPanel
    TabOrder = 2
    object BtnConfirmar: TcxButton
      Left = 664
      Top = 5
      Width = 150
      Height = 25
      Action = AcaoConfirmar
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
    end
  end
  inherited PnlChaves: TPanel
    TabOrder = 0
    object LblCodigo: TLabel
      Left = 10
      Top = 5
      Width = 40
      Height = 15
      Caption = 'C'#243'digo'
    end
    object EdNomePaciente: TcxTextEdit
      Left = 110
      Top = 20
      TabStop = False
      Properties.ReadOnly = True
      Style.Color = clSilver
      StyleDisabled.Color = clBtnFace
      TabOrder = 1
      Width = 740
    end
    object EdCodigo: TcxButtonEdit
      Left = 10
      Top = 20
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = EdCodigoPropertiesButtonClick
      TabOrder = 0
      OnExit = EdCodigoExit
      Width = 100
    end
  end
  inherited PnlTelaCadastro: TPanel
    inherited PcTelaCadastro: TcxPageControl
      ActivePage = TsPrincipal
      ClientRectTop = 26
      object TsPrincipal: TcxTabSheet
        Caption = 'Principal'
        ImageIndex = 0
        object LblDataInclusao: TLabel
          Left = 10
          Top = 10
          Width = 76
          Height = 15
          Caption = 'Data Inclus'#227'o'
        end
        object LblDataNascimento: TLabel
          Left = 550
          Top = 55
          Width = 96
          Height = 15
          Caption = 'Data Nascimento'
        end
        object LblNome: TLabel
          Left = 10
          Top = 55
          Width = 34
          Height = 15
          Caption = 'Nome'
        end
        object LblCPF: TLabel
          Left = 155
          Top = 100
          Width = 24
          Height = 15
          Caption = 'CPF'
        end
        object LblTelefone2: TLabel
          Left = 430
          Top = 100
          Width = 57
          Height = 15
          Caption = 'Telefone 2'
        end
        object LblTelefone1: TLabel
          Left = 310
          Top = 100
          Width = 57
          Height = 15
          Caption = 'Telefone 1'
        end
        object LblIdade: TLabel
          Left = 670
          Top = 55
          Width = 31
          Height = 15
          Caption = 'Idade'
        end
        object Label33: TLabel
          Left = 220
          Top = 188
          Width = 40
          Height = 15
          Caption = 'Cidade'
        end
        object Label2: TLabel
          Left = 10
          Top = 145
          Width = 25
          Height = 15
          Caption = 'CEP'
        end
        object Label3: TLabel
          Left = 110
          Top = 145
          Width = 53
          Height = 15
          Caption = 'Endere'#231'o'
        end
        object Label4: TLabel
          Left = 550
          Top = 100
          Width = 32
          Height = 15
          Caption = 'Email'
        end
        object Label5: TLabel
          Left = 550
          Top = 145
          Width = 45
          Height = 15
          Caption = 'N'#250'mero'
        end
        object Label6: TLabel
          Left = 10
          Top = 188
          Width = 33
          Height = 15
          Caption = 'Bairro'
        end
        object LblEstado: TLabel
          Left = 730
          Top = 55
          Width = 65
          Height = 15
          Caption = 'Estado Civil'
        end
        object Label7: TLabel
          Left = 420
          Top = 55
          Width = 27
          Height = 15
          Caption = 'Sexo'
        end
        object Label8: TLabel
          Left = 610
          Top = 145
          Width = 79
          Height = 15
          Caption = 'Complemento'
        end
        object LblRG: TLabel
          Left = 10
          Top = 100
          Width = 18
          Height = 15
          Caption = 'RG'
        end
        object DbDataInclusao: TcxDBDateEdit
          Left = 10
          Top = 25
          TabStop = False
          DataBinding.DataField = 'DATAINCLUSAO'
          DataBinding.DataSource = DsPaciente
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 0
          Width = 100
        end
        object DbDataNascimento: TcxDBDateEdit
          Left = 550
          Top = 70
          DataBinding.DataField = 'DATANASCIMENTO'
          DataBinding.DataSource = DsPaciente
          TabOrder = 3
          OnExit = DbDataNascimentoExit
          Width = 110
        end
        object DbNome: TcxDBTextEdit
          Left = 10
          Top = 70
          DataBinding.DataField = 'NOME'
          DataBinding.DataSource = DsPaciente
          TabOrder = 1
          Width = 400
        end
        object DbRG: TcxDBTextEdit
          Left = 10
          Top = 115
          DataBinding.DataField = 'RG'
          DataBinding.DataSource = DsPaciente
          TabOrder = 6
          Width = 135
        end
        object DbCPF: TcxDBTextEdit
          Left = 155
          Top = 115
          DataBinding.DataField = 'CPF'
          DataBinding.DataSource = DsPaciente
          Properties.MaxLength = 11
          TabOrder = 7
          Width = 145
        end
        object DbTelefone2: TcxDBTextEdit
          Left = 430
          Top = 115
          DataBinding.DataField = 'TELEFONE2'
          DataBinding.DataSource = DsPaciente
          Properties.MaxLength = 10
          TabOrder = 9
          Width = 110
        end
        object DbTelefone1: TcxDBTextEdit
          Left = 310
          Top = 115
          DataBinding.DataField = 'TELEFONE1'
          DataBinding.DataSource = DsPaciente
          Properties.MaxLength = 10
          TabOrder = 8
          Width = 110
        end
        object DbIdade: TcxDBTextEdit
          Left = 670
          Top = 70
          TabStop = False
          DataBinding.DataField = 'IDADE'
          DataBinding.DataSource = DsPaciente
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 4
          Width = 50
        end
        object DbNomeCidade: TcxDBTextEdit
          Left = 290
          Top = 203
          TabStop = False
          DataBinding.DataField = 'CIDADEUF'
          DataBinding.DataSource = DsPaciente
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 17
          Width = 250
        end
        object DbCodigoCidade: TcxDBButtonEdit
          Left = 220
          Top = 203
          DataBinding.DataField = 'IDCIDADE'
          DataBinding.DataSource = DsPaciente
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = DbCodigoCidadePropertiesButtonClick
          TabOrder = 16
          OnExit = DbCodigoCidadeExit
          Width = 70
        end
        object DbCEP: TcxDBTextEdit
          Left = 10
          Top = 160
          DataBinding.DataField = 'CEP'
          DataBinding.DataSource = DsPaciente
          Properties.MaxLength = 8
          TabOrder = 11
          Width = 90
        end
        object DbEndereco: TcxDBTextEdit
          Left = 110
          Top = 160
          DataBinding.DataField = 'ENDERECO'
          DataBinding.DataSource = DsPaciente
          TabOrder = 12
          Width = 430
        end
        object DbEmail: TcxDBTextEdit
          Left = 550
          Top = 115
          DataBinding.DataField = 'EMAIL'
          DataBinding.DataSource = DsPaciente
          TabOrder = 10
          Width = 360
        end
        object DbNumero: TcxDBTextEdit
          Left = 550
          Top = 160
          DataBinding.DataField = 'NUMERO'
          DataBinding.DataSource = DsPaciente
          TabOrder = 13
          Width = 50
        end
        object DbBairro: TcxDBTextEdit
          Left = 10
          Top = 203
          DataBinding.DataField = 'BAIRRO'
          DataBinding.DataSource = DsPaciente
          TabOrder = 15
          Width = 200
        end
        object CbEstado: TcxDBComboBox
          Left = 730
          Top = 70
          DataBinding.DataField = 'ESTADOCIVIL'
          DataBinding.DataSource = DsPaciente
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'N'#227'o Informado'
            'Solteiro(a)'
            'Casado(a)'
            'Vi'#250'vo(a)'
            'Divorciado(a)')
          TabOrder = 5
          Width = 180
        end
        object CbSexo: TcxDBComboBox
          Left = 420
          Top = 70
          DataBinding.DataField = 'SEXO'
          DataBinding.DataSource = DsPaciente
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'N'#227'o Informado'
            'Feminino'
            'Masculino')
          TabOrder = 2
          Width = 120
        end
        object DbComplemento: TcxDBTextEdit
          Left = 610
          Top = 160
          DataBinding.DataField = 'COMPLEMENTO'
          DataBinding.DataSource = DsPaciente
          TabOrder = 14
          Width = 300
        end
        object CbAtivo: TcxDBCheckBox
          Left = 6
          Top = 231
          Caption = 'Ativo'
          DataBinding.DataField = 'IDSITUACAOREGISTRO'
          DataBinding.DataSource = DsPaciente
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 18
          Width = 50
        end
      end
      object TsConvenio: TcxTabSheet
        Caption = 'Conv'#234'nio'
        ImageIndex = 1
        object GbPacienteConvenio: TcxGroupBox
          Left = 10
          Top = 10
          Caption = ' Conv'#234'nio '
          Style.BorderColor = clBlack
          Style.BorderStyle = ebsSingle
          Style.TextColor = clBlack
          Style.TransparentBorder = True
          StyleDisabled.BorderColor = clBlack
          StyleDisabled.TextColor = clBlack
          TabOrder = 0
          Height = 420
          Width = 920
          object GridPacienteConvenio: TcxGrid
            Left = 2
            Top = 100
            Width = 916
            Height = 318
            Align = alClient
            TabOrder = 1
            object GridPacienteConvenioDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = DsPacienteConvenio
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsSelection.CellSelect = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object GridPacienteConvenioDBTableView1IDCONVENIO: TcxGridDBColumn
                DataBinding.FieldName = 'IDCONVENIO'
                Width = 140
              end
              object GridPacienteConvenioDBTableView1CONVENIO: TcxGridDBColumn
                DataBinding.FieldName = 'CONVENIO'
                Width = 450
              end
              object GridPacienteConvenioDBTableView1PRINCIPAL: TcxGridDBColumn
                DataBinding.FieldName = 'PRINCIPAL'
                Width = 120
              end
              object GridPacienteConvenioDBTableView1SITUACAOREGISTRO: TcxGridDBColumn
                DataBinding.FieldName = 'SITUACAOREGISTRO'
                Width = 160
              end
            end
            object GridPacienteConvenioLevel1: TcxGridLevel
              GridView = GridPacienteConvenioDBTableView1
            end
          end
          object PnlPacienteConvenio: TPanel
            Left = 2
            Top = 20
            Width = 916
            Height = 80
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object LblConvenio: TLabel
              Left = 10
              Top = 30
              Width = 52
              Height = 15
              Caption = 'Conv'#234'nio'
            end
            object BtnSalvarConvenio: TcxButton
              Left = 220
              Top = 2
              Width = 100
              Height = 20
              Caption = 'Salvar'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000405
                05054588A8D41787BBFE537C8FFFAAA9A8FFA7B7BDFFC5CCCFFFD1CCCAFFB1B0
                AFFFAC9B94FF136188FE167EADFE217EAAFD466F85B4000000000000000042A8
                CBDF00ACE0FF00C5FDFF7CA0A9FF41A6C5FF00ADECFF56CFF0FFFFFFFFFFFEFD
                FDFFF7E0D9FF00A1CDFF00D5FFFF43EDFFFF0C7AADFF000000000000000005C2
                F5FF00B5E8FF00BAF1FF7BA9B5FF5096B1FF0091CBFF51B4D2FFEDDCD9FFFDFA
                FAFFFFFDF6FF0095C1FF00C5FDFF3FE0FFFF0577ACFF000000000000000005C9
                FBFF00B2E5FF00B4ECFF7EB2C1FF6696B0FF007FB8FF48A2BEFFD4C0BBFFE8DE
                DBFFFFFFFCFF0097C4FF00C6FDFF43DFFFFF0576A9FF000000000000000005C7
                F9FF00ADE0FF00B2E8FF67B2C8FFBBC3C6FFA7B2B5FF87989DFF7B979EFF81A0
                A8FF9BADB1FF0084A7FF009AC5FF0ED3FFFF0577AAFF000000000000000005C8
                FAFF00ACDFFF00AEE4FF00AFE8FF00B0ECFF00B4F1FF00B6F3FF00B9F6FF00BB
                F8FF00BDF9FF00C1FBFF00C3F9FF00CCFFFF0579ABFF000000000000000005C7
                F9FF00A8DDFF23A9D3FF41A5C3FF3DA5C2FF3BA5C3FF3CA6C3FF3BA6C5FF3BA7
                C5FF39A7C6FF3DA7C6FF22B3D9FF00CBFFFF0577A9FF000000000000000005C6
                F8FF00A4DCFF87AEBBFFFFEAE2FFFDE9E3FFFFECE6FFFDE9E3FFFAE7E1FFF5E1
                DBFFEFDBD5FFF5D7CFFF85A7B0FF00C8FFFF0578AAFF000000000000000005C7
                F9FF009FD8FF80B0BDFFFFF6F3FFD3D5D6FFBBBDBEFFBDBFC0FFBDBFBFFFBDBF
                C0FFC7CACBFFECE1DEFF7DA9B5FF00C7FFFF0578AAFF000000000000000005C6
                F8FF009CD4FF83B2C1FFFFFCF9FFF5F4F4FFEBEBEBFFEDEDEDFFE8E8E8FFE4E4
                E4FFE2E1E1FFEEE4E1FF7FAAB7FF00C6FEFF0577A9FF000000000000000005C5
                F7FF0099D2FF85B5C2FFFFFFFFFFDCDEDFFFC1C4C5FFC3C6C7FFC3C6C7FFC2C5
                C6FFCCCFD0FFF0E6E3FF80ABB8FF00C6FFFF0577A9FF000000000000000005C5
                F8FF0095CDFF88B7C4FFFFFFFFFFFCFBFBFFECECECFFEDEDECFFE7E7E7FFE2E2
                E2FFE3E2E2FFF3E8E5FF80AEBAFF00B7EDFF0580B2FF00000000000000000AC5
                F6FF008EC7FF8BB6C5FFFFFFFFFFE6E8E9FFD0D2D2FFD1D3D4FFCED1D1FFCCCE
                CFFFD4D6D6FFF7ECE9FF82B1BDFF0086AEFF0B94C5FF000000000000000046A7
                BCBC11C6FCFF87C2D0FFD6D5D5FFCDD5D8FFCED5D6FFCAD2D4FFC6CDCFFFBFC7
                CBFFBAC0C3FFBEBEBEFF7EADBBFF11B7EBFF468BA1BC00000000000000000000
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
              OnClick = BtnSalvarConvenioClick
            end
            object BtnInlcuirConvenio: TcxButton
              Left = 10
              Top = 2
              Width = 100
              Height = 20
              Caption = 'Incluir'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000110025004000990B6100E7136B00FE136900FF0E5D
                00EB004000A10014002D00000000000000000000000000000000000000000000
                00000000000000370067027B00F7099000FF079400FF0A8F00FF168600FF2C77
                00FF386A00FF176500FB003A0078000000000000000000000000000000000000
                000000370064038C06FE04A309FF049F09FF33CC66FF66FF99FF66FF99FF66FF
                99FF0B8900FF3A6C00FF266A00FE003900790000000000000000000000000010
                001F09860CF50BA817FF0AA316FF0AA315FF539B51FFFFF8FFFFFFF7FFFF66FF
                99FF009900FF019100FF3B6C00FF176700FB0014002E00000000000000000043
                008E29B037FF0FA923FF11AA23FF10A922FF539B51FFFFF9FFFFFFFAFFFF66FF
                99FF029B06FF009A00FF108900FF396B00FF004000A100000000000000000A75
                0AD938BF4FFF33CC66FF66FF99FF66FF99FF33CC66FFF9F4F9FFFEF7FCFF66FF
                99FF66FF99FF66FF99FF66FF99FF347400FF0D6100EB00000000000000001995
                1FFB42C45DFF539B51FFFCE9F9FFF0E4ECFFF1EBF0FFF1EFF1FFF5F3F4FFFFF8
                FCFFFFF8FFFFFFF4FFFF66FF99FF1D8300FF146D00FF00000000000000001A97
                20FA58CF76FF539B51FFFDECFDFFF2E9F2FFF0EBF0FFECEBECFFEFEEEFFFF8F3
                F8FFFFF8FFFFFFF5FFFF66FF99FF118E00FF126E00FF00000000000000000C79
                0DD479DE99FF539B51FF539B51FF539B51FF8EC18EFFF1EBF1FFF2ECF1FF33CC
                66FF539B51FF539B51FF33CC66FF109403FF0B6500E700000000000000000045
                008670D68DFF51D47CFF2ECA60FF2FC960FF539B51FFF2E8F2FFF0E4EDFF66FF
                99FF14AD2BFF0EA720FF07A312FF129005FF0043009A0000000000000000000E
                0018229D28F18CE8B0FF3ACF6DFF2FCB64FF539B51FFFEECFEFFFCE7F7FF66FF
                99FF16AF2EFF11AA22FF0AA918FF087E03F70013002500000000000000000000
                0000003600553DB64CFD89E8AFFF4CD57BFF219827FF539B51FF539B51FF33CC
                66FF16B02FFF11AF26FF06910BFE003A00680000000000000000000000000000
                00000000000000360055239E29F175DB94FF76E19DFF50D278FF3BC65FFF30C0
                50FF24B239FF07880BF500390064000000000000000000000000000000000000
                00000000000000000000000E001800460086117E11D41F9E26FA1E9B23FB0D7B
                0ED90046008E0012001F00000000000000000000000000000000000000000000
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
              OnClick = BtnInlcuirConvenioClick
            end
            object BtnExcluirConvenio: TcxButton
              Left = 432
              Top = 2
              Width = 100
              Height = 20
              Caption = 'Excluir'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000100000147352F67835448B8AC704FDDD08851F3DC9158FECF83
                45FDC97935EE9A5516BE381F073E000000000000000000000000000000000000
                0000050404069A7774D2DDC1B7FFD6CFC3FFCDC7BFFFD1C8BDFFB7B1A4FFB4AE
                A1FFCCBAA5FFE9B78AFFD37A28F8060403070000000000000000000000000000
                00005F434384E0C2BFFFFEFCF5FFF8E6E3FFAAB294FFDDC6BDFFDBC9BDFFB6AA
                98FFD0BDA3FFC5A67EFFD18641FF2F1B0A320000000000000000000000000000
                00007C5957A3F0DDD6FFFCE8ECFF89B67CFF23B23BFF18AE38FFB6BD9BFFCDBE
                B1FFE7D2BBFFCEB089FFDB9B5CFF5B3516650000000000000000000000000000
                00009B726CC0FFF6F5FF35AB38FF04BB1FFF20B735FF97C891FF45A142FF3695
                35FFF7DBCCFFD5B590FFEFBD86FFA25E26B80000000000000000000000000000
                0000C3998CD8F3F0DAFF30AE32FFC0D3B0FFDCD7C4FFFFE6ECFF29AE33FF1AA8
                2BFFF8D8CDFFBA9D78FFC79A63FFC37439DC0000000000000000000000000302
                0203DDB4A6F8ABCB99FF56C86DFF4A8942FFFFF0F4FF6BB85FFF2DD451FF2D9C
                2FFFD3BDABFFD4B794FFC49762FFD68348FA040302050000000000000000241D
                1A27F9D4C5FF78C571FF38EE6BFF35B041FFC5C8B4FF76C370FF2FE760FF5C9C
                4EFFEFD9CAFFEED1B0FFD2A672FFD88D4DFF2619113100000000000000004E40
                3754FADDCDFFD9DBC1FF75C16CFF00B215FF008E00FFE1E0B6FFAFB794FFCBB4
                ACFFC2B3A0FFEACFADFFEBBF8DFFDB9C63FF5135296400000000000000007866
                5480F7E3D3FFFFE9DCFFFFE9DBFFFFE7D6FFFFEBD7FFFFF0D2FFFDE9D2FFE7DB
                C9FFE1D4BCFFFDE1BCFFF3C894FFE3A25DFF89593FA90000000000000000A48D
                73ABF6EBE0FFFBEBD9FFFEF0DEFFFFF9EEFFF8E3D3FFF3DAC7FFEBC4A5FFE8BE
                A1FFE6B79BFFE0AD90FFD8A58DFFD79565FFAA7155D30000000000000000D7B3
                89DEFBDBACFFF1C58FFFEEC394FFF0CB9EFFF6D8B2FFFCE5C3FFFFEFD3FFFFF4
                DEFFFFFAEBFFFFFFFDFFFFFFFFFFFCFBFFFFC49698F10000000000000000E9BC
                85F4CB6603FFDA934AFFE8B37EFFF0C99EFFF6DAB8FFFBE7C8FFFFF2D8FFFFF7
                E2FFFFFEEFFFFEFAF2FFF4E6E3FFDDBEB9F56C4F4E790000000000000000332E
                2533A28966A9CBA678D4E4BA88EDEEC694FBF1C799FFE8BF96F8DBB28DEDC69C
                7DDBA77F65C0765B528A453532530D0A0A0F0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              Spacing = 0
              TabOrder = 4
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnExcluirConvenioClick
            end
            object BtnCancelarConvenio: TcxButton
              Left = 326
              Top = 2
              Width = 100
              Height = 20
              Caption = 'Cancelar'
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
              Spacing = 0
              TabOrder = 3
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnCancelarConvenioClick
            end
            object DbCodigoConvenio: TcxDBButtonEdit
              Left = 10
              Top = 45
              DataBinding.DataField = 'IDCONVENIO'
              DataBinding.DataSource = DsPacienteConvenio
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = DbCodigoConvenioPropertiesButtonClick
              TabOrder = 5
              OnExit = DbCodigoConvenioExit
              Width = 70
            end
            object DbDescricaoConvenio: TcxDBTextEdit
              Left = 80
              Top = 45
              TabStop = False
              DataBinding.DataSource = DsPacienteConvenio
              Properties.ReadOnly = True
              Style.Color = clSilver
              TabOrder = 6
              Width = 348
            end
            object CbAtivoConvenio: TcxDBCheckBox
              Left = 525
              Top = 45
              Caption = 'Ativo'
              DataBinding.DataField = 'IDSITUACAOREGISTRO'
              DataBinding.DataSource = DsPacienteConvenio
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 8
              OnClick = CbAtivoConvenioClick
              Width = 50
            end
            object CbPrincipalConvenio: TcxDBCheckBox
              Left = 440
              Top = 45
              Caption = 'Principal'
              DataBinding.DataField = 'IDPRINCIPAL'
              DataBinding.DataSource = DsPacienteConvenio
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 7
              OnClick = CbPrincipalConvenioClick
              Width = 80
            end
            object BtnAlterarConvenio: TcxButton
              Left = 116
              Top = 2
              Width = 100
              Height = 20
              Caption = 'Alterar'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000405
                05054588A8D41787BBFE537C8FFFAAA9A8FFA7B7BDFFC5CCCFFFD1CCCAFFB1B0
                AFFFAC9B94FF136188FE167EADFE217EAAFD466F85B4000000000000000042A8
                CBDF00ACE0FF00C5FDFF7CA0A9FF41A6C5FF00ADECFF56CFF0FFFFFFFFFFFEFD
                FDFFF7E0D9FF00A1CDFF00D5FFFF43EDFFFF0C7AADFF000000000000000005C2
                F5FF00B5E8FF00BAF1FF7BA9B5FF5096B1FF0091CBFF51B4D2FFEDDCD9FFFDFA
                FAFFFFFDF6FF0095C1FF00C5FDFF3FE0FFFF0577ACFF000000000000000005C9
                FBFF00B2E5FF00B4ECFF7EB2C1FF6696B0FF007FB8FF48A2BEFFD4C0BBFFE8DE
                DBFFFFFFFCFF0097C4FF00C6FDFF43DFFFFF0576A9FF000000000000000005C7
                F9FF00ADE0FF00B2E8FF67B2C8FFBBC3C6FFA7B2B5FF87989DFF7B979EFF81A0
                A8FF9BADB1FF0084A7FF009AC5FF0ED3FFFF0577AAFF000000000000000005C8
                FAFF00ACDFFF00AEE4FF00AFE8FF00B0ECFF00B4F1FF00B6F3FF00B9F6FF00BB
                F8FF00BDF9FF00C1FBFF00C3F9FF00CCFFFF0579ABFF000000000000000005C7
                F9FF00A8DDFF23A9D3FF41A5C3FF3DA5C2FF3BA5C3FF3CA6C3FF3BA6C5FF3BA7
                C5FF39A7C6FF3DA7C6FF22B3D9FF00CBFFFF0577A9FF000000000000000005C6
                F8FF00A4DCFF87AEBBFFFFEAE2FFFDE9E3FFFFECE6FFFDE9E3FFFAE7E1FFF5E1
                DBFFEFDBD5FFF5D7CFFF85A7B0FF00C8FFFF0578AAFF000000000000000005C7
                F9FF009FD8FF80B0BDFFFFF6F3FFD3D5D6FFBBBDBEFFBDBFC0FFBDBFBFFFBDBF
                C0FFC7CACBFFECE1DEFF7DA9B5FF00C7FFFF0578AAFF000000000000000005C6
                F8FF009CD4FF83B2C1FFFFFCF9FFF5F4F4FFEBEBEBFFEDEDEDFFE8E8E8FFE4E4
                E4FFE2E1E1FFEEE4E1FF7FAAB7FF00C6FEFF0577A9FF000000000000000005C5
                F7FF0099D2FF85B5C2FFFFFFFFFFDCDEDFFFC1C4C5FFC3C6C7FFC3C6C7FFC2C5
                C6FFCCCFD0FFF0E6E3FF80ABB8FF00C6FFFF0577A9FF000000000000000005C5
                F8FF0095CDFF88B7C4FFFFFFFFFFFCFBFBFFECECECFFEDEDECFFE7E7E7FFE2E2
                E2FFE3E2E2FFF3E8E5FF80AEBAFF00B7EDFF0580B2FF00000000000000000AC5
                F6FF008EC7FF8BB6C5FFFFFFFFFFE6E8E9FFD0D2D2FFD1D3D4FFCED1D1FFCCCE
                CFFFD4D6D6FFF7ECE9FF82B1BDFF0086AEFF0B94C5FF000000000000000046A7
                BCBC11C6FCFF87C2D0FFD6D5D5FFCDD5D8FFCED5D6FFCAD2D4FFC6CDCFFFBFC7
                CBFFBAC0C3FFBEBEBEFF7EADBBFF11B7EBFF468BA1BC00000000000000000000
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
              OnClick = BtnAlterarConvenioClick
            end
          end
        end
      end
      object TsEvolucaoClinica: TcxTabSheet
        Caption = 'Evolu'#231#227'o'
        ImageIndex = 2
        object GbPacienteEvolucaoClinica: TcxGroupBox
          Left = 10
          Top = 10
          Caption = ' Evolu'#231#227'o Cl'#237'nica do Paciente '
          Style.BorderColor = clBlack
          Style.BorderStyle = ebsSingle
          Style.TextColor = clBlack
          Style.TransparentBorder = True
          StyleDisabled.BorderColor = clBlack
          StyleDisabled.TextColor = clBlack
          TabOrder = 0
          Height = 420
          Width = 920
          object GridPacienteEvolucao: TcxGrid
            Left = 2
            Top = 170
            Width = 916
            Height = 248
            Align = alClient
            TabOrder = 1
            object GridPacienteEvolucaoDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = DsPacienteEvolucaoClinica
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsSelection.CellSelect = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object GridPacienteEvolucaoDBTableView1IDAGENDA: TcxGridDBColumn
                DataBinding.FieldName = 'IDAGENDA'
                Width = 100
              end
              object GridPacienteEvolucaoDBTableView1DATAINCLUSAO: TcxGridDBColumn
                DataBinding.FieldName = 'DATAINCLUSAO'
                Width = 90
              end
              object GridPacienteEvolucaoDBTableView1HORAINCLUSAO: TcxGridDBColumn
                DataBinding.FieldName = 'HORAINCLUSAO'
                Width = 90
              end
              object GridPacienteEvolucaoDBTableView1DOUTORNOME: TcxGridDBColumn
                DataBinding.FieldName = 'DOUTORNOME'
                Width = 200
              end
              object GridPacienteEvolucaoDBTableView1EVOLUCAOCLINICA: TcxGridDBColumn
                DataBinding.FieldName = 'EVOLUCAOCLINICA'
                Width = 400
              end
            end
            object GridPacienteEvolucaoLevel1: TcxGridLevel
              GridView = GridPacienteEvolucaoDBTableView1
            end
          end
          object PnlPacienteEvolucao: TPanel
            Left = 2
            Top = 20
            Width = 916
            Height = 150
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object LblEvolucaoClinica: TLabel
              Left = 10
              Top = 30
              Width = 91
              Height = 15
              Caption = 'Evolu'#231#227'o Cl'#237'nica'
            end
            object BtnSalvarEvolucao: TcxButton
              Left = 114
              Top = 2
              Width = 100
              Height = 20
              Caption = 'Salvar'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000405
                05054588A8D41787BBFE537C8FFFAAA9A8FFA7B7BDFFC5CCCFFFD1CCCAFFB1B0
                AFFFAC9B94FF136188FE167EADFE217EAAFD466F85B4000000000000000042A8
                CBDF00ACE0FF00C5FDFF7CA0A9FF41A6C5FF00ADECFF56CFF0FFFFFFFFFFFEFD
                FDFFF7E0D9FF00A1CDFF00D5FFFF43EDFFFF0C7AADFF000000000000000005C2
                F5FF00B5E8FF00BAF1FF7BA9B5FF5096B1FF0091CBFF51B4D2FFEDDCD9FFFDFA
                FAFFFFFDF6FF0095C1FF00C5FDFF3FE0FFFF0577ACFF000000000000000005C9
                FBFF00B2E5FF00B4ECFF7EB2C1FF6696B0FF007FB8FF48A2BEFFD4C0BBFFE8DE
                DBFFFFFFFCFF0097C4FF00C6FDFF43DFFFFF0576A9FF000000000000000005C7
                F9FF00ADE0FF00B2E8FF67B2C8FFBBC3C6FFA7B2B5FF87989DFF7B979EFF81A0
                A8FF9BADB1FF0084A7FF009AC5FF0ED3FFFF0577AAFF000000000000000005C8
                FAFF00ACDFFF00AEE4FF00AFE8FF00B0ECFF00B4F1FF00B6F3FF00B9F6FF00BB
                F8FF00BDF9FF00C1FBFF00C3F9FF00CCFFFF0579ABFF000000000000000005C7
                F9FF00A8DDFF23A9D3FF41A5C3FF3DA5C2FF3BA5C3FF3CA6C3FF3BA6C5FF3BA7
                C5FF39A7C6FF3DA7C6FF22B3D9FF00CBFFFF0577A9FF000000000000000005C6
                F8FF00A4DCFF87AEBBFFFFEAE2FFFDE9E3FFFFECE6FFFDE9E3FFFAE7E1FFF5E1
                DBFFEFDBD5FFF5D7CFFF85A7B0FF00C8FFFF0578AAFF000000000000000005C7
                F9FF009FD8FF80B0BDFFFFF6F3FFD3D5D6FFBBBDBEFFBDBFC0FFBDBFBFFFBDBF
                C0FFC7CACBFFECE1DEFF7DA9B5FF00C7FFFF0578AAFF000000000000000005C6
                F8FF009CD4FF83B2C1FFFFFCF9FFF5F4F4FFEBEBEBFFEDEDEDFFE8E8E8FFE4E4
                E4FFE2E1E1FFEEE4E1FF7FAAB7FF00C6FEFF0577A9FF000000000000000005C5
                F7FF0099D2FF85B5C2FFFFFFFFFFDCDEDFFFC1C4C5FFC3C6C7FFC3C6C7FFC2C5
                C6FFCCCFD0FFF0E6E3FF80ABB8FF00C6FFFF0577A9FF000000000000000005C5
                F8FF0095CDFF88B7C4FFFFFFFFFFFCFBFBFFECECECFFEDEDECFFE7E7E7FFE2E2
                E2FFE3E2E2FFF3E8E5FF80AEBAFF00B7EDFF0580B2FF00000000000000000AC5
                F6FF008EC7FF8BB6C5FFFFFFFFFFE6E8E9FFD0D2D2FFD1D3D4FFCED1D1FFCCCE
                CFFFD4D6D6FFF7ECE9FF82B1BDFF0086AEFF0B94C5FF000000000000000046A7
                BCBC11C6FCFF87C2D0FFD6D5D5FFCDD5D8FFCED5D6FFCAD2D4FFC6CDCFFFBFC7
                CBFFBAC0C3FFBEBEBEFF7EADBBFF11B7EBFF468BA1BC00000000000000000000
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
              OnClick = BtnSalvarEvolucaoClick
            end
            object BtnInlcuirEvolucao: TcxButton
              Left = 794
              Top = 2
              Width = 100
              Height = 20
              Caption = 'Incluir'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000110025004000990B6100E7136B00FE136900FF0E5D
                00EB004000A10014002D00000000000000000000000000000000000000000000
                00000000000000370067027B00F7099000FF079400FF0A8F00FF168600FF2C77
                00FF386A00FF176500FB003A0078000000000000000000000000000000000000
                000000370064038C06FE04A309FF049F09FF33CC66FF66FF99FF66FF99FF66FF
                99FF0B8900FF3A6C00FF266A00FE003900790000000000000000000000000010
                001F09860CF50BA817FF0AA316FF0AA315FF539B51FFFFF8FFFFFFF7FFFF66FF
                99FF009900FF019100FF3B6C00FF176700FB0014002E00000000000000000043
                008E29B037FF0FA923FF11AA23FF10A922FF539B51FFFFF9FFFFFFFAFFFF66FF
                99FF029B06FF009A00FF108900FF396B00FF004000A100000000000000000A75
                0AD938BF4FFF33CC66FF66FF99FF66FF99FF33CC66FFF9F4F9FFFEF7FCFF66FF
                99FF66FF99FF66FF99FF66FF99FF347400FF0D6100EB00000000000000001995
                1FFB42C45DFF539B51FFFCE9F9FFF0E4ECFFF1EBF0FFF1EFF1FFF5F3F4FFFFF8
                FCFFFFF8FFFFFFF4FFFF66FF99FF1D8300FF146D00FF00000000000000001A97
                20FA58CF76FF539B51FFFDECFDFFF2E9F2FFF0EBF0FFECEBECFFEFEEEFFFF8F3
                F8FFFFF8FFFFFFF5FFFF66FF99FF118E00FF126E00FF00000000000000000C79
                0DD479DE99FF539B51FF539B51FF539B51FF8EC18EFFF1EBF1FFF2ECF1FF33CC
                66FF539B51FF539B51FF33CC66FF109403FF0B6500E700000000000000000045
                008670D68DFF51D47CFF2ECA60FF2FC960FF539B51FFF2E8F2FFF0E4EDFF66FF
                99FF14AD2BFF0EA720FF07A312FF129005FF0043009A0000000000000000000E
                0018229D28F18CE8B0FF3ACF6DFF2FCB64FF539B51FFFEECFEFFFCE7F7FF66FF
                99FF16AF2EFF11AA22FF0AA918FF087E03F70013002500000000000000000000
                0000003600553DB64CFD89E8AFFF4CD57BFF219827FF539B51FF539B51FF33CC
                66FF16B02FFF11AF26FF06910BFE003A00680000000000000000000000000000
                00000000000000360055239E29F175DB94FF76E19DFF50D278FF3BC65FFF30C0
                50FF24B239FF07880BF500390064000000000000000000000000000000000000
                00000000000000000000000E001800460086117E11D41F9E26FA1E9B23FB0D7B
                0ED90046008E0012001F00000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              Spacing = 0
              TabOrder = 0
              Visible = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnInlcuirEvolucaoClick
            end
            object BtnExcluirEvolucao: TcxButton
              Left = 326
              Top = 2
              Width = 100
              Height = 20
              Caption = 'Excluir'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000100000147352F67835448B8AC704FDDD08851F3DC9158FECF83
                45FDC97935EE9A5516BE381F073E000000000000000000000000000000000000
                0000050404069A7774D2DDC1B7FFD6CFC3FFCDC7BFFFD1C8BDFFB7B1A4FFB4AE
                A1FFCCBAA5FFE9B78AFFD37A28F8060403070000000000000000000000000000
                00005F434384E0C2BFFFFEFCF5FFF8E6E3FFAAB294FFDDC6BDFFDBC9BDFFB6AA
                98FFD0BDA3FFC5A67EFFD18641FF2F1B0A320000000000000000000000000000
                00007C5957A3F0DDD6FFFCE8ECFF89B67CFF23B23BFF18AE38FFB6BD9BFFCDBE
                B1FFE7D2BBFFCEB089FFDB9B5CFF5B3516650000000000000000000000000000
                00009B726CC0FFF6F5FF35AB38FF04BB1FFF20B735FF97C891FF45A142FF3695
                35FFF7DBCCFFD5B590FFEFBD86FFA25E26B80000000000000000000000000000
                0000C3998CD8F3F0DAFF30AE32FFC0D3B0FFDCD7C4FFFFE6ECFF29AE33FF1AA8
                2BFFF8D8CDFFBA9D78FFC79A63FFC37439DC0000000000000000000000000302
                0203DDB4A6F8ABCB99FF56C86DFF4A8942FFFFF0F4FF6BB85FFF2DD451FF2D9C
                2FFFD3BDABFFD4B794FFC49762FFD68348FA040302050000000000000000241D
                1A27F9D4C5FF78C571FF38EE6BFF35B041FFC5C8B4FF76C370FF2FE760FF5C9C
                4EFFEFD9CAFFEED1B0FFD2A672FFD88D4DFF2619113100000000000000004E40
                3754FADDCDFFD9DBC1FF75C16CFF00B215FF008E00FFE1E0B6FFAFB794FFCBB4
                ACFFC2B3A0FFEACFADFFEBBF8DFFDB9C63FF5135296400000000000000007866
                5480F7E3D3FFFFE9DCFFFFE9DBFFFFE7D6FFFFEBD7FFFFF0D2FFFDE9D2FFE7DB
                C9FFE1D4BCFFFDE1BCFFF3C894FFE3A25DFF89593FA90000000000000000A48D
                73ABF6EBE0FFFBEBD9FFFEF0DEFFFFF9EEFFF8E3D3FFF3DAC7FFEBC4A5FFE8BE
                A1FFE6B79BFFE0AD90FFD8A58DFFD79565FFAA7155D30000000000000000D7B3
                89DEFBDBACFFF1C58FFFEEC394FFF0CB9EFFF6D8B2FFFCE5C3FFFFEFD3FFFFF4
                DEFFFFFAEBFFFFFFFDFFFFFFFFFFFCFBFFFFC49698F10000000000000000E9BC
                85F4CB6603FFDA934AFFE8B37EFFF0C99EFFF6DAB8FFFBE7C8FFFFF2D8FFFFF7
                E2FFFFFEEFFFFEFAF2FFF4E6E3FFDDBEB9F56C4F4E790000000000000000332E
                2533A28966A9CBA678D4E4BA88EDEEC694FBF1C799FFE8BF96F8DBB28DEDC69C
                7DDBA77F65C0765B528A453532530D0A0A0F0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              Spacing = 0
              TabOrder = 4
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnExcluirEvolucaoClick
            end
            object BtnCancelarEvolucao: TcxButton
              Left = 220
              Top = 2
              Width = 100
              Height = 20
              Caption = 'Cancelar'
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
              Spacing = 0
              TabOrder = 3
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnCancelarEvolucaoClick
            end
            object BtnAlterarEvolucao: TcxButton
              Left = 10
              Top = 2
              Width = 100
              Height = 20
              Caption = 'Alterar'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000405
                05054588A8D41787BBFE537C8FFFAAA9A8FFA7B7BDFFC5CCCFFFD1CCCAFFB1B0
                AFFFAC9B94FF136188FE167EADFE217EAAFD466F85B4000000000000000042A8
                CBDF00ACE0FF00C5FDFF7CA0A9FF41A6C5FF00ADECFF56CFF0FFFFFFFFFFFEFD
                FDFFF7E0D9FF00A1CDFF00D5FFFF43EDFFFF0C7AADFF000000000000000005C2
                F5FF00B5E8FF00BAF1FF7BA9B5FF5096B1FF0091CBFF51B4D2FFEDDCD9FFFDFA
                FAFFFFFDF6FF0095C1FF00C5FDFF3FE0FFFF0577ACFF000000000000000005C9
                FBFF00B2E5FF00B4ECFF7EB2C1FF6696B0FF007FB8FF48A2BEFFD4C0BBFFE8DE
                DBFFFFFFFCFF0097C4FF00C6FDFF43DFFFFF0576A9FF000000000000000005C7
                F9FF00ADE0FF00B2E8FF67B2C8FFBBC3C6FFA7B2B5FF87989DFF7B979EFF81A0
                A8FF9BADB1FF0084A7FF009AC5FF0ED3FFFF0577AAFF000000000000000005C8
                FAFF00ACDFFF00AEE4FF00AFE8FF00B0ECFF00B4F1FF00B6F3FF00B9F6FF00BB
                F8FF00BDF9FF00C1FBFF00C3F9FF00CCFFFF0579ABFF000000000000000005C7
                F9FF00A8DDFF23A9D3FF41A5C3FF3DA5C2FF3BA5C3FF3CA6C3FF3BA6C5FF3BA7
                C5FF39A7C6FF3DA7C6FF22B3D9FF00CBFFFF0577A9FF000000000000000005C6
                F8FF00A4DCFF87AEBBFFFFEAE2FFFDE9E3FFFFECE6FFFDE9E3FFFAE7E1FFF5E1
                DBFFEFDBD5FFF5D7CFFF85A7B0FF00C8FFFF0578AAFF000000000000000005C7
                F9FF009FD8FF80B0BDFFFFF6F3FFD3D5D6FFBBBDBEFFBDBFC0FFBDBFBFFFBDBF
                C0FFC7CACBFFECE1DEFF7DA9B5FF00C7FFFF0578AAFF000000000000000005C6
                F8FF009CD4FF83B2C1FFFFFCF9FFF5F4F4FFEBEBEBFFEDEDEDFFE8E8E8FFE4E4
                E4FFE2E1E1FFEEE4E1FF7FAAB7FF00C6FEFF0577A9FF000000000000000005C5
                F7FF0099D2FF85B5C2FFFFFFFFFFDCDEDFFFC1C4C5FFC3C6C7FFC3C6C7FFC2C5
                C6FFCCCFD0FFF0E6E3FF80ABB8FF00C6FFFF0577A9FF000000000000000005C5
                F8FF0095CDFF88B7C4FFFFFFFFFFFCFBFBFFECECECFFEDEDECFFE7E7E7FFE2E2
                E2FFE3E2E2FFF3E8E5FF80AEBAFF00B7EDFF0580B2FF00000000000000000AC5
                F6FF008EC7FF8BB6C5FFFFFFFFFFE6E8E9FFD0D2D2FFD1D3D4FFCED1D1FFCCCE
                CFFFD4D6D6FFF7ECE9FF82B1BDFF0086AEFF0B94C5FF000000000000000046A7
                BCBC11C6FCFF87C2D0FFD6D5D5FFCDD5D8FFCED5D6FFCAD2D4FFC6CDCFFFBFC7
                CBFFBAC0C3FFBEBEBEFF7EADBBFF11B7EBFF468BA1BC00000000000000000000
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
              OnClick = BtnAlterarEvolucaoClick
            end
            object DbEvolucaoClinica: TcxDBMemo
              Left = 10
              Top = 50
              DataBinding.DataField = 'EVOLUCAOCLINICA'
              DataBinding.DataSource = DsPacienteEvolucaoClinica
              TabOrder = 5
              Height = 95
              Width = 890
            end
          end
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'Receitu'#225'rio'
        ImageIndex = 3
        object GbPacienteReceituario: TcxGroupBox
          Left = 10
          Top = 10
          Caption = ' Receitu'#225'rio do Paciente '
          Style.BorderColor = clBlack
          Style.BorderStyle = ebsSingle
          Style.TextColor = clBlack
          Style.TransparentBorder = True
          StyleDisabled.BorderColor = clBlack
          StyleDisabled.TextColor = clBlack
          TabOrder = 0
          Height = 420
          Width = 920
          object PnlPacienteReceituario: TPanel
            Left = 2
            Top = 20
            Width = 916
            Height = 5
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
          end
          object GridPacienteReceituario: TcxGrid
            Left = 2
            Top = 25
            Width = 916
            Height = 140
            Align = alTop
            TabOrder = 1
            object GridPacienteReceituarioDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = DsPacienteReceituario
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsSelection.CellSelect = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object GridPacienteReceituarioDBTableView1IDAGENDA: TcxGridDBColumn
                DataBinding.FieldName = 'IDAGENDA'
                Width = 100
              end
              object GridPacienteReceituarioDBTableView1DATAINCLUSAO: TcxGridDBColumn
                DataBinding.FieldName = 'DATAINCLUSAO'
                Width = 90
              end
              object GridPacienteReceituarioDBTableView1HORAINCLUSAO: TcxGridDBColumn
                DataBinding.FieldName = 'HORAINCLUSAO'
                Width = 90
              end
              object GridPacienteReceituarioDBTableView1DOUTORNOME: TcxGridDBColumn
                DataBinding.FieldName = 'DOUTORNOME'
                Width = 250
              end
              object GridPacienteReceituarioDBTableView1DOUTORCRM: TcxGridDBColumn
                DataBinding.FieldName = 'DOUTORCRM'
                Width = 80
              end
              object GridPacienteReceituarioDBTableView1DOUTORTELEFONE: TcxGridDBColumn
                DataBinding.FieldName = 'DOUTORTELEFONE'
                Width = 120
              end
              object GridPacienteReceituarioDBTableView1DOUTORCELULAR: TcxGridDBColumn
                DataBinding.FieldName = 'DOUTORCELULAR'
                Width = 120
              end
            end
            object GridPacienteReceituarioLevel1: TcxGridLevel
              GridView = GridPacienteReceituarioDBTableView1
            end
          end
          object PnlPacienteReceituarioPedido: TPanel
            Left = 2
            Top = 165
            Width = 916
            Height = 140
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 2
            object LblMedicamento: TLabel
              Left = 10
              Top = 50
              Width = 74
              Height = 15
              Caption = 'Medicamento'
            end
            object LblMedicamentoUso: TLabel
              Left = 390
              Top = 50
              Width = 23
              Height = 15
              Caption = 'Uso'
            end
            object LblMedicamentoQuantidade: TLabel
              Left = 640
              Top = 50
              Width = 64
              Height = 15
              Caption = 'Quantidade'
            end
            object LblMedicamentoPosologia: TLabel
              Left = 10
              Top = 95
              Width = 56
              Height = 15
              Caption = 'Posologia'
            end
            object BtnSalvarReceituarioPedido: TcxButton
              Left = 114
              Top = 20
              Width = 100
              Height = 20
              Caption = 'Salvar'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000405
                05054588A8D41787BBFE537C8FFFAAA9A8FFA7B7BDFFC5CCCFFFD1CCCAFFB1B0
                AFFFAC9B94FF136188FE167EADFE217EAAFD466F85B4000000000000000042A8
                CBDF00ACE0FF00C5FDFF7CA0A9FF41A6C5FF00ADECFF56CFF0FFFFFFFFFFFEFD
                FDFFF7E0D9FF00A1CDFF00D5FFFF43EDFFFF0C7AADFF000000000000000005C2
                F5FF00B5E8FF00BAF1FF7BA9B5FF5096B1FF0091CBFF51B4D2FFEDDCD9FFFDFA
                FAFFFFFDF6FF0095C1FF00C5FDFF3FE0FFFF0577ACFF000000000000000005C9
                FBFF00B2E5FF00B4ECFF7EB2C1FF6696B0FF007FB8FF48A2BEFFD4C0BBFFE8DE
                DBFFFFFFFCFF0097C4FF00C6FDFF43DFFFFF0576A9FF000000000000000005C7
                F9FF00ADE0FF00B2E8FF67B2C8FFBBC3C6FFA7B2B5FF87989DFF7B979EFF81A0
                A8FF9BADB1FF0084A7FF009AC5FF0ED3FFFF0577AAFF000000000000000005C8
                FAFF00ACDFFF00AEE4FF00AFE8FF00B0ECFF00B4F1FF00B6F3FF00B9F6FF00BB
                F8FF00BDF9FF00C1FBFF00C3F9FF00CCFFFF0579ABFF000000000000000005C7
                F9FF00A8DDFF23A9D3FF41A5C3FF3DA5C2FF3BA5C3FF3CA6C3FF3BA6C5FF3BA7
                C5FF39A7C6FF3DA7C6FF22B3D9FF00CBFFFF0577A9FF000000000000000005C6
                F8FF00A4DCFF87AEBBFFFFEAE2FFFDE9E3FFFFECE6FFFDE9E3FFFAE7E1FFF5E1
                DBFFEFDBD5FFF5D7CFFF85A7B0FF00C8FFFF0578AAFF000000000000000005C7
                F9FF009FD8FF80B0BDFFFFF6F3FFD3D5D6FFBBBDBEFFBDBFC0FFBDBFBFFFBDBF
                C0FFC7CACBFFECE1DEFF7DA9B5FF00C7FFFF0578AAFF000000000000000005C6
                F8FF009CD4FF83B2C1FFFFFCF9FFF5F4F4FFEBEBEBFFEDEDEDFFE8E8E8FFE4E4
                E4FFE2E1E1FFEEE4E1FF7FAAB7FF00C6FEFF0577A9FF000000000000000005C5
                F7FF0099D2FF85B5C2FFFFFFFFFFDCDEDFFFC1C4C5FFC3C6C7FFC3C6C7FFC2C5
                C6FFCCCFD0FFF0E6E3FF80ABB8FF00C6FFFF0577A9FF000000000000000005C5
                F8FF0095CDFF88B7C4FFFFFFFFFFFCFBFBFFECECECFFEDEDECFFE7E7E7FFE2E2
                E2FFE3E2E2FFF3E8E5FF80AEBAFF00B7EDFF0580B2FF00000000000000000AC5
                F6FF008EC7FF8BB6C5FFFFFFFFFFE6E8E9FFD0D2D2FFD1D3D4FFCED1D1FFCCCE
                CFFFD4D6D6FFF7ECE9FF82B1BDFF0086AEFF0B94C5FF000000000000000046A7
                BCBC11C6FCFF87C2D0FFD6D5D5FFCDD5D8FFCED5D6FFCAD2D4FFC6CDCFFFBFC7
                CBFFBAC0C3FFBEBEBEFF7EADBBFF11B7EBFF468BA1BC00000000000000000000
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
              OnClick = BtnSalvarReceituarioPedidoClick
            end
            object BtnIncluirReceituarioPedido: TcxButton
              Left = 798
              Top = 7
              Width = 100
              Height = 20
              Caption = 'Incluir'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000110025004000990B6100E7136B00FE136900FF0E5D
                00EB004000A10014002D00000000000000000000000000000000000000000000
                00000000000000370067027B00F7099000FF079400FF0A8F00FF168600FF2C77
                00FF386A00FF176500FB003A0078000000000000000000000000000000000000
                000000370064038C06FE04A309FF049F09FF33CC66FF66FF99FF66FF99FF66FF
                99FF0B8900FF3A6C00FF266A00FE003900790000000000000000000000000010
                001F09860CF50BA817FF0AA316FF0AA315FF539B51FFFFF8FFFFFFF7FFFF66FF
                99FF009900FF019100FF3B6C00FF176700FB0014002E00000000000000000043
                008E29B037FF0FA923FF11AA23FF10A922FF539B51FFFFF9FFFFFFFAFFFF66FF
                99FF029B06FF009A00FF108900FF396B00FF004000A100000000000000000A75
                0AD938BF4FFF33CC66FF66FF99FF66FF99FF33CC66FFF9F4F9FFFEF7FCFF66FF
                99FF66FF99FF66FF99FF66FF99FF347400FF0D6100EB00000000000000001995
                1FFB42C45DFF539B51FFFCE9F9FFF0E4ECFFF1EBF0FFF1EFF1FFF5F3F4FFFFF8
                FCFFFFF8FFFFFFF4FFFF66FF99FF1D8300FF146D00FF00000000000000001A97
                20FA58CF76FF539B51FFFDECFDFFF2E9F2FFF0EBF0FFECEBECFFEFEEEFFFF8F3
                F8FFFFF8FFFFFFF5FFFF66FF99FF118E00FF126E00FF00000000000000000C79
                0DD479DE99FF539B51FF539B51FF539B51FF8EC18EFFF1EBF1FFF2ECF1FF33CC
                66FF539B51FF539B51FF33CC66FF109403FF0B6500E700000000000000000045
                008670D68DFF51D47CFF2ECA60FF2FC960FF539B51FFF2E8F2FFF0E4EDFF66FF
                99FF14AD2BFF0EA720FF07A312FF129005FF0043009A0000000000000000000E
                0018229D28F18CE8B0FF3ACF6DFF2FCB64FF539B51FFFEECFEFFFCE7F7FF66FF
                99FF16AF2EFF11AA22FF0AA918FF087E03F70013002500000000000000000000
                0000003600553DB64CFD89E8AFFF4CD57BFF219827FF539B51FF539B51FF33CC
                66FF16B02FFF11AF26FF06910BFE003A00680000000000000000000000000000
                00000000000000360055239E29F175DB94FF76E19DFF50D278FF3BC65FFF30C0
                50FF24B239FF07880BF500390064000000000000000000000000000000000000
                00000000000000000000000E001800460086117E11D41F9E26FA1E9B23FB0D7B
                0ED90046008E0012001F00000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              Spacing = 0
              TabOrder = 0
              Visible = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnIncluirReceituarioPedidoClick
            end
            object BtnExcluirReceituarioPedido: TcxButton
              Left = 326
              Top = 20
              Width = 100
              Height = 20
              Caption = 'Excluir'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000100000147352F67835448B8AC704FDDD08851F3DC9158FECF83
                45FDC97935EE9A5516BE381F073E000000000000000000000000000000000000
                0000050404069A7774D2DDC1B7FFD6CFC3FFCDC7BFFFD1C8BDFFB7B1A4FFB4AE
                A1FFCCBAA5FFE9B78AFFD37A28F8060403070000000000000000000000000000
                00005F434384E0C2BFFFFEFCF5FFF8E6E3FFAAB294FFDDC6BDFFDBC9BDFFB6AA
                98FFD0BDA3FFC5A67EFFD18641FF2F1B0A320000000000000000000000000000
                00007C5957A3F0DDD6FFFCE8ECFF89B67CFF23B23BFF18AE38FFB6BD9BFFCDBE
                B1FFE7D2BBFFCEB089FFDB9B5CFF5B3516650000000000000000000000000000
                00009B726CC0FFF6F5FF35AB38FF04BB1FFF20B735FF97C891FF45A142FF3695
                35FFF7DBCCFFD5B590FFEFBD86FFA25E26B80000000000000000000000000000
                0000C3998CD8F3F0DAFF30AE32FFC0D3B0FFDCD7C4FFFFE6ECFF29AE33FF1AA8
                2BFFF8D8CDFFBA9D78FFC79A63FFC37439DC0000000000000000000000000302
                0203DDB4A6F8ABCB99FF56C86DFF4A8942FFFFF0F4FF6BB85FFF2DD451FF2D9C
                2FFFD3BDABFFD4B794FFC49762FFD68348FA040302050000000000000000241D
                1A27F9D4C5FF78C571FF38EE6BFF35B041FFC5C8B4FF76C370FF2FE760FF5C9C
                4EFFEFD9CAFFEED1B0FFD2A672FFD88D4DFF2619113100000000000000004E40
                3754FADDCDFFD9DBC1FF75C16CFF00B215FF008E00FFE1E0B6FFAFB794FFCBB4
                ACFFC2B3A0FFEACFADFFEBBF8DFFDB9C63FF5135296400000000000000007866
                5480F7E3D3FFFFE9DCFFFFE9DBFFFFE7D6FFFFEBD7FFFFF0D2FFFDE9D2FFE7DB
                C9FFE1D4BCFFFDE1BCFFF3C894FFE3A25DFF89593FA90000000000000000A48D
                73ABF6EBE0FFFBEBD9FFFEF0DEFFFFF9EEFFF8E3D3FFF3DAC7FFEBC4A5FFE8BE
                A1FFE6B79BFFE0AD90FFD8A58DFFD79565FFAA7155D30000000000000000D7B3
                89DEFBDBACFFF1C58FFFEEC394FFF0CB9EFFF6D8B2FFFCE5C3FFFFEFD3FFFFF4
                DEFFFFFAEBFFFFFFFDFFFFFFFFFFFCFBFFFFC49698F10000000000000000E9BC
                85F4CB6603FFDA934AFFE8B37EFFF0C99EFFF6DAB8FFFBE7C8FFFFF2D8FFFFF7
                E2FFFFFEEFFFFEFAF2FFF4E6E3FFDDBEB9F56C4F4E790000000000000000332E
                2533A28966A9CBA678D4E4BA88EDEEC694FBF1C799FFE8BF96F8DBB28DEDC69C
                7DDBA77F65C0765B528A453532530D0A0A0F0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              Spacing = 0
              TabOrder = 4
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnExcluirReceituarioPedidoClick
            end
            object BtnCancelarReceituarioPedido: TcxButton
              Left = 220
              Top = 20
              Width = 100
              Height = 20
              Caption = 'Cancelar'
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
              Spacing = 0
              TabOrder = 3
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnCancelarReceituarioPedidoClick
            end
            object DbCodigoMedicamento: TcxDBButtonEdit
              Left = 10
              Top = 65
              DataBinding.DataField = 'IDMEDICAMENTO'
              DataBinding.DataSource = DsPacienteReceituarioPedido
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = DbCodigoMedicamentoPropertiesButtonClick
              TabOrder = 5
              OnExit = DbCodigoMedicamentoExit
              Width = 70
            end
            object DbDescricaoMedicamento: TcxDBTextEdit
              Left = 80
              Top = 65
              TabStop = False
              DataBinding.DataField = 'MEDICAMENTO'
              DataBinding.DataSource = DsPacienteReceituarioPedido
              Properties.ReadOnly = True
              Style.Color = clSilver
              TabOrder = 6
              Width = 300
            end
            object BtnAlterarReceituarioPedido: TcxButton
              Left = 10
              Top = 20
              Width = 100
              Height = 20
              Caption = 'Alterar'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000405
                05054588A8D41787BBFE537C8FFFAAA9A8FFA7B7BDFFC5CCCFFFD1CCCAFFB1B0
                AFFFAC9B94FF136188FE167EADFE217EAAFD466F85B4000000000000000042A8
                CBDF00ACE0FF00C5FDFF7CA0A9FF41A6C5FF00ADECFF56CFF0FFFFFFFFFFFEFD
                FDFFF7E0D9FF00A1CDFF00D5FFFF43EDFFFF0C7AADFF000000000000000005C2
                F5FF00B5E8FF00BAF1FF7BA9B5FF5096B1FF0091CBFF51B4D2FFEDDCD9FFFDFA
                FAFFFFFDF6FF0095C1FF00C5FDFF3FE0FFFF0577ACFF000000000000000005C9
                FBFF00B2E5FF00B4ECFF7EB2C1FF6696B0FF007FB8FF48A2BEFFD4C0BBFFE8DE
                DBFFFFFFFCFF0097C4FF00C6FDFF43DFFFFF0576A9FF000000000000000005C7
                F9FF00ADE0FF00B2E8FF67B2C8FFBBC3C6FFA7B2B5FF87989DFF7B979EFF81A0
                A8FF9BADB1FF0084A7FF009AC5FF0ED3FFFF0577AAFF000000000000000005C8
                FAFF00ACDFFF00AEE4FF00AFE8FF00B0ECFF00B4F1FF00B6F3FF00B9F6FF00BB
                F8FF00BDF9FF00C1FBFF00C3F9FF00CCFFFF0579ABFF000000000000000005C7
                F9FF00A8DDFF23A9D3FF41A5C3FF3DA5C2FF3BA5C3FF3CA6C3FF3BA6C5FF3BA7
                C5FF39A7C6FF3DA7C6FF22B3D9FF00CBFFFF0577A9FF000000000000000005C6
                F8FF00A4DCFF87AEBBFFFFEAE2FFFDE9E3FFFFECE6FFFDE9E3FFFAE7E1FFF5E1
                DBFFEFDBD5FFF5D7CFFF85A7B0FF00C8FFFF0578AAFF000000000000000005C7
                F9FF009FD8FF80B0BDFFFFF6F3FFD3D5D6FFBBBDBEFFBDBFC0FFBDBFBFFFBDBF
                C0FFC7CACBFFECE1DEFF7DA9B5FF00C7FFFF0578AAFF000000000000000005C6
                F8FF009CD4FF83B2C1FFFFFCF9FFF5F4F4FFEBEBEBFFEDEDEDFFE8E8E8FFE4E4
                E4FFE2E1E1FFEEE4E1FF7FAAB7FF00C6FEFF0577A9FF000000000000000005C5
                F7FF0099D2FF85B5C2FFFFFFFFFFDCDEDFFFC1C4C5FFC3C6C7FFC3C6C7FFC2C5
                C6FFCCCFD0FFF0E6E3FF80ABB8FF00C6FFFF0577A9FF000000000000000005C5
                F8FF0095CDFF88B7C4FFFFFFFFFFFCFBFBFFECECECFFEDEDECFFE7E7E7FFE2E2
                E2FFE3E2E2FFF3E8E5FF80AEBAFF00B7EDFF0580B2FF00000000000000000AC5
                F6FF008EC7FF8BB6C5FFFFFFFFFFE6E8E9FFD0D2D2FFD1D3D4FFCED1D1FFCCCE
                CFFFD4D6D6FFF7ECE9FF82B1BDFF0086AEFF0B94C5FF000000000000000046A7
                BCBC11C6FCFF87C2D0FFD6D5D5FFCDD5D8FFCED5D6FFCAD2D4FFC6CDCFFFBFC7
                CBFFBAC0C3FFBEBEBEFF7EADBBFF11B7EBFF468BA1BC00000000000000000000
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
              OnClick = BtnAlterarReceituarioPedidoClick
            end
            object DbDescricaoMedicamentoUso: TcxDBTextEdit
              Left = 390
              Top = 65
              TabStop = False
              DataBinding.DataField = 'MEDICAMENTOUSO'
              DataBinding.DataSource = DsPacienteReceituarioPedido
              Properties.ReadOnly = True
              Style.Color = clSilver
              TabOrder = 7
              Width = 240
            end
            object DbDescricaoMedicamentoQuantidade: TcxDBTextEdit
              Left = 640
              Top = 65
              TabStop = False
              DataBinding.DataField = 'MEDICAMENTOQTDE'
              DataBinding.DataSource = DsPacienteReceituarioPedido
              Properties.ReadOnly = True
              Style.Color = clSilver
              TabOrder = 8
              Width = 240
            end
            object DbMedicamentoPosologia: TcxDBTextEdit
              Left = 10
              Top = 110
              DataBinding.DataField = 'POSOLOGIA'
              DataBinding.DataSource = DsPacienteReceituarioPedido
              TabOrder = 9
              Width = 870
            end
          end
          object GridPacienteReceituarioPedido: TcxGrid
            Left = 2
            Top = 305
            Width = 916
            Height = 113
            Align = alClient
            TabOrder = 3
            object GridPacienteReceituarioPedidoDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = DsPacienteReceituarioPedido
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsSelection.CellSelect = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object GridPacienteReceituarioPedidoDBTableView1MEDICAMENTO: TcxGridDBColumn
                DataBinding.FieldName = 'MEDICAMENTO'
                Width = 240
              end
              object GridPacienteReceituarioPedidoDBTableView1MEDICAMENTOUSO: TcxGridDBColumn
                DataBinding.FieldName = 'MEDICAMENTOUSO'
                Width = 180
              end
              object GridPacienteReceituarioPedidoDBTableView1MEDICAMENTOQTDE: TcxGridDBColumn
                DataBinding.FieldName = 'MEDICAMENTOQTDE'
                Width = 180
              end
              object GridPacienteReceituarioPedidoDBTableView1POSOLOGIA: TcxGridDBColumn
                DataBinding.FieldName = 'POSOLOGIA'
                Width = 280
              end
            end
            object GridPacienteReceituarioPedidoLevel1: TcxGridLevel
              GridView = GridPacienteReceituarioPedidoDBTableView1
            end
          end
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'Exame'
        ImageIndex = 4
        object GbPacienteExame: TcxGroupBox
          Left = 10
          Top = 10
          Caption = ' Exame do Paciente '
          Style.BorderColor = clBlack
          Style.BorderStyle = ebsSingle
          Style.TextColor = clBlack
          Style.TransparentBorder = True
          StyleDisabled.BorderColor = clBlack
          StyleDisabled.TextColor = clBlack
          TabOrder = 0
          Height = 420
          Width = 920
          object Panel1: TPanel
            Left = 2
            Top = 20
            Width = 916
            Height = 5
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
          end
          object GridPacienteExame: TcxGrid
            Left = 2
            Top = 25
            Width = 916
            Height = 140
            Align = alTop
            TabOrder = 1
            object GridPacienteExameDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = DsPacienteExame
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsSelection.CellSelect = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object GridPacienteExameDBTableView1IDAGENDA: TcxGridDBColumn
                DataBinding.FieldName = 'IDAGENDA'
                Width = 100
              end
              object GridPacienteExameDBTableView1DATAINCLUSAO: TcxGridDBColumn
                DataBinding.FieldName = 'DATAINCLUSAO'
                Width = 90
              end
              object GridPacienteExameDBTableView1HORAINCLUSAO: TcxGridDBColumn
                DataBinding.FieldName = 'HORAINCLUSAO'
                Width = 90
              end
              object GridPacienteExameDBTableView1DOUTORNOME: TcxGridDBColumn
                DataBinding.FieldName = 'DOUTORNOME'
                Width = 250
              end
              object GridPacienteExameDBTableView1DOUTORCRM: TcxGridDBColumn
                DataBinding.FieldName = 'DOUTORCRM'
                Width = 80
              end
              object GridPacienteExameDBTableView1DOUTORTELEFONE: TcxGridDBColumn
                DataBinding.FieldName = 'DOUTORTELEFONE'
                Width = 120
              end
              object GridPacienteExameDBTableView1DOUTORCELULAR: TcxGridDBColumn
                DataBinding.FieldName = 'DOUTORCELULAR'
                Width = 120
              end
            end
            object GridPacienteExameLevel1: TcxGridLevel
              GridView = GridPacienteExameDBTableView1
            end
          end
          object Panel2: TPanel
            Left = 2
            Top = 165
            Width = 916
            Height = 108
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 2
            object Label1: TLabel
              Left = 10
              Top = 50
              Width = 74
              Height = 15
              Caption = 'Medicamento'
            end
            object BtnSalvarExamePedido: TcxButton
              Left = 114
              Top = 20
              Width = 100
              Height = 20
              Caption = 'Salvar'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000405
                05054588A8D41787BBFE537C8FFFAAA9A8FFA7B7BDFFC5CCCFFFD1CCCAFFB1B0
                AFFFAC9B94FF136188FE167EADFE217EAAFD466F85B4000000000000000042A8
                CBDF00ACE0FF00C5FDFF7CA0A9FF41A6C5FF00ADECFF56CFF0FFFFFFFFFFFEFD
                FDFFF7E0D9FF00A1CDFF00D5FFFF43EDFFFF0C7AADFF000000000000000005C2
                F5FF00B5E8FF00BAF1FF7BA9B5FF5096B1FF0091CBFF51B4D2FFEDDCD9FFFDFA
                FAFFFFFDF6FF0095C1FF00C5FDFF3FE0FFFF0577ACFF000000000000000005C9
                FBFF00B2E5FF00B4ECFF7EB2C1FF6696B0FF007FB8FF48A2BEFFD4C0BBFFE8DE
                DBFFFFFFFCFF0097C4FF00C6FDFF43DFFFFF0576A9FF000000000000000005C7
                F9FF00ADE0FF00B2E8FF67B2C8FFBBC3C6FFA7B2B5FF87989DFF7B979EFF81A0
                A8FF9BADB1FF0084A7FF009AC5FF0ED3FFFF0577AAFF000000000000000005C8
                FAFF00ACDFFF00AEE4FF00AFE8FF00B0ECFF00B4F1FF00B6F3FF00B9F6FF00BB
                F8FF00BDF9FF00C1FBFF00C3F9FF00CCFFFF0579ABFF000000000000000005C7
                F9FF00A8DDFF23A9D3FF41A5C3FF3DA5C2FF3BA5C3FF3CA6C3FF3BA6C5FF3BA7
                C5FF39A7C6FF3DA7C6FF22B3D9FF00CBFFFF0577A9FF000000000000000005C6
                F8FF00A4DCFF87AEBBFFFFEAE2FFFDE9E3FFFFECE6FFFDE9E3FFFAE7E1FFF5E1
                DBFFEFDBD5FFF5D7CFFF85A7B0FF00C8FFFF0578AAFF000000000000000005C7
                F9FF009FD8FF80B0BDFFFFF6F3FFD3D5D6FFBBBDBEFFBDBFC0FFBDBFBFFFBDBF
                C0FFC7CACBFFECE1DEFF7DA9B5FF00C7FFFF0578AAFF000000000000000005C6
                F8FF009CD4FF83B2C1FFFFFCF9FFF5F4F4FFEBEBEBFFEDEDEDFFE8E8E8FFE4E4
                E4FFE2E1E1FFEEE4E1FF7FAAB7FF00C6FEFF0577A9FF000000000000000005C5
                F7FF0099D2FF85B5C2FFFFFFFFFFDCDEDFFFC1C4C5FFC3C6C7FFC3C6C7FFC2C5
                C6FFCCCFD0FFF0E6E3FF80ABB8FF00C6FFFF0577A9FF000000000000000005C5
                F8FF0095CDFF88B7C4FFFFFFFFFFFCFBFBFFECECECFFEDEDECFFE7E7E7FFE2E2
                E2FFE3E2E2FFF3E8E5FF80AEBAFF00B7EDFF0580B2FF00000000000000000AC5
                F6FF008EC7FF8BB6C5FFFFFFFFFFE6E8E9FFD0D2D2FFD1D3D4FFCED1D1FFCCCE
                CFFFD4D6D6FFF7ECE9FF82B1BDFF0086AEFF0B94C5FF000000000000000046A7
                BCBC11C6FCFF87C2D0FFD6D5D5FFCDD5D8FFCED5D6FFCAD2D4FFC6CDCFFFBFC7
                CBFFBAC0C3FFBEBEBEFF7EADBBFF11B7EBFF468BA1BC00000000000000000000
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
              OnClick = BtnSalvarExamePedidoClick
            end
            object BtnIncluirExamePedido: TcxButton
              Left = 802
              Top = 4
              Width = 100
              Height = 20
              Caption = 'Incluir'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000110025004000990B6100E7136B00FE136900FF0E5D
                00EB004000A10014002D00000000000000000000000000000000000000000000
                00000000000000370067027B00F7099000FF079400FF0A8F00FF168600FF2C77
                00FF386A00FF176500FB003A0078000000000000000000000000000000000000
                000000370064038C06FE04A309FF049F09FF33CC66FF66FF99FF66FF99FF66FF
                99FF0B8900FF3A6C00FF266A00FE003900790000000000000000000000000010
                001F09860CF50BA817FF0AA316FF0AA315FF539B51FFFFF8FFFFFFF7FFFF66FF
                99FF009900FF019100FF3B6C00FF176700FB0014002E00000000000000000043
                008E29B037FF0FA923FF11AA23FF10A922FF539B51FFFFF9FFFFFFFAFFFF66FF
                99FF029B06FF009A00FF108900FF396B00FF004000A100000000000000000A75
                0AD938BF4FFF33CC66FF66FF99FF66FF99FF33CC66FFF9F4F9FFFEF7FCFF66FF
                99FF66FF99FF66FF99FF66FF99FF347400FF0D6100EB00000000000000001995
                1FFB42C45DFF539B51FFFCE9F9FFF0E4ECFFF1EBF0FFF1EFF1FFF5F3F4FFFFF8
                FCFFFFF8FFFFFFF4FFFF66FF99FF1D8300FF146D00FF00000000000000001A97
                20FA58CF76FF539B51FFFDECFDFFF2E9F2FFF0EBF0FFECEBECFFEFEEEFFFF8F3
                F8FFFFF8FFFFFFF5FFFF66FF99FF118E00FF126E00FF00000000000000000C79
                0DD479DE99FF539B51FF539B51FF539B51FF8EC18EFFF1EBF1FFF2ECF1FF33CC
                66FF539B51FF539B51FF33CC66FF109403FF0B6500E700000000000000000045
                008670D68DFF51D47CFF2ECA60FF2FC960FF539B51FFF2E8F2FFF0E4EDFF66FF
                99FF14AD2BFF0EA720FF07A312FF129005FF0043009A0000000000000000000E
                0018229D28F18CE8B0FF3ACF6DFF2FCB64FF539B51FFFEECFEFFFCE7F7FF66FF
                99FF16AF2EFF11AA22FF0AA918FF087E03F70013002500000000000000000000
                0000003600553DB64CFD89E8AFFF4CD57BFF219827FF539B51FF539B51FF33CC
                66FF16B02FFF11AF26FF06910BFE003A00680000000000000000000000000000
                00000000000000360055239E29F175DB94FF76E19DFF50D278FF3BC65FFF30C0
                50FF24B239FF07880BF500390064000000000000000000000000000000000000
                00000000000000000000000E001800460086117E11D41F9E26FA1E9B23FB0D7B
                0ED90046008E0012001F00000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              Spacing = 0
              TabOrder = 0
              Visible = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnIncluirExamePedidoClick
            end
            object BtnExcluirExamePedido: TcxButton
              Left = 326
              Top = 20
              Width = 100
              Height = 20
              Caption = 'Excluir'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000100000147352F67835448B8AC704FDDD08851F3DC9158FECF83
                45FDC97935EE9A5516BE381F073E000000000000000000000000000000000000
                0000050404069A7774D2DDC1B7FFD6CFC3FFCDC7BFFFD1C8BDFFB7B1A4FFB4AE
                A1FFCCBAA5FFE9B78AFFD37A28F8060403070000000000000000000000000000
                00005F434384E0C2BFFFFEFCF5FFF8E6E3FFAAB294FFDDC6BDFFDBC9BDFFB6AA
                98FFD0BDA3FFC5A67EFFD18641FF2F1B0A320000000000000000000000000000
                00007C5957A3F0DDD6FFFCE8ECFF89B67CFF23B23BFF18AE38FFB6BD9BFFCDBE
                B1FFE7D2BBFFCEB089FFDB9B5CFF5B3516650000000000000000000000000000
                00009B726CC0FFF6F5FF35AB38FF04BB1FFF20B735FF97C891FF45A142FF3695
                35FFF7DBCCFFD5B590FFEFBD86FFA25E26B80000000000000000000000000000
                0000C3998CD8F3F0DAFF30AE32FFC0D3B0FFDCD7C4FFFFE6ECFF29AE33FF1AA8
                2BFFF8D8CDFFBA9D78FFC79A63FFC37439DC0000000000000000000000000302
                0203DDB4A6F8ABCB99FF56C86DFF4A8942FFFFF0F4FF6BB85FFF2DD451FF2D9C
                2FFFD3BDABFFD4B794FFC49762FFD68348FA040302050000000000000000241D
                1A27F9D4C5FF78C571FF38EE6BFF35B041FFC5C8B4FF76C370FF2FE760FF5C9C
                4EFFEFD9CAFFEED1B0FFD2A672FFD88D4DFF2619113100000000000000004E40
                3754FADDCDFFD9DBC1FF75C16CFF00B215FF008E00FFE1E0B6FFAFB794FFCBB4
                ACFFC2B3A0FFEACFADFFEBBF8DFFDB9C63FF5135296400000000000000007866
                5480F7E3D3FFFFE9DCFFFFE9DBFFFFE7D6FFFFEBD7FFFFF0D2FFFDE9D2FFE7DB
                C9FFE1D4BCFFFDE1BCFFF3C894FFE3A25DFF89593FA90000000000000000A48D
                73ABF6EBE0FFFBEBD9FFFEF0DEFFFFF9EEFFF8E3D3FFF3DAC7FFEBC4A5FFE8BE
                A1FFE6B79BFFE0AD90FFD8A58DFFD79565FFAA7155D30000000000000000D7B3
                89DEFBDBACFFF1C58FFFEEC394FFF0CB9EFFF6D8B2FFFCE5C3FFFFEFD3FFFFF4
                DEFFFFFAEBFFFFFFFDFFFFFFFFFFFCFBFFFFC49698F10000000000000000E9BC
                85F4CB6603FFDA934AFFE8B37EFFF0C99EFFF6DAB8FFFBE7C8FFFFF2D8FFFFF7
                E2FFFFFEEFFFFEFAF2FFF4E6E3FFDDBEB9F56C4F4E790000000000000000332E
                2533A28966A9CBA678D4E4BA88EDEEC694FBF1C799FFE8BF96F8DBB28DEDC69C
                7DDBA77F65C0765B528A453532530D0A0A0F0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              Spacing = 0
              TabOrder = 4
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnExcluirExamePedidoClick
            end
            object BtnCancelarExamePedido: TcxButton
              Left = 220
              Top = 20
              Width = 100
              Height = 20
              Caption = 'Cancelar'
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
              Spacing = 0
              TabOrder = 3
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnCancelarExamePedidoClick
            end
            object DbCodigoExame: TcxDBButtonEdit
              Left = 10
              Top = 65
              DataBinding.DataField = 'IDEXAME'
              DataBinding.DataSource = DsPacienteExamePedido
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = DbCodigoExamePropertiesButtonClick
              TabOrder = 5
              OnExit = DbCodigoExameExit
              Width = 70
            end
            object DbDescricaoExame: TcxDBTextEdit
              Left = 80
              Top = 65
              TabStop = False
              DataBinding.DataField = 'EXAMEDESCRICAO'
              DataBinding.DataSource = DsPacienteExamePedido
              Properties.ReadOnly = True
              Style.Color = clSilver
              TabOrder = 6
              Width = 300
            end
            object BtnAlterarExamePedido: TcxButton
              Left = 10
              Top = 20
              Width = 100
              Height = 20
              Caption = 'Alterar'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000405
                05054588A8D41787BBFE537C8FFFAAA9A8FFA7B7BDFFC5CCCFFFD1CCCAFFB1B0
                AFFFAC9B94FF136188FE167EADFE217EAAFD466F85B4000000000000000042A8
                CBDF00ACE0FF00C5FDFF7CA0A9FF41A6C5FF00ADECFF56CFF0FFFFFFFFFFFEFD
                FDFFF7E0D9FF00A1CDFF00D5FFFF43EDFFFF0C7AADFF000000000000000005C2
                F5FF00B5E8FF00BAF1FF7BA9B5FF5096B1FF0091CBFF51B4D2FFEDDCD9FFFDFA
                FAFFFFFDF6FF0095C1FF00C5FDFF3FE0FFFF0577ACFF000000000000000005C9
                FBFF00B2E5FF00B4ECFF7EB2C1FF6696B0FF007FB8FF48A2BEFFD4C0BBFFE8DE
                DBFFFFFFFCFF0097C4FF00C6FDFF43DFFFFF0576A9FF000000000000000005C7
                F9FF00ADE0FF00B2E8FF67B2C8FFBBC3C6FFA7B2B5FF87989DFF7B979EFF81A0
                A8FF9BADB1FF0084A7FF009AC5FF0ED3FFFF0577AAFF000000000000000005C8
                FAFF00ACDFFF00AEE4FF00AFE8FF00B0ECFF00B4F1FF00B6F3FF00B9F6FF00BB
                F8FF00BDF9FF00C1FBFF00C3F9FF00CCFFFF0579ABFF000000000000000005C7
                F9FF00A8DDFF23A9D3FF41A5C3FF3DA5C2FF3BA5C3FF3CA6C3FF3BA6C5FF3BA7
                C5FF39A7C6FF3DA7C6FF22B3D9FF00CBFFFF0577A9FF000000000000000005C6
                F8FF00A4DCFF87AEBBFFFFEAE2FFFDE9E3FFFFECE6FFFDE9E3FFFAE7E1FFF5E1
                DBFFEFDBD5FFF5D7CFFF85A7B0FF00C8FFFF0578AAFF000000000000000005C7
                F9FF009FD8FF80B0BDFFFFF6F3FFD3D5D6FFBBBDBEFFBDBFC0FFBDBFBFFFBDBF
                C0FFC7CACBFFECE1DEFF7DA9B5FF00C7FFFF0578AAFF000000000000000005C6
                F8FF009CD4FF83B2C1FFFFFCF9FFF5F4F4FFEBEBEBFFEDEDEDFFE8E8E8FFE4E4
                E4FFE2E1E1FFEEE4E1FF7FAAB7FF00C6FEFF0577A9FF000000000000000005C5
                F7FF0099D2FF85B5C2FFFFFFFFFFDCDEDFFFC1C4C5FFC3C6C7FFC3C6C7FFC2C5
                C6FFCCCFD0FFF0E6E3FF80ABB8FF00C6FFFF0577A9FF000000000000000005C5
                F8FF0095CDFF88B7C4FFFFFFFFFFFCFBFBFFECECECFFEDEDECFFE7E7E7FFE2E2
                E2FFE3E2E2FFF3E8E5FF80AEBAFF00B7EDFF0580B2FF00000000000000000AC5
                F6FF008EC7FF8BB6C5FFFFFFFFFFE6E8E9FFD0D2D2FFD1D3D4FFCED1D1FFCCCE
                CFFFD4D6D6FFF7ECE9FF82B1BDFF0086AEFF0B94C5FF000000000000000046A7
                BCBC11C6FCFF87C2D0FFD6D5D5FFCDD5D8FFCED5D6FFCAD2D4FFC6CDCFFFBFC7
                CBFFBAC0C3FFBEBEBEFF7EADBBFF11B7EBFF468BA1BC00000000000000000000
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
              OnClick = BtnAlterarExamePedidoClick
            end
          end
          object GridPacienteExamePedido: TcxGrid
            Left = 2
            Top = 273
            Width = 916
            Height = 145
            Align = alClient
            TabOrder = 3
            object GridPacienteExamePedidoDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = DsPacienteExamePedido
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsSelection.CellSelect = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object GridPacienteExamePedidoDBTableView1EXAMEDESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'EXAMEDESCRICAO'
              end
            end
            object GridPacienteExamePedidoLevel1: TcxGridLevel
              GridView = GridPacienteExamePedidoDBTableView1
            end
          end
        end
      end
      object cxTabSheet6: TcxTabSheet
        Caption = 'Fotos'
        ImageIndex = 5
        object GbFotoPaciente: TcxGroupBox
          Left = 3
          Top = 15
          Caption = ' Foto do Paciente '
          Style.BorderColor = clBlack
          Style.BorderStyle = ebsSingle
          Style.TextColor = clBlack
          Style.TransparentBorder = True
          StyleDisabled.BorderColor = clBlack
          StyleDisabled.TextColor = clBlack
          TabOrder = 0
          Height = 420
          Width = 920
          object Panel3: TPanel
            Left = 2
            Top = 20
            Width = 916
            Height = 5
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
          end
          object GridPacinteFoto: TcxGrid
            Left = 2
            Top = 25
            Width = 916
            Height = 140
            Align = alTop
            TabOrder = 1
            object GridPacinteFotoDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = DsPacienteFoto
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsSelection.CellSelect = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object GridPacinteFotoDBTableView1IDAGENDA: TcxGridDBColumn
                DataBinding.FieldName = 'IDAGENDA'
                Width = 100
              end
              object GridPacinteFotoDBTableView1DATAINCLUSAO: TcxGridDBColumn
                DataBinding.FieldName = 'DATAINCLUSAO'
                Width = 90
              end
              object GridPacinteFotoDBTableView1HORAINCLUSAO: TcxGridDBColumn
                DataBinding.FieldName = 'HORAINCLUSAO'
                Width = 90
              end
              object GridPacinteFotoDBTableView1DOUTORNOME: TcxGridDBColumn
                DataBinding.FieldName = 'DOUTORNOME'
                Width = 250
              end
              object GridPacinteFotoDBTableView1DOUTORCRM: TcxGridDBColumn
                DataBinding.FieldName = 'DOUTORCRM'
                Width = 80
              end
              object GridPacinteFotoDBTableView1DOUTORTELEFONE: TcxGridDBColumn
                DataBinding.FieldName = 'DOUTORTELEFONE'
                Width = 120
              end
              object GridPacinteFotoDBTableView1DOUTORCELULAR: TcxGridDBColumn
                DataBinding.FieldName = 'DOUTORCELULAR'
                Width = 120
              end
            end
            object GridPacinteFotoLevel1: TcxGridLevel
              GridView = GridPacinteFotoDBTableView1
            end
          end
          object Panel4: TPanel
            Left = 2
            Top = 165
            Width = 916
            Height = 253
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 2
            object cxButton1: TcxButton
              Left = 114
              Top = 20
              Width = 100
              Height = 20
              Caption = 'Salvar'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000405
                05054588A8D41787BBFE537C8FFFAAA9A8FFA7B7BDFFC5CCCFFFD1CCCAFFB1B0
                AFFFAC9B94FF136188FE167EADFE217EAAFD466F85B4000000000000000042A8
                CBDF00ACE0FF00C5FDFF7CA0A9FF41A6C5FF00ADECFF56CFF0FFFFFFFFFFFEFD
                FDFFF7E0D9FF00A1CDFF00D5FFFF43EDFFFF0C7AADFF000000000000000005C2
                F5FF00B5E8FF00BAF1FF7BA9B5FF5096B1FF0091CBFF51B4D2FFEDDCD9FFFDFA
                FAFFFFFDF6FF0095C1FF00C5FDFF3FE0FFFF0577ACFF000000000000000005C9
                FBFF00B2E5FF00B4ECFF7EB2C1FF6696B0FF007FB8FF48A2BEFFD4C0BBFFE8DE
                DBFFFFFFFCFF0097C4FF00C6FDFF43DFFFFF0576A9FF000000000000000005C7
                F9FF00ADE0FF00B2E8FF67B2C8FFBBC3C6FFA7B2B5FF87989DFF7B979EFF81A0
                A8FF9BADB1FF0084A7FF009AC5FF0ED3FFFF0577AAFF000000000000000005C8
                FAFF00ACDFFF00AEE4FF00AFE8FF00B0ECFF00B4F1FF00B6F3FF00B9F6FF00BB
                F8FF00BDF9FF00C1FBFF00C3F9FF00CCFFFF0579ABFF000000000000000005C7
                F9FF00A8DDFF23A9D3FF41A5C3FF3DA5C2FF3BA5C3FF3CA6C3FF3BA6C5FF3BA7
                C5FF39A7C6FF3DA7C6FF22B3D9FF00CBFFFF0577A9FF000000000000000005C6
                F8FF00A4DCFF87AEBBFFFFEAE2FFFDE9E3FFFFECE6FFFDE9E3FFFAE7E1FFF5E1
                DBFFEFDBD5FFF5D7CFFF85A7B0FF00C8FFFF0578AAFF000000000000000005C7
                F9FF009FD8FF80B0BDFFFFF6F3FFD3D5D6FFBBBDBEFFBDBFC0FFBDBFBFFFBDBF
                C0FFC7CACBFFECE1DEFF7DA9B5FF00C7FFFF0578AAFF000000000000000005C6
                F8FF009CD4FF83B2C1FFFFFCF9FFF5F4F4FFEBEBEBFFEDEDEDFFE8E8E8FFE4E4
                E4FFE2E1E1FFEEE4E1FF7FAAB7FF00C6FEFF0577A9FF000000000000000005C5
                F7FF0099D2FF85B5C2FFFFFFFFFFDCDEDFFFC1C4C5FFC3C6C7FFC3C6C7FFC2C5
                C6FFCCCFD0FFF0E6E3FF80ABB8FF00C6FFFF0577A9FF000000000000000005C5
                F8FF0095CDFF88B7C4FFFFFFFFFFFCFBFBFFECECECFFEDEDECFFE7E7E7FFE2E2
                E2FFE3E2E2FFF3E8E5FF80AEBAFF00B7EDFF0580B2FF00000000000000000AC5
                F6FF008EC7FF8BB6C5FFFFFFFFFFE6E8E9FFD0D2D2FFD1D3D4FFCED1D1FFCCCE
                CFFFD4D6D6FFF7ECE9FF82B1BDFF0086AEFF0B94C5FF000000000000000046A7
                BCBC11C6FCFF87C2D0FFD6D5D5FFCDD5D8FFCED5D6FFCAD2D4FFC6CDCFFFBFC7
                CBFFBAC0C3FFBEBEBEFF7EADBBFF11B7EBFF468BA1BC00000000000000000000
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
              OnClick = BtnSalvarExamePedidoClick
            end
            object cxButton2: TcxButton
              Left = 802
              Top = 4
              Width = 100
              Height = 20
              Caption = 'Incluir'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000110025004000990B6100E7136B00FE136900FF0E5D
                00EB004000A10014002D00000000000000000000000000000000000000000000
                00000000000000370067027B00F7099000FF079400FF0A8F00FF168600FF2C77
                00FF386A00FF176500FB003A0078000000000000000000000000000000000000
                000000370064038C06FE04A309FF049F09FF33CC66FF66FF99FF66FF99FF66FF
                99FF0B8900FF3A6C00FF266A00FE003900790000000000000000000000000010
                001F09860CF50BA817FF0AA316FF0AA315FF539B51FFFFF8FFFFFFF7FFFF66FF
                99FF009900FF019100FF3B6C00FF176700FB0014002E00000000000000000043
                008E29B037FF0FA923FF11AA23FF10A922FF539B51FFFFF9FFFFFFFAFFFF66FF
                99FF029B06FF009A00FF108900FF396B00FF004000A100000000000000000A75
                0AD938BF4FFF33CC66FF66FF99FF66FF99FF33CC66FFF9F4F9FFFEF7FCFF66FF
                99FF66FF99FF66FF99FF66FF99FF347400FF0D6100EB00000000000000001995
                1FFB42C45DFF539B51FFFCE9F9FFF0E4ECFFF1EBF0FFF1EFF1FFF5F3F4FFFFF8
                FCFFFFF8FFFFFFF4FFFF66FF99FF1D8300FF146D00FF00000000000000001A97
                20FA58CF76FF539B51FFFDECFDFFF2E9F2FFF0EBF0FFECEBECFFEFEEEFFFF8F3
                F8FFFFF8FFFFFFF5FFFF66FF99FF118E00FF126E00FF00000000000000000C79
                0DD479DE99FF539B51FF539B51FF539B51FF8EC18EFFF1EBF1FFF2ECF1FF33CC
                66FF539B51FF539B51FF33CC66FF109403FF0B6500E700000000000000000045
                008670D68DFF51D47CFF2ECA60FF2FC960FF539B51FFF2E8F2FFF0E4EDFF66FF
                99FF14AD2BFF0EA720FF07A312FF129005FF0043009A0000000000000000000E
                0018229D28F18CE8B0FF3ACF6DFF2FCB64FF539B51FFFEECFEFFFCE7F7FF66FF
                99FF16AF2EFF11AA22FF0AA918FF087E03F70013002500000000000000000000
                0000003600553DB64CFD89E8AFFF4CD57BFF219827FF539B51FF539B51FF33CC
                66FF16B02FFF11AF26FF06910BFE003A00680000000000000000000000000000
                00000000000000360055239E29F175DB94FF76E19DFF50D278FF3BC65FFF30C0
                50FF24B239FF07880BF500390064000000000000000000000000000000000000
                00000000000000000000000E001800460086117E11D41F9E26FA1E9B23FB0D7B
                0ED90046008E0012001F00000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              Spacing = 0
              TabOrder = 0
              Visible = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnIncluirExamePedidoClick
            end
            object cxButton3: TcxButton
              Left = 326
              Top = 20
              Width = 100
              Height = 20
              Caption = 'Excluir'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000100000147352F67835448B8AC704FDDD08851F3DC9158FECF83
                45FDC97935EE9A5516BE381F073E000000000000000000000000000000000000
                0000050404069A7774D2DDC1B7FFD6CFC3FFCDC7BFFFD1C8BDFFB7B1A4FFB4AE
                A1FFCCBAA5FFE9B78AFFD37A28F8060403070000000000000000000000000000
                00005F434384E0C2BFFFFEFCF5FFF8E6E3FFAAB294FFDDC6BDFFDBC9BDFFB6AA
                98FFD0BDA3FFC5A67EFFD18641FF2F1B0A320000000000000000000000000000
                00007C5957A3F0DDD6FFFCE8ECFF89B67CFF23B23BFF18AE38FFB6BD9BFFCDBE
                B1FFE7D2BBFFCEB089FFDB9B5CFF5B3516650000000000000000000000000000
                00009B726CC0FFF6F5FF35AB38FF04BB1FFF20B735FF97C891FF45A142FF3695
                35FFF7DBCCFFD5B590FFEFBD86FFA25E26B80000000000000000000000000000
                0000C3998CD8F3F0DAFF30AE32FFC0D3B0FFDCD7C4FFFFE6ECFF29AE33FF1AA8
                2BFFF8D8CDFFBA9D78FFC79A63FFC37439DC0000000000000000000000000302
                0203DDB4A6F8ABCB99FF56C86DFF4A8942FFFFF0F4FF6BB85FFF2DD451FF2D9C
                2FFFD3BDABFFD4B794FFC49762FFD68348FA040302050000000000000000241D
                1A27F9D4C5FF78C571FF38EE6BFF35B041FFC5C8B4FF76C370FF2FE760FF5C9C
                4EFFEFD9CAFFEED1B0FFD2A672FFD88D4DFF2619113100000000000000004E40
                3754FADDCDFFD9DBC1FF75C16CFF00B215FF008E00FFE1E0B6FFAFB794FFCBB4
                ACFFC2B3A0FFEACFADFFEBBF8DFFDB9C63FF5135296400000000000000007866
                5480F7E3D3FFFFE9DCFFFFE9DBFFFFE7D6FFFFEBD7FFFFF0D2FFFDE9D2FFE7DB
                C9FFE1D4BCFFFDE1BCFFF3C894FFE3A25DFF89593FA90000000000000000A48D
                73ABF6EBE0FFFBEBD9FFFEF0DEFFFFF9EEFFF8E3D3FFF3DAC7FFEBC4A5FFE8BE
                A1FFE6B79BFFE0AD90FFD8A58DFFD79565FFAA7155D30000000000000000D7B3
                89DEFBDBACFFF1C58FFFEEC394FFF0CB9EFFF6D8B2FFFCE5C3FFFFEFD3FFFFF4
                DEFFFFFAEBFFFFFFFDFFFFFFFFFFFCFBFFFFC49698F10000000000000000E9BC
                85F4CB6603FFDA934AFFE8B37EFFF0C99EFFF6DAB8FFFBE7C8FFFFF2D8FFFFF7
                E2FFFFFEEFFFFEFAF2FFF4E6E3FFDDBEB9F56C4F4E790000000000000000332E
                2533A28966A9CBA678D4E4BA88EDEEC694FBF1C799FFE8BF96F8DBB28DEDC69C
                7DDBA77F65C0765B528A453532530D0A0A0F0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              Spacing = 0
              TabOrder = 4
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnExcluirExamePedidoClick
            end
            object cxButton4: TcxButton
              Left = 220
              Top = 20
              Width = 100
              Height = 20
              Caption = 'Cancelar'
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
              Spacing = 0
              TabOrder = 3
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnCancelarExamePedidoClick
            end
            object cxButton5: TcxButton
              Left = 10
              Top = 20
              Width = 100
              Height = 20
              Caption = 'Alterar'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000405
                05054588A8D41787BBFE537C8FFFAAA9A8FFA7B7BDFFC5CCCFFFD1CCCAFFB1B0
                AFFFAC9B94FF136188FE167EADFE217EAAFD466F85B4000000000000000042A8
                CBDF00ACE0FF00C5FDFF7CA0A9FF41A6C5FF00ADECFF56CFF0FFFFFFFFFFFEFD
                FDFFF7E0D9FF00A1CDFF00D5FFFF43EDFFFF0C7AADFF000000000000000005C2
                F5FF00B5E8FF00BAF1FF7BA9B5FF5096B1FF0091CBFF51B4D2FFEDDCD9FFFDFA
                FAFFFFFDF6FF0095C1FF00C5FDFF3FE0FFFF0577ACFF000000000000000005C9
                FBFF00B2E5FF00B4ECFF7EB2C1FF6696B0FF007FB8FF48A2BEFFD4C0BBFFE8DE
                DBFFFFFFFCFF0097C4FF00C6FDFF43DFFFFF0576A9FF000000000000000005C7
                F9FF00ADE0FF00B2E8FF67B2C8FFBBC3C6FFA7B2B5FF87989DFF7B979EFF81A0
                A8FF9BADB1FF0084A7FF009AC5FF0ED3FFFF0577AAFF000000000000000005C8
                FAFF00ACDFFF00AEE4FF00AFE8FF00B0ECFF00B4F1FF00B6F3FF00B9F6FF00BB
                F8FF00BDF9FF00C1FBFF00C3F9FF00CCFFFF0579ABFF000000000000000005C7
                F9FF00A8DDFF23A9D3FF41A5C3FF3DA5C2FF3BA5C3FF3CA6C3FF3BA6C5FF3BA7
                C5FF39A7C6FF3DA7C6FF22B3D9FF00CBFFFF0577A9FF000000000000000005C6
                F8FF00A4DCFF87AEBBFFFFEAE2FFFDE9E3FFFFECE6FFFDE9E3FFFAE7E1FFF5E1
                DBFFEFDBD5FFF5D7CFFF85A7B0FF00C8FFFF0578AAFF000000000000000005C7
                F9FF009FD8FF80B0BDFFFFF6F3FFD3D5D6FFBBBDBEFFBDBFC0FFBDBFBFFFBDBF
                C0FFC7CACBFFECE1DEFF7DA9B5FF00C7FFFF0578AAFF000000000000000005C6
                F8FF009CD4FF83B2C1FFFFFCF9FFF5F4F4FFEBEBEBFFEDEDEDFFE8E8E8FFE4E4
                E4FFE2E1E1FFEEE4E1FF7FAAB7FF00C6FEFF0577A9FF000000000000000005C5
                F7FF0099D2FF85B5C2FFFFFFFFFFDCDEDFFFC1C4C5FFC3C6C7FFC3C6C7FFC2C5
                C6FFCCCFD0FFF0E6E3FF80ABB8FF00C6FFFF0577A9FF000000000000000005C5
                F8FF0095CDFF88B7C4FFFFFFFFFFFCFBFBFFECECECFFEDEDECFFE7E7E7FFE2E2
                E2FFE3E2E2FFF3E8E5FF80AEBAFF00B7EDFF0580B2FF00000000000000000AC5
                F6FF008EC7FF8BB6C5FFFFFFFFFFE6E8E9FFD0D2D2FFD1D3D4FFCED1D1FFCCCE
                CFFFD4D6D6FFF7ECE9FF82B1BDFF0086AEFF0B94C5FF000000000000000046A7
                BCBC11C6FCFF87C2D0FFD6D5D5FFCDD5D8FFCED5D6FFCAD2D4FFC6CDCFFFBFC7
                CBFFBAC0C3FFBEBEBEFF7EADBBFF11B7EBFF468BA1BC00000000000000000000
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
              OnClick = BtnAlterarExamePedidoClick
            end
            object GbImagem: TGroupBox
              Left = 541
              Top = 9
              Width = 360
              Height = 238
              Caption = ' Foto '
              TabOrder = 5
              object DbFotoDoutor: TcxDBImage
                Left = 2
                Top = 17
                Align = alClient
                DataBinding.DataField = 'FOTOBINARIO'
                DataBinding.DataSource = DsPacienteFotoItem
                Properties.GraphicClassName = 'TJPEGImage'
                Properties.PopupMenuLayout.MenuItems = [pmiSave]
                Properties.Stretch = True
                TabOrder = 0
                Height = 219
                Width = 356
              end
            end
          end
          object GridPacinteFotoItem: TcxGrid
            Left = 12
            Top = 217
            Width = 509
            Height = 192
            TabOrder = 3
            object GridPacinteFotoItemDBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = DsPacienteFotoItem
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsSelection.CellSelect = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object GridPacinteFotoItemDBTableView2FOTODESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'FOTODESCRICAO'
                Width = 120
              end
              object GridPacinteFotoItemDBTableView2FOTOBINARIO: TcxGridDBColumn
                DataBinding.FieldName = 'FOTOBINARIO'
                Width = 80
              end
              object GridPacinteFotoItemDBTableView2OBSERVACAO: TcxGridDBColumn
                DataBinding.FieldName = 'OBSERVACAO'
                Width = 275
              end
            end
            object GridPacinteFotoItemLevel2: TcxGridLevel
              GridView = GridPacinteFotoItemDBTableView2
            end
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
    object AcaoConfirmar: TAction [0]
      Category = 'AcaoTela'
      Caption = 'Confirmar'
      ImageIndex = 16
      OnExecute = AcaoConfirmarExecute
    end
  end
  object DsPacienteConvenio: TDataSource
    DataSet = CdsPacienteConvenio
    Left = 288
    Top = 376
  end
  object CdsPacienteConvenio: TClientDataSet
    Aggregates = <>
    DataSetField = CdsPacienteQryPacienteConvenio
    Params = <>
    AfterInsert = CdsPacienteConvenioAfterInsert
    Left = 288
    Top = 360
    object CdsPacienteConvenioIDPACIENTECONVENIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTECONVENIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteConvenioIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteConvenioIDCONVENIO: TIntegerField
      DisplayLabel = 'C'#243'digo Conv'#234'nio'
      FieldName = 'IDCONVENIO'
      Required = True
    end
    object CdsPacienteConvenioIDPRINCIPAL: TSmallintField
      DisplayLabel = 'C'#243'd. Principal'
      FieldName = 'IDPRINCIPAL'
      Required = True
    end
    object CdsPacienteConvenioIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsPacienteConvenioDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsPacienteConvenioCONVENIO: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'CONVENIO'
      ProviderFlags = []
      Size = 100
    end
    object CdsPacienteConvenioPRINCIPAL: TStringField
      DisplayLabel = 'Principal'
      FieldName = 'PRINCIPAL'
      ProviderFlags = []
      Size = 50
    end
    object CdsPacienteConvenioSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
  object DsPaciente: TDataSource
    DataSet = CdsPaciente
    Left = 192
    Top = 384
  end
  object CdsPaciente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPaciente'
    RemoteServer = DmRotinaF.LocalConnection
    Left = 192
    Top = 368
    object CdsPacienteIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'IDCIDADE'
    end
    object CdsPacienteIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsPacienteDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
    end
    object CdsPacienteDATANASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'DATANASCIMENTO'
    end
    object CdsPacienteNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
    end
    object CdsPacienteESTADOCIVIL: TStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'ESTADOCIVIL'
      Required = True
      Size = 50
    end
    object CdsPacienteSEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      Required = True
      Size = 16
    end
    object CdsPacienteOBSERVACAO: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      Size = 26000
    end
    object CdsPacienteNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object CdsPacienteENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 100
    end
    object CdsPacienteBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 100
    end
    object CdsPacienteEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 100
    end
    object CdsPacienteCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object CdsPacienteRG: TStringField
      FieldName = 'RG'
    end
    object CdsPacienteCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsPacienteTELEFONE1: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'TELEFONE1'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsPacienteTELEFONE2: TStringField
      DisplayLabel = 'Teleone 02'
      FieldName = 'TELEFONE2'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsPacienteCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999\-999;0;_'
      Size = 10
    end
    object CdsPacienteIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'IDADE'
      ProviderFlags = []
    end
    object CdsPacienteCIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'CIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object CdsPacienteSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
    object CdsPacienteQryPacienteConvenio: TDataSetField
      FieldName = 'QryPacienteConvenio'
    end
    object CdsPacienteQryPacienteEvolucaoClinica: TDataSetField
      FieldName = 'QryPacienteEvolucaoClinica'
    end
    object CdsPacienteQryPacienteReceituario: TDataSetField
      FieldName = 'QryPacienteReceituario'
    end
    object CdsPacienteQryPacienteExame: TDataSetField
      FieldName = 'QryPacienteExame'
    end
    object CdsPacienteQryPacienteFoto: TDataSetField
      FieldName = 'QryPacienteFoto'
    end
  end
  object DsPacienteEvolucaoClinica: TDataSource
    DataSet = CdsPacienteEvolucaoClinica
    Left = 416
    Top = 376
  end
  object CdsPacienteEvolucaoClinica: TClientDataSet
    Aggregates = <>
    DataSetField = CdsPacienteQryPacienteEvolucaoClinica
    Params = <>
    Left = 416
    Top = 360
    object CdsPacienteEvolucaoClinicaIDPACIENTEEVOLUCAO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTEEVOLUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteEvolucaoClinicaIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteEvolucaoClinicaIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object CdsPacienteEvolucaoClinicaIDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Agenda'
      FieldName = 'IDAGENDA'
      Required = True
    end
    object CdsPacienteEvolucaoClinicaIDRASCUNHO: TSmallintField
      DisplayLabel = 'C'#243'd. Rascunho'
      FieldName = 'IDRASCUNHO'
      Required = True
    end
    object CdsPacienteEvolucaoClinicaDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsPacienteEvolucaoClinicaHORAINCLUSAO: TTimeField
      DisplayLabel = 'Hora Inclus'#227'o'
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object CdsPacienteEvolucaoClinicaEVOLUCAOCLINICA: TStringField
      DisplayLabel = 'Evolu'#231#227'o Cl'#237'nica'
      FieldName = 'EVOLUCAOCLINICA'
      Required = True
      Size = 26000
    end
    object CdsPacienteEvolucaoClinicaPACIENTENOME: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsPacienteEvolucaoClinicaPACIENTERG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object CdsPacienteEvolucaoClinicaPACIENTECPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsPacienteEvolucaoClinicaPACIENTETELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsPacienteEvolucaoClinicaPACIENTETELEFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsPacienteEvolucaoClinicaPACIENTEDATANASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'PACIENTEDATANASCIMENTO'
      ProviderFlags = []
    end
    object CdsPacienteEvolucaoClinicaPACIENTEIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object CdsPacienteEvolucaoClinicaPACIENTEEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
    object CdsPacienteEvolucaoClinicaPACIENTECIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object CdsPacienteEvolucaoClinicaDOUTORNOME: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsPacienteEvolucaoClinicaDOUTORCRM: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object CdsPacienteEvolucaoClinicaDOUTORCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsPacienteEvolucaoClinicaDOUTORTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
    end
    object CdsPacienteEvolucaoClinicaDOUTORCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
    end
  end
  object DsPacienteReceituario: TDataSource
    DataSet = CdsPacienteReceituario
    Left = 128
    Top = 472
  end
  object CdsPacienteReceituario: TClientDataSet
    Aggregates = <>
    DataSetField = CdsPacienteQryPacienteReceituario
    Params = <>
    Left = 128
    Top = 456
    object CdsPacienteReceituarioIDPACIENTERECEITUARIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTERECEITUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteReceituarioIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteReceituarioIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object CdsPacienteReceituarioIDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Agenda'
      FieldName = 'IDAGENDA'
      Required = True
    end
    object CdsPacienteReceituarioDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsPacienteReceituarioHORAINCLUSAO: TTimeField
      DisplayLabel = 'Hora Inclus'#227'o'
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object CdsPacienteReceituarioPACIENTENOME: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsPacienteReceituarioPACIENTERG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object CdsPacienteReceituarioPACIENTECPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsPacienteReceituarioPACIENTETELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsPacienteReceituarioPACIENTETELEFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsPacienteReceituarioPACIENTEDATANASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'PACIENTEDATANASCIMENTO'
      ProviderFlags = []
    end
    object CdsPacienteReceituarioPACIENTEIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object CdsPacienteReceituarioPACIENTEEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
    object CdsPacienteReceituarioPACIENTECIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object CdsPacienteReceituarioDOUTORNOME: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsPacienteReceituarioDOUTORCRM: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object CdsPacienteReceituarioDOUTORCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsPacienteReceituarioDOUTORTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
    end
    object CdsPacienteReceituarioDOUTORCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
    end
    object CdsPacienteReceituarioQryPacienteReceituarioPedido: TDataSetField
      FieldName = 'QryPacienteReceituarioPedido'
    end
  end
  object DsPacienteReceituarioPedido: TDataSource
    DataSet = CdsPacienteReceituarioPedido
    Left = 280
    Top = 472
  end
  object CdsPacienteReceituarioPedido: TClientDataSet
    Aggregates = <>
    DataSetField = CdsPacienteReceituarioQryPacienteReceituarioPedido
    Params = <>
    Left = 280
    Top = 456
    object CdsPacienteReceituarioPedidoIDPACIENTERECEITUARIOUSO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTERECEITUARIOUSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteReceituarioPedidoIDPACIENTERECEITUARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Receitu'#225'rio Paciente'
      FieldName = 'IDPACIENTERECEITUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteReceituarioPedidoIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteReceituarioPedidoIDMEDICAMENTO: TIntegerField
      DisplayLabel = 'C'#243'd. Medicamento'
      FieldName = 'IDMEDICAMENTO'
      Required = True
    end
    object CdsPacienteReceituarioPedidoPOSOLOGIA: TStringField
      DisplayLabel = 'Posologia'
      FieldName = 'POSOLOGIA'
      Size = 200
    end
    object CdsPacienteReceituarioPedidoMEDICAMENTO: TStringField
      DisplayLabel = 'Medicamento'
      FieldName = 'MEDICAMENTO'
      ProviderFlags = []
      Size = 400
    end
    object CdsPacienteReceituarioPedidoMEDICAMENTOUSO: TStringField
      DisplayLabel = 'Uso'
      FieldName = 'MEDICAMENTOUSO'
      ProviderFlags = []
      Size = 100
    end
    object CdsPacienteReceituarioPedidoMEDICAMENTOQTDE: TStringField
      DisplayLabel = 'Quantidade'
      FieldName = 'MEDICAMENTOQTDE'
      ProviderFlags = []
      Size = 100
    end
  end
  object DsPacienteExame: TDataSource
    DataSet = CdsPacienteExame
    Left = 528
    Top = 464
  end
  object CdsPacienteExame: TClientDataSet
    Aggregates = <>
    DataSetField = CdsPacienteQryPacienteExame
    Params = <>
    Left = 528
    Top = 448
    object CdsPacienteExameIDPACIENTEEXAME: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTEEXAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteExameIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteExameIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object CdsPacienteExameIDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Agenda'
      FieldName = 'IDAGENDA'
      Required = True
    end
    object CdsPacienteExameDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsPacienteExameHORAINCLUSAO: TTimeField
      DisplayLabel = 'Hora Inclus'#227'o'
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object CdsPacienteExamePACIENTENOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsPacienteExamePACIENTERG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object CdsPacienteExamePACIENTECPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsPacienteExamePACIENTETELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsPacienteExamePACIENTETELEFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsPacienteExamePACIENTEDATANASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'PACIENTEDATANASCIMENTO'
      ProviderFlags = []
    end
    object CdsPacienteExamePACIENTEIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object CdsPacienteExamePACIENTEEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
    object CdsPacienteExamePACIENTECIDADEUF: TStringField
      DisplayLabel = 'Cidade - UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object CdsPacienteExameDOUTORNOME: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsPacienteExameDOUTORCRM: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object CdsPacienteExameDOUTORCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsPacienteExameDOUTORTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsPacienteExameDOUTORCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsPacienteExameQryPacienteExamePedido: TDataSetField
      FieldName = 'QryPacienteExamePedido'
    end
  end
  object DsPacienteExamePedido: TDataSource
    DataSet = CdsPacienteExamePedido
    Left = 664
    Top = 464
  end
  object CdsPacienteExamePedido: TClientDataSet
    Aggregates = <>
    DataSetField = CdsPacienteExameQryPacienteExamePedido
    Params = <>
    Left = 664
    Top = 448
    object CdsPacienteExamePedidoIDPACIENTEEXAMESOLICITADO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTEEXAMESOLICITADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteExamePedidoIDPACIENTEEXAME: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente Exame'
      FieldName = 'IDPACIENTEEXAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteExamePedidoIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteExamePedidoIDEXAME: TIntegerField
      DisplayLabel = 'C'#243'd. Exame'
      FieldName = 'IDEXAME'
      Required = True
    end
    object CdsPacienteExamePedidoEXAMEDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'EXAMEDESCRICAO'
      ProviderFlags = []
      Size = 100
    end
  end
  object DsPacienteFoto: TDataSource
    DataSet = CdsPacienteFoto
    Left = 592
    Top = 304
  end
  object CdsPacienteFoto: TClientDataSet
    Aggregates = <>
    DataSetField = CdsPacienteQryPacienteFoto
    Params = <>
    Left = 592
    Top = 288
    object CdsPacienteFotoIDPACIENTEFOTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTEFOTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteFotoIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteFotoIDDOUTOR: TIntegerField
      DisplayLabel = 'C'#243'd. Doutor'
      FieldName = 'IDDOUTOR'
      Required = True
    end
    object CdsPacienteFotoIDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Agenda'
      FieldName = 'IDAGENDA'
      Required = True
    end
    object CdsPacienteFotoDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsPacienteFotoHORAINCLUSAO: TTimeField
      DisplayLabel = 'Hora Inclus'#227'o'
      FieldName = 'HORAINCLUSAO'
      Required = True
    end
    object CdsPacienteFotoPACIENTENOME: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsPacienteFotoPACIENTERG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'PACIENTERG'
      ProviderFlags = []
    end
    object CdsPacienteFotoPACIENTECPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PACIENTECPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsPacienteFotoPACIENTETELEFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'PACIENTETELEFONE01'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsPacienteFotoPACIENTETELEFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'PACIENTETELEFONE02'
      ProviderFlags = []
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsPacienteFotoPACIENTEDATANASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'PACIENTEDATANASCIMENTO'
      ProviderFlags = []
    end
    object CdsPacienteFotoPACIENTEIDADE: TIntegerField
      DisplayLabel = 'Idade'
      FieldName = 'PACIENTEIDADE'
      ProviderFlags = []
    end
    object CdsPacienteFotoPACIENTEEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'PACIENTEEMAIL'
      ProviderFlags = []
      Size = 100
    end
    object CdsPacienteFotoPACIENTECIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'PACIENTECIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object CdsPacienteFotoDOUTORNOME: TStringField
      DisplayLabel = 'Doutor'
      FieldName = 'DOUTORNOME'
      ProviderFlags = []
      Size = 100
    end
    object CdsPacienteFotoDOUTORCRM: TStringField
      DisplayLabel = 'CRM'
      FieldName = 'DOUTORCRM'
      ProviderFlags = []
      Size = 10
    end
    object CdsPacienteFotoDOUTORCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'DOUTORCPF'
      ProviderFlags = []
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsPacienteFotoDOUTORTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'DOUTORTELEFONE'
      ProviderFlags = []
    end
    object CdsPacienteFotoDOUTORCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'DOUTORCELULAR'
      ProviderFlags = []
    end
    object CdsPacienteFotoOSERVACAO: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OSERVACAO'
      Size = 25000
    end
    object CdsPacienteFotoQryPacienteFotoItem: TDataSetField
      FieldName = 'QryPacienteFotoItem'
    end
  end
  object DsPacienteFotoItem: TDataSource
    DataSet = CdsPacienteFotoItem
    Left = 704
    Top = 304
  end
  object CdsPacienteFotoItem: TClientDataSet
    Aggregates = <>
    DataSetField = CdsPacienteFotoQryPacienteFotoItem
    Params = <>
    Left = 704
    Top = 288
    object CdsPacienteFotoItemIDPACIENTEFOTOITEM: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPACIENTEFOTOITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteFotoItemIDPACIENTEFOTO: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente Foto'
      FieldName = 'IDPACIENTEFOTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteFotoItemIDPACIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      FieldName = 'IDPACIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPacienteFotoItemFOTODESCRICAO: TStringField
      DisplayLabel = 'Nome Foto'
      FieldName = 'FOTODESCRICAO'
      Required = True
      Size = 100
    end
    object CdsPacienteFotoItemFOTOBINARIO: TBlobField
      DisplayLabel = 'Foto Bin'#225'rio'
      FieldName = 'FOTOBINARIO'
      Required = True
      Size = 1
    end
    object CdsPacienteFotoItemOBSERVACAO: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      Size = 26000
    end
    object CdsPacienteFotoItemPACIENTENOME: TStringField
      DisplayLabel = 'Paciente Nome'
      FieldName = 'PACIENTENOME'
      ProviderFlags = []
      Size = 200
    end
    object CdsPacienteFotoItemDIRETORIOORIGEM: TStringField
      DisplayLabel = 'Diretorio Origem'
      FieldName = 'DIRETORIOORIGEM'
      ProviderFlags = []
      Size = 500
    end
    object CdsPacienteFotoItemDATAAGENDA: TDateField
      DisplayLabel = 'Data Agenda'
      FieldName = 'DATAAGENDA'
      ProviderFlags = []
    end
  end
end
