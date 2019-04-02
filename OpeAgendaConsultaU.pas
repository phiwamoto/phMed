unit OpeAgendaConsultaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaOperacaoU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxPC, StdCtrls, cxButtons, ExtCtrls, ComCtrls, ActnList, ImgList, cxStyles,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxContainer, cxDateNavigator, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, DBClient, DateUtils, cxTimeEdit, Grids, DBGrids,
  cxImage
   , IdBaseComponent, IdComponent // Units Genéricas do Indy
 , IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL // Objeto SSL
 , IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP // Objeto SMTP
 , IdMessage // Objeto de Mensagem
 , IdAttachmentFile; // Objeto de Arquivos Anexos


type
  TcxViewInfoAcess = class(TcxGridTableDataCellViewInfo);
  TcxPainterAccess = class(TcxGridTableDataCellPainter);

  TOpeAgendaConsultaF = class(TXTelaOperacaoF)
    TsLista: TcxTabSheet;
    GridAgendaDBTableView1: TcxGridDBTableView;
    GridAgendaLevel1: TcxGridLevel;
    GridAgenda: TcxGrid;
    BtnIncluir: TcxButton;
    BtnRemover: TcxButton;
    AcaoIncluirAlterarAgenda: TAction;
    AcaoRemoverAgenda: TAction;
    AcaoEvolucaoClinica: TAction;
    AcaoReceituarioMedico: TAction;
    AcaoSolicitacaoExame: TAction;
    AcaoAtestadoMedico: TAction;
    AcaoAtualizaDados: TAction;
    cxButton3: TcxButton;
    Panel1: TPanel;
    PnlControladot: TPanel;
    PnlCalendario: TPanel;
    BtnEvolucaoClinica: TcxButton;
    BtnReceituarioMedico: TcxButton;
    BtnSolicitacaoExame: TcxButton;
    BtnAtestadoMedico: TcxButton;
    DsVirtualAgenda: TDataSource;
    CdsVirtualAgenda: TClientDataSet;
    CdsVirtualAgendaIDVIRTUALAGENDA: TIntegerField;
    CdsVirtualAgendaIDAGENDA: TIntegerField;
    CdsVirtualAgendaIDPACIENTE: TIntegerField;
    CdsVirtualAgendaIDDOUTOR: TIntegerField;
    CdsVirtualAgendaIDCONVENIO: TIntegerField;
    CdsVirtualAgendaDATAAGENDA: TDateField;
    CdsVirtualAgendaHORAAGENDA: TTimeField;
    CdsVirtualAgendaSTATUS: TStringField;
    CdsVirtualAgendaSTATUSIMAGEM: TStringField;
    CdsVirtualAgendaMOTIVO: TStringField;
    CdsVirtualAgendaDOUTORNOME: TStringField;
    CdsVirtualAgendaDOUTOREMAIL: TStringField;
    CdsVirtualAgendaPACIENTENOME: TStringField;
    CdsVirtualAgendaPACIENTETELEFONE01: TStringField;
    CdsVirtualAgendaPACIENTETELEFONE02: TStringField;
    CdsVirtualAgendaPACIENTERG: TStringField;
    CdsVirtualAgendaPACIENTECPF: TStringField;
    CdsVirtualAgendaPACIENTEIDADE: TIntegerField;
    CdsVirtualAgendaDESCRICAOCONVENIO: TStringField;
    GridAgendaDBTableView1HORAAGENDA: TcxGridDBColumn;
    GridAgendaDBTableView1STATUS: TcxGridDBColumn;
    GridAgendaDBTableView1STATUSIMAGEM: TcxGridDBColumn;
    GridAgendaDBTableView1MOTIVO: TcxGridDBColumn;
    GridAgendaDBTableView1PACIENTENOME: TcxGridDBColumn;
    GridAgendaDBTableView1PACIENTETELEFONE01: TcxGridDBColumn;
    GridAgendaDBTableView1PACIENTECPF: TcxGridDBColumn;
    GridAgendaDBTableView1PACIENTEIDADE: TcxGridDBColumn;
    GridAgendaDBTableView1DESCRICAOCONVENIO: TcxGridDBColumn;
    DsConsultaAgenda: TDataSource;
    CdsConsultaAgenda: TClientDataSet;
    cxStyleRepository: TcxStyleRepository;
    cxStyle_GridTitulo: TcxStyle;
    ImageListAgenda: TcxImageList;
    cxImageList1: TcxImageList;
    ImageListTelaAgenda: TcxImageList;
    BtnAlterarAgenda: TcxButton;
    AcaoAlterarAgenda: TAction;
    BtnEnviarEmail: TcxButton;
    AcaoEnviarEmailRelacaoAgendaDoutor: TAction;
    DataCalendario: TcxDateNavigator;
    BtnFotoPaciente: TcxButton;
    AcaoFotoPaciente: TAction;
    CdsVirtualAgendaINTERVALO: TIntegerField;
    PnlFiltros: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CbDoutorNome: TcxComboBox;
    CbDoutorID: TcxComboBox;
    CbPeriodo: TcxComboBox;
    cxPageControl1: TcxPageControl;
    TsOftalmo: TcxTabSheet;
    BtnPrescricaoOculos: TcxButton;
    AcaoPrescricaoOculos: TAction;
    BtnLaudoOftalmo: TcxButton;
    AcaoLaudoOfatalmo: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CbDoutorNomePropertiesChange(Sender: TObject);
    procedure GridAgendaDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure CbPeriodoClick(Sender: TObject);
    procedure AcaoIncluirAlterarAgendaExecute(Sender: TObject);
    procedure AcaoRemoverAgendaExecute(Sender: TObject);
    procedure AcaoReceituarioMedicoExecute(Sender: TObject);
    procedure AcaoEvolucaoClinicaExecute(Sender: TObject);
    procedure AcaoSolicitacaoExameExecute(Sender: TObject);
    procedure AcaoAtualizaDadosExecute(Sender: TObject);
    procedure GridAgendaDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure CdsVirtualAgendaAfterScroll(DataSet: TDataSet);
    procedure AcaoAlterarAgendaExecute(Sender: TObject);
    procedure AcaoEnviarEmailRelacaoAgendaDoutorExecute(Sender: TObject);
    procedure AcaoAtestadoMedicoExecute(Sender: TObject);
    procedure DataCalendarioClick(Sender: TObject);
    procedure AcaoFotoPacienteExecute(Sender: TObject);
    procedure AcaoPrescricaoOculosExecute(Sender: TObject);
    procedure AcaoLaudoOfatalmoExecute(Sender: TObject);

  private
    { Private declarations }
    controlButtonScrow: Boolean;

    HrMI, HrMF, HrTI, HrTF: TTime;
    MnIntervalo: Integer;

    procedure carregarEstruturaVirtual(const pCds: TClientDataSet);
    procedure limparEstruturaVirtual(const pCds: TClientDataSet);
    procedure carregarDadosAgenda(const pCds: TClientDataSet);
    function capturarIntevaloAgenda(var pHrMI, pHrMF, pHrTI, pHrTF: TTime; var pMnIntervalo: Integer; pDtAgenda: TDateTime): Boolean;

    procedure alterarStatusAgenda(const pStatus: String; const pIdAgenda: Integer);
    procedure alterarMotivoAgenda(const pMotivo: String; const pIdAgenda: Integer);



    function removerPacienteConsulta(const pIdAgenda: Integer): Boolean;

    procedure controleDeBotao;

  public
    { Public declarations }
    procedure setControlButtonScrow(const pValor: Boolean);
    function getControlButtonScrow: Boolean;

  end;

