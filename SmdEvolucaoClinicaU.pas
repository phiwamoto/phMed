unit SmdEvolucaoClinicaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaShowModalU, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPC, Menus, cxButtons, cxContainer, cxEdit, DBCtrls,
  cxGroupBox, cxMemo, cxTextEdit, cxDBEdit, DB, DBClient;

type
  TSmdEvolucaoClinicaF = class(TXTelaShowModalF)
    PcTelaCadastro: TcxPageControl;
    TsPrincipal: TcxTabSheet;
    TsHistorico: TcxTabSheet;
    BtnConfirmarRascunho: TcxButton;
    BtnCancelar: TcxButton;
    GbEvolucaoClinicaAtual: TcxGroupBox;
    DbEvolucaoClinica: TcxDBMemo;
    cxGroupBox1: TcxGroupBox;
    EdEvolucaoClinicaGeral: TcxMemo;
    DsEvolucaoClinica: TDataSource;
    CdsEvolucaoClinica: TClientDataSet;
    BtnConfirmarDefinitivo: TcxButton;
    GbInformacoesPaciente: TcxGroupBox;
    LblPacienteRG: TLabel;
    LblPacienteCPF: TLabel;
    LblPacienteTelefone01: TLabel;
    LblPacienteTelefone02: TLabel;
    LblPacienteNome: TLabel;
    LblPacienteEmail: TLabel;
    DbPacienteNome: TDBText;
    DbPacienteRG: TDBText;
    DbPacienteCPF: TDBText;
    DbPacienteTelefone01: TDBText;
    DbPacienteTelefone02: TDBText;
    DbPacienteEmail: TDBText;
    DbPacienteDataNascimento: TDBText;
    LblPacienteDataNascimento: TLabel;
    DbPacienteIdade: TDBText;
    LblPacienteIdade: TLabel;
    DbPacienteCidadeUF: TDBText;
    LblPacienteCidadeUF: TLabel;
    GbInformacoesDeAtendimento: TcxGroupBox;
    Label1: TLabel;
    LblAltura: TLabel;
    LblPeso: TLabel;
    LblIMC: TLabel;
    LblTabagismo: TLabel;
    LblDoencaEmTratamento: TLabel;
    LblAlergia: TLabel;
    LblCirurgiaPrevia: TLabel;
    LblQueixaPrincipal: TLabel;
    LblConduta: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    DbAltura: TcxDBTextEdit;
    DbPeso: TcxDBTextEdit;
    DbIMC: TcxDBTextEdit;
    DbTabagismo: TcxDBTextEdit;
    DbDoencaEmTratamento: TcxDBTextEdit;
    DbAlergia: TcxDBTextEdit;
    DbCirurgiaPrevia: TcxDBTextEdit;
    DbQueixaPrincipal: TcxDBTextEdit;
    DbConduta: TcxDBTextEdit;
    BtnPreencherEvolucaoClinica: TcxButton;
    CdsEvolucaoClinicaIDPACIENTEEVOLUCAO: TIntegerField;
    CdsEvolucaoClinicaIDPACIENTE: TIntegerField;
    CdsEvolucaoClinicaIDDOUTOR: TIntegerField;
    CdsEvolucaoClinicaIDAGENDA: TIntegerField;
    CdsEvolucaoClinicaIDRASCUNHO: TSmallintField;
    CdsEvolucaoClinicaDATAINCLUSAO: TDateField;
    CdsEvolucaoClinicaHORAINCLUSAO: TTimeField;
    CdsEvolucaoClinicaEVOLUCAOCLINICA: TStringField;
    CdsEvolucaoClinicaPACIENTENOME: TStringField;
    CdsEvolucaoClinicaPACIENTERG: TStringField;
    CdsEvolucaoClinicaPACIENTECPF: TStringField;
    CdsEvolucaoClinicaPACIENTETELEFONE01: TStringField;
    CdsEvolucaoClinicaPACIENTETELEFONE02: TStringField;
    CdsEvolucaoClinicaPACIENTEDATANASCIMENTO: TDateField;
    CdsEvolucaoClinicaPACIENTEIDADE: TIntegerField;
    CdsEvolucaoClinicaPACIENTEEMAIL: TStringField;
    CdsEvolucaoClinicaPACIENTECIDADEUF: TStringField;
    CdsEvolucaoClinicaDOUTORNOME: TStringField;
    CdsEvolucaoClinicaDOUTORCRM: TStringField;
    CdsEvolucaoClinicaDOUTORCPF: TStringField;
    CdsEvolucaoClinicaDOUTORTELEFONE: TStringField;
    CdsEvolucaoClinicaDOUTORCELULAR: TStringField;
    CdsEvolucaoClinicaIDADE: TSmallintField;
    CdsEvolucaoClinicaALTURA: TFMTBCDField;
    CdsEvolucaoClinicaPESO: TFMTBCDField;
    CdsEvolucaoClinicaIMC: TFMTBCDField;
    CdsEvolucaoClinicaTABAGISMO: TStringField;
    CdsEvolucaoClinicaDOENCASEMTRATAMENTO: TStringField;
    CdsEvolucaoClinicaALERGIA: TStringField;
    CdsEvolucaoClinicaCIRURGIASPREVIA: TStringField;
    CdsEvolucaoClinicaQUEIXAPRINCIPAL: TStringField;
    CdsEvolucaoClinicaCONDUTA: TStringField;
    CdsEvolucaoClinicaPACIENTEINDICACAO: TStringField;
    LblPacienteIndicacao: TLabel;
    DbPacienteIndicacao: TDBText;
    procedure CdsEvolucaoClinicaAfterInsert(DataSet: TDataSet);
    procedure BtnConfirmarRascunhoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConfirmarDefinitivoClick(Sender: TObject);
    procedure DbEvolucaoClinicaEnter(Sender: TObject);
    procedure DbEvolucaoClinicaExit(Sender: TObject);
    procedure DbAlturaPropertiesChange(Sender: TObject);
    procedure DbPesoPropertiesChange(Sender: TObject);
    procedure BtnPreencherEvolucaoClinicaClick(Sender: TObject);

  private
    { Private declarations }
    vIdAgenda, vIdPaciente, vIdDoutor: Integer;
    vRascunho: Boolean;

    function PreencheEvolucaoClinicaAgrupado(pCxMemo: TcxMemo; pIdPaciente: Integer): Boolean;
    function CalculaIMC(pAltura, pPeso: TcxDBTextEdit): Boolean;

  public
    { Public declarations }
    class function chamaTelaIncluir(const pIdAgenda, pIdPaciente, pIdDoutor: Integer): Boolean;
    procedure buscarDadosDoutor(const pIdDoutor: Integer);
    procedure buscarDadosPaciente(const pIdPaciente: Integer);
    procedure buscarDadosEvolucao(const pIdPaciente: Integer);

  end;

