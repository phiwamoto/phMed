unit OpeCorrigePacienteDuplicadoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaOperacaoU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  ActnList, ExtCtrls, ImgList, cxPC, StdCtrls, cxButtons, ComCtrls, DB, DBClient,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, SqlExpr, WideStrings, DBXFirebird;

type
  TOpeCorrigePacienteDuplicadoF = class(TXTelaOperacaoF)
    BtnIncluir: TcxButton;
    BtnRemover: TcxButton;
    DsDuplicado: TDataSource;
    CdsDuplicado: TClientDataSet;
    tsListaPacientesDuplicados: TcxTabSheet;
    CdsDuplicadoCOUNT: TIntegerField;
    CdsDuplicadoNOME: TStringField;
    GridAgenda: TcxGrid;
    GridAgendaDBTableView1: TcxGridDBTableView;
    GridAgendaLevel1: TcxGridLevel;
    GridAgendaDBTableView1COUNT: TcxGridDBColumn;
    GridAgendaDBTableView1NOME: TcxGridDBColumn;
    AcaoCorrigir: TAction;
    AcaoCorrigirTodos: TAction;
    SQLConnection: TSQLConnection;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure AcaoCorrigirExecute(Sender: TObject);
    procedure AcaoCorrigirTodosExecute(Sender: TObject);

  private
    { Private declarations }
    procedure corrigePacienteConsulta(idPacienteAntigo, idPacienteNovo: Integer);
    procedure corrigePacienteEvolucao(idPacienteAntigo, idPacienteNovo: Integer);
    procedure corrigePacienteLaudoOftalmo(idPacienteAntigo, idPacienteNovo: Integer);
    procedure corrigePacientePrescricaoLente(idPacienteAntigo, idPacienteNovo: Integer);
    procedure corrigePacienteSolicitacaoExame(idPacienteAntigo, idPacienteNovo: Integer);
    procedure corrigePacienteSolicitacaoMedicamento(idPacienteAntigo, idPacienteNovo: Integer);
    procedure corrigePacienteAgenda(idPacienteAntigo, idPacienteNovo: Integer);

  public
    { Public declarations }

  end;

var
  OpeCorrigePacienteDuplicadoF: TOpeCorrigePacienteDuplicadoF;

implementation

uses DmConexaoU, LibRotinasAtualizacaoU, LibRotinasSistemaU, XLibGenericoU,
  XLibTypesClient, SmdValidadorPacienteDuplicadoU;

{$R *.dfm}


procedure TOpeCorrigePacienteDuplicadoF.AcaoCorrigirExecute(Sender: TObject);
var
  CdsPacientesPorNome: TClientDataSet;
  IdPacienteValido: Integer;
  Processa: Boolean;