var
  OpeAgendaConsultaF: TOpeAgendaConsultaF;

implementation

uses LibRotinasSistemaU, DmConexaoU, DmRotinaU, XMensagemU, XLibGenericoU,
  XLibMessages, SmdAgendaU, SmdEvolucaoClinicaU, SmdReceituarioU,
  SmdSolicitacaoExameU, SmdAtestadoMedicoU, SmdPrescicaoOculosU,
  SmdLaudoOftalmoU, SmdFotoPacienteU;

{$R *.dfm}

procedure TOpeAgendaConsultaF.AcaoAlterarAgendaExecute(Sender: TObject);
var
  IdVirtualAgenda: Integer;
begin
  inherited;
  Self.setControlButtonScrow(False);
  IdVirtualAgenda := -1;

  if CbDoutorNome.ItemIndex = -1 then
  begin
    TRotinaGenerica.MensagemGeral('Necessário existir doutor cadastrado.', MsgInformar, BtOk);
  end
  else
  begin
    IdVirtualAgenda := CdsVirtualAgenda.FieldByName('IDVIRTUALAGENDA').AsInteger;
    TSmdAgendaF.ChamaTelaAlterar(CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger);
  end;
  Self.carregarEstruturaVirtual(CdsVirtualAgenda);
  Self.limparEstruturaVirtual(CdsVirtualAgenda);
  Self.carregarDadosAgenda(CdsVirtualAgenda);
  Self.setControlButtonScrow(False);
  if IdVirtualAgenda >= 0 then
    CdsVirtualAgenda.Locate('IDVIRTUALAGENDA', IdVirtualAgenda, []);
  Self.setControlButtonScrow(True);
  Self.controleDeBotao;
end;

procedure TOpeAgendaConsultaF.AcaoAtestadoMedicoExecute(Sender: TObject);
begin
  inherited;
  if TSmdAtestadoMedicoF.chamaTela( CdsVirtualAgenda.FieldByName('IDPACIENTE').AsInteger
                                   ,CdsVirtualAgenda.FieldByName('IDDOUTOR').AsInteger
                                   ,CdsVirtualAgenda.FieldByName('INTERVALO').AsInteger
                                   ,CdsVirtualAgenda.FieldByName('HORAAGENDA').AsDateTime ) then
  begin

  end;
end;

procedure TOpeAgendaConsultaF.AcaoAtualizaDadosExecute(Sender: TObject);
begin
  inherited;
  Self.carregarEstruturaVirtual(CdsVirtualAgenda);
  Self.limparEstruturaVirtual(CdsVirtualAgenda);
  Self.carregarDadosAgenda(CdsVirtualAgenda);
  Self.controleDeBotao;
end;

procedure TOpeAgendaConsultaF.AcaoEnviarEmailRelacaoAgendaDoutorExecute(Sender: TObject);
var
  CorpoEmail, DoutorEmail: string;
  Enviar: Boolean;
  ClinicaEmail, ClinicaSenha, ClinicaSmtp: String;
  ClinicaSmtpPorta: Integer;
begin
  inherited;
  CorpoEmail  := EmptyStr;
  DoutorEmail := EmptyStr;
  Enviar      := False;

  if TRotinaSistema.IsConnectedToInternet then
  begin
    CdsVirtualAgenda.DisableControls;
    CdsVirtualAgenda.First;
    while not CdsVirtualAgenda.Eof do
    begin
      if CdsVirtualAgendaPACIENTENOME.AsString <> EmptyStr then
      begin
        CorpoEmail := CorpoEmail +
           ' <table border=1 align=center>'
          +'   <tr>'
          +'     <td align=center colspan=2 width=600px><b>AGENDAMENTO</b></td>'
          +'   </tr>'
          +'   <tr>'
          +'     <td align=right width=100px>Doutor: </td>'
          +'     <td align=left width=500px><b>'+CdsVirtualAgendaDOUTORNOME.AsString+'</b></td>'
          +'   </tr>'
          +'   <tr>'
          +'     <td align=right width=100px>Data: </td>'
          +'     <td align=left width=500px><b>'+CdsVirtualAgendaDATAAGENDA.AsString+'</b></td>'
          +'   </tr>'
          +'   <tr>'
          +'     <td align=right width=100px>Hora: </td>'
          +'     <td align=left width=500px><b>'+CdsVirtualAgendaHORAAGENDA.AsString+'</b></td>'
          +'   </tr>'
          +'   <tr>'
          +'     <td align=right width=100px>Paciente: </td>'
          +'     <td align=left width=500px><b>'+CdsVirtualAgendaPACIENTENOME.AsString+'</b></td>'
          +'   </tr>'
          +' </table>'
          +' </BR>'
          +' </BR>';
        Enviar := True;
        if DoutorEmail = EmptyStr then
          DoutorEmail := CdsVirtualAgenda.FieldByName('DOUTOREMAIL').AsString;
      end;
      CdsVirtualAgenda.Next;
    end;

    if Enviar then
    begin
      if TRotinaSistema.getEmailClinica(ClinicaEmail, ClinicaSenha, ClinicaSmtp, ClinicaSmtpPorta) then
      begin
        TRotinaSistema.enviarEmail(
          DoutorEmail // Email de "quem" vai ser enviado
         ,'Agenda - ' + DateToStr(DataCalendario.Date) + ' - ' + CbDoutorNome.Text // Assunto do Email
         ,CorpoEmail  // Mensagem do Email
         ,ClinicaEmail
         ,ClinicaSenha
         ,ClinicaSmtp
         ,ClinicaSmtpPorta
        );
      end;
    end;


  //  TRotinaSistema.enviarEmail(  'phiwamoto@HOTMAIL.COM' // Email para ser enviado
  //                              ,'Agenda - '+DateToStr(DataCalendario.Date)+' - '+CbDoutorNome.Text       // Título
  //                              ,CorpoEmail
  //          //                    ,'jose.humberto@sabium.com.br;pedro.henrique@sabium.com.br' //DmRelatorioF.CdsCabecalhoRelatorio.FieldByName('DS_EMAIL').AsString //TParametroSistema.pegaParametroValor('PARAMETROSISTEMA_AGENDA' ,'BO_ENVIAREMAILDOUTOR')
  //            ,'phiwamoto@hotmail.com' //DmRelatorioF.CdsCabecalhoRelatorio.FieldByName('DS_EMAIL').AsString //TParametroSistema.pegaParametroValor('PARAMETROSISTEMA_AGENDA' ,'BO_ENVIAREMAILDOUTOR')
  //            ,'pedro23011987' //DmRelatorioF.CdsCabecalhoRelatorio.FieldByName('DS_SENHAEMAIL').AsString // 'phi23011987'
  //            ,'smtp.live.com' //DmRelatorioF.CdsCabecalhoRelatorio.FieldByName('DS_SMTP').AsString // 'smtp.gmail.com' // 'imap.gmail.com'// 'smtp.gmail.com'
  //            ,25 //DmRelatorioF.CdsCabecalhoRelatorio.FieldByName('NR_SMTPPORTA').AsInteger //587   // 993     // 465 ou 587    993 é para imap
  //          );
    CdsVirtualAgenda.EnableConstraints;

  end
  else
    TRotinaGenerica.MensagemGeral('Não foi possivel enviar o email, problema na conexão com a internet.', MsgInformar, BtOk);
