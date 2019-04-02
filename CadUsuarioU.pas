unit CadUsuarioU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaCadastroU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, ImgList, ActnList, ExtCtrls, StdCtrls, cxButtons,
  cxPC, ComCtrls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxDBEdit, cxCheckBox, cxDropDownEdit, cxCalendar, DmCadastroU, DmConexaoU, DB,
  DBClient, cxImage, ExtDlgs, XLibGenericoU, XMensagemU, XLibMessages, ClipBrd, jpeg,
  LibRotinasSistemaU, PesqUsuarioU;

type
  TCadUsuarioF = class(TXTelaCadastroF)
    EdCodigo: TcxButtonEdit;
    LblCodigo: TLabel;
    TsPrincipal: TcxTabSheet;
    LblDataInclusao: TLabel;
    LblUsuario: TLabel;
    DbDataInclusao: TcxDBDateEdit;
    DbUsuario: TcxDBTextEdit;
    CbSituacaoRegistro: TcxDBCheckBox;
    DbSenha: TcxDBTextEdit;
    LblAgencia: TLabel;
    DsUsuario: TDataSource;
    CdsUsuario: TClientDataSet;
    CdsUsuarioIDUSUARIO: TIntegerField;
    CdsUsuarioIDPERFIL: TIntegerField;
    CdsUsuarioIDSITUACAOREGISTRO: TSmallintField;
    CdsUsuarioDATAINCLUSAO: TDateField;
    CdsUsuarioLOGIN: TStringField;
    CdsUsuarioSENHA: TStringField;
    CdsUsuarioSITUACAOREGISTRO: TStringField;
    LblPerfilAcesso: TLabel;
    DbDescricaoPerfilAcesso: TcxDBTextEdit;
    DbCodigoPerfilAcesso: TcxDBButtonEdit;
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AcaoIncluirExecute(Sender: TObject);
    procedure AcaoAlterarExecute(Sender: TObject);
    procedure AcaoExcluirExecute(Sender: TObject);
    procedure AcaoConsultarExecute(Sender: TObject);
    procedure CdsUsuarioAfterInsert(DataSet: TDataSet);
    procedure EdCodigoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure clearData; override;

  end;

var
  CadUsuarioF: TCadUsuarioF;

implementation

{$R *.dfm}

procedure TCadUsuarioF.AcaoAlterarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadUsuarioF.AcaoConsultarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadUsuarioF.AcaoExcluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadUsuarioF.AcaoIncluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;

  // INCLUIR
  if Self.getOperacaoTela = opIncluir then
  begin
    CdsUsuario.Close;
    CdsUsuario.Open;
    CdsUsuario.Insert;
    SetaComponentes(dsInsert);
    EdCodigo.Enabled := False;
  end;
  ControleBotoes;
  TRotinaGenerica.TentaFocar(DbUsuario);
end;

procedure TCadUsuarioF.CdsUsuarioAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsUsuario.FieldByName('IDUSUARIO').AsInteger           := DmConexaoF.Proximo('USUARIO', 'IDUSUARIO');
  CdsUsuario.FieldByName('DATAINCLUSAO').AsDateTime       := Date;
  CdsUsuario.FieldByName('IDSITUACAOREGISTRO').AsInteger  := 1; // 0 - Inativo    1 - Ativo
end;

procedure TCadUsuarioF.clearData;
begin
  inherited;
  // Limpando Cds
  Self.CdsUsuario.Close;
  Self.CdsUsuario.CommandText :=
     ' SELECT USU.* '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM USUARIO USU '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = USU.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = -1 '
    +'    AND USU.IDUSUARIO > 0 '
    ;
  Self.CdsUsuario.Open;
  Self.SetaComponentes(dsBrowse);

  EdCodigo.Clear;
  EdCodigo.Enabled := True;
end;

procedure TCadUsuarioF.EdCodigoExit(Sender: TObject);
var
  _SqlConsulta: String;
begin
  inherited;
  if Trim(EdCodigo.Text) <> '' then
  begin

    _SqlConsulta :=
     ' SELECT USU.* '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM USUARIO USU '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = USU.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = 1 '
    +'    AND USU.IDUSUARIO > 0 '
    ;


    // ALTERAR
    if Self.getOperacaoTela = opAlterar then
    begin
      CdsUsuario.Close;
      CdsUsuario.CommandText :=
        _SqlConsulta
       +' AND USU.IDUSUARIO = '+QuotedStr(EdCodigo.Text);
      CdsUsuario.Open;
      if not(CdsUsuario.IsEmpty) then
      begin
        CdsUsuario.Edit;
        SetaComponentes(dsEdit);
        EdCodigo.Enabled := False;
      end
      else
      begin
        TRotinaGenerica.MensagemGeral(msgCadPdrRegistroNaoExiste, MsgInformar, BtOk);
        clearData;
      end;
      ControleBotoes;
    end
    else

    // EXCLUIR / CONSULTAR
    if Self.getOperacaoTela in [opExcluir, opConsultar] then
    begin
      CdsUsuario.Close;
      CdsUsuario.CommandText :=
        _SqlConsulta
       +' AND USU.IDUSUARIO = '+QuotedStr(EdCodigo.Text);
      CdsUsuario.Open;
      if not(CdsUsuario.IsEmpty) then
      begin
        SetaComponentes(dsBrowse);
        EdCodigo.Enabled := False;
      end
      else
        TRotinaGenerica.MensagemGeral(msgCadPdrRegistroNaoExiste, MsgInformar, BtOk);
      ControleBotoes;
    end;
  end;
end;

procedure TCadUsuarioF.EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqUsuarioF.executaPesquisaUsuario01(EdCodigo);
end;

procedure TCadUsuarioF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CadUsuarioF.Release;
  CadUsuarioF := nil;
end;

procedure TCadUsuarioF.FormCreate(Sender: TObject);
begin
  Self.setCds(Self.CdsUsuario);
  inherited;
  Self.clearData;
end;

Initialization
  RegisterClass(TCadUsuarioF);

end.
