unit SmdReceituarioU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaShowModalU, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, Grids, DBGrids, cxButtons, DBCtrls, cxGroupBox,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBClient, frxClass, frxDBSet;

type
  TSmdReceituarioF = class(TXTelaShowModalF)
    GbListagemMedicamento: TcxGroupBox;
    PnlListagemMedicamentoBotao: TPanel;
    BtnIncluirMedicamento: TcxButton;
    PnlListagemMedicamentoLista: TPanel;
    GmMedicamentoReceitado: TcxGroupBox;
    PnlMedicamentoReceitadoBotao: TPanel;
    BtnRemoverMedicamentoDaListaSolicitado: TcxButton;
    PnlMedicamentoReceitadoListagem: TPanel;
    GbInformacoesDoPaciente: TcxGroupBox;
    LblRG: TLabel;
    LblCPF: TLabel;
    LblTelefone1: TLabel;
    LblTelefone2: TLabel;
    LblPaciente: TLabel;
    DbNomePaciente: TDBText;
    DbtRG: TDBText;
    DbtCPF: TDBText;
    DbtTelefone1: TDBText;
    DbtTelefone2: TDBText;
    DbDataNascimento: TDBText;
    LblDataNascimento: TLabel;
    DbIdade: TDBText;
    LblIdade: TLabel;
    GridMedicamento: TcxGrid;
    GridMedicamentoDBTableView1: TcxGridDBTableView;
    GridMedicamentoLevel1: TcxGridLevel;
    GridMedicamentoPedido: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    BtnSelecionar: TcxButton;
    BtnCancelar: TcxButton;
    DsReceituario: TDataSource;
    CdsReceituario: TClientDataSet;
    CdsReceituarioIDPACIENTERECEITUARIO: TIntegerField;
    CdsReceituarioIDPACIENTE: TIntegerField;
    CdsReceituarioIDDOUTOR: TIntegerField;
    CdsReceituarioIDAGENDA: TIntegerField;
    CdsReceituarioDATAINCLUSAO: TDateField;
    CdsReceituarioHORAINCLUSAO: TTimeField;
    CdsReceituarioPACIENTENOME: TStringField;
    CdsReceituarioPACIENTERG: TStringField;
    CdsReceituarioPACIENTECPF: TStringField;
    CdsReceituarioPACIENTETELEFONE01: TStringField;
    CdsReceituarioPACIENTETELEFONE02: TStringField;
    CdsReceituarioPACIENTEDATANASCIMENTO: TDateField;
    CdsReceituarioPACIENTEIDADE: TIntegerField;
    CdsReceituarioPACIENTEEMAIL: TStringField;
    CdsReceituarioPACIENTECIDADEUF: TStringField;
    CdsReceituarioDOUTORNOME: TStringField;
    CdsReceituarioDOUTORCRM: TStringField;
    CdsReceituarioDOUTORCPF: TStringField;
    CdsReceituarioDOUTORTELEFONE: TStringField;
    CdsReceituarioDOUTORCELULAR: TStringField;
    DbtEmail: TDBText;
    LblEmail: TLabel;
    DbPacienteCidadeUF: TDBText;
    LblPacienteCidadeUF: TLabel;
    DsMedicamento: TDataSource;
    CdsMedicamento: TClientDataSet;
    CdsMedicamentoIDMEDICAMENTO: TIntegerField;
    CdsMedicamentoIDMEDICAMENTOQTDE: TIntegerField;
    CdsMedicamentoIDMEDICAMENTOUSO: TIntegerField;
    CdsMedicamentoIDSITUACAOREGISTRO: TSmallintField;
    CdsMedicamentoDATAINCLUSAO: TDateField;
    CdsMedicamentoDESCRICAO: TStringField;
    CdsMedicamentoPOSOLOGIA: TStringField;
    CdsMedicamentoMEDICAMENTOUSO: TStringField;
    CdsMedicamentoMEDICAMENTOQTDE: TStringField;
    CdsMedicamentoSITUACAOREGISTRO: TStringField;
    GridMedicamentoDBTableView1DESCRICAO: TcxGridDBColumn;
    GridMedicamentoDBTableView1MEDICAMENTOUSO: TcxGridDBColumn;
    GridMedicamentoDBTableView1MEDICAMENTOQTDE: TcxGridDBColumn;
    DsReceituarioPedido: TDataSource;
    CdsReceituarioPedido: TClientDataSet;
    CdsReceituarioPedidoIDPACIENTERECEITUARIOUSO: TIntegerField;
    CdsReceituarioPedidoIDPACIENTERECEITUARIO: TIntegerField;
    CdsReceituarioPedidoIDPACIENTE: TIntegerField;
    CdsReceituarioPedidoIDMEDICAMENTO: TIntegerField;
    CdsReceituarioPedidoPOSOLOGIA: TStringField;
    CdsReceituarioPedidoMEDICAMENTO: TStringField;
    CdsReceituarioPedidoMEDICAMENTOUSO: TStringField;
    CdsReceituarioPedidoMEDICAMENTOQTDE: TStringField;
    cxGridDBTableView1POSOLOGIA: TcxGridDBColumn;
    cxGridDBTableView1MEDICAMENTO: TcxGridDBColumn;
    cxGridDBTableView1MEDICAMENTOUSO: TcxGridDBColumn;
    cxGridDBTableView1MEDICAMENTOQTDE: TcxGridDBColumn;
    frxCdsReceituario: TfrxDBDataset;
    frxCdsReceituarioPedido: TfrxDBDataset;
    frxRelatorioReceituarioInteira: TfrxReport;
    frxRelatorioReceituarioMeia: TfrxReport;
    frxRelatorioReceituarioTimbrado: TfrxReport;
    BtnAlterarMedicamentoSelecionado: TcxButton;
    BtnInativarMedicamentoSelecionado: TcxButton;
    BtnMedicamentoSolicitadoAoPaciente: TcxButton;
    procedure CdsReceituarioAfterInsert(DataSet: TDataSet);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure CdsReceituarioPedidoAfterInsert(DataSet: TDataSet);
    procedure GridMedicamentoDBTableView1DblClick(Sender: TObject);
    procedure BtnRemoverMedicamentoDaListaSolicitadoClick(Sender: TObject);
    procedure BtnIncluirMedicamentoClick(Sender: TObject);
    procedure BtnInativarMedicamentoSelecionadoClick(Sender: TObject);
    procedure BtnAlterarMedicamentoSelecionadoClick(Sender: TObject);
    procedure BtnMedicamentoSolicitadoAoPacienteClick(Sender: TObject);

  private
    { Private declarations }
    vIdAgenda, vIdPaciente, vIdDoutor: Integer;
    procedure buscarDadosDoutor(const pIdDoutor: Integer);
    procedure buscarDadosPaciente(const pIdPaciente: Integer);

  public
    { Public declarations }
    class function chamaTelaIncluir(const pIdAgenda, pIdPaciente, pIdDoutor: Integer): Boolean;

  end;

