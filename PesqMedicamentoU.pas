unit PesqMedicamentoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPesquisaPadraoU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, DBClient, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  cxButtons, ExtCtrls, cxButtonEdit, cxContainer, cxTextEdit;

type
  TPesqMedicamentoF = class(TXPesquisaPadrao)
    LblMedicamento: TLabel;
    EdtMedicamento: TcxTextEdit;
    BtnLimpar: TcxButton;
    CdsPesquisaIDMEDICAMENTO: TIntegerField;
    CdsPesquisaIDMEDICAMENTOQTDE: TIntegerField;
    CdsPesquisaIDMEDICAMENTOUSO: TIntegerField;
    CdsPesquisaIDSITUACAOREGISTRO: TSmallintField;
    CdsPesquisaDATAINCLUSAO: TDateField;
    CdsPesquisaDESCRICAO: TStringField;
    CdsPesquisaPOSOLOGIA: TStringField;
    CdsPesquisaMEDICAMENTOUSO: TStringField;
    CdsPesquisaMEDICAMENTOQTDE: TStringField;
    CdsPesquisaSITUACAOREGISTRO: TStringField;
    GridPesquisaDBTableView1IDMEDICAMENTO: TcxGridDBColumn;
    GridPesquisaDBTableView1MEDICAMENTOUSO: TcxGridDBColumn;
    GridPesquisaDBTableView1MEDICAMENTOQTDE: TcxGridDBColumn;
    GridPesquisaDBTableView1SITUACAOREGISTRO: TcxGridDBColumn;
    GridPesquisaDBTableView1DESCRICAO: TcxGridDBColumn;
    procedure EdtMedicamentoPropertiesChange(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    class function executaPesquisaMedicamento01(pId: TcxButtonEdit): Boolean;
    class function executaPesquisaMedicamento02(pCds: TClientDataSet): Boolean;
    class function executaPesquisaMedicamento03(pCds: TClientDataSet; pId: Integer): Boolean;

    procedure executarFiltro;


  end;

var
  PesqMedicamentoF: TPesqMedicamentoF;

implementation

{$R *.dfm}

{ TPesqMedicamentoF }

procedure TPesqMedicamentoF.BtnLimparClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  // Inicializando componentes filtros
  EdtMedicamento.Clear;

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

procedure TPesqMedicamentoF.EdtMedicamentoPropertiesChange(Sender: TObject);
begin
  inherited;
  if EdtMedicamento.Focused then
    Self.executarFiltro;
end;

class function TPesqMedicamentoF.executaPesquisaMedicamento01(pId: TcxButtonEdit): Boolean;
begin
  Result := False;
  PesqMedicamentoF := TPesqMedicamentoF.Create(nil);
  try
    PesqMedicamentoF.CdsPesquisa.Close;
    PesqMedicamentoF.CdsPesquisa.Open;
    PesqMedicamentoF.ShowModal;
    if PesqMedicamentoF.ModalResult = mrOk then
    begin
      pId.Text := PesqMedicamentoF.CdsPesquisaIDMEDICAMENTO.AsString;
      Result := True;
    end;
  finally
    PesqMedicamentoF.CdsPesquisa.Close;
    PesqMedicamentoF.Release;
    PesqMedicamentoF := nil;
  end;
end;

class function TPesqMedicamentoF.executaPesquisaMedicamento02(pCds: TClientDataSet): Boolean;
begin
  Result := False;
  PesqMedicamentoF := TPesqMedicamentoF.Create(nil);
  try
    PesqMedicamentoF.CdsPesquisa.Close;
    PesqMedicamentoF.CdsPesquisa.Open;
    PesqMedicamentoF.ShowModal;
    if PesqMedicamentoF.ModalResult = mrOk then
    begin
      pCds.FieldByName('IDMEDICAMENTO').AsString := PesqMedicamentoF.CdsPesquisaIDMEDICAMENTO.AsString;
      pCds.FieldByName('MEDICAMENTO').AsString   := PesqMedicamentoF.CdsPesquisaDESCRICAO.AsString;
      Result := True;
    end;
  finally
    PesqMedicamentoF.CdsPesquisa.Close;
    PesqMedicamentoF.Release;
    PesqMedicamentoF := nil;
  end;
end;

class function TPesqMedicamentoF.executaPesquisaMedicamento03(pCds: TClientDataSet; pId: Integer): Boolean;
begin
  Result := False;
  PesqMedicamentoF := TPesqMedicamentoF.Create(nil);
  try
    PesqMedicamentoF.CdsPesquisa.Close;
    PesqMedicamentoF.CdsPesquisa.CommandText :=
       ' SELECT MED.* '
      +'       ,MUS.DESCRICAO AS MEDICAMENTOUSO '
      +'       ,MQT.DESCRICAO AS MEDICAMENTOQTDE '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM MEDICAMENTO MED '
      +'        JOIN MEDICAMENTOUSO MUS ON (MUS.IDMEDICAMENTOUSO = MED.IDMEDICAMENTOUSO) '
      +'        JOIN MEDICAMENTOQTDE MQT ON (MQT.IDMEDICAMENTOQTDE = MED.IDMEDICAMENTOQTDE) '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = MED.IDSITUACAOREGISTRO) '
      +'  WHERE 1 = 1 '
      +'   AND MED.IDMEDICAMENTO = '+IntToStr(pId);
      ;
    PesqMedicamentoF.CdsPesquisa.Open;
    if not PesqMedicamentoF.CdsPesquisa.IsEmpty then
    begin
      pCds.FieldByName('IDMEDICAMENTO').AsString := PesqMedicamentoF.CdsPesquisaIDMEDICAMENTO.AsString;
      pCds.FieldByName('MEDICAMENTO').AsString   := PesqMedicamentoF.CdsPesquisaDESCRICAO.AsString;
      Result := True;
    end
    else
    begin
      pCds.FieldByName('IDMEDICAMENTO').Clear;
      pCds.FieldByName('MEDICAMENTO').Clear;
    end;
  finally
    PesqMedicamentoF.CdsPesquisa.Close;
    PesqMedicamentoF.Release;
    PesqMedicamentoF := nil;
  end;