end;

procedure TOpeAgendaConsultaF.AcaoEvolucaoClinicaExecute(Sender: TObject);
begin
  inherited;
  if TSmdEvolucaoClinicaF.chamaTelaIncluir( CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger
                                           ,CdsVirtualAgenda.FieldByName('IDPACIENTE').AsInteger
                                           ,CdsVirtualAgenda.FieldByName('IDDOUTOR').AsInteger ) then
                                           begin

                                           end;
end;

procedure TOpeAgendaConsultaF.AcaoFotoPacienteExecute(Sender: TObject);
begin
  inherited;
  if TSmdFotoPacienteF.chamaTelaIncluir( CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger
                                        ,CdsVirtualAgenda.FieldByName('IDPACIENTE').AsInteger
                                        ,CdsVirtualAgenda.FieldByName('IDDOUTOR').AsInteger
                                        ,CdsVirtualAgenda.FieldByName('DATAAGENDA').AsDateTime ) then
  begin

  end;
end;

procedure TOpeAgendaConsultaF.AcaoIncluirAlterarAgendaExecute(Sender: TObject);
var
  IdVirtualAgenda: Integer;
begin
  inherited;
  Self.setControlButtonScrow(False);
  IdVirtualAgenda := -1;
  //AlphaBlendValue := 100;
  // Validação que deve ter um Doutor na ComboBox

  if CbDoutorNome.ItemIndex = -1 then
  begin
    TRotinaGenerica.MensagemGeral('Necessário existir doutor cadastrado.', MsgInformar, BtOk);
  end
  else
  if CdsVirtualAgendaSTATUS.AsString = '' then
  begin
    IdVirtualAgenda := CdsVirtualAgenda.FieldByName('IDVIRTUALAGENDA').AsInteger;
    if not(capturarIntevaloAgenda(HrMI, HrMF, HrTI, HrTF, MnIntervalo, DataCalendario.Date)) then
    begin
      TRotinaGenerica.MensagemGeral('Erro ao buscar a configuração de intervalo da agenda.', MsgInformar, BtOk);
      Exit;
    end;

    if TSmdAgendaF.chamaTelaIncluir(  StrToIntDef(CbDoutorID.Text, 0)
                                     ,DataCalendario.Date
                                     ,CdsVirtualAgenda.FieldByName('HORAAGENDA').AsDateTime
                                     ,HrMI
                                     ,HrMF
                                     ,HrTI
                                     ,HrTF
                                     ,MnIntervalo
     ) then
     begin
        // na tela de agendamento
       // incluiPacienteConsulta(CdsVirtualAgendaIDDOUTOR.AsInteger, CdsVirtualAgendaIDPACIENTE.AsInteger, IdAgenda);

//        if (TParametroSistema.pegaParametroValor('PARAMETROSISTEMA_AGENDA' ,'BO_ENVIAREMAILDOUTOR') = 'Sim') and (TRotinaSistema.IsConnectedToInternet) then
//        begin
//          DmRelatorioF.CdsCabecalhoRelatorio.Close;
//          DmRelatorioF.CdsCabecalhoRelatorio.Open;
//
//          TRotEnviarEmailF.enviarEmail(
//             'phiwamoto@hotmail.com'
//            ,'Doutor '+'1'//CbDoutor.Text
//            ,' <table border=1 align=center>'
//            +'  <tr>'
//            +'     <td align=center colspan=2 width=600px><b>AGENDAMENTO</b></td>'
//            +'  </tr>'
//            +'  <tr>'
//            +'     <td align=right width=100px>Doutor: </td>'
//            +'     <td align=left width=500px><b> IMPORTAR </b></td>'
//            +'  </tr>'
//            +'  <tr>'
//            +'     <td align=right width=100px>Data: </td>'
//            +'     <td align=left width=500px><b> IMPORTAR </b></td>'
//            +'  </tr>'
//            +'  <tr>'
//            +'     <td align=right width=100px>Hora: </td>'
//            +'     <td align=left width=500px><b> IMPORTAR </b></td>'
//            +'  </tr>'
//            +'  <tr>'
//            +'     <td align=right width=100px>Paciente: </td>'
//            +'     <td align=left width=500px><b> IMPORTAR </b></td>'
//            +'  </tr>'
//            +' </table>'
//            ,DmRelatorioF.CdsCabecalhoRelatorio.FieldByName('DS_EMAIL').AsString //TParametroSistema.pegaParametroValor('PARAMETROSISTEMA_AGENDA' ,'BO_ENVIAREMAILDOUTOR')
//            ,DmRelatorioF.CdsCabecalhoRelatorio.FieldByName('DS_SENHAEMAIL').AsString // 'phi23011987'
//            ,DmRelatorioF.CdsCabecalhoRelatorio.FieldByName('DS_SMTP').AsString // 'smtp.gmail.com' // 'imap.gmail.com'// 'smtp.gmail.com'
//            ,DmRelatorioF.CdsCabecalhoRelatorio.FieldByName('NR_SMTPPORTA').AsInteger //587   // 993     // 465 ou 587    993 é para imap
//          );
//
//        end;
     end;
  end
  else   // Alterar Registro
  begin
    IdVirtualAgenda := CdsVirtualAgenda.FieldByName('IDVIRTUALAGENDA').AsInteger;
    TSmdAgendaF.ChamaTelaAlterar(CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger);

  end;
  Self.carregarEstruturaVirtual(CdsVirtualAgenda);
  Self.limparEstruturaVirtual(CdsVirtualAgenda);
  Self.carregarDadosAgenda(CdsVirtualAgenda);
  Self.setControlButtonScrow(False);
  if IdVirtualAgenda >= 0 then
    CdsVirtualAgenda.Locate('IDVIRTUALAGENDA', IdVirtualAgenda, []);
  Self.setControlButtonScrow(True);
  Self.controleDeBotao;
end;

procedure TOpeAgendaConsultaF.AcaoLaudoOfatalmoExecute(Sender: TObject);
begin
  inherited;
  if TSmdLaudoOftalmoF.chamaTelaIncluir( CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger
                                        ,CdsVirtualAgenda.FieldByName('IDPACIENTE').AsInteger
                                        ,CdsVirtualAgenda.FieldByName('IDDOUTOR').AsInteger ) then
  begin

  end;
end;

procedure TOpeAgendaConsultaF.AcaoPrescricaoOculosExecute(Sender: TObject);
begin
  inherited;
  if TSmdPrescicaoOculosF.chamaTelaIncluir( CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger
                                           ,CdsVirtualAgenda.FieldByName('IDPACIENTE').AsInteger
                                           ,CdsVirtualAgenda.FieldByName('IDDOUTOR').AsInteger ) then
  begin

  end;
end;

procedure TOpeAgendaConsultaF.AcaoReceituarioMedicoExecute(Sender: TObject);
begin
  inherited;
  if TSmdReceituarioF.chamaTelaIncluir( CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger
                                       ,CdsVirtualAgenda.FieldByName('IDPACIENTE').AsInteger
                                       ,CdsVirtualAgenda.FieldByName('IDDOUTOR').AsInteger ) then
  begin

  end;