var
  SmdReceituarioF: TSmdReceituarioF;

implementation

uses DmRotinaU, DmConexaoU, XLibGenericoU, SmdReceituarioPosologiaU,
  DmRelatorioU, LibRotinasSistemaU, XLibMessages, SmdMedicamentoU;

{$R *.dfm}

{ TSmdReceituarioF }

procedure TSmdReceituarioF.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;
end;

procedure TSmdReceituarioF.BtnSelecionarClick(Sender: TObject);
begin
  inherited;
  case TRotinaGenerica.MensagemTButtonPersonal(['Inteira', 'Meia', 'Timbrado']
                                               ,'Escolha o modelo de impressão?'
                                               ,'Modelo de Impressão'
                                               ,0
                                               ) of
    0: begin
      Self.CdsReceituario.Post;
      Self.CdsReceituario.ApplyUpdates(0);
      Self.CdsReceituarioPedido.ApplyUpdates(0);
      DmRelatorioF.CdsCabecalhoRelatorio.Open;
      frxRelatorioReceituarioInteira.ShowReport(True);
      DmRelatorioF.CdsCabecalhoRelatorio.Close;
      Self.ModalResult := mrOk;
    end;

    1: begin
      Self.CdsReceituario.Post;
      Self.CdsReceituario.ApplyUpdates(0);
      Self.CdsReceituarioPedido.ApplyUpdates(0);
      DmRelatorioF.CdsCabecalhoRelatorio.Open;
      frxRelatorioReceituarioMeia.ShowReport(True);
      DmRelatorioF.CdsCabecalhoRelatorio.Close;
      Self.ModalResult := mrOk;
    end;

    2: begin
      Self.CdsReceituario.Post;
      Self.CdsReceituario.ApplyUpdates(0);
      Self.CdsReceituarioPedido.ApplyUpdates(0);
      DmRelatorioF.CdsCabecalhoRelatorio.Open;
      frxRelatorioReceituarioTimbrado.ShowReport(True);
      DmRelatorioF.CdsCabecalhoRelatorio.Close;
      Self.ModalResult := mrOk;
    end;
  end;
