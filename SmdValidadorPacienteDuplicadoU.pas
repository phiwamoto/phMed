unit SmdValidadorPacienteDuplicadoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaShowModalU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, cxButtons, ExtCtrls,
  DBClient;

type
  TSmdValidadorPacienteDuplicadoF = class(TXTelaShowModalF)
    BtnConfirmar: TcxButton;
    BtnCancelar: TcxButton;
    GridAgenda: TcxGrid;
    GridAgendaDBTableView1: TcxGridDBTableView;
    GridAgendaLevel1: TcxGridLevel;
    DsPacienteDuplicado: TDataSource;
    CdsPacienteDuplicado: TClientDataSet;
    CdsPacienteDuplicadoIDPACIENTE: TIntegerField;
    CdsPacienteDuplicadoCPF: TStringField;
    CdsPacienteDuplicadoNOME: TStringField;
    CdsPacienteDuplicadoTELEFONE1: TStringField;
    CdsPacienteDuplicadoCIDADEUF: TStringField;
    GridAgendaDBTableView1IDPACIENTE: TcxGridDBColumn;
    GridAgendaDBTableView1CPF: TcxGridDBColumn;
    GridAgendaDBTableView1NOME: TcxGridDBColumn;
    GridAgendaDBTableView1TELEFONE1: TcxGridDBColumn;
    GridAgendaDBTableView1CIDADEUF: TcxGridDBColumn;
    LblDataInclusao: TLabel;
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
     class function valida(pNomePaciente: String): Boolean;
     class function validaCorrecao(pNomePaciente: String): Boolean;

  end;

var
  SmdValidadorPacienteDuplicadoF: TSmdValidadorPacienteDuplicadoF;

implementation

uses DmConexaoU, XLibGenericoU;

{$R *.dfm}

{ TSmdValidadorPacienteDuplicadoF }

procedure TSmdValidadorPacienteDuplicadoF.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TSmdValidadorPacienteDuplicadoF.BtnConfirmarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

class function TSmdValidadorPacienteDuplicadoF.valida(pNomePaciente: String): Boolean;
begin
  Result := False;
  SmdValidadorPacienteDuplicadoF := TSmdValidadorPacienteDuplicadoF.Create(nil);
  try
    SmdValidadorPacienteDuplicadoF.CdsPacienteDuplicado.Close;
    SmdValidadorPacienteDuplicadoF.CdsPacienteDuplicado.CommandText :=
       ' SELECT PACIENTE.IDPACIENTE, '
      +'       PACIENTE.CPF, '
      +'       PACIENTE.NOME, '
      +'       PACIENTE.TELEFONE1, '
      +'       (CIDADE.CIDADE || '' - '' || CIDADE.UF) AS CIDADEUF '
      +'  FROM PACIENTE '
      +'       LEFT JOIN CIDADE ON (CIDADE.IDCIDADE = PACIENTE.IDCIDADE) '
      +' WHERE 1 = 1 '
      +'   AND TRIM(UPPER(PACIENTE.NOME)) = '+TRotinaGenerica.StrToSql(AnsiUpperCase(Trim(pNomePaciente)));
    SmdValidadorPacienteDuplicadoF.CdsPacienteDuplicado.Open;

    SmdValidadorPacienteDuplicadoF.ShowModal;

    if SmdValidadorPacienteDuplicadoF.ModalResult = mrOk then
      Result := True
    else if SmdValidadorPacienteDuplicadoF.ModalResult = mrCancel then
      Result := False;

  finally
    SmdValidadorPacienteDuplicadoF.CdsPacienteDuplicado.Close;
    SmdValidadorPacienteDuplicadoF.Release;
    SmdValidadorPacienteDuplicadoF := nil;
  end;
end;

class function TSmdValidadorPacienteDuplicadoF.validaCorrecao(pNomePaciente: String): Boolean;
begin
  Result := False;
  SmdValidadorPacienteDuplicadoF := TSmdValidadorPacienteDuplicadoF.Create(nil);
  try
    SmdValidadorPacienteDuplicadoF.LblDataInclusao.Caption := 'ATENÇÃO: Ao confirmar a ação será unificado as informações de prontuário do paciente em um só cadastro. Deseja prosseguir?';
    SmdValidadorPacienteDuplicadoF.CdsPacienteDuplicado.Close;
    SmdValidadorPacienteDuplicadoF.CdsPacienteDuplicado.CommandText :=
       ' SELECT PACIENTE.IDPACIENTE, '
      +'       PACIENTE.CPF, '
      +'       PACIENTE.NOME, '
      +'       PACIENTE.TELEFONE1, '
      +'       (CIDADE.CIDADE || '' - '' || CIDADE.UF) AS CIDADEUF '
      +'  FROM PACIENTE '
      +'       LEFT JOIN CIDADE ON (CIDADE.IDCIDADE = PACIENTE.IDCIDADE) '
      +' WHERE 1 = 1 '
      +'   AND TRIM(UPPER(PACIENTE.NOME)) = '+TRotinaGenerica.StrToSql(AnsiUpperCase(Trim(pNomePaciente)));
    SmdValidadorPacienteDuplicadoF.CdsPacienteDuplicado.Open;

    SmdValidadorPacienteDuplicadoF.ShowModal;

    if SmdValidadorPacienteDuplicadoF.ModalResult = mrOk then
      Result := True
    else if SmdValidadorPacienteDuplicadoF.ModalResult = mrCancel then
      Result := False;

  finally
    SmdValidadorPacienteDuplicadoF.CdsPacienteDuplicado.Close;
    SmdValidadorPacienteDuplicadoF.Release;
    SmdValidadorPacienteDuplicadoF := nil;
  end;
end;

end.