var
  SmdEvolucaoClinicaF: TSmdEvolucaoClinicaF;

implementation

uses DmConexaoU, DmRotinaU, XLibGenericoU, LibRotinasSistemaU;

{$R *.dfm}

{ TSmdEvolucaoClinicaF }

procedure TSmdEvolucaoClinicaF.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;
end;

procedure TSmdEvolucaoClinicaF.BtnConfirmarRascunhoClick(Sender: TObject);
begin
  inherited;
  Self.vRascunho := True;
  Self.ModalResult := mrOk;
end;

procedure TSmdEvolucaoClinicaF.BtnPreencherEvolucaoClinicaClick(
  Sender: TObject);
begin
  inherited;
  DbEvolucaoClinica.Lines.Add(
     ' - IDADE: '+CdsEvolucaoClinicaIDADE.AsString
    +'             - ALTURA: ' +CdsEvolucaoClinicaALTURA.AsString
    +'             - PESO: ' +CdsEvolucaoClinicaPESO.AsString
    +'             - IMC: ' +CdsEvolucaoClinicaIMC.AsString
  );
  DbEvolucaoClinica.Lines.Add('');
  DbEvolucaoClinica.Lines.Add(' - TABAGISMO: '+CdsEvolucaoClinicaTABAGISMO.AsString);
  DbEvolucaoClinica.Lines.Add(' - DOENÇA EM TRATAMENTO: '+CdsEvolucaoClinicaDOENCASEMTRATAMENTO.AsString);
  DbEvolucaoClinica.Lines.Add(' - ALERGIA: '+CdsEvolucaoClinicaALERGIA.AsString);
  DbEvolucaoClinica.Lines.Add(' - CIRURGIA PRÉVIA: '+CdsEvolucaoClinicaCIRURGIASPREVIA.AsString);
  DbEvolucaoClinica.Lines.Add(' - QUEIXA PRINCIPAL: '+CdsEvolucaoClinicaQUEIXAPRINCIPAL.AsString);
  DbEvolucaoClinica.Lines.Add(' - CONDUTA: '+CdsEvolucaoClinicaCONDUTA.AsString);
  DbEvolucaoClinica.Lines.Add('');

  CdsEvolucaoClinicaEVOLUCAOCLINICA.AsString := DbEvolucaoClinica.Text;

