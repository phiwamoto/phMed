unit SmdAgendaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaShowModalU, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxDBEdit, cxCheckBox, cxDropDownEdit, cxSpinEdit,
  cxTimeEdit, cxTextEdit, cxMaskEdit, cxCalendar, cxButtonEdit, cxMemo, Menus,
  cxButtons, DB, DBClient, cxGroupBox;

type
  TSmdAgendaF = class(TXTelaShowModalF)
    BtnCancelar: TcxButton;
    BtnSelecionar: TcxButton;
    DsAgenda: TDataSource;
    CdsAgenda: TClientDataSet;
    CdsAgendaIDAGENDA: TIntegerField;
    CdsAgendaIDDOUTOR: TIntegerField;
    CdsAgendaIDPACIENTE: TIntegerField;
    CdsAgendaIDCONVENIO: TIntegerField;
    CdsAgendaINTERVALO: TIntegerField;
    CdsAgendaIDENCAIXE: TSmallintField;
    CdsAgendaIDURGENTE: TSmallintField;
    CdsAgendaDATAINCLUSAO: TDateField;
    CdsAgendaDATAAGENDA: TDateField;
    CdsAgendaHORAAGENDA: TTimeField;
    CdsAgendaHORACHEGADA: TTimeField;
    CdsAgendaHORAMANHAINICIAL: TTimeField;
    CdsAgendaHORAMANHAFINAL: TTimeField;
    CdsAgendaHORATARDEINICIAL: TTimeField;
    CdsAgendaHORATARDEFINAL: TTimeField;
    CdsAgendaSTATUS: TStringField;
    CdsAgendaMOTIVO: TStringField;
    CdsAgendaOBSERVACAO: TStringField;
    CdsAgendaDOUTORNOME: TStringField;
    CdsAgendaDOUTORCRM: TStringField;
    CdsAgendaDOUTORCPF: TStringField;
    CdsAgendaDOUTORTELEFONE: TStringField;
    CdsAgendaDOUTORCELULAR: TStringField;
    CdsAgendaPACIENTENOME: TStringField;
    CdsAgendaPACIENTERG: TStringField;
    CdsAgendaPACIENTECPF: TStringField;
    CdsAgendaPACIENTETELEFONE01: TStringField;
    CdsAgendaPACIENTETELEFONE02: TStringField;
    CdsAgendaPACIENTEEMAIL: TStringField;
    CdsAgendaPACIENTEIDADE: TIntegerField;
    CdsAgendaPACIENTECIDADEUF: TStringField;
    GbDoutor: TcxGroupBox;
    LblDoutor_Nome: TLabel;
    LblDoutor_CRM: TLabel;
    LblDoutor_Telefone: TLabel;
    Label1: TLabel;
    DbDoutor_Nome: TcxDBTextEdit;
    DbDoutor_CRM: TcxDBTextEdit;
    DbDoutor_Telefone: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    GbAgendaConsulta: TcxGroupBox;
    LblDataAgenda: TLabel;
    LblHoraAgenda: TLabel;
    LblTpStatus: TLabel;
    LblHoraChegada: TLabel;
    LblTpMotivo: TLabel;
    DbDataAgenda: TcxDBDateEdit;
    DbHoraAgenda: TcxDBTimeEdit;
    CbTpStatus: TcxDBComboBox;
    DbHoraChegada: TcxDBTimeEdit;
    CbUrgente: TcxDBCheckBox;
    CbEncaixe: TcxDBCheckBox;
    CbTpMotivo: TcxDBComboBox;
    GbPaciente: TcxGroupBox;
    LblPaciente_CodigoNome: TLabel;
    LblPaciente_CPF: TLabel;
    LblPaciente_Telefone01: TLabel;
    LblPaciente_Telefone02: TLabel;
    LblPaciente_Email: TLabel;
    LblConvenio: TLabel;
    LblPaciente_CidadeEstado: TLabel;
    LblPaciente_RG: TLabel;
    LblPaciente_Idade: TLabel;
    DbPacienteID: TcxDBButtonEdit;
    DbPaciente_Nome: TcxDBTextEdit;
    DbPaciente_CPF: TcxDBTextEdit;
    DbPaciente_Telefone01: TcxDBTextEdit;
    DbPaciente_Email: TcxDBTextEdit;
    DbPaciente_ConvenioCodigo: TcxDBButtonEdit;
    DbPaciente_ConvenioDescricao: TcxDBTextEdit;
    DbPaciente_Telefone02: TcxDBTextEdit;
    DbPaciente_CidadeEstado: TcxDBTextEdit;
    DbPaciente_RG: TcxDBTextEdit;
    DbPaciente_Idade: TcxDBTextEdit;
    GbObservacao: TcxGroupBox;
    DbObservacao: TcxDBMemo;
    CdsAgendaCONVENIO: TStringField;
    BtnPreCadastroPaciente: TcxButton;
    procedure CdsAgendaAfterInsert(DataSet: TDataSet);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DbPacienteIDExit(Sender: TObject);
    procedure DbPaciente_CodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DbObservacaoEnter(Sender: TObject);
    procedure DbObservacaoExit(Sender: TObject);
    procedure DbPaciente_ConvenioCodigoExit(Sender: TObject);
    procedure DbPaciente_ConvenioCodigoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BtnPreCadastroPacienteClick(Sender: TObject);

  private
    { Private declarations }
    IdDoutor: Integer;

    Intervalo: Integer;

    DataAgenda: TDateTime;
    HoraAgenda: TDateTime;

    HoraManhaInicial: TTime;
    HoraManhaFinal: TTime;
    HoraTardeInicial: TTime;
    HoraTardeFinal: TTime;

  public
    { Public declarations }
    class function chamaTelaIncluir(const pIdDoutor: Integer; const pDataAgenda, pHoraAgenda: TDateTime; const pHoraManhaInicial, pHoraManhaFinal, pHoraTardeInicial, pHoraTardeFinal: TTime; const pIntervalo: Integer): Boolean;
    class function chamaTelaAlterar(const pIdAgenda: Integer): Boolean;

    procedure buscarDadosDoutor(const pIdDoutor: Integer);
    procedure buscarConvenioPaciente(const pIdPaciente: Integer);
    function incluiPacienteConsulta(const pIdDoutor, pIdPaciente, pIdAgenda: Integer): Boolean;
    function alteraPacienteConsulta(const pIdPaciente, pIdAgenda: Integer): Boolean;

  end;