begin
  if (not TSmdValidadorPacienteDuplicadoF.validaCorrecao(CdsDuplicadoNOME.AsString)) then
    Exit;

  CdsPacientesPorNome := TClientDataSet.Create(nil);
  try
    CdsPacientesPorNome.RemoteServer := DmConexaoF.LocalConnection;
    CdsPacientesPorNome.ProviderName := 'dmDspConsulta';
    TCdsExecute.ExecutaSql(
       CdsPacientesPorNome
      ,'  SELECT IDPACIENTE '
      +'    FROM PACIENTE '
      +'   WHERE 1 = 1 '
      +'     AND TRIM(UPPER(NOME)) = '+TRotinaGenerica.StrToSql(AnsiUpperCase(Trim(CdsDuplicadoNOME.AsString)), '')
    );

    if not(CdsPacientesPorNome.IsEmpty) then
    begin
      IdPacienteValido := 0;
      Processa := False;

      CdsPacientesPorNome.First;
      while not(CdsPacientesPorNome.Eof) do
      begin

        if Processa then
        begin
          corrigePacienteConsulta(CdsPacientesPorNome.FieldByName('IDPACIENTE').AsInteger, IdPacienteValido);
          corrigePacienteEvolucao(CdsPacientesPorNome.FieldByName('IDPACIENTE').AsInteger, IdPacienteValido);
          corrigePacienteLaudoOftalmo(CdsPacientesPorNome.FieldByName('IDPACIENTE').AsInteger, IdPacienteValido);
          corrigePacientePrescricaoLente(CdsPacientesPorNome.FieldByName('IDPACIENTE').AsInteger, IdPacienteValido);
          corrigePacienteSolicitacaoExame(CdsPacientesPorNome.FieldByName('IDPACIENTE').AsInteger, IdPacienteValido);
          corrigePacienteSolicitacaoMedicamento(CdsPacientesPorNome.FieldByName('IDPACIENTE').AsInteger, IdPacienteValido);
          corrigePacienteAgenda(CdsPacientesPorNome.FieldByName('IDPACIENTE').AsInteger, IdPacienteValido);



        end
        else
          IdPacienteValido := CdsPacientesPorNome.FieldByName('IDPACIENTE').AsInteger;

        Processa := True;
        CdsPacientesPorNome.Next;
      end;
    end;
  finally
    FreeAndNil(CdsPacientesPorNome);
  end;

  CdsDuplicado.Close;
  CdsDuplicado.Open;








  // Encontrar as pessoas dado o nome

  // Analisar qual deve prevalescer

  // Alterar Medicamentos de Id antigo pro Novo
  // Alterar Exame de Id antigo pro Novo
  // Prescricao Oculos
  // Laudo Oftalmo
  // Evolucao Clinica
  // Pciente Consulta
  // Agenda

//
//  DmConexaoF.SqlExecutar(
//     ' UPDATE AGENDA '
//    +'    SET MOTIVO = '+TRotinaGenerica.StrToSql(pMotivo)
//    +'  WHERE IDAGENDA = '+TRotinaGenerica.IntToSql(pIdAgenda)
//  );
//


end;


procedure TOpeCorrigePacienteDuplicadoF.AcaoCorrigirTodosExecute(
  Sender: TObject);
begin
  inherited;
  CdsDuplicado.First;
   while not(CdsDuplicado.Eof) do
   begin
     AcaoCorrigirExecute(Sender);
     CdsDuplicado.Next;
   end;
end;

procedure TOpeCorrigePacienteDuplicadoF.corrigePacienteAgenda(idPacienteAntigo, idPacienteNovo: Integer);
var
  Trans : TTransactionDesc;
