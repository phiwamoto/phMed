inherited CadUsuarioF: TCadUsuarioF
  Caption = 'Cadastro de Usu'#225'rio'
  PixelsPerInch = 96
  TextHeight = 15
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
        object LblUsuario: TLabel
          Left = 10
          Top = 55
          Width = 44
          Height = 15
          Caption = 'Usu'#225'rio'
        end
        object LblAgencia: TLabel
          Left = 270
          Top = 55
          Width = 36
          Height = 15
          Caption = 'Senha'
        end
        object LblPerfilAcesso: TLabel
          Left = 10
          Top = 100
          Width = 88
          Height = 15
          Caption = 'Perfil de Acesso'
        end
        object DbDataInclusao: TcxDBDateEdit
          Left = 10
          Top = 25
          TabStop = False
          DataBinding.DataField = 'DATAINCLUSAO'
          DataBinding.DataSource = DsUsuario
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 0
          Width = 100
        end
        object DbUsuario: TcxDBTextEdit
          Left = 10
          Top = 70
          DataBinding.DataField = 'LOGIN'
          DataBinding.DataSource = DsUsuario
          TabOrder = 1
          Width = 250
        end
        object CbSituacaoRegistro: TcxDBCheckBox
          Left = 10
          Top = 155
          Caption = 'Ativo'
          DataBinding.DataField = 'IDSITUACAOREGISTRO'
          DataBinding.DataSource = DsUsuario
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 5
          Width = 50
        end
        object DbSenha: TcxDBTextEdit
          Left = 270
          Top = 70
          DataBinding.DataField = 'SENHA'
          DataBinding.DataSource = DsUsuario
          Properties.CharCase = ecLowerCase
          Properties.EchoMode = eemPassword
          TabOrder = 2
          Width = 120
        end
        object DbDescricaoPerfilAcesso: TcxDBTextEdit
          Left = 80
          Top = 115
          TabStop = False
          DataBinding.DataSource = DsUsuario
          Properties.ReadOnly = True
          Style.Color = clSilver
          TabOrder = 4
          Width = 310
        end
        object DbCodigoPerfilAcesso: TcxDBButtonEdit
          Left = 10
          Top = 115
          DataBinding.DataField = 'IDPERFIL'
          DataBinding.DataSource = DsUsuario
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          TabOrder = 3
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
  object DsUsuario: TDataSource
    DataSet = CdsUsuario
    Left = 600
    Top = 224
  end
  object CdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspUsuario'
    RemoteServer = DmCadastroF.LocalConnection
    AfterInsert = CdsUsuarioAfterInsert
    Left = 600
    Top = 208
    object CdsUsuarioIDUSUARIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsUsuarioIDPERFIL: TIntegerField
      DisplayLabel = 'C'#243'd. Perfil'
      FieldName = 'IDPERFIL'
      Required = True
    end
    object CdsUsuarioIDSITUACAOREGISTRO: TSmallintField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Registro'
      FieldName = 'IDSITUACAOREGISTRO'
      Required = True
    end
    object CdsUsuarioDATAINCLUSAO: TDateField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      Required = True
    end
    object CdsUsuarioLOGIN: TStringField
      DisplayLabel = 'Login'
      FieldName = 'LOGIN'
      Required = True
    end
    object CdsUsuarioSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Required = True
    end
    object CdsUsuarioSITUACAOREGISTRO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAOREGISTRO'
      ProviderFlags = []
      Size = 50
    end
  end
end
