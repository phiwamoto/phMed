unit LibRotinasSistemaU;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, Menus,  ExtCtrls, dxCore, DBClient, Winsock, SqlExpr, Grids,
     DBGrids, DBTables, DB, ImgList, StdCtrls, Mask, DBCtrls, TypInfo, frxClass,
     frxDBSet, frxDesgn, cxMemo, Provider, FMTBcd, IdBaseComponent, IdComponent,
     IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
     IdSMTPBase, IdSMTP, IdMessage, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
     IdSSL, IdSSLOpenSSL, WinInet, jpeg, cxDBEdit, cxDropDownEdit;


type

  TDiretorio = class
  public
    class function Sistema: String;
    class function SistemaImagemClinica: String;
    class function SistemaImagemDoutor: String;
    class function SistemaImagemSecretaria: String;
    class function SistemaImagemUsuario: String;
  end;

  TRelatorio = class
  public
    class function DiretorioRelatorio: String;
    class function Carregar(const pNomeRelatorio: String; const pRelatorio: TfrxReport): Boolean;
    class function Visualisar(const pNomeRelatorio: String; const pRelatorio: TfrxReport): Boolean;
    class procedure RelatorioPrint(const pReport: TfrxReport);
  end;

  TParametroSistema = class
  public
    class function PegaValor(const pCds: TClientDataSet; const pFildName: String): String;
    class function pegaParametroValor(const pTabela, pCampo: String): String;
  end;

  TParametroDesenvolvimento = class
  public
    class function LoginAdmin: Boolean;
  end;

  TCdsExecute = class
  public
    class Function ExecutaSql(const pCds: TClientDataSet; const pSql: String; const pExecutar: Boolean = False): Boolean;

  end;

  TRotinaSistema = class
  private

  public
    class function GridSelectFontGetColor: TColor;
    class function GridSelectBrushGetColor: TColor;

    class function PreencheEvolucaoClinicaAgrupado(pCxMemo: TcxMemo; pId_Paciente: Integer): Boolean;
    class function EnviarEmail(pEmail, pAssunto, pTexto, pEmailRem, pSenhaEmailRem, pSmtp: String; pNrPorta: Integer): Boolean;
    class function EnviarEmailAnexo(pEmail, pAssunto, pTexto, pEmailRem, pSenhaEmailRem, pSmtp: String; pNrPorta: Integer; pAnexos: TStringList): Boolean;

    class function IsConnectedToInternet: Boolean;

    class procedure ComprimirImagem(pCompression: Integer; const pInFile, pOutFile: String);

    class function getEmailClinica(var pEmail, pSenha, pSmtp: String; var pPorta: Integer): Boolean;

  end;


  TCarregaCombo = class
  public
    class procedure carregarDoutor(pComboDescricao, pComboId: TCxComboBox);

    class procedure carregaContaBancaria(pComboDescricao, pComboId: TCxDBComboBox);
    class procedure carregaOperacaoTitulo(pComboDescricao, pComboId: TCxDBComboBox);
    class procedure carregaTipoPolo(pComboDescricao, pComboId: TCxDBComboBox);
    class procedure carregaTipoProcesso(pComboDescricao, pComboId: TCxDBComboBox);
  end;

  TCarregarComboDB = class
  public
    class procedure carregarMedicamentoQtde(pComboDescricao, pComboID: TCxDBComboBox);
    class procedure carregarMedicamentoUso(pComboDescricao, pComboID: TCxDBComboBox);
  end;

  TPessoa = class
  public
    class function gerarID(pCpfCnpj: String): Int64;

    class function nomeJaPossuiCadastro(pNome: String): Boolean;
  end;


//  TAgendaConsulta = class
//  public
//    class function gerarID(pCpfCnpj: String): Int64;
//  end;


implementation

uses
  ShellApi, XDmU, DmConexaoU, ComCtrls, XLibGenericoU, DmCadastroU, DmRelatorioU,
  IdAttachment, IdAttachmentFile;


{ TDiretorio }

class function TDiretorio.Sistema: String;
begin
  Result := ExtractFilePath(ParamStr(0));
//  Result := DmConexaoF.DiretorioSistema;
end;

class function TDiretorio.SistemaImagemClinica: String;
begin
  Result := TParametroSistema.pegaParametroValor('PARAMETROSISTEMA', 'DS_DIRETORIOFOTOCLINICA');
//  Result := TDiretorio.Sistema + 'Imagens\Clinica\';
end;

class function TDiretorio.SistemaImagemDoutor: String;
begin
  Result := TParametroSistema.pegaParametroValor('PARAMETROSISTEMA', 'DS_DIRETORIOFOTODOUTOR');