{
  CdsEvolucaoClinicaEVOLUCAOCLINICA.AsString :=
    CdsEvolucaoClinicaEVOLUCAOCLINICA.AsString
    +'IDADE: '+CdsEvolucaoClinicaIDADE.AsString
    +'         ALTURA: ' +CdsEvolucaoClinicaALTURA.AsString
    +'         PESO: ' +CdsEvolucaoClinicaPESO.AsString
    +'         IMC: ' +CdsEvolucaoClinicaIMC.AsString
    +'         TABAGISMO: ' +CdsEvolucaoClinicaTABAGISMO.AsString

    +'/n/n         TABAGISMO: ' +CdsEvolucaoClinicaTABAGISMO.AsString;
 }
end;

procedure TSmdEvolucaoClinicaF.buscarDadosDoutor(const pIdDoutor: Integer);
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
//      CdsAgendaDOUTORNOME.AsString     := CdsDoutor.FieldByName('NOME').AsString;
//      CdsAgendaDOUTORCRM.AsString      := CdsDoutor.FieldByName('CRM').AsString;
//      CdsAgendaDOUTORCPF.AsString      := CdsDoutor.FieldByName('CPF').AsString;
//      CdsAgendaDOUTORTELEFONE.AsString := CdsDoutor.FieldByName('TELEFONE').AsString;
//      CdsAgendaDOUTORCELULAR.AsString  := CdsDoutor.FieldByName('CELULAR').AsString;
    end;

  finally
    FreeAndNil(CdsDoutor);
  end;
end;

procedure TSmdEvolucaoClinicaF.buscarDadosEvolucao(const pIdPaciente: Integer);
var
  CdsInformacoesEvolucao: TClientDataSet;
begin
  CdsInformacoesEvolucao := TClientDataSet.Create(Nil);
  try
    CdsInformacoesEvolucao.RemoteServer := DmConexaoF.LocalConnection;
    CdsInformacoesEvolucao.ProviderName := 'dmDspConsulta';
    CdsInformacoesEvolucao.Close;
    CdsInformacoesEvolucao.CommandText :=
       ' SELECT PEV.* '
      +'   FROM PACIENTEEVOLUCAO PEV '
      +'  WHERE 1 = 1 '
      +'    AND PEV.IDPACIENTE = '+TRotinaGenerica.IntToSql(Self.vIdPaciente)
      +'  ORDER BY PEV.DATAINCLUSAO, PEV.HORAINCLUSAO, PEV.IDPACIENTEEVOLUCAO';
    CdsInformacoesEvolucao.Open;

    if not(CdsInformacoesEvolucao.IsEmpty) then
    begin
      CdsInformacoesEvolucao.Last;
      Self.CdsEvolucaoClinicaIDADE.AsString               := CdsInformacoesEvolucao.FieldByName('IDADE').AsString;
      Self.CdsEvolucaoClinicaALTURA.AsString              := CdsInformacoesEvolucao.FieldByName('ALTURA').AsString;
      Self.CdsEvolucaoClinicaPESO.AsString                := CdsInformacoesEvolucao.FieldByName('PESO').AsString;
      Self.CdsEvolucaoClinicaIMC.AsString                 := CdsInformacoesEvolucao.FieldByName('IMC').AsString;
      Self.CdsEvolucaoClinicaTABAGISMO.AsString           := CdsInformacoesEvolucao.FieldByName('TABAGISMO').AsString;
      Self.CdsEvolucaoClinicaDOENCASEMTRATAMENTO.AsString := CdsInformacoesEvolucao.FieldByName('DOENCASEMTRATAMENTO').AsString;
      Self.CdsEvolucaoClinicaALERGIA.AsString             := CdsInformacoesEvolucao.FieldByName('ALERGIA').AsString;
      Self.CdsEvolucaoClinicaCIRURGIASPREVIA.AsString     := CdsInformacoesEvolucao.FieldByName('CIRURGIASPREVIA').AsString;
      Self.CdsEvolucaoClinicaQUEIXAPRINCIPAL.AsString     := CdsInformacoesEvolucao.FieldByName('QUEIXAPRINCIPAL').AsString;
      Self.CdsEvolucaoClinicaCONDUTA.AsString             := CdsInformacoesEvolucao.FieldByName('CONDUTA').AsString;
    end;

  finally
    FreeAndNil(CdsInformacoesEvolucao);
  end;