end;

procedure TSmdReceituarioF.buscarDadosDoutor(const pIdDoutor: Integer);
var
  CdsDoutorTmp: TClientDataSet;
begin
  CdsDoutorTmp := TClientDataSet.Create(Nil);
  try
    CdsDoutorTmp.RemoteServer := DmConexaoF.LocalConnection;
    CdsDoutorTmp.ProviderName := 'dmDspConsulta';
    CdsDoutorTmp.Close;
    CdsDoutorTmp.CommandText := ' SELECT DOU.NOME '
                               +'       ,DOU.CRM '
                               +'       ,DOU.CPF '
                               +'       ,DOU.TELEFONE '
                               +'       ,DOU.CELULAR '
                               +'       ,DOU.EMAIL '
                               +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
                               +'   FROM DOUTOR DOU '
                               +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = DOU.IDCIDADE) '
                               +'  WHERE 1 = 1 '
                               +'    AND DOU.IDDOUTOR = '+TRotinaGenerica.IntToSql(pIdDoutor);
    CdsDoutorTmp.Open;
    if not(CdsDoutorTmp.IsEmpty) then
    begin
      CdsReceituarioDOUTORNOME.AsString     := CdsDoutorTmp.FieldByName('NOME').AsString;
      CdsReceituarioDOUTORCRM.AsString      := CdsDoutorTmp.FieldByName('CRM').AsString;
      CdsReceituarioDOUTORCPF.AsString      := CdsDoutorTmp.FieldByName('CPF').AsString;
      CdsReceituarioDOUTORTELEFONE.AsString := CdsDoutorTmp.FieldByName('TELEFONE').AsString;
      CdsReceituarioDOUTORCELULAR.AsString  := CdsDoutorTmp.FieldByName('CELULAR').AsString;
    end;

  finally
    FreeAndNil(CdsDoutorTmp);
  end;
end;

procedure TSmdReceituarioF.buscarDadosPaciente(const pIdPaciente: Integer);
var
  CdsPacienteTmp: TClientDataSet;