var
  SmdAgendaF: TSmdAgendaF;

implementation

uses DmConexaoU, DmRotinaU, LibRotinasSistemaU, XLibGenericoU, PesqPacienteU,
  PesqConvenioU, SmdPrePacienteU;

{$R *.dfm}

function TSmdAgendaF.alteraPacienteConsulta(const pIdPaciente, pIdAgenda: Integer): Boolean;
var
  _idTabela: Integer;
begin
  _idTabela := DmConexaoF.Proximo('PACIENTECONSULTA', 'IDPACIENTECONSULTA', ' IDPACIENTE = '+TRotinaGenerica.IntToSql(pIdPaciente));

  DmConexaoF.SqlExecutar(
    ' UPDATE PACIENTECONSULTA '
   +'    SET IDPACIENTECONSULTA = '+TRotinaGenerica.IntToSql(_idTabela)
   +'       ,IDPACIENTE = '+TRotinaGenerica.IntToSql(pIdPaciente)
   +'  WHERE IDAGENDA = '+TRotinaGenerica.IntToSql(pIdAgenda)
  );
end;

procedure TSmdAgendaF.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TSmdAgendaF.BtnPreCadastroPacienteClick(Sender: TObject);
var
  _idPaciente: Integer;
begin
  inherited;
  if TSmdPrePacienteF.chamaTelaIncluir(_idPaciente) then
  begin
    DbPacienteID.Text := IntToStr(_idPaciente);
    DbPacienteIDExit(Sender);
  end;
end;

procedure TSmdAgendaF.BtnSelecionarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TSmdAgendaF.buscarConvenioPaciente(const pIdPaciente: Integer);
var
  CdsConvenioPaciente: TClientDataSet;
