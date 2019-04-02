unit SmdLaudoOftalmoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaShowModalU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, DBCtrls, cxCheckBox, cxDBEdit, cxTextEdit, cxGroupBox,
  StdCtrls, ExtCtrls, Menus, cxButtons, DB, DBClient, frxClass, frxDBSet,
  frxChBox;

type
  TSmdLaudoOftalmoF = class(TXTelaShowModalF)
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
    BtnCancelar: TcxButton;
    BtnConfirmar: TcxButton;
    DsLaudoOftalmo: TDataSource;
    CdsLaudoOftalmo: TClientDataSet;
    GbLaudoOftalmo: TcxGroupBox;
    LblPrescricaoLongeEsf: TLabel;
    Label1: TLabel;
    DbAcuidadeVisualOD_ComCorrecao: TcxDBTextEdit;
    PnlAcuidadeVisualOD_ComCorrecao: TPanel;
    PnlAcuidadeVisualOE_ComCorrecao: TPanel;
    DbAcuidadeVisualOE_ComCorrecao: TcxDBTextEdit;
    DbAcuidadeVisualOD_SemCorrecao: TcxDBTextEdit;
    PnlAcuidadeVisualOD_SemCorrecao: TPanel;
    PnlAcuidadeVisualOE_SemCorrecao: TPanel;
    DbAcuidadeVisualOE_SemCorrecao: TcxDBTextEdit;
    DbTonometriaOD: TcxDBTextEdit;
    PnlTonometriaOD: TPanel;
    PnlTonometriaOE: TPanel;
    DbTonometriaOE: TcxDBTextEdit;
    DbFundoscopiaOD: TcxDBTextEdit;
    PnlFundoscopia: TPanel;
    PnlFundoscopiaOD: TPanel;
    PnlFundoscopiaOE: TPanel;
    DbFundoscopiaOE: TcxDBTextEdit;
    CbAtivo: TcxDBCheckBox;
    Panel1: TPanel;
    PnlAcuidadeVisual: TPanel;
    PnlTonometria: TPanel;
    CdsLaudoOftalmoIDPACIENTELAUDOOFTALMO: TIntegerField;
    CdsLaudoOftalmoIDPACIENTE: TIntegerField;
    CdsLaudoOftalmoIDDOUTOR: TIntegerField;
    CdsLaudoOftalmoIDAGENDA: TIntegerField;
    CdsLaudoOftalmoIDAPTO: TSmallintField;
    CdsLaudoOftalmoDATAINCLUSAO: TDateField;
    CdsLaudoOftalmoHORAINCLUSAO: TTimeField;
    CdsLaudoOftalmoACUIDADEODCOMCORRECAO: TStringField;
    CdsLaudoOftalmoACUIDADEOECOMCORRECAO: TStringField;
    CdsLaudoOftalmoACUIDADEODSEMCORRECAO: TStringField;
    CdsLaudoOftalmoACUIDADEOESEMCORRECAO: TStringField;
    CdsLaudoOftalmoTONOMETRIAOD: TStringField;
    CdsLaudoOftalmoTONOMETRIAOE: TStringField;
    CdsLaudoOftalmoFUNDOSCOPIAOD: TStringField;
    CdsLaudoOftalmoFUNDOSCOPIAOE: TStringField;
    CdsLaudoOftalmoDOUTORNOME: TStringField;
    CdsLaudoOftalmoDOUTORCRM: TStringField;
    CdsLaudoOftalmoDOUTORRG: TStringField;
    CdsLaudoOftalmoDOUTORCPF: TStringField;
    CdsLaudoOftalmoDOUTORTELEFONE: TStringField;
    CdsLaudoOftalmoDOUTORCELULAR: TStringField;
    CdsLaudoOftalmoPACIENTENOME: TStringField;
    CdsLaudoOftalmoPACIENTERG: TStringField;
    CdsLaudoOftalmoPACIENTECPF: TStringField;
    CdsLaudoOftalmoPACIENTETELEFONE01: TStringField;
    CdsLaudoOftalmoPACIENTETELEFONE02: TStringField;
    CdsLaudoOftalmoPACIENTEDATANASCIMENTO: TDateField;
    CdsLaudoOftalmoPACIENTEIDADE: TIntegerField;
    CdsLaudoOftalmoPACIENTEEMAIL: TStringField;
    frxCdsLaudoOftalmo: TfrxDBDataset;
    frxRelatorio: TfrxReport;
    procedure CdsLaudoOftalmoAfterInsert(DataSet: TDataSet);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);

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
  SmdLaudoOftalmoF: TSmdLaudoOftalmoF;

