unit PesqPacienteU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPesquisaPadraoU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, DBClient, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  cxButtons, ExtCtrls, cxButtonEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxTextEdit;

type
  TPesqPacienteF = class(TXPesquisaPadrao)
    GridPesquisaDBTableView1IDPACIENTE: TcxGridDBColumn;
    GridPesquisaDBTableView1SEXO: TcxGridDBColumn;
    GridPesquisaDBTableView1NOME: TcxGridDBColumn;
    GridPesquisaDBTableView1CPF: TcxGridDBColumn;
    GridPesquisaDBTableView1TELEFONE1: TcxGridDBColumn;
    GridPesquisaDBTableView1TELEFONE2: TcxGridDBColumn;
    GridPesquisaDBTableView1IDADE: TcxGridDBColumn;
    GridPesquisaDBTableView1CIDADEUF: TcxGridDBColumn;
    GridPesquisaDBTableView1SITUACAOREGISTRO: TcxGridDBColumn;
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
    LblNome: TLabel;
    LblTelefones: TLabel;
    LblCidadeUF: TLabel;
    LblSexo: TLabel;
    EdtNome: TcxTextEdit;
    EdtTelefones: TcxTextEdit;
    EdtCidadeUF: TcxTextEdit;
    CbSexo: TcxComboBox;
    BtnLimpar: TcxButton;
    CbSituacao: TcxComboBox;
    LblSituacao: TLabel;
    procedure BtnLimparClick(Sender: TObject);
    procedure CbSexoPropertiesChange(Sender: TObject);
    procedure EdtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtTelefonesKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCidadeUFKeyPress(Sender: TObject; var Key: Char);
    procedure CbSituacaoPropertiesChange(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    class function executaPesquisaPaciente01(pId: TcxButtonEdit): Boolean;
    class function executaPesquisaPaciente02(pCds: TClientDataSet): Boolean;
    class function executaPesquisaPaciente03(pCds: TClientDataSet; pId: Integer): Boolean;

    class function executaPesquisaPacienteAgendaDBButton(pCds: TClientDataSet): Boolean;
    class function executaPesquisaPacienteAgendaDBExit(pCds: TClientDataSet; pId: Integer): Boolean;

    class function executaPesquisaFichaPacienteEditButton(pId: TcxButtonEdit; pNome: TcxTextEdit): Boolean;
    class function executaPesquisaFichaPacienteEditExit(pId: TcxButtonEdit; pNome: TcxTextEdit): Boolean;

    procedure executarFiltro;
  end;

var
  PesqPacienteF: TPesqPacienteF;

implementation

uses XLibGenericoU;

{$R *.dfm}

{ TPesqPacienteF }

procedure TPesqPacienteF.BtnLimparClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  // Inicializando componentes filtros
  EdtNome.Clear;
  EdtTelefones.Clear;
  EdtCidadeUF.Clear;
  CbSexo.ItemIndex := 0;

  // Retirando os agrupamentos e voltando as colunas ao normal
  GridPesquisaDBTableView1.Controller.ClearGrouping;
  for I := 0 to GridPesquisaDBTableView1.ColumnCount - 1 do
  begin
    // Limpando a ordenação de cada coluna se possuir, voltando a original, NONE
    GridPesquisaDBTableView1.Columns[i].SortOrder := soNone;
    // Limpando o filtro de cada coluna, apagando as seleções
    GridPesquisaDBTableView1.Columns[i].Filtered  := False;
  end;

  Self.executarFiltro;
end;

procedure TPesqPacienteF.CbSexoPropertiesChange(Sender: TObject);
begin
  inherited;
  if CbSexo.Focused then
    Self.executarFiltro;
end;

procedure TPesqPacienteF.CbSituacaoPropertiesChange(Sender: TObject);
begin
  inherited;
  if CbSituacao.Focused then
    Self.executarFiltro;
end;

procedure TPesqPacienteF.EdtCidadeUFKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    if EdtCidadeUF.Focused then
      Self.executarFiltro;
end;

procedure TPesqPacienteF.EdtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    if EdtNome.Focused then
      Self.executarFiltro;
end;

procedure TPesqPacienteF.EdtTelefonesKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    if EdtTelefones.Focused then
      Self.executarFiltro;
end;

class function TPesqPacienteF.executaPesquisaFichaPacienteEditButton(pId: TcxButtonEdit; pNome: TcxTextEdit): Boolean;
begin
  Result := False;
  PesqPacienteF := TPesqPacienteF.Create(nil);
  try
    PesqPacienteF.CdsPesquisa.Close;
    PesqPacienteF.CdsPesquisa.Open;
    PesqPacienteF.ShowModal;
    if PesqPacienteF.ModalResult = mrOk then
    begin
      pId.Text   := PesqPacienteF.CdsPesquisaIDPACIENTE.AsString;
      pNome.Text := PesqPacienteF.CdsPesquisaNOME.AsString;
      Result := True;
    end;
  finally
    PesqPacienteF.CdsPesquisa.Close;
    PesqPacienteF.Release;
    PesqPacienteF := nil;
  end;
end;

class function TPesqPacienteF.executaPesquisaFichaPacienteEditExit(pId: TcxButtonEdit; pNome: TcxTextEdit): Boolean;
begin
  Result := False;
  PesqPacienteF := TPesqPacienteF.Create(nil);
  try
    PesqPacienteF.CdsPesquisa.Close;
    PesqPacienteF.CdsPesquisa.CommandText :=
       ' SELECT PAC.* '
      +'       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) AS IDADE '
      +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM PACIENTE PAC '
      +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PAC.IDCIDADE) '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PAC.IDSITUACAOREGISTRO) '
      +'  WHERE 1 = 1 '
      +'    AND PAC.IDPACIENTE = '+TRotinaGenerica.StrToSql(pId.Text, '0');
      ;
    PesqPacienteF.CdsPesquisa.Open;
    if not PesqPacienteF.CdsPesquisa.IsEmpty then
    begin
      pId.Text   := PesqPacienteF.CdsPesquisaIDPACIENTE.AsString;
      pNome.Text := PesqPacienteF.CdsPesquisaNOME.AsString;
      Result := True;
    end
    else
    begin
      pId.Text := '';
      pNome.Text := '';
    end;
  finally
    PesqPacienteF.CdsPesquisa.Close;
    PesqPacienteF.Release;
    PesqPacienteF := nil;
  end;
