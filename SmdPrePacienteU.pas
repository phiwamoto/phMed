unit SmdPrePacienteU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaShowModalU, StdCtrls, ExtCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxDropDownEdit, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, DB, DBClient;

type
  TSmdPrePacienteF = class(TXTelaShowModalF)
    BtnSalvar: TcxButton;
    BtnCancelar: TcxButton;
    LblConvenio: TLabel;
    DbCodigoConvenio: TcxDBButtonEdit;
    DbDescricaoConvenio: TcxDBTextEdit;
    LblNome: TLabel;
    DbNome: TcxDBTextEdit;
    CbSexo: TcxDBComboBox;
    Label7: TLabel;
    DbCPF: TcxDBTextEdit;
    LblCPF: TLabel;
    DsPaciente: TDataSource;
    CdsPaciente: TClientDataSet;
    CdsPacienteIDPACIENTE: TIntegerField;
    CdsPacienteIDCIDADE: TIntegerField;
    CdsPacienteIDSITUACAOREGISTRO: TSmallintField;
    CdsPacienteDATAINCLUSAO: TDateField;
    CdsPacienteDATANASCIMENTO: TDateField;
    CdsPacienteNUMERO: TIntegerField;
    CdsPacienteESTADOCIVIL: TStringField;
    CdsPacienteSEXO: TStringField;
    CdsPacienteOBSERVACAO: TStringField;
    CdsPacienteNOME: TStringField;
    CdsPacienteENDERECO: TStringField;
    CdsPacienteBAIRRO: TStringField;
    CdsPacienteEMAIL: TStringField;
    CdsPacienteCOMPLEMENTO: TStringField;
    CdsPacienteRG: TStringField;
    CdsPacienteCPF: TStringField;
    CdsPacienteTELEFONE1: TStringField;
    CdsPacienteTELEFONE2: TStringField;
    CdsPacienteCEP: TStringField;
    CdsPacienteIDADE: TIntegerField;
    CdsPacienteCIDADEUF: TStringField;
    CdsPacienteSITUACAOREGISTRO: TStringField;
    CdsPacienteQryPacienteConvenio: TDataSetField;
    DsPacienteConvenio: TDataSource;
    CdsPacienteConvenio: TClientDataSet;
    CdsPacienteConvenioIDPACIENTECONVENIO: TIntegerField;
    CdsPacienteConvenioIDPACIENTE: TIntegerField;
    CdsPacienteConvenioIDCONVENIO: TIntegerField;
    CdsPacienteConvenioIDPRINCIPAL: TSmallintField;
    CdsPacienteConvenioIDSITUACAOREGISTRO: TSmallintField;
    CdsPacienteConvenioDATAINCLUSAO: TDateField;
    CdsPacienteConvenioCONVENIO: TStringField;
    CdsPacienteConvenioPRINCIPAL: TStringField;
    CdsPacienteConvenioSITUACAOREGISTRO: TStringField;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure CdsPacienteAfterInsert(DataSet: TDataSet);
    procedure DbCodigoConvenioExit(Sender: TObject);
    procedure DbCodigoConvenioPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CdsPacienteConvenioAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    class function chamaTelaIncluir(var pIdPaciente: Integer): Boolean;


  end;

var
  SmdPrePacienteF: TSmdPrePacienteF;

implementation

uses DmCadastroU, DmConexaoU, PesqConvenioU, XLibGenericoU, LibRotinasSistemaU,
  SmdValidadorPacienteDuplicadoU, XLibMessages;

{$R *.dfm}

{ TSmdPrePacienteF }

procedure TSmdPrePacienteF.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TSmdPrePacienteF.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  if (Trim(CdsPaciente.FieldByName('NOME').AsString) = EmptyStr) or (CdsPaciente.FieldByName('NOME').IsNull) then
  begin
    TRotinaGenerica.MensagemGeral(msgCadPacienteInformarNome, MsgInformar, BtOk);
    TRotinaGenerica.TentaFocar(DbNome);
    Exit;
  end;

  if TPessoa.nomeJaPossuiCadastro(CdsPaciente.FieldByName('NOME').AsString) and (not TSmdValidadorPacienteDuplicadoF.valida(CdsPaciente.FieldByName('NOME').AsString)) then
  begin
    TRotinaGenerica.TentaFocar(DbNome);
    Exit;
  end;

  ModalResult := mrOk;
end;

