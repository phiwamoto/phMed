unit XTelaConsultaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ActnList, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, ImgList, DB, DBClient, DmConexaoU,
  XLibGenericoU, ComCtrls;

type
  TXTelaConsultaF = class(TForm)
    PnlGeral: TPanel;
    AcaoTela: TActionList;
    AcaoSair: TAction;
    ImageList16: TcxImageList;
    PnlBotao: TPanel;
    BtnSair: TcxButton;
    PnlFiltros: TPanel;
    DsConsulta: TDataSource;
    CdsConsulta: TClientDataSet;
    BarraDeStatus: TStatusBar;
    procedure AcaoSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure configuraComponentes;
    procedure configurarTela;

  public
    { Public declarations }

  end;

var
  XTelaConsultaF: TXTelaConsultaF;

implementation

{$R *.dfm}

procedure TXTelaConsultaF.configuraComponentes;
var
  i: Integer;
begin
  for i:=0 to ComponentCount-1 do
  begin
    TRotinaGenerica.confiruraComponente(Components[i]);
  end;
end;

procedure TXTelaConsultaF.configurarTela;
begin
  Self.configuraComponentes;
  //Tela.ControleBotoes;
end;

procedure TXTelaConsultaF.AcaoSairExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TXTelaConsultaF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.CdsConsulta.Close;
end;

procedure TXTelaConsultaF.FormCreate(Sender: TObject);
begin
  Self.configurarTela;

  Self.CdsConsulta.Open;
end;

procedure TXTelaConsultaF.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key = $0D) or (KEY = $09) then
  begin
    Screen.ActiveForm.Perform(WM_NextDlgCtl, 0, 0);
    key := $0;
  end;
end;

end.
