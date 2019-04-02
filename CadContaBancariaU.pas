unit CadContaBancariaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaCadastroU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, cxPC, ImgList, ActnList, ExtCtrls, StdCtrls,
  cxButtons, ComCtrls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxDropDownEdit, cxDBEdit, cxCheckBox, cxCalendar, DB, DBClient, DmCadastroU,
  DmConexaoU, XLibGenericoU, XLibMessages, PesqContaBancariaU, PesqPessoaU;

type
  TCadContaBancariaF = class(TXTelaCadastroF)
    TsPrincipal: TcxTabSheet;
    EdCodigo: TcxButtonEdit;
    LblDataCadastro: TLabel;
    LblBanco: TLabel;
    DbDataInclusao: TcxDBDateEdit;
    DbBanco: TcxDBTextEdit;
    CbSituacaoRegistro: TcxDBCheckBox;
    DsContaBancaria: TDataSource;
    CdsContaBancaria: TClientDataSet;
    DbAgencia: TcxDBTextEdit;
    LblAgencia: TLabel;
    DbContaCorrente: TcxDBTextEdit;
    LblContaCorrente: TLabel;
    LblTitular: TLabel;
    DbNomeFantasia: TcxDBTextEdit;
    DbCpfCnpj: TcxDBButtonEdit;
    CdsContaBancariaIDCONTABANCARIA: TIntegerField;
    CdsContaBancariaIDPESSOA: TLargeintField;
    CdsContaBancariaIDSITUACAOREGISTRO: TSmallintField;
    CdsContaBancariaDATAINCLUSAO: TDateField;
    CdsContaBancariaBANCO: TStringField;
    CdsContaBancariaCONTACORRENTE: TStringField;
    CdsContaBancariaAGENCIA: TStringField;
    CdsContaBancariaNOMEFANTASIA: TStringField;
    CdsContaBancariaCPFCNPJ: TStringField;
    CdsContaBancariaSITUACAOREGISTRO: TStringField;
    CdsContaBancariaIDTIPOPESSOA: TSmallintField;
    LblCodigo: TLabel;
    procedure EdCodigoExit(Sender: TObject);
    procedure CdsContaBancariaAfterInsert(DataSet: TDataSet);
    procedure AcaoIncluirExecute(Sender: TObject);
    procedure AcaoAlterarExecute(Sender: TObject);
    procedure AcaoExcluirExecute(Sender: TObject);
    procedure AcaoConsultarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DbCpfCnpjPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CdsContaBancariaAfterScroll(DataSet: TDataSet);
    procedure DbCpfCnpjExit(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure clearData; override;

  end;

var
  CadContaBancariaF: TCadContaBancariaF;

implementation

{$R *.dfm}

procedure TCadContaBancariaF.AcaoAlterarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TSistema.TentaFocar(EdCodigo);
end;

procedure TCadContaBancariaF.AcaoConsultarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TSistema.TentaFocar(EdCodigo);
end;

procedure TCadContaBancariaF.AcaoExcluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TSistema.TentaFocar(EdCodigo);
end;

procedure TCadContaBancariaF.AcaoIncluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;

  // INCLUIR
  if Self.getOperacaoTela = opIncluir then
  begin
    CdsContaBancaria.Close;
    CdsContaBancaria.Open;
    CdsContaBancaria.Insert;
    SetaComponentes(dsInsert);
    EdCodigo.Enabled := False;
  end;
  ControleBotoes;
  TSistema.TentaFocar(DbCpfCnpj);
end;

procedure TCadContaBancariaF.CdsContaBancariaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsContaBancaria.FieldByName('IDCONTABANCARIA').AsInteger    := DmConexaoF.Proximo('CONTABANCARIA', 'IDCONTABANCARIA');
  CdsContaBancaria.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsContaBancaria.FieldByName('IDSITUACAOREGISTRO').AsInteger := 1; // 0 - Inativo    1 - Ativo
end;

procedure TCadContaBancariaF.CdsContaBancariaAfterScroll(DataSet: TDataSet);
begin
  inherited;
//  CdsContaBancariaCPFCNPJ.EditMask := '';
//  DbCpfCnpj.Properties.EditMask    := '';
//  if CdsContaBancaria.Active then
//  begin
//    if CdsContaBancariaIDTIPOPESSOA.AsInteger = 1 then
//    begin
//      CdsContaBancariaCPFCNPJ.EditMask := '999\.999\.999\-99;0;_';
//      DbCpfCnpj.Properties.EditMask := '999\.999\.999\-99;0;_';
//    end
//    else
//    if CdsContaBancariaIDTIPOPESSOA.AsInteger = 2 then
//    begin
//      CdsContaBancariaCPFCNPJ.EditMask := '999\.999\.999/9999\-9;0;_';
//      DbCpfCnpj.Properties.EditMask := '999\.999\.999/9999\-9;0;_';
//    end;
//  end;
end;

procedure TCadContaBancariaF.clearData;
begin
  inherited;
  // Limpando Cds
  Self.CdsContaBancaria.Close;
  Self.CdsContaBancaria.CommandText :=
     ' SELECT CBA.* '
    +'       ,PES.NOMEFANTASIA '
    +'       ,PES.CPFCNPJ '
    +'       ,PES.IDTIPOPESSOA '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM CONTABANCARIA CBA '
    +'        LEFT JOIN PESSOA PES ON (PES.IDPESSOA = CBA.IDPESSOA) '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = CBA.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = -1 '
    ;
  Self.CdsContaBancaria.Open;
  Self.SetaComponentes(dsBrowse);
  EdCodigo.Clear;
  EdCodigo.Enabled := True;
end;

procedure TCadContaBancariaF.DbCpfCnpjExit(Sender: TObject);
begin
  inherited;
  if CdsContaBancaria.State in [dsInsert, dsEdit] then
    TPesqPessoaF.executaPesquisaPessoa03(CdsContaBancaria, DbCpfCnpj.Text);
end;

procedure TCadContaBancariaF.DbCpfCnpjPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqPessoaF.executaPesquisaPessoa02(CdsContaBancaria);
end;

procedure TCadContaBancariaF.EdCodigoExit(Sender: TObject);
var
  _SqlConsulta: String;
begin
  inherited;
  if Trim(EdCodigo.Text) <> '' then
  begin

    _SqlConsulta :=
     ' SELECT CBA.* '
    +'       ,PES.NOMEFANTASIA '
    +'       ,PES.CPFCNPJ '
    +'       ,PES.IDTIPOPESSOA '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM CONTABANCARIA CBA '
    +'        LEFT JOIN PESSOA PES ON (PES.IDPESSOA = CBA.IDPESSOA) '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = CBA.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = 1 '
    ;

    // ALTERAR
    if Self.getOperacaoTela = opAlterar then
    begin
      CdsContaBancaria.Close;
      CdsContaBancaria.CommandText :=
        _SqlConsulta
       +' AND CBA.IDCONTABANCARIA = '+QuotedStr(EdCodigo.Text);
      CdsContaBancaria.Open;
      if not(CdsContaBancaria.IsEmpty) then
      begin
        CdsContaBancaria.Edit;
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
      CdsContaBancaria.Close;
      CdsContaBancaria.CommandText :=
        _SqlConsulta
       +' AND CBA.IDCONTABANCARIA = '+QuotedStr(EdCodigo.Text);
      CdsContaBancaria.Open;
      if not(CdsContaBancaria.IsEmpty) then
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

procedure TCadContaBancariaF.EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqContaBancariaF.executaPesquisaContaBancaria01(EdCodigo);
end;

procedure TCadContaBancariaF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CadContaBancariaF.Release;
  CadContaBancariaF := nil;
end;

procedure TCadContaBancariaF.FormCreate(Sender: TObject);
begin
  Self.setCds(Self.CdsContaBancaria);
  inherited;
  Self.clearData;
end;

Initialization
  RegisterClass(TCadContaBancariaF);

end.
