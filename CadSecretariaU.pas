unit CadSecretariaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaCadastroU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, cxContainer, cxEdit, ExtCtrls, StdCtrls,
  cxButtonEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckBox,
  cxTextEdit, cxPC, ImgList, ActnList, cxButtons, ComCtrls, DB, DBClient,
  cxImage;

type
  TCadSecretariaF = class(TXTelaCadastroF)
    TsPrincipal: TcxTabSheet;
    LblNome: TLabel;
    LblEmail: TLabel;
    LblCpf: TLabel;
    LblRg: TLabel;
    LblTelefone: TLabel;
    LblCelular: TLabel;
    LblDataCadastro: TLabel;
    DbNome: TcxDBTextEdit;
    DbDataInclusao: TcxDBDateEdit;
    DbRg: TcxDBTextEdit;
    DbCelular: TcxDBTextEdit;
    DbEmail: TcxDBTextEdit;
    DbCpf: TcxDBTextEdit;
    DbTelefone: TcxDBTextEdit;
    DsSecretaria: TDataSource;
    CdsSecretaria: TClientDataSet;
    CdsSecretariaIDSECRETARIA: TIntegerField;
    CdsSecretariaIDCIDADE: TIntegerField;
    CdsSecretariaIDUSUARIO: TIntegerField;
    CdsSecretariaIDSITUACAOREGISTRO: TSmallintField;
    CdsSecretariaDATAINCLUSAO: TDateField;
    CdsSecretariaNUMERO: TIntegerField;
    CdsSecretariaNOME: TStringField;
    CdsSecretariaENDERECO: TStringField;
    CdsSecretariaBAIRRO: TStringField;
    CdsSecretariaEMAIL: TStringField;
    CdsSecretariaCPF: TStringField;
    CdsSecretariaRG: TStringField;
    CdsSecretariaTELEFONE: TStringField;
    CdsSecretariaCELULAR: TStringField;
    CdsSecretariaCEP: TStringField;
    CdsSecretariaCIDADEUF: TStringField;
    CdsSecretariaUSUARIOLOGIN: TStringField;
    CdsSecretariaSITUACAOREGISTRO: TStringField;
    EdCodigo: TcxButtonEdit;
    LblCodigo: TLabel;
    LblNumero: TLabel;
    LblEndereco: TLabel;
    LblBairro: TLabel;
    LblCep: TLabel;
    Label33: TLabel;
    DbNomeCidade: TcxDBTextEdit;
    DbCodigoCidade: TcxDBButtonEdit;
    DbCep: TcxDBTextEdit;
    DbNumero: TcxDBTextEdit;
    DbBairro: TcxDBTextEdit;
    DbEndereco: TcxDBTextEdit;
    CbAtivo: TcxDBCheckBox;
    GbImagem: TGroupBox;
    DbFotoSecretaria: TcxDBImage;
    PnlBotaoFotoSecretaria: TPanel;
    BtnSelecionarFotoSecretaria: TcxButton;
    BtnDeletarFotoSecretaria: TcxButton;
    DbLoginUsuarioSistema: TcxDBTextEdit;
    DbCodigoUsuarioSistema: TcxDBButtonEdit;
    LblUsuarioSistema: TLabel;
    CdsSecretariaFOTOSECRETARIA: TBlobField;
    procedure EdCodigoExit(Sender: TObject);
    procedure AcaoIncluirExecute(Sender: TObject);
    procedure AcaoAlterarExecute(Sender: TObject);
    procedure AcaoExcluirExecute(Sender: TObject);
    procedure AcaoConsultarExecute(Sender: TObject);
    procedure CdsSecretariaAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DbCodigoCidadeExit(Sender: TObject);
    procedure DbCodigoCidadePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure BtnSelecionarFotoSecretariaClick(Sender: TObject);
    procedure BtnDeletarFotoSecretariaClick(Sender: TObject);
    procedure DbCodigoUsuarioSistemaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DbCodigoUsuarioSistemaExit(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure clearData; override;
    procedure ControleBotoes; override;
    function validarAntesConfirmacao: Boolean; override;

  end;

var
  CadSecretariaF: TCadSecretariaF;

implementation

uses DmCadastroU, DmConexaoU, LibRotinasSistemaU, XLibGenericoU, XLibMessages,
  PesqCidadeU, PesqSecretariaU, ExtDlgs, ClipBrd, PesqUsuarioU;

{$R *.dfm}

procedure TCadSecretariaF.AcaoAlterarExecute(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadSecretariaF.AcaoConsultarExecute(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadSecretariaF.AcaoExcluirExecute(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadSecretariaF.AcaoIncluirExecute(Sender: TObject);
begin
  inherited;
  // INCLUIR
  if Self.getOperacaoTela = opIncluir then
  begin
    CdsSecretaria.Close;
    CdsSecretaria.Open;
    CdsSecretaria.Insert;
    Self.SetaComponentes(dsInsert);
    EdCodigo.Enabled := False;
  end;
  ControleBotoes;
  TRotinaGenerica.TentaFocar(DbNome);
end;

procedure TCadSecretariaF.BtnDeletarFotoSecretariaClick(Sender: TObject);
begin
  inherited;
  if CdsSecretaria.State in [dsInsert, dsEdit] then
    CdsSecretaria.FieldByName('FOTOSECRETARIA').Clear;
  DbFotoSecretaria.Clear;
end;

procedure TCadSecretariaF.BtnSelecionarFotoSecretariaClick(Sender: TObject);
Var
  ImagemFoto: TPicture;
  AbrirSelecaoImagem: TOpenPictureDialog;
begin
  AbrirSelecaoImagem := TOpenPictureDialog.Create(nil);
  ImagemFoto         := TPicture.Create();
  try
    if AbrirSelecaoImagem.Execute then
    begin
      ImagemFoto.LoadFromFile(AbrirSelecaoImagem.FileName);
      Clipboard.Assign(ImagemFoto);
      DbFotoSecretaria.PasteFromClipBoard;
    end;
  finally
    FreeAndNil(ImagemFoto);
    FreeAndNil(AbrirSelecaoImagem);
  end;
end;

procedure TCadSecretariaF.CdsSecretariaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsSecretaria.FieldByName('IDSECRETARIA').AsInteger       := DmConexaoF.Proximo('SECRETARIA', 'IDSECRETARIA');
  CdsSecretaria.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsSecretaria.FieldByName('CEP').AsString                 := EmptyStr;
  CdsSecretaria.FieldByName('CPF').AsString                 := EmptyStr;
  CdsSecretaria.FieldByName('TELEFONE').AsString            := EmptyStr;
  CdsSecretaria.FieldByName('CELULAR').AsString             := EmptyStr;
  CdsSecretaria.FieldByName('IDSITUACAOREGISTRO').AsInteger := 1;
end;

procedure TCadSecretariaF.clearData;
begin
  inherited;
  // Limpando Cds
  Self.CdsSecretaria.Close;
  Self.CdsSecretaria.CommandText :=
     ' SELECT SEC.* '
    +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
    +'       ,USU.LOGIN AS USUARIOLOGIN '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM SECRETARIA SEC '
    +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = SEC.IDCIDADE) '
    +'        LEFT JOIN USUARIO USU ON (USU.IDUSUARIO = SEC.IDUSUARIO) '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = SEC.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = -1 '
    ;
  Self.CdsSecretaria.Open;

  Self.SetaComponentes(dsBrowse);

  EdCodigo.Clear;
  EdCodigo.Enabled := True;
end;

procedure TCadSecretariaF.ControleBotoes;
begin
  inherited;
  BtnSelecionarFotoSecretaria.Enabled := CdsSecretaria.State in [dsInsert, dsEdit];
  BtnDeletarFotoSecretaria.Enabled    := CdsSecretaria.State in [dsInsert, dsEdit];
end;

procedure TCadSecretariaF.DbCodigoCidadeExit(Sender: TObject);
begin
  inherited;
  if CdsSecretaria.State in [dsInsert, dsEdit] then
  begin
    TPesqCidadeF.executaPesquisaCidade03(CdsSecretaria, StrToIntDef(DbCodigoCidade.Text, 0));
  end;
end;

procedure TCadSecretariaF.DbCodigoCidadePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqCidadeF.executaPesquisaCidade02(CdsSecretaria);
end;

procedure TCadSecretariaF.DbCodigoUsuarioSistemaExit(Sender: TObject);
begin
  inherited;
  if CdsSecretaria.State in [dsInsert, dsEdit] then
  begin
    TPesqUsuarioF.executaPesquisaUsuario03(CdsSecretaria, StrToIntDef(DbCodigoUsuarioSistema.Text, 0));
  end;
end;

procedure TCadSecretariaF.DbCodigoUsuarioSistemaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqUsuarioF.executaPesquisaUsuario02(CdsSecretaria);
end;

procedure TCadSecretariaF.EdCodigoExit(Sender: TObject);
var
  _SqlConsulta: String;
begin
  inherited;
  if Trim(EdCodigo.Text) <> EmptyStr then
  begin

    _SqlConsulta :=
       ' SELECT SEC.* '
      +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
      +'       ,USU.LOGIN AS USUARIOLOGIN '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM SECRETARIA SEC '
      +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = SEC.IDCIDADE) '
      +'        LEFT JOIN USUARIO USU ON (USU.IDUSUARIO = SEC.IDUSUARIO) '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = SEC.IDSITUACAOREGISTRO) '
      +'  WHERE 1 = 1 '
      ;

    // ALTERAR
    if Self.getOperacaoTela = opAlterar then
    begin
      CdsSecretaria.Close;
      CdsSecretaria.CommandText :=
        _SqlConsulta
       +' AND SEC.IDSECRETARIA = '+QuotedStr(EdCodigo.Text);
      CdsSecretaria.Open;
      if not(CdsSecretaria.IsEmpty) then
      begin
        CdsSecretaria.Edit;
        Self.SetaComponentes(dsEdit);
        EdCodigo.Enabled := False;
        TRotinaGenerica.TentaFocar(DbNome);
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
      CdsSecretaria.Close;
      CdsSecretaria.CommandText :=
        _SqlConsulta
       +' AND SEC.IDSECRETARIA = '+QuotedStr(EdCodigo.Text);
      CdsSecretaria.Open;
      if not(CdsSecretaria.IsEmpty) then
      begin
        Self.SetaComponentes(dsBrowse);
        EdCodigo.Enabled := False;
        TRotinaGenerica.TentaFocar(DbNome);
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

procedure TCadSecretariaF.EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqSecretariaF.executaPesquisaSecretaria01(EdCodigo);
end;

procedure TCadSecretariaF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CadSecretariaF.Release;
  CadSecretariaF := nil;
end;

procedure TCadSecretariaF.FormCreate(Sender: TObject);
begin
  Self.setCds(Self.CdsSecretaria);
  inherited;
  Self.clearData;
end;

function TCadSecretariaF.validarAntesConfirmacao: Boolean;
begin
  Result := True;
end;

Initialization
  RegisterClass(TCadSecretariaF);

end.