end;

procedure TOpeAgendaConsultaF.AcaoRemoverAgendaExecute(Sender: TObject);
var
  IdVirtualAgenda: Integer;
begin
  inherited;
  Self.setControlButtonScrow(False);
  if ( not CdsVirtualAgenda.FieldByName('STATUS').IsNull ) or (CdsVirtualAgenda.FieldByName('STATUS').AsString <> EmptyStr) then
  begin
    if TRotinaGenerica.MensagemGeral('Deseja remover este agendamento?', MsgConfirmar, BtSN) = 'Sim' then
    begin
      if removerPacienteConsulta(CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger) then
      begin
        IdVirtualAgenda := CdsVirtualAgenda.FieldByName('IDVIRTUALAGENDA').AsInteger;

        DmConexaoF.SqlExecutar(
           ' DELETE FROM AGENDA '
          +'  WHERE IDAGENDA = '+TRotinaGenerica.IntToSql(CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger)
        );

        Self.limparEstruturaVirtual(CdsVirtualAgenda);
        Self.carregarDadosAgenda(CdsVirtualAgenda);
        Self.setControlButtonScrow(False);
        CdsVirtualAgenda.Locate('IDVIRTUALAGENDA', IdVirtualAgenda, []);
      end;
    end;
  end;
  Self.setControlButtonScrow(True);
  controleDeBotao;
end;

procedure TOpeAgendaConsultaF.AcaoSolicitacaoExameExecute(Sender: TObject);
begin
  inherited;
  if TSmdSolicitacaoExameF.chamaTelaIncluir( CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger
                                            ,CdsVirtualAgenda.FieldByName('IDPACIENTE').AsInteger
                                            ,CdsVirtualAgenda.FieldByName('IDDOUTOR').AsInteger ) then
  begin

  end;
end;

procedure TOpeAgendaConsultaF.alterarMotivoAgenda(const pMotivo: String; const pIdAgenda: Integer);
begin
  DmConexaoF.SqlExecutar(
     ' UPDATE AGENDA '
    +'    SET MOTIVO = '+TRotinaGenerica.StrToSql(pMotivo)
    +'  WHERE IDAGENDA = '+TRotinaGenerica.IntToSql(pIdAgenda)
  );

  CdsVirtualAgenda.Edit;
  CdsVirtualAgenda.FieldByName('MOTIVO').AsString := pMotivo;
  CdsVirtualAgenda.Post;
end;

procedure TOpeAgendaConsultaF.alterarStatusAgenda(const pStatus: String; const pIdAgenda: Integer);
begin
  DmConexaoF.SqlExecutar(
     ' UPDATE AGENDA '
    +'    SET STATUS = '+TRotinaGenerica.StrToSql(pStatus)
    +'  WHERE IDAGENDA = '+TRotinaGenerica.IntToSql(pIdAgenda)
  );

  CdsVirtualAgenda.Edit;
  CdsVirtualAgenda.FieldByName('STATUS').AsString := pStatus;
  CdsVirtualAgenda.Post;
end;

function TOpeAgendaConsultaF.capturarIntevaloAgenda(var pHrMI, pHrMF, pHrTI, pHrTF: TTime; var pMnIntervalo: Integer; pDtAgenda: TDateTime): Boolean;
var
  CdsAuxiliar, CdsDoutorConsulta: TClientDataSet;
begin
  CdsAuxiliar := TClientDataSet.Create(nil);
  try
    CdsAuxiliar.RemoteServer := DmConexaoF.LocalConnection;
    CdsAuxiliar.ProviderName := 'dmDspConsulta';
    TCdsExecute.ExecutaSql(
       CdsAuxiliar
      ,'  SELECT DISTINCT AGE.HORAMANHAINICIAL '
      +'        ,AGE.HORAMANHAFINAL '
      +'        ,AGE.HORATARDEINICIAL '
      +'        ,AGE.HORATARDEFINAL '
      +'        ,AGE.INTERVALO '
      +'    FROM AGENDA AGE '
      +'   WHERE 1 = 1 '
      +'     AND AGE.IDDOUTOR = '+TRotinaGenerica.StrToSql(CbDoutorID.Text, '0')
      +'     AND AGE.DATAAGENDA = '+QuotedStr(FormatDateTime('yyyy-MM-dd', pDtAgenda))
    );

    if CdsAuxiliar.IsEmpty then
    begin
      CdsDoutorConsulta := TClientDataSet.Create(nil);
      try
        CdsDoutorConsulta.RemoteServer := DmConexaoF.LocalConnection;
        CdsDoutorConsulta.ProviderName := 'dmDspConsulta';
        TCdsExecute.ExecutaSql(
           CdsDoutorConsulta
          ,'  SELECT DOU.HORAINICIALMANHA '
          +'        ,DOU.HORAFINALMANHA '
          +'        ,DOU.HORAINICIALTARDE '
          +'        ,DOU.HORAFINALTARDE '
          +'        ,DOU.INTERVALO '
          +'    FROM DOUTOR DOU '
          +'   WHERE 1 = 1 '
          +'     AND DOU.IDDOUTOR = '+TRotinaGenerica.StrToSql(CbDoutorID.Text, '0')
        );


        // Localizar configuracao doutor
        // Repassar
        pHrMI        := StrToTimeDef(CdsDoutorConsulta.FieldByName('HORAINICIALMANHA').AsString  ,1 );
        pHrMF        := StrToTimeDef(CdsDoutorConsulta.FieldByName('HORAFINALMANHA').AsString    ,1 );
        pHrTI        := StrToTimeDef(CdsDoutorConsulta.FieldByName('HORAINICIALTARDE').AsString  ,1 );
        pHrTF        := StrToTimeDef(CdsDoutorConsulta.FieldByName('HORAFINALTARDE').AsString    ,1 );
        pMnIntervalo := StrToIntDef (CdsDoutorConsulta.FieldByName('INTERVALO').AsString         ,1 );
        Result       := True;
      finally
        FreeAndNil(CdsDoutorConsulta);
      end;
    end
    else
    begin
      pHrMI        := CdsAuxiliar.FieldByName('HORAMANHAINICIAL').AsDateTime;
      pHrMF        := CdsAuxiliar.FieldByName('HORAMANHAFINAL').AsDateTime;
      pHrTI        := CdsAuxiliar.FieldByName('HORATARDEINICIAL').AsDateTime;
      pHrTF        := CdsAuxiliar.FieldByName('HORATARDEFINAL').AsDateTime;
      pMnIntervalo := CdsAuxiliar.FieldByName('INTERVALO').AsInteger;
      Result       := True;
    end;
  finally
    FreeAndNil(CdsAuxiliar);
  end;
end;

