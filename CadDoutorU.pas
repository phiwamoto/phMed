unit CadDoutorU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaCadastroU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, ImgList, ActnList, ExtCtrls, StdCtrls, cxButtons,
  cxPC, ComCtrls, cxContainer, cxEdit, cxButtonEdit, cxDBEdit, cxCheckBox,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, DB, DBClient, cxGroupBox,
  cxImage;

type
  TCadDoutorF = class(TXTelaCadastroF)
    TsPrincipal: TcxTabSheet;
    LblCrm: TLabel;
    LblDataInclusao: TLabel;
    LblSecretaria: TLabel;
    LblNumero: TLabel;
    LblEndereco: TLabel;
    LblEmail: TLabel;
    LblBairro: TLabel;
    LblCpf: TLabel;
    LblRg: TLabel;
    LblTelefone: TLabel;
    LblCelular: TLabel;
    LblCep: TLabel;
    Label33: TLabel;
    DbDataInclusao: TcxDBDateEdit;
    DbCrm: TcxDBTextEdit;
    DbDoutor: TcxDBTextEdit;
    DbNomeCidade: TcxDBTextEdit;
    DbCodigoCidade: TcxDBButtonEdit;
    DbRg: TcxDBTextEdit;
    DbCep: TcxDBTextEdit;
    DbCelular: TcxDBTextEdit;
    DbNumero: TcxDBTextEdit;
    DbEmail: TcxDBTextEdit;
    DbCpf: TcxDBTextEdit;
    DbTelefone: TcxDBTextEdit;
    DbBairro: TcxDBTextEdit;
    DbEndereco: TcxDBTextEdit;
    EdCodigo: TcxButtonEdit;
    LblCodigo: TLabel;
    CbAtivo: TcxDBCheckBox;
    DsDoutor: TDataSource;
    CdsDoutor: TClientDataSet;
    CdsDoutorIDDOUTOR: TIntegerField;
    CdsDoutorIDCIDADE: TIntegerField;
    CdsDoutorIDUSUARIO: TIntegerField;
    CdsDoutorIDSITUACAOREGISTRO: TSmallintField;
    CdsDoutorDATAINCLUSAO: TDateField;
    CdsDoutorNUMERO: TIntegerField;
    CdsDoutorNOME: TStringField;
    CdsDoutorENDERECO: TStringField;
    CdsDoutorBAIRRO: TStringField;
    CdsDoutorEMAIL: TStringField;
    CdsDoutorCPF: TStringField;
    CdsDoutorRG: TStringField;
    CdsDoutorTELEFONE: TStringField;
    CdsDoutorCELULAR: TStringField;
    CdsDoutorCEP: TStringField;
    CdsDoutorCRM: TStringField;
    CdsDoutorINTERVALO: TIntegerField;
    CdsDoutorHORAINICIALMANHA: TStringField;
    CdsDoutorHORAFINALMANHA: TStringField;
    CdsDoutorHORAINICIALTARDE: TStringField;
    CdsDoutorHORAFINALTARDE: TStringField;
    CdsDoutorCIDADEUF: TStringField;
    CdsDoutorUSUARIOLOGIN: TStringField;
    CdsDoutorSITUACAOREGISTRO: TStringField;
    TsConfiguracaoAgenda: TcxTabSheet;
    GbConfiguracaoAgenda: TGroupBox;
    GbAgenda_HoraTrabalhoManha: TcxGroupBox;
    LblAgenda_HoraManhaInicial: TLabel;
    LblAgenda_HoraManhaFinal: TLabel;
    CbAgenda_HoraManhaInicial: TcxDBComboBox;
    CbAgenda_HoraManhaFinal: TcxDBComboBox;
    GbAgenda_HoraTrabalhoTarde: TcxGroupBox;
    LblAgenda_HoraTardeFinal: TLabel;
    LblAgenda_HoraTardeInicial: TLabel;
    CbAgenda_HoraTardeFinal: TcxDBComboBox;
    CbAgenda_HoraTardeInicial: TcxDBComboBox;
    GbAgenda_IntervaloConsulta: TcxGroupBox;
    LblAgenda_IntervaloMinutoConsulta: TLabel;
    CbAgenda_IntervaloMinutoConsulta: TcxDBComboBox;
    GbImagem: TGroupBox;
    DbFotoDoutor: TcxDBImage;
    PnlBotaoFotoDoutor: TPanel;
    BtnSelecionarFotoDoutor: TcxButton;
    BtnDeletarFotoDoutor: TcxButton;
    CdsDoutorFOTODOUTOR: TBlobField;
    DbLoginUsuarioSistema: TcxDBTextEdit;
    DbCodigoUsuarioSistema: TcxDBButtonEdit;
    LblUsuarioSistema: TLabel;
    procedure AcaoIncluirExecute(Sender: TObject);
    procedure CdsDoutorAfterInsert(DataSet: TDataSet);
    procedure AcaoAlterarExecute(Sender: TObject);
    procedure AcaoExcluirExecute(Sender: TObject);
    procedure AcaoConsultarExecute(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DbCodigoCidadeExit(Sender: TObject);
    procedure DbCodigoCidadePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure BtnSelecionarFotoDoutorClick(Sender: TObject);
    procedure BtnDeletarFotoDoutorClick(Sender: TObject);
    procedure DbCodigoUsuarioSistemaExit(Sender: TObject);
    procedure DbCodigoUsuarioSistemaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure clearData; override;
    procedure ControleBotoes; override;
    function validarAntesConfirmacao: Boolean; override;

  end;

var
  CadDoutorF: TCadDoutorF;

implementation

uses DmCadastroU, DmConexaoU, XLibGenericoU, XLibMessages, PesqCidadeU,
  PesqDoutorU, ExtDlgs, ClipBrd, PesqUsuarioU;

{$R *.dfm}

{ TCadDoutorF }

procedure TCadDoutorF.AcaoAlterarExecute(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadDoutorF.AcaoConsultarExecute(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadDoutorF.AcaoExcluirExecute(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadDoutorF.AcaoIncluirExecute(Sender: TObject);
begin
  inherited;
  // INCLUIR
  if Self.getOperacaoTela = opIncluir then
  begin
    CdsDoutor.Close;
    CdsDoutor.Open;
    CdsDoutor.Insert;
    Self.SetaComponentes(dsInsert);
    EdCodigo.Enabled := False;
  end;
  ControleBotoes;
  TRotinaGenerica.TentaFocar(DbDoutor);
end;

procedure TCadDoutorF.BtnDeletarFotoDoutorClick(Sender: TObject);
begin
  inherited;
  if CdsDoutor.State in [dsInsert, dsEdit] then
    CdsDoutor.FieldByName('FOTODOUTOR').Clear;
  DbFotoDoutor.Clear;
end;

procedure TCadDoutorF.BtnSelecionarFotoDoutorClick(Sender: TObject);
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
      DbFotoDoutor.PasteFromClipBoard;
    end;
  finally
    FreeAndNil(ImagemFoto);
    FreeAndNil(AbrirSelecaoImagem);
  end;
end;

procedure TCadDoutorF.CdsDoutorAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsDoutor.FieldByName('IDDOUTOR').AsInteger           := DmConexaoF.Proximo('DOUTOR', 'IDDOUTOR');
  CdsDoutor.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsDoutor.FieldByName('CEP').AsString                 := EmptyStr;
  CdsDoutor.FieldByName('CPF').AsString                 := EmptyStr;
  CdsDoutor.FieldByName('TELEFONE').AsString            := EmptyStr;
  CdsDoutor.FieldByName('CELULAR').AsString             := EmptyStr;
  CdsDoutor.FieldByName('IDSITUACAOREGISTRO').AsInteger := 1;

  // Configuração Default
  CdsDoutor.FieldByName('INTERVALO').AsInteger       := 15;
  CdsDoutor.FieldByName('HORAINICIALMANHA').AsString := '07:00';
  CdsDoutor.FieldByName('HORAFINALMANHA').AsString   := '13:00';
  CdsDoutor.FieldByName('HORAINICIALTARDE').AsString := '13:00';
  CdsDoutor.FieldByName('HORAFINALTARDE').AsString   := '19:00';
end;

procedure TCadDoutorF.clearData;
begin
  inherited;
  // Limpando Cds
  Self.CdsDoutor.Close;
  Self.CdsDoutor.CommandText :=
     ' SELECT DOU.* '
    +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
    +'       ,USU.LOGIN AS USUARIOLOGIN '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM DOUTOR DOU '
    +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = DOU.IDCIDADE) '
    +'        LEFT JOIN USUARIO USU ON (USU.IDUSUARIO = DOU.IDUSUARIO) '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = DOU.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = -1 '
    ;
  Self.CdsDoutor.Open;

  Self.SetaComponentes(dsBrowse);

  EdCodigo.Clear;
  EdCodigo.Enabled := True;
end;

procedure TCadDoutorF.ControleBotoes;
begin
  inherited;
  BtnSelecionarFotoDoutor.Enabled := CdsDoutor.State in [dsInsert, dsEdit];
  BtnDeletarFotoDoutor.Enabled    := CdsDoutor.State in [dsInsert, dsEdit];
end;

procedure TCadDoutorF.DbCodigoCidadeExit(Sender: TObject);
begin
  inherited;
  if CdsDoutor.State in [dsInsert, dsEdit] then
  begin
    TPesqCidadeF.executaPesquisaCidade03(CdsDoutor, StrToIntDef(DbCodigoCidade.Text, 0));
  end;
end;

procedure TCadDoutorF.DbCodigoCidadePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqCidadeF.executaPesquisaCidade02(CdsDoutor);
end;

procedure TCadDoutorF.DbCodigoUsuarioSistemaExit(Sender: TObject);
begin
  inherited;
  if CdsDoutor.State in [dsInsert, dsEdit] then
  begin
    TPesqUsuarioF.executaPesquisaUsuario03(CdsDoutor, StrToIntDef(DbCodigoUsuarioSistema.Text, 0));
  end;
end;

procedure TCadDoutorF.DbCodigoUsuarioSistemaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqUsuarioF.executaPesquisaUsuario02(CdsDoutor);
end;

procedure TCadDoutorF.EdCodigoExit(Sender: TObject);
var
  _SqlConsulta: String;
begin
  inherited;
  if Trim(EdCodigo.Text) <> EmptyStr then
  begin

    _SqlConsulta :=
       ' SELECT DOU.* '
      +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
      +'       ,USU.LOGIN AS USUARIOLOGIN '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM DOUTOR DOU '
      +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = DOU.IDCIDADE) '
      +'        LEFT JOIN USUARIO USU ON (USU.IDUSUARIO = DOU.IDUSUARIO) '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = DOU.IDSITUACAOREGISTRO) '
      +'  WHERE 1 = 1 '
      ;

    // ALTERAR
    if Self.getOperacaoTela = opAlterar then
    begin
      CdsDoutor.Close;
      CdsDoutor.CommandText :=
        _SqlConsulta
       +' AND DOU.IDDOUTOR = '+QuotedStr(EdCodigo.Text);
      CdsDoutor.Open;
      if not(CdsDoutor.IsEmpty) then
      begin
        CdsDoutor.Edit;
        Self.SetaComponentes(dsEdit);
        EdCodigo.Enabled := False;
        TRotinaGenerica.TentaFocar(DbDoutor);
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
      CdsDoutor.Close;
      CdsDoutor.CommandText :=
        _SqlConsulta
       +' AND DOU.IDDOUTOR = '+QuotedStr(EdCodigo.Text);
      CdsDoutor.Open;
      if not(CdsDoutor.IsEmpty) then
      begin
        Self.SetaComponentes(dsBrowse);
        EdCodigo.Enabled := False;
        TRotinaGenerica.TentaFocar(DbDoutor);
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

procedure TCadDoutorF.EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqDoutorF.executaPesquisaDoutor01(EdCodigo);
end;

procedure TCadDoutorF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CadDoutorF.Release;
  CadDoutorF := nil;
end;

procedure TCadDoutorF.FormCreate(Sender: TObject);
begin
  Self.setCds(Self.CdsDoutor);
  inherited;
  Self.clearData;
end;

function TCadDoutorF.validarAntesConfirmacao: Boolean;
begin
  Result := True;
end;

Initialization
  RegisterClass(TCadDoutorF);

end.
