unit CadAgendaCompromissoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaCadastroU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, ImgList, ActnList, ExtCtrls, StdCtrls, cxButtons,
  cxPC, ComCtrls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxSpinEdit, cxTimeEdit, cxDBEdit, cxCheckBox, cxDropDownEdit, cxCalendar,
  DmCadastroU, DmConexaoU, DB, DBClient, XLibMessages, XLibGenericoU,
  PesqAgendaCompromissoU, PesqPessoaU;

type
  TCadAgendaCompromissoF = class(TXTelaCadastroF)
    TsPrincipal: TcxTabSheet;
    EdCodigo: TcxButtonEdit;
    LblCodigo: TLabel;
    LblDataCadastro: TLabel;
    LblTelefone: TLabel;
    LblSituacaoAgenda: TLabel;
    LblTitular: TLabel;
    DbDataInclusao: TcxDBDateEdit;
    DbTelefone: TcxDBTextEdit;
    DbSituacaoAgenda: TcxDBTextEdit;
    DbNomeFantasia: TcxDBTextEdit;
    DbCpfCnpj: TcxDBButtonEdit;
    DbDataAgenda: TcxDBDateEdit;
    LblDataAgenda: TLabel;
    DbAssunto: TcxDBTextEdit;
    LblAssunto: TLabel;
    DbDescricao: TcxDBTextEdit;
    LblDescricao: TLabel;
    DbHoraAgenda: TcxDBTimeEdit;
    LblHoraAgenda: TLabel;
    DsAgenda: TDataSource;
    CdsAgenda: TClientDataSet;
    CdsAgendaIDAGENDACOMPROMISSO: TIntegerField;
    CdsAgendaIDPESSOA: TLargeintField;
    CdsAgendaIDSITUACAOAGENDACOMPROMISSO: TSmallintField;
    CdsAgendaDATAINCLUSAO: TDateField;
    CdsAgendaDATACOMPROMISSO: TDateField;
    CdsAgendaHORACOMPROMISSO: TTimeField;
    CdsAgendaTELEFONE: TStringField;
    CdsAgendaASSUNTO: TStringField;
    CdsAgendaNOME: TStringField;
    CdsAgendaDESCRICAO: TStringField;
    CdsAgendaNOMEFANTASIA: TStringField;
    CdsAgendaCPFCNPJ: TStringField;
    CdsAgendaIDTIPOPESSOA: TSmallintField;
    CdsAgendaTELEFONE01: TStringField;
    CdsAgendaSITUACAOAGENDA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
    procedure AcaoIncluirExecute(Sender: TObject);
    procedure AcaoAlterarExecute(Sender: TObject);
    procedure AcaoExcluirExecute(Sender: TObject);
    procedure AcaoConsultarExecute(Sender: TObject);
    procedure CdsAgendaAfterInsert(DataSet: TDataSet);
    procedure EdCodigoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DbCpfCnpjExit(Sender: TObject);
    procedure DbCpfCnpjPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure clearData; override;

  end;

var
  CadAgendaCompromissoF: TCadAgendaCompromissoF;

implementation

{$R *.dfm}

{ TCadAgendaCompromissoF }

procedure TCadAgendaCompromissoF.AcaoAlterarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TSistema.TentaFocar(EdCodigo);
end;

procedure TCadAgendaCompromissoF.AcaoConsultarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TSistema.TentaFocar(EdCodigo);
end;

procedure TCadAgendaCompromissoF.AcaoExcluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TSistema.TentaFocar(EdCodigo);
end;

procedure TCadAgendaCompromissoF.AcaoIncluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;

  // INCLUIR
  if Self.getOperacaoTela = opIncluir then
  begin
    CdsAgenda.Close;
    CdsAgenda.Open;
    CdsAgenda.Insert;
    SetaComponentes(dsInsert);
    EdCodigo.Enabled := False;
  end;
  ControleBotoes;
  TSistema.TentaFocar(DbDataAgenda);
end;

procedure TCadAgendaCompromissoF.CdsAgendaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsAgenda.FieldByName('IDAGENDACOMPROMISSO').AsInteger := DmConexaoF.Proximo('AGENDACOMPROMISSO', 'IDAGENDACOMPROMISSO');
  CdsAgenda.FieldByName('DATAINCLUSAO').AsDateTime       := Date;
  CdsAgenda.FieldByName('DATACOMPROMISSO').AsDateTime    := Date;
  CdsAgenda.FieldByName('HORACOMPROMISSO').AsDateTime    := Time;

  CdsAgenda.FieldByName('IDSITUACAOAGENDACOMPROMISSO').AsInteger := 1;
  CdsAgenda.FieldByName('SITUACAOAGENDA').AsString := 'Aberto';
end;