end;

class function TPesqPacienteF.executaPesquisaPaciente01(pId: TcxButtonEdit): Boolean;
begin
  Result := False;
  PesqPacienteF := TPesqPacienteF.Create(nil);
  try
    PesqPacienteF.CdsPesquisa.Close;
//    PesqPacienteF.CdsPesquisa.Open;
    PesqPacienteF.ShowModal;
    if PesqPacienteF.ModalResult = mrOk then
    begin
      pId.Text := PesqPacienteF.CdsPesquisaIDPACIENTE.AsString;
      Result := True;
    end;
  finally
    PesqPacienteF.CdsPesquisa.Close;
    PesqPacienteF.Release;
    PesqPacienteF := nil;
  end;
end;

class function TPesqPacienteF.executaPesquisaPaciente02(pCds: TClientDataSet): Boolean;
begin
  Result := False;
  PesqPacienteF := TPesqPacienteF.Create(nil);
  try
    PesqPacienteF.CdsPesquisa.Close;
    PesqPacienteF.CdsPesquisa.Open;
    PesqPacienteF.ShowModal;
    if PesqPacienteF.ModalResult = mrOk then
    begin
      pCds.FieldByName('IDPACIENTE').AsString := PesqPacienteF.CdsPesquisaIDPACIENTE.AsString;
      pCds.FieldByName('NOME').AsString   := PesqPacienteF.CdsPesquisaNOME.AsString;
      Result := True;
    end;
  finally
    PesqPacienteF.CdsPesquisa.Close;
    PesqPacienteF.Release;
    PesqPacienteF := nil;
  end;
end;

class function TPesqPacienteF.executaPesquisaPaciente03(pCds: TClientDataSet; pId: Integer): Boolean;
begin
  Result := False;
  PesqPacienteF := TPesqPacienteF.Create(nil);
  try
    PesqPacienteF.CdsPesquisa.Close;
    PesqPacienteF.CdsPesquisa.CommandText :=
       ' SELECT PAC.* '
      +'       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) AS IDADE '
      +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM PACIENTE PAC '
      +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PAC.IDCIDADE) '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PAC.IDSITUACAOREGISTRO) '
      +'  WHERE 1 = 1 '
      +'    AND PAC.IDPACIENTE = '+TRotinaGenerica.StrToSql(IntToStr(pId), '0');
      ;
    PesqPacienteF.CdsPesquisa.Open;
    if not PesqPacienteF.CdsPesquisa.IsEmpty then
    begin
      pCds.FieldByName('IDPACIENTE').AsString := PesqPacienteF.CdsPesquisaIDPACIENTE.AsString;
      pCds.FieldByName('NOME').AsString       := PesqPacienteF.CdsPesquisaNOME.AsString;
      Result := True;
    end
    else
    begin
      pCds.FieldByName('IDPACIENTE').Clear;
      pCds.FieldByName('NOME').Clear;
    end;
  finally
    PesqPacienteF.CdsPesquisa.Close;
    PesqPacienteF.Release;
    PesqPacienteF := nil;
  end;
end;

