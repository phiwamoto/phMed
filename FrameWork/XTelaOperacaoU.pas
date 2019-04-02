unit XTelaOperacaoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxPC, ComCtrls,
  ExtCtrls, Grids, DBGrids, ActnList, Menus, StdCtrls, ImgList,
  DB, DBClient, DBCtrls, Mask, frxClass, frxDBSet, Provider, FMTBcd,
  SqlExpr, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxButtons, frxExportXLS, frxExportHTML, frxExportPDF,
  cxCheckBox, XLibGenericoU, cxButtonEdit, XLibMessages;

type
  TXTelaOperacaoF = class(TForm)
    ImageList32: TcxImageList;
    ImageList16: TcxImageList;
    Timer: TTimer;
    AcaoTela: TActionList;
    AcaoSairTela: TAction;
    BarraDeStatus: TStatusBar;
    PnlBotao: TPanel;
    BtnSair: TcxButton;
    PnlChaves: TPanel;
    PnlTelaCadastro: TPanel;
    PcTelaCadastro: TcxPageControl;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure AcaoSairTelaExecute(Sender: TObject);

  private
    { Private declarations }
    _nextValue: Boolean;

    procedure ConfigurarTela;

  public
    { Public declarations }
    procedure ConfiguraComponentes; Virtual;
    procedure SetaComponentes(const pStatus: TDataSetState);
    procedure setNextValue(const pValor: Boolean);

  end;

var
  XTelaOperacaoF: TXTelaOperacaoF;

implementation

uses LibRotinasSistemaU, XLibTypesClient, cxImage, cxCurrencyEdit, cxSpinEdit;

{$R *.dfm}

{ TXTelaOperacaoF }

procedure TXTelaOperacaoF.AcaoSairTelaExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TXTelaOperacaoF.ConfiguraComponentes;
var
  i: Integer;
begin
  for i:=0 to ComponentCount-1 do
  begin
    TRotinaGenerica.confiruraComponente(Components[i]);
  end;
end;

procedure TXTelaOperacaoF.ConfigurarTela;
begin
  Self.ConfiguraComponentes;
end;


procedure TXTelaOperacaoF.FormCreate(Sender: TObject);
begin
  Self.ConfigurarTela;
  Self.setNextValue(True);
end;

procedure TXTelaOperacaoF.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TXTelaOperacaoF.SetaComponentes(const pStatus: TDataSetState);
var
  i: Integer;
begin
  for i := 0 to ComponentCount-1 do
  begin
    if (Components[i] is TEdit) then
      TEdit(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TDBEdit) then
      TDBEdit(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TCustomComboBox) then
      TCustomComboBox(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TDBMemo) then
      TDBMemo(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TCustomCheckBox) then
      TCustomCheckBox(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TDBRadioGroup) then
      TCustomCheckBox(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    // Componentees Cx
    if (Components[i] is TcxDBTextEdit) then
      TcxDBTextEdit(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TcxDBComboBox) then
      TcxDBComboBox(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TcxComboBox) then
      TcxComboBox(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TCxDbCheckBox) then
      TCxDbCheckBox(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TcxDBDateEdit) then
      TcxDBDateEdit(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TcxDBButtonEdit) then
      TcxDBButtonEdit(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TcxDBMemo) then
      TcxDBMemo(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TcxDBTimeEdit) then
      TcxDBTimeEdit(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TcxImage) then
      TcxImage(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TcxDBImage) then
      TcxDBImage(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TcxDBCurrencyEdit) then
      TcxDBCurrencyEdit(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TcxCurrencyEdit) then
      TcxCurrencyEdit(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TcxDBSpinEdit) then
      TcxDBSpinEdit(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);

    if (Components[i] is TcxSpinEdit) then
      TcxSpinEdit(Components[i]).Enabled := (pStatus in [dsInsert, dsEdit]);
  end;
end;

procedure TXTelaOperacaoF.setNextValue(const pValor: Boolean);
begin
  Self._nextValue := pValor;
end;

end.
