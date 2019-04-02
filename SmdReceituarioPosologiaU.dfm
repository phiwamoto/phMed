inherited SmdReceituarioPosologiaF: TSmdReceituarioPosologiaF
  Caption = 'SmdReceituarioPosologiaF'
  ClientHeight = 200
  ClientWidth = 770
  OnShow = FormShow
  ExplicitWidth = 770
  ExplicitHeight = 200
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlBotton: TPanel
    Top = 195
    Width = 770
    ExplicitWidth = 960
  end
  inherited PnlFundo: TPanel
    Width = 760
    Height = 190
    ExplicitLeft = 5
    ExplicitTop = 5
    inherited PnlCaption: TPanel
      Width = 760
      ExplicitWidth = 950
      inherited LblPesquisa: TLabel
        Width = 146
        Caption = 'Receitu'#225'rio - Posolosia'
        ExplicitWidth = 146
      end
    end
    inherited PnlBotao: TPanel
      Width = 760
      ExplicitWidth = 950
      object BtnConfirmar: TcxButton
        Left = 600
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
    end
    inherited PnlFiltros: TPanel
      Width = 760
      Height = 2
      Visible = False
      ExplicitWidth = 950
      ExplicitHeight = 2
    end
    inherited PnlInformacao: TPanel
      Top = 57
      Width = 760
      Height = 133
      ExplicitLeft = 6
      ExplicitTop = 57
      ExplicitWidth = 760
      ExplicitHeight = 113
      object LblPosologia: TLabel
        Left = 10
        Top = 80
        Width = 56
        Height = 15
        Caption = 'Posologia'
      end
      object LblMedicamento: TLabel
        Left = 10
        Top = 15
        Width = 77
        Height = 15
        Caption = 'Medicamento:'
      end
      object LblMedicamentoDescricao: TLabel
        Left = 93
        Top = 15
        Width = 172
        Height = 15
        Caption = 'Medicamento n'#227'o encontrado!'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblMedicamentoUso: TLabel
        Left = 10
        Top = 35
        Width = 26
        Height = 15
        Caption = 'Uso:'
      end
      object LblMedicamentoUsoDescricao: TLabel
        Left = 93
        Top = 35
        Width = 117
        Height = 15
        Caption = 'Uso n'#227'o encontrado!'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblMedicamentoQuantidadeDescricao: TLabel
        Left = 93
        Top = 55
        Width = 160
        Height = 15
        Caption = 'Quantidade n'#227'o encontrado!'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblMedicamentoQuantidade: TLabel
        Left = 10
        Top = 55
        Width = 67
        Height = 15
        Caption = 'Quantidade:'
      end
      object EdtPosologia: TcxTextEdit
        Left = 10
        Top = 100
        TabOrder = 0
        Width = 740
      end
    end
  end
  inherited PnlLeft: TPanel
    Height = 190
  end
  inherited PnlRight: TPanel
    Left = 765
    Height = 190
    ExplicitLeft = 955
  end
  inherited pnlTop: TPanel
    Width = 770
    ExplicitWidth = 960
  end
end
