unit SmdSolicitacaoExameU;

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
  TSmdSolicitacaoExameF = class(TXTelaShowModalF)
    GbInformacoesDoPaciente: TcxGroupBox;
    LblRG: TLabel;
    LblCPF: TLabel;
    LblTelefone1: TLabel;
    LblTelefone2: TLabel;
    LblPaciente: TLabel;
    LblEmail: TLabel;
    DbNomePaciente: TDBText;
    DbtRG: TDBText;
    DbtCPF: TDBText;
    DbtTelefone1: TDBText;
    DbtTelefone2: TDBText;
    DbtEmail: TDBText;
    DbDataNascimento: TDBText;
    LblDataNascimento: TLabel;
    DbIdade: TDBText;
    LblIdade: TLabel;
    GbListagemMedicamento: TcxGroupBox;
    PnlListagemMedicamentoBotao: TPanel;
    BtnIncluirExame: TcxButton;
    PnlListagemMedicamentoLista: TPanel;
    GmMedicamentoReceitado: TcxGroupBox;
    PnlMedicamentoReceitadoBotao: TPanel;
    BtnRemoverExameDaListaSolicitado: TcxButton;
    PnlMedicamentoReceitadoListagem: TPanel;
    GridPesquisa: TcxGrid;
    GridPesquisaDBTableView1: TcxGridDBTableView;
    GridPesquisaLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    BtnSelecionar: TcxButton;
    BtnCancelar: TcxButton;
    DsExame: TDataSource;
    CdsExame: TClientDataSet;
    GridPesquisaDBTableView1DESCRICAO: TcxGridDBColumn;
    DsSolicitacaoExame: TDataSource;
    CdsSolicitacaoExame: TClientDataSet;
    DsSolicitacaoExamePedido: TDataSource;
    CdsSolicitacaoExamePedido: TClientDataSet;
    CdsSolicitacaoExameIDPACIENTEEXAME: TIntegerField;
    CdsSolicitacaoExameIDPACIENTE: TIntegerField;
    CdsSolicitacaoExameIDDOUTOR: TIntegerField;
    CdsSolicitacaoExameIDAGENDA: TIntegerField;
    CdsSolicitacaoExameDATAINCLUSAO: TDateField;
    CdsSolicitacaoExameHORAINCLUSAO: TTimeField;
    CdsSolicitacaoExamePACIENTENOME: TStringField;
    CdsSolicitacaoExamePACIENTERG: TStringField;
    CdsSolicitacaoExamePACIENTECPF: TStringField;
    CdsSolicitacaoExamePACIENTETELEFONE01: TStringField;
    CdsSolicitacaoExamePACIENTETELEFONE02: TStringField;
    CdsSolicitacaoExamePACIENTEDATANASCIMENTO: TDateField;
    CdsSolicitacaoExamePACIENTEIDADE: TIntegerField;
    CdsSolicitacaoExamePACIENTEEMAIL: TStringField;
    CdsSolicitacaoExamePACIENTECIDADEUF: TStringField;
    CdsSolicitacaoExameDOUTORNOME: TStringField;
    CdsSolicitacaoExameDOUTORCRM: TStringField;
    CdsSolicitacaoExameDOUTORCPF: TStringField;
    CdsSolicitacaoExameDOUTORTELEFONE: TStringField;
    CdsSolicitacaoExameDOUTORCELULAR: TStringField;
    CdsSolicitacaoExamePedidoIDPACIENTEEXAMESOLICITADO: TIntegerField;
    CdsSolicitacaoExamePedidoIDPACIENTEEXAME: TIntegerField;
    CdsSolicitacaoExamePedidoIDPACIENTE: TIntegerField;
    CdsSolicitacaoExamePedidoIDEXAME: TIntegerField;
    CdsSolicitacaoExamePedidoEXAMEDESCRICAO: TStringField;
    cxGridDBTableView1EXAMEDESCRICAO: TcxGridDBColumn;
    frxCdsSolicitacaoExame: TfrxDBDataset;
    frxCdsSolicitacaoExamePedido: TfrxDBDataset;
    frxRelatorioExameInteira: TfrxReport;
    frxRelatorioExameMeia: TfrxReport;
    frxRelatorioExameTimbrado: TfrxReport;
    BtnExameSolicitadoAoPaciente: TcxButton;
    BtnAlterarExameSelecionado: TcxButton;
    BtnInativarExameSelecionado: TcxButton;
    CdsExameIDEXAME: TIntegerField;
    CdsExameIDSITUACAOREGISTRO: TSmallintField;
    CdsExameDATAINCLUSAO: TDateField;
    CdsExameDESCRICAO: TStringField;
    CdsExameSITUACAOREGISTRO: TStringField;
    procedure CdsSolicitacaoExameAfterInsert(DataSet: TDataSet);
    procedure GridPesquisaDBTableView1DblClick(Sender: TObject);
    procedure CdsSolicitacaoExamePedidoAfterInsert(DataSet: TDataSet);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnRemoverExameDaListaSolicitadoClick(Sender: TObject);
    procedure BtnIncluirExameClick(Sender: TObject);
    procedure BtnExameSolicitadoAoPacienteClick(Sender: TObject);
    procedure BtnAlterarExameSelecionadoClick(Sender: TObject);
    procedure BtnInativarExameSelecionadoClick(Sender: TObject);

  private
    { Private declarations }
    vIdAgenda, vIdPaciente, vIdDoutor: Integer;

  public
    { Public declarations }
    class function chamaTelaIncluir(const pIdAgenda, pIdPaciente, pIdDoutor: Integer): Boolean;
    procedure buscarDadosDoutor(const pIdDoutor: Integer);
    procedure buscarDadosPaciente(const pIdPaciente: Integer);

  end;

