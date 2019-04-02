unit CadAdvogadoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaCadastroU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, ImgList, ActnList, ExtCtrls, StdCtrls, cxButtons,
  cxPC, ComCtrls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  DmCadastroU, DmConexaoU, DB, DBClient, cxDBEdit, cxCheckBox, cxDropDownEdit,
  cxCalendar, LibRotinasSistemaU, XLibGenericoU, XLibMessages, PesqPessoaU,
  PesqUsuarioU, PesqAdvogadoU;

type
  TCadAdvogadoF = class(TXTelaCadastroF)
    EdCodigo: TcxButtonEdit;
    LblCodigo: TLabel;
    TsPrincipal: TcxTabSheet;
    LblDataCadastro: TLabel;
    LblPessoa: TLabel;
    DbDataInclusao: TcxDBDateEdit;
    CbSituacaoRegistro: TcxDBCheckBox;
    DbNomeFantasia: TcxDBTextEdit;
    DbCpfCnpj: TcxDBButtonEdit;
    DbCodigoUsuario: TcxDBButtonEdit;
    LblUsuario: TLabel;
    DbUsuarioLogin: TcxDBTextEdit;
    DsAdvogado: TDataSource;
    CdsAdvogado: TClientDataSet;
    CdsAdvogadoIDADVOGADO: TIntegerField;
    CdsAdvogadoIDUSUARIO: TIntegerField;
    CdsAdvogadoIDPESSOA: TLargeintField;
    CdsAdvogadoIDSITUACAOREGISTRO: TSmallintField;
    CdsAdvogadoDATAINCLUSAO: TDateField;
    CdsAdvogadoNOMEFANTASIA: TStringField;
    CdsAdvogadoCPFCNPJ: TStringField;
    CdsAdvogadoIDTIPOPESSOA: TSmallintField;
    CdsAdvogadoLOGIN: TStringField;
    CdsAdvogadoSITUACAOREGISTRO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
    procedure DbCpfCnpjExit(Sender: TObject);
    procedure DbCpfCnpjPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CdsAdvogadoAfterInsert(DataSet: TDataSet);
    procedure AcaoIncluirExecute(Sender: TObject);
    procedure AcaoAlterarExecute(Sender: TObject);
    procedure AcaoExcluirExecute(Sender: TObject);
    procedure AcaoConsultarExecute(Sender: TObject);
    procedure DbCodigoUsuarioExit(Sender: TObject);
    procedure DbCodigoUsuarioPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure EdCodigoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure clearData; override;

  end;

var
  CadAdvogadoF: TCadAdvogadoF;

implementation

{$R *.dfm}

procedure TCadAdvogadoF.AcaoAlterarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TSistema.TentaFocar(EdCodigo);
end;

procedure TCadAdvogadoF.AcaoConsultarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TSistema.TentaFocar(EdCodigo);
end;

procedure TCadAdvogadoF.AcaoExcluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TSistema.TentaFocar(EdCodigo);
end;

procedure TCadAdvogadoF.AcaoIncluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;

  // INCLUIR
  if Self.getOperacaoTela = opIncluir then
  begin
    CdsAdvogado.Close;
    CdsAdvogado.Open;
    CdsAdvogado.Insert;
    SetaComponentes(dsInsert);
    EdCodigo.Enabled := False;
  end;
  ControleBotoes;
  TSistema.TentaFocar(DbCpfCnpj);
end;

procedure TCadAdvogadoF.CdsAdvogadoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsAdvogado.FieldByName('IDADVOGADO').AsInteger    := DmConexaoF.Proximo('ADVOGADO', 'IDADVOGADO');
  CdsAdvogado.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsAdvogado.FieldByName('IDSITUACAOREGISTRO').AsInteger := 1; // 0 - Inativo    1 - Ativo
end;