procedure TOpeAgendaConsultaF.carregarDadosAgenda(const pCds: TClientDataSet);
begin
  Self.setControlButtonScrow(False);
  try
    CdsConsultaAgenda.Close;
    CdsConsultaAgenda.CommandText :=
       ' SELECT AGE.*'
      +'       ,DOU.NOME AS DOUTORNOME'
      +'       ,DOU.EMAIL AS DOUTOREMAIL '
      +'       ,PAC.NOME AS PACIENTENOME'
      +'       ,PAC.CPF AS PACIENTECPF'
      +'       ,PAC.TELEFONE1 AS PACIENTETELEFONE01'
      +'       ,PAC.TELEFONE2 AS PACIENTETELEFONE02'
      +'       ,PAC.EMAIL AS PACIENTEEMAIL'
      +'       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 2) AS INT) PACIENTEIDADE '
      +'       ,CONAGE.CONVENIO AS DESCRICAOCONVENIO'
      +'   FROM AGENDA AGE'
      +'        JOIN DOUTOR DOU ON (DOU.IDDOUTOR = AGE.IDDOUTOR)'
      +'        JOIN PACIENTE PAC ON (PAC.IDPACIENTE = AGE.IDPACIENTE)'
      +'        LEFT JOIN CONVENIO CONAGE ON (CONAGE.IDCONVENIO = AGE.IDCONVENIO)'
      +'  WHERE 1 = 1   '
      +'    AND AGE.DATAAGENDA = '+QuotedStr(FormatDateTime('yyyy-MM-dd', DataCalendario.Date))
      ;

    if CbDoutorNome.ItemIndex <> -1 then
    begin
      CdsConsultaAgenda.CommandText :=
        CdsConsultaAgenda.CommandText +' AND DOU.IDDOUTOR = '+CbDoutorID.Properties.Items[CbDoutorNome.ItemIndex];
    end;

    CdsConsultaAgenda.Open;

    CdsConsultaAgenda.DisableControls;
    pCds.DisableControls;
    while not(CdsConsultaAgenda.Eof) do
    begin
      if pCds.Locate('HORAAGENDA', CdsConsultaAgenda.FieldByName('HORAAGENDA').AsDateTime, []) then
      begin
        pCds.Edit;
        pCds.FieldByName('STATUS').AsString               := CdsConsultaAgenda.FieldByName('STATUS').AsString;
        pCds.FieldByName('MOTIVO').AsString               := CdsConsultaAgenda.FieldByName('MOTIVO').AsString;
        pCds.FieldByName('IDPACIENTE').AsInteger          := CdsConsultaAgenda.FieldByName('IDPACIENTE').AsInteger;
        pCds.FieldByName('PACIENTENOME').AsString         := CdsConsultaAgenda.FieldByName('PACIENTENOME').AsString;
        pCds.FieldByName('IDDOUTOR').AsString             := CdsConsultaAgenda.FieldByName('IDDOUTOR').AsString;
        pCds.FieldByName('DOUTORNOME').AsString           := CdsConsultaAgenda.FieldByName('DOUTORNOME').AsString;
        pCds.FieldByName('DOUTOREMAIL').AsString          := CdsConsultaAgenda.FieldByName('DOUTOREMAIL').AsString;
        pCds.FieldByName('IDCONVENIO').AsString           := CdsConsultaAgenda.FieldByName('IDCONVENIO').AsString;
        pCds.FieldByName('DESCRICAOCONVENIO').AsString    := CdsConsultaAgenda.FieldByName('DESCRICAOCONVENIO').AsString;
        pCds.FieldByName('IDAGENDA').AsString             := CdsConsultaAgenda.FieldByName('IDAGENDA').AsString;
        pCds.FieldByName('PACIENTETELEFONE01').AsString   := CdsConsultaAgenda.FieldByName('PACIENTETELEFONE01').AsString;
        pCds.FieldByName('PACIENTEIDADE').AsString        := CdsConsultaAgenda.FieldByName('PACIENTEIDADE').AsString;
        pCds.FieldByName('PACIENTECPF').AsString          := CdsConsultaAgenda.FieldByName('PACIENTECPF').AsString;
        pCds.FieldByName('INTERVALO').AsString            := CdsConsultaAgenda.FieldByName('INTERVALO').AsString;
        pCds.Post;
      end
      else begin
        pCds.Insert;
        pCds.FieldByName('IDVIRTUALAGENDA').AsInteger     := CdsConsultaAgenda.FieldByName('IDAGENDA').AsInteger;
        pCds.FieldByName('DATAAGENDA').AsDateTime         := CdsConsultaAgenda.FieldByName('DATAAGENDA').AsDateTime;
        pCds.FieldByName('HORAAGENDA').AsDateTime         := CdsConsultaAgenda.FieldByName('HORAAGENDA').AsDateTime;
        pCds.FieldByName('INTERVALO').AsInteger           := CdsConsultaAgenda.FieldByName('INTERVALO').AsInteger;

        pCds.FieldByName('STATUS').AsString               := CdsConsultaAgenda.FieldByName('STATUS').AsString;
        pCds.FieldByName('MOTIVO').AsString               := CdsConsultaAgenda.FieldByName('MOTIVO').AsString;
        pCds.FieldByName('IDPACIENTE').AsInteger          := CdsConsultaAgenda.FieldByName('IDPACIENTE').AsInteger;
        pCds.FieldByName('PACIENTENOME').AsString         := CdsConsultaAgenda.FieldByName('PACIENTENOME').AsString;
        pCds.FieldByName('IDDOUTOR').AsString             := CdsConsultaAgenda.FieldByName('IDDOUTOR').AsString;
        pCds.FieldByName('DOUTORNOME').AsString           := CdsConsultaAgenda.FieldByName('DOUTORNOME').AsString;
        pCds.FieldByName('DOUTOREMAIL').AsString          := CdsConsultaAgenda.FieldByName('DOUTOREMAIL').AsString;
        pCds.FieldByName('IDCONVENIO').AsString           := CdsConsultaAgenda.FieldByName('IDCONVENIO').AsString;
        pCds.FieldByName('DESCRICAOCONVENIO').AsString    := CdsConsultaAgenda.FieldByName('DESCRICAOCONVENIO').AsString;
        pCds.FieldByName('IDAGENDA').AsString             := CdsConsultaAgenda.FieldByName('IDAGENDA').AsString;
        pCds.FieldByName('PACIENTETELEFONE01').AsString   := CdsConsultaAgenda.FieldByName('PACIENTETELEFONE01').AsString;
        pCds.FieldByName('PACIENTEIDADE').AsString        := CdsConsultaAgenda.FieldByName('PACIENTEIDADE').AsString;
        pCds.FieldByName('PACIENTECPF').AsString          := CdsConsultaAgenda.FieldByName('PACIENTECPF').AsString;
        pCds.FieldByName('INTERVALO').AsString            := CdsConsultaAgenda.FieldByName('INTERVALO').AsString;
        pCds.Post;
      end;
      CdsConsultaAgenda.Next;
    end;
    pCds.First;
  finally
    pCds.EnableControls;
    CdsConsultaAgenda.EnableControls;
  end;
  Self.setControlButtonScrow(True);
end;

procedure TOpeAgendaConsultaF.carregarEstruturaVirtual(const pCds: TClientDataSet);
var
  HrInicio: TTime;
  i, Qtde: integer;

  HrManhaI, HrManhaF, HrTardeI, HrTardeF: TTime;

  HrMI, MmMI, SgMI, MlMI: Word;
  HrMF, MmMF, SgMF, MlMF: Word;
  HrTI, MmTI, SgTI, MlTI: Word;
  HrTF, MmTF, SgTF, MlTF: Word;


  MmIntervalo: Integer;

