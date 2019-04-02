unit PesqExameU;

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
  TPesqExameF = class(TXPesquisaPadrao)
    EdtExame: TcxTextEdit;
    LblExame: TLabel;
    BtnLimpar: TcxButton;
    CdsPesquisaIDEXAME: TIntegerField;
    CdsPesquisaIDSITUACAOREGISTRO: TSmallintField;
    CdsPesquisaDATAINCLUSAO: TDateField;
    CdsPesquisaDESCRICAO: TStringField;
    CdsPesquisaSITUACAOREGISTRO: TStringField;
    GridPesquisaDBTableView1IDEXAME: TcxGridDBColumn;
    GridPesquisaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridPesquisaDBTableView1SITUACAOREGISTRO: TcxGridDBColumn;
    procedure EdtExamePropertiesChange(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    class function executaPesquisaExame01(pId: TcxButtonEdit): Boolean;
    class function executaPesquisaExame02(pCds: TClientDataSet): Boolean;
    class function executaPesquisaExame03(pCds: TClientDataSet; pId: Integer): Boolean;

    procedure executarFiltro;

  end;

var
  PesqExameF: TPesqExameF;

implementation

{$R *.dfm}

{ TPesqExameF }

procedure TPesqExameF.BtnLimparClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  // Inicializando componentes filtros
  EdtExame.Clear;

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

procedure TPesqExameF.EdtExamePropertiesChange(Sender: TObject);
begin
  inherited;
  if EdtExame.Focused then
    Self.executarFiltro;
end;

class function TPesqExameF.executaPesquisaExame01(pId: TcxButtonEdit): Boolean;
begin
  Result := False;
  PesqExameF := TPesqExameF.Create(nil);
  try
    PesqExameF.CdsPesquisa.Close;
    PesqExameF.CdsPesquisa.Open;
    PesqExameF.ShowModal;
    if PesqExameF.ModalResult = mrOk then
    begin
      pId.Text := PesqExameF.CdsPesquisaIDEXAME.AsString;
      Result := True;
    end;
  finally
    PesqExameF.CdsPesquisa.Close;
    PesqExameF.Release;
    PesqExameF := nil;
  end;
end;

class function TPesqExameF.executaPesquisaExame02(pCds: TClientDataSet): Boolean;
begin
  Result := False;
  PesqExameF := TPesqExameF.Create(nil);
  try
    PesqExameF.CdsPesquisa.Close;
    PesqExameF.CdsPesquisa.Open;
    PesqExameF.ShowModal;
    if PesqExameF.ModalResult = mrOk then
    begin
      pCds.FieldByName('IDEXAME').AsString := PesqExameF.CdsPesquisaIDEXAME.AsString;
      pCds.FieldByName('EXAME').AsString   := PesqExameF.CdsPesquisaDESCRICAO.AsString;
      Result := True;
    end;
  finally
    PesqExameF.CdsPesquisa.Close;
    PesqExameF.Release;
    PesqExameF := nil;
  end;
end;

class function TPesqExameF.executaPesquisaExame03(pCds: TClientDataSet; pId: Integer): Boolean;
begin
  Result := False;
  PesqExameF := TPesqExameF.Create(nil);
  try
    PesqExameF.CdsPesquisa.Close;
    PesqExameF.CdsPesquisa.CommandText :=
       ' SELECT EXA.* '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM EXAME EXA '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = EXA.IDSITUACAOREGISTRO) '
      +' WHERE 1 = 1 '
      +'   AND EXA.IDEXAME = '+IntToStr(pId);
      ;
    PesqExameF.CdsPesquisa.Open;
    if not PesqExameF.CdsPesquisa.IsEmpty then
    begin
      pCds.FieldByName('IDEXAME').AsString := PesqExameF.CdsPesquisaIDEXAME.AsString;
      pCds.FieldByName('EXAME').AsString   := PesqExameF.CdsPesquisaDESCRICAO.AsString;
      Result := True;
    end
    else
    begin
      pCds.FieldByName('IDEXAME').Clear;
      pCds.FieldByName('EXAME').Clear;
    end;
  finally
    PesqExameF.CdsPesquisa.Close;
    PesqExameF.Release;
    PesqExameF := nil;
  end;
end;

procedure TPesqExameF.executarFiltro;
begin
  Self.CdsPesquisa.Close;
  Self.CdsPesquisa.CommandText :=
     ' SELECT EXA.* '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM EXAME EXA '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = EXA.IDSITUACAOREGISTRO) '
    +' WHERE 1 = 1 '
    ;

  if Trim(EdtExame.Text) <> EmptyStr then
  begin
    Self.CdsPesquisa.CommandText :=
      Self.CdsPesquisa.CommandText + ' AND EXA.DESCRICAO LIKE ''%'+EdtExame.Text+'%'' ';
  end;

  Self.CdsPesquisa.CommandText :=
    Self.CdsPesquisa.CommandText + ' ORDER BY EXA.DESCRICAO ';

  Self.CdsPesquisa.Open;
end;

end.
