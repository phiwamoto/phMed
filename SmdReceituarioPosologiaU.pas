unit SmdReceituarioPosologiaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaShowModalU, StdCtrls, ExtCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit;

type
  TSmdReceituarioPosologiaF = class(TXTelaShowModalF)
    BtnConfirmar: TcxButton;
    EdtPosologia: TcxTextEdit;
    LblPosologia: TLabel;
    LblMedicamento: TLabel;
    LblMedicamentoDescricao: TLabel;
    LblMedicamentoUso: TLabel;
    LblMedicamentoUsoDescricao: TLabel;
    LblMedicamentoQuantidadeDescricao: TLabel;
    LblMedicamentoQuantidade: TLabel;
    procedure BtnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    vMedicamento, vMedicamentoUso, vMedicamentoQtde: String;

  public
    { Public declarations }
    class function chamaTelaInformarPosologia(const pMedicamento, pMedicamentoUso, pMedicamentoQtde: String): String;

  end;

var
  SmdReceituarioPosologiaF: TSmdReceituarioPosologiaF;

implementation

uses XLibGenericoU;

{$R *.dfm}

{ TSmdReceituarioPosologiaF }

procedure TSmdReceituarioPosologiaF.BtnConfirmarClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
end;

class function TSmdReceituarioPosologiaF.chamaTelaInformarPosologia(const pMedicamento, pMedicamentoUso, pMedicamentoQtde: String): String;
begin
  Result := EmptyStr;
  SmdReceituarioPosologiaF := TSmdReceituarioPosologiaF.Create(nil);
  try
    SmdReceituarioPosologiaF.LblMedicamentoDescricao.Caption           := 'Medicamento não encontrado!';
    SmdReceituarioPosologiaF.LblMedicamentoUsoDescricao.Caption        := 'Uso não encontrado!';
    SmdReceituarioPosologiaF.LblMedicamentoQuantidadeDescricao.Caption := 'Quantidade não encontrado!';

    SmdReceituarioPosologiaF.vMedicamento     := pMedicamento;
    SmdReceituarioPosologiaF.vMedicamentoUso  := pMedicamentoUso;
    SmdReceituarioPosologiaF.vMedicamentoQtde := pMedicamentoQtde;

    if Trim(SmdReceituarioPosologiaF.vMedicamento) <> EmptyStr then
      SmdReceituarioPosologiaF.LblMedicamentoDescricao.Caption := SmdReceituarioPosologiaF.vMedicamento;
    if Trim(SmdReceituarioPosologiaF.vMedicamentoUso) <> EmptyStr then
      SmdReceituarioPosologiaF.LblMedicamentoUsoDescricao.Caption := SmdReceituarioPosologiaF.vMedicamentoUso;
    if Trim(SmdReceituarioPosologiaF.vMedicamentoQtde) <> EmptyStr then
      SmdReceituarioPosologiaF.LblMedicamentoQuantidadeDescricao.Caption := SmdReceituarioPosologiaF.vMedicamentoQtde;

    SmdReceituarioPosologiaF.ShowModal;
    if SmdReceituarioPosologiaF.ModalResult = mrOk then
      Result := SmdReceituarioPosologiaF.EdtPosologia.Text;

  finally
    SmdReceituarioPosologiaF.Release;
    SmdReceituarioPosologiaF := nil;
  end;
end;

procedure TSmdReceituarioPosologiaF.FormShow(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.tentaFocar(EdtPosologia);
end;

end.
