unit CadClinicaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaCadastroU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, cxPC, ImgList, ActnList, ExtCtrls, StdCtrls,
  cxButtons, ComCtrls, DB, DBClient, cxContainer, cxEdit, cxMaskEdit,
  cxButtonEdit, cxDBEdit, cxTextEdit, cxImage, ExtDlgs, ClipBrd, jpeg;

type
  TCadClinicaF = class(TXTelaCadastroF)
    TsPrincipal: TcxTabSheet;
    DsClinica: TDataSource;
    CdsClinica: TClientDataSet;
    CdsClinicaIDCLINICA: TIntegerField;
    CdsClinicaIDCIDADE: TIntegerField;
    CdsClinicaDATAINCLUSAO: TDateField;
    CdsClinicaNUMERO: TIntegerField;
    CdsClinicaCLINICA: TStringField;
    CdsClinicaENDERECO: TStringField;
    CdsClinicaBAIRRO: TStringField;
    CdsClinicaSITECLINICA: TStringField;
    CdsClinicaEMAILCLINICA: TStringField;
    CdsClinicaTELEFONE1: TStringField;
    CdsClinicaTELEFONE2: TStringField;
    CdsClinicaCEP: TStringField;
    CdsClinicaFOTOMENUPRINCIPAL: TBlobField;
    CdsClinicaFOTORELATORIO: TBlobField;
    CdsClinicaCIDADEUF: TStringField;
    LblNome: TLabel;
    LblTelefone01: TLabel;
    LblTelefone02: TLabel;
    LblNumero: TLabel;
    LblEndereco: TLabel;
    LblBairro: TLabel;
    LblCep: TLabel;
    LblCidade: TLabel;
    DbClinica: TcxDBTextEdit;
    DbTelefone02: TcxDBTextEdit;
    DbTelefone01: TcxDBTextEdit;
    DbNomeCidade: TcxDBTextEdit;
    DbCodigoCidade: TcxDBButtonEdit;
    DbCep: TcxDBTextEdit;
    DbNumero: TcxDBTextEdit;
    DbBairro: TcxDBTextEdit;
    DbEndereco: TcxDBTextEdit;
    LblSite: TLabel;
    DbSite: TcxDBTextEdit;
    TsImagem: TcxTabSheet;
    GbImagem: TGroupBox;
    DbImageMenuSistema: TcxDBImage;
    GroupBox2: TGroupBox;
    DbImageCabecalhoRelatorio: TcxDBImage;
    PnlBotaoImagemMenuSistema: TPanel;
    PnlBotaoImagemCabecalhoRelatorio: TPanel;
    BtnSelecionarImagemMenuSistema: TcxButton;
    BtnDeletarImagemMenuSistema: TcxButton;
    BtnSelecionarImagemCabecalhoRelatorio: TcxButton;
    BtnDeletarrImagemCabecalhoRelatorio: TcxButton;
    CdsClinicaSMTPPORTA: TIntegerField;
    CdsClinicaSMTPSERVIDOR: TStringField;
    CdsClinicaEMAILCLINICASENHA: TStringField;
    GbConfiguracaoEmail: TGroupBox;
    LblSMTP: TLabel;
    LblSenhaEmail: TLabel;
    LblEmail: TLabel;
    DbSMTPServidor: TcxDBTextEdit;
    DbSenhaEmail: TcxDBTextEdit;
    DbEmail: TcxDBTextEdit;
    DbPorta: TcxDBTextEdit;
    LblPorta: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CdsClinicaAfterInsert(DataSet: TDataSet);
    procedure DbCodigoCidadeExit(Sender: TObject);
    procedure DbCodigoCidadePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure BtnSelecionarImagemMenuSistemaClick(Sender: TObject);
    procedure BtnSelecionarImagemCabecalhoRelatorioClick(Sender: TObject);
    procedure BtnDeletarImagemMenuSistemaClick(Sender: TObject);
    procedure BtnDeletarrImagemCabecalhoRelatorioClick(Sender: TObject);
    procedure AcaoAlterarExecute(Sender: TObject);
    procedure AcaoIncluirExecute(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure clearData; override;
    function validarAntesConfirmacao: Boolean; override;

  end;

var
  CadClinicaF: TCadClinicaF;

implementation

uses DmCadastroU, DmConexaoU, LibRotinasSistemaU, XLibGenericoU, XLibMessages,
  PesqCidadeU;

{$R *.dfm}

procedure TCadClinicaF.AcaoAlterarExecute(Sender: TObject);
begin
  inherited;
  CdsClinica.Edit;
  Self.SetaComponentes(dsEdit);
  Self.ControleBotoes;
  if DbClinica.CanFocusEx then
    TRotinaGenerica.TentaFocar(DbClinica);
end;

procedure TCadClinicaF.AcaoIncluirExecute(Sender: TObject);
begin
  inherited;
  CdsClinica.Insert;
  Self.SetaComponentes(dsInsert);
  Self.ControleBotoes;
  if DbClinica.CanFocusEx then
    TRotinaGenerica.TentaFocar(DbClinica);
end;

procedure TCadClinicaF.BtnDeletarImagemMenuSistemaClick(Sender: TObject);
begin
  inherited;
  if CdsClinica.State in [dsInsert, dsEdit] then
    CdsClinica.FieldByName('FOTOMENUPRINCIPAL').Clear;
  DbImageMenuSistema.Clear;
end;

procedure TCadClinicaF.BtnSelecionarImagemMenuSistemaClick(Sender: TObject);
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
      DbImageMenuSistema.PasteFromClipBoard;
    end;
  finally
    FreeAndNil(ImagemFoto);
    FreeAndNil(AbrirSelecaoImagem);
  end;
end;

procedure TCadClinicaF.CdsClinicaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsClinica.FieldByName('IDCLINICA').AsInteger     := DmConexaoF.Proximo('CLINICA', 'IDCLINICA');
  CdsClinica.FieldByName('DATAINCLUSAO').AsDateTime := Date;
  CdsClinica.FieldByName('CEP').AsString            := EmptyStr;
  CdsClinica.FieldByName('TELEFONE1').AsString      := EmptyStr;
  CdsClinica.FieldByName('TELEFONE2').AsString      := EmptyStr;
end;

procedure TCadClinicaF.clearData;
begin
  inherited;
  // Limpando Cds
  Self.CdsClinica.Close;
  Self.CdsClinica.CommandText :=
     ' SELECT CLI.* '
    +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
    +'   FROM CLINICA CLI '
    +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = CLI.IDCIDADE) '
    +'  WHERE 1 = 1 '
    ;
  Self.CdsClinica.Open;
  if Self.getOperacaoTela = opNeutro then
    Self.SetaComponentes(dsBrowse);
