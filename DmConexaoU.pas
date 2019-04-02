unit DmConexaoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XDmU, WideStrings, FMTBcd, DB, SqlExpr, Provider, DBClient, TConnect,
  DBXInterbase, DBXFirebird, frxClass, frxDBSet, jpeg, ImgList, cxGraphics;

type
  TDmConexaoF = class(TXDmF)
    ImageList16: TcxImageList;
    ImageList32: TcxImageList;
    procedure DataModuleCreate(Sender: TObject);

  private

    { Private declarations }

  public
    { Public declarations }

    // Variável do Diretório do Sistema
    DiretorioSistema: String;

    vSistema_CaminhoBanco: String;

    vUserLogIn_IdUsuario: Integer;
    vUserLogIn_DsUsuario: String;
    vUserLogIn_IdPerfil: Integer;
    vUserLogIn_DsPerfil: String;
    vUserLogIn_IdEquipe: Integer;
    vUserLogIn_DsEquipe: String;

    procedure carregaPermissoesUsuarios(pIdPerfilAcesso: Integer);
    procedure SetJPGCompression(ACompression: integer; const AInFile, AOutFile: string);

  end;

var
  DmConexaoF: TDmConexaoF;

implementation

uses LoginSistemaU, LibRotinasSistemaU, XLibGenericoU;

{$R *.dfm}

procedure TDmConexaoF.carregaPermissoesUsuarios(pIdPerfilAcesso: Integer);
begin

end;

procedure TDmConexaoF.DataModuleCreate(Sender: TObject);
var
  sParams  :TStringList;
begin
  //Verificando o arquivo de conexão do banco
  if not FileExists(ExtractFilePath( Application.ExeName ) + 'Diretorio.txt') then
  begin
    raise EDatabaseError.Create('Arquivo de Configuração da Conexão Inexistente');
    Exit;
  end;

  sParams := TStringList.Create;

  //Carregando as configurações da conexão com banco
  try
    sParams.LoadFromFile(ExtractFilePath( Application.ExeName ) + 'Diretorio.txt');


    SQLConnection.Params.Values['Database'] := sParams.Values['Database'];
    SQLConnection.Connected := True;

    vSistema_CaminhoBanco := SQLConnection.Params.Values['Database'];

  except
    raise EDatabaseError.Create('Erro na Conexão com o Banco de Dados. Possiveis Causas:' + #13 +
                                '     * Usuário Inválido' + #13 +
                                '     * Senha Inválida' + #13 +
                                '     * Caminho do Banco Incorreto');
    sParams.Free;
    Exit;
  end;
  sParams.Free;
end;

procedure TDmConexaoF.SetJPGCompression(ACompression: integer; const AInFile: string; const AOutFile: string);
var
  iCompression: integer;
  oJPG: TJPegImage;
  oBMP: TBitMap;
begin

  { Forcar a Compressião para a faixa entre 1..100 }
  iCompression := abs(ACompression);
  if iCompression = 0 then
    iCompression := 1;
  if iCompression > 100 then
    iCompression := 100;

  { Cria as classes de trabalho Jpeg e Bmp }
  oJPG := TJPegImage.Create;
  oJPG.LoadFromFile(AInFile);
  oBMP := TBitMap.Create;
  oBMP.Assign(oJPG);

  { Fazer a Compressão e salva o novo arquivo }
  oJPG.CompressionQuality := iCompression;
  oJPG.Compress;
  oJPG.SaveToFile(AOutFile);

  { Limpar }
  oJPG.Free;
  oBMP.Free;
end;



(*

CPF
999\.999\.999\-99;0;_


TELFONE
!\(99\)9999-9999;0;_


CEP
99999\-999;0;_















procedure TdmCadastroF.DspContaPagarServicoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  Applied := False;


  // Delete - Conta Pagar Baixa
  if (UpdateKind = ukDelete) and (UpperCase(SourceDS.Name) = 'QRYCONTAPAGARSERVICO_BAIXA') then begin

    // Tirar associação do cheque se não estiver mais ligado a uma baixa apos ser deletado.
    if     (AnsiUpperCase(DeltaDS.FieldByName('TP_NUMERARIO').Oldvalue) = 'CHEQUE')
       and (not(DeltaDS.FieldByName('ID_CHEQUE').Oldvalue = null))
    then begin
      TContaReceber.StatusCheque(DeltaDS.FieldByName('ID_CHEQUE').Oldvalue, 'Aberto');
    end;
  end;

  // Insert - Conta Pagar Baixa
  if (UpdateKind = ukInsert) and (UpperCase(SourceDS.Name) = 'QRYCONTAPAGARSERVICO_BAIXA') then begin

    // Associar o cheque
    if     (AnsiUpperCase(DeltaDS.FieldByName('TP_NUMERARIO').NewValue) = 'CHEQUE')
       and (not(DeltaDS.FieldByName('ID_CHEQUE').NewValue = null))
    then begin
      TContaReceber.StatusCheque(DeltaDS.FieldByName('ID_CHEQUE').NewValue, 'Associado');
    end;

  end;

  // Update - Conta Pagar Baixa
  if ( UpdateKind = ukModify ) and (UpperCase(SourceDS.Name) = 'QRYCONTAPAGARSERVICO_BAIXA') then begin

    // Aqui Temos 3 Casos:
    // 1 - A baixa era um cheque e foi mudado para um outro cheque, então deve
    //     tirar o primeiro cheque e associar o novo cheque
    // 2 - A baixa era um cheque e foi mudado para uma nova baixa não cheque,
    //     deve tirar o cheque
    // 3 - A baixa não era um cheque e agora é, deve associar o novo cheque

    // Caso 1
    if    ( AnsiUpperCase(DeltaDS.FieldByName('TP_NUMERARIO').Oldvalue) = 'CHEQUE' )
      and ( not VarIsNull(DeltaDS.FieldByName('ID_CHEQUE').Oldvalue) )
      and ( not VarIsNull(DeltaDS.FieldByName('ID_CHEQUE').Newvalue) )
      and ( DeltaDS.FieldByName('ID_CHEQUE').Oldvalue <> DeltaDS.FieldByName('ID_CHEQUE').Newvalue)
    then begin
      TContaReceber.StatusCheque(DeltaDS.FieldByName('ID_CHEQUE').OldValue, 'Aberto');
      TContaReceber.StatusCheque(DeltaDS.FieldByName('ID_CHEQUE').NewValue, 'Associado');
    end;

    // Caso 2
    if    ( AnsiUpperCase(DeltaDS.FieldByName('TP_NUMERARIO').Oldvalue) = 'CHEQUE' )
      and ( AnsiUpperCase(DeltaDS.FieldByName('TP_NUMERARIO').Newvalue) <> 'CHEQUE' )
      and ( VarIsNull(DeltaDS.FieldByName('ID_CHEQUE').Newvalue) )
    then begin
      TContaReceber.StatusCheque(DeltaDS.FieldByName('ID_CHEQUE').OldValue, 'Aberto');
    end;

    // Caso 3
    if    ( AnsiUpperCase(DeltaDS.FieldByName('TP_NUMERARIO').Oldvalue) <> 'CHEQUE' )
      and ( AnsiUpperCase(DeltaDS.FieldByName('TP_NUMERARIO').Newvalue) = 'CHEQUE' )
      and ( VarIsNull(DeltaDS.FieldByName('ID_CHEQUE').Oldvalue) )
    then begin
      TContaReceber.StatusCheque(DeltaDS.FieldByName('ID_CHEQUE').NewValue, 'Associado');
    end;
  end;
end;






*)


end.









