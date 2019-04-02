unit SmdPrescicaoOculosU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaShowModalU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, DBCtrls, cxTextEdit, cxDBEdit, cxGroupBox, StdCtrls,
  ExtCtrls, Menus, cxButtons, DB, DBClient, frxClass, frxDBSet;

type
  TSmdPrescicaoOculosF = class(TXTelaShowModalF)
    GbEvolucaoClinicaAtual: TcxGroupBox;
    LblPrescricaoLongeEsf: TLabel;
    LblPrescricaoPertoEsf: TLabel;
    LblPrescricaoLongeCil: TLabel;
    LblPrescricaoPertoCil: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DbPrescricaoLongeODEsf: TcxDBTextEdit;
    PnlPrescricaoLonge: TPanel;
    PnlPrescricaoPerto: TPanel;
    PnlPrescricaoLongeOD: TPanel;
    PnlPrescricaoPertoOD: TPanel;
    PnlPrescricaoLongeOE: TPanel;
    PnlPrescricaoPertoOE: TPanel;
    DbPrescricaoLongeOEEsf: TcxDBTextEdit;
    DbPrescricaoPertoOEEsf: TcxDBTextEdit;
    DbPrescricaoPertoODEsf: TcxDBTextEdit;
    DbPrescricaoLongeODCil: TcxDBTextEdit;
    DbPrescricaoLongeOECil: TcxDBTextEdit;
    DbPrescricaoPertoOECil: TcxDBTextEdit;
    DbPrescricaoPertoODCil: TcxDBTextEdit;
    DbPrescricaoLongeODEixo: TcxDBTextEdit;
    DbPrescricaoLongeOEEixo: TcxDBTextEdit;
    DbPrescricaoPertoOEEixo: TcxDBTextEdit;
    DbPrescricaoPertoODEixo: TcxDBTextEdit;
    DbPrescricaoLongeODDp: TcxDBTextEdit;
    DbPrescricaoLongeOEDp: TcxDBTextEdit;
    DbPrescricaoPertoOEDp: TcxDBTextEdit;
    DbPrescricaoPertoODDp: TcxDBTextEdit;
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
    DsPrescricaoOculos: TDataSource;
    CdsPrescricaoOculos: TClientDataSet;
    CdsPrescricaoOculosIDPACIENTEPRESCRICAOLENTE: TIntegerField;
    CdsPrescricaoOculosIDPACIENTE: TIntegerField;
    CdsPrescricaoOculosIDDOUTOR: TIntegerField;
    CdsPrescricaoOculosIDAGENDA: TIntegerField;
    CdsPrescricaoOculosDATAINCLUSAO: TDateField;
    CdsPrescricaoOculosHORAINCLUSAO: TTimeField;
    CdsPrescricaoOculosLONGEODESF: TStringField;
    CdsPrescricaoOculosLONGEOEESF: TStringField;
    CdsPrescricaoOculosLONGEODCIL: TStringField;
    CdsPrescricaoOculosLONGEOECIL: TStringField;
    CdsPrescricaoOculosLONGEODEIXO: TStringField;
    CdsPrescricaoOculosLONGEOEEIXO: TStringField;
    CdsPrescricaoOculosLONGEODDP: TStringField;
    CdsPrescricaoOculosLONGEOEDP: TStringField;
    CdsPrescricaoOculosPERTOODESF: TStringField;
    CdsPrescricaoOculosPERTOOEESF: TStringField;
    CdsPrescricaoOculosPERTOODCIL: TStringField;
    CdsPrescricaoOculosPERTOOECIL: TStringField;
    CdsPrescricaoOculosPERTOODEIXO: TStringField;
    CdsPrescricaoOculosPERTOOEEIXO: TStringField;
    CdsPrescricaoOculosPERTOODDP: TStringField;
    CdsPrescricaoOculosPERTOOEDP: TStringField;
    CdsPrescricaoOculosADICAO: TStringField;
    CdsPrescricaoOculosDOUTORNOME: TStringField;
    CdsPrescricaoOculosDOUTORCRM: TStringField;
    CdsPrescricaoOculosDOUTORRG: TStringField;
    CdsPrescricaoOculosDOUTORCPF: TStringField;
    CdsPrescricaoOculosDOUTORTELEFONE: TStringField;
    CdsPrescricaoOculosDOUTORCELULAR: TStringField;
    CdsPrescricaoOculosPACIENTENOME: TStringField;
    CdsPrescricaoOculosPACIENTERG: TStringField;
    CdsPrescricaoOculosPACIENTECPF: TStringField;
    CdsPrescricaoOculosPACIENTETELEFONE01: TStringField;
    CdsPrescricaoOculosPACIENTETELEFONE02: TStringField;
    CdsPrescricaoOculosPACIENTEDATANASCIMENTO: TDateField;
    CdsPrescricaoOculosPACIENTEIDADE: TIntegerField;
    CdsPrescricaoOculosPACIENTEEMAIL: TStringField;
    frxCdsPrescricaoOculos: TfrxDBDataset;
    frxRelatorio: TfrxReport;
    procedure CdsPrescricaoOculosAfterInsert(DataSet: TDataSet);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

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
  SmdPrescicaoOculosF: TSmdPrescicaoOculosF;