implementation

uses XLibGenericoU, DmConexaoU, DmRotinaU, DmRelatorioU;

{$R *.dfm}

procedure TSmdLaudoOftalmoF.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;
end;

procedure TSmdLaudoOftalmoF.BtnConfirmarClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
  Self.CdsLaudoOftalmo.Post;
  Self.CdsLaudoOftalmo.ApplyUpdates(0);
  DmRelatorioF.CdsCabecalhoRelatorio.Open;
  frxRelatorio.ShowReport(True);
  DmRelatorioF.CdsCabecalhoRelatorio.Close;
end;

procedure TSmdLaudoOftalmoF.buscarDadosDoutor(const pIdDoutor: Integer);
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
      CdsLaudoOftalmoDOUTORNOME.AsString     := CdsDoutorTmp.FieldByName('NOME').AsString;
      CdsLaudoOftalmoDOUTORCRM.AsString      := CdsDoutorTmp.FieldByName('CRM').AsString;
      CdsLaudoOftalmoDOUTORCPF.AsString      := CdsDoutorTmp.FieldByName('CPF').AsString;
      CdsLaudoOftalmoDOUTORTELEFONE.AsString := CdsDoutorTmp.FieldByName('TELEFONE').AsString;
      CdsLaudoOftalmoDOUTORCELULAR.AsString  := CdsDoutorTmp.FieldByName('CELULAR').AsString;
    end;

  finally
    FreeAndNil(CdsDoutorTmp);
  end;
end;

procedure TSmdLaudoOftalmoF.buscarDadosPaciente(const pIdPaciente: Integer);
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
      CdsLaudoOftalmoPACIENTENOME.AsString           := CdsPacienteTmp.FieldByName('NOME').AsString;
      CdsLaudoOftalmoPACIENTERG.AsString             := CdsPacienteTmp.FieldByName('RG').AsString;
      CdsLaudoOftalmoPACIENTECPF.AsString            := CdsPacienteTmp.FieldByName('CPF').AsString;
      CdsLaudoOftalmoPACIENTETELEFONE01.AsString     := CdsPacienteTmp.FieldByName('TELEFONE1').AsString;
      CdsLaudoOftalmoPACIENTETELEFONE02.AsString     := CdsPacienteTmp.FieldByName('TELEFONE2').AsString;
      CdsLaudoOftalmoPACIENTEDATANASCIMENTO.AsString := CdsPacienteTmp.FieldByName('DATANASCIMENTO').AsString;
      CdsLaudoOftalmoPACIENTEIDADE.AsString          := CdsPacienteTmp.FieldByName('IDADE').AsString;
      CdsLaudoOftalmoPACIENTEEMAIL.AsString          := CdsPacienteTmp.FieldByName('EMAIL').AsString;
      //CdsPrescricaoOculosPACIENTECIDADEUF.AsString       := CdsPacienteTmp.FieldByName('CIDADEUF').AsString;
    end;

  finally
    FreeAndNil(CdsPacienteTmp);
  end;
end;

procedure TSmdLaudoOftalmoF.CdsLaudoOftalmoAfterInsert(DataSet: TDataSet);
var
  CdsMaxID: TClientDataSet;
  MaxID: Integer;