var
  SmdSolicitacaoExameF: TSmdSolicitacaoExameF;

implementation

uses DmConexaoU, XLibGenericoU, DmRelatorioU, DmRotinaU, SmdExameU;

{$R *.dfm}

{ TSmdSolicitacaoExameF }

procedure TSmdSolicitacaoExameF.BtnAlterarExameSelecionadoClick(Sender: TObject);
var
  _idExame: Integer;
begin
  inherited;
  _idExame := CdsExameIDEXAME.AsInteger;
  if TSmdExameF.chamaTelaAlterar(_idExame) then
  begin
    CdsExame.Close;
    CdsExame.Open;
    CdsExame.Locate('IDEXAME', _idExame, []);
  end;
end;

procedure TSmdSolicitacaoExameF.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;
end;

procedure TSmdSolicitacaoExameF.BtnSelecionarClick(Sender: TObject);
begin
  inherited;
  case TRotinaGenerica.MensagemTButtonPersonal(['Inteira', 'Meia', 'Timbrado']
                                               ,'Escolha o modelo de impressão?'
                                               ,'Modelo de Impressão'
                                               ,0
                                               ) of
    0: begin
      Self.CdsSolicitacaoExame.Post;
      Self.CdsSolicitacaoExame.ApplyUpdates(0);
      Self.CdsSolicitacaoExamePedido.ApplyUpdates(0);
      DmRelatorioF.CdsCabecalhoRelatorio.Open;
      //Self.executarRelatorio('OpeAgenda_SolicitacaoExame_I');
      frxRelatorioExameInteira.ShowReport(True);
      DmRelatorioF.CdsCabecalhoRelatorio.Close;
      Self.ModalResult := mrOk;
    end;

    1: begin
      Self.CdsSolicitacaoExame.Post;
      Self.CdsSolicitacaoExame.ApplyUpdates(0);
      Self.CdsSolicitacaoExamePedido.ApplyUpdates(0);
      DmRelatorioF.CdsCabecalhoRelatorio.Open;
      frxRelatorioExameMeia.ShowReport(True);
      DmRelatorioF.CdsCabecalhoRelatorio.Close;
      //Self.executarRelatorio('OpeAgenda_SolicitacaoExame_M');
      Self.ModalResult := mrOk;
    end;

    2: begin
      Self.CdsSolicitacaoExame.Post;
      Self.CdsSolicitacaoExame.ApplyUpdates(0);
      Self.CdsSolicitacaoExamePedido.ApplyUpdates(0);
      DmRelatorioF.CdsCabecalhoRelatorio.Open;
      frxRelatorioExameTimbrado.ShowReport(True);
      DmRelatorioF.CdsCabecalhoRelatorio.Close;
      //Self.executarRelatorio('OpeAgenda_SolicitacaoExame_T');
      Self.ModalResult := mrOk;
    end;
  end; //Fim do Case
end;

procedure TSmdSolicitacaoExameF.buscarDadosDoutor(const pIdDoutor: Integer);
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
      CdsSolicitacaoExameDOUTORNOME.AsString     := CdsDoutorTmp.FieldByName('NOME').AsString;
      CdsSolicitacaoExameDOUTORCRM.AsString      := CdsDoutorTmp.FieldByName('CRM').AsString;
      CdsSolicitacaoExameDOUTORCPF.AsString      := CdsDoutorTmp.FieldByName('CPF').AsString;
      CdsSolicitacaoExameDOUTORTELEFONE.AsString := CdsDoutorTmp.FieldByName('TELEFONE').AsString;
      CdsSolicitacaoExameDOUTORCELULAR.AsString  := CdsDoutorTmp.FieldByName('CELULAR').AsString;
    end;

  finally
    FreeAndNil(CdsDoutorTmp);
  end;
