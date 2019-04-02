unit XTelaRelatorioU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ActnList,
  ComCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  cxButtons, ImgList, frxExportHTML, frxExportXLS, frxClass, frxExportPDF,
  XLibGenericoU, DmRelatorioU, frxChart;

type
  TXTelaRelatorioF = class(TForm)
    AcaoTela: TActionList;
    AcaoSair: TAction;
    PnlGeral: TPanel;
    AcaoVisualisar: TAction;
    ImageList16: TcxImageList;
    PnlBotao: TPanel;
    BtnBaixa: TcxButton;
    BtnExcluir: TcxButton;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxObjetoGrafico: TfrxChartObject;
    procedure AcaoSairExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
    procedure configuraComponentes;
    procedure configurarTela;

  public
    { Public declarations }

  end;

var
  XTelaRelatorioF: TXTelaRelatorioF;

implementation

{$R *.dfm}

{ TXTelaRelatorioF }

procedure TXTelaRelatorioF.configuraComponentes;
var
  i: Integer;
begin
  for i:=0 to ComponentCount-1 do
  begin
    TRotinaGenerica.confiruraComponente(Components[i]);
  end;
end;

procedure TXTelaRelatorioF.configurarTela;
begin
  Self.configuraComponentes;
  //Tela.ControleBotoes;
end;

procedure TXTelaRelatorioF.AcaoSairExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TXTelaRelatorioF.FormCreate(Sender: TObject);
begin
  Self.configurarTela;
end;

procedure TXTelaRelatorioF.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=$0D) or (KEY=$09) then
  begin
    Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
    key:=$0;
  end;
end;

end.
