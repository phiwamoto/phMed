unit ConsAgendamentoDoPacienteU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaConsultaU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, DB, DBClient, ImgList, ActnList, StdCtrls, cxButtons, ComCtrls,
  ExtCtrls, cxControls, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, DBCtrls, cxGroupBox, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TConsAgendamentoDoPacienteF = class(TXTelaConsultaF)
    GbInformacoesDoPaciente: TcxGroupBox;
    LblRG: TLabel;
    LblCPF: TLabel;
    LblTelefone1: TLabel;
    LblTelefone2: TLabel;
    LblPaciente: TLabel;
    LblEmail: TLabel;
    DbNomePaciente: TLabel;
    DbRG: TLabel;
    DbCPF: TLabel;
    DbTelefone1: TLabel;
    DbTelefone2: TLabel;
    DbEmail: TLabel;
    DbDataNascimento: TLabel;
    LblDataNascimento: TLabel;
    DbIdade: TLabel;
    LblIdade: TLabel;
    DbPacienteCidadeUF: TLabel;
    LblPacienteCidadeUF: TLabel;
    BtnPesquisaPaciente: TcxButton;
    GridConsulta: TcxGrid;
    GridConsultaDBTableView1: TcxGridDBTableView;
    GridConsultaLevel1: TcxGridLevel;
    CdsConsultaDATAAGENDA: TDateField;
    CdsConsultaHORAAGENDA: TTimeField;
    CdsConsultaSTATUS: TStringField;
    CdsConsultaMOTIVO: TStringField;
    CdsConsultaNOME: TStringField;
    GridConsultaDBTableView1DATAAGENDA: TcxGridDBColumn;
    GridConsultaDBTableView1HORAAGENDA: TcxGridDBColumn;
    GridConsultaDBTableView1STATUS: TcxGridDBColumn;
    GridConsultaDBTableView1MOTIVO: TcxGridDBColumn;
    GridConsultaDBTableView1NOME: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnPesquisaPacienteClick(Sender: TObject);

  private
    { Private declarations }
    procedure carregaAgendaConsultaPaciente(const idPaciente: Integer);
    procedure carregaInformacaoPaciente(const idPaciente: Integer);
    procedure limpaInformacaoPaciente;

  public
    { Public declarations }


  end;

var
  ConsAgendamentoDoPacienteF: TConsAgendamentoDoPacienteF;

implementation

uses ConsAgendamentoDoPacientePesquisaPacienteU, XLibGenericoU,
  LibRotinasSistemaU, DmConexaoU;

{$R *.dfm}

procedure TConsAgendamentoDoPacienteF.BtnPesquisaPacienteClick(Sender: TObject);
var
  IdPaciente: Integer;
begin
  inherited;
  IdPaciente := TConsAgendamentoDoPacientePesquisaPacienteF.executa;
  if IdPaciente >= 0 then
  begin
    carregaAgendaConsultaPaciente(IdPaciente);
    carregaInformacaoPaciente(IdPaciente);
  end;
end;

procedure TConsAgendamentoDoPacienteF.carregaAgendaConsultaPaciente(const idPaciente: Integer);
begin
  CdsConsulta.Close;
  CdsConsulta.CommandText :=
     ' SELECT AGENDA.DATAAGENDA '
    +'      ,AGENDA.HORAAGENDA '
    +'      ,AGENDA.STATUS '
    +'      ,AGENDA.MOTIVO '
    +'      ,DOUTOR.NOME '
    +'  FROM PACIENTECONSULTA '
    +'       JOIN AGENDA ON (AGENDA.IDAGENDA = PACIENTECONSULTA.IDAGENDA) '
    +'       JOIN DOUTOR ON (DOUTOR.IDDOUTOR = AGENDA.IDDOUTOR) '
    +' WHERE 1 = 1 '
    +'   AND PACIENTECONSULTA.IDPACIENTE =  '+TRotinaGenerica.IntToSql(idPaciente)
    +' ORDER BY AGENDA.DATAAGENDA, AGENDA.HORAAGENDA ';
  CdsConsulta.Open;
end;

procedure TConsAgendamentoDoPacienteF.carregaInformacaoPaciente(const idPaciente: Integer);
var
  CdsAuxiliar: TClientDataSet;
begin
  CdsAuxiliar := TClientDataSet.Create(nil);
  try
    CdsAuxiliar.RemoteServer := DmConexaoF.LocalConnection;
    CdsAuxiliar.ProviderName := 'dmDspConsulta';
    TCdsExecute.ExecutaSql(
       CdsAuxiliar
      ,'  SELECT PACIENTE.NOME '
      +'        ,PACIENTE.RG '
      +'        ,PACIENTE.CPF '
      +'        ,PACIENTE.TELEFONE1 '
      +'        ,PACIENTE.TELEFONE2 '
      +'        ,PACIENTE.DATANASCIMENTO '
      +'        ,PACIENTE.EMAIL '
      +'        ,CAST(LEFT( (( (CURRENT_DATE - PACIENTE.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) AS IDADE '
      +'        ,(CIDADE.CIDADE || '' - '' || CIDADE.UF) AS CIDADEUF '
      +'    FROM PACIENTE '
      +'         LEFT JOIN CIDADE ON (CIDADE.IDCIDADE = PACIENTE.IDCIDADE) '
      +'   WHERE 1 = 1 '
      +'     AND PACIENTE.IDPACIENTE = '+TRotinaGenerica.IntToSql(idPaciente)
    );

    if not CdsAuxiliar.IsEmpty then
    begin
      DbNomePaciente.Caption := CdsAuxiliar.FieldByName('NOME').AsString;
      DbRG.Caption := CdsAuxiliar.FieldByName('RG').AsString;
      DbCPF.Caption := CdsAuxiliar.FieldByName('CPF').AsString;
      DbTelefone1.Caption := CdsAuxiliar.FieldByName('TELEFONE1').AsString;
      DbTelefone2.Caption := CdsAuxiliar.FieldByName('TELEFONE2').AsString;
      DbDataNascimento.Caption := CdsAuxiliar.FieldByName('DATANASCIMENTO').AsString;
      DbIdade.Caption := CdsAuxiliar.FieldByName('IDADE').AsString;
      DbEmail.Caption := CdsAuxiliar.FieldByName('EMAIL').AsString;
      DbPacienteCidadeUF.Caption := CdsAuxiliar.FieldByName('CIDADEUF').AsString;
    end
    else
    begin
      limpaInformacaoPaciente();
    end;
  finally
    FreeAndNil(CdsAuxiliar);
  end;
end;

procedure TConsAgendamentoDoPacienteF.limpaInformacaoPaciente();
begin
  DbNomePaciente.Caption := '...............';
  DbRG.Caption := '...............';
  DbCPF.Caption := '...............';
  DbTelefone1.Caption := '...............';
  DbTelefone2.Caption := '...............';
  DbDataNascimento.Caption := '...............';
  DbIdade.Caption := '...............';
  DbEmail.Caption := '...............';
  DbPacienteCidadeUF.Caption := '...............';
end;

procedure TConsAgendamentoDoPacienteF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  ConsAgendamentoDoPacienteF.Release;
  ConsAgendamentoDoPacienteF := nil;
end;

Initialization
  RegisterClass(TConsAgendamentoDoPacienteF);

end.