begin
  inherited;
  Self.setControlButtonScrow(False);
//  HrManhaI    := StrToTimeDef(TParametroSistema.PegaValor(DmConexaoF.dmCdsConsulta, 'AGENDA_MANHAHORAINICIAL') ,0 );
//  HrManhaF    := StrToTimeDef(TParametroSistema.PegaValor(DmConexaoF.dmCdsConsulta, 'AGENDA_MANHAHORAFINAL')   ,0 );
//  HrTardeI    := StrToTimeDef(TParametroSistema.PegaValor(DmConexaoF.dmCdsConsulta, 'AGENDA_TARDEHORAINICIAL') ,0 );
//  HrTardeF    := StrToTimeDef(TParametroSistema.PegaValor(DmConexaoF.dmCdsConsulta, 'AGENDA_TARDEHORAFINAL')   ,0 );
//  MmIntervalo := StrToIntDef(TParametroSistema.PegaValor(DmConexaoF.dmCdsConsulta, 'AGENDA_INTERVALOMINUTO')   ,0 );
//  HrAlmoco    := HrTardeI - HrManhaF;
//
//  DecodeTime(HrManhaI, HrMI, MmMI, SgMI, MlMI);
//  DecodeTime(HrManhaF, HrMF, MmMF, SgMF, MlMF);
//  DecodeTime(HrTardeI, HrTI, MmTI, SgTI, MlTI);
//  DecodeTime(HrTardeF, HrTF, MmTF, SgTF, MlTF);

  HrInicio := 0;

  if not(Self.capturarIntevaloAgenda(HrManhaI, HrManhaF, HrTardeI, HrTardeF, MmIntervalo, DataCalendario.Date)) then
  begin
    TRotinaGenerica.MensagemGeral('Erro ao buscar a configuração de intervalo da agenda.', MsgInformar, BtOk);
  end;
  DecodeTime(HrManhaI, HrMI, MmMI, SgMI, MlMI);
  DecodeTime(HrManhaF, HrMF, MmMF, SgMF, MlMF);
  DecodeTime(HrTardeI, HrTI, MmTI, SgTI, MlTI);
  DecodeTime(HrTardeF, HrTF, MmTF, SgTF, MlTF);

//  ShowMessage(
//           'Hora M I: '+FormatDateTime('hh:mm', HrManhaI)
//   +#13#10+'Hora M F: '+FormatDateTime('hh:mm', HrManhaF)
//   +#13#10+'Hora T I: '+FormatDateTime('hh:mm', HrTardeI)
//   +#13#10+'Hora T F: '+FormatDateTime('hh:mm', HrTardeF)
//   +#13#10+'Hora Alm: '+FormatDateTime('hh:mm', HrAlmoco)
//   +#13#10+'Interval: '+IntToStr(MmIntervalo)
//  );


  pCds.DisableControls;
  pCds.First;
  while not(pCds.Eof) do
    pCds.Delete;

  Qtde := 0;
  if CbPeriodo.Text = 'Manhã' then
  begin
    HrInicio := HrManhaI;
    Qtde := Round(  ( ((HrMF * 60) + MmMF) - ((HrMI * 60) + MmMI))  / MmIntervalo);
  end
  else
  if CbPeriodo.Text = 'Tarde' then
  begin
    HrInicio := HrTardeI;
    Qtde := Round(  ( ((HrTF * 60) + MmTF) - ((HrTI * 60) + MmTI))  / MmIntervalo);
  end
  else
  if CbPeriodo.Text = 'Todos' then
  begin
    HrInicio := HrManhaI;
    Qtde := Round(  ( ((HrTF * 60) + MmTF) - ((HrMI * 60) + MmMI))  / MmIntervalo);
  end;


  for I := 0 to Qtde do
  begin

    if i = 0  then
    begin
      pCds.Insert;
      pCds.FieldByName('IDVIRTUALAGENDA').AsInteger := i;
      pCds.FieldByName('DATAAGENDA').AsDateTime := DataCalendario.Date;
      pCds.FieldByName('HORAAGENDA').AsString   := FormatDateTime('hh:mm', HrInicio);
      pCds.FieldByName('INTERVALO').AsInteger   := MnIntervalo;
      pCds.Post;
    end
    else
    begin
      if CbPeriodo.Text = 'Todos' then
      begin
        // Verificacao de Manha
        if ( IncMinute(HrInicio, (MmIntervalo * i)) >= HrManhaI ) and ( IncMinute(HrInicio, (MmIntervalo * i)) <= HrManhaF ) then
        begin
//          if (IncMinute(HrInicio, (MmIntervalo * i)) <= HrManhaF) and (IncMinute(HrInicio, (MmIntervalo * i)) >= HrTardeI) then
//          begin
          pCds.Insert;
          pCds.FieldByName('IDVIRTUALAGENDA').AsInteger := i;
          pCds.FieldByName('DATAAGENDA').AsDateTime := DataCalendario.Date;
          pCds.FieldByName('HORAAGENDA').AsDateTime := IncMinute(HrInicio, (MmIntervalo * i) );
          pCds.FieldByName('INTERVALO').AsInteger   := MnIntervalo;
          pCds.Post;
        end;
//        else
        if ( IncMinute(HrInicio, (MmIntervalo * i)) >= HrTardeI ) and ( IncMinute(HrInicio, (MmIntervalo * i)) <= HrTardeF ) then
        begin
          pCds.Insert;
          pCds.FieldByName('IDVIRTUALAGENDA').AsInteger := i;
          pCds.FieldByName('DATAAGENDA').AsDateTime := DataCalendario.Date;
          pCds.FieldByName('HORAAGENDA').AsDateTime := IncMinute(HrInicio, (MmIntervalo * i) );
          pCds.FieldByName('INTERVALO').AsInteger   := MnIntervalo;
          pCds.Post;
        end;

      end
      else
      if CbPeriodo.Text = 'Manhã' then
      begin
        pCds.Insert;
        pCds.FieldByName('IDVIRTUALAGENDA').AsInteger := i;
        pCds.FieldByName('DATAAGENDA').AsDateTime := DataCalendario.Date;
        pCds.FieldByName('HORAAGENDA').AsDateTime := IncMinute(HrInicio, (MmIntervalo * i) );
        pCds.FieldByName('INTERVALO').AsInteger   := MnIntervalo;
        pCds.Post;
      end
      else
      if CbPeriodo.Text = 'Tarde' then
      begin
        pCds.Insert;
        pCds.FieldByName('IDVIRTUALAGENDA').AsInteger := i;
        pCds.FieldByName('DATAAGENDA').AsDateTime := DataCalendario.Date;
        pCds.FieldByName('HORAAGENDA').AsDateTime := IncMinute(HrInicio, (MmIntervalo * i) );
        pCds.FieldByName('INTERVALO').AsInteger   := MnIntervalo;
        pCds.Post;
      end;
    end;
  end;
  pCds.First;
  pCds.EnableControls;
  Self.setControlButtonScrow(True);
end;

procedure TOpeAgendaConsultaF.CbDoutorNomePropertiesChange(Sender: TObject);
begin
  inherited;
  CbDoutorID.ItemIndex := CbDoutorNome.ItemIndex;
  Self.carregarEstruturaVirtual(CdsVirtualAgenda);
  Self.limparEstruturaVirtual(CdsVirtualAgenda);
  Self.carregarDadosAgenda(CdsVirtualAgenda);
  Self.controleDeBotao;
