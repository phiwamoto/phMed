unit CadExameU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaCadastroU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, cxCheckBox, StdCtrls, cxPC, ImgList,
  ActnList, ExtCtrls, cxButtons, ComCtrls, DB, DBClient, cxButtonEdit;

type
  TCadExameF = class(TXTelaCadastroF)
    TsPrincipal: TcxTabSheet;
    LblDescricao: TLabel;
    LblDataCadastro: TLabel;
    DbDescricao: TcxDBTextEdit;
    DbDataInclusão: TcxDBDateEdit;
    DsExame: TDataSource;
    CdsExame: TClientDataSet;
    CbAtivo: TcxDBCheckBox;
    CdsExameIDEXAME: TIntegerField;
    CdsExameIDSITUACAOREGISTRO: TSmallintField;
    CdsExameDATAINCLUSAO: TDateField;
    CdsExameDESCRICAO: TStringField;
    CdsExameSITUACAOREGISTRO: TStringField;
    EdCodigo: TcxButtonEdit;
    LblCodigo: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure AcaoIncluirExecute(Sender: TObject);
    procedure AcaoAlterarExecute(Sender: TObject);
    procedure AcaoExcluirExecute(Sender: TObject);
    procedure AcaoConsultarExecute(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
    procedure CdsExameAfterInsert(DataSet: TDataSet);
    procedure EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure clearData; override;
    function validarAntesConfirmacao: Boolean; override;

  end;

var
  CadExameF: TCadExameF;

implementation

uses DmCadastroU, DmConexaoU, XLibGenericoU, XLibMessages, PesqExameU;

{$R *.dfm}

procedure TCadExameF.AcaoAlterarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadExameF.AcaoConsultarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadExameF.AcaoExcluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadExameF.AcaoIncluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;

  // INCLUIR
  if Self.getOperacaoTela = opIncluir then
  begin
    CdsExame.Close;
    CdsExame.Open;
    CdsExame.Insert;
    SetaComponentes(dsInsert);
    EdCodigo.Enabled := False;
  end;
  ControleBotoes;
  TRotinaGenerica.TentaFocar(DbDescricao);
end;

procedure TCadExameF.CdsExameAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsExame.FieldByName('IDEXAME').AsInteger            := DmConexaoF.Proximo('EXAME', 'IDEXAME');
  CdsExame.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsExame.FieldByName('IDSITUACAOREGISTRO').AsInteger := 1; // 0 - Inativo    1 - Ativo
end;

procedure TCadExameF.clearData;
begin
  inherited;
  // Limpando Cds
  Self.CdsExame.Close;
  Self.CdsExame.CommandText :=
     ' SELECT EXA.* '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM EXAME EXA '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = EXA.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = -1 '
    ;
  Self.CdsExame.Open;

  Self.SetaComponentes(dsBrowse);

  EdCodigo.Clear;
  EdCodigo.Enabled := True;
end;

procedure TCadExameF.EdCodigoExit(Sender: TObject);
var
  _SqlConsulta: String;
begin
  inherited;
  if Trim(EdCodigo.Text) <> EmptyStr then
  begin

    _SqlConsulta :=
       ' SELECT EXA.* '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM EXAME EXA '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = EXA.IDSITUACAOREGISTRO) '
      +'  WHERE 1 = 1 '
      ;

    // ALTERAR
    if Self.getOperacaoTela = opAlterar then
    begin
      CdsExame.Close;
      CdsExame.CommandText :=
        _SqlConsulta
       +' AND EXA.IDEXAME = '+QuotedStr(EdCodigo.Text);
      CdsExame.Open;
      if not(CdsExame.IsEmpty) then
      begin
        CdsExame.Edit;
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
      CdsExame.Close;
      CdsExame.CommandText :=
        _SqlConsulta
       +' AND EXA.IDEXAME = '+QuotedStr(EdCodigo.Text);
      CdsExame.Open;
      if not(CdsExame.IsEmpty) then
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

procedure TCadExameF.EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqExameF.executaPesquisaExame01(EdCodigo);
end;

procedure TCadExameF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CadExameF.Release;
  CadExameF := nil;
end;

procedure TCadExameF.FormCreate(Sender: TObject);
begin
  Self.setCds(Self.CdsExame);
  inherited;
  Self.clearData;
end;

function TCadExameF.validarAntesConfirmacao: Boolean;
begin
  Result := inherited;
  if Self.getOperacaoTela in [opIncluir, opAlterar] then
  begin
    CdsExame.UpdateRecord;
    if (Trim(CdsExame.FieldByName('DESCRICAO').AsString) = EmptyStr) or (CdsExame.FieldByName('DESCRICAO').IsNull) then
    begin
      TRotinaGenerica.MensagemGeral(msgCadExameInformarDescricao, MsgInformar, BtOk);
      TRotinaGenerica.TentaFocar(DbDescricao);
      Result := False;
    end;
  end;
end;

Initialization
  RegisterClass(TCadExameF);

end.