end;

procedure TSmdEvolucaoClinicaF.buscarDadosPaciente(const pIdPaciente: Integer);
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
                            +'       ,PAC.INDICACAO '
                            +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
                            +'   FROM PACIENTE PAC '
                            +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PAC.IDCIDADE) '
                            +'  WHERE 1 = 1 '
                            +'    AND PAC.IDPACIENTE = '+TRotinaGenerica.IntToSql(pIdPaciente);
    CdsPacienteTmp.Open;
    if not(CdsPacienteTmp.IsEmpty) then
    begin
      CdsEvolucaoClinicaPACIENTENOME.AsString           := CdsPacienteTmp.FieldByName('NOME').AsString;
      CdsEvolucaoClinicaPACIENTERG.AsString             := CdsPacienteTmp.FieldByName('RG').AsString;
      CdsEvolucaoClinicaPACIENTECPF.AsString            := CdsPacienteTmp.FieldByName('CPF').AsString;
      CdsEvolucaoClinicaPACIENTETELEFONE01.AsString     := CdsPacienteTmp.FieldByName('TELEFONE1').AsString;
      CdsEvolucaoClinicaPACIENTETELEFONE02.AsString     := CdsPacienteTmp.FieldByName('TELEFONE2').AsString;
      CdsEvolucaoClinicaPACIENTEDATANASCIMENTO.AsString := CdsPacienteTmp.FieldByName('DATANASCIMENTO').AsString;
      CdsEvolucaoClinicaPACIENTEIDADE.AsString          := CdsPacienteTmp.FieldByName('IDADE').AsString;
      CdsEvolucaoClinicaPACIENTEEMAIL.AsString          := CdsPacienteTmp.FieldByName('EMAIL').AsString;
      CdsEvolucaoClinicaPACIENTEINDICACAO.AsString      := CdsPacienteTmp.FieldByName('INDICACAO').AsString;
      CdsEvolucaoClinicaPACIENTECIDADEUF.AsString       := CdsPacienteTmp.FieldByName('CIDADEUF').AsString;
    end;

  finally
    FreeAndNil(CdsPacienteTmp);
  end;
end;

procedure TSmdEvolucaoClinicaF.CdsEvolucaoClinicaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsEvolucaoClinica.FieldByName('IDPACIENTEEVOLUCAO').AsInteger := DmConexaoF.Proximo('PACIENTEEVOLUCAO', 'IDPACIENTEEVOLUCAO', ' IDPACIENTE = '+TRotinaGenerica.IntToSql(Self.vIdPaciente)+' ');
  CdsEvolucaoClinica.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsEvolucaoClinica.FieldByName('HORAINCLUSAO').AsDateTime      := Time;
  CdsEvolucaoClinica.FieldByName('IDAGENDA').AsInteger           := Self.vIdAgenda;
  CdsEvolucaoClinica.FieldByName('IDDOUTOR').AsInteger           := Self.vIdDoutor;
  CdsEvolucaoClinica.FieldByName('IDPACIENTE').AsInteger         := Self.vIdPaciente;
  CdsEvolucaoClinica.FieldByName('IDRASCUNHO').AsInteger         := 0;
end;

