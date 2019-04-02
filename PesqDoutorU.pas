unit PesqDoutorU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPesquisaPadraoU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, DBClient, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  cxButtons, ExtCtrls, cxContainer, cxTextEdit, cxButtonEdit;

type
  TPesqDoutorF = class(TXPesquisaPadrao)
    EdtDoutor: TcxTextEdit;
    LblDoutor: TLabel;
    EdtTelefones: TcxTextEdit;
    LblTelefones: TLabel;
    EdtCidadeUF: TcxTextEdit;
    LblCidadeUF: TLabel;
    BtnLimpar: TcxButton;
    CdsPesquisaIDDOUTOR: TIntegerField;
    CdsPesquisaIDCIDADE: TIntegerField;
    CdsPesquisaIDUSUARIO: TIntegerField;
    CdsPesquisaIDSITUACAOREGISTRO: TSmallintField;
    CdsPesquisaDATAINCLUSAO: TDateField;
    CdsPesquisaNUMERO: TIntegerField;
    CdsPesquisaNOME: TStringField;
    CdsPesquisaENDERECO: TStringField;
    CdsPesquisaBAIRRO: TStringField;
    CdsPesquisaEMAIL: TStringField;
    CdsPesquisaCPF: TStringField;
    CdsPesquisaRG: TStringField;
    CdsPesquisaTELEFONE: TStringField;
    CdsPesquisaCELULAR: TStringField;
    CdsPesquisaCEP: TStringField;
    CdsPesquisaCRM: TStringField;
    CdsPesquisaINTERVALO: TIntegerField;
    CdsPesquisaHORAINICIALMANHA: TStringField;
    CdsPesquisaHORAFINALMANHA: TStringField;
    CdsPesquisaHORAINICIALTARDE: TStringField;
    CdsPesquisaHORAFINALTARDE: TStringField;
    CdsPesquisaCIDADEUF: TStringField;
    CdsPesquisaUSUARIOLOGIN: TStringField;
    CdsPesquisaSITUACAOREGISTRO: TStringField;
    GridPesquisaDBTableView1IDDOUTOR: TcxGridDBColumn;
    GridPesquisaDBTableView1NOME: TcxGridDBColumn;
    GridPesquisaDBTableView1CPF: TcxGridDBColumn;
    GridPesquisaDBTableView1TELEFONE: TcxGridDBColumn;
    GridPesquisaDBTableView1CELULAR: TcxGridDBColumn;
    GridPesquisaDBTableView1CRM: TcxGridDBColumn;
    GridPesquisaDBTableView1CIDADEUF: TcxGridDBColumn;
    GridPesquisaDBTableView1SITUACAOREGISTRO: TcxGridDBColumn;
    procedure BtnLimparClick(Sender: TObject);
    procedure EdtDoutorPropertiesChange(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    class function executaPesquisaDoutor01(pId: TcxButtonEdit): Boolean;
    class function executaPesquisaDoutor02(pCds: TClientDataSet): Boolean;
    class function executaPesquisaDoutor03(pCds: TClientDataSet; pId: Integer): Boolean;

    class function executaPesquisaDoutorEditButton(pId: TcxButtonEdit; pNome: TcxTextEdit): Boolean;
    class function executaPesquisaDoutorEditExit(pId: TcxButtonEdit; pNome: TcxTextEdit): Boolean;

    procedure executarFiltro;

  end;

var
  PesqDoutorF: TPesqDoutorF;

implementation

uses XLibGenericoU;

{$R *.dfm}

{ TPesqDoutorF }

procedure TPesqDoutorF.BtnLimparClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  // Inicializando componentes filtros
  EdtDoutor.Clear;
  EdtTelefones.Clear;
  EdtCidadeUF.Clear;

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

procedure TPesqDoutorF.EdtDoutorPropertiesChange(Sender: TObject);
begin
  inherited;
  if EdtDoutor.Focused then
    Self.executarFiltro;
end;

class function TPesqDoutorF.executaPesquisaDoutor01(pId: TcxButtonEdit): Boolean;
begin
  Result := False;
  PesqDoutorF := TPesqDoutorF.Create(nil);
  try
    PesqDoutorF.CdsPesquisa.Close;
    PesqDoutorF.CdsPesquisa.Open;
    PesqDoutorF.ShowModal;
    if PesqDoutorF.ModalResult = mrOk then
    begin
      pId.Text := PesqDoutorF.CdsPesquisaIDDOUTOR.AsString;
      Result := True;
    end;
  finally
    PesqDoutorF.CdsPesquisa.Close;
    PesqDoutorF.Release;
    PesqDoutorF := nil;
  end;
end;

class function TPesqDoutorF.executaPesquisaDoutor02(pCds: TClientDataSet): Boolean;
begin
  Result := False;
  PesqDoutorF := TPesqDoutorF.Create(nil);
  try
    PesqDoutorF.CdsPesquisa.Close;
    PesqDoutorF.CdsPesquisa.Open;
    PesqDoutorF.ShowModal;
    if PesqDoutorF.ModalResult = mrOk then
    begin
      pCds.FieldByName('IDDOUTOR').AsString   := PesqDoutorF.CdsPesquisaIDDOUTOR.AsString;
      pCds.FieldByName('DOUTORNOME').AsString := PesqDoutorF.CdsPesquisaNOME.AsString;
      Result := True;
    end;
  finally
    PesqDoutorF.CdsPesquisa.Close;
    PesqDoutorF.Release;
    PesqDoutorF := nil;
  end;
end;

class function TPesqDoutorF.executaPesquisaDoutor03(pCds: TClientDataSet; pId: Integer): Boolean;
begin
  Result := True;
end;

class function TPesqDoutorF.executaPesquisaDoutorEditButton(pId: TcxButtonEdit; pNome: TcxTextEdit): Boolean;
begin
  Result := False;
  PesqDoutorF := TPesqDoutorF.Create(nil);
  try
    PesqDoutorF.CdsPesquisa.Close;
    PesqDoutorF.CdsPesquisa.Open;
    PesqDoutorF.ShowModal;
    if PesqDoutorF.ModalResult = mrOk then
    begin
      pId.Text   := PesqDoutorF.CdsPesquisaIDDOUTOR.AsString;
      pNome.Text := PesqDoutorF.CdsPesquisaNOME.AsString;
      Result := True;
    end;
  finally
    PesqDoutorF.CdsPesquisa.Close;
    PesqDoutorF.Release;
    PesqDoutorF := nil;
  end;
end;

class function TPesqDoutorF.executaPesquisaDoutorEditExit(pId: TcxButtonEdit; pNome: TcxTextEdit): Boolean;
begin
  Result := False;
  PesqDoutorF := TPesqDoutorF.Create(nil);
  try
    PesqDoutorF.CdsPesquisa.Close;
    PesqDoutorF.CdsPesquisa.CommandText :=
       ' SELECT DOU.* '
      +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
      +'       ,USU.LOGIN AS USUARIOLOGIN '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM DOUTOR DOU '
      +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = DOU.IDCIDADE) '
      +'        LEFT JOIN USUARIO USU ON (USU.IDUSUARIO = DOU.IDUSUARIO) '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = DOU.IDSITUACAOREGISTRO) '
      +'  WHERE 1 = 1 '
      +'    AND DOU.IDDOUTOR = '+TRotinaGenerica.StrToSql(pId.Text, '0');
      ;
    PesqDoutorF.CdsPesquisa.Open;
    if not PesqDoutorF.CdsPesquisa.IsEmpty then
    begin
      pId.Text   := PesqDoutorF.CdsPesquisaIDDOUTOR.AsString;
      pNome.Text := PesqDoutorF.CdsPesquisaNOME.AsString;
      Result := True;
    end
    else
    begin
      pId.Text := '';
      pNome.Text := '';
    end;
  finally
    PesqDoutorF.CdsPesquisa.Close;
    PesqDoutorF.Release;
    PesqDoutorF := nil;
  end;
end;

procedure TPesqDoutorF.executarFiltro;
begin
  Self.CdsPesquisa.Close;
  Self.CdsPesquisa.CommandText :=
     ' SELECT DOU.* '
    +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
    +'       ,USU.LOGIN AS USUARIOLOGIN '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM DOUTOR DOU '
    +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = DOU.IDCIDADE) '
    +'        LEFT JOIN USUARIO USU ON (USU.IDUSUARIO = DOU.IDUSUARIO) '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = DOU.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = 1 '
    ;

  if Trim(EdtDoutor.Text) <> EmptyStr then
  begin
    Self.CdsPesquisa.CommandText :=
      Self.CdsPesquisa.CommandText + ' AND DOU.NOME LIKE ''%'+EdtDoutor.Text+'%'' ';
  end;

  Self.CdsPesquisa.CommandText :=
    Self.CdsPesquisa.CommandText + ' ORDER BY DOU.NOME ';

  Self.CdsPesquisa.Open;
end;

end.