begin
  CdsPacienteTmp := TClientDataSet.Create(Nil);
  try
    CdsPacienteTmp.RemoteServer := DmConexaoF.LocalConnection;
    CdsPacienteTmp.ProviderName := 'dmDspConsulta';
    CdsPacienteTmp.Close;
    CdsPacienteTmp.CommandText := ' SELECT PAC.NOME '
                            +'       ,PAC.RG '
                            +'       ,PAC.CPF '
                            +'       ,PAC.TELEFONE1 '
                            +'       ,PAC.TELEFONE2 '
                            +'       ,PAC.DATANASCIMENTO '
                            +'       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) IDADE '
                            +'       ,PAC.EMAIL '
                            +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
                            +'   FROM PACIENTE PAC '
                            +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PAC.IDCIDADE) '
                            +'  WHERE 1 = 1 '
                            +'    AND PAC.IDPACIENTE = '+TRotinaGenerica.IntToSql(pIdPaciente);
    CdsPacienteTmp.Open;
    if not(CdsPacienteTmp.IsEmpty) then
    begin
      CdsReceituarioPACIENTENOME.AsString           := CdsPacienteTmp.FieldByName('NOME').AsString;
      CdsReceituarioPACIENTERG.AsString             := CdsPacienteTmp.FieldByName('RG').AsString;
      CdsReceituarioPACIENTECPF.AsString            := CdsPacienteTmp.FieldByName('CPF').AsString;
      CdsReceituarioPACIENTETELEFONE01.AsString     := CdsPacienteTmp.FieldByName('TELEFONE1').AsString;
      CdsReceituarioPACIENTETELEFONE02.AsString     := CdsPacienteTmp.FieldByName('TELEFONE2').AsString;
      CdsReceituarioPACIENTEDATANASCIMENTO.AsString := CdsPacienteTmp.FieldByName('DATANASCIMENTO').AsString;
      CdsReceituarioPACIENTEIDADE.AsString          := CdsPacienteTmp.FieldByName('IDADE').AsString;
      CdsReceituarioPACIENTEEMAIL.AsString          := CdsPacienteTmp.FieldByName('EMAIL').AsString;
      CdsReceituarioPACIENTECIDADEUF.AsString       := CdsPacienteTmp.FieldByName('CIDADEUF').AsString;
    end;

  finally
    FreeAndNil(CdsPacienteTmp);
  end;
end;

procedure TSmdReceituarioF.CdsReceituarioAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsReceituario.FieldByName('IDPACIENTERECEITUARIO').AsInteger := DmConexaoF.Proximo('PACIENTERECEITUARIO', 'IDPACIENTERECEITUARIO', ' IDPACIENTE = '+TRotinaGenerica.IntToSql(Self.vIdPaciente)+' ');
  CdsReceituario.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsReceituario.FieldByName('HORAINCLUSAO').AsDateTime      := Time;
  CdsReceituario.FieldByName('IDAGENDA').AsInteger           := Self.vIdAgenda;
  CdsReceituario.FieldByName('IDDOUTOR').AsInteger           := Self.vIdDoutor;
  CdsReceituario.FieldByName('IDPACIENTE').AsInteger         := Self.vIdPaciente;
end;

procedure TSmdReceituarioF.CdsReceituarioPedidoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsReceituarioPedido.FieldByName('IDPACIENTERECEITUARIOUSO').AsInteger := DmConexaoF.ProximoFilha(Self.CdsReceituarioPedido, 'IDPACIENTERECEITUARIOUSO');
  CdsReceituarioPedido.FieldByName('IDPACIENTERECEITUARIO').AsInteger    := CdsReceituarioIDPACIENTERECEITUARIO.AsInteger;
  CdsReceituarioPedido.FieldByName('IDPACIENTE').AsInteger               := Self.vIdPaciente;
end;

