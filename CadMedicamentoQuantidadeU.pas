unit CadMedicamentoQuantidadeU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaCadastroU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, cxCheckBox, StdCtrls, cxPC, ImgList,
  ActnList, ExtCtrls, cxButtons, ComCtrls, DB, DBClient, cxButtonEdit;

type
  TCadMedicamentoQuantidadeF = class(TXTelaCadastroF)
    TsPrincipal: TcxTabSheet;
    LblDescricao: TLabel;
    DbDescricao: TcxDBTextEdit;
    DbDataInclusão: TcxDBDateEdit;
    LblDataCadastro: TLabel;
    DsMedicamentoQtde: TDataSource;
    CdsMedicamentoQtde: TClientDataSet;
    CdsMedicamentoQtdeIDMEDICAMENTOQTDE: TIntegerField;
    CdsMedicamentoQtdeIDSITUACAOREGISTRO: TSmallintField;
    CdsMedicamentoQtdeDATAINCLUSAO: TDateField;
    CdsMedicamentoQtdeDESCRICAO: TStringField;
    CdsMedicamentoQtdeSITUACAOREGISTRO: TStringField;
    CbAtivo: TcxDBCheckBox;
    EdCodigo: TcxButtonEdit;
    LblCodigo: TLabel;
    procedure CdsMedicamentoQtdeAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCodigoExit(Sender: TObject);
    procedure AcaoIncluirExecute(Sender: TObject);
    procedure AcaoAlterarExecute(Sender: TObject);
    procedure AcaoExcluirExecute(Sender: TObject);
    procedure AcaoConsultarExecute(Sender: TObject);
    procedure EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure clearData; override;
    function validarAntesConfirmacao: Boolean; override;

  end;

var
  CadMedicamentoQuantidadeF: TCadMedicamentoQuantidadeF;

implementation

uses DmCadastroU, DmConexaoU, XLibGenericoU, XLibMessages,
  PesqMedicamentoQuantidadeU;

{$R *.dfm}

procedure TCadMedicamentoQuantidadeF.AcaoAlterarExecute(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadMedicamentoQuantidadeF.AcaoConsultarExecute(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadMedicamentoQuantidadeF.AcaoExcluirExecute(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadMedicamentoQuantidadeF.AcaoIncluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;

  // INCLUIR
  if Self.getOperacaoTela = opIncluir then
  begin
    CdsMedicamentoQtde.Close;
    CdsMedicamentoQtde.Open;
    CdsMedicamentoQtde.Insert;
    SetaComponentes(dsInsert);
    EdCodigo.Enabled := False;
  end;
  ControleBotoes;
  TRotinaGenerica.TentaFocar(DbDescricao);
end;

procedure TCadMedicamentoQuantidadeF.CdsMedicamentoQtdeAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsMedicamentoQtde.FieldByName('IDMEDICAMENTOQTDE').AsInteger  := DmConexaoF.Proximo('MEDICAMENTOQTDE', 'IDMEDICAMENTOQTDE');
  CdsMedicamentoQtde.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsMedicamentoQtde.FieldByName('IDSITUACAOREGISTRO').AsInteger := 1; // 0 - Inativo    1 - Ativo
end;

procedure TCadMedicamentoQuantidadeF.clearData;
begin
  inherited;
  // Limpando Cds
  Self.CdsMedicamentoQtde.Close;
  Self.CdsMedicamentoQtde.CommandText :=
     ' SELECT MQT.* '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM MEDICAMENTOQTDE MQT '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = MQT.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = -1 '
    ;
  Self.CdsMedicamentoQtde.Open;

  Self.SetaComponentes(dsBrowse);

  EdCodigo.Clear;
  EdCodigo.Enabled := True;
end;

procedure TCadMedicamentoQuantidadeF.EdCodigoExit(Sender: TObject);
var
  _SqlConsulta: String;
begin
  inherited;
  if Trim(EdCodigo.Text) <> EmptyStr then
  begin

    _SqlConsulta :=
       ' SELECT MQT.* '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM MEDICAMENTOQTDE MQT '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = MQT.IDSITUACAOREGISTRO) '
      +'  WHERE 1 = 1 '
      ;

    // ALTERAR
    if Self.getOperacaoTela = opAlterar then
    begin
      CdsMedicamentoQtde.Close;
      CdsMedicamentoQtde.CommandText :=
        _SqlConsulta
       +' AND MQT.IDMEDICAMENTOQTDE = '+QuotedStr(EdCodigo.Text);
      CdsMedicamentoQtde.Open;
      if not(CdsMedicamentoQtde.IsEmpty) then
      begin
        CdsMedicamentoQtde.Edit;
        Self.SetaComponentes(dsEdit);
        EdCodigo.Enabled := False;
        TRotinaGenerica.TentaFocar(DbDescricao);
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
      CdsMedicamentoQtde.Close;
      CdsMedicamentoQtde.CommandText :=
        _SqlConsulta
       +' AND MQT.IDMEDICAMENTOQTDE = '+QuotedStr(EdCodigo.Text);
      CdsMedicamentoQtde.Open;
      if not(CdsMedicamentoQtde.IsEmpty) then
      begin
        Self.SetaComponentes(dsBrowse);
        EdCodigo.Enabled := False;
        TRotinaGenerica.TentaFocar(DbDescricao);
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

procedure TCadMedicamentoQuantidadeF.EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqMedicamentoQuantidadeF.executaPesquisaMedicamentoQtde01(EdCodigo);
end;

procedure TCadMedicamentoQuantidadeF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CadMedicamentoQuantidadeF.Release;
  CadMedicamentoQuantidadeF := nil
end;

procedure TCadMedicamentoQuantidadeF.FormCreate(Sender: TObject);
begin
  Self.setCds(Self.CdsMedicamentoQtde);
  inherited;
  Self.clearData;
end;

function TCadMedicamentoQuantidadeF.validarAntesConfirmacao: Boolean;
begin
  Result := inherited;
  if Self.getOperacaoTela in [opIncluir, opAlterar] then
  begin
    CdsMedicamentoQtde.UpdateRecord;
    if (Trim(CdsMedicamentoQtde.FieldByName('DESCRICAO').AsString) = EmptyStr) or (CdsMedicamentoQtde.FieldByName('DESCRICAO').IsNull) then
    begin
      TRotinaGenerica.MensagemGeral(msgCadMedQtdeInformarDescricao, MsgInformar, BtOk);
      TRotinaGenerica.TentaFocar(DbDescricao);
      Result := False;
    end;
  end;
end;

Initialization
  RegisterClass(TCadMedicamentoQuantidadeF);

end.