end;

procedure TSmdSolicitacaoExameF.buscarDadosPaciente(const pIdPaciente: Integer);
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
      CdsSolicitacaoExamePACIENTENOME.AsString           := CdsPacienteTmp.FieldByName('NOME').AsString;
      CdsSolicitacaoExamePACIENTERG.AsString             := CdsPacienteTmp.FieldByName('RG').AsString;
      CdsSolicitacaoExamePACIENTECPF.AsString            := CdsPacienteTmp.FieldByName('CPF').AsString;
      CdsSolicitacaoExamePACIENTETELEFONE01.AsString     := CdsPacienteTmp.FieldByName('TELEFONE1').AsString;
      CdsSolicitacaoExamePACIENTETELEFONE02.AsString     := CdsPacienteTmp.FieldByName('TELEFONE2').AsString;
      CdsSolicitacaoExamePACIENTEDATANASCIMENTO.AsString := CdsPacienteTmp.FieldByName('DATANASCIMENTO').AsString;
      CdsSolicitacaoExamePACIENTEIDADE.AsString          := CdsPacienteTmp.FieldByName('IDADE').AsString;
      CdsSolicitacaoExamePACIENTEEMAIL.AsString          := CdsPacienteTmp.FieldByName('EMAIL').AsString;
      CdsSolicitacaoExamePACIENTECIDADEUF.AsString       := CdsPacienteTmp.FieldByName('CIDADEUF').AsString;
    end;

  finally
    FreeAndNil(CdsPacienteTmp);
  end;
end;

procedure TSmdSolicitacaoExameF.CdsSolicitacaoExameAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsSolicitacaoExame.FieldByName('IDPACIENTEEXAME').AsInteger := DmConexaoF.Proximo('PACIENTEEXAME', 'IDPACIENTEEXAME', ' IDPACIENTE = '+TRotinaGenerica.IntToSql(Self.vIdPaciente)+' ');
  CdsSolicitacaoExame.FieldByName('DATAINCLUSAO').AsDateTime   := Date;
  CdsSolicitacaoExame.FieldByName('HORAINCLUSAO').AsDateTime   := Time;
  CdsSolicitacaoExame.FieldByName('IDAGENDA').AsInteger        := Self.vIdAgenda;
  CdsSolicitacaoExame.FieldByName('IDDOUTOR').AsInteger        := Self.vIdDoutor;
  CdsSolicitacaoExame.FieldByName('IDPACIENTE').AsInteger      := Self.vIdPaciente;
end;

procedure TSmdSolicitacaoExameF.CdsSolicitacaoExamePedidoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsSolicitacaoExamePedido.FieldByName('IDPACIENTEEXAMESOLICITADO').AsInteger := DmConexaoF.ProximoFilha(Self.CdsSolicitacaoExamePedido, 'IDPACIENTEEXAMESOLICITADO');
  CdsSolicitacaoExamePedido.FieldByName('IDPACIENTEEXAME').AsInteger           := CdsSolicitacaoExameIDPACIENTEEXAME.AsInteger;
  CdsSolicitacaoExamePedido.FieldByName('IDPACIENTE').AsInteger                := Self.vIdPaciente;
end;