end;

procedure TPesqMedicamentoF.executarFiltro;
begin
  Self.CdsPesquisa.Close;
  Self.CdsPesquisa.CommandText :=
     ' SELECT MED.* '
    +'       ,MUS.DESCRICAO AS MEDICAMENTOUSO '
    +'       ,MQT.DESCRICAO AS MEDICAMENTOQTDE '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM MEDICAMENTO MED '
    +'        JOIN MEDICAMENTOUSO MUS ON (MUS.IDMEDICAMENTOUSO = MED.IDMEDICAMENTOUSO) '
    +'        JOIN MEDICAMENTOQTDE MQT ON (MQT.IDMEDICAMENTOQTDE = MED.IDMEDICAMENTOQTDE) '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = MED.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = 1 '
    ;

  if Trim(EdtMedicamento.Text) <> EmptyStr then
  begin
    Self.CdsPesquisa.CommandText :=
      Self.CdsPesquisa.CommandText + ' AND (    MED.DESCRICAO LIKE ''%'+EdtMedicamento.Text+'%'' '
                                   +'        OR MUS.DESCRICAO LIKE ''%'+EdtMedicamento.Text+'%'' '
                                   +'        OR MQT.DESCRICAO LIKE ''%'+EdtMedicamento.Text+'%'' '
                                   +'      ) ';
  end;

  Self.CdsPesquisa.CommandText :=
    Self.CdsPesquisa.CommandText + ' ORDER BY MED.DESCRICAO, MUS.DESCRICAO, SRE.DESCRICAO ';

  Self.CdsPesquisa.Open;
end;

end.
