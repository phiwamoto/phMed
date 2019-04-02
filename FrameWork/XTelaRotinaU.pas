unit XTelaRotinaU;

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
  TXTelaRotinaF = class(TForm)
    BarraDeStatus: TStatusBar;
    PnlTelaCadastro: TPanel;
    PnlBotao: TPanel;
    PcTelaCadastro: TcxPageControl;
    Timer: TTimer;
    AcaoTela: TActionList;
    AcaoBaixar: TAction;
    AcaoCancelar: TAction;
    AcaoConsultar: TAction;
    AcaoSairTela: TAction;
    ImageList32: TcxImageList;
    ImageList16: TcxImageList;
    BtnBaixar: TcxButton;
    BtnSair: TcxButton;
    BtnConsultar: TcxButton;
    Panel1: TPanel;
    BtnCancelar: TcxButton;
    AcaoConfirmar: TAction;
    BtnConfirmar: TcxButton;
    procedure AcaoCancelarExecute(Sender: TObject);
    procedure AcaoSairTelaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure AcaoConsultarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TimerTimer(Sender: TObject);
    procedure AcaoBaixarExecute(Sender: TObject);
    procedure AcaoConfirmarExecute(Sender: TObject);

  private
    { Private declarations }
    Cds: TClientDataSet;
    procedure setColorAcao(pOperacaoTela: TOperacaoTela);

  public
    { Public declarations }

    // Variaveis da tela
    _operacaoTela: TOperacaoTela;
    Tela: TXTelaRotinaF;
//    vBo_PodeInserir: Boolean;
    vBo_PodeAlterar: Boolean;
    vBo_PodeRemover: Boolean;
    vBo_PodeRelatorio: Boolean;

    procedure setOperacaoTela(vOperacaoTela: TOperacaoTela);
    function getOperacaoTela: TOperacaoTela;

    // Configuracoes Padroes Para Ser Sobrescrito
    procedure controleBotoesPermissao; Virtual;

    procedure setCds(const pValor: TClientDataSet); virtual;
    procedure ConfigurarTela;
    procedure ConfiguraComponentes; Virtual;
    procedure StatusJanela(const pStatus: TDataSetState);
    procedure SetaComponentes(const pStatus: TDataSetState);
    procedure ControleBotoes; Virtual;
    procedure clearData; virtual;

    class function ValidarCamposObrigatorios(CdsParametro: TClientDataSet): Boolean;
    destructor Destroy; override;
  end;

var
  XTelaRotinaF: TXTelaRotinaF;

implementation

uses
  cxImage, cxCurrencyEdit, cxSpinEdit;


{$R *.dfm}

procedure TXTelaRotinaF.AcaoBaixarExecute(Sender: TObject);
begin
  Self.setOperacaoTela(opBaixar);
  Self.clearData;
  ControleBotoes;
end;

procedure TXTelaRotinaF.AcaoCancelarExecute(Sender: TObject);
begin
  Self.setOperacaoTela(opNeutro);
  self.clearData;
  self.ControleBotoes;
end;

procedure TXTelaRotinaF.AcaoSairTelaExecute(Sender: TObject);
begin
  Self.setOperacaoTela(opNeutro);
  Self.Close;
end;

procedure TXTelaRotinaF.clearData;
begin

end;


