unit PesqMedicamentoUsoU;

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
  TPesqMedicamentoUsoF = class(TXPesquisaPadrao)
    EdtMedicamentoUso: TcxTextEdit;
    LblMedicamentoUso: TLabel;
    BtnLimpar: TcxButton;
    CdsPesquisaIDMEDICAMENTOUSO: TIntegerField;
    CdsPesquisaIDSITUACAOREGISTRO: TSmallintField;
    CdsPesquisaDATAINCLUSAO: TDateField;
    CdsPesquisaDESCRICAO: TStringField;
    CdsPesquisaSITUACAOREGISTRO: TStringField;
    GridPesquisaDBTableView1IDMEDICAMENTOUSO: TcxGridDBColumn;
    GridPesquisaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridPesquisaDBTableView1SITUACAOREGISTRO: TcxGridDBColumn;
    procedure EdtMedicamentoUsoPropertiesChange(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    class function executaPesquisaMedicamentoUso01(pId: TcxButtonEdit): Boolean;
    class function executaPesquisaMedicamentoUso02(pCds: TClientDataSet): Boolean;
    class function executaPesquisaMedicamentoUso03(pCds: TClientDataSet; pId: Integer): Boolean;

    procedure executarFiltro;

  end;

var
  PesqMedicamentoUsoF: TPesqMedicamentoUsoF;

implementation

{$R *.dfm}

{ TPesqMedicamentoUsoF }

procedure TPesqMedicamentoUsoF.BtnLimparClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  // Inicializando componentes filtros
  EdtMedicamentoUso.Clear;

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

procedure TPesqMedicamentoUsoF.EdtMedicamentoUsoPropertiesChange(Sender: TObject);
begin
  inherited;
  if EdtMedicamentoUso.Focused then
    Self.executarFiltro;
end;

class function TPesqMedicamentoUsoF.executaPesquisaMedicamentoUso01(pId: TcxButtonEdit): Boolean;
begin
  Result := False;
  PesqMedicamentoUsoF := TPesqMedicamentoUsoF.Create(nil);
  try
    PesqMedicamentoUsoF.CdsPesquisa.Close;
    PesqMedicamentoUsoF.CdsPesquisa.Open;
    PesqMedicamentoUsoF.ShowModal;
    if PesqMedicamentoUsoF.ModalResult = mrOk then
    begin
      pId.Text := PesqMedicamentoUsoF.CdsPesquisaIDMEDICAMENTOUSO.AsString;
      Result := True;
    end;
  finally
    PesqMedicamentoUsoF.CdsPesquisa.Close;
    PesqMedicamentoUsoF.Release;
    PesqMedicamentoUsoF := nil;
  end;
end;

class function TPesqMedicamentoUsoF.executaPesquisaMedicamentoUso02(pCds: TClientDataSet): Boolean;
begin
  Result := False;
  PesqMedicamentoUsoF := TPesqMedicamentoUsoF.Create(nil);
  try
    PesqMedicamentoUsoF.CdsPesquisa.Close;
    PesqMedicamentoUsoF.CdsPesquisa.Open;
    PesqMedicamentoUsoF.ShowModal;
    if PesqMedicamentoUsoF.ModalResult = mrOk then
    begin
      pCds.FieldByName('IDMEDICAMENTOUSO').AsString := PesqMedicamentoUsoF.CdsPesquisaIDMEDICAMENTOUSO.AsString;
      pCds.FieldByName('MEDICAMENTOUSO').AsString   := PesqMedicamentoUsoF.CdsPesquisaDESCRICAO.AsString;
      Result := True;
    end;
  finally
    PesqMedicamentoUsoF.CdsPesquisa.Close;
    PesqMedicamentoUsoF.Release;
    PesqMedicamentoUsoF := nil;
  end;
end;

class function TPesqMedicamentoUsoF.executaPesquisaMedicamentoUso03(pCds: TClientDataSet; pId: Integer): Boolean;
begin
  Result := False;
  PesqMedicamentoUsoF := TPesqMedicamentoUsoF.Create(nil);
  try
    PesqMedicamentoUsoF.CdsPesquisa.Close;
    PesqMedicamentoUsoF.CdsPesquisa.CommandText :=
       ' SELECT MUS.* '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM MEDICAMENTOUSO MUS '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = MUS.IDSITUACAOREGISTRO) '
      +' WHERE 1 = 1 '
      +'   AND MUS.IDMEDICAMENTOUSO = '+IntToStr(pId);
      ;
    PesqMedicamentoUsoF.CdsPesquisa.Open;
    if not PesqMedicamentoUsoF.CdsPesquisa.IsEmpty then
    begin
      pCds.FieldByName('IDMEDICAMENTOUSO').AsString := PesqMedicamentoUsoF.CdsPesquisaIDMEDICAMENTOUSO.AsString;
      pCds.FieldByName('MEDICAMENTOUSO').AsString   := PesqMedicamentoUsoF.CdsPesquisaDESCRICAO.AsString;
      Result := True;
    end
    else
    begin
      pCds.FieldByName('IDMEDICAMENTOUSO').Clear;
      pCds.FieldByName('MEDICAMENTOUSO').Clear;
    end;
  finally
    PesqMedicamentoUsoF.CdsPesquisa.Close;
    PesqMedicamentoUsoF.Release;
    PesqMedicamentoUsoF := nil;
  end;
end;

procedure TPesqMedicamentoUsoF.executarFiltro;
begin
  Self.CdsPesquisa.Close;
  Self.CdsPesquisa.CommandText :=
     ' SELECT MUS.* '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM MEDICAMENTOUSO MUS '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = MUS.IDSITUACAOREGISTRO) '
    +' WHERE 1 = 1 '
    ;

  if Trim(EdtMedicamentoUso.Text) <> EmptyStr then
  begin
    Self.CdsPesquisa.CommandText :=
      Self.CdsPesquisa.CommandText + ' AND MUS.DESCRICAO LIKE ''%'+EdtMedicamentoUso.Text+'%'' ';
  end;

  Self.CdsPesquisa.CommandText :=
    Self.CdsPesquisa.CommandText + ' ORDER BY MUS.DESCRICAO ';

  Self.CdsPesquisa.Open;
end;

end.