class function TSmdReceituarioF.chamaTelaIncluir(const pIdAgenda, pIdPaciente, pIdDoutor: Integer): Boolean;
begin
  Result := False;
  SmdReceituarioF := TSmdReceituarioF.Create(nil);
  try
    SmdReceituarioF.vIdAgenda   := pIdAgenda;
    SmdReceituarioF.vIdPaciente := pIdPaciente;
    SmdReceituarioF.vIdDoutor   := pIdDoutor;

    SmdReceituarioF.CdsMedicamento.Close;
    SmdReceituarioF.CdsReceituarioPedido.Close;
    SmdReceituarioF.CdsReceituario.Close;
    SmdReceituarioF.CdsReceituario.CommandText :=
       ' SELECT PRE.* '
      +'       ,PAC.NOME AS PACIENTENOME '
      +'       ,PAC.RG AS PACIENTERG '
      +'       ,PAC.CPF AS PACIENTECPF '
      +'       ,PAC.TELEFONE1 AS PACIENTETELEFONE01 '
      +'       ,PAC.TELEFONE2 AS PACIENTETELEFONE02 '
      +'       ,PAC.DATANASCIMENTO AS PACIENTEDATANASCIMENTO '
      +'       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) PACIENTEIDADE '
      +'       ,PAC.EMAIL AS PACIENTEEMAIL '
      +'       ,(CIDPAC.CIDADE || '' - '' || CIDPAC.UF) AS PACIENTECIDADEUF '
      +'       ,DOU.NOME AS DOUTORNOME '
      +'       ,DOU.CRM AS DOUTORCRM '
      +'       ,DOU.CPF AS DOUTORCPF '
      +'       ,DOU.TELEFONE AS DOUTORTELEFONE '
      +'       ,DOU.CELULAR AS DOUTORCELULAR '
      +'   FROM PACIENTERECEITUARIO PRE '
      +'        JOIN PACIENTE PAC ON (PAC.IDPACIENTE = PRE.IDPACIENTE) '
      +'        LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.IDCIDADE) '
      +'        JOIN DOUTOR DOU ON (DOU.IDDOUTOR = PRE.IDDOUTOR) '
      +'  WHERE 1 = -1 ';

    SmdReceituarioF.CdsReceituario.Open;
    SmdReceituarioF.CdsReceituarioPedido.Open;
    SmdReceituarioF.CdsMedicamento.Open;

    SmdReceituarioF.CdsReceituario.Insert;

    SmdReceituarioF.buscarDadosDoutor(SmdReceituarioF.vIdDoutor);
    SmdReceituarioF.buscarDadosPaciente(SmdReceituarioF.vIdPaciente);


    SmdReceituarioF.ShowModal;
    if SmdReceituarioF.ModalResult = mrOk then
      Result := True
    else if SmdReceituarioF.ModalResult = mrCancel then
    begin
      SmdReceituarioF.CdsReceituario.CancelUpdates;
      Result := False;
    end;

  finally
    SmdReceituarioF.CdsMedicamento.Close;
    SmdReceituarioF.CdsReceituarioPedido.Close;
    SmdReceituarioF.CdsReceituario.Close;
    SmdReceituarioF.Release;
    SmdReceituarioF := nil;
  end;
end;

procedure TSmdReceituarioF.BtnAlterarMedicamentoSelecionadoClick(Sender: TObject);
var
  _idMedicamento: Integer;
begin
  inherited;
  _idMedicamento := CdsMedicamentoIDMEDICAMENTO.AsInteger;
  if TSmdMedicamentoF.chamaTelaAlterar(_idMedicamento) then
  begin
    CdsMedicamento.Close;
    CdsMedicamento.Open;
    CdsMedicamento.Locate('IDMEDICAMENTO', _idMedicamento, []);
  end;
end;

procedure TSmdReceituarioF.BtnInativarMedicamentoSelecionadoClick(Sender: TObject);
var
  _idMedicamento: Integer;
begin
  inherited;
  if TRotinaGenerica.MensagemGeral('Deseja realmente <INATIVAR> este medicamento?', MsgConfirmar, BtSN) = 'Sim' then
  begin
    CdsMedicamento.Edit;
    CdsMedicamentoIDSITUACAOREGISTRO.AsInteger := 0;
    CdsMedicamento.Post;
    CdsMedicamento.ApplyUpdates(0);

    CdsMedicamento.Next;
    _idMedicamento := CdsMedicamentoIDMEDICAMENTO.AsInteger;

    CdsMedicamento.Close;
    CdsMedicamento.Open;

    CdsMedicamento.Locate('IDMEDICAMENTO', _idMedicamento, []);
  end;
