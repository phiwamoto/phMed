inherited CadPacienteF: TCadPacienteF
  Caption = 'Cadastro de Paciente'
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlTelaCadastro: TPanel
    inherited PcTelaCadastro: TcxPageControl
      ActivePage = TsPrincipal
      ClientRectTop = 26
      object TsPrincipal: TcxTabSheet
        Caption = 'Principal'
        ImageIndex = 13
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
              DataBinding.DataField = 'CONVENIO'
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
    end
  end
  inherited PnlChaves: TPanel
    object LblCodigo: TLabel
      Left = 10
      Top = 5
      Width = 40
      Height = 15
      Caption = 'C'#243'digo'
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
  inherited ImageList32: TcxImageList
    FormatVersion = 1
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
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
    RemoteServer = DmCadastroF.LocalConnection
    AfterInsert = CdsPacienteAfterInsert
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
end
