unit CadMedicamentoUsoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaCadastroU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, cxCheckBox, StdCtrls, cxPC, ImgList,
  ActnList, ExtCtrls, cxButtons, ComCtrls, cxButtonEdit, DB, DBClient;

type
  TCadMedicamentoUsoF = class(TXTelaCadastroF)
    TsPrincipal: TcxTabSheet;
    LblDescricao: TLabel;
    DbDescricao: TcxDBTextEdit;
    DbDataInclusão: TcxDBDateEdit;
    LblDataCadastro: TLabel;
    EdCodigo: TcxButtonEdit;
    LblCodigo: TLabel;
    DsMedicamentoUso: TDataSource;
    CdsMedicamentoUso: TClientDataSet;
    CdsMedicamentoUsoIDMEDICAMENTOUSO: TIntegerField;
    CdsMedicamentoUsoIDSITUACAOREGISTRO: TSmallintField;
    CdsMedicamentoUsoDATAINCLUSAO: TDateField;
    CdsMedicamentoUsoDESCRICAO: TStringField;
    CdsMedicamentoUsoSITUACAOREGISTRO: TStringField;
    CbAtivo: TcxDBCheckBox;
    procedure EdCodigoExit(Sender: TObject);
    procedure CdsMedicamentoUsoAfterInsert(DataSet: TDataSet);
    procedure AcaoIncluirExecute(Sender: TObject);
    procedure AcaoAlterarExecute(Sender: TObject);
    procedure AcaoExcluirExecute(Sender: TObject);
    procedure AcaoConsultarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure clearData; override;
    function validarAntesConfirmacao: Boolean; override;

  end;

var
  CadMedicamentoUsoF: TCadMedicamentoUsoF;

implementation

uses DmCadastroU, DmConexaoU, XLibGenericoU, XLibMessages, PesqMedicamentoUsoU;

{$R *.dfm}

{ TCadMedicamentoUsoF }

procedure TCadMedicamentoUsoF.AcaoAlterarExecute(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadMedicamentoUsoF.AcaoConsultarExecute(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadMedicamentoUsoF.AcaoExcluirExecute(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadMedicamentoUsoF.AcaoIncluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;

  // INCLUIR
  if Self.getOperacaoTela = opIncluir then
  begin
    CdsMedicamentoUso.Close;
    CdsMedicamentoUso.Open;
    CdsMedicamentoUso.Insert;
    SetaComponentes(dsInsert);
    EdCodigo.Enabled := False;
  end;
  ControleBotoes;
  TRotinaGenerica.TentaFocar(DbDescricao);
end;

procedure TCadMedicamentoUsoF.CdsMedicamentoUsoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsMedicamentoUso.FieldByName('IDMEDICAMENTOUSO').AsInteger   := DmConexaoF.Proximo('MEDICAMENTOUSO', 'IDMEDICAMENTOUSO');
  CdsMedicamentoUso.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsMedicamentoUso.FieldByName('IDSITUACAOREGISTRO').AsInteger := 1; // 0 - Inativo    1 - Ativo
end;

procedure TCadMedicamentoUsoF.clearData;
begin
  inherited;
  // Limpando Cds
  Self.CdsMedicamentoUso.Close;
  Self.CdsMedicamentoUso.CommandText :=
     ' SELECT MUS.* '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM MEDICAMENTOUSO MUS '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = MUS.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = -1 '
    ;
  Self.CdsMedicamentoUso.Open;

  Self.SetaComponentes(dsBrowse);

  EdCodigo.Clear;
  EdCodigo.Enabled := True;
end;

procedure TCadMedicamentoUsoF.EdCodigoExit(Sender: TObject);
var
  _SqlConsulta: String;
begin
  inherited;
  if Trim(EdCodigo.Text) <> EmptyStr then
  begin

    _SqlConsulta :=
       ' SELECT MUS.* '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM MEDICAMENTOUSO MUS '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = MUS.IDSITUACAOREGISTRO) '
      +'  WHERE 1 = 1 '
      ;

    // ALTERAR
    if Self.getOperacaoTela = opAlterar then
    begin
      CdsMedicamentoUso.Close;
      CdsMedicamentoUso.CommandText :=
        _SqlConsulta
       +' AND MUS.IDMEDICAMENTOUSO = '+QuotedStr(EdCodigo.Text);
      CdsMedicamentoUso.Open;
      if not(CdsMedicamentoUso.IsEmpty) then
      begin
        CdsMedicamentoUso.Edit;
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
      CdsMedicamentoUso.Close;
      CdsMedicamentoUso.CommandText :=
        _SqlConsulta
       +' AND MUS.IDMEDICAMENTOUSO = '+QuotedStr(EdCodigo.Text);
      CdsMedicamentoUso.Open;
      if not(CdsMedicamentoUso.IsEmpty) then
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

procedure TCadMedicamentoUsoF.EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqMedicamentoUsoF.executaPesquisaMedicamentoUso01(EdCodigo);
end;

procedure TCadMedicamentoUsoF.FormCreate(Sender: TObject);
begin
  Self.setCds(Self.CdsMedicamentoUso);
  inherited;
  Self.clearData;
end;

function TCadMedicamentoUsoF.validarAntesConfirmacao: Boolean;
begin
  Result := inherited;
  if Self.getOperacaoTela in [opIncluir, opAlterar] then
  begin
    CdsMedicamentoUso.UpdateRecord;
    if (Trim(CdsMedicamentoUso.FieldByName('DESCRICAO').AsString) = EmptyStr) or (CdsMedicamentoUso.FieldByName('DESCRICAO').IsNull) then
    begin
      TRotinaGenerica.MensagemGeral(msgCadMedUsoInformarDescricao, MsgInformar, BtOk);
      TRotinaGenerica.TentaFocar(DbDescricao);
      Result := False;
    end;
  end;
end;

Initialization
  RegisterClass(TCadMedicamentoUsoF);

end.