begin
  MaxID := 0;
  CdsMaxID := TClientDataSet.Create(Nil);
  try
    CdsMaxID.RemoteServer := DmConexaoF.LocalConnection;
    CdsMaxID.ProviderName := 'dmDspConsulta';
    CdsMaxID.Close;
    CdsMaxID.CommandText :=
       ' SELECT MAX(PAC.IDPACIENTELAUDOOFTALMO) AS MAX_ID '
      +'   FROM PACIENTELAUDOOFTALMO PAC '
      +'  WHERE 1 = 1 '
      +'    AND PAC.IDPACIENTE = '+TRotinaGenerica.IntToSql(self.vIdPaciente);
    CdsMaxID.Open;

    if not(CdsMaxID.IsEmpty) then
      MaxID := CdsMaxID.FieldByName('MAX_ID').AsInteger

  finally
    FreeAndNil(CdsMaxID);
  end;

  inherited;
  Self.CdsLaudoOftalmo.FieldByName('IDPACIENTELAUDOOFTALMO').AsInteger := MaxID +1;
  Self.CdsLaudoOftalmo.FieldByName('DATAINCLUSAO').AsDateTime          := Date;
  Self.CdsLaudoOftalmo.FieldByName('HORAINCLUSAO').AsDateTime          := Time;
  Self.CdsLaudoOftalmo.FieldByName('IDAPTO').AsInteger                 := 0;
  Self.CdsLaudoOftalmo.FieldByName('IDPACIENTE').AsInteger             := Self.vIdPaciente;
  Self.CdsLaudoOftalmo.FieldByName('IDDOUTOR').AsInteger               := Self.vIdDoutor;
  Self.CdsLaudoOftalmo.FieldByName('IDAGENDA').AsInteger               := Self.vIdAgenda;

end;

class function TSmdLaudoOftalmoF.chamaTelaIncluir(const pIdAgenda, pIdPaciente, pIdDoutor: Integer): Boolean;
begin
  Result := False;
  SmdLaudoOftalmoF := TSmdLaudoOftalmoF.Create(nil);
  try
    SmdLaudoOftalmoF.vIdAgenda   := pIdAgenda;
    SmdLaudoOftalmoF.vIdPaciente := pIdPaciente;
    SmdLaudoOftalmoF.vIdDoutor   := pIdDoutor;

    SmdLaudoOftalmoF.CdsLaudoOftalmo.Close;
    SmdLaudoOftalmoF.CdsLaudoOftalmo.CommandText :=
       ' SELECT PLO.* '
      +'       ,DOU.NOME AS DOUTORNOME '
      +'       ,DOU.CRM AS DOUTORCRM   '
      +'       ,DOU.RG AS DOUTORRG     '
      +'       ,DOU.CPF AS DOUTORCPF '
      +'       ,DOU.TELEFONE AS DOUTORTELEFONE '
      +'       ,DOU.CELULAR AS DOUTORCELULAR '
      +'       ,PAC.NOME AS PACIENTENOME '
      +'       ,PAC.RG AS PACIENTERG '
      +'       ,PAC.CPF AS PACIENTECPF '
      +'       ,PAC.TELEFONE1 AS PACIENTETELEFONE01 '
      +'       ,PAC.TELEFONE2 AS PACIENTETELEFONE02 '
      +'       ,PAC.DATANASCIMENTO AS PACIENTEDATANASCIMENTO '
      +'       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) PACIENTEIDADE '
      +'       ,PAC.EMAIL AS PACIENTEEMAIL '
      +'   FROM  PACIENTELAUDOOFTALMO PLO '
      +'        JOIN DOUTOR DOU ON (DOU.IDDOUTOR = PLO.IDDOUTOR) '
      +'        JOIN PACIENTE PAC ON (PAC.IDPACIENTE = PLO.IDPACIENTE) '
      +'  WHERE 1 = -1 ';

    SmdLaudoOftalmoF.CdsLaudoOftalmo.Open;
    SmdLaudoOftalmoF.CdsLaudoOftalmo.Insert;

    SmdLaudoOftalmoF.buscarDadosDoutor(SmdLaudoOftalmoF.vIdDoutor);
    SmdLaudoOftalmoF.buscarDadosPaciente(SmdLaudoOftalmoF.vIdPaciente);

    SmdLaudoOftalmoF.ShowModal;

    if SmdLaudoOftalmoF.ModalResult = mrOk then
      Result := True
    else if SmdLaudoOftalmoF.ModalResult = mrCancel then
    begin
      SmdLaudoOftalmoF.CdsLaudoOftalmo.CancelUpdates;
      Result := False;
    end;
  finally
    SmdLaudoOftalmoF.CdsLaudoOftalmo.Close;
    SmdLaudoOftalmoF.Release;
    SmdLaudoOftalmoF := nil;
  end;
end;

end.
