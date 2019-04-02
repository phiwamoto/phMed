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
    BtnSelecionar: TcxButton;
    BtnCancelar: TcxButton;
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
    GbEvolucaoClinicaAtual: TcxGroupBox;
    DbEvolucaoClinica: TcxDBMemo;
    cxGroupBox1: TcxGroupBox;
    EdEvolucaoClinicaGeral: TcxMemo;
    DsEvolucaoClinica: TDataSource;
    CdsEvolucaoClinica: TClientDataSet;
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
    cxButton1: TcxButton;
    DbPacienteCidadeUF: TDBText;
    LblPacienteCidadeUF: TLabel;
    procedure CdsEvolucaoClinicaAfterInsert(DataSet: TDataSet);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure DbEvolucaoClinicaEnter(Sender: TObject);
    procedure DbEvolucaoClinicaExit(Sender: TObject);

  private
    { Private declarations }
    vIdAgenda, vIdPaciente, vIdDoutor: Integer;
    vRascunho: Boolean;

    function PreencheEvolucaoClinicaAgrupado(pCxMemo: TcxMemo; pIdPaciente: Integer): Boolean;

  public
    { Public declarations }
    class function chamaTelaIncluir(const pIdAgenda, pIdPaciente, pIdDoutor: Integer): Boolean;
    procedure buscarDadosDoutor(const pIdDoutor: Integer);
    procedure buscarDadosPaciente(const pIdPaciente: Integer);

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

procedure TSmdEvolucaoClinicaF.BtnSelecionarClick(Sender: TObject);
begin
  inherited;
  Self.vRascunho := True;
  Self.ModalResult := mrOk;
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

procedure TSmdEvolucaoClinicaF.cxButton1Click(Sender: TObject);
begin
  inherited;
  Self.vRascunho := False;
  Self.ModalResult := mrOk;
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

end.