end;

procedure TCadClinicaF.BtnSelecionarImagemCabecalhoRelatorioClick(Sender: TObject);
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
      DbImageCabecalhoRelatorio.PasteFromClipBoard;
    end;
  finally
    FreeAndNil(ImagemFoto);
    FreeAndNil(AbrirSelecaoImagem);
  end;
end;

procedure TCadClinicaF.BtnDeletarrImagemCabecalhoRelatorioClick(Sender: TObject);
begin
  inherited;
  if CdsClinica.State in [dsInsert, dsEdit] then
    CdsClinica.FieldByName('FOTORELATORIO').Clear;
  DbImageCabecalhoRelatorio.Clear;
end;

procedure TCadClinicaF.DbCodigoCidadeExit(Sender: TObject);
begin
  inherited;
  if CdsClinica.State in [dsInsert, dsEdit] then
  begin
    TPesqCidadeF.executaPesquisaCidade03(CdsClinica, StrToIntDef(DbCodigoCidade.Text, 0));
  end;
end;

procedure TCadClinicaF.DbCodigoCidadePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqCidadeF.executaPesquisaCidade02(CdsClinica);
end;

procedure TCadClinicaF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CadClinicaF.Release;
  CadClinicaF := nil;
end;

procedure TCadClinicaF.FormCreate(Sender: TObject);
begin
  BtnIncluir.Visible   := False;
  BtnExcluir.Visible   := False;
  BtnConsultar.Visible := False;

  Self.setCds(Self.CdsClinica);
  inherited;
  Self.clearData;
  if CdsClinica.IsEmpty then
    AcaoIncluir.Execute;
//  else
//    AcaoAlterar.Execute;

  Self.ControleBotoes;
  Self.SetaComponentes(DsClinica.State);
end;

procedure TCadClinicaF.FormShow(Sender: TObject);
begin
  inherited;
  PcTelaCadastro.ActivePage := TsPrincipal;
end;

function TCadClinicaF.validarAntesConfirmacao: Boolean;
begin
  Result := True;
end;

Initialization
  RegisterClass(TCadClinicaF);

end.












//Var
//  ImagemFoto: TPicture;
//  AbrirSelecaoImagem: TOpenPictureDialog;
//begin
//  AbrirSelecaoImagem := TOpenPictureDialog.Create(nil);
//  ImagemFoto         := TPicture.Create();
//  try
//    if OpenPictureDialog1.Execute then
//    Begin
//
////      ImagemFoto.LoadFromFile(OpenPictureDialog1.FileName);
////      Clipboard.Assign(ImagemFoto);
////      DbImageMenuSistema.PasteFromClipBoard;
////      ImagemFoto.Free;
//    End;
//  finally
//    FreeAndNil(ImagemFoto);
//    FreeAndNil(AbrirSelecaoImagem);
//  end;