procedure TSmdPrePacienteF.CdsPacienteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsPaciente.FieldByName('IDPACIENTE').AsInteger         := DmConexaoF.Proximo('PACIENTE', 'IDPACIENTE');
  CdsPaciente.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsPaciente.FieldByName('DATANASCIMENTO').AsDateTime    := 2;
  CdsPaciente.FieldByName('CPF').AsString                 := EmptyStr;
  CdsPaciente.FieldByName('TELEFONE1').AsString           := EmptyStr;
  CdsPaciente.FieldByName('TELEFONE2').AsString           := EmptyStr;
  CdsPaciente.FieldByName('CEP').AsString                 := EmptyStr;
  CdsPaciente.FieldByName('ESTADOCIVIL').AsString         := 'Não Informado';
  CdsPaciente.FieldByName('SEXO').AsString                := 'Não Informado';
  CdsPaciente.FieldByName('IDSITUACAOREGISTRO').AsInteger := 1;
end;

procedure TSmdPrePacienteF.CdsPacienteConvenioAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsPacienteConvenio.FieldByName('IDPACIENTECONVENIO').AsInteger := DmConexaoF.ProximoFilha(CdsPacienteConvenio, 'IDPACIENTECONVENIO');
  CdsPacienteConvenio.FieldByName('IDPACIENTE').AsInteger         := CdsPaciente.FieldByName('IDPACIENTE').AsInteger;
  CdsPacienteConvenio.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsPacienteConvenio.FieldByName('IDSITUACAOREGISTRO').AsInteger := 1;
  CdsPacienteConvenio.FieldByName('SITUACAOREGISTRO').AsString    := 'Ativo';
  CdsPacienteConvenio.FieldByName('IDPRINCIPAL').AsInteger := 1;
  CdsPacienteConvenio.FieldByName('PRINCIPAL').AsString    := 'Sim';
end;

class function TSmdPrePacienteF.chamaTelaIncluir(var pIdPaciente: Integer): Boolean;
begin
  Result := False;
  SmdPrePacienteF := TSmdPrePacienteF.Create(nil);
  try
    SmdPrePacienteF.CdsPaciente.Open;
    SmdPrePacienteF.CdsPacienteConvenio.Open;

    SmdPrePacienteF.CdsPaciente.Insert;
    SmdPrePacienteF.ShowModal;

    if SmdPrePacienteF.ModalResult = mrOk then
    begin
      if SmdPrePacienteF.CdsPacienteConvenio.State in [dsInsert, dsEdit] then
      begin
        if (SmdPrePacienteF.DbCodigoConvenio.Text <> '') and (SmdPrePacienteF.DbDescricaoConvenio.Text <> '') then
        begin
          SmdPrePacienteF.CdsPacienteConvenio.Post;
        end;
      end;

      SmdPrePacienteF.CdsPaciente.Post;
      SmdPrePacienteF.CdsPaciente.ApplyUpdates(0);
      pIdPaciente := SmdPrePacienteF.CdsPacienteIDPACIENTE.AsInteger;
      Result := True;
    end
    else if SmdPrePacienteF.ModalResult = mrCancel then
    begin
      if SmdPrePacienteF.CdsPacienteConvenio.State in [dsInsert, dsEdit] then
        SmdPrePacienteF.CdsPacienteConvenio.CancelUpdates;
      SmdPrePacienteF.CdsPaciente.CancelUpdates;
      Result := False;
    end;

  finally
    SmdPrePacienteF.CdsPaciente.Close;
    SmdPrePacienteF.Release;
    SmdPrePacienteF := nil;
  end;
end;

procedure TSmdPrePacienteF.DbCodigoConvenioExit(Sender: TObject);
begin
  inherited;
  if CdsPaciente.State in [dsInsert, dsEdit] then
  begin
    if not (CdsPacienteConvenio.State in [dsInsert, dsEdit]) then
      CdsPacienteConvenio.Insert;
    TPesqConvenioF.executaPesquisaConvenio03(CdsPacienteConvenio, StrToIntDef(DbCodigoConvenio.Text, 0));
  end;
end;

procedure TSmdPrePacienteF.DbCodigoConvenioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if CdsPaciente.State in [dsInsert, dsEdit] then
  begin
    if not (CdsPacienteConvenio.State in [dsInsert, dsEdit]) then
      CdsPacienteConvenio.Insert;
    TPesqConvenioF.executaPesquisaConvenio02(CdsPacienteConvenio);
  end;
end;

procedure TSmdPrePacienteF.FormShow(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.tentaFocar(DbNome);
end;

end.


