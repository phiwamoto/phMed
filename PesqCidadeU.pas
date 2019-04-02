unit PesqCidadeU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPesquisaPadraoU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, DBClient, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  cxButtons, ExtCtrls, cxButtonEdit, cxDBEdit, cxContainer, cxMaskEdit,
  cxDropDownEdit, cxTextEdit;

type
  TPesqCidadeF = class(TXPesquisaPadrao)
    CdsPesquisaIDCIDADE: TIntegerField;
    CdsPesquisaIDSITUACAOREGISTRO: TSmallintField;
    CdsPesquisaDATAINCLUSAO: TDateField;
    CdsPesquisaCIDADE: TStringField;
    CdsPesquisaUF: TStringField;
    CdsPesquisaSITUACAOREGISTRO: TStringField;
    GridPesquisaDBTableView1IDCIDADE: TcxGridDBColumn;
    GridPesquisaDBTableView1CIDADE: TcxGridDBColumn;
    GridPesquisaDBTableView1UF: TcxGridDBColumn;
    GridPesquisaDBTableView1SITUACAOREGISTRO: TcxGridDBColumn;
    LblCidade: TLabel;
    EdtCidade: TcxTextEdit;
    BtnLimpar: TcxButton;
    procedure EdtCidadePropertiesChange(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    class function executaPesquisaCidade01(pId: TcxButtonEdit): Boolean;
    class function executaPesquisaCidade02(pCds: TClientDataSet): Boolean;
    class function executaPesquisaCidade03(pCds: TClientDataSet; pId: Integer): Boolean;

    procedure executarFiltro;
  end;

var
  PesqCidadeF: TPesqCidadeF;

implementation


{$R *.dfm}

{ TPesqCidadeF }

procedure TPesqCidadeF.BtnLimparClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  // Inicializando componentes filtros
  EdtCidade.Clear;

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

procedure TPesqCidadeF.EdtCidadePropertiesChange(Sender: TObject);
begin
  inherited;
  if EdtCidade.Focused then
    Self.executarFiltro;
end;

class function TPesqCidadeF.executaPesquisaCidade01(pId: TcxButtonEdit): Boolean;
begin
  Result := False;
  PesqCidadeF := TPesqCidadeF.Create(nil);
  try
    PesqCidadeF.CdsPesquisa.Close;
    PesqCidadeF.CdsPesquisa.Open;
    PesqCidadeF.ShowModal;
    if PesqCidadeF.ModalResult = mrOk then
    begin
      pId.Text := PesqCidadeF.CdsPesquisaIDCIDADE.AsString;
      Result := True;
    end;
  finally
    PesqCidadeF.CdsPesquisa.Close;
    PesqCidadeF.Release;
    PesqCidadeF := nil;
  end;
end;

class function TPesqCidadeF.executaPesquisaCidade02(pCds: TClientDataSet): Boolean;
begin
  Result := False;
  PesqCidadeF := TPesqCidadeF.Create(nil);
  try
    PesqCidadeF.CdsPesquisa.Close;
    PesqCidadeF.CdsPesquisa.Open;
    PesqCidadeF.ShowModal;
    if PesqCidadeF.ModalResult = mrOk then
    begin
      pCds.FieldByName('IDCIDADE').AsString := PesqCidadeF.CdsPesquisaIDCIDADE.AsString;
      pCds.FieldByName('CIDADEUF').AsString := PesqCidadeF.CdsPesquisaCIDADE.AsString +' - '+PesqCidadeF.CdsPesquisaUF.AsString;
      Result := True;
    end;
  finally
    PesqCidadeF.CdsPesquisa.Close;
    PesqCidadeF.Release;
    PesqCidadeF := nil;
  end;
end;

class function TPesqCidadeF.executaPesquisaCidade03(pCds: TClientDataSet; pId: Integer): Boolean;
begin
  Result := False;
  PesqCidadeF := TPesqCidadeF.Create(nil);
  try
    PesqCidadeF.CdsPesquisa.Close;
    PesqCidadeF.CdsPesquisa.CommandText :=
       ' SELECT CID.* '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'  FROM CIDADE CID '
      +'       JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = CID.IDSITUACAOREGISTRO) '
      +' WHERE 1 = 1 '
      +'   AND CID.IDCIDADE = '+IntToStr(pId);
      ;
    PesqCidadeF.CdsPesquisa.Open;
    if not PesqCidadeF.CdsPesquisa.IsEmpty then
    begin
      pCds.FieldByName('IDCIDADE').AsString := PesqCidadeF.CdsPesquisaIDCIDADE.AsString;
      pCds.FieldByName('CIDADEUF').AsString   := PesqCidadeF.CdsPesquisaCIDADE.AsString +' - '+PesqCidadeF.CdsPesquisaUF.AsString;
      Result := True;
    end
    else
    begin
      pCds.FieldByName('IDCIDADE').Clear;
      pCds.FieldByName('CIDADEUF').Clear;
    end;
  finally
    PesqCidadeF.CdsPesquisa.Close;
    PesqCidadeF.Release;
    PesqCidadeF := nil;
  end;
end;

procedure TPesqCidadeF.executarFiltro;
begin
  Self.CdsPesquisa.Close;
  Self.CdsPesquisa.CommandText :=
     ' SELECT CID.* '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'  FROM CIDADE CID '
    +'       JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = CID.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = 1 '
    ;

  if Trim(EdtCidade.Text) <> EmptyStr then
  begin
    Self.CdsPesquisa.CommandText :=
      Self.CdsPesquisa.CommandText + ' AND CID.CIDADE LIKE ''%'+EdtCidade.Text+'%'' ';
  end;

  Self.CdsPesquisa.CommandText :=
    Self.CdsPesquisa.CommandText + ' ORDER BY CID.CIDADE ';

  Self.CdsPesquisa.Open;
end;

end.