begin
  CdsConvenioPaciente := TClientDataSet.Create(Nil);
  try
    CdsConvenioPaciente.RemoteServer := DmConexaoF.LocalConnection;
    CdsConvenioPaciente.ProviderName := 'dmDspConsulta';
    CdsConvenioPaciente.Close;
    CdsConvenioPaciente.CommandText :=
      ' SELECT PCO.* '
     +'       ,CON.CONVENIO AS CONVENIO '
     +'       ,VSN.DESCRICAO AS PRINCIPAL '
     +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
     +'   FROM PACIENTECONVENIO PCO '
     +'        JOIN CONVENIO CON ON (CON.IDCONVENIO = PCO.IDCONVENIO) '
     +'        JOIN VALORNAOSIM VSN ON (VSN.IDVALORNAOSIM = PCO.IDPRINCIPAL) '
     +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PCO.IDSITUACAOREGISTRO) '
     +'  WHERE 1 = 1 '
     +'    AND PCO.IDPACIENTE = '+TRotinaGenerica.IntToSql(pIdPaciente)
     +'  ORDER BY PCO.IDPRINCIPAL DESC ';
    CdsConvenioPaciente.Open;
    if not(CdsConvenioPaciente.IsEmpty) then
    begin
      CdsAgendaIDCONVENIO.AsString := CdsConvenioPaciente.FieldByName('IDCONVENIO').AsString;
      //CdsAgendaCONVENIO.AsString   := CdsConvenioPaciente.FieldByName('CONVENIO').AsString;
    end;
  finally
    FreeAndNil(CdsConvenioPaciente);
  end;
end;

procedure TSmdAgendaF.buscarDadosDoutor(const pIdDoutor: Integer);
var
  CdsDoutor: TClientDataSet;
begin
  CdsDoutor := TClientDataSet.Create(Nil);
  try
    CdsDoutor.RemoteServer := DmConexaoF.LocalConnection;
    CdsDoutor.ProviderName := 'dmDspConsulta';
    CdsDoutor.Close;
    CdsDoutor.CommandText := ' SELECT IDDOUTOR '
                            +'       ,NOME '
                            +'       ,CRM '
                            +'       ,CPF '
                            +'       ,TELEFONE '
                            +'       ,CELULAR '
                            +'   FROM DOUTOR '
                            +'  WHERE IDDOUTOR = '+TRotinaGenerica.IntToSql(pIdDoutor);
    CdsDoutor.Open;
    if not(CdsDoutor.IsEmpty) then
    begin
      CdsAgendaDOUTORNOME.AsString     := CdsDoutor.FieldByName('NOME').AsString;
      CdsAgendaDOUTORCRM.AsString      := CdsDoutor.FieldByName('CRM').AsString;
      CdsAgendaDOUTORCPF.AsString      := CdsDoutor.FieldByName('CPF').AsString;
      CdsAgendaDOUTORTELEFONE.AsString := CdsDoutor.FieldByName('TELEFONE').AsString;
      CdsAgendaDOUTORCELULAR.AsString  := CdsDoutor.FieldByName('CELULAR').AsString;
    end;

  finally
    FreeAndNil(CdsDoutor);
  end;
end;

procedure TSmdAgendaF.CdsAgendaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsAgenda.FieldByName('IDAGENDA').AsInteger    := DmConexaoF.Proximo('AGENDA', 'IDAGENDA');
  CdsAgenda.FieldByName('DATAINCLUSAO').AsDateTime := Date;

  CdsAgenda.FieldByName('DaTAAGENDA').AsDateTime := DataAgenda;
  CdsAgenda.FieldByName('HORAAGENDA').AsDateTime := HoraAgenda;
  CdsAgenda.FieldByName('IDDOUTOR').AsInteger    := IdDoutor;
  CdsAgenda.FieldByName('STATUS').AsString       := 'Ausente';
  CdsAgenda.FieldByName('MOTIVO').AsString       := 'Consulta';
  CdsAgenda.FieldByName('IDURGENTE').AsInteger   := 0;
  CdsAgenda.FieldByName('IDENCAIXE').AsInteger   := 0;

  CdsAgenda.FieldByName('HORAMANHAINICIAL').AsDateTime := HoraManhaInicial;
  CdsAgenda.FieldByName('HORAMANHAFINAL').AsDateTime   := HoraManhaFinal;
  CdsAgenda.FieldByName('HORATARDEINICIAL').AsDateTime := HoraTardeInicial;
  CdsAgenda.FieldByName('HORATARDEFINAL').AsDateTime   := HoraTardeFinal;
  CdsAgenda.FieldByName('INTERVALO').AsInteger         := Intervalo;
end;

