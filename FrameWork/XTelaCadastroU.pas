unit XTelaCadastroU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxPC, ComCtrls,
  ExtCtrls, Grids, DBGrids, ActnList, Menus, StdCtrls, ImgList,
  DB, DBClient, DBCtrls, Mask, frxClass, frxDBSet, Provider, FMTBcd,
  SqlExpr, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxButtons, frxExportXLS, frxExportHTML, frxExportPDF,
  cxCheckBox, XLibGenericoU, cxButtonEdit, XLibMessages, dxRibbonForm;

type
  TXTelaCadastroF = class(TForm)
    BarraDeStatus: TStatusBar;
    PnlTelaCadastro: TPanel;
    PnlBotao: TPanel;
    PcTelaCadastro: TcxPageControl;
    Timer: TTimer;
    AcaoTela: TActionList;
    AcaoIncluir: TAction;
    AcaoAlterar: TAction;
    AcaoConfirmar: TAction;
    AcaoCancelar: TAction;
    AcaoExcluir: TAction;
    AcaoConsultar: TAction;
    AcaoSairTela: TAction;
    ImageList32: TcxImageList;
    ImageList16: TcxImageList;
    BtnExcluir: TcxButton;
    BtnCancelar: TcxButton;
    BtnConfirmar: TcxButton;
    BtnAlterar: TcxButton;
    BtnIncluir: TcxButton;
    BtnSair: TcxButton;
    BtnConsultar: TcxButton;
    PnlChaves: TPanel;
    procedure AcaoIncluirExecute(Sender: TObject);
    procedure AcaoAlterarExecute(Sender: TObject);
    procedure AcaoConfirmarExecute(Sender: TObject);
    procedure AcaoCancelarExecute(Sender: TObject);
    procedure AcaoExcluirExecute(Sender: TObject);
    procedure AcaoSairTelaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure AcaoConsultarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TimerTimer(Sender: TObject);

  private
    { Private declarations }
    Cds: TClientDataSet;
    _nextValue: Boolean;
    procedure setColorAcao(const pOperacaoTela: TOperacaoTela);

  public
    { Public declarations }

    // Variaveis da tela
    _operacaoTela: TOperacaoTela;
   // Tela: TXTelaCadastroF;
    vBo_PodeInserir: Boolean;
    vBo_PodeAlterar: Boolean;
    vBo_PodeRemover: Boolean;
    vBo_PodeRelatorio: Boolean;

    procedure setOperacaoTela(const vOperacaoTela: TOperacaoTela);
    function getOperacaoTela: TOperacaoTela;

    // Configuracoes Padroes Para Ser Sobrescrito
    procedure controleBotoesPermissao; Virtual;

    procedure setCds(const pValor: TClientDataSet); virtual;
    procedure setNextValue(const pValor: Boolean);
    procedure ConfigurarTela;
    procedure ConfiguraComponentes; Virtual;
    procedure StatusJanela(const pStatus: TDataSetState);
    procedure SetaComponentes(const pStatus: TDataSetState);
    procedure ControleBotoes; Virtual;
    procedure clearData; virtual;
    function validarAntesConfirmacao: Boolean; Virtual;

    destructor Destroy; override;
  end;

var
  XTelaCadastroF: TXTelaCadastroF;

implementation

uses
  cxImage, cxCurrencyEdit, cxSpinEdit;


{$R *.dfm}

procedure TXTelaCadastroF.AcaoAlterarExecute(Sender: TObject);
begin
  Self.setOperacaoTela(opAlterar);
  Self.clearData;
  ControleBotoes;
end;

procedure TXTelaCadastroF.AcaoCancelarExecute(Sender: TObject);
begin
  Self.setOperacaoTela(opNeutro);
  self.clearData;
  self.ControleBotoes;
end;

procedure TXTelaCadastroF.AcaoIncluirExecute(Sender: TObject);
begin
  Self.setOperacaoTela(opIncluir);
  Self.clearData;
  Self.ControleBotoes;
end;

procedure TXTelaCadastroF.AcaoExcluirExecute(Sender: TObject);
begin
  Self.setOperacaoTela(opExcluir);
  Self.clearData;
  Self.ControleBotoes;
end;

procedure TXTelaCadastroF.AcaoSairTelaExecute(Sender: TObject);
begin
  Self.setOperacaoTela(opNeutro);
  Self.Close;
end;

procedure TXTelaCadastroF.clearData;
begin
  Self.setNextValue(True);
end;