//  Result := TDiretorio.Sistema + 'Imagens\Doutor\';
end;

class function TDiretorio.SistemaImagemSecretaria: String;
begin
  Result := TParametroSistema.pegaParametroValor('PARAMETROSISTEMA', 'DS_DIRETORIOFOTOSECRETARIA');
//  Result := TDiretorio.Sistema + 'Imagens\Secretaria\';
end;

class function TDiretorio.SistemaImagemUsuario: String;
begin
  Result := TDiretorio.Sistema + 'Imagens\Usuario\';
end;

{ TRelatorio }

class function TRelatorio.Carregar(const pNomeRelatorio: String; const pRelatorio: TfrxReport): Boolean;
begin
  Result := True;
//  try
//    // Atualizado e carregando dados para cabeçalho do relátorio
//    DmRelatorioF.CdsCabecalhoRelatorio.Close;
//    DmRelatorioF.CdsCabecalhoRelatorio.Open;
//    pRelatorio.Clear;
//    if FileExists(DiretorioRelatorio+'Cliente\'+pNomeRelatorio+'.fr3') then
//    begin
//      pRelatorio.FileName := DiretorioRelatorio+'Cliente\'+pNomeRelatorio+'.fr3';
//    end
//    else
//    begin
//      if FileExists(DiretorioRelatorio+'Sistema\'+pNomeRelatorio+ '.fr3') then
//        pRelatorio.FileName := DiretorioRelatorio+'Sistema\'+pNomeRelatorio+'.fr3'
//      else
//      begin
//        TMensagemDialogo.MensagemGeral('Relatório não encontrado!', MsgInformar, BtOk);
//        Result := False;
//        Exit;
//      end;
//    end;
//
//    pRelatorio.LoadFromFile(pRelatorio.FileName);
//
//    // LogoCarrega - Exemplo
//    //    Empresa1 := Relatorio.Pages[0].FindObject('MnEmpresa1');
//    //    TfrxMemoView(Empresa1).Text := ConexaoDM.CdsAux.FieldByName('V_RAZAOSOCIAL').AsString;
//    if Assigned( TfrxPictureView(pRelatorio.FindObject('Logo')) )  then
//    begin
//      if ((DmRelatorioF.CdsCabecalhoRelatorio.FieldByName('DS_FOTO').AsString = '') or (DmRelatorioF.CdsCabecalhoRelatorio.FieldByName('DS_FOTO').IsNull)) then
//        TfrxPictureView(pRelatorio.FindObject('Logo')).Picture.LoadFromFile(TDiretorio.SistemaImagemClinica+'SemImagem.jpg')
//      else
//        TfrxPictureView(pRelatorio.FindObject('Logo')).Picture.LoadFromFile(TDiretorio.SistemaImagemClinica+DmRelatorioF.CdsCabecalhoRelatorio.FieldByName('DS_FOTO').AsString);
//    end;
//    Result := True;
//  except
//    on e : Exception do
//    begin
//      raise Exception.Create('Ocorreu um erro (TRelatorio.Carregar):' + #13 +  E.message);
//      Result := False;
//    end;
//  end;
end;

//class function TRelatorio.CdsCarregarVisualizar(pCds: TClientDataSet; pNomeRelatorio: String; pRelatorio: TfrxReport): Boolean;
//var
//  CdsAux: TClientDataSet;
//begin
//  inherited;
//  Result := False;
//  try
//    CdsAux := TClientDataSet.Create(nil);
//    try
//      CdsAux.CloneCursor(pCds, False);
//      CdsAux.DisableControls;
//  //    pRelatorio.DataSet := CdsAux;
//
//      if TRelatorio.Carregar(pNomeRelatorio, pRelatorio) then
//        TRelatorio.Visualisar(pNomeRelatorio, pRelatorio)
//      else
//        ShowMessage('Nao Tem');
//
//      Result := True;
//    finally
//  //    pRelatorio.DataSet := pCds;
//      CdsAux.EnableControls;
//      FreeAndNil(CdsAux);
//    end;
//  except
//    Result := True;
//  end;
//end;

class function TRelatorio.DiretorioRelatorio: String;
begin
  DmConexaoF.SqlConsultar(
     ' SELECT DS_DIRETORIORELATORIO '
    +'   FROM PARAMETROSISTEMA '
    +'  WHERE 1 = 1 '
  );
  Result := DmConexaoF.dmCdsConsulta.FieldByName('DS_DIRETORIORELATORIO').AsString;
end;

