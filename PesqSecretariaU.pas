unit PesqSecretariaU;

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
  TPesqSecretariaF = class(TXPesquisaPadrao)
    CdsPesquisaIDSECRETARIA: TIntegerField;
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
    CdsPesquisaCIDADEUF: TStringField;
    CdsPesquisaUSUARIOLOGIN: TStringField;
    CdsPesquisaSITUACAOREGISTRO: TStringField;
    GridPesquisaDBTableView1IDSECRETARIA: TcxGridDBColumn;
    GridPesquisaDBTableView1NOME: TcxGridDBColumn;
    GridPesquisaDBTableView1CPF: TcxGridDBColumn;
    GridPesquisaDBTableView1TELEFONE: TcxGridDBColumn;
    GridPesquisaDBTableView1CELULAR: TcxGridDBColumn;
    GridPesquisaDBTableView1CIDADEUF: TcxGridDBColumn;
    GridPesquisaDBTableView1SITUACAOREGISTRO: TcxGridDBColumn;
    LblNome: TLabel;
    EdtNome: TcxTextEdit;
    EdtTelefones: TcxTextEdit;
    LblTelefones: TLabel;
    EdtCidadeUF: TcxTextEdit;
    LblCidadeUF: TLabel;
    BtnLimpar: TcxButton;
    procedure BtnLimparClick(Sender: TObject);
    procedure EdtNomePropertiesChange(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    class function executaPesquisaSecretaria01(pId: TcxButtonEdit): Boolean;
    class function executaPesquisaSecretaria02(pCds: TClientDataSet): Boolean;
    class function executaPesquisaSecretaria03(pCds: TClientDataSet; pId: Integer): Boolean;

    procedure executarFiltro;
  end;

var
  PesqSecretariaF: TPesqSecretariaF;

implementation

{$R *.dfm}

{ TPesqSecretariaF }

procedure TPesqSecretariaF.BtnLimparClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  // Inicializando componentes filtros
  EdtNome.Clear;
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

procedure TPesqSecretariaF.EdtNomePropertiesChange(Sender: TObject);
begin
  inherited;
  if EdtNome.Focused then
    Self.executarFiltro;
end;

class function TPesqSecretariaF.executaPesquisaSecretaria01(pId: TcxButtonEdit): Boolean;
begin
  Result := False;
  PesqSecretariaF := TPesqSecretariaF.Create(nil);
  try
    PesqSecretariaF.CdsPesquisa.Close;
    PesqSecretariaF.CdsPesquisa.Open;
    PesqSecretariaF.ShowModal;
    if PesqSecretariaF.ModalResult = mrOk then
    begin
      pId.Text := PesqSecretariaF.CdsPesquisaIDSECRETARIA.AsString;
      Result   := True;
    end;
  finally
    PesqSecretariaF.CdsPesquisa.Close;
    PesqSecretariaF.Release;
    PesqSecretariaF := nil;
  end;
end;

class function TPesqSecretariaF.executaPesquisaSecretaria02(pCds: TClientDataSet): Boolean;
begin
  Result := False;
  PesqSecretariaF := TPesqSecretariaF.Create(nil);
  try
    PesqSecretariaF.CdsPesquisa.Close;
    PesqSecretariaF.CdsPesquisa.Open;
    PesqSecretariaF.ShowModal;
    if PesqSecretariaF.ModalResult = mrOk then
    begin
      pCds.FieldByName('IDSECRETARIA').AsString   := PesqSecretariaF.CdsPesquisaIDSECRETARIA.AsString;
      pCds.FieldByName('SECRETARIANOME').AsString := PesqSecretariaF.CdsPesquisaNOME.AsString;
      Result := True;
    end;
  finally
    PesqSecretariaF.CdsPesquisa.Close;
    PesqSecretariaF.Release;
    PesqSecretariaF := nil;
  end;
end;

class function TPesqSecretariaF.executaPesquisaSecretaria03(pCds: TClientDataSet; pId: Integer): Boolean;
begin
  Result := True;
end;

procedure TPesqSecretariaF.executarFiltro;
begin
  Self.CdsPesquisa.Close;
  Self.CdsPesquisa.CommandText :=
     ' SELECT SEC.* '
    +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
    +'       ,USU.LOGIN AS USUARIOLOGIN '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM SECRETARIA SEC '
    +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = SEC.IDCIDADE) '
    +'        LEFT JOIN USUARIO USU ON (USU.IDUSUARIO = SEC.IDUSUARIO) '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = SEC.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = 1 '
    ;

  if Trim(EdtNome.Text) <> EmptyStr then
  begin
    Self.CdsPesquisa.CommandText :=
      Self.CdsPesquisa.CommandText + ' AND SEC.NOME LIKE ''%'+EdtNome.Text+'%'' ';
  end;

  Self.CdsPesquisa.CommandText :=
    Self.CdsPesquisa.CommandText + ' ORDER BY SEC.NOME ';

  Self.CdsPesquisa.Open;
end;

end.