procedure TXTelaCadastroF.AcaoConfirmarExecute(Sender: TObject);
begin
  try
    if Self.validarAntesConfirmacao then
    begin

      if Cds.State in [dsInsert, dsEdit] then
      begin
        //if (not ValidarCamposObrigatorios(Cds)) then
        //  Exit;
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
        if Self.getOperacaoTela = opIncluir then
          TRotinaGenerica.MensagemGeral(msgCadPdrInclusaoSucesso, MsgInformar, BtOk)
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
      Self.setOperacaoTela(opNeutro);
    end;
  except
    on E:Exception do
    begin
      raise Exception.Create('Ocorreu um erro ao executar o sistema:' + #13 +  E.message);
    end;
  end;
end;

procedure TXTelaCadastroF.AcaoConsultarExecute(Sender: TObject);
begin
  Self.setOperacaoTela(opConsultar);
  Self.clearData;
  ControleBotoes;
end;

procedure TXTelaCadastroF.ConfiguraComponentes;
var
  i: Integer;
begin
  for i:=0 to ComponentCount-1 do
  begin
    TRotinaGenerica.confiruraComponente(Components[i]);
  end;
end;

procedure TXTelaCadastroF.ConfigurarTela;
begin
  //Tela.ConfiguraComponentes;
  //Tela.ControleBotoes;
  Self.ConfiguraComponentes;
  Self.ControleBotoes;
end;

procedure TXTelaCadastroF.ControleBotoes;
begin
  controleBotoesPermissao; // As telas implementam esse metodo para atualizar os botoes
  AcaoIncluir.Enabled   := vBo_PodeInserir;
  AcaoAlterar.Enabled   := vBo_PodeAlterar;
  AcaoConsultar.Enabled := True;
  AcaoExcluir.Enabled   := vBo_PodeRemover;
  AcaoConfirmar.Enabled := (Cds.State in [dsInsert, dsEdit]) or ( (Self.getOperacaoTela = opExcluir) and (not Cds.IsEmpty) );
  AcaoCancelar.Enabled  := (Cds.State in [dsInsert, dsEdit]) or ( (Self.getOperacaoTela = opExcluir) and (not Cds.IsEmpty) );
end;

procedure TXTelaCadastroF.controleBotoesPermissao;
begin

end;

destructor TXTelaCadastroF.Destroy;
begin
  inherited;

end;

procedure TXTelaCadastroF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    //Tela.Release;
    //Tela := Nil;

    Self.Release;
//    Self := nil;

//    XTelaCadastroF.Release;
//    XTelaCadastroF := nil;
  except
    on E:Exception do
    begin
      raise Exception.Create('Ocorreu um erro ao executar o sistema:' + #13 +  E.message);
    end;
  end;
end;

procedure TXTelaCadastroF.FormCreate(Sender: TObject);
begin
  try
    //Tela := Self;
    Self.setOperacaoTela(opNeutro);

    Self.vBo_PodeInserir   := True;
    Self.vBo_PodeAlterar   := True;
    Self.vBo_PodeRemover   := True;
    Self.vBo_PodeRelatorio := True;

    Self.ConfigurarTela;
    Self.setNextValue(True);
  except
    on E:Exception do
    begin
      raise Exception.Create('Ocorreu um erro ao executar o sistema:' + #13 +  E.message);
    end;
  end;
end;

procedure TXTelaCadastroF.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

function TXTelaCadastroF.getOperacaoTela: TOperacaoTela;
begin
  Result := Self._operacaoTela;
end;

procedure TXTelaCadastroF.SetaComponentes(const pStatus: TDataSetState);
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

procedure TXTelaCadastroF.setCds(const pValor: TClientDataSet);
begin
  if pValor.Active then
    pValor.Close;

  pValor.Open;
  Self.Cds := pValor;

  if Assigned(pValor) then
    StatusJanela(pValor.State);
end;

procedure TXTelaCadastroF.setColorAcao(const pOperacaoTela: TOperacaoTela);
begin
  BtnIncluir.Colors.Normal       := clDefault;
  BtnIncluir.Colors.NormalText   := clDefault;
  BtnAlterar.Colors.Normal       := clDefault;
  BtnAlterar.Colors.NormalText   := clDefault;
  BtnExcluir.Colors.Normal       := clDefault;
  BtnExcluir.Colors.NormalText   := clDefault;
  BtnConsultar.Colors.Normal     := clDefault;
  BtnConsultar.Colors.NormalText := clDefault;

  // Incluir
  if pOperacaoTela= opIncluir then
  begin
    BtnIncluir.Colors.Normal       := clSilver;
    BtnIncluir.Colors.NormalText   := clBlue;
  end
  else
  // Alterar
  if pOperacaoTela= opAlterar then
  begin
    BtnAlterar.Colors.Normal       := clSilver;
    BtnAlterar.Colors.NormalText   := clBlue;
  end
  else
  // Excluir
  if pOperacaoTela= opExcluir then
  begin
    BtnExcluir.Colors.Normal       := clSilver;
    BtnExcluir.Colors.NormalText   := clBlue;
  end
  else
  // Consultar
  if pOperacaoTela= opConsultar then
  begin
    BtnConsultar.Colors.Normal     := clSilver;
    BtnConsultar.Colors.NormalText := clBlue;
  end;
end;

procedure TXTelaCadastroF.setNextValue(const pValor: Boolean);
begin
  Self._nextValue := pValor;
end;

procedure TXTelaCadastroF.setOperacaoTela(const vOperacaoTela: TOperacaoTela);
begin
  Self._operacaoTela := vOperacaoTela;
  setColorAcao(Self._operacaoTela);

  BtnIncluir.TabStop   := True;
  BtnAlterar.TabStop   := True;
  BtnExcluir.TabStop   := True;
  BtnConsultar.TabStop := True;
  if Self.getOperacaoTela in [opIncluir, opAlterar, opExcluir, opConsultar] then
  begin
    BtnIncluir.TabStop   := False;
    BtnAlterar.TabStop   := False;
    BtnExcluir.TabStop   := False;
    BtnConsultar.TabStop := False;
  end;
end;

procedure TXTelaCadastroF.StatusJanela(const pStatus: TDataSetState);
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

procedure TXTelaCadastroF.TimerTimer(Sender: TObject);
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
  if Self.getOperacaoTela = opConsultar then
    BarraDeStatus.Panels[0].Text := ' Operação: "Consulta"';

  Self.BarraDeStatus.Panels[2].Text := TcxButton(Self).Hint;
end;

function TXTelaCadastroF.validarAntesConfirmacao: Boolean;
begin
  Result := True;
end;

end.