//var
//  CdsAuxiliar: TClientDataSet;
begin
//  CdsAuxiliar := TClientDataSet.Create(nil);
//  try
//    CdsAuxiliar.RemoteServer := DmConexaoF.LocalConnection;
//    CdsAuxiliar.ProviderName := 'dmDspConsulta';
//    TCdsExecute.ExecutaSql(
//       CdsAuxiliar
//      ,'  UPDATE agenda '
//      +'     SET idpaciente '+TRotinaGenerica.IntToSql(idPacienteNovo)
//      +'   WHERE 1 = 1 '
//      +'     AND idpaciente = '+TRotinaGenerica.IntToSql(idPacienteAntigo)
//    );
//
//
//    TCdsExecute.ExecutaSql(
//       CdsAuxiliar
//      ,'  UPDATE paciente '
//      +'     SET IDSITUACAOREGISTRO = 0 '
//      +'        ,OBSERVACAO = ''Inativado o paciente pela rotina de duplicidade'' '
//      +'   WHERE 1 = 1 '
//      +'     AND idpaciente = '+TRotinaGenerica.IntToSql(idPacienteAntigo)
//    );
//
//  finally
//    FreeAndNil(CdsAuxiliar);
//  end;

  Trans.TransactionID := 1;
  Trans.IsolationLevel := xilREADCOMMITTED;
  SQLConnection.StartTransaction(Trans);
  try
    SQLConnection.ExecuteDirect(
       '  UPDATE agenda '
      +'     SET idpaciente = '+TRotinaGenerica.IntToSql(idPacienteNovo)
      +'   WHERE 1 = 1 '
      +'     AND idpaciente = '+TRotinaGenerica.IntToSql(idPacienteAntigo)
    );

    SQLConnection.ExecuteDirect(
       '  UPDATE paciente '
      +'     SET IDSITUACAOREGISTRO = 0 '
      +'        ,OBSERVACAO = ''Inativado o paciente pela rotina de duplicidade'' '
      +'   WHERE 1 = 1 '
      +'     AND idpaciente = '+TRotinaGenerica.IntToSql(idPacienteAntigo)
    );

    SQLConnection.Commit(Trans);
  except

     on Exc:Exception do begin
        SQLConnection.Rollback(Trans);
     Application.MessageBox('Erro Ao Executar Script!'#13'Tente Novamente Mais tarde.', 'Erro', MB_ICONERROR+MB_OK);

     end;

  end;


  // DmConexaoF.SqlExecutar('UPDATE agenda SET idpaciente = '+TRotinaGenerica.IntToSql(IdPacienteValido)+' WHERE idpaciente ='+TRotinaGenerica.IntToSql(CdsPacientesPorNome.FieldByName('IDPACIENTE').AsInteger));
end;


procedure TOpeCorrigePacienteDuplicadoF.corrigePacienteConsulta(idPacienteAntigo, idPacienteNovo: Integer);
var
  proximoID: Integer;
  CdsAuxiliar: TClientDataSet;
begin
  proximoID := DmConexaoF.Proximo('pacienteconsulta', 'idpacienteconsulta', 'IDPACIENTE = '+TRotinaGenerica.IntToSql(idPacienteNovo));

  CdsAuxiliar := TClientDataSet.Create(nil);
  try
    CdsAuxiliar.RemoteServer := DmConexaoF.LocalConnection;
    CdsAuxiliar.ProviderName := 'dmDspConsulta';
    TCdsExecute.ExecutaSql(
       CdsAuxiliar
      ,'  SELECT idpacienteconsulta, idpaciente '
      +'    FROM pacienteconsulta '
      +'   WHERE 1 = 1 '
      +'     AND idpaciente = '+TRotinaGenerica.IntToSql(idPacienteAntigo)
    );

    CdsAuxiliar.FieldByName('idpacienteconsulta').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
    CdsAuxiliar.FieldByName('idpaciente').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];

    if not(CdsAuxiliar.IsEmpty) then
    begin
      CdsAuxiliar.First;
      while not(CdsAuxiliar.Eof) do
      begin
        DmConexaoF.SqlExecutar(
          ' UPDATE pacienteconsulta '
         +'    SET idpaciente = '+TRotinaGenerica.IntToSql(idPacienteNovo)
         +'       ,idpacienteconsulta = '+TRotinaGenerica.IntToSql(proximoID)
         +'  WHERE idpaciente ='+TRotinaGenerica.IntToSql(idPacienteAntigo)
         +'    AND idpacienteconsulta ='+TRotinaGenerica.IntToSql(CdsAuxiliar.FieldByName('idpacienteconsulta').AsInteger)
       );

//        CdsAuxiliar.Edit;
//        CdsAuxiliar.FieldByName('idpacienteconsulta').AsInteger := proximoID;
//        CdsAuxiliar.FieldByName('idpaciente').AsInteger := idPacienteNovo;
//        CdsAuxiliar.Post;
//        CdsAuxiliar.ApplyUpdates(0);

        Inc(proximoID);
        CdsAuxiliar.Next;
      end;
    end;


  finally
    FreeAndNil(CdsAuxiliar);
  end;
end;

procedure TOpeCorrigePacienteDuplicadoF.corrigePacienteEvolucao(idPacienteAntigo, idPacienteNovo: Integer);
var
  proximoID: Integer;
  CdsAuxiliar: TClientDataSet;
