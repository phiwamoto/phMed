unit CadMedicamentoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaCadastroU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, cxCheckBox, StdCtrls, cxPC, ImgList,
  ActnList, ExtCtrls, cxButtons, ComCtrls, DB, DBClient, cxButtonEdit;

type
  TCadMedicamentoF = class(TXTelaCadastroF)
    TsPrincipal: TcxTabSheet;
    LblMedicamento: TLabel;
    LblDataInclusao: TLabel;
    LblMedicamentoQuantidade: TLabel;
    LblMedicamentoUso: TLabel;
    LblPosologia: TLabel;
    DbMedicamento: TcxDBTextEdit;
    DbDataInclusao: TcxDBDateEdit;
    DbPosologia: TcxDBTextEdit;
    DbComboMedicamentoQtdeID: TcxDBComboBox;
    DbComboMedicamentoQtde: TcxDBComboBox;
    CbAtivo: TcxDBCheckBox;
    DbComboMedicamentoUso: TcxDBComboBox;
    DbComboMedicamentoUsoID: TcxDBComboBox;
    DsMedicamento: TDataSource;
    CdsMedicamento: TClientDataSet;
    EdCodigo: TcxButtonEdit;
    LblCodigo: TLabel;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure AcaoIncluirExecute(Sender: TObject);
    procedure AcaoAlterarExecute(Sender: TObject);
    procedure AcaoExcluirExecute(Sender: TObject);
    procedure AcaoConsultarExecute(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
    procedure CdsMedicamentoAfterInsert(DataSet: TDataSet);
    procedure DbComboMedicamentoQtdePropertiesChange(Sender: TObject);
    procedure DbComboMedicamentoUsoPropertiesChange(Sender: TObject);
    procedure EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure clearData; override;
    function validarAntesConfirmacao: Boolean; override;

  end;

var
  CadMedicamentoF: TCadMedicamentoF;

implementation

uses DmCadastroU, DmConexaoU, LibRotinasSistemaU, XLibGenericoU, XLibMessages,
  PesqMedicamentoU;

{$R *.dfm}


procedure TCadMedicamentoF.AcaoAlterarExecute(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadMedicamentoF.AcaoConsultarExecute(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadMedicamentoF.AcaoExcluirExecute(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadMedicamentoF.AcaoIncluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;

  // INCLUIR
  if Self.getOperacaoTela = opIncluir then
  begin
    CdsMedicamento.Close;
    CdsMedicamento.Open;
    CdsMedicamento.Insert;
    SetaComponentes(dsInsert);
    EdCodigo.Enabled := False;
  end;
  ControleBotoes;
  TRotinaGenerica.TentaFocar(DbMedicamento);
end;

procedure TCadMedicamentoF.CdsMedicamentoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsMedicamento.FieldByName('IDMEDICAMENTO').AsInteger      := DmConexaoF.Proximo('MEDICAMENTO', 'IDMEDICAMENTO');
  CdsMedicamento.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsMedicamento.FieldByName('IDSITUACAOREGISTRO').AsInteger := 1; // 0 - Inativo    1 - Ativo
  CdsMedicamento.FieldByName('POSOLOGIA').AsString := 'Não Utilizar.';
end;

procedure TCadMedicamentoF.clearData;
begin
  inherited;
  // Limpando Cds
  Self.CdsMedicamento.Close;
  Self.CdsMedicamento.CommandText :=
     ' SELECT MED.* '
    +'       ,MUS.DESCRICAO AS MEDICAMENTOUSO '
    +'       ,MQT.DESCRICAO AS MEDICAMENTOQTDE '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM MEDICAMENTO MED '
    +'        JOIN MEDICAMENTOUSO MUS ON (MUS.IDMEDICAMENTOUSO = MED.IDMEDICAMENTOUSO) '
    +'        JOIN MEDICAMENTOQTDE MQT ON (MQT.IDMEDICAMENTOQTDE = MED.IDMEDICAMENTOQTDE) '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = MED.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = -1 '
    ;
  Self.CdsMedicamento.Open;

  Self.SetaComponentes(dsBrowse);

  EdCodigo.Clear;
  EdCodigo.Enabled := True;
end;

procedure TCadMedicamentoF.DbComboMedicamentoQtdePropertiesChange(
  Sender: TObject);
begin
  inherited;
  DbComboMedicamentoQtdeID.ItemIndex := DbComboMedicamentoQtde.ItemIndex;
end;

procedure TCadMedicamentoF.DbComboMedicamentoUsoPropertiesChange(
  Sender: TObject);
begin
  inherited;
  DbComboMedicamentoUsoID.ItemIndex := DbComboMedicamentoUso.ItemIndex;
end;

procedure TCadMedicamentoF.EdCodigoExit(Sender: TObject);
var
  _SqlConsulta: String;
begin
  inherited;
  if Trim(EdCodigo.Text) <> EmptyStr then
  begin

    _SqlConsulta :=
       ' SELECT MED.* '
      +'       ,MUS.DESCRICAO AS MEDICAMENTOUSO '
      +'       ,MQT.DESCRICAO AS MEDICAMENTOQTDE '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM MEDICAMENTO MED '
      +'        JOIN MEDICAMENTOUSO MUS ON (MUS.IDMEDICAMENTOUSO = MED.IDMEDICAMENTOUSO) '
      +'        JOIN MEDICAMENTOQTDE MQT ON (MQT.IDMEDICAMENTOQTDE = MED.IDMEDICAMENTOQTDE) '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = MED.IDSITUACAOREGISTRO) '
      +'  WHERE 1 = 1 '
      ;

    // ALTERAR
    if Self.getOperacaoTela = opAlterar then
    begin
      CdsMedicamento.Close;
      CdsMedicamento.CommandText :=
        _SqlConsulta
       +' AND MED.IDMEDICAMENTO = '+QuotedStr(EdCodigo.Text);
      CdsMedicamento.Open;
      if not(CdsMedicamento.IsEmpty) then
      begin
        CdsMedicamento.Edit;
        Self.SetaComponentes(dsEdit);
        EdCodigo.Enabled := False;
        TRotinaGenerica.TentaFocar(DbMedicamento);
      end
      else
      begin
        TRotinaGenerica.MensagemGeral(msgCadPdrRegistroNaoExiste, MsgInformar, BtOk);
        Self.clearData;
        TRotinaGenerica.TentaFocar(EdCodigo);
      end;
      Self.ControleBotoes;
    end
    else

    // EXCLUIR / CONSULTAR
    if Self.getOperacaoTela in [opExcluir, opConsultar] then
    begin
      CdsMedicamento.Close;
      CdsMedicamento.CommandText :=
        _SqlConsulta
       +' AND MED.IDMEDICAMENTO = '+QuotedStr(EdCodigo.Text);
      CdsMedicamento.Open;
      if not(CdsMedicamento.IsEmpty) then
      begin
        Self.SetaComponentes(dsBrowse);
        EdCodigo.Enabled := False;
        TRotinaGenerica.TentaFocar(DbMedicamento);
      end
      else
      begin
        TRotinaGenerica.MensagemGeral(msgCadPdrRegistroNaoExiste, MsgInformar, BtOk);
        Self.clearData;
        TRotinaGenerica.TentaFocar(EdCodigo);
      end;
      Self.ControleBotoes;
    end;
  end;
end;

procedure TCadMedicamentoF.EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqMedicamentoF.executaPesquisaMedicamento01(EdCodigo);
end;

procedure TCadMedicamentoF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CadMedicamentoF.Release;
  CadMedicamentoF := nil;
end;

procedure TCadMedicamentoF.FormCreate(Sender: TObject);
begin
  Self.setCds(Self.CdsMedicamento);
  inherited;
  Self.clearData;
  TCarregarComboDB.carregarMedicamentoQtde(DbComboMedicamentoQtde, DbComboMedicamentoQtdeID);
  TCarregarComboDB.carregarMedicamentoUso(DbComboMedicamentoUso, DbComboMedicamentoUsoID);
end;

function TCadMedicamentoF.validarAntesConfirmacao: Boolean;
begin
  Result := inherited;
  if Self.getOperacaoTela in [opIncluir, opAlterar] then
  begin
    CdsMedicamento.UpdateRecord;
    // Descrição
    if (Trim(CdsMedicamento.FieldByName('DESCRICAO').AsString) = EmptyStr) or (CdsMedicamento.FieldByName('DESCRICAO').IsNull) then
    begin
      TRotinaGenerica.MensagemGeral(msgCadMedtoInformarDescricao, MsgInformar, BtOk);
      TRotinaGenerica.TentaFocar(DbMedicamento);
      Result := False;
    end
    else
    // Medicamento Quantidade
    if (Trim(CdsMedicamento.FieldByName('MEDICAMENTOQTDE').AsString) = EmptyStr) or (CdsMedicamento.FieldByName('MEDICAMENTOQTDE').IsNull) then
    begin
      TRotinaGenerica.MensagemGeral(msgCadMedtoInformarMedQtde, MsgInformar, BtOk);
      TRotinaGenerica.TentaFocar(DbComboMedicamentoQtde);
      Result := False;
    end
    else
    // Medicamento Uso
    if (Trim(CdsMedicamento.FieldByName('MEDICAMENTOUSO').AsString) = EmptyStr) or (CdsMedicamento.FieldByName('MEDICAMENTOUSO').IsNull) then
    begin
      TRotinaGenerica.MensagemGeral(msgCadMedtoInformarMedUso, MsgInformar, BtOk);
      TRotinaGenerica.TentaFocar(DbComboMedicamentoUso);
      Result := False;
    end;
  end;
end;

Initialization
  RegisterClass(TCadMedicamentoF);

end.
