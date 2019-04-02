unit XDmU;

interface

uses
  SysUtils, Classes, WideStrings, FMTBcd, DB, SqlExpr, Provider, DBClient,
  TConnect;

type
  TXDmF = class(TDataModule)
    LocalConnection: TLocalConnection;
    SQLConnection: TSQLConnection;
    dmCdsGeraCodigo: TClientDataSet;
    dmDspGeraCodigo: TDataSetProvider;
    dmQryGeraCodigo: TSQLQuery;
    dmCdsSistema: TClientDataSet;
    dmDspSistema: TDataSetProvider;
    dmQrySistema: TSQLQuery;
    dmCdsConsulta: TClientDataSet;
    dmDspConsulta: TDataSetProvider;
    dmQryConsulta: TSQLQuery;
    dmCdsExecuta: TClientDataSet;
    dmDspExecuta: TDataSetProvider;
    dmQryExecuta: TSQLQuery;
    dmDspPesquisa: TDataSetProvider;
    dmQryPesquisa: TSQLQuery;
    dmDspPesquisaTela: TDataSetProvider;
    dmQryPesquisaTela: TSQLQuery;

  private
    { Private declarations }

  public
    { Public declarations }
    function SqlConsultar(pSql: String): Boolean; Virtual;
    function SqlExecutar(pSql: string): Boolean;

    function Generation(pStr: String): Integer;
    function Proximo(pTabela, pCampo: String; pCondicao: String = ''): Integer;
    function ProximoFilha(pCds: TClientDataSet; pCampo: String = ''): Integer;

  end;

var
  XDmF: TXDmF;

implementation

uses
  XLibGenericoU;

{$R *.dfm}

{ TXDmF }

function TXDmF.SqlConsultar(pSql: String): Boolean;
begin
  Result :=  TRotinaGenerica.executaSql(dmCdsConsulta, pSql);
end;

function TXDmF.SqlExecutar(pSql: string): Boolean;
begin
  try
    SQLConnection.ExecuteDirect(pSql);
    Result := True;
  except
    Result := False;
  end;
end;

function TXDmF.Generation(pStr: String): Integer;
begin
  dmCdsGeraCodigo.CommandText := 'SELECT GEN_ID( ' + pStr  + ',1) RESULTADO FROM RDB$DATABASE ';
  dmCdsGeraCodigo.Close;
  dmCdsGeraCodigo.Open;
  Result := dmCdsGeraCodigo.FieldByName('RESULTADO').AsInteger;
  dmCdsGeraCodigo.Close;
end;

function TXDmF.Proximo(pTabela, pCampo: String; pCondicao: String = ''): Integer;
begin
  dmCdsGeraCodigo.Close;
  dmCdsGeraCodigo.CommandText := 'SELECT MAX('+ pCampo +') MAXIMO FROM ' + pTabela;
  if pCondicao <> '' then
    dmCdsGeraCodigo.CommandText := dmCdsGeraCodigo.CommandText + ' WHERE ' + pCondicao;
  dmCdsGeraCodigo.Open;
  if (dmCdsGeraCodigo.IsEmpty) or (dmCdsGeraCodigo.FieldByName('MAXIMO').IsNull) then
    Result := 1
  else
    Result := dmCdsGeraCodigo.FieldByName('MAXIMO').AsInteger + 1;
  dmCdsGeraCodigo.Close;
end;

function TXDmF.ProximoFilha(pCds: TClientDataSet; pCampo: String = ''): Integer;
var
  CdsAuxiliar: TClientDataSet;
begin
  try
    if pCampo = '' then
      pCampo := StringReplace(pCds.Name, 'CDS', 'ID_', [rfIgnoreCase]);

    CdsAuxiliar := TClientDataSet.Create(nil);
    try
      CdsAuxiliar.CloneCursor(pCds, True);
      CdsAuxiliar.IndexFieldNames := pCampo;
      CdsAuxiliar.Last;
      Result := CdsAuxiliar.FieldByName(pCampo).AsInteger +1;
    finally
      FreeAndNil(CdsAuxiliar)
    end;
  except
    Result := 1;
  end;
end;

end.