implementation

uses DmConexaoU, DmRotinaU, XLibGenericoU, DmRelatorioU;

{$R *.dfm}

{ TSmdPrescicaoOculosF }

procedure TSmdPrescicaoOculosF.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;
end;

procedure TSmdPrescicaoOculosF.BtnConfirmarClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
  Self.CdsPrescricaoOculos.Post;
  Self.CdsPrescricaoOculos.ApplyUpdates(0);
  DmRelatorioF.CdsCabecalhoRelatorio.Open;
  frxRelatorio.ShowReport(True);
  DmRelatorioF.CdsCabecalhoRelatorio.Close;
end;

procedure TSmdPrescicaoOculosF.buscarDadosDoutor(const pIdDoutor: Integer);
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
      CdsPrescricaoOculosDOUTORNOME.AsString     := CdsDoutorTmp.FieldByName('NOME').AsString;
      CdsPrescricaoOculosDOUTORCRM.AsString      := CdsDoutorTmp.FieldByName('CRM').AsString;
      CdsPrescricaoOculosDOUTORCPF.AsString      := CdsDoutorTmp.FieldByName('CPF').AsString;
      CdsPrescricaoOculosDOUTORTELEFONE.AsString := CdsDoutorTmp.FieldByName('TELEFONE').AsString;
      CdsPrescricaoOculosDOUTORCELULAR.AsString  := CdsDoutorTmp.FieldByName('CELULAR').AsString;
    end;

  finally
    FreeAndNil(CdsDoutorTmp);
  end;
end;

procedure TSmdPrescicaoOculosF.buscarDadosPaciente(const pIdPaciente: Integer);
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
      CdsPrescricaoOculosPACIENTENOME.AsString           := CdsPacienteTmp.FieldByName('NOME').AsString;
      CdsPrescricaoOculosPACIENTERG.AsString             := CdsPacienteTmp.FieldByName('RG').AsString;
      CdsPrescricaoOculosPACIENTECPF.AsString            := CdsPacienteTmp.FieldByName('CPF').AsString;
      CdsPrescricaoOculosPACIENTETELEFONE01.AsString     := CdsPacienteTmp.FieldByName('TELEFONE1').AsString;
      CdsPrescricaoOculosPACIENTETELEFONE02.AsString     := CdsPacienteTmp.FieldByName('TELEFONE2').AsString;
      CdsPrescricaoOculosPACIENTEDATANASCIMENTO.AsString := CdsPacienteTmp.FieldByName('DATANASCIMENTO').AsString;
      CdsPrescricaoOculosPACIENTEIDADE.AsString          := CdsPacienteTmp.FieldByName('IDADE').AsString;
      CdsPrescricaoOculosPACIENTEEMAIL.AsString          := CdsPacienteTmp.FieldByName('EMAIL').AsString;
      //CdsPrescricaoOculosPACIENTECIDADEUF.AsString       := CdsPacienteTmp.FieldByName('CIDADEUF').AsString;
    end;

  finally
    FreeAndNil(CdsPacienteTmp);
  end;
end;