class function TSmdEvolucaoClinicaF.chamaTelaIncluir(const pIdAgenda, pIdPaciente, pIdDoutor: Integer): Boolean;
begin
  Result := False;
  SmdEvolucaoClinicaF := TSmdEvolucaoClinicaF.Create(nil);
  try
    SmdEvolucaoClinicaF.vIdAgenda   := pIdAgenda;
    SmdEvolucaoClinicaF.vIdPaciente := pIdPaciente;
    SmdEvolucaoClinicaF.vIdDoutor   := pIdDoutor;

    SmdEvolucaoClinicaF.vRascunho := True;

    SmdEvolucaoClinicaF.CdsEvolucaoClinica.Close;

    SmdEvolucaoClinicaF.CdsEvolucaoClinica.CommandText :=
       ' SELECT PEV.* '
      +'       ,PAC.NOME AS PACIENTENOME '
      +'       ,PAC.RG AS PACIENTERG '
      +'       ,PAC.CPF AS PACIENTECPF '
      +'       ,PAC.TELEFONE1 AS PACIENTETELEFONE01 '
      +'       ,PAC.TELEFONE2 AS PACIENTETELEFONE02 '
      +'       ,PAC.DATANASCIMENTO AS PACIENTEDATANASCIMENTO '
      +'       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) PACIENTEIDADE '
      +'       ,PAC.EMAIL AS PACIENTEEMAIL '
      +'       ,PAC.INDICACAO AS PACIENTEINDICACAO '
      +'       ,(CIDPAC.CIDADE || '' - '' || CIDPAC.UF) AS PACIENTECIDADEUF '
      +'       ,DOU.NOME AS DOUTORNOME '
      +'       ,DOU.CRM AS DOUTORCRM '
      +'       ,DOU.CPF AS DOUTORCPF '
      +'       ,DOU.TELEFONE AS DOUTORTELEFONE '
      +'       ,DOU.CELULAR AS DOUTORCELULAR '
      +'  FROM PACIENTEEVOLUCAO PEV '
      +'       JOIN PACIENTE PAC ON (PAC.IDPACIENTE = PEV.IDPACIENTE) '
      +'       LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.IDCIDADE) '
      +'       JOIN DOUTOR DOU ON (DOU.IDDOUTOR = PEV.IDDOUTOR) '
      +'       JOIN VALORNAOSIM RAS ON (RAS.IDVALORNAOSIM = PEV.IDRASCUNHO) '
      +' WHERE 1 = -1 ';
    SmdEvolucaoClinicaF.CdsEvolucaoClinica.Open;

    //SmdEvolucaoClinicaF.PreencheDoutores;
    //SmdEvolucaoClinicaF.CbDoutor.ItemIndex := SmdEvolucaoClinicaF.CbDoutor.Values.IndexOf(IntToStr(pIdDoutor));
    //cbStatusAluguel.ItemIndex := cbStatusAluguel.Items.IndexOf('Todos');
    //SmdEvolucaoClinicaF.DbDoutor_Nome.Text := SmdEvolucaoClinicaF.CbDoutor.Text;

    SmdEvolucaoClinicaF.CdsEvolucaoClinica.Insert;

    //SmdEvolucaoClinicaF.buscarDadosDoutor(SmdEvolucaoClinicaF.IdDoutor);
    SmdEvolucaoClinicaF.buscarDadosPaciente(SmdEvolucaoClinicaF.vIdPaciente);
    SmdEvolucaoClinicaF.buscarDadosEvolucao(SmdEvolucaoClinicaF.vIdPaciente);
    SmdEvolucaoClinicaF.PreencheEvolucaoClinicaAgrupado(SmdEvolucaoClinicaF.EdEvolucaoClinicaGeral, SmdEvolucaoClinicaF.vIdPaciente);

    SmdEvolucaoClinicaF.ShowModal;
    if SmdEvolucaoClinicaF.ModalResult = mrOk then
    begin
      if SmdEvolucaoClinicaF.vRascunho then
        SmdEvolucaoClinicaF.CdsEvolucaoClinica.FieldByName('IDRASCUNHO').AsInteger := 1
      else
        SmdEvolucaoClinicaF.CdsEvolucaoClinica.FieldByName('IDRASCUNHO').AsInteger := 0;

      SmdEvolucaoClinicaF.CdsEvolucaoClinica.Post;
      SmdEvolucaoClinicaF.CdsEvolucaoClinica.ApplyUpdates(0);
      Result := True;
    end
    else if SmdEvolucaoClinicaF.ModalResult = mrCancel then
    begin
      SmdEvolucaoClinicaF.CdsEvolucaoClinica.CancelUpdates;
      Result := False;
    end;

  finally
    SmdEvolucaoClinicaF.CdsEvolucaoClinica.Close;
    SmdEvolucaoClinicaF.Release;
    SmdEvolucaoClinicaF := nil;
  end;
