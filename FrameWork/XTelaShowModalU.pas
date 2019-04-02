unit XTelaShowModalU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  cxButtons, ExtCtrls;

type
  TXTelaShowModalF = class(TForm)
    PnlBotton: TPanel;
    PnlFundo: TPanel;
    PnlCaption: TPanel;
    LblPesquisa: TLabel;
    PnlBotao: TPanel;
    PnlFiltros: TPanel;
    PnlLeft: TPanel;
    PnlRight: TPanel;
    pnlTop: TPanel;
    PnlInformacao: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
    _nextValue: Boolean;

    procedure ConfiguraComponentes;


  public
    { Public declarations }
    procedure setNextValue(const pValor: Boolean);

  end;

var
  XTelaShowModalF: TXTelaShowModalF;

implementation

uses XLibGenericoU;

{$R *.dfm}

{ TXTelaShowModalF }

procedure TXTelaShowModalF.ConfiguraComponentes;
var
  i: Integer;
begin
  for i:=0 to ComponentCount-1 do
  begin
    TRotinaGenerica.confiruraComponente(Components[i]);
  end;
end;

procedure TXTelaShowModalF.FormCreate(Sender: TObject);
begin
  ConfiguraComponentes;
  setNextValue(True);
end;

procedure TXTelaShowModalF.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if _nextValue then
  begin
    if (Key = $0D) or (Key = $09) then
    begin
      Screen.ActiveForm.Perform(WM_NextDlgCtl, 0, 0);
      Key := $0;
    end;
  end;
end;

procedure TXTelaShowModalF.setNextValue(const pValor: Boolean);
begin
  _nextValue := pValor;
end;

end.
