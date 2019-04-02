inherited SmdAtestadoMedicoF: TSmdAtestadoMedicoF
  Caption = 'SmdAtestadoMedicoF'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlBotton: TPanel
    ExplicitWidth = 960
  end
  inherited PnlFundo: TPanel
    ExplicitLeft = 5
    ExplicitTop = 5
    inherited PnlCaption: TPanel
      ExplicitWidth = 950
      inherited LblPesquisa: TLabel
        Width = 105
        Caption = 'Atestado M'#233'dico'
        ExplicitWidth = 105
      end
    end
    inherited PnlBotao: TPanel
      ExplicitWidth = 950
      object BtnConfirmar: TcxButton
        Left = 689
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
        OnClick = BtnConfirmarClick
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
      ExplicitWidth = 950
      ExplicitHeight = 2
    end
    inherited PnlInformacao: TPanel
      Top = 57
      Height = 483
      ExplicitLeft = 0
      ExplicitTop = 57
      ExplicitWidth = 950
      ExplicitHeight = 483
      object GbPacienteConvenio: TcxGroupBox
        Left = 10
        Top = 10
        Caption = ' Modelo de atestado m'#233'dio '
        Style.BorderColor = clBlack
        Style.BorderStyle = ebsSingle
        Style.TextColor = clBlack
        Style.TransparentBorder = True
        StyleDisabled.BorderColor = clBlack
        StyleDisabled.TextColor = clBlack
        TabOrder = 0
        Height = 420
        Width = 930
        object CbModeloPeriodoManha: TcxCheckBox
          Left = 10
          Top = 30
          Caption = 'Modelo per'#237'odo manh'#227
          TabOrder = 0
          OnClick = CbModeloPeriodoManhaClick
          Width = 250
        end
        object CbModeloPeriodoTarde: TcxCheckBox
          Left = 10
          Top = 144
          Caption = 'Modelo per'#237'odo tarde'
          TabOrder = 1
          OnClick = CbModeloPeriodoTardeClick
          Width = 250
        end
        object CbModeloPeriodoDesejado: TcxCheckBox
          Left = 10
          Top = 256
          Caption = 'Modelo per'#237'odo desejado'
          TabOrder = 2
          OnClick = CbModeloPeriodoDesejadoClick
          Width = 250
        end
        object PnlModeloPeriodoManha: TPanel
          Left = 24
          Top = 55
          Width = 880
          Height = 77
          BevelInner = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 3
          object LblModeloPeriodoManhaTexto01: TLabel
            Left = 16
            Top = 15
            Width = 351
            Height = 18
            Caption = 'Esteve em consulta hoje das                 as                ,'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object LblModeloPeriodoManhaTexto02: TLabel
            Left = 16
            Top = 40
            Width = 799
            Height = 18
            Caption = 
              'Necessita afastar-se de suas ocupa'#231#245'es para realizar exames M'#233'di' +
              'cos no per'#237'odo da manh'#227' por motivo de sa'#250'de.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object EdtlModeloPeriodoManhaHoraInicial: TcxTimeEdit
            Left = 220
            Top = 14
            EditValue = 0d
            ParentFont = False
            Properties.TimeFormat = tfHourMin
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 55
          end
          object EdtlModeloPeriodoManhaHoraFinal: TcxTimeEdit
            Left = 305
            Top = 14
            EditValue = 0d
            ParentFont = False
            Properties.TimeFormat = tfHourMin
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 55
          end
        end
        object PnlModeloPeriodoTarde: TPanel
          Left = 24
          Top = 168
          Width = 880
          Height = 77
          BevelInner = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 4
          object LblModeloPeriodoTardeTexto01: TLabel
            Left = 16
            Top = 15
            Width = 351
            Height = 18
            Caption = 'Esteve em consulta hoje das                 as                ,'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object LblModeloPeriodoTardeTexto02: TLabel
            Left = 16
            Top = 40
            Width = 788
            Height = 18
            Caption = 
              'Necessita afastar-se de suas ocupa'#231#245'es para realizar exames M'#233'di' +
              'cos no per'#237'odo da tarde por motivo de sa'#250'de.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object EdtlModeloPeriodoTardeHoraInicial: TcxTimeEdit
            Left = 220
            Top = 14
            EditValue = 0d
            ParentFont = False
            Properties.TimeFormat = tfHourMin
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 55
          end
          object EdtlModeloPeriodoTardeHoraFinal: TcxTimeEdit
            Left = 305
            Top = 14
            EditValue = 0d
            ParentFont = False
            Properties.TimeFormat = tfHourMin
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 55
          end
        end
        object PnlModeloPeriodoDesejado: TPanel
          Left = 24
          Top = 285
          Width = 880
          Height = 77
          BevelInner = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 5
          object LblModeloPeriodoDesejadoTexto01: TLabel
            Left = 16
            Top = 15
            Width = 351
            Height = 18
            Caption = 'Esteve em consulta hoje das                 as                ,'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object LblModeloPeriodoDesejadoTexto02: TLabel
            Left = 16
            Top = 40
            Width = 767
            Height = 18
            Caption = 
              'Necessita afastar-se de suas ocupa'#231#245'es no per'#237'odo de            ' +
              '                '#224'                             por motivo de sa'#250'd' +
              'e.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object EdtlModeloPeriodoDesejadoHoraInicial: TcxTimeEdit
            Left = 220
            Top = 14
            EditValue = 0d
            ParentFont = False
            Properties.TimeFormat = tfHourMin
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 55
          end
          object EdtlModeloPeriodoDesejadoHoraFinal: TcxTimeEdit
            Left = 305
            Top = 14
            EditValue = 0d
            ParentFont = False
            Properties.TimeFormat = tfHourMin
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 55
          end
          object EdtlModeloPeriodoDesejadoDataInicial: TcxDateEdit
            Left = 405
            Top = 39
            TabOrder = 2
            Width = 100
          end
          object EdtlModeloPeriodoDesejadoDataFinal: TcxDateEdit
            Left = 530
            Top = 40
            TabOrder = 3
            Width = 100
          end
        end
      end
    end
  end
  inherited PnlRight: TPanel
    ExplicitLeft = 955
  end
  inherited pnlTop: TPanel
    ExplicitWidth = 960
  end
  object frxRelatorioAtestadoInteira: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41397.954102847200000000
    ReportOptions.LastChange = 41461.870181435200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 800
    Top = 128
    Datasets = <
      item
        DataSet = DmRelatorioF.frxCdsClinica
        DataSetName = 'frxCdsClinica'
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
        Height = 1024.252630000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = DmRelatorioF.frxCdsClinica
        DataSetName = 'frxCdsClinica'
        RowCount = 0
        object mmDescricao: TfrxMemoView
          Left = 75.590551180000000000
          Top = 234.330696460000000000
          Width = 566.929207090000000000
          Height = 86.929190000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o Atestado')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 22.677165354330700000
          Width = 718.110236220000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ATESTADO M'#201'DICO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 75.590551181102400000
          Top = 151.181200000000000000
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
        object mmPacienteNome: TfrxMemoView
          Left = 128.503937010000000000
          Top = 151.181200000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Paciente Nome')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 75.590551180000000000
          Top = 321.259842520000000000
          Width = 566.929500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C.I.D.:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 75.590551180000000000
          Top = 718.110236220000000000
          Width = 566.929133860000000000
          Height = 18.897650000000000000
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
        object mmDoutorNome: TfrxMemoView
          Left = 75.590551180000000000
          Top = 831.496062990000000000
          Width = 566.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dr(a). Doutor Nome')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 75.590551181102400000
          Top = 805.039370078740000000
          Width = 566.929133858268000000
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
          Top = 998.574805590000000000
          Width = 521.574700630000000000
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
          Left = 566.929133860000000000
          Top = 997.795275590000000000
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
          Left = 75.590551180000000000
          Top = 944.881889760000000000
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
        object mmDoutorCRM: TfrxMemoView
          Left = 75.590551180000000000
          Top = 850.393700790000000000
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
            'CRM: Doutor CRM')
          ParentFont = False
        end
      end
    end
  end
  object frxRelatorioAtestadoMeia: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41397.954102847200000000
    ReportOptions.LastChange = 42099.485940486100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 800
    Top = 112
    Datasets = <
      item
        DataSet = DmRelatorioF.frxCdsClinica
        DataSetName = 'frxCdsClinica'
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
        Height = 695.433520000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        DataSet = DmRelatorioF.frxCdsClinica
        DataSetName = 'frxCdsClinica'
        RowCount = 0
        object mmDescricao: TfrxMemoView
          Left = 576.488547800000000000
          Top = 234.330696460000000000
          Width = 453.543307090000000000
          Height = 86.929190000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o Atestado')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 557.590910000000000000
          Top = 15.118120000000000000
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
            'ATESTADO M'#201'DICO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 576.488560000000000000
          Top = 151.181200000000000000
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
        object mmPacienteNome: TfrxMemoView
          Left = 621.842920000000000000
          Top = 151.181200000000000000
          Width = 423.307360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Paciente Nome')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 576.165740000000000000
          Top = 321.259842520000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C.I.D.:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 633.181510000000000000
          Top = 453.543307090000000000
          Width = 340.157651180000000000
          Height = 18.897650000000000000
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
        object mmDoutorNome: TfrxMemoView
          Left = 576.488547800000000000
          Top = 566.929133860000000000
          Width = 453.543307090000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dr(a). Doutor Nome')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 599.165740000000000000
          Top = 529.133858270000000000
          Width = 415.748251180000000000
          Height = 15.118120000000000000
          ShowHint = False
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
          Left = 576.488560000000000000
          Top = 668.976810000000000000
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
          Left = 916.646260000000000000
          Top = 668.976810000000000000
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
          Left = 576.488560000000000000
          Top = 608.503944330000000000
          Width = 453.543160630000000000
          Height = 15.118110240000000000
          ShowHint = False
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
        object mmDoutorCRM: TfrxMemoView
          Left = 576.488560000000000000
          Top = 585.827150000000000000
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
            'CRM: Doutor CRM')
          ParentFont = False
        end
      end
    end
  end
  object frxRelatorioAtestadoTimbrado: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41397.954102847200000000
    ReportOptions.LastChange = 42097.798247083330000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 800
    Top = 96
    Datasets = <
      item
        DataSet = DmRelatorioF.frxCdsClinica
        DataSetName = 'frxCdsClinica'
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
        Height = 1024.252630000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = DmRelatorioF.frxCdsClinica
        DataSetName = 'frxCdsClinica'
        RowCount = 0
        object mmDescricao: TfrxMemoView
          Left = 75.590551180000000000
          Top = 377.952743700000000000
          Width = 566.929207090000000000
          Height = 86.929190000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o atestado')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 188.976377950000000000
          Width = 718.110236220000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ATESTADO M'#201'DICO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 75.590551180000000000
          Top = 294.803149610000000000
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
        object mmPacienteNome: TfrxMemoView
          Left = 128.503937010000000000
          Top = 294.803149610000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Paciente')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 75.590551180000000000
          Top = 464.881889760000000000
          Width = 566.929500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C.I.D.:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 75.590551180000000000
          Top = 718.110236220000000000
          Width = 566.929133860000000000
          Height = 18.897650000000000000
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
        object mmDoutorNome: TfrxMemoView
          Left = 75.590551180000000000
          Top = 831.275592990000000000
          Width = 566.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dr(a). Doutor Nome')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 75.590551181102400000
          Top = 805.039370078740000000
          Width = 566.929133858268000000
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
          Top = 944.881889760000000000
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
        object mmDoutorCRM: TfrxMemoView
          Left = 75.590551180000000000
          Top = 850.393700790000000000
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
            'CRM: Doutor CRM')
          ParentFont = False
        end
      end
    end
  end
end