begin
  proximoID := DmConexaoF.Proximo('pacientelaudooftalmo', 'idpacientelaudooftalmo', 'IDPACIENTE = '+TRotinaGenerica.IntToSql(idPacienteNovo));

  CdsAuxiliar := TClientDataSet.Create(nil);
  try
    CdsAuxiliar.RemoteServer := DmConexaoF.LocalConnection;
    CdsAuxiliar.ProviderName := 'dmDspConsulta';
    TCdsExecute.ExecutaSql(
       CdsAuxiliar
      ,'  SELECT IDpacientelaudooftalmo, idpaciente '
      +'    FROM pacientelaudooftalmo '
      +'   WHERE 1 = 1 '
      +'     AND idpaciente = '+TRotinaGenerica.IntToSql(idPacienteAntigo)
    );

    CdsAuxiliar.FieldByName('idpacientelaudooftalmo').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
    CdsAuxiliar.FieldByName('idpaciente').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];

    if not(CdsAuxiliar.IsEmpty) then
    begin
      CdsAuxiliar.First;
      while not(CdsAuxiliar.Eof) do
      begin

        DmConexaoF.SqlExecutar(
            ' UPDATE pacientelaudooftalmo '
           +'    SET idpaciente = '+TRotinaGenerica.IntToSql(idPacienteNovo)
           +'       ,IDpacientelaudooftalmo = '+TRotinaGenerica.IntToSql(proximoID)
           +'  WHERE idpaciente ='+TRotinaGenerica.IntToSql(idPacienteAntigo)
           +'    AND IDpacientelaudooftalmo ='+TRotinaGenerica.IntToSql(CdsAuxiliar.FieldByName('IDpacientelaudooftalmo').AsInteger)
         );


//        CdsAuxiliar.Edit;
//        CdsAuxiliar.FieldByName('pacientelaudooftalmo').AsInteger := proximoID;
//        CdsAuxiliar.FieldByName('idpaciente').AsInteger := idPacienteNovo;
//        CdsAuxiliar.Post;
//        CdsAuxiliar.ApplyUpdates(0);

        Inc(proximoID);
        CdsAuxiliar.Next;
      end;
    end;


  finally
    FreeAndNil(CdsAuxiliar);
  end;

  // DmConexaoF.SqlExecutar('UPDATE pacientelaudooftalmo SET idpaciente = '+TRotinaGenerica.IntToSql(IdPacienteValido)+' WHERE idpaciente ='+TRotinaGenerica.IntToSql(CdsPacientesPorNome.FieldByName('IDPACIENTE').AsInteger));
end;

procedure TOpeCorrigePacienteDuplicadoF.corrigePacienteLaudoOftalmo(idPacienteAntigo, idPacienteNovo: Integer);
var
  proximoID: Integer;
  CdsAuxiliar: TClientDataSet;
begin
  proximoID := DmConexaoF.Proximo('PACIENTEEVOLUCAO', 'idPACIENTEEVOLUCAO', 'IDPACIENTE = '+TRotinaGenerica.IntToSql(idPacienteNovo));

  CdsAuxiliar := TClientDataSet.Create(nil);
  try
    CdsAuxiliar.RemoteServer := DmConexaoF.LocalConnection;
    CdsAuxiliar.ProviderName := 'dmDspConsulta';
    TCdsExecute.ExecutaSql(
       CdsAuxiliar
      ,'  SELECT IDPACIENTEEVOLUCAO, idpaciente '
      +'    FROM PACIENTEEVOLUCAO '
      +'   WHERE 1 = 1 '
      +'     AND idpaciente = '+TRotinaGenerica.IntToSql(idPacienteAntigo)
    );

    CdsAuxiliar.FieldByName('IDPACIENTEEVOLUCAO').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
    CdsAuxiliar.FieldByName('idpaciente').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];

    if not(CdsAuxiliar.IsEmpty) then
    begin
      CdsAuxiliar.First;
      while not(CdsAuxiliar.Eof) do
      begin

        DmConexaoF.SqlExecutar(
            ' UPDATE PACIENTEEVOLUCAO '
           +'    SET idpaciente = '+TRotinaGenerica.IntToSql(idPacienteNovo)
           +'       ,IDPACIENTEEVOLUCAO = '+TRotinaGenerica.IntToSql(proximoID)
           +'  WHERE idpaciente ='+TRotinaGenerica.IntToSql(idPacienteAntigo)
           +'    AND IDPACIENTEEVOLUCAO ='+TRotinaGenerica.IntToSql(CdsAuxiliar.FieldByName('IDPACIENTEEVOLUCAO').AsInteger)
         );