procedure TCadAgendaCompromissoF.clearData;
begin
  inherited;
  // Limpando Cds
  Self.CdsAgenda.Close;
  Self.CdsAgenda.CommandText :=
     ' SELECT AGE.* '
    +'       ,PES.NOMEFANTASIA '
    +'       ,PES.CPFCNPJ '
    +'       ,PES.IDTIPOPESSOA '
    +'       ,PES.TELEFONE01 '
    +'       ,SAC.DESCRICAO AS SITUACAOAGENDA '
    +'   FROM AGENDACOMPROMISSO AGE '
    +'        LEFT JOIN PESSOA PES ON (PES.IDPESSOA = AGE.IDPESSOA) '
    +'        JOIN SITUACAOAGENDACOMPROMISSO SAC ON (SAC.IDSITUACAOAGENDACOMPROMISSO = AGE.IDSITUACAOAGENDACOMPROMISSO) '
    +'  WHERE 1 = -1 '
    ;
  Self.CdsAgenda.Open;
  Self.SetaComponentes(dsBrowse);
  EdCodigo.Clear;
  EdCodigo.Enabled := True;
end;

procedure TCadAgendaCompromissoF.DbCpfCnpjExit(Sender: TObject);
begin
  inherited;
  if CdsAgenda.State in [dsInsert, dsEdit] then
    TPesqPessoaF.executaPesquisaPessoaAgendaCompromisso02(CdsAgenda, DbCpfCnpj.Text);
end;

procedure TCadAgendaCompromissoF.DbCpfCnpjPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  TPesqPessoaF.executaPesquisaPessoaAgendaCompromisso01(CdsAgenda);
end;

procedure TCadAgendaCompromissoF.EdCodigoExit(Sender: TObject);
var
  _SqlConsulta: String;
begin
  inherited;
  if Trim(EdCodigo.Text) <> '' then
  begin

    _SqlConsulta :=
     ' SELECT AGE.* '
    +'       ,PES.NOMEFANTASIA '
    +'       ,PES.CPFCNPJ '
    +'       ,PES.IDTIPOPESSOA '
    +'       ,PES.TELEFONE01 '
    +'       ,SAC.DESCRICAO AS SITUACAOAGENDA '
    +'   FROM AGENDACOMPROMISSO AGE '
    +'        LEFT JOIN PESSOA PES ON (PES.IDPESSOA = AGE.IDPESSOA) '
    +'        JOIN SITUACAOAGENDACOMPROMISSO SAC ON (SAC.IDSITUACAOAGENDACOMPROMISSO = AGE.IDSITUACAOAGENDACOMPROMISSO) '
    +'  WHERE 1 = 1 '
    ;

    // ALTERAR
    if Self.getOperacaoTela = opAlterar then
    begin
      CdsAgenda.Close;
      CdsAgenda.CommandText :=
        _SqlConsulta
       +' AND AGE.IDAGENDACOMPROMISSO = '+QuotedStr(EdCodigo.Text);
      CdsAgenda.Open;
      if not(CdsAgenda.IsEmpty) then
      begin
        CdsAgenda.Edit;
        SetaComponentes(dsEdit);
        EdCodigo.Enabled := False;
        TSistema.TentaFocar(DbDataAgenda);
      end
      else
      begin
        TMensagemDialogo.MensagemGeral(msgCadPdrRegistroNaoExiste, MsgInformar, BtOk);
        clearData;
      end;
      ControleBotoes;
    end
    else

    // EXCLUIR / CONSULTAR
    if Self.getOperacaoTela in [opExcluir, opConsultar] then
    begin
      CdsAgenda.Close;
      CdsAgenda.CommandText :=
        _SqlConsulta
       +' AND AGE.IDAGENDACOMPROMISSO = '+QuotedStr(EdCodigo.Text);
      CdsAgenda.Open;
      if not(CdsAgenda.IsEmpty) then
      begin
        SetaComponentes(dsBrowse);
        EdCodigo.Enabled := False;
        TSistema.TentaFocar(DbDataAgenda);
      end
      else
        TMensagemDialogo.MensagemGeral(msgCadPdrRegistroNaoExiste, MsgInformar, BtOk);
      ControleBotoes;
    end;
  end;
end;

procedure TCadAgendaCompromissoF.EdCodigoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  TPesqAgendaCompromissoF.executaPesquisaAgendaCompromisso01(EdCodigo);
end;

procedure TCadAgendaCompromissoF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CadAgendaCompromissoF.Release;
  CadAgendaCompromissoF := nil;
end;

procedure TCadAgendaCompromissoF.FormCreate(Sender: TObject);
begin
  Self.setCds(Self.CdsAgenda);
  inherited;
  Self.clearData;
end;

Initialization
  RegisterClass(TCadAgendaCompromissoF);

end.
