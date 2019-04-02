unit CadConvenioU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaCadastroU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, ImgList, ActnList, ExtCtrls, StdCtrls, cxButtons,
  cxPC, ComCtrls, cxContainer, cxEdit, cxCheckBox, cxDBEdit, cxTextEdit, DB,
  DBClient, cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit;

type
  TCadConvenioF = class(TXTelaCadastroF)
    TsPrincipal: TcxTabSheet;
    LblConvenio: TLabel;
    DbConvenio: TcxDBTextEdit;
    DsConvenio: TDataSource;
    CdsConvenio: TClientDataSet;
    DbDataInclusao: TcxDBDateEdit;
    LblDataCadastro: TLabel;
    CdsConvenioIDCONVENIO: TIntegerField;
    CdsConvenioIDSITUACAOREGISTRO: TSmallintField;
    CdsConvenioDATAINCLUSAO: TDateField;
    CdsConvenioCONVENIO: TStringField;
    CdsConvenioSITUACAOREGISTRO: TStringField;
    CbAtivo: TcxDBCheckBox;
    EdCodigo: TcxButtonEdit;
    LblCodigo: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure AcaoIncluirExecute(Sender: TObject);
    procedure AcaoAlterarExecute(Sender: TObject);
    procedure AcaoExcluirExecute(Sender: TObject);
    procedure AcaoConsultarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCodigoExit(Sender: TObject);
    procedure CdsConvenioAfterInsert(DataSet: TDataSet);
    procedure EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure clearData; override;
    function validarAntesConfirmacao: Boolean; override;

  end;

var
  CadConvenioF: TCadConvenioF;

implementation

uses DmCadastroU, DmConexaoU, XLibGenericoU, XLibMessages, PesqConvenioU;

{$R *.dfm}

procedure TCadConvenioF.AcaoAlterarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadConvenioF.AcaoConsultarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadConvenioF.AcaoExcluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadConvenioF.AcaoIncluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;

  // INCLUIR
  if Self.getOperacaoTela = opIncluir then
  begin
    CdsConvenio.Close;
    CdsConvenio.Open;
    CdsConvenio.Insert;
    SetaComponentes(dsInsert);
    EdCodigo.Enabled := False;
  end;
  ControleBotoes;
  TRotinaGenerica.TentaFocar(DbConvenio);
end;

procedure TCadConvenioF.CdsConvenioAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsConvenio.FieldByName('IDCONVENIO').AsInteger         := DmConexaoF.Proximo('CONVENIO', 'IDCONVENIO');
  CdsConvenio.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsConvenio.FieldByName('IDSITUACAOREGISTRO').AsInteger := 1; // 0 - Inativo    1 - Ativo
end;

procedure TCadConvenioF.clearData;
begin
  inherited;
  // Limpando Cds
  Self.CdsConvenio.Close;
  Self.CdsConvenio.CommandText :=
     ' SELECT CON.* '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM CONVENIO CON '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = CON.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = -1 '
    ;
  Self.CdsConvenio.Open;

  Self.SetaComponentes(dsBrowse);

  EdCodigo.Clear;
  EdCodigo.Enabled := True;
end;

procedure TCadConvenioF.EdCodigoExit(Sender: TObject);
var
  _SqlConsulta: String;
begin
  inherited;
  if Trim(EdCodigo.Text) <> EmptyStr then
  begin

    _SqlConsulta :=
       ' SELECT CON.* '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM CONVENIO CON '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = CON.IDSITUACAOREGISTRO) '
      +'  WHERE 1 = 1 '
      ;

    // ALTERAR
    if Self.getOperacaoTela = opAlterar then
    begin
      CdsConvenio.Close;
      CdsConvenio.CommandText :=
        _SqlConsulta
       +' AND CON.IDCONVENIO = '+QuotedStr(EdCodigo.Text);
      CdsConvenio.Open;
      if not(CdsConvenio.IsEmpty) then
      begin
        CdsConvenio.Edit;
        Self.SetaComponentes(dsEdit);
        EdCodigo.Enabled := False;
        TRotinaGenerica.TentaFocar(DbConvenio);
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
      CdsConvenio.Close;
      CdsConvenio.CommandText :=
        _SqlConsulta
       +' AND CON.IDCONVENIO = '+QuotedStr(EdCodigo.Text);
      CdsConvenio.Open;
      if not(CdsConvenio.IsEmpty) then
      begin
        Self.SetaComponentes(dsBrowse);
        EdCodigo.Enabled := False;
        TRotinaGenerica.TentaFocar(DbConvenio);
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

procedure TCadConvenioF.EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqConvenioF.executaPesquisaConvenio01(EdCodigo);
end;

procedure TCadConvenioF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CadConvenioF.Release;
  CadConvenioF := nil;
end;

procedure TCadConvenioF.FormCreate(Sender: TObject);
begin
  Self.setCds(Self.CdsConvenio);
  inherited;
  Self.clearData;
end;

function TCadConvenioF.validarAntesConfirmacao: Boolean;
begin
  Result := inherited;
  if Self.getOperacaoTela in [opIncluir, opAlterar] then
  begin
    CdsConvenio.UpdateRecord;
    if (Trim(CdsConvenio.FieldByName('CONVENIO').AsString) = EmptyStr) or (CdsConvenio.FieldByName('CONVENIO').IsNull) then
    begin
      TRotinaGenerica.MensagemGeral(msgCadConvenioInformarConvenio, MsgInformar, BtOk);
      TRotinaGenerica.TentaFocar(DbConvenio);
      Result := False;
    end;
  end;
end;

Initialization
  RegisterClass(TCadConvenioF);

end.