procedure TXTelaRotinaF.AcaoConfirmarExecute(Sender: TObject);
begin
  try
    if Cds.State in [dsInsert, dsEdit] then
    begin
      if (not ValidarCamposObrigatorios(Cds)) then
        Exit;
      Cds.UpdateRecord;
      Cds.Post;
    end
    else
    begin
      if Self.getOperacaoTela = opExcluir then
      begin
        Cds.Delete;
      end;
    end;

    if not(Cds.ApplyUpdates(0) > 0) then
    begin
      if Self.getOperacaoTela = opBaixar then
        TRotinaGenerica.MensagemGeral(msgRotPdrBaixaSucesso, MsgInformar, BtOk)
      else
      if Self.getOperacaoTela = opAlterar then
        TRotinaGenerica.MensagemGeral(msgCadPdrAlteracaoSucesso, MsgInformar, BtOk)
      else
      if Self.getOperacaoTela = opExcluir then
        TRotinaGenerica.MensagemGeral(msgCadPdrExclusaoSucesso, MsgInformar, BtOk);
    end
    else
      TRotinaGenerica.MensagemGeral(msgCadPdrConfirmacaoErro, MsgErro, BtOk);
    Cds.Close;
    Self.clearData;
    Self.StatusJanela(Cds.State);
    Self.ControleBotoes;
  except
    on E:Exception do
    begin
      raise Exception.Create('Ocorreu um erro ao executar o sistema:' + #13 +  E.message);
    end;
  end;
  Self.setOperacaoTela(opNeutro);
end;

procedure TXTelaRotinaF.AcaoConsultarExecute(Sender: TObject);
begin
  Self.setOperacaoTela(opConsultar);
  Self.clearData;
  ControleBotoes;
end;

class function TXTelaRotinaF.ValidarCamposObrigatorios(CdsParametro: TClientDataSet): Boolean;
begin
  Result := True;
end;

procedure TXTelaRotinaF.ConfiguraComponentes;
var
  i: Integer;
begin
  for i:=0 to ComponentCount-1 do
  begin
    TRotinaGenerica.confiruraComponente(Components[i]);
  end;
end;

procedure TXTelaRotinaF.ConfigurarTela;
begin
  Tela.ConfiguraComponentes;
  Tela.ControleBotoes;
end;

procedure TXTelaRotinaF.ControleBotoes;
begin
  controleBotoesPermissao; // As telas implementam esse metodo para atualizar os botoes
  AcaoBaixar.Enabled    := vBo_PodeAlterar;
  AcaoConsultar.Enabled := True;
  AcaoConfirmar.Enabled := ( Cds.State in [dsInsert, dsEdit] ) or ( (Self.getOperacaoTela = opExcluir) and (not Cds.IsEmpty) );
  AcaoCancelar.Enabled  := ( Cds.State in [dsInsert, dsEdit] ) or ( (Self.getOperacaoTela = opExcluir) and (not Cds.IsEmpty) );
end;

procedure TXTelaRotinaF.controleBotoesPermissao;
begin

end;

destructor TXTelaRotinaF.Destroy;
begin
  inherited;

end;

procedure TXTelaRotinaF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    Tela.Release;
    Tela := Nil;
  except
    on E:Exception do
    begin
      raise Exception.Create('Ocorreu um erro ao executar o sistema:' + #13 +  E.message);
    end;
  end;
end;

procedure TXTelaRotinaF.FormCreate(Sender: TObject);
begin
  try
    Tela := Self;
    Self.setOperacaoTela(opNeutro);

    //Self.vBo_PodeInserir   := True;
    Self.vBo_PodeAlterar   := True;
    Self.vBo_PodeRemover   := True;
    Self.vBo_PodeRelatorio := True;

    Self.ConfigurarTela;

  except
    on E:Exception do
    begin
      raise Exception.Create('Ocorreu um erro ao executar o sistema:' + #13 +  E.message);
    end;
  end;
end;

procedure TXTelaRotinaF.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=$0D) or (KEY=$09) then
  begin
    Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
    key:=$0;
  end;
end;

function TXTelaRotinaF.getOperacaoTela: TOperacaoTela;
begin
  Result := Self._operacaoTela;
end;

procedure TXTelaRotinaF.SetaComponentes(const pStatus: TDataSetState);
var
  i: Integer;
begin
  for i:=0 to ComponentCount-1 do
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

procedure TXTelaRotinaF.setCds(const pValor: TClientDataSet);
begin
  if pValor.Active then
    pValor.Close;

  pValor.Open;
  Self.Cds := pValor;

  if Assigned(pValor) then
    StatusJanela(pValor.State);
end;

procedure TXTelaRotinaF.setColorAcao(pOperacaoTela: TOperacaoTela);
begin
  BtnBaixar.Colors.Normal         := clDefault;
  BtnBaixar.Colors.NormalText     := clDefault;
  BtnConsultar.Colors.Normal     := clDefault;
  BtnConsultar.Colors.NormalText := clDefault;

  if pOperacaoTela= opBaixar then
  begin
    BtnBaixar.Colors.Normal       := clSilver;
    BtnBaixar.Colors.NormalText   := clBlue;
  end
  else
  if pOperacaoTela= opConsultar then
  begin
    BtnConsultar.Colors.Normal     := clSilver;
    BtnConsultar.Colors.NormalText := clBlue;
  end;
end;

procedure TXTelaRotinaF.setOperacaoTela(vOperacaoTela: TOperacaoTela);
begin
  Self._operacaoTela := vOperacaoTela;
  setColorAcao(Self._operacaoTela);

  BtnBaixar.TabStop   := True;
  BtnConsultar.TabStop := True;
  if Self.getOperacaoTela in [opBaixar, opExcluir, opConsultar] then
  begin
    BtnBaixar.TabStop   := False;
    BtnConsultar.TabStop := False;
  end;
end;

procedure TXTelaRotinaF.StatusJanela(const pStatus: TDataSetState);
begin
  if pStatus in [dsInsert, dsEdit] then
  begin
    SetaComponentes(pStatus);
  end
  else
  begin
    SetaComponentes(pStatus);
  end;
end;

procedure TXTelaRotinaF.TimerTimer(Sender: TObject);
begin
  if Self.getOperacaoTela = opNeutro then
    BarraDeStatus.Panels[0].Text := ' Operação: "Neutro"'
  else
  if Self.getOperacaoTela = opIncluir then
    BarraDeStatus.Panels[0].Text := ' Operação: "Inclusão"'
  else
  if Self.getOperacaoTela = opAlterar then
    BarraDeStatus.Panels[0].Text := ' Operação: "Alteração"'
  else
  if Self.getOperacaoTela = opExcluir then
    BarraDeStatus.Panels[0].Text := ' Operação: "Exclusão"'
  else
  if Self.getOperacaoTela = opBaixar then
    BarraDeStatus.Panels[0].Text := ' Operação: "Baixa"'
  else
  if Self.getOperacaoTela = opConsultar then
    BarraDeStatus.Panels[0].Text := ' Operação: "Consulta"';

  Self.BarraDeStatus.Panels[2].Text := TcxButton(Self).Hint ;
end;

end.