//        CdsAuxiliar.Edit;
//        CdsAuxiliar.FieldByName('IDPACIENTEEVOLUCAO').AsInteger := proximoID;
//        CdsAuxiliar.FieldByName('idpaciente').AsInteger := idPacienteNovo;
//        CdsAuxiliar.Post;
//        CdsAuxiliar.ApplyUpdates(0);

        Inc(proximoID);
        CdsAuxiliar.Next;
      end;
    end;


  finally
    FreeAndNil(CdsAuxiliar);
  end;

  // DmConexaoF.SqlExecutar('UPDATE pacienteevolucao SET idpaciente = '+TRotinaGenerica.IntToSql(IdPacienteValido)+' WHERE idpaciente ='+TRotinaGenerica.IntToSql(CdsPacientesPorNome.FieldByName('IDPACIENTE').AsInteger));
end;

procedure TOpeCorrigePacienteDuplicadoF.corrigePacientePrescricaoLente(
  idPacienteAntigo, idPacienteNovo: Integer);
var
  proximoID: Integer;
  CdsAuxiliar: TClientDataSet;
begin
  proximoID := DmConexaoF.Proximo('pacienteprescricaolente', 'idpacienteprescricaolente', 'IDPACIENTE = '+TRotinaGenerica.IntToSql(idPacienteNovo));

  CdsAuxiliar := TClientDataSet.Create(nil);
  try
    CdsAuxiliar.RemoteServer := DmConexaoF.LocalConnection;
    CdsAuxiliar.ProviderName := 'dmDspConsulta';
    TCdsExecute.ExecutaSql(
       CdsAuxiliar
      ,'  SELECT IDpacienteprescricaolente, idpaciente '
      +'    FROM pacienteprescricaolente '
      +'   WHERE 1 = 1 '
      +'     AND idpaciente = '+TRotinaGenerica.IntToSql(idPacienteAntigo)
    );


    if not(CdsAuxiliar.IsEmpty) then
    begin
      CdsAuxiliar.First;
      while not(CdsAuxiliar.Eof) do
      begin

        DmConexaoF.SqlExecutar(
            ' UPDATE pacienteprescricaolente '
           +'    SET idpaciente = '+TRotinaGenerica.IntToSql(idPacienteNovo)
           +'       ,IDpacienteprescricaolente = '+TRotinaGenerica.IntToSql(proximoID)
           +'  WHERE idpaciente ='+TRotinaGenerica.IntToSql(idPacienteAntigo)
           +'    AND IDpacienteprescricaolente ='+TRotinaGenerica.IntToSql(CdsAuxiliar.FieldByName('IDpacienteprescricaolente').AsInteger)
         );

//        CdsAuxiliar.Edit;
//        CdsAuxiliar.FieldByName('IDpacienteprescricaolente').AsInteger := proximoID;
//        CdsAuxiliar.FieldByName('idpaciente').AsInteger := idPacienteNovo;
//        CdsAuxiliar.Post;
//        CdsAuxiliar.ApplyUpdates(0);

        Inc(proximoID);
        CdsAuxiliar.Next;
      end;
    end;


  finally
    FreeAndNil(CdsAuxiliar);
  end;

  // DmConexaoF.SqlExecutar('UPDATE pacienteprescricaolente SET idpaciente = '+TRotinaGenerica.IntToSql(IdPacienteValido)+' WHERE idpaciente ='+TRotinaGenerica.IntToSql(CdsPacientesPorNome.FieldByName('IDPACIENTE').AsInteger));