procedure TCadAdvogadoF.clearData;
begin
  inherited;
  // Limpando Cds
  Self.CdsAdvogado.Close;
  Self.CdsAdvogado.CommandText :=
     ' SELECT ADV.* '
    +'       ,PES.NOMEFANTASIA '
    +'       ,PES.CPFCNPJ '
    +'       ,PES.IDTIPOPESSOA '
    +'       ,USU.LOGIN '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM ADVOGADO ADV '
    +'        JOIN PESSOA PES ON (PES.IDPESSOA = ADV.IDPESSOA) '
    +'        JOIN USUARIO USU ON (USU.IDUSUARIO = ADV.IDUSUARIO) '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = ADV.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = -1 '
    ;
  Self.CdsAdvogado.Open;
  Self.SetaComponentes(dsBrowse);
  EdCodigo.Clear;
  EdCodigo.Enabled := True;
end;

procedure TCadAdvogadoF.DbCodigoUsuarioExit(Sender: TObject);
begin
  inherited;
  if CdsAdvogado.State in [dsInsert, dsEdit] then
    TPesqUsuarioF.executaPesquisaUsuario03(CdsAdvogado, StrToIntDef(DbCodigoUsuario.Text, 0));
end;

procedure TCadAdvogadoF.DbCodigoUsuarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqUsuarioF.executaPesquisaUsuario02(CdsAdvogado);
end;

procedure TCadAdvogadoF.DbCpfCnpjExit(Sender: TObject);
begin
  inherited;
  if CdsAdvogado.State in [dsInsert, dsEdit] then
    TPesqPessoaF.executaPesquisaPessoa03(CdsAdvogado, DbCpfCnpj.Text);
end;

procedure TCadAdvogadoF.DbCpfCnpjPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  TPesqPessoaF.executaPesquisaPessoa02(CdsAdvogado);
end;

procedure TCadAdvogadoF.EdCodigoExit(Sender: TObject);
var
  _SqlConsulta: String;
begin
  inherited;
  if Trim(EdCodigo.Text) <> '' then
  begin

    _SqlConsulta :=
     ' SELECT ADV.* '
    +'       ,PES.NOMEFANTASIA '
    +'       ,PES.CPFCNPJ '
    +'       ,PES.IDTIPOPESSOA '
    +'       ,USU.LOGIN '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM ADVOGADO ADV '
    +'        JOIN PESSOA PES ON (PES.IDPESSOA = ADV.IDPESSOA) '
    +'        JOIN USUARIO USU ON (USU.IDUSUARIO = ADV.IDUSUARIO) '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = ADV.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = 1 '
    ;

    // ALTERAR
    if Self.getOperacaoTela = opAlterar then
    begin
      CdsAdvogado.Close;
      CdsAdvogado.CommandText :=
        _SqlConsulta
       +' AND ADV.IDADVOGADO = '+QuotedStr(EdCodigo.Text);
      CdsAdvogado.Open;
      if not(CdsAdvogado.IsEmpty) then
      begin
        CdsAdvogado.Edit;
        SetaComponentes(dsEdit);
        EdCodigo.Enabled := False;
        TSistema.TentaFocar(DbCpfCnpj);
      end
      else
      begin
        TMensagemDialogo.MensagemGeral(msgCadPdrRegistroNaoExiste, MsgInformar, BtOk);
        clearData;
      end;
      ControleBotoes;
    end
    else

    // EXCLUIR / CONSULTAR
    if Self.getOperacaoTela in [opExcluir, opConsultar] then
    begin
      CdsAdvogado.Close;
      CdsAdvogado.CommandText :=
        _SqlConsulta
       +' AND ADV.IDADVOGADO = '+QuotedStr(EdCodigo.Text);
      CdsAdvogado.Open;
      if not(CdsAdvogado.IsEmpty) then
      begin
        SetaComponentes(dsBrowse);
        EdCodigo.Enabled := False;
        TSistema.TentaFocar(DbCpfCnpj);
      end
      else
        TMensagemDialogo.MensagemGeral(msgCadPdrRegistroNaoExiste, MsgInformar, BtOk);
      ControleBotoes;
    end;
  end;
end;

procedure TCadAdvogadoF.EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqAdvogadoF.executaPesquisaAdvogado01(EdCodigo);
end;

procedure TCadAdvogadoF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CadAdvogadoF.Release;
  CadAdvogadoF := nil;
end;

procedure TCadAdvogadoF.FormCreate(Sender: TObject);
begin
  Self.setCds(Self.CdsAdvogado);
  inherited;
  Self.clearData;
end;

Initialization
  RegisterClass(TCadAdvogadoF);

end.