procedure TSmdPrescicaoOculosF.CdsPrescricaoOculosAfterInsert(DataSet: TDataSet);
var
  CdsMaxID, CdsUltimaPrescricao: TClientDataSet;
  MaxID: Integer;
begin
  MaxID := 0;
  CdsMaxID := TClientDataSet.Create(Nil);
  try
    CdsMaxID.RemoteServer := DmConexaoF.LocalConnection;
    CdsMaxID.ProviderName := 'dmDspConsulta';
    CdsMaxID.Close;
    CdsMaxID.CommandText :=
       ' SELECT MAX(PAC.IDPACIENTEPRESCRICAOLENTE) AS MAX_ID '
      +'   FROM PACIENTEPRESCRICAOLENTE PAC '
      +'  WHERE 1 = 1 '
      +'    AND PAC.IDPACIENTE = '+TRotinaGenerica.IntToSql(Self.vIdPaciente);
    CdsMaxID.Open;

    if not(CdsMaxID.IsEmpty) then
      MaxID := CdsMaxID.FieldByName('MAX_ID').AsInteger

  finally
    FreeAndNil(CdsMaxID);
  end;

  inherited;
  Self.CdsPrescricaoOculos.FieldByName('IDPACIENTEPRESCRICAOLENTE').AsInteger := MaxID +1;
  Self.CdsPrescricaoOculos.FieldByName('DATAINCLUSAO').AsDateTime             := Date;
  Self.CdsPrescricaoOculos.FieldByName('HORAINCLUSAO').AsDateTime             := Time;
  Self.CdsPrescricaoOculos.FieldByName('IDPACIENTE').AsInteger                := Self.vIdPaciente;
  Self.CdsPrescricaoOculos.FieldByName('IDDOUTOR').AsInteger                  := Self.vIdDoutor;
  Self.CdsPrescricaoOculos.FieldByName('IDAGENDA').AsInteger                  := Self.vIdAgenda;

  CdsUltimaPrescricao := TClientDataSet.Create(Nil);
  try
    CdsUltimaPrescricao.RemoteServer := DmConexaoF.LocalConnection;
    CdsUltimaPrescricao.ProviderName := 'dmDspConsulta';
    CdsUltimaPrescricao.Close;
    CdsUltimaPrescricao.CommandText :=
       ' SELECT PPR.* '
      +'   FROM PACIENTEPRESCRICAOLENTE PPR '
      +'  WHERE 1 = 1 '
      +'    AND PPR.IDPACIENTE = '+TRotinaGenerica.IntToSql(Self.vIdPaciente)
      +'  ORDER BY PPR.DATAINCLUSAO, PPR.HORAINCLUSAO, PPR.IDPACIENTEPRESCRICAOLENTE';
    CdsUltimaPrescricao.Open;

    if not(CdsUltimaPrescricao.IsEmpty) then
    begin
      CdsUltimaPrescricao.Last;
      Self.CdsPrescricaoOculos.FieldByName('LONGEODESF').AsString := CdsUltimaPrescricao.FieldByName('LONGEODESF').AsString;
      Self.CdsPrescricaoOculos.FieldByName('LONGEOEESF').AsString := CdsUltimaPrescricao.FieldByName('LONGEOEESF').AsString;

      Self.CdsPrescricaoOculos.FieldByName('LONGEODCIL').AsString := CdsUltimaPrescricao.FieldByName('LONGEODCIL').AsString;
      Self.CdsPrescricaoOculos.FieldByName('LONGEOECIL').AsString := CdsUltimaPrescricao.FieldByName('LONGEOECIL').AsString;

      Self.CdsPrescricaoOculos.FieldByName('LONGEODEIXO').AsString := CdsUltimaPrescricao.FieldByName('LONGEODEIXO').AsString;
      Self.CdsPrescricaoOculos.FieldByName('LONGEOEEIXO').AsString := CdsUltimaPrescricao.FieldByName('LONGEOEEIXO').AsString;

      Self.CdsPrescricaoOculos.FieldByName('LONGEODDP').AsString := CdsUltimaPrescricao.FieldByName('LONGEODDP').AsString;
      Self.CdsPrescricaoOculos.FieldByName('LONGEOEDP').AsString := CdsUltimaPrescricao.FieldByName('LONGEOEDP').AsString;

      Self.CdsPrescricaoOculos.FieldByName('PERTOODESF').AsString := CdsUltimaPrescricao.FieldByName('PERTOODESF').AsString;
      Self.CdsPrescricaoOculos.FieldByName('PERTOOEESF').AsString := CdsUltimaPrescricao.FieldByName('PERTOOEESF').AsString;

      Self.CdsPrescricaoOculos.FieldByName('PERTOODCIL').AsString := CdsUltimaPrescricao.FieldByName('PERTOODCIL').AsString;
      Self.CdsPrescricaoOculos.FieldByName('PERTOOECIL').AsString := CdsUltimaPrescricao.FieldByName('PERTOOECIL').AsString;

      Self.CdsPrescricaoOculos.FieldByName('PERTOODEIXO').AsString := CdsUltimaPrescricao.FieldByName('PERTOODEIXO').AsString;
      Self.CdsPrescricaoOculos.FieldByName('PERTOOEEIXO').AsString := CdsUltimaPrescricao.FieldByName('PERTOOEEIXO').AsString;

      Self.CdsPrescricaoOculos.FieldByName('PERTOODDP').AsString := CdsUltimaPrescricao.FieldByName('PERTOODDP').AsString;
      Self.CdsPrescricaoOculos.FieldByName('PERTOOEDP').AsString := CdsUltimaPrescricao.FieldByName('PERTOOEDP').AsString;
    end;

  finally
    FreeAndNil(CdsUltimaPrescricao);
  end;