end;

procedure TSmdReceituarioF.BtnMedicamentoSolicitadoAoPacienteClick(Sender: TObject);
begin
  inherited;
  if not(CdsReceituarioPedido.State in [dsInsert, dsEdit]) then
  begin
    CdsReceituarioPedido.Insert;
    CdsReceituarioPedido.FieldByName('IDMEDICAMENTO').AsString   := CdsMedicamento.FieldByName('IDMEDICAMENTO').AsString;
    CdsReceituarioPedido.FieldByName('MEDICAMENTO').AsString     := CdsMedicamento.FieldByName('DESCRICAO').AsString;
    CdsReceituarioPedido.FieldByName('MEDICAMENTOUSO').AsString  := CdsMedicamento.FieldByName('MEDICAMENTOUSO').AsString;
    CdsReceituarioPedido.FieldByName('MEDICAMENTOQTDE').AsString := CdsMedicamento.FieldByName('MEDICAMENTOQTDE').AsString;
    CdsReceituarioPedido.FieldByName('POSOLOGIA').AsString       :=
      TSmdReceituarioPosologiaF.chamaTelaInformarPosologia( CdsMedicamento.FieldByName('DESCRICAO').AsString
                                                           ,CdsMedicamento.FieldByName('MEDICAMENTOUSO').AsString
                                                           ,CdsMedicamento.FieldByName('MEDICAMENTOQTDE').AsString);
    CdsReceituarioPedido.Post;
  end;
end;

procedure TSmdReceituarioF.BtnIncluirMedicamentoClick(Sender: TObject);
var
  _idMedicamento: Integer;
begin
  inherited;
  if TSmdMedicamentoF.chamaTelaIncluir(_idMedicamento) then
  begin
    CdsMedicamento.Close;
    CdsMedicamento.Open;
    CdsMedicamento.Locate('IDMEDICAMENTO', _idMedicamento, []);
  end;
end;

procedure TSmdReceituarioF.BtnRemoverMedicamentoDaListaSolicitadoClick(Sender: TObject);
begin
  inherited;
  if CdsReceituarioPedido.IsEmpty then
  begin
    TRotinaGenerica.MensagemGeral('Não há medicamento solicitado para remover.', MsgValidacao, BtOk);
  end
  else if TRotinaGenerica.MensagemGeral('Deseja realmente remover este medicamento da listagem?', MsgConfirmar, BtSN) = 'Sim' then
  begin
    CdsReceituarioPedido.Delete;
  end;
end;

procedure TSmdReceituarioF.GridMedicamentoDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if not(CdsReceituarioPedido.State in [dsInsert, dsEdit]) then
  begin
    CdsReceituarioPedido.Insert;
    CdsReceituarioPedido.FieldByName('IDMEDICAMENTO').AsString   := CdsMedicamento.FieldByName('IDMEDICAMENTO').AsString;
    CdsReceituarioPedido.FieldByName('MEDICAMENTO').AsString     := CdsMedicamento.FieldByName('DESCRICAO').AsString;
    CdsReceituarioPedido.FieldByName('MEDICAMENTOUSO').AsString  := CdsMedicamento.FieldByName('MEDICAMENTOUSO').AsString;
    CdsReceituarioPedido.FieldByName('MEDICAMENTOQTDE').AsString := CdsMedicamento.FieldByName('MEDICAMENTOQTDE').AsString;
    CdsReceituarioPedido.FieldByName('POSOLOGIA').AsString       :=
      TSmdReceituarioPosologiaF.chamaTelaInformarPosologia( CdsMedicamento.FieldByName('DESCRICAO').AsString
                                                           ,CdsMedicamento.FieldByName('MEDICAMENTOUSO').AsString
                                                           ,CdsMedicamento.FieldByName('MEDICAMENTOQTDE').AsString);
    CdsReceituarioPedido.Post;
  end;
end;

end.