class function TSmdAgendaF.chamaTelaAlterar(const pIdAgenda: Integer): Boolean;
begin
  Result := False;
  SmdAgendaF := TSmdAgendaF.Create(nil);
  try
    SmdAgendaF.CdsAgenda.Close;
    SmdAgendaF.CdsAgenda.CommandText :=
       ' SELECT AGE.* '
      +'             ,DOU.NOME AS DOUTORNOME '
      +'             ,DOU.CRM AS DOUTORCRM '
      +'             ,DOU.CPF AS DOUTORCPF '
      +'             ,DOU.TELEFONE AS DOUTORTELEFONE '
      +'             ,DOU.CELULAR AS DOUTORCELULAR '
      +'             ,PAC.NOME AS PACIENTENOME '
      +'             ,PAC.RG AS PACIENTERG '
      +'             ,PAC.CPF AS PACIENTECPF '
      +'             ,PAC.TELEFONE1 AS PACIENTETELEFONE01 '
      +'             ,PAC.TELEFONE2 AS PACIENTETELEFONE02 '
      +'             ,PAC.EMAIL AS PACIENTEEMAIL '
      +'             ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) PACIENTEIDADE '
      +'             ,(CIDPAC.CIDADE || '' - '' || CIDPAC.UF) AS PACIENTECIDADEUF '
      +'             ,CON.CONVENIO AS CONVENIO '
      +'   FROM AGENDA AGE '
      +'              JOIN DOUTOR DOU ON (DOU.IDDOUTOR = AGE.IDDOUTOR) '
      +'              JOIN PACIENTE PAC ON (PAC.IDPACIENTE = AGE.IDPACIENTE) '
      +'              LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.IDCIDADE) '
      +'              LEFT JOIN CONVENIO CON ON (CON.IDCONVENIO = AGE.IDCONVENIO) '
      +' WHERE 1 = 1 '
      +'   AND AGE.IDAGENDA = '+TRotinaGenerica.IntToSql(pIdAgenda);
    SmdAgendaF.CdsAgenda.Open;

    SmdAgendaF.CdsAgenda.Edit;

    SmdAgendaF.ShowModal;

    if SmdAgendaF.ModalResult = mrOk then
    begin
      SmdAgendaF.CdsAgenda.Post;
      SmdAgendaF.CdsAgenda.ApplyUpdates(0);
      SmdAgendaF.alteraPacienteConsulta(SmdAgendaF.CdsAgendaIDPACIENTE.AsInteger, SmdAgendaF.CdsAgendaIDAGENDA.AsInteger);
      Result := True;
    end
    else if SmdAgendaF.ModalResult = mrCancel then
    begin
      SmdAgendaF.CdsAgenda.CancelUpdates;
      Result := False;
    end;

  finally
    SmdAgendaF.CdsAgenda.Close;
    SmdAgendaF.Release;
    SmdAgendaF := nil;
  end;
end;

class function TSmdAgendaF.chamaTelaIncluir(const pIdDoutor: Integer; const pDataAgenda, pHoraAgenda: TDateTime; const pHoraManhaInicial, pHoraManhaFinal, pHoraTardeInicial, pHoraTardeFinal: TTime; const pIntervalo: Integer): Boolean;
begin
  Result := False;
  SmdAgendaF := TSmdAgendaF.Create(nil);
  try
    SmdAgendaF.DataAgenda       := pDataAgenda;
    SmdAgendaF.HoraAgenda       := pHoraAgenda;
    SmdAgendaF.IdDoutor         := pIdDoutor;
    SmdAgendaF.HoraManhaInicial := pHoraManhaInicial;
    SmdAgendaF.HoraManhaFinal   := pHoraManhaFinal;
    SmdAgendaF.HoraTardeInicial := pHoraTardeInicial;
    SmdAgendaF.HoraTardeFinal   := pHoraTardeFinal;
    SmdAgendaF.Intervalo        := pIntervalo;

    SmdAgendaF.CdsAgenda.Close;
    SmdAgendaF.CdsAgenda.CommandText :=
       ' SELECT AGE.* '
      +'       ,DOU.NOME AS DOUTORNOME '
      +'       ,DOU.CRM AS DOUTORCRM '
      +'       ,DOU.CPF AS DOUTORCPF '
      +'       ,DOU.TELEFONE AS DOUTORTELEFONE '
      +'       ,DOU.CELULAR AS DOUTORCELULAR '
      +'       ,PAC.NOME AS PACIENTENOME '
      +'       ,PAC.RG AS PACIENTERG '
      +'       ,PAC.CPF AS PACIENTECPF '
      +'       ,PAC.TELEFONE1 AS PACIENTETELEFONE01 '
      +'       ,PAC.TELEFONE2 AS PACIENTETELEFONE02 '
      +'       ,PAC.EMAIL AS PACIENTEEMAIL '
      +'       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) PACIENTEIDADE '
      +'       ,(CIDPAC.CIDADE || '' - '' || CIDPAC.UF) AS PACIENTECIDADEUF '
      +'       ,CON.CONVENIO AS CONVENIO '
      +'   FROM AGENDA AGE '
      +'        JOIN DOUTOR DOU ON (DOU.IDDOUTOR = AGE.IDDOUTOR) '
      +'        JOIN PACIENTE PAC ON (PAC.IDPACIENTE = AGE.IDPACIENTE) '
      +'        LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.IDCIDADE) '
      +'        LEFT JOIN CONVENIO CON ON (CON.IDCONVENIO = AGE.IDCONVENIO) '
      +' WHERE 1 = -1 ';

    SmdAgendaF.CdsAgenda.Open;
    SmdAgendaF.CdsAgenda.Insert;

    SmdAgendaF.buscarDadosDoutor(SmdAgendaF.IdDoutor);

    SmdAgendaF.ShowModal;
    if SmdAgendaF.ModalResult = mrOk then
    begin
      SmdAgendaF.CdsAgenda.Post;
      SmdAgendaF.CdsAgenda.ApplyUpdates(0);
      SmdAgendaF.incluiPacienteConsulta(
        SmdAgendaF.CdsAgendaIDDOUTOR.AsInteger,
        SmdAgendaF.CdsAgendaIDPACIENTE.AsInteger,
        SmdAgendaF.CdsAgendaIDAGENDA.AsInteger);

      Result := True;
    end
    else if SmdAgendaF.ModalResult = mrCancel then
    begin
      SmdAgendaF.CdsAgenda.CancelUpdates;
      Result := False;
    end;

  finally
    SmdAgendaF.CdsAgenda.Close;
    SmdAgendaF.Release;
    SmdAgendaF := nil;
  end;