class function TSmdSolicitacaoExameF.chamaTelaIncluir(const pIdAgenda, pIdPaciente, pIdDoutor: Integer): Boolean;
begin
  Result := False;
  SmdSolicitacaoExameF := TSmdSolicitacaoExameF.Create(nil);
  try
    SmdSolicitacaoExameF.vIdAgenda   := pIdAgenda;
    SmdSolicitacaoExameF.vIdPaciente := pIdPaciente;
    SmdSolicitacaoExameF.vIdDoutor   := pIdDoutor;

    SmdSolicitacaoExameF.CdsExame.Close;
    SmdSolicitacaoExameF.CdsSolicitacaoExamePedido.Close;
    SmdSolicitacaoExameF.CdsSolicitacaoExame.Close;
    SmdSolicitacaoExameF.CdsSolicitacaoExame.CommandText :=
       ' SELECT PEX.* '
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
      +'   FROM PACIENTEEXAME PEX '
      +'        JOIN PACIENTE PAC ON (PAC.IDPACIENTE = PEX.IDPACIENTE) '
      +'        LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.IDCIDADE) '
      +'        JOIN DOUTOR DOU ON (DOU.IDDOUTOR = PEX.IDDOUTOR) '
      +'  WHERE 1 = -1 ';

    SmdSolicitacaoExameF.CdsSolicitacaoExame.Open;
    SmdSolicitacaoExameF.CdsSolicitacaoExamePedido.Open;
    SmdSolicitacaoExameF.CdsExame.Open;

    SmdSolicitacaoExameF.CdsSolicitacaoExame.Insert;

    SmdSolicitacaoExameF.buscarDadosDoutor(SmdSolicitacaoExameF.vIdDoutor);
    SmdSolicitacaoExameF.buscarDadosPaciente(SmdSolicitacaoExameF.vIdPaciente);

    SmdSolicitacaoExameF.ShowModal;
    if SmdSolicitacaoExameF.ModalResult = mrOk then
    begin
      Result := True;
    end
    else if SmdSolicitacaoExameF.ModalResult = mrCancel then
    begin
      SmdSolicitacaoExameF.CdsSolicitacaoExame.CancelUpdates;
      Result := False;
    end;

  finally
    SmdSolicitacaoExameF.CdsExame.Close;
    SmdSolicitacaoExameF.CdsSolicitacaoExamePedido.Close;
    SmdSolicitacaoExameF.CdsSolicitacaoExame.Close;
    SmdSolicitacaoExameF.Release;
    SmdSolicitacaoExameF := nil;
  end;
end;

procedure TSmdSolicitacaoExameF.BtnInativarExameSelecionadoClick(Sender: TObject);
var
  _idExame: Integer;
begin
  inherited;
  if TRotinaGenerica.MensagemGeral('Deseja realmente <INATIVAR> este exame?', MsgConfirmar, BtSN) = 'Sim' then
  begin
    CdsExame.Edit;
    CdsExameIDSITUACAOREGISTRO.AsInteger := 0;
    CdsExame.Post;
    CdsExame.ApplyUpdates(0);

    CdsExame.Next;
    _idExame := CdsExameIDEXAME.AsInteger;

    CdsExame.Close;
    CdsExame.Open;

    CdsExame.Locate('IDEXAME', _idExame, []);
  end;
end;

procedure TSmdSolicitacaoExameF.BtnIncluirExameClick(Sender: TObject);
var
  _idExame: Integer;
begin
  inherited;
  if TSmdExameF.chamaTelaIncluir(_idExame) then
  begin
    CdsExame.Close;
    CdsExame.Open;
    CdsExame.Locate('IDEXAME', _idExame, []);
  end;
end;

procedure TSmdSolicitacaoExameF.BtnExameSolicitadoAoPacienteClick(Sender: TObject);
begin
  inherited;
  if not(CdsSolicitacaoExamePedido.State in [dsInsert, dsEdit]) then
  begin
    CdsSolicitacaoExamePedido.Insert;
    CdsSolicitacaoExamePedido.FieldByName('IDEXAME').AsString        := CdsExame.FieldByName('IDEXAME').AsString;
    CdsSolicitacaoExamePedido.FieldByName('EXAMEDESCRICAO').AsString := CdsExame.FieldByName('DESCRICAO').AsString;
    CdsSolicitacaoExamePedido.Post;
  end;
end;

procedure TSmdSolicitacaoExameF.BtnRemoverExameDaListaSolicitadoClick(Sender: TObject);
begin
  inherited;
  if CdsSolicitacaoExamePedido.IsEmpty then
  begin
    TRotinaGenerica.MensagemGeral('Não há exame solicitado para remover.', MsgValidacao, BtOk);
  end
  else if TRotinaGenerica.MensagemGeral('Deseja realmente remover este exame da listagem?', MsgConfirmar, BtSN) = 'Sim' then
  begin
    CdsSolicitacaoExamePedido.Delete;
  end;
end;

procedure TSmdSolicitacaoExameF.GridPesquisaDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if not(CdsSolicitacaoExamePedido.State in [dsInsert, dsEdit]) then
  begin
    CdsSolicitacaoExamePedido.Insert;
    CdsSolicitacaoExamePedido.FieldByName('IDEXAME').AsString        := CdsExame.FieldByName('IDEXAME').AsString;
    CdsSolicitacaoExamePedido.FieldByName('EXAMEDESCRICAO').AsString := CdsExame.FieldByName('DESCRICAO').AsString;
    CdsSolicitacaoExamePedido.Post;
  end;
end;

end.