end;

class function TSmdPrescicaoOculosF.chamaTelaIncluir(const pIdAgenda, pIdPaciente, pIdDoutor: Integer): Boolean;
begin
  Result := False;
  SmdPrescicaoOculosF := TSmdPrescicaoOculosF.Create(nil);
  try
    SmdPrescicaoOculosF.vIdAgenda   := pIdAgenda;
    SmdPrescicaoOculosF.vIdPaciente := pIdPaciente;
    SmdPrescicaoOculosF.vIdDoutor   := pIdDoutor;

    SmdPrescicaoOculosF.CdsPrescricaoOculos.Close;
    SmdPrescicaoOculosF.CdsPrescricaoOculos.CommandText :=
       ' SELECT PPL.* '
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
      +'   FROM PACIENTEPRESCRICAOLENTE PPL '
      +'        JOIN DOUTOR DOU ON (DOU.IDDOUTOR = PPL.IDDOUTOR) '
      +'        JOIN PACIENTE PAC ON (PAC.IDPACIENTE = PPL.IDPACIENTE) '
      +'  WHERE 1 = -1 ';

    SmdPrescicaoOculosF.CdsPrescricaoOculos.Open;

    //SmdPrescicaoOculosF.PreencheDoutores;
    //SmdPrescicaoOculosF.CbDoutor.ItemIndex := SmdPrescicaoOculosF.CbDoutor.Values.IndexOf(IntToStr(pIdDoutor));
    //cbStatusAluguel.ItemIndex := cbStatusAluguel.Items.IndexOf('Todos');
    //SmdPrescicaoOculosF.DbDoutor_Nome.Text := SmdPrescicaoOculosF.CbDoutor.Text;

    SmdPrescicaoOculosF.CdsPrescricaoOculos.Insert;

    SmdPrescicaoOculosF.buscarDadosDoutor(SmdPrescicaoOculosF.vIdDoutor);
    SmdPrescicaoOculosF.buscarDadosPaciente(SmdPrescicaoOculosF.vIdPaciente);


    SmdPrescicaoOculosF.ShowModal;
    if SmdPrescicaoOculosF.ModalResult = mrOk then
      Result := True
    else if SmdPrescicaoOculosF.ModalResult = mrCancel then
    begin
      SmdPrescicaoOculosF.CdsPrescricaoOculos.CancelUpdates;
      Result := False;
    end;

  finally
    SmdPrescicaoOculosF.CdsPrescricaoOculos.Close;
    SmdPrescicaoOculosF.Release;
    SmdPrescicaoOculosF := nil;
  end;
end;

procedure TSmdPrescicaoOculosF.FormShow(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.tentaFocar(DbPrescricaoLongeODEsf);
end;

end.