end;

procedure TOpeCorrigePacienteDuplicadoF.corrigePacienteSolicitacaoExame(idPacienteAntigo, idPacienteNovo: Integer);
var
  proximoID, proximoIDFilha: Integer;
  CdsAuxiliar, CdsFilha: TClientDataSet;
  Trans : TTransactionDesc;


(*
var
   Trans : TTransactionDesc;

begin

   Trans.TransactionID := 1;
   Trans.IsolationLevel := xilREADCOMMITTED;
   sqlConnection.StartTransaction( Trans );

   try

      sqlConnection.ExecuteDirect('Insert Into TABELA (Codigo, Nome) Values (23, "Alexandre De Carli")');
      sqlConnection.Commit(Trans);

   except

      on Exc:Exception do begin
         sqlConnection.Rollback(Trans);
      Application.MessageBox('Erro Ao Executar Script!'#13'Tente Novamente Mais tarde.', 'Erro', MB_ICONERROR+MB_OK);

      end;

   end;


*)

begin
  Trans.TransactionID := 1;
  Trans.IsolationLevel := xilREADCOMMITTED;
  SQLConnection.StartTransaction(Trans);
  try
    proximoID := DmConexaoF.Proximo('pacienteexame', 'idpacienteexame', 'IDPACIENTE = '+TRotinaGenerica.IntToSql(idPacienteNovo));
    CdsAuxiliar := TClientDataSet.Create(nil);

    try
      CdsAuxiliar.RemoteServer := DmConexaoF.LocalConnection;
      CdsAuxiliar.ProviderName := 'dmDspConsulta';
      TCdsExecute.ExecutaSql(
         CdsAuxiliar
        ,'  SELECT IDpacienteexame, idpaciente '
        +'    FROM pacienteexame '
        +'   WHERE 1 = 1 '
        +'     AND idpaciente = '+TRotinaGenerica.IntToSql(idPacienteAntigo)
      );

      if not(CdsAuxiliar.IsEmpty) then
      begin
        CdsAuxiliar.First;
        while not(CdsAuxiliar.Eof) do
        begin
          SQLConnection.ExecuteDirect(
            ' UPDATE pacienteexame '
           +'    SET idpaciente = '+TRotinaGenerica.IntToSql(idPacienteNovo)
           +'       ,IDpacienteexame = '+TRotinaGenerica.IntToSql(proximoID)
           +'  WHERE idpaciente ='+TRotinaGenerica.IntToSql(CdsAuxiliar.FieldByName('IDPACIENTE').AsInteger)
           +'   AND IDpacienteexame ='+TRotinaGenerica.IntToSql(CdsAuxiliar.FieldByName('IDpacienteexame').AsInteger)
          );



          proximoIDFilha := DmConexaoF.Proximo('pacienteexamesolicitado', 'idpacienteexamesolicitado', 'IDPACIENTE = '+TRotinaGenerica.IntToSql(idPacienteNovo) +' AND IDpacienteexame = '+TRotinaGenerica.IntToSql(CdsAuxiliar.FieldByName('IDpacienteexame').AsInteger));
          CdsFilha := TClientDataSet.Create(nil);
          try
            CdsFilha.RemoteServer := DmConexaoF.LocalConnection;
            CdsFilha.ProviderName := 'dmDspConsulta';
            TCdsExecute.ExecutaSql(
               CdsFilha
              ,'  SELECT idpacienteexamesolicitado, IDpacienteexame, idpaciente '
              +'    FROM pacienteexamesolicitado '
              +'   WHERE 1 = 1 '
              +'     AND IDpacienteexame = '+TRotinaGenerica.IntToSql(CdsAuxiliar.FieldByName('IDpacienteexame').AsInteger)
              +'     AND idpaciente = '+TRotinaGenerica.IntToSql(idPacienteAntigo)
            );

            if not(CdsFilha.IsEmpty) then
            begin
              CdsFilha.First;
              while not(CdsFilha.Eof) do
              begin
                SQLConnection.ExecuteDirect(
                  ' UPDATE pacienteexamesolicitado '
                 +'    SET idpaciente = '+TRotinaGenerica.IntToSql(idPacienteNovo)
                 +'       ,IDpacienteexame = '+TRotinaGenerica.IntToSql(proximoID)
                 +'  WHERE idpaciente = '+TRotinaGenerica.IntToSql(CdsFilha.FieldByName('IDPACIENTE').AsInteger)
                 +'    AND IDpacienteexame = '+TRotinaGenerica.IntToSql(CdsAuxiliar.FieldByName('IDpacienteexame').AsInteger)
                 );

                Inc(proximoIDFilha);
                CdsFilha.Last;
              end;
            end;
          finally
            FreeAndNil(CdsFilha);
          end;
          Inc(proximoID);
          CdsAuxiliar.Next;
        end;
      end;

      SQLConnection.Commit(Trans);

    finally
      FreeAndNil(CdsAuxiliar);
    end;

    // DmConexaoF.SqlExecutar('UPDATE pacienteexame SET idpaciente = '+TRotinaGenerica.IntToSql(IdPacienteValido)+' WHERE idpaciente ='+TRotinaGenerica.IntToSql(CdsPacientesPorNome.FieldByName('IDPACIENTE').AsInteger));
    // DmConexaoF.SqlExecutar('UPDATE pacienteexamesolicitado SET idpaciente = '+TRotinaGenerica.IntToSql(IdPacienteValido)+' WHERE idpaciente ='+TRotinaGenerica.IntToSql(CdsPacientesPorNome.FieldByName('IDPACIENTE').AsInteger));
  except

     on Exc:Exception do begin
        SQLConnection.Rollback(Trans);
     Application.MessageBox('Erro Ao Executar Script!'#13'Tente Novamente Mais tarde.', 'Erro', MB_ICONERROR+MB_OK);

     end;

  end;
end;

procedure TOpeCorrigePacienteDuplicadoF.corrigePacienteSolicitacaoMedicamento(
  idPacienteAntigo, idPacienteNovo: Integer);
var
  proximoID, proximoIDFilha: Integer;
  CdsAuxiliar, CdsFilha: TClientDataSet;
  Trans : TTransactionDesc;
begin
  Trans.TransactionID := 1;
  Trans.IsolationLevel := xilREADCOMMITTED;
  SQLConnection.StartTransaction(Trans);
  try

    proximoID := DmConexaoF.Proximo('pacientereceituario', 'idpacientereceituario', 'IDPACIENTE = '+TRotinaGenerica.IntToSql(idPacienteNovo));
    CdsAuxiliar := TClientDataSet.Create(nil);
    try
      CdsAuxiliar.RemoteServer := DmConexaoF.LocalConnection;
      CdsAuxiliar.ProviderName := 'dmDspConsulta';
      TCdsExecute.ExecutaSql(
         CdsAuxiliar
        ,'  SELECT IDpacientereceituario, idpaciente '
        +'    FROM pacientereceituario '
        +'   WHERE 1 = 1 '
        +'     AND idpaciente = '+TRotinaGenerica.IntToSql(idPacienteAntigo)
      );

      if not(CdsAuxiliar.IsEmpty) then
      begin
        CdsAuxiliar.First;
        while not(CdsAuxiliar.Eof) do
        begin

          SQLConnection.ExecuteDirect(
            ' UPDATE pacientereceituario '
           +'    SET idpaciente = '+TRotinaGenerica.IntToSql(idPacienteNovo)
           +'       ,IDpacientereceituario = '+TRotinaGenerica.IntToSql(proximoID)
           +'  WHERE idpaciente ='+TRotinaGenerica.IntToSql(CdsAuxiliar.FieldByName('IDPACIENTE').AsInteger)
           +'   AND IDpacientereceituario ='+TRotinaGenerica.IntToSql(CdsAuxiliar.FieldByName('IDpacientereceituario').AsInteger)
          );


          proximoIDFilha := DmConexaoF.Proximo('pacientereceituariouso', 'idpacientereceituariouso', 'IDPACIENTE = '+TRotinaGenerica.IntToSql(idPacienteNovo) +' AND IDpacientereceituario = '+TRotinaGenerica.IntToSql(CdsAuxiliar.FieldByName('IDpacientereceituario').AsInteger));
          CdsFilha := TClientDataSet.Create(nil);
          try
            CdsFilha.RemoteServer := DmConexaoF.LocalConnection;
            CdsFilha.ProviderName := 'dmDspConsulta';
            TCdsExecute.ExecutaSql(
               CdsFilha
              ,'  SELECT idpacientereceituariouso, IDpacientereceituario, idpaciente '
              +'    FROM pacientereceituariouso '
              +'   WHERE 1 = 1 '
              +'     AND IDpacientereceituario = '+TRotinaGenerica.IntToSql(CdsAuxiliar.FieldByName('IDpacientereceituario').AsInteger)
              +'     AND idpaciente = '+TRotinaGenerica.IntToSql(idPacienteAntigo)
            );

            if not(CdsFilha.IsEmpty) then
            begin
              CdsFilha.First;
              while not(CdsFilha.Eof) do
              begin

                  SQLConnection.ExecuteDirect(
                    ' UPDATE pacientereceituariouso '
                   +'    SET idpaciente = '+TRotinaGenerica.IntToSql(idPacienteNovo)
                   +'       ,IDpacientereceituario = '+TRotinaGenerica.IntToSql(proximoID)
                   +'  WHERE idpaciente = '+TRotinaGenerica.IntToSql(CdsFilha.FieldByName('IDPACIENTE').AsInteger)
                   +'    AND IDpacientereceituario = '+TRotinaGenerica.IntToSql(CdsAuxiliar.FieldByName('IDpacientereceituario').AsInteger)
                   );

                Inc(proximoIDFilha);
                CdsFilha.Next;
              end;
            end;
          finally
            FreeAndNil(CdsFilha);
          end;

          Inc(proximoID);
          CdsAuxiliar.Next;
        end;
      end;

      SQLConnection.Commit(Trans);
    finally
      FreeAndNil(CdsAuxiliar);
    end;

    // DmConexaoF.SqlExecutar('UPDATE pacientereceituario SET idpaciente = '+TRotinaGenerica.IntToSql(IdPacienteValido)+' WHERE idpaciente ='+TRotinaGenerica.IntToSql(CdsPacientesPorNome.FieldByName('IDPACIENTE').AsInteger));
    // DmConexaoF.SqlExecutar('UPDATE pacientereceituariouso SET idpaciente = '+TRotinaGenerica.IntToSql(IdPacienteValido)+' WHERE idpaciente ='+TRotinaGenerica.IntToSql(CdsPacientesPorNome.FieldByName('IDPACIENTE').AsInteger));

  except

     on Exc:Exception do begin
        SQLConnection.Rollback(Trans);
     Application.MessageBox('Erro Ao Executar Script!'#13'Tente Novamente Mais tarde.', 'Erro', MB_ICONERROR+MB_OK);

     end;

  end;


end;

procedure TOpeCorrigePacienteDuplicadoF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  OpeCorrigePacienteDuplicadoF.Release;
  OpeCorrigePacienteDuplicadoF := nil;
end;

procedure TOpeCorrigePacienteDuplicadoF.FormCreate(Sender: TObject);
var
  sParams  :TStringList;
begin
  inherited;
  CdsDuplicado.Open;


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

Initialization
  RegisterClass(TOpeCorrigePacienteDuplicadoF);

end.