end;

procedure TOpeAgendaConsultaF.CbPeriodoClick(Sender: TObject);
begin
  inherited;
  Self.carregarEstruturaVirtual(CdsVirtualAgenda);
  Self.limparEstruturaVirtual(CdsVirtualAgenda);
  Self.carregarDadosAgenda(CdsVirtualAgenda);
  Self.controleDeBotao;
end;

procedure TOpeAgendaConsultaF.CdsVirtualAgendaAfterScroll(DataSet: TDataSet);
begin
  if Self.getControlButtonScrow then
  begin
    inherited;
    Self.controleDeBotao;
  end;
end;

procedure TOpeAgendaConsultaF.controleDeBotao;
begin
  if CdsVirtualAgenda.Active then
  begin
    if ( CdsVirtualAgenda.FieldByName('STATUS').IsNull ) or (CdsVirtualAgenda.FieldByName('STATUS').AsString = EmptyStr) then
    begin
      AcaoIncluirAlterarAgenda.Enabled           := True;
      AcaoAlterarAgenda.Enabled                  := False;

      BtnIncluir.Visible               := True;
      BtnAlterarAgenda.Visible         := False;


      AcaoRemoverAgenda.Enabled        := False;
      AcaoEvolucaoClinica.Enabled      := False;
      AcaoReceituarioMedico.Enabled    := False;
      AcaoSolicitacaoExame.Enabled     := False;
      AcaoAtestadoMedico.Enabled       := False;
      AcaoFotoPaciente.Enabled         := False;
      AcaoPrescricaoOculos.Enabled     := False;
      AcaoLaudoOfatalmo.Enabled        := False;

    end
    else
    begin
      AcaoIncluirAlterarAgenda.Enabled           := False;
      AcaoAlterarAgenda.Enabled                  := True;

      BtnIncluir.Visible               := False;
      BtnAlterarAgenda.Visible         := True;

      AcaoRemoverAgenda.Enabled        := True;
      AcaoEvolucaoClinica.Enabled      := True;
      AcaoReceituarioMedico.Enabled    := True;
      AcaoSolicitacaoExame.Enabled     := True;
      AcaoAtestadoMedico.Enabled       := True;
      AcaoFotoPaciente.Enabled         := True;
      AcaoPrescricaoOculos.Enabled     := True;
      AcaoLaudoOfatalmo.Enabled        := True;
    end;
  end;
end;

procedure TOpeAgendaConsultaF.DataCalendarioClick(Sender: TObject);
begin
  inherited;
  Self.carregarEstruturaVirtual(CdsVirtualAgenda);
  Self.limparEstruturaVirtual(CdsVirtualAgenda);
  Self.carregarDadosAgenda(CdsVirtualAgenda);
  Self.controleDeBotao;
end;

procedure TOpeAgendaConsultaF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  OpeAgendaConsultaF.Release;
  OpeAgendaConsultaF := nil;
end;

procedure TOpeAgendaConsultaF.FormCreate(Sender: TObject);
begin
  inherited;
  Self.setControlButtonScrow(True);
  CdsVirtualAgenda.Open;
  TCarregaCombo.carregarDoutor(CbDoutorNome, CbDoutorID);
  CbPeriodo.ItemIndex := CbPeriodo.Properties.Items.IndexOf('Todos');


  Self.carregarEstruturaVirtual(CdsVirtualAgenda);
  Self.limparEstruturaVirtual(CdsVirtualAgenda);
  Self.carregarDadosAgenda(CdsVirtualAgenda);

  if CbDoutorNome.Properties.Items.Count = 0 then
  begin
    TRotinaGenerica.MensagemGeral('Para a utilização de agenda deve existir doutor cadastrado!', MsgErro, BtOk);
  end;

  Self.controleDeBotao;
end;

function TOpeAgendaConsultaF.getControlButtonScrow: Boolean;
begin
  Result := controlButtonScrow;
end;

procedure TOpeAgendaConsultaF.GridAgendaDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  Self.setControlButtonScrow(False);
  //ShowMessage(GridAgendaDBTableView1.Columns[ACellViewInfo.Item.Index].DataBinding.FieldName)


  // ---------- QUANDO CLICA NA COLUNA DO "HORARIO"  >>>
  if (GridAgendaDBTableView1.Columns[ACellViewInfo.Item.Index].DataBinding.FieldName = 'HORAAGENDA')
  then
  begin
    AcaoIncluirAlterarAgenda.Execute;
  end;

  // ---------- QUANDO CLICA NA COLUNA DO "STATUS" ou "STATUS IMAGEM" >>>
  if (GridAgendaDBTableView1.Columns[ACellViewInfo.Item.Index].DataBinding.FieldName = 'STATUS') or (GridAgendaDBTableView1.Columns[ACellViewInfo.Item.Index].DataBinding.FieldName = 'STATUSIMAGEM') then
  begin
    if ( CdsVirtualAgenda.FieldByName('STATUS').IsNull ) or ( CdsVirtualAgenda.FieldByName('STATUS').AsString = '' )  then
      Exit;

    // Quando o Status é AUSENTE
    if AnsiUpperCase(CdsVirtualAgenda.FieldByName('STATUS').AsString) = 'AUSENTE' then
    begin
      Self.alterarStatusAgenda('Em Espera', CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger);
    end
    else
    // Quando o Status é EM ESPERA
    if AnsiUpperCase(CdsVirtualAgenda.FieldByName('STATUS').AsString) = 'EM ESPERA' then
    begin
      Self.alterarStatusAgenda('Atendido', CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger);
    end
    else
    // Quando o Status é ATENDIDO
    if AnsiUpperCase(CdsVirtualAgenda.FieldByName('STATUS').AsString) = 'ATENDIDO' then
    begin
      Self.alterarStatusAgenda('Desmarcou', CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger);
    end
    else
    // Quando o Status é DESMARCOU
    if AnsiUpperCase(CdsVirtualAgenda.FieldByName('STATUS').AsString) = 'DESMARCOU' then
    begin
      Self.alterarStatusAgenda('Faltou', CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger);
    end
    else
    // Quando o Status é FALTOU
    if AnsiUpperCase(CdsVirtualAgenda.FieldByName('STATUS').AsString) = 'FALTOU' then
    begin
      Self.alterarStatusAgenda('Ausente', CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger);
    end;
  end;

  // ---------- QUANDO CLICA NA COLUNA DO "MOTIVO" >>>
  if (GridAgendaDBTableView1.Columns[ACellViewInfo.Item.Index].DataBinding.FieldName = 'MOTIVO') then
  begin
    if ( CdsVirtualAgenda.FieldByName('MOTIVO').IsNull ) or ( CdsVirtualAgenda.FieldByName('MOTIVO').AsString = '' )  then
      Exit;

    // Quando o motivo é "CONSULTA"
    if AnsiUpperCase(CdsVirtualAgenda.FieldByName('MOTIVO').AsString) = 'CONSULTA' then
    begin
      Self.alterarMotivoAgenda('Retorno', CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger);
    end
    else
    // Quando o motivo é "RETORNO"
    if AnsiUpperCase(CdsVirtualAgenda.FieldByName('MOTIVO').AsString) = 'RETORNO' then
    begin
      Self.alterarMotivoAgenda('Procedimento', CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger);
    end
    else
    // Quando o motivo é "PROCEDIMENTO"
    if AnsiUpperCase(CdsVirtualAgenda.FieldByName('MOTIVO').AsString) = 'PROCEDIMENTO' then
    begin
      Self.alterarMotivoAgenda('Exame', CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger);
    end
    else
    // Quando o motivo é "EXAME"
    if AnsiUpperCase(CdsVirtualAgenda.FieldByName('MOTIVO').AsString) = 'EXAME' then
    begin
      Self.alterarMotivoAgenda('Consulta', CdsVirtualAgenda.FieldByName('IDAGENDA').AsInteger);
    end;
  end;

  Self.setControlButtonScrow(True);
