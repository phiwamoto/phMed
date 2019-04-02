unit XPesquisaPadraoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, DmConexaoU, DB, DBClient, cxControls,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TXPesquisaPadrao = class(TForm)
    pnlTop: TPanel;
    PnlFundo: TPanel;
    PnlBotton: TPanel;
    PnlRight: TPanel;
    PnlLeft: TPanel;
    PnlCaption: TPanel;
    LblPesquisa: TLabel;
    PnlBotao: TPanel;
    PnlFiltros: TPanel;
    BtnSelecionar: TcxButton;
    BtnCancelar: TcxButton;
    DsPesquisa: TDataSource;
    CdsPesquisa: TClientDataSet;
    GridPesquisaDBTableView1: TcxGridDBTableView;
    GridPesquisaLevel1: TcxGridLevel;
    GridPesquisa: TcxGrid;
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure GridPesquisaDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  XPesquisaPadrao: TXPesquisaPadrao;

implementation

{$R *.dfm}

procedure TXPesquisaPadrao.BtnCancelarClick(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

procedure TXPesquisaPadrao.BtnSelecionarClick(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;

procedure TXPesquisaPadrao.GridPesquisaDBTableView1DblClick(Sender: TObject);
begin
  BtnSelecionarClick(Sender);
end;

end.
