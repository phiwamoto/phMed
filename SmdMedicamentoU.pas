unit SmdMedicamentoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaShowModalU, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxCheckBox, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, Menus, cxButtons, DB, DBClient;

type
  TSmdMedicamentoF = class(TXTelaShowModalF)
    LblMedicamento: TLabel;
    LblDataInclusao: TLabel;
    LblMedicamentoQuantidade: TLabel;
    LblMedicamentoUso: TLabel;
    DbComboMedicamentoQtde: TcxDBComboBox;
    DbMedicamento: TcxDBTextEdit;
    DbDataInclusao: TcxDBDateEdit;
    DbComboMedicamentoQtdeID: TcxDBComboBox;
    CbAtivo: TcxDBCheckBox;
    DbComboMedicamentoUso: TcxDBComboBox;
    DbComboMedicamentoUsoID: TcxDBComboBox;
    BtnCancelar: TcxButton;
    BtnSalvar: TcxButton;
    DsMedicamento: TDataSource;
    CdsMedicamento: TClientDataSet;
    CdsMedicamentoIDMEDICAMENTO: TIntegerField;
    CdsMedicamentoIDMEDICAMENTOQTDE: TIntegerField;
    CdsMedicamentoIDMEDICAMENTOUSO: TIntegerField;
    CdsMedicamentoIDSITUACAOREGISTRO: TSmallintField;
    CdsMedicamentoDATAINCLUSAO: TDateField;
    CdsMedicamentoDESCRICAO: TStringField;
    CdsMedicamentoPOSOLOGIA: TStringField;
    CdsMedicamentoMEDICAMENTOUSO: TStringField;
    CdsMedicamentoMEDICAMENTOQTDE: TStringField;
    CdsMedicamentoSITUACAOREGISTRO: TStringField;
    procedure CdsMedicamentoAfterInsert(DataSet: TDataSet);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DbComboMedicamentoQtdePropertiesChange(Sender: TObject);
    procedure DbComboMedicamentoUsoPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    idMedicamento: Integer;

  public
    { Public declarations }

    class function chamaTelaIncluir(var pIdMedicamento: Integer): Boolean;
    class function chamaTelaAlterar(const pIdMedicamento: Integer): Boolean;

  end;

var
  SmdMedicamentoF: TSmdMedicamentoF;

implementation

uses DmRotinaU, LibRotinasSistemaU, DmConexaoU, XLibGenericoU;

{$R *.dfm}

{ TSmdMedicamentoF }

procedure TSmdMedicamentoF.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TSmdMedicamentoF.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TSmdMedicamentoF.CdsMedicamentoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsMedicamento.FieldByName('IDMEDICAMENTO').AsInteger      := DmConexaoF.Proximo('MEDICAMENTO', 'IDMEDICAMENTO');
  CdsMedicamento.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsMedicamento.FieldByName('IDSITUACAOREGISTRO').AsInteger := 1; // 0 - Inativo    1 - Ativo
  CdsMedicamento.FieldByName('POSOLOGIA').AsString := 'Não Utilizar.';
end;

class function TSmdMedicamentoF.chamaTelaAlterar(const pIdMedicamento: Integer): Boolean;
begin
  Result := False;
  SmdMedicamentoF := TSmdMedicamentoF.Create(nil);
  try
    SmdMedicamentoF.CdsMedicamento.Open;
    TCarregarComboDB.carregarMedicamentoQtde(SmdMedicamentoF.DbComboMedicamentoQtde, SmdMedicamentoF.DbComboMedicamentoQtdeID);
    TCarregarComboDB.carregarMedicamentoUso(SmdMedicamentoF.DbComboMedicamentoUso, SmdMedicamentoF.DbComboMedicamentoUsoID);

    SmdMedicamentoF.CdsMedicamento.Locate('IDMEDICAMENTO', pIdMedicamento, []);
    SmdMedicamentoF.CdsMedicamento.Edit;

    SmdMedicamentoF.ShowModal;
 
    if SmdMedicamentoF.ModalResult = mrOk then
    begin
      SmdMedicamentoF.CdsMedicamento.Post;
      SmdMedicamentoF.CdsMedicamento.ApplyUpdates(0);
      Result := True;
    end
    else if SmdMedicamentoF.ModalResult = mrCancel then
    begin
      SmdMedicamentoF.CdsMedicamento.CancelUpdates;
      Result := False;
    end;

  finally
    SmdMedicamentoF.CdsMedicamento.Close;
    SmdMedicamentoF.Release;
    SmdMedicamentoF := nil;
  end;
end;

class function TSmdMedicamentoF.chamaTelaIncluir(var pIdMedicamento: Integer): Boolean;
begin
  Result := False;
  SmdMedicamentoF := TSmdMedicamentoF.Create(nil);
  try
    SmdMedicamentoF.CdsMedicamento.Open;
    TCarregarComboDB.carregarMedicamentoQtde(SmdMedicamentoF.DbComboMedicamentoQtde, SmdMedicamentoF.DbComboMedicamentoQtdeID);
    TCarregarComboDB.carregarMedicamentoUso(SmdMedicamentoF.DbComboMedicamentoUso, SmdMedicamentoF.DbComboMedicamentoUsoID);
    SmdMedicamentoF.CdsMedicamento.Insert;
    SmdMedicamentoF.ShowModal;

    if SmdMedicamentoF.ModalResult = mrOk then
    begin
      SmdMedicamentoF.CdsMedicamento.Post;
      SmdMedicamentoF.CdsMedicamento.ApplyUpdates(0);
      pIdMedicamento := SmdMedicamentoF.CdsMedicamentoIDMEDICAMENTO.AsInteger;
      Result := True;
    end
    else if SmdMedicamentoF.ModalResult = mrCancel then
    begin
      SmdMedicamentoF.CdsMedicamento.CancelUpdates;
      Result := False;
    end;

  finally
    SmdMedicamentoF.CdsMedicamento.Close;
    SmdMedicamentoF.Release;
    SmdMedicamentoF := nil;
  end;
end;

procedure TSmdMedicamentoF.DbComboMedicamentoQtdePropertiesChange(
  Sender: TObject);
begin
  inherited;
  DbComboMedicamentoQtdeID.ItemIndex := DbComboMedicamentoQtde.ItemIndex;
end;

procedure TSmdMedicamentoF.DbComboMedicamentoUsoPropertiesChange(Sender: TObject);
begin
  inherited;
  DbComboMedicamentoUsoID.ItemIndex := DbComboMedicamentoUso.ItemIndex;
end;

procedure TSmdMedicamentoF.FormShow(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.tentaFocar(DbMedicamento);
end;

end.