end;

procedure TOpeAgendaConsultaF.GridAgendaDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  APainter: TcxPainterAccess;
begin
  inherited;
  Self.setControlButtonScrow(False);

  // HORARIO
  ACanvas.Font.Color := clBlack;
  if GridAgendaDBTableView1.Columns[AViewInfo.Item.Index].DataBinding.Field = CdsVirtualAgendaHORAAGENDA then
  begin
    if VarIsNull(GridAgendaDBTableView1.DataController.Values[AViewInfo.GridRecord.Index, GridAgendaDBTableView1PACIENTENOME.Index]) then
      ACanvas.Brush.Color := clGreen
    else
      ACanvas.Brush.Color := clRed;
  end;

  // Outros campo Zebrados
  if ( GridAgendaDBTableView1.Columns[AViewInfo.Item.Index].DataBinding.Field = CdsVirtualAgendaSTATUS ) or
     ( GridAgendaDBTableView1.Columns[AViewInfo.Item.Index].DataBinding.Field = CdsVirtualAgendaMOTIVO ) or
     ( GridAgendaDBTableView1.Columns[AViewInfo.Item.Index].DataBinding.Field = CdsVirtualAgendaPACIENTENOME ) or
     ( GridAgendaDBTableView1.Columns[AViewInfo.Item.Index].DataBinding.Field = CdsVirtualAgendaPACIENTEIDADE ) or
     ( GridAgendaDBTableView1.Columns[AViewInfo.Item.Index].DataBinding.Field = CdsVirtualAgendaPACIENTECPF ) or
     ( GridAgendaDBTableView1.Columns[AViewInfo.Item.Index].DataBinding.Field = CdsVirtualAgendaPACIENTETELEFONE01 ) or
     ( GridAgendaDBTableView1.Columns[AViewInfo.Item.Index].DataBinding.Field = CdsVirtualAgendaDESCRICAOCONVENIO ) then
  begin
    if AViewInfo.GridRecord.RecordIndex mod 2 = 0 Then
      ACanvas.Brush.Color := $00D6D6D6
    else
      ACanvas.Brush.Color := clWhite;
  end;

  // Modificando a Imagem
  if GridAgendaDBTableView1.Columns[AViewInfo.Item.Index].DataBinding.Field = CdsVirtualAgendaSTATUSIMAGEM then
  begin
    APainter := TcxPainterAccess(TcxViewInfoAcess(AViewInfo).GetPainterClass.Create(ACanvas, AViewInfo));
    try
      TcxCustomTextEditViewInfo(AViewInfo.EditViewInfo).TextRect.Left :=
        TcxCustomTextEditViewInfo(AViewInfo.EditViewInfo).TextRect.Left + cxImageList1.Width + 1;

      APainter.DrawContent;
      APainter.DrawBorders;

      if not ( VarIsNull(AViewInfo.GridRecord.Values[GridAgendaDBTableView1STATUS.Index]) ) then
      begin
        if AViewInfo.GridRecord.Values[GridAgendaDBTableView1STATUS.Index] = 'Ausente' then
          cxImageList1.Draw(ACanvas.Canvas, AViewInfo.ClientBounds.Left + 3, AViewInfo.ClientBounds.Top + 1, 6);

        if AViewInfo.GridRecord.Values[GridAgendaDBTableView1STATUS.Index] = 'Em Espera' then
          cxImageList1.Draw(ACanvas.Canvas, AViewInfo.ClientBounds.Left + 3, AViewInfo.ClientBounds.Top + 1, 11);

        if AViewInfo.GridRecord.Values[GridAgendaDBTableView1STATUS.Index] = 'Atendido' then
          cxImageList1.Draw(ACanvas.Canvas, AViewInfo.ClientBounds.Left + 3, AViewInfo.ClientBounds.Top + 1, 3);

        if AViewInfo.GridRecord.Values[GridAgendaDBTableView1STATUS.Index] = 'Desmarcou' then
          cxImageList1.Draw(ACanvas.Canvas, AViewInfo.ClientBounds.Left + 3, AViewInfo.ClientBounds.Top + 1, 9);

        if AViewInfo.GridRecord.Values[GridAgendaDBTableView1STATUS.Index] = 'Faltou' then
          cxImageList1.Draw(ACanvas.Canvas, AViewInfo.ClientBounds.Left + 3, AViewInfo.ClientBounds.Top + 1, 7);

      end;
    finally
      FreeAndNil(APainter);
    end;
    ADone := True;
  end;
  Self.setControlButtonScrow(True);
end;

procedure TOpeAgendaConsultaF.limparEstruturaVirtual(const pCds: TClientDataSet);
begin
  Self.setControlButtonScrow(False);
  try
    pCds.DisableControls;
    pCds.First;
    while not(pCds.Eof) do
    begin
      pCds.Edit;
      pCds.FieldByName('IDAGENDA').Clear;
      pCds.FieldByName('IDDOUTOR').Clear;
      pCds.FieldByName('IDPACIENTE').Clear;
      pCds.FieldByName('IDCONVENIO').Clear;
      pCds.FieldByName('STATUSIMAGEM').Clear;
      pCds.FieldByName('STATUS').Clear;
      pCds.FieldByName('MOTIVO').Clear;
      pCds.FieldByName('DOUTORNOME').Clear;
      pCds.FieldByName('DOUTOREMAIL').Clear;
      pCds.FieldByName('PACIENTENOME').Clear;
      pCds.FieldByName('DESCRICAOCONVENIO').Clear;
      pCds.FieldByName('PACIENTETELEFONE01').Clear;
      pCds.FieldByName('PACIENTECPF').Clear;
      pCds.FieldByName('PACIENTERG').Clear;
      pCds.FieldByName('PACIENTEIDADE').Clear;
      pCds.FieldByName('INTERVALO').Clear;
      pCds.Post;
      pCds.Next;
    end;
    pCds.First;
  finally
    pCds.EnableControls;
  end;
  Self.setControlButtonScrow(False);
end;

function TOpeAgendaConsultaF.removerPacienteConsulta(const pIdAgenda: Integer): Boolean;
begin
  DmConexaoF.SqlExecutar('DELETE FROM PACIENTECONSULTA WHERE IDAGENDA = '+TRotinaGenerica.IntToSql(pIdAgenda));
end;

procedure TOpeAgendaConsultaF.setControlButtonScrow(const pValor: Boolean);
begin
  controlButtonScrow := pValor;
end;

Initialization
  RegisterClass(TOpeAgendaConsultaF);

end.
