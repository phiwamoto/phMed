unit CadCidadeU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaCadastroU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, ImgList, ActnList, ExtCtrls, StdCtrls, cxButtons,
  cxPC, ComCtrls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxCheckBox, cxDBEdit, cxDropDownEdit, cxCalendar, DmCadastroU, DmConexaoU, DB,
  DBClient, XLibGenericoU, XLibMessages, PesqCidadeU;

type
  TCadCidadeF = class(TXTelaCadastroF)
    EdCodigo: TcxButtonEdit;
    TsPrincipal: TcxTabSheet;
    LblDataCadastro: TLabel;
    LblFisicaNome: TLabel;
    DbDataInclusao: TcxDBDateEdit;
    DbCidade: TcxDBTextEdit;
    CbAtivo: TcxDBCheckBox;
    DsCidade: TDataSource;
    CdsCidade: TClientDataSet;
    CdsCidadeIDCIDADE: TIntegerField;
    CdsCidadeIDSITUACAOREGISTRO: TSmallintField;
    CdsCidadeDATAINCLUSAO: TDateField;
    CdsCidadeCIDADE: TStringField;
    CdsCidadeUF: TStringField;
    CdsCidadeSITUACAOREGISTRO: TStringField;
    CbUF: TcxDBComboBox;
    LblUF: TLabel;
    LblCodigo: TLabel;
    procedure CdsCidadeAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCodigoExit(Sender: TObject);
    procedure AcaoIncluirExecute(Sender: TObject);
    procedure AcaoAlterarExecute(Sender: TObject);
    procedure AcaoExcluirExecute(Sender: TObject);
    procedure AcaoConsultarExecute(Sender: TObject);
    procedure EdCodigoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure clearData; override;
    function validarAntesConfirmacao: Boolean; override;

  end;

var
  CadCidadeF: TCadCidadeF;

implementation

{$R *.dfm}

procedure TCadCidadeF.AcaoAlterarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadCidadeF.AcaoConsultarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadCidadeF.AcaoExcluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadCidadeF.AcaoIncluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;

  // INCLUIR
  if Self.getOperacaoTela = opIncluir then
  begin
    CdsCidade.Close;
    CdsCidade.Open;
    CdsCidade.Insert;
    SetaComponentes(dsInsert);
    EdCodigo.Enabled := False;
  end;
  ControleBotoes;
  TRotinaGenerica.TentaFocar(DbCidade);
end;

procedure TCadCidadeF.CdsCidadeAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsCidade.FieldByName('IDCIDADE').AsInteger           := DmConexaoF.Proximo('CIDADE', 'IDCIDADE');
  CdsCidade.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsCidade.FieldByName('IDSITUACAOREGISTRO').AsInteger := 1; // 0 - Inativo    1 - Ativo
end;

procedure TCadCidadeF.clearData;
begin
  inherited;
  // Limpando Cds
  Self.CdsCidade.Close;
  Self.CdsCidade.CommandText :=
     ' SELECT CID.* '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM CIDADE CID '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = CID.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = -1 '
    ;
  Self.CdsCidade.Open;

  Self.SetaComponentes(dsBrowse);

  EdCodigo.Clear;
  EdCodigo.Enabled := True;
end;

procedure TCadCidadeF.EdCodigoExit(Sender: TObject);
var
  _SqlConsulta: String;
begin
  inherited;
  if Trim(EdCodigo.Text) <> EmptyStr then
  begin

    _SqlConsulta :=
       ' SELECT CID.* '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM CIDADE CID '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = CID.IDSITUACAOREGISTRO) '
      +'  WHERE 1 = 1 '
      ;


    // ALTERAR
    if Self.getOperacaoTela = opAlterar then
    begin
      CdsCidade.Close;
      CdsCidade.CommandText :=
        _SqlConsulta
       +' AND CID.IDCIDADE = '+QuotedStr(EdCodigo.Text);
      CdsCidade.Open;
      if not(CdsCidade.IsEmpty) then
      begin
        CdsCidade.Edit;
        Self.SetaComponentes(dsEdit);
        EdCodigo.Enabled := False;
        TRotinaGenerica.TentaFocar(DbCidade);
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
      CdsCidade.Close;
      CdsCidade.CommandText :=
        _SqlConsulta
       +' AND CID.IDCIDADE = '+QuotedStr(EdCodigo.Text);
      CdsCidade.Open;
      if not(CdsCidade.IsEmpty) then
      begin
        Self.SetaComponentes(dsBrowse);
        EdCodigo.Enabled := False;
        TRotinaGenerica.TentaFocar(DbCidade);
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

procedure TCadCidadeF.EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqCidadeF.executaPesquisaCidade01(EdCodigo);
end;

procedure TCadCidadeF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CadCidadeF.Release;
  CadCidadeF := nil;
end;

procedure TCadCidadeF.FormCreate(Sender: TObject);
begin
  Self.setCds(Self.CdsCidade);
  inherited;
  Self.clearData;
end;

function TCadCidadeF.validarAntesConfirmacao: Boolean;
begin
  Result := inherited;
  if Self.getOperacaoTela in [opIncluir, opAlterar] then
  begin
    CdsCidade.UpdateRecord;
    if (Trim(CdsCidade.FieldByName('CIDADE').AsString) = EmptyStr) or (CdsCidade.FieldByName('CIDADE').IsNull) then
    begin
      TRotinaGenerica.MensagemGeral(msgCadCidadeInformarCidade, MsgInformar, BtOk);
      TRotinaGenerica.TentaFocar(DbCidade);
      Result := False;
    end
    else
    if (Trim(CdsCidade.FieldByName('UF').AsString) = EmptyStr) or (CdsCidade.FieldByName('UF').IsNull) then
    begin
      TRotinaGenerica.MensagemGeral(msgCadCidadeInformarUF, MsgInformar, BtOk);
      TRotinaGenerica.TentaFocar(CbUF);
      Result := False;
    end;
  end;
end;

Initialization
  RegisterClass(TCadCidadeF);


end.