class procedure TRelatorio.RelatorioPrint(const pReport: TfrxReport);
begin
  try
    pReport.PrepareReport(True);
    pReport.ShowReport(True);
    pReport.Terminated := True;
  except
    on e : Exception do
    begin
      raise Exception.Create('Ocorreu um erro (TRelatorio.RelatorioPrint):' + #13 +  E.message);
    end;
  end;
end;

class function TRelatorio.Visualisar(const pNomeRelatorio: String; const pRelatorio: TfrxReport): Boolean;
begin
  Result := False;
  try
    if not( DirectoryExists(TRelatorio.DiretorioRelatorio) ) then
      if not( CreateDir(TRelatorio.DiretorioRelatorio) ) then
        Exit;

    Result := True;
    TRelatorio.RelatorioPrint(pRelatorio);

  except
    on e : Exception do
    begin
      raise Exception.Create('Ocorreu um erro (TRelatorio.Visualisar):' + #13 +  E.message);
      Result := False;
    end;
  end;
end;

{ TParametroSistema }

class function TParametroSistema.pegaParametroValor(const pTabela, pCampo: String): String;
var
  cdsParametro: TClientDataSet;
begin
  Result := '';
  cdsParametro := TClientDataSet.Create(nil);
  try
    cdsParametro.RemoteServer := DmConexaoF.LocalConnection;
    cdsParametro.ProviderName := 'dmDspConsulta';
    TCdsExecute.ExecutaSql(
       cdsParametro
      ,' SELECT '+pCampo+' '
      +'   FROM '+pTabela+' '
      +'  WHERE 1 = 1 '
    );

    if not cdsParametro.IsEmpty then
    begin
      try
        Result := cdsParametro.FieldByName(pCampo).AsString;
      except
        Result := '';
      end;
    end;

  finally
    FreeAndNil(cdsParametro);
  end;
end;

class function TParametroSistema.PegaValor(const pCds: TClientDataSet; const pFildName: String): String;
begin
  Result := '';
  TCdsExecute.ExecutaSql(
     pCds
    ,' SELECT PSI.ID_PARAMETROSISTEMA '
    +'       ,PSI.DS_LABEL '
    +'       ,PSI.DS_FIELDNAME '
    +'       ,PSI.DS_VALOR '
    +'       ,PSI.DS_OBJETIVO '
    +'       ,PSI.TP_FIELDNAME '
    +'   FROM PARAMETROSISTEMA PSI '
    +'  WHERE 1 = 1 '
    +' AND UPPER(PSI.DS_FIELDNAME) = '+QuotedStr(AnsiUpperCase(pFildName))
  );

  if not pCds.IsEmpty then
  begin
    try
      Result := pCds.FieldByName('DS_VALOR').AsString;
    except
      Result := '';
    end;
  end;
end;


{ TCdsExecute }

class function TCdsExecute.ExecutaSql(const pCds: TClientDataSet; const pSql: String; const pExecutar: Boolean): Boolean;
begin
  Result := True;
  try
    if pCds.Active then
      pCds.Close;

    pCds.CommandText := pSql;

    if pExecutar then
    begin
      pCds.Execute;
      if pCds.Active then
        pCds.Close;
    end
    else
      pCds.Open;
  except
    Result := False;
  end;
end;

{ TRotinaSistema }

class procedure TRotinaSistema.ComprimirImagem(pCompression: Integer; const pInFile, pOutFile: String);
var
  iCompression: integer;
  oJPG: TJPegImage;
  oBMP: TBitMap;
begin

  { Forcar a Compressião para a faixa entre 1..100 }
  iCompression := abs(pCompression);
  if iCompression = 0 then
    iCompression := 1;
  if iCompression > 100 then
    iCompression := 100;

  { Cria as classes de trabalho Jpeg e Bmp }
  oJPG := TJPegImage.Create;
  oJPG.LoadFromFile(pInFile);
  oBMP := TBitMap.Create;
  oBMP.Assign(oJPG);

  { Fazer a Compressão e salva o novo arquivo }
  oJPG.CompressionQuality := iCompression;
  oJPG.Compress;
  oJPG.SaveToFile(pOutFile);

  { Limpar }
  oJPG.Free;
  oBMP.Free;
end;

//class procedure TRotinaSistema.EMail_Enviar(Portam : Integer; Hostm: String; UserNamem: String; Passwordm : String; Destinatariom : String; Assuntom : String; Mensagemm : TMemo; EMail_Remetentem: String; Mensagem_Confirmacao : Boolean);
//Var Message_ : TidMessage;
//    IdSMTP_  : TIdSMTP;
//begin
//   IdSMTP_                    := TIdSMTP.Create(Application);
//   IdSMTP_.Port               := Portam;
//   IdSMTP_.AuthType           := satNone;
//   IdSMTP_.UseTLS             := utUseRequireTLS;
//   IdSMTP_.Host               := Hostm;
//   IdSMTP_.Username           := UserNamem;
//   IdSMTP_.Password           := Passwordm;
//
//   IdSMTP_.Connect;
//   If (IdSMTP_.Connected = False) Then
//   Begin
//      ShowMessage('Falha na conexão!');
//      IdSMTP_.Disconnect;
//      Exit;
//   End;
//
//   try
//      Message_ := TidMessage.Create(Application);
//      Message_.Subject                   := Assuntom;         // Assunto
//      Message_.Recipients.EMailAddresses := Destinatariom;    // EMail destinatario
//      Message_.Subject                   := Assuntom;         // Assunto
//      Message_.Body                      := Mensagemm.Lines;  // Mensagem que será enviada
//      Message_.From.Address              := EMail_Remetentem; // Email do Remetente
//
//      IdSMTP_.Send(Message_);
//   finally
//      IdSMTP_.Disconnect;
//      Application.ProcessMessages;
//   end;
//
//   If (Mensagem_Confirmacao = True) Then
//      ShowMessage('Enviado com sucesso!');
//
//   Message_.Free;
//   IdSMTP_.Free;
//end;
//
//class function TRotinaSistema.EnviaEmail(pEmail, pAssunto, pTexto, pEmailRem, pSenhaEmailRem, pSmtp: String; pNrPorta: Integer): Boolean;
//var
//  IdMsgSend: TIdMessage;
//  NmSmtp: TIdSMTP;
// // IdSSLIOHandlerSocketOpenSSL1:  TIdSSLIOHandlerSocketOpenSSL;                                   // COLOCADO
//
//begin
//  try
//    Result := False;
//    IdMsgSend := TIdMessage.Create(nil);
//    NmSmtp := TIdSMTP.Create(nil);
////    IdSSLIOHandlerSocketOpenSSL1 := TIdSSLIOHandlerSocketOpenSSL.Create(Application); // COLOCADO
//
//    { Seu servidor SMTP }
//    NmSmtp.Host :=  pSmtp;
//    { Porta SMTP, **NÃO MUDE ISTO** }
//
//    NmSmtp.Port := pNrPorta;
//    { Nome de login do usuário }
////    NmSmtp.AuthenticationType := atLogin;
//
////    NmSmtp.IOHandler := IdSSLIOHandlerSocketOpenSSL1;                       // COLOCADO
////    NmSmtp.UseTLS := utNoTLSSupport;                                       // COLOCADO
//    NmSmtp.AuthType := satNone;
//
//
//    NmSmtp.Username := pEmailRem;
//    NmSmtp.Password := pSenhaEmailRem;
//
////   IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv2; // COLOCADO
////   IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode := sslmClient;  // COLOCADO
//
//    { Conecta ao servidor }
//    NmSmtp.Connect;
//    { Se ocorrer algum pErro durante a conexão com o servidor, avise! }
//
//    with IdMsgSend do
//    begin
//      From.Text := pEmailRem+' <'+pEmail+'>';
//      ReplyTo.EMailAddresses := pEmail;
//      Recipients.EMailAddresses := pEmail; { To: header }
//      //      CCList.EMailAddresses := 'fabio@sub100.com.br'; {CC}
//      //      BccList.EMailAddresses := 'suporte@sub100.com.br'; {BBC}
//        { Assunto da mensagem }
//      Subject := pAssunto;
//      { Corpo da mensagem }
//      Body.Clear;
//      Body.Add(pTexto);
//    end;
//    { Manda o e-mail }
//    NmSmtp.Send(IdMsgSend);
//    { Disconecta do servidor }
//    NmSmtp.Disconnect;
//    Result := True;
//  except
//    on e:exception do
//    begin
//      if (pos('SORRY, NO MAILBOX HERE BY THAT NAME',UpperCase(e.message))>0) then
//        ShowMessage('Conta de email inválida no domínio '+copy(pEmail,pos('@',pEmail)+1,length(pEmail)))
//      else
//        ShowMessage('Erro Enviando Email: '+e.Message+' - '+pEmail);
//      Result := False;
//    try
//      NmSmtp.Disconnect;
//    except
//    end;
//    end;
//  end;
//end;

class function TRotinaSistema.IsConnectedToInternet: Boolean;
var
  dwConnectionTypes: Integer;
begin
  try
    dwConnectionTypes := INTERNET_CONNECTION_MODEM + INTERNET_CONNECTION_LAN + INTERNET_CONNECTION_PROXY;
    if InternetGetConnectedState(@dwConnectionTypes, 0) then
      Result := True
  else
    Result := False;
  except
    Result := False;
  end;
end;

class function TRotinaSistema.EnviarEmail(pEmail, pAssunto, pTexto, pEmailRem, pSenhaEmailRem, pSmtp: String; pNrPorta: Integer): Boolean;
var
  Smtp: TidSMTP;
  Email: TIdMessage;
  SSL: TIdSSLIOHandlerSocketOpenSSL;
begin
  Result := False;

  // Criando a mensagem de email
  Email := TIdMessage.Create(nil);
  with Email do
  begin
    From.Name := pAssunto;  // 'Mensagem Eletrônica'; // Nome
    From.Address := pEmailRem;// 'phiwamoto@hotmail.com'; // E-Mail
    Recipients.Add;
    Recipients.items[0].Address := pEmail; // 'phiwamoto@hotmail.com'; // Para
    Subject := pAssunto; // 'Termino de financiamento '; // Assunto

    body.Add(pTexto);

    //for i := 0 to Memo1.Lines.Count - 1 do
    //begin
    //body.Add(Memo1.Lines[i]);
    //end;
  end;

  Email.ContentType := 'text/html';
  Email.Priority := mpHighest;
  Email.Encoding := meMIME;
  Email.Headers.Values['X-Library'] := '';
  Email.Body.Clear;
  Email.Body.Add(pTexto);
  Email.Recipients.EMailAddresses := pEmail;

  // Criando o Segurança SSL
  SSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  // Criando o objeto
  Smtp := TidSMTP.Create(nil);
  Smtp.Username := pEmailRem;
  Smtp.Password := pSenhaEmailRem;
  Smtp.Host := pSmtp;
  Smtp.port := pNrPorta;
  Smtp.IOHandler := SSL;
  Smtp.UseTLS := utUseRequireTLS;
  // Enviando.....
  try
    Smtp.Connect();
    Smtp.Send(Email);
    Smtp.Disconnect;
    MessageDlg('Email enviado com sucesso!', mtWarning, [mbOK], 0);
  except
    MessageDlg('Nao Enviou - Falhou!', mtWarning, [mbOK], 0);
  end;
  Smtp.Destroy();
  Email.Destroy();
  SSL.Destroy();
end;

class function TRotinaSistema.EnviarEmailAnexo(pEmail, pAssunto, pTexto, pEmailRem, pSenhaEmailRem, pSmtp: String; pNrPorta: Integer; pAnexos: TStringList): Boolean;
var
  Smtp: TidSMTP;
  Email: TIdMessage;
  SSL: TIdSSLIOHandlerSocketOpenSSL;
  IdAttachmentFile: TIdAttachmentFile;
  ContadorAnexo: Integer;
begin
  Result := False;

  // Criando a mensagem de email
  Email := TIdMessage.Create(nil);
  with Email do
  begin
    From.Name := pAssunto;  // 'Mensagem Eletrônica'; // Nome
    From.Address := pEmailRem;// 'phiwamoto@hotmail.com'; // E-Mail
    Recipients.Add;
    Recipients.items[0].Address := pEmail; // 'phiwamoto@hotmail.com'; // Para
    Subject := pAssunto; // 'Termino de financiamento '; // Assunto

    body.Add(pTexto);
    //for i := 0 to Memo1.Lines.Count - 1 do
    //begin
    //body.Add(Memo1.Lines[i]);
    //end;
  end;

  //Email.ContentType := 'text/html';
  Email.ContentType   := 'multipart/mixed';
  Email.Priority := mpHighest;
  Email.Encoding := meMIME;
  Email.Headers.Values['X-Library'] := '';
  Email.Body.Clear;
  Email.Body.Add(pTexto);
  Email.Recipients.EMailAddresses := pEmail;


  For ContadorAnexo := 0 to pAnexos.Count-1 do
  begin
    //TIdAttachmentFile.Create(Email.MessageParts, TFileName(pAnexos.Strings[ContadorAnexo]) );

    //Anexo
    //anexoCaminho := 'C:\x.pdf'; //Caminho do arquivo
    with IdAttachmentFile do
    begin
      IdAttachmentFile := TIdAttachmentFile.Create(Email.MessageParts, TFileName(pAnexos.Strings[ContadorAnexo]) ); //Incluindo o anexo na mensagem
      IdAttachmentFile.ContentType := 'application/pdf;application/doc;application/docx;application/xls;application/xlsx;application/jpeg;application/png;'; //Informando o tipo MIME do anexo. IMPORTANTE! Colocar o tipo MIME + ; (ponto-e-vírgula)
      IdAttachmentFile.FileName := ExtractFileName(TFileName(pAnexos.Strings[ContadorAnexo])); //Nome do arquivo
    end;
  end;

//    //Tratando os arquivos anexos

  // Criando o Segurança SSL
  SSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  // Criando o objeto
  Smtp := TidSMTP.Create(nil);
  Smtp.Username := pEmailRem;
  Smtp.Password := pSenhaEmailRem;
  Smtp.Host := pSmtp;
  Smtp.port := pNrPorta;
  Smtp.IOHandler := SSL;
  Smtp.UseTLS := utUseRequireTLS;
  // Enviando.....
  try
    Smtp.Connect();
    Smtp.Send(Email);
    Smtp.Disconnect;
    MessageDlg('Email enviado com sucesso!', mtWarning, [mbOK], 0);
  except
    MessageDlg('Nao Enviou - Falhou!', mtWarning, [mbOK], 0);
  end;
  Smtp.Destroy();
  Email.Destroy();
  SSL.Destroy();
end;

class function TRotinaSistema.getEmailClinica(var pEmail, pSenha, pSmtp: String; var pPorta: Integer): Boolean;
var
  CdsAuxiliar: TClientDataSet;
begin
  Result := False;
  CdsAuxiliar := TClientDataSet.Create(nil);
  try
    CdsAuxiliar.RemoteServer := DmConexaoF.LocalConnection;
    CdsAuxiliar.ProviderName := 'dmDspConsulta';
    TCdsExecute.ExecutaSql(
        CdsAuxiliar
       ,' SELECT CLI.EMAILCLINICA '
       +'       ,CLI.EMAILCLINICASENHA '
       +'       ,CLI.SMTPSERVIDOR '
       +'       ,CLI.SMTPPORTA '
       +'   FROM CLINICA CLI '
       +'  WHERE 1 = 1 '
    );

    CdsAuxiliar.DisableControls;
    CdsAuxiliar.First;
    if not CdsAuxiliar.IsEmpty then
    begin
      pEmail := CdsAuxiliar.FieldByName('EMAILCLINICA').AsString;
      pSenha := CdsAuxiliar.FieldByName('EMAILCLINICASENHA').AsString;
      pSmtp  := CdsAuxiliar.FieldByName('SMTPSERVIDOR').AsString;
      pPorta := CdsAuxiliar.FieldByName('SMTPPORTA').AsInteger;
      Result := True;
    end;
  finally
    CdsAuxiliar.EnableControls;
    FreeAndNil(CdsAuxiliar);
  end;
end;

class function TRotinaSistema.GridSelectBrushGetColor: TColor;
begin
  Result := $00F0F0F0;
end;

class function TRotinaSistema.GridSelectFontGetColor: TColor;
begin
  Result := clBlack;
end;

class function TRotinaSistema.PreencheEvolucaoClinicaAgrupado(pCxMemo: TcxMemo; pId_Paciente: Integer): Boolean;
var
  CdsAuxiliar: TClientDataSet;
begin
  Result := False;
  pCxMemo.Lines.Clear;
  try
    CdsAuxiliar := TClientDataSet.Create(nil);
    try
      CdsAuxiliar.RemoteServer := DmConexaoF.LocalConnection;
      CdsAuxiliar.ProviderName := 'dmDspConsulta';
      TCdsExecute.ExecutaSql(
          CdsAuxiliar
         ,' SELECT PEC.DS_EVOLUCAOCLINICA '
         +'   FROM PACIENTE_EVOLUCAOCLINICA PEC '
         +'  WHERE 1 = 1 '
         +'    AND PEC.ID_PACIENTE = '+IntToStr(pId_Paciente)
      );

      CdsAuxiliar.DisableControls;
      CdsAuxiliar.First;
      while not(CdsAuxiliar.Eof) do
      begin
        pCxMemo.Lines.Add(CdsAuxiliar.FieldByName('DS_EVOLUCAOCLINICA').AsString);
        pCxMemo.Lines.Add('');
        pCxMemo.Lines.Add('');
        CdsAuxiliar.Next;
      end;
    finally
      CdsAuxiliar.EnableControls;
      FreeAndNil(CdsAuxiliar);
    end;
  except
    Result := False;
  end;
end;

{ TParametroDesenvolvimento }

class function TParametroDesenvolvimento.LoginAdmin: Boolean;
begin
  Result := FindCmdLineSwitch('LOGINADMIN', True);
end;

{ TCarregaCombo }

class procedure TCarregaCombo.carregaContaBancaria(pComboDescricao, pComboId: TCxDBComboBox);
begin
  pComboDescricao.Properties.Items.Clear;
  pComboId.Properties.Items.Clear;

  DmConexaoF.dmCdsConsulta.Close;
  DmConexaoF.dmCdsConsulta.CommandText :=
     ' SELECT CBA.* '
    +'       ,PES.NOMEFANTASIA '
    +'       ,PES.CPFCNPJ '
    +'       ,PES.IDTIPOPESSOA '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM CONTABANCARIA CBA '
    +'        LEFT JOIN PESSOA PES ON (PES.IDPESSOA = CBA.IDPESSOA) '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = CBA.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = 1 '
    ;
  DmConexaoF.dmCdsConsulta.Open;
  if not DmConexaoF.dmCdsConsulta.IsEmpty then
  begin
    DmConexaoF.dmCdsConsulta.First;
    while not DmConexaoF.dmCdsConsulta.Eof do
    begin
      pComboDescricao.Properties.Items.Add('BANCO: '+DmConexaoF.dmCdsConsulta.FieldByName('BANCO').AsString
                                          +'  / AG: '+DmConexaoF.dmCdsConsulta.FieldByName('AGENCIA').AsString
                                          +'  / CC: '+DmConexaoF.dmCdsConsulta.FieldByName('CONTACORRENTE').AsString
                                          +'  / TITULAR: '+DmConexaoF.dmCdsConsulta.FieldByName('NOMEFANTASIA').AsString
                                           );
      pComboId.Properties.Items.Add(DmConexaoF.dmCdsConsulta.FieldByName('IDCONTABANCARIA').AsString);
      DmConexaoF.dmCdsConsulta.Next;
    end;
  end;
end;

class procedure TCarregaCombo.carregaOperacaoTitulo(pComboDescricao, pComboId: TCxDBComboBox);
begin
  pComboDescricao.Properties.Items.Clear;
  pComboId.Properties.Items.Clear;

  DmConexaoF.dmCdsConsulta.Close;
  DmConexaoF.dmCdsConsulta.CommandText :=
     ' SELECT OTI.* '
    +'   FROM OPERACAOTITULO OTI '
    +'  WHERE 1 = 1 '
    ;
  DmConexaoF.dmCdsConsulta.Open;
  if not DmConexaoF.dmCdsConsulta.IsEmpty then
  begin
    DmConexaoF.dmCdsConsulta.First;
    while not DmConexaoF.dmCdsConsulta.Eof do
    begin
      pComboDescricao.Properties.Items.Add(DmConexaoF.dmCdsConsulta.FieldByName('DESCRICAO').AsString);
      pComboId.Properties.Items.Add(DmConexaoF.dmCdsConsulta.FieldByName('IDOPERACAOTITULO').AsString);
      DmConexaoF.dmCdsConsulta.Next;
    end;
  end;
end;

class procedure TCarregaCombo.carregarDoutor(pComboDescricao, pComboId: TCxComboBox);
begin
  pComboDescricao.Properties.Items.Clear;
  pComboId.Properties.Items.Clear;

  DmConexaoF.dmCdsConsulta.Close;
  DmConexaoF.dmCdsConsulta.CommandText :=
     ' SELECT DOU.IDDOUTOR '
    +'        ,DOU.NOME '
    +'   FROM DOUTOR DOU '
    +'  WHERE 1 = 1 '
    +'  ORDER BY DOU.NOME '
    ;

  DmConexaoF.dmCdsConsulta.Open;
  if not DmConexaoF.dmCdsConsulta.IsEmpty then
  begin
    DmConexaoF.dmCdsConsulta.First;
    while not DmConexaoF.dmCdsConsulta.Eof do
    begin
      pComboDescricao.Properties.Items.Add(DmConexaoF.dmCdsConsulta.FieldByName('NOME').AsString);
      pComboId.Properties.Items.Add(DmConexaoF.dmCdsConsulta.FieldByName('IDDOUTOR').AsString);
      DmConexaoF.dmCdsConsulta.Next;
    end;
    pComboDescricao.ItemIndex := 0;
    pComboId.ItemIndex := 0;
  end;
end;

class procedure TCarregaCombo.carregaTipoPolo(pComboDescricao, pComboId: TCxDBComboBox);
begin
  pComboDescricao.Properties.Items.Clear;
  pComboId.Properties.Items.Clear;

  DmConexaoF.dmCdsConsulta.Close;
  DmConexaoF.dmCdsConsulta.CommandText :=
     ' SELECT TPO.* '
    +'   FROM TIPOPOLO TPO '
    +'  WHERE 1 = 1 '
    ;
  DmConexaoF.dmCdsConsulta.Open;
  if not DmConexaoF.dmCdsConsulta.IsEmpty then
  begin
    DmConexaoF.dmCdsConsulta.First;
    while not DmConexaoF.dmCdsConsulta.Eof do
    begin
      pComboDescricao.Properties.Items.Add(DmConexaoF.dmCdsConsulta.FieldByName('DESCRICAO').AsString);
      pComboId.Properties.Items.Add(DmConexaoF.dmCdsConsulta.FieldByName('IDTIPOPOLO').AsString);
      DmConexaoF.dmCdsConsulta.Next;
    end;
  end;
end;

class procedure TCarregaCombo.carregaTipoProcesso(pComboDescricao, pComboId: TCxDBComboBox);
begin
  pComboDescricao.Properties.Items.Clear;
  pComboId.Properties.Items.Clear;

  DmConexaoF.dmCdsConsulta.Close;
  DmConexaoF.dmCdsConsulta.CommandText :=
     ' SELECT TPR.* '
    +'   FROM TIPOPROCESSO TPR '
    +'  WHERE 1 = 1 '
    ;
  DmConexaoF.dmCdsConsulta.Open;
  if not DmConexaoF.dmCdsConsulta.IsEmpty then
  begin
    DmConexaoF.dmCdsConsulta.First;
    while not DmConexaoF.dmCdsConsulta.Eof do
    begin
      pComboDescricao.Properties.Items.Add(DmConexaoF.dmCdsConsulta.FieldByName('DESCRICAO').AsString);
      pComboId.Properties.Items.Add(DmConexaoF.dmCdsConsulta.FieldByName('IDTIPOPROCESSO').AsString);
      DmConexaoF.dmCdsConsulta.Next;
    end;
  end;
end;

{ TPessoa }

class function TPessoa.gerarID(pCpfCnpj: String): Int64;
begin
  //pCpfCnpj := TRdRotinas.getInstance.BuscarCaracteresValidos(Valor, '0123456789');
  if Trim(pCpfCnpj) <> '' then
    Result := 100000000000000 + StrToInt64(pCpfCnpj)
  else
    Result := 0;
end;

class function TPessoa.nomeJaPossuiCadastro(pNome: String): Boolean;
begin
  DmConexaoF.dmCdsConsulta.Close;
  DmConexaoF.dmCdsConsulta.CommandText :=
     ' SELECT PACIENTE.NOME '
    +'   FROM PACIENTE '
    +'  WHERE 1 = 1 '
    +'    AND TRIM(UPPER(PACIENTE.NOME)) = '+TRotinaGenerica.StrToSql(AnsiUpperCase(Trim(pNome)))
    ;
  DmConexaoF.dmCdsConsulta.Open;
  Result := False;
  if not DmConexaoF.dmCdsConsulta.IsEmpty then
    Result := True;
end;

{ TCarregarComboDB }

class procedure TCarregarComboDB.carregarMedicamentoQtde(pComboDescricao, pComboID: TCxDBComboBox);
begin
  pComboDescricao.Properties.Items.Clear;
  pComboID.Properties.Items.Clear;

  DmConexaoF.dmCdsConsulta.Close;
  DmConexaoF.dmCdsConsulta.CommandText :=
     ' SELECT MQT.* '
    +'   FROM MEDICAMENTOQTDE MQT '
    +'  WHERE 1 = 1 '
    ;
  DmConexaoF.dmCdsConsulta.Open;
  if not DmConexaoF.dmCdsConsulta.IsEmpty then
  begin
    DmConexaoF.dmCdsConsulta.First;
    while not DmConexaoF.dmCdsConsulta.Eof do
    begin
      pComboDescricao.Properties.Items.Add(DmConexaoF.dmCdsConsulta.FieldByName('DESCRICAO').AsString);
      pComboId.Properties.Items.Add(DmConexaoF.dmCdsConsulta.FieldByName('IDMEDICAMENTOQTDE').AsString);
      DmConexaoF.dmCdsConsulta.Next;
    end;
  end;
end;

class procedure TCarregarComboDB.carregarMedicamentoUso(pComboDescricao, pComboID: TCxDBComboBox);
begin
  pComboDescricao.Properties.Items.Clear;
  pComboID.Properties.Items.Clear;

  DmConexaoF.dmCdsConsulta.Close;
  DmConexaoF.dmCdsConsulta.CommandText :=
     ' SELECT MUS.* '
    +'   FROM MEDICAMENTOUSO MUS '
    +'  WHERE 1 = 1 '
    ;
  DmConexaoF.dmCdsConsulta.Open;
  if not DmConexaoF.dmCdsConsulta.IsEmpty then
  begin
    DmConexaoF.dmCdsConsulta.First;
    while not DmConexaoF.dmCdsConsulta.Eof do
    begin
      pComboDescricao.Properties.Items.Add(DmConexaoF.dmCdsConsulta.FieldByName('DESCRICAO').AsString);
      pComboId.Properties.Items.Add(DmConexaoF.dmCdsConsulta.FieldByName('IDMEDICAMENTOUSO').AsString);
      DmConexaoF.dmCdsConsulta.Next;
    end;
  end;
end;

end.
