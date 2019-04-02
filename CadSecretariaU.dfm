inherited CadSecretariaF: TCadSecretariaF
  Caption = 'Cadastro de Secret'#225'ria'
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlTelaCadastro: TPanel
    inherited PcTelaCadastro: TcxPageControl
      ActivePage = TsPrincipal
      ClientRectTop = 26
      object TsPrincipal: TcxTabSheet
        Caption = 'Principal'
        ImageIndex = 13
        object LblNome: TLabel
          Left = 10
          Top = 55
          Width = 34
          Height = 15
          Caption = 'Nome'
        end
        object LblEmail: TLabel
          Left = 410
          Top = 55
          Width = 32
          Height = 15
          Caption = 'Email'
        end
        object LblCpf: TLabel
          Left = 200
          Top = 100
          Width = 24
          Height = 15
          Caption = 'CPF'
        end
        object LblRg: TLabel
          Left = 10
          Top = 100
          Width = 18
          Height = 15
          Caption = 'RG'
        end
        object LblTelefone: TLabel
          Left = 410
          Top = 100
          Width = 72
          Height = 15
          Caption = 'Telefone Fixo'
        end
        object LblCelular: TLabel
          Left = 565
          Top = 100
          Width = 90
          Height = 15
          Caption = 'Telefone Celular'
        end
        object LblDataCadastro: TLabel
          Left = 10
          Top = 10
          Width = 76
          Height = 15
          Caption = 'Data Inclus'#227'o'
        end
        object LblNumero: TLabel
          Left = 650
          Top = 145
          Width = 45
          Height = 15
          Caption = 'N'#250'mero'
        end
        object LblEndereco: TLabel
          Left = 100
          Top = 145
          Width = 53
          Height = 15
          Caption = 'Endere'#231'o'
        end
        object LblBairro: TLabel
          Left = 10
          Top = 190
          Width = 33
          Height = 15
          Caption = 'Bairro'
        end
        object LblCep: TLabel
          Left = 10
          Top = 145
          Width = 25
          Height = 15
          Caption = 'CEP'
        end
        object Label33: TLabel
          Left = 340
          Top = 190
          Width = 40
          Height = 15
          Caption = 'Cidade'
        end
        object LblUsuarioSistema: TLabel
          Left = 10
          Top = 235
          Width = 93
          Height = 15
          Caption = 'Usu'#225'rio Sistema'
        end
        object DbNome: TcxDBTextEdit
          Left = 10
          Top = 70
          DataBinding.DataField = 'NOME'
          DataBinding.DataSource = DsSecretaria
          TabOrder = 2
          Width = 390
        end
        object DbDataInclusao: TcxDBDateEdit
          Left = 10
          Top = 25
          TabStop = False
          DataBinding.DataField = 'DATAINCLUSAO'
          DataBinding.DataSource = DsSecretaria
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 0
          Width = 100
        end
        object DbRg: TcxDBTextEdit
          Left = 10
          Top = 115
          DataBinding.DataField = 'RG'
          DataBinding.DataSource = DsSecretaria
          TabOrder = 4
          Width = 180
        end
        object DbCelular: TcxDBTextEdit
          Left = 565
          Top = 115
          DataBinding.DataField = 'CELULAR'
          DataBinding.DataSource = DsSecretaria
          TabOrder = 7
          Width = 145
        end
        object DbEmail: TcxDBTextEdit
          Left = 410
          Top = 70
          DataBinding.DataField = 'EMAIL'
          DataBinding.DataSource = DsSecretaria
          TabOrder = 3
          Width = 300
        end
        object DbCpf: TcxDBTextEdit
          Left = 200
          Top = 115
          DataBinding.DataField = 'CPF'
          DataBinding.DataSource = DsSecretaria
          TabOrder = 5
          Width = 200
        end
        object DbTelefone: TcxDBTextEdit
          Left = 410
          Top = 115
          DataBinding.DataField = 'TELEFONE'
          DataBinding.DataSource = DsSecretaria
          TabOrder = 6
          Width = 145
        end
        object DbNomeCidade: TcxDBTextEdit
          Left = 410
          Top = 205
          TabStop = False
          DataBinding.DataField = 'CIDADEUF'
          DataBinding.DataSource = DsSecretaria
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 13
          Width = 300
        end
        object DbCodigoCidade: TcxDBButtonEdit
          Left = 340
          Top = 205
          DataBinding.DataField = 'IDCIDADE'
          DataBinding.DataSource = DsSecretaria
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = DbCodigoCidadePropertiesButtonClick
          TabOrder = 12
          OnExit = DbCodigoCidadeExit
          Width = 70
        end
        object DbCep: TcxDBTextEdit
          Left = 10
          Top = 160
          DataBinding.DataField = 'CEP'
          DataBinding.DataSource = DsSecretaria
          TabOrder = 8
          Width = 80
        end
        object DbNumero: TcxDBTextEdit
          Left = 650
          Top = 160
          DataBinding.DataField = 'NUMERO'
          DataBinding.DataSource = DsSecretaria
          TabOrder = 10
          Width = 60
        end
        object DbBairro: TcxDBTextEdit
          Left = 10
          Top = 205
          DataBinding.DataField = 'BAIRRO'
          DataBinding.DataSource = DsSecretaria
          TabOrder = 11
          Width = 320
        end
        object DbEndereco: TcxDBTextEdit
          Left = 100
          Top = 160
          DataBinding.DataField = 'ENDERECO'
          DataBinding.DataSource = DsSecretaria
          TabOrder = 9
          Width = 540
        end
        object CbAtivo: TcxDBCheckBox
          Left = 10
          Top = 290
          Caption = 'Ativo'
          DataBinding.DataField = 'IDSITUACAOREGISTRO'
          DataBinding.DataSource = DsSecretaria
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 16
          Width = 50
        end
        object GbImagem: TGroupBox
          Left = 730
          Top = 48
          Width = 200
          Height = 180
          Caption = ' Foto '
          TabOrder = 1
          object DbFotoSecretaria: TcxDBImage
            Left = 2
            Top = 17
            Align = alClient
            DataBinding.DataField = 'FOTOSECRETARIA'
            DataBinding.DataSource = DsSecretaria
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.PopupMenuLayout.MenuItems = [pmiSave]
            Properties.Stretch = True
            TabOrder = 0
            Height = 131
            Width = 196
          end
          object PnlBotaoFotoSecretaria: TPanel
            Left = 2
            Top = 148
            Width = 196
            Height = 30
            Align = alBottom
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object BtnSelecionarFotoSecretaria: TcxButton
              Left = 10
              Top = 5
              Width = 80
              Height = 20
              Caption = 'Selecionar'
              Colors.Default = clWhite
              Colors.DefaultText = clBlack
              Colors.Normal = clWhite
              Colors.NormalText = clBlack
              Colors.Hot = clSilver
              Colors.HotText = clBlack
              Colors.Pressed = clWhite
              Colors.PressedText = clBlack
              Colors.Disabled = clWhite
              Colors.DisabledText = clGray
              TabOrder = 0
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnSelecionarFotoSecretariaClick
            end
            object BtnDeletarFotoSecretaria: TcxButton
              Left = 105
              Top = 5
              Width = 80
              Height = 20
              Caption = 'Deletar'
              Colors.Default = clWhite
              Colors.DefaultText = clBlack
              Colors.Normal = clWhite
              Colors.NormalText = clBlack
              Colors.Hot = clSilver
              Colors.HotText = clBlack
              Colors.Pressed = clWhite
              Colors.PressedText = clBlack
              Colors.Disabled = clWhite
              Colors.DisabledText = clGray
              TabOrder = 1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              OnClick = BtnDeletarFotoSecretariaClick
            end
          end
        end
        object DbLoginUsuarioSistema: TcxDBTextEdit
          Left = 80
          Top = 250
          TabStop = False
          DataBinding.DataField = 'USUARIOLOGIN'
          DataBinding.DataSource = DsSecretaria
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 15
          Width = 320
        end
        object DbCodigoUsuarioSistema: TcxDBButtonEdit
          Left = 10
          Top = 250
          DataBinding.DataField = 'IDUSUARIO'
          DataBinding.DataSource = DsSecretaria
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = DbCodigoUsuarioSistemaPropertiesButtonClick
          TabOrder = 14
          OnExit = DbCodigoUsuarioSistemaExit
          Width = 70
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
  object DsSecretaria: TDataSource
    DataSet = CdsSecretaria
    Left = 192
    Top = 376
  end
  object CdsSecretaria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspSecretaria'
    RemoteServer = DmCadastroF.LocalConnection
    AfterInsert = CdsSecretariaAfterInsert
    Left = 192
    Top = 360
    object CdsSecretariaIDSECRETARIA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDSECRETARIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsSecretariaIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'IDCIDADE'
    end
    object CdsSecretariaIDUSUARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'IDUSUARIO'
    end
    object CdsSecretariaIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsSecretariaDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsSecretariaNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
    end
    object CdsSecretariaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object CdsSecretariaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 100
    end
    object CdsSecretariaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 100
    end
    object CdsSecretariaEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 100
    end
    object CdsSecretariaCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999\.999\.999\-99;0;_'
    end
    object CdsSecretariaRG: TStringField
      FieldName = 'RG'
    end
    object CdsSecretariaTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsSecretariaCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      EditMask = '!\(99\)9999-9999;0;_'
    end
    object CdsSecretariaCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999\-999;0;_'
      Size = 10
    end
    object CdsSecretariaFOTOSECRETARIA: TBlobField
      FieldName = 'FOTOSECRETARIA'
      Size = 1
    end
    object CdsSecretariaCIDADEUF: TStringField
      DisplayLabel = 'Cidade-UF'
      FieldName = 'CIDADEUF'
      ProviderFlags = []
      Size = 55
    end
    object CdsSecretariaUSUARIOLOGIN: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIOLOGIN'
      ProviderFlags = []
    end
    object CdsSecretariaSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
end
