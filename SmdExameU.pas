unit SmdExameU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaShowModalU, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxCheckBox, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, Menus, cxButtons, DB, DBClient;

type
  TSmdExameF = class(TXTelaShowModalF)
    LblDescricao: TLabel;
    LblDataCadastro: TLabel;
    DbDescricao: TcxDBTextEdit;
    DbDataInclusão: TcxDBDateEdit;
    CbAtivo: TcxDBCheckBox;
    BtnSalvar: TcxButton;
    BtnCancelar: TcxButton;
    DsExame: TDataSource;
    CdsExame: TClientDataSet;
    CdsExameIDEXAME: TIntegerField;
    CdsExameIDSITUACAOREGISTRO: TSmallintField;
    CdsExameDATAINCLUSAO: TDateField;
    CdsExameDESCRICAO: TStringField;
    CdsExameSITUACAOREGISTRO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure CdsExameAfterInsert(DataSet: TDataSet);

  private
    { Private declarations }

  public
    { Public declarations }
    class function chamaTelaIncluir(var pIdExame: Integer): Boolean;
    class function chamaTelaAlterar(const pIdExame: Integer): Boolean;

  end;

var
  SmdExameF: TSmdExameF;

implementation

uses XLibGenericoU, DmConexaoU, DmRotinaU;

{$R *.dfm}

{ TSmdExameF }

procedure TSmdExameF.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TSmdExameF.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TSmdExameF.CdsExameAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsExame.FieldByName('IDEXAME').AsInteger            := DmConexaoF.Proximo('EXAME', 'IDEXAME');
  CdsExame.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsExame.FieldByName('IDSITUACAOREGISTRO').AsInteger := 1; // 0 - Inativo    1 - Ativo
end;

class function TSmdExameF.chamaTelaAlterar(const pIdExame: Integer): Boolean;
begin
  Result := False;
  SmdExameF := TSmdExameF.Create(nil);
  try
    SmdExameF.CdsExame.Open;
    SmdExameF.CdsExame.Locate('IDEXAME', pIdExame, []);
    SmdExameF.CdsExame.Edit;

    SmdExameF.ShowModal;

    if SmdExameF.ModalResult = mrOk then
    begin
      SmdExameF.CdsExame.Post;
      SmdExameF.CdsExame.ApplyUpdates(0);
      Result := True;
    end
    else if SmdExameF.ModalResult = mrCancel then
    begin
      SmdExameF.CdsExame.CancelUpdates;
      Result := False;
    end;

  finally
    SmdExameF.CdsExame.Close;
    SmdExameF.Release;
    SmdExameF := nil;
  end;
end;

class function TSmdExameF.chamaTelaIncluir(var pIdExame: Integer): Boolean;
begin
  Result := False;
  SmdExameF := TSmdExameF.Create(nil);
  try
    SmdExameF.CdsExame.Open;

    SmdExameF.CdsExame.Insert;
    SmdExameF.ShowModal;

    if SmdExameF.ModalResult = mrOk then
    begin
      SmdExameF.CdsExame.Post;
      SmdExameF.CdsExame.ApplyUpdates(0);
      pIdExame := SmdExameF.CdsExameIDEXAME.AsInteger;
      Result := True;
    end
    else if SmdExameF.ModalResult = mrCancel then
    begin
      SmdExameF.CdsExame.CancelUpdates;
      Result := False;
    end;

  finally
    SmdExameF.CdsExame.Close;
    SmdExameF.Release;
    SmdExameF := nil;
  end;
end;

procedure TSmdExameF.FormShow(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.tentaFocar(DbDescricao);
end;

end.
