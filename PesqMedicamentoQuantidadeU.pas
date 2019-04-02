unit PesqMedicamentoQuantidadeU;

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
  TPesqMedicamentoQuantidadeF = class(TXPesquisaPadrao)
    BtnLimpar: TcxButton;
    EdtMedicamentoQuantidade: TcxTextEdit;
    LblMedicamentoQuantidade: TLabel;
    CdsPesquisaIDMEDICAMENTOQTDE: TIntegerField;
    CdsPesquisaIDSITUACAOREGISTRO: TSmallintField;
    CdsPesquisaDATAINCLUSAO: TDateField;
    CdsPesquisaDESCRICAO: TStringField;
    CdsPesquisaSITUACAOREGISTRO: TStringField;
    GridPesquisaDBTableView1IDMEDICAMENTOQTDE: TcxGridDBColumn;
    GridPesquisaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridPesquisaDBTableView1SITUACAOREGISTRO: TcxGridDBColumn;
    procedure EdtMedicamentoQuantidadePropertiesChange(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    class function executaPesquisaMedicamentoQtde01(pId: TcxButtonEdit): Boolean;
    class function executaPesquisaMedicamentoQtde02(pCds: TClientDataSet): Boolean;
    class function executaPesquisaMedicamentoQtde03(pCds: TClientDataSet; pId: Integer): Boolean;

    procedure executarFiltro;

  end;

var
  PesqMedicamentoQuantidadeF: TPesqMedicamentoQuantidadeF;

implementation

{$R *.dfm}

{ TPesqMedicamentoQuantidadeF }

procedure TPesqMedicamentoQuantidadeF.BtnLimparClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  // Inicializando componentes filtros
  EdtMedicamentoQuantidade.Clear;

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

procedure TPesqMedicamentoQuantidadeF.EdtMedicamentoQuantidadePropertiesChange(Sender: TObject);
begin
  inherited;
  if EdtMedicamentoQuantidade.Focused then
    Self.executarFiltro;
end;

class function TPesqMedicamentoQuantidadeF.executaPesquisaMedicamentoQtde01(pId: TcxButtonEdit): Boolean;
begin
  Result := False;
  PesqMedicamentoQuantidadeF := TPesqMedicamentoQuantidadeF.Create(nil);
  try
    PesqMedicamentoQuantidadeF.CdsPesquisa.Close;
    PesqMedicamentoQuantidadeF.CdsPesquisa.Open;
    PesqMedicamentoQuantidadeF.ShowModal;
    if PesqMedicamentoQuantidadeF.ModalResult = mrOk then
    begin
      pId.Text := PesqMedicamentoQuantidadeF.CdsPesquisaIDMEDICAMENTOQTDE.AsString;
      Result := True;
    end;
  finally
    PesqMedicamentoQuantidadeF.CdsPesquisa.Close;
    PesqMedicamentoQuantidadeF.Release;
    PesqMedicamentoQuantidadeF := nil;
  end;
end;

class function TPesqMedicamentoQuantidadeF.executaPesquisaMedicamentoQtde02(pCds: TClientDataSet): Boolean;
begin
  Result := False;
  PesqMedicamentoQuantidadeF := TPesqMedicamentoQuantidadeF.Create(nil);
  try
    PesqMedicamentoQuantidadeF.CdsPesquisa.Close;
    PesqMedicamentoQuantidadeF.CdsPesquisa.Open;
    PesqMedicamentoQuantidadeF.ShowModal;
    if PesqMedicamentoQuantidadeF.ModalResult = mrOk then
    begin
      pCds.FieldByName('IDMEDICAMENTOQTDE').AsString := PesqMedicamentoQuantidadeF.CdsPesquisaIDMEDICAMENTOQTDE.AsString;
      pCds.FieldByName('MEDICAMENTOQTDE').AsString   := PesqMedicamentoQuantidadeF.CdsPesquisaDESCRICAO.AsString;
      Result := True;
    end;
  finally
    PesqMedicamentoQuantidadeF.CdsPesquisa.Close;
    PesqMedicamentoQuantidadeF.Release;
    PesqMedicamentoQuantidadeF := nil;
  end;
end;

class function TPesqMedicamentoQuantidadeF.executaPesquisaMedicamentoQtde03(pCds: TClientDataSet; pId: Integer): Boolean;
begin
  Result := False;
  PesqMedicamentoQuantidadeF := TPesqMedicamentoQuantidadeF.Create(nil);
  try
    PesqMedicamentoQuantidadeF.CdsPesquisa.Close;
    PesqMedicamentoQuantidadeF.CdsPesquisa.CommandText :=
       ' SELECT MQT.* '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM MEDICAMENTOQTDE MQT '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = MQT.IDSITUACAOREGISTRO) '
      +' WHERE 1 = 1 '
      +'   AND MQT.IDMEDICAMENTOQTDE = '+IntToStr(pId);
      ;
    PesqMedicamentoQuantidadeF.CdsPesquisa.Open;
    if not PesqMedicamentoQuantidadeF.CdsPesquisa.IsEmpty then
    begin
      pCds.FieldByName('IDMEDICAMENTOQTDE').AsString := PesqMedicamentoQuantidadeF.CdsPesquisaIDMEDICAMENTOQTDE.AsString;
      pCds.FieldByName('MEDICAMENTOQTDE').AsString   := PesqMedicamentoQuantidadeF.CdsPesquisaDESCRICAO.AsString;
      Result := True;
    end
    else
    begin
      pCds.FieldByName('IDMEDICAMENTOQTDE').Clear;
      pCds.FieldByName('MEDICAMENTOQTDE').Clear;
    end;
  finally
    PesqMedicamentoQuantidadeF.CdsPesquisa.Close;
    PesqMedicamentoQuantidadeF.Release;
    PesqMedicamentoQuantidadeF := nil;
  end;
end;

procedure TPesqMedicamentoQuantidadeF.executarFiltro;
begin
  Self.CdsPesquisa.Close;
  Self.CdsPesquisa.CommandText :=
     ' SELECT MQT.* '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM MEDICAMENTOQTDE MQT '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = MQT.IDSITUACAOREGISTRO) '
    +' WHERE 1 = 1 '
    ;

  if Trim(EdtMedicamentoQuantidade.Text) <> EmptyStr then
  begin
    Self.CdsPesquisa.CommandText :=
      Self.CdsPesquisa.CommandText + ' AND MQT.DESCRICAO LIKE ''%'+EdtMedicamentoQuantidade.Text+'%'' ';
  end;

  Self.CdsPesquisa.CommandText :=
    Self.CdsPesquisa.CommandText + ' ORDER BY MQT.DESCRICAO ';

  Self.CdsPesquisa.Open;
end;

end.