end;

procedure TSmdAgendaF.DbObservacaoEnter(Sender: TObject);
begin
  inherited;
  setNextValue(False);
end;

procedure TSmdAgendaF.DbObservacaoExit(Sender: TObject);
begin
  inherited;
  setNextValue(True);
end;

procedure TSmdAgendaF.DbPacienteIDExit(Sender: TObject);
begin
  inherited;
  if TPesqPacienteF.executaPesquisaPacienteAgendaDBExit(CdsAgenda, StrToIntDef(DbPacienteID.Text, 0) ) then
  begin
    Self.buscarConvenioPaciente(CdsAgendaIDPACIENTE.AsInteger);
  end;
end;

procedure TSmdAgendaF.DbPaciente_CodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if TPesqPacienteF.executaPesquisaPacienteAgendaDBButton(CdsAgenda) then
  begin
    Self.buscarConvenioPaciente(CdsAgendaIDPACIENTE.AsInteger);
  end;
end;

procedure TSmdAgendaF.DbPaciente_ConvenioCodigoExit(Sender: TObject);
begin
  inherited;
  if CdsAgenda.State in [dsInsert, dsEdit] then
  begin
    TPesqConvenioF.executaPesquisaConvenio03(CdsAgenda, StrToIntDef(DbPaciente_ConvenioCodigo.Text, 0));
  end;
end;

procedure TSmdAgendaF.DbPaciente_ConvenioCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqConvenioF.executaPesquisaConvenio02(CdsAgenda);
end;

function TSmdAgendaF.incluiPacienteConsulta(const pIdDoutor, pIdPaciente, pIdAgenda: Integer): Boolean;
var
  _idTabela: Integer;
begin
  _idTabela := DmConexaoF.Proximo('PACIENTECONSULTA', 'IDPACIENTECONSULTA', ' IDPACIENTE = '+TRotinaGenerica.IntToSql(pIdPaciente));

  DmConexaoF.SqlExecutar(
    ' INSERT INTO PACIENTECONSULTA ( IDPACIENTECONSULTA, IDPACIENTE, IDDOUTOR, IDAGENDA, DATAINCLUSAO, HORAINCLUSAO ) '
   +' VALUES ( '+TRotinaGenerica.IntToSql(_idTabela)+', '+TRotinaGenerica.IntToSql(pIdPaciente)
   +', '+TRotinaGenerica.IntToSql(pIdDoutor)+', '+TRotinaGenerica.IntToSql(pIdAgenda)
   +', '+TRotinaGenerica.DateToSql(Date)+', '+TRotinaGenerica.TimeToSql(Time)
   +' )'
  );

end;

end.