end;

procedure TSmdEvolucaoClinicaF.BtnConfirmarDefinitivoClick(Sender: TObject);
begin
  inherited;
  Self.vRascunho := False;
  Self.ModalResult := mrOk;
end;

procedure TSmdEvolucaoClinicaF.DbAlturaPropertiesChange(Sender: TObject);
begin
  inherited;
  if CdsEvolucaoClinica.State in [dsInsert, dsEdit] then
    CalculaIMC(DbAltura, DbPeso);
end;

procedure TSmdEvolucaoClinicaF.DbEvolucaoClinicaEnter(Sender: TObject);
begin
  inherited;
  setNextValue(False);
end;

procedure TSmdEvolucaoClinicaF.DbEvolucaoClinicaExit(Sender: TObject);
begin
  inherited;
  setNextValue(True);
end;

procedure TSmdEvolucaoClinicaF.DbPesoPropertiesChange(Sender: TObject);
begin
  inherited;
  if CdsEvolucaoClinica.State in [dsInsert, dsEdit] then
    CalculaIMC(DbAltura, DbPeso);
end;

function TSmdEvolucaoClinicaF.PreencheEvolucaoClinicaAgrupado(pCxMemo: TcxMemo; pIdPaciente: Integer): Boolean;
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
         ,' SELECT PEV.* '
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
        +'  FROM PACIENTEEVOLUCAO PEV '
        +'       JOIN PACIENTE PAC ON (PAC.IDPACIENTE = PEV.IDPACIENTE) '
        +'       LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.IDCIDADE) '
        +'       JOIN DOUTOR DOU ON (DOU.IDDOUTOR = PEV.IDDOUTOR) '
        +'       JOIN VALORNAOSIM RAS ON (RAS.IDVALORNAOSIM = PEV.IDRASCUNHO) '
        +' WHERE 1 = 1 '
        +'   AND PEV.IDPACIENTE = '+IntToStr(pIdPaciente)
        +' ORDER BY PEV.DATAINCLUSAO, PEV.HORAINCLUSAO '
      );

      CdsAuxiliar.DisableControls;
      CdsAuxiliar.First;
      while not(CdsAuxiliar.Eof) do
      begin
        pCxMemo.Lines.Add('********************************************************************************************************************************************');
        pCxMemo.Lines.Add('**** DATA HORA INCLUSÃO: '+CdsAuxiliar.FieldByName('DATAINCLUSAO').AsString
                         +' '+CdsAuxiliar.FieldByName('HORAINCLUSAO').AsString
                         +' **** DOUTOR(A): '+CdsAuxiliar.FieldByName('DOUTORNOME').AsString
                         +' - CRM: '+CdsAuxiliar.FieldByName('DOUTORCRM').AsString
                         +' ****'
                         );
        pCxMemo.Lines.Add('********************************************************************************************************************************************');
        pCxMemo.Lines.Add('');

        pCxMemo.Lines.Add(CdsAuxiliar.FieldByName('EVOLUCAOCLINICA').AsString);

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

function TSmdEvolucaoClinicaF.CalculaIMC(pAltura: TcxDBTextEdit; pPeso: TcxDBTextEdit): Boolean;
var
  alturaMultiplicado: Double;
  resultado: Double;
begin
  if ( (pAltura.Text <> EmptyStr) and (pPeso.Text <> EmptyStr) ) then
  begin
    alturaMultiplicado := StrToFloat(pAltura.Text) * StrToFloat(pAltura.Text);
    resultado := StrToFloat(pPeso.Text) / alturaMultiplicado;

    CdsEvolucaoClinicaIMC.AsFloat := resultado;
  end
  else
    CdsEvolucaoClinicaIMC.Clear;

  Result := true;
end;



end.