class function TPesqPacienteF.executaPesquisaPacienteAgendaDBButton(pCds: TClientDataSet): Boolean;
begin
  Result := False;
  PesqPacienteF := TPesqPacienteF.Create(nil);
  try
    PesqPacienteF.CdsPesquisa.Close;
    //PesqPacienteF.CdsPesquisa.Open;
    PesqPacienteF.ShowModal;
    if PesqPacienteF.ModalResult = mrOk then
    begin
      pCds.FieldByName('IDPACIENTE').AsString          := PesqPacienteF.CdsPesquisaIDPACIENTE.AsString;
      pCds.FieldByName('PACIENTENOME').AsString        := PesqPacienteF.CdsPesquisaNOME.AsString;
      pCds.FieldByName('PACIENTEIDADE').AsString       := PesqPacienteF.CdsPesquisaIDADE.AsString;
      pCds.FieldByName('PACIENTERG').AsString          := PesqPacienteF.CdsPesquisaRG.AsString;
      pCds.FieldByName('PACIENTECPF').AsString         := PesqPacienteF.CdsPesquisaCPF.AsString;
      pCds.FieldByName('PACIENTETELEFONE01').AsString  := PesqPacienteF.CdsPesquisaTELEFONE1.AsString;
      pCds.FieldByName('PACIENTETELEFONE02').AsString  := PesqPacienteF.CdsPesquisaTELEFONE2.AsString;
      pCds.FieldByName('PACIENTEEMAIL').AsString       := PesqPacienteF.CdsPesquisaEMAIL.AsString;
      pCds.FieldByName('PACIENTECIDADEUF').AsString    := PesqPacienteF.CdsPesquisaCIDADEUF.AsString;
      Result := True;
    end;
  finally
    PesqPacienteF.CdsPesquisa.Close;
    PesqPacienteF.Release;
    PesqPacienteF := nil;
  end;
end;

class function TPesqPacienteF.executaPesquisaPacienteAgendaDBExit(pCds: TClientDataSet; pId: Integer): Boolean;
begin
  Result := False;
  PesqPacienteF := TPesqPacienteF.Create(nil);
  try
    PesqPacienteF.CdsPesquisa.Close;
    PesqPacienteF.CdsPesquisa.CommandText :=
       ' SELECT PAC.* '
      +'       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) AS IDADE '
      +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM PACIENTE PAC '
      +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PAC.IDCIDADE) '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PAC.IDSITUACAOREGISTRO) '
      +'  WHERE 1 = 1 '
      +'    AND PAC.IDPACIENTE = '+IntToStr(pId);
      ;
    PesqPacienteF.CdsPesquisa.Open;
    if not PesqPacienteF.CdsPesquisa.IsEmpty then
    begin
      pCds.FieldByName('IDPACIENTE').AsString          := PesqPacienteF.CdsPesquisaIDPACIENTE.AsString;
      pCds.FieldByName('PACIENTENOME').AsString        := PesqPacienteF.CdsPesquisaNOME.AsString;
      pCds.FieldByName('PACIENTEIDADE').AsString       := PesqPacienteF.CdsPesquisaIDADE.AsString;
      pCds.FieldByName('PACIENTERG').AsString          := PesqPacienteF.CdsPesquisaRG.AsString;
      pCds.FieldByName('PACIENTECPF').AsString         := PesqPacienteF.CdsPesquisaCPF.AsString;
      pCds.FieldByName('PACIENTETELEFONE01').AsString  := PesqPacienteF.CdsPesquisaTELEFONE1.AsString;
      pCds.FieldByName('PACIENTETELEFONE02').AsString  := PesqPacienteF.CdsPesquisaTELEFONE2.AsString;
      pCds.FieldByName('PACIENTEEMAIL').AsString       := PesqPacienteF.CdsPesquisaEMAIL.AsString;
      pCds.FieldByName('PACIENTECIDADEUF').AsString    := PesqPacienteF.CdsPesquisaCIDADEUF.AsString;
      Result := True;
    end
    else
    begin
      pCds.FieldByName('IDPACIENTE').Clear;
      pCds.FieldByName('PACIENTENOME').Clear;
      pCds.FieldByName('PACIENTEIDADE').Clear;
      pCds.FieldByName('PACIENTERG').Clear;
      pCds.FieldByName('PACIENTECPF').Clear;
      pCds.FieldByName('PACIENTETELEFONE01').Clear;
      pCds.FieldByName('PACIENTETELEFONE02').Clear;
      pCds.FieldByName('PACIENTEEMAIL').Clear;
      pCds.FieldByName('PACIENTECIDADEUF').Clear;
    end;
  finally
    PesqPacienteF.CdsPesquisa.Close;
    PesqPacienteF.Release;
    PesqPacienteF := nil;
  end;
end;

procedure TPesqPacienteF.executarFiltro;
begin

  if Trim(EdtNome.Text) = EmptyStr then
  begin
      TRotinaGenerica.MensagemGeral('Informe pelo menos um caractere/parte do nome', MsgInformar, BtOk);
      TRotinaGenerica.TentaFocar(EdtNome);
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

  Self.CdsPesquisa.CommandText :=
    Self.CdsPesquisa.CommandText + ' ORDER BY PAC.NOME ';

  Self.CdsPesquisa.Open;
end;

end.
