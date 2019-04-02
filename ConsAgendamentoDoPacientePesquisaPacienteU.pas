unit ConsAgendamentoDoPacientePesquisaPacienteU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaShowModalU, StdCtrls, ExtCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, DBClient,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid;

type
  TConsAgendamentoDoPacientePesquisaPacienteF = class(TXTelaShowModalF)
    BtnSelecionar: TcxButton;
    BtnCancelar: TcxButton;
    LblNome: TLabel;
    EdtNome: TcxTextEdit;
    DsPesquisa: TDataSource;
    CdsPesquisa: TClientDataSet;
    CdsPesquisaIDPACIENTE: TIntegerField;
    CdsPesquisaIDCIDADE: TIntegerField;
    CdsPesquisaIDSITUACAOREGISTRO: TSmallintField;
    CdsPesquisaDATAINCLUSAO: TDateField;
    CdsPesquisaDATANASCIMENTO: TDateField;
    CdsPesquisaNUMERO: TIntegerField;
    CdsPesquisaESTADOCIVIL: TStringField;
    CdsPesquisaSEXO: TStringField;
    CdsPesquisaOBSERVACAO: TStringField;
    CdsPesquisaNOME: TStringField;
    CdsPesquisaENDERECO: TStringField;
    CdsPesquisaBAIRRO: TStringField;
    CdsPesquisaEMAIL: TStringField;
    CdsPesquisaCOMPLEMENTO: TStringField;
    CdsPesquisaRG: TStringField;
    CdsPesquisaCPF: TStringField;
    CdsPesquisaTELEFONE1: TStringField;
    CdsPesquisaTELEFONE2: TStringField;
    CdsPesquisaCEP: TStringField;
    CdsPesquisaIDADE: TIntegerField;
    CdsPesquisaCIDADEUF: TStringField;
    CdsPesquisaSITUACAOREGISTRO: TStringField;
    GridPesquisa: TcxGrid;
    GridPesquisaDBTableView1: TcxGridDBTableView;
    GridPesquisaDBTableView1IDPACIENTE: TcxGridDBColumn;
    GridPesquisaDBTableView1SEXO: TcxGridDBColumn;
    GridPesquisaDBTableView1CPF: TcxGridDBColumn;
    GridPesquisaDBTableView1NOME: TcxGridDBColumn;
    GridPesquisaDBTableView1IDADE: TcxGridDBColumn;
    GridPesquisaDBTableView1TELEFONE1: TcxGridDBColumn;
    GridPesquisaDBTableView1CIDADEUF: TcxGridDBColumn;
    GridPesquisaLevel1: TcxGridLevel;
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure EdtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    class function executa: Integer; static;
    procedure executaPesquisa;

  end;

var
  ConsAgendamentoDoPacientePesquisaPacienteF: TConsAgendamentoDoPacientePesquisaPacienteF;

implementation

uses DmConexaoU;

{$R *.dfm}

procedure TConsAgendamentoDoPacientePesquisaPacienteF.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TConsAgendamentoDoPacientePesquisaPacienteF.BtnSelecionarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TConsAgendamentoDoPacientePesquisaPacienteF.EdtNomeKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    if EdtNome.Focused then
      executaPesquisa;
end;

class function TConsAgendamentoDoPacientePesquisaPacienteF.executa(): Integer;
begin
  Result := 0;
  ConsAgendamentoDoPacientePesquisaPacienteF := TConsAgendamentoDoPacientePesquisaPacienteF.Create(nil);
  try
    ConsAgendamentoDoPacientePesquisaPacienteF.CdsPesquisa.Close;
    ConsAgendamentoDoPacientePesquisaPacienteF.ShowModal;
    if ConsAgendamentoDoPacientePesquisaPacienteF.ModalResult = mrOk then
    begin
      Result := ConsAgendamentoDoPacientePesquisaPacienteF.CdsPesquisaIDPACIENTE.AsInteger;
    end;
  finally
    ConsAgendamentoDoPacientePesquisaPacienteF.CdsPesquisa.Close;
    ConsAgendamentoDoPacientePesquisaPacienteF.Release;
    ConsAgendamentoDoPacientePesquisaPacienteF := nil;
  end;
end;


procedure TConsAgendamentoDoPacientePesquisaPacienteF.executaPesquisa;
begin
  if Trim(EdtNome.Text) = EmptyStr then
  begin

    Exit;
  end;

  Self.CdsPesquisa.Close;
  Self.CdsPesquisa.CommandText :=
     ' SELECT PAC.* '
    +'       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) AS IDADE '
    +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM PACIENTE PAC '
    +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PAC.IDCIDADE) '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PAC.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = 1 '
    ;

  if Trim(EdtNome.Text) <> EmptyStr then
  begin
    Self.CdsPesquisa.CommandText :=
      Self.CdsPesquisa.CommandText + ' AND PAC.NOME LIKE ''%'+EdtNome.Text+'%'' ';
  end;
(*
  if Trim(EdtTelefones.Text) <> EmptyStr then
  begin
    Self.CdsPesquisa.CommandText :=
      Self.CdsPesquisa.CommandText + ' AND ( PAC.TELEFONE1 LIKE ''%'+EdtTelefones.Text+'%'' OR PAC.TELEFONE2 LIKE ''%'+EdtTelefones.Text+'%'' ) ';
  end;

  if Trim(EdtCidadeUF.Text) <> EmptyStr then
  begin
    Self.CdsPesquisa.CommandText :=
      Self.CdsPesquisa.CommandText + ' AND ( CID.CIDADE LIKE ''%'+EdtCidadeUF.Text+'%'' OR CID.UF LIKE ''%'+EdtCidadeUF.Text+'%'' ) ';
  end;

  if CbSexo.Text <> 'Todos' then
  begin
    Self.CdsPesquisa.CommandText :=
      Self.CdsPesquisa.CommandText + ' AND ( PAC.SEXO LIKE ''%'+CbSexo.Text+'%'' ) ';
  end;

  if CbSituacao.Text <> 'Todos' then
  begin
    if CbSituacao.Text = 'Ativo' then
      Self.CdsPesquisa.CommandText :=
        Self.CdsPesquisa.CommandText + ' AND ( PAC.IDSITUACAOREGISTRO = 1 ) ';

    if CbSituacao.Text = 'Inativo' then
      Self.CdsPesquisa.CommandText :=
        Self.CdsPesquisa.CommandText + ' AND ( PAC.IDSITUACAOREGISTRO = 0 ) ';
  end;
 *)
  Self.CdsPesquisa.CommandText :=
    Self.CdsPesquisa.CommandText + ' ORDER BY PAC.NOME ';

  Self.CdsPesquisa.Open;

end;

procedure TConsAgendamentoDoPacientePesquisaPacienteF.FormShow(Sender: TObject);
begin
  inherited;
  setNextValue(False);
end;

end.
