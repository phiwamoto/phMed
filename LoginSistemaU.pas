unit LoginSistemaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaLoginU, ExtCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, jpeg, cxImage, cxTextEdit, StdCtrls, cxButtons,
  dxGDIPlusClasses, Shellapi, DB, DBClient, cxDBEdit;

type
  TLoginSistemaF = class(TXTelaLoginF)
    BtnInserir: TcxButton;
    cxButton1: TcxButton;
    EdSenha: TcxTextEdit;
    LblSenha: TLabel;
    EdUsuario: TcxTextEdit;
    LblUsuario: TLabel;
    ImagemLoginDefault: TcxImage;
    Label1: TLabel;
    DsUsuario: TDataSource;
    CdsUsuario: TClientDataSet;
    ImagemUsuarioCarregado: TImage;
    CdsUsuarioFOTOUSUARIO: TBlobField;
    procedure BtnInserirClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure EdSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure EdUsuarioPropertiesChange(Sender: TObject);
    procedure EdUsuarioExit(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    Tentativas: Smallint;

    procedure carregaFotoUsuario;
    function VerificarUsuarioSenha(pUsuario, pSenha: String): Boolean;


  end;

var
  LoginSistemaF: TLoginSistemaF;

implementation

uses XLibGenericoU, DmConexaoU, LibRotinasSistemaU, DmCadastroU, DmRelatorioU;

{$R *.dfm}

procedure TLoginSistemaF.BtnInserirClick(Sender: TObject);

  procedure Copia(Origem, Destino: String);
  var
     Parametros: Pchar;
  begin
     Parametros := Pchar('"' + Origem + '" "' + Destino + '" /S /Y');
     ShellExecute(handle, '', 'xCopy', Parametros, '', SW_SHOW);
  end;

 function CopiaDirs(DirFonte,DirDest : String) : Boolean;
  var  ShFileOpStruct : TShFileOpStruct;
  begin  Result := False;
    if DirFonte = '' then
      raise Exception.Create('Diretório fonte não pode ficar em branco');

    if DirDest = '' then
      raise Exception.Create(      'Diretório destino não pode ficar em branco');

    if not DirectoryExists(DirFonte) then
      raise Exception.Create('Diretório fonte inexistente');

      DirFonte := DirFonte+#0;  DirDest := DirDest+#0;
    FillChar(ShFileOpStruct,Sizeof(TShFileOpStruct),0);

    with ShFileOpStruct do
      begin    Wnd := Application.Handle;
      wFunc := FO_COPY;
      pFrom := PChar(DirFonte);
      pTo := PChar(DirDest);
      fFlags := FOF_ALLOWUNDO or FOF_SIMPLEPROGRESS or FOF_NOCONFIRMATION;
      end;

    ShFileOperation(ShFileOpStruct);

  end;

begin
  inherited;
  if (EdUsuario.Text = '') then
  begin
    TRotinaGenerica.MensagemGeral('O campo <Usuário> deve ser informado!', MsgValidacao, BtOk);
    TRotinaGenerica.TentaFocar(EdUsuario);
    Exit;
  end;

  if (EdSenha.Text = '') then
  begin
    TRotinaGenerica.MensagemGeral('O campo <Senha> deve ser informado!', MsgValidacao, BtOk);
    TRotinaGenerica.TentaFocar(EdSenha);
    Exit;
  end;

  if VerificarUsuarioSenha(EdUsuario.Text, EdSenha.Text) then
  begin
    ModalResult := mrOk;

    if DirectoryExists(DmConexaoF.DiretorioSistema) then
    begin
      //CopyFile(PWideChar(DmConexaoF.DiretorioSistema), PWideChar('D:\backup\phMed'+DateToStr(Date)+TimeToStr(Time)), true );
      //Copia(PWideChar('D:\Projetos\Delphi\phMed'), PWideChar('D:\backup\phMed'+FormatDateTime('ddMMyyyy',Date)+FormatDateTime('hhmmss',Time)));

      // Funionando _ Teste 20/06/2013
      //CopiaDirs('D:\Projetos\Delphi\phMed\', 'D:\backup\phMed'+FormatDateTime('yyyyMMdd',Date)+'_'+FormatDateTime('ssmmhh',Time));
    end;

////Não se esqueça de declarar "ShellAPI" na uses do seu programa!
//
//procedure TForm1.Copia(Origem, Destino: String);
//var
//   Parametros: Pchar;
//begin
//   Parametros := Pchar('"' + Origem + '" "' + Destino + '" /S /Y');
//   ShellExecute(handle, '', 'xCopy', Parametros, '', SW_SHOW);
//end;
////Onde: /S elimina as pastas vazias para copiar
////   e  /Y omite o chamado "Sim/Nao" para substituir arquivos existentes na Pasta
//
////Para Chamar o Procedimento use:
//
//Copia('C:\Minha pasta','D:\MeuDestino')


   // Close;
  end
  else
  begin
    Inc(Tentativas);
    if Tentativas < 3 then
    begin
      MessageDlg(Format('Tentativa %d de 3', [tentativas]), mtError, [mbOk], 0);
      EdSenha.Clear;
      TRotinaGenerica.TentaFocar(EdSenha);
    end
    else
    begin
      MessageDlg(Format('Tentativa %d de 3', [tentativas]), mtError, [mbOk], 0);
      ModalResult := mrCancel;
    //  Close;
    end;
  end;
end;

procedure TLoginSistemaF.carregaFotoUsuario;
var
  Stm: TStream;
  Jpg: TJPEGImage;
begin
  if Trim(EdUsuario.Text) <> '' then
  begin
    CdsUsuario.Close;
    CdsUsuario.CommandText :=
       ' SELECT CASE WHEN DOU.FOTODOUTOR IS NOT NULL THEN DOU.FOTODOUTOR '
      +'             WHEN SEC.FOTOSECRETARIA IS NOT NULL THEN SEC.FOTOSECRETARIA '
      +'             ELSE NULL '
      +'        END AS FOTOUSUARIO '
      +'  FROM USUARIO USU '
      +'       LEFT JOIN DOUTOR DOU ON (DOU.IDUSUARIO = USU.IDUSUARIO) '
      +'       LEFT JOIN SECRETARIA SEC ON (SEC.IDUSUARIO = USU.IDUSUARIO) '
      +' WHERE 1 = 1 '
      +'   AND USU.LOGIN = '+QuotedStr(Trim(EdUsuario.Text))
    ;
    CdsUsuario.Open;

    if not(CdsUsuario.IsEmpty) then
    begin
      if CdsUsuario.RecordCount = 1 then
      begin
        if TBlobField(CdsUsuario.FieldByName('FOTOUSUARIO')).BlobSize > 0 then
        begin
          Stm := TMemoryStream.Create;
          Jpg := TJpegImage.Create;
          try
            TBlobField(CdsUsuario.FieldByName('FOTOUSUARIO')).SaveToStream(Stm);
            Stm.Position := 0;
            Jpg.LoadFromStream( Stm );
            try
              ImagemUsuarioCarregado.Picture.Assign(Jpg);
              ImagemLoginDefault.Visible := False;
              ImagemUsuarioCarregado.Visible := True;
            except
              ImagemUsuarioCarregado.Picture.Assign(nil);
            end;
          finally
            Stm.Free;
            Jpg.Free;
          end;
        end
        else
        begin
          ImagemUsuarioCarregado.Picture.Assign(nil);
          ImagemLoginDefault.Visible := True;
          ImagemUsuarioCarregado.Visible := False;
        end;
      end
      else
      begin
        ImagemLoginDefault.Visible := True;
        ImagemUsuarioCarregado.Visible := False;
      end;
    end
    else begin
      ImagemLoginDefault.Visible := True;
      ImagemUsuarioCarregado.Visible := False;
    end;
  end
  else begin
    ImagemLoginDefault.Visible := True;
    ImagemUsuarioCarregado.Visible := False;
  end;
end;

procedure TLoginSistemaF.cxButton1Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
//  Close;
end;

procedure TLoginSistemaF.EdSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    BtnInserir.Click;
  end;
end;

procedure TLoginSistemaF.EdUsuarioExit(Sender: TObject);
begin
  inherited;
  carregaFotoUsuario;
end;

procedure TLoginSistemaF.EdUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    TRotinaGenerica.TentaFocar(EdSenha);
  end;
end;

procedure TLoginSistemaF.EdUsuarioPropertiesChange(Sender: TObject);
begin
  inherited;
  //carregaFotoUsuario;
end;

procedure TLoginSistemaF.FormCreate(Sender: TObject);
begin
  inherited;
  Tentativas := 0;
  if TParametroDesenvolvimento.LoginAdmin then
  begin
    EdUsuario.Text := 'admin';
    EdSenha.Text   := 'sistema2010';
  end;
end;

function TLoginSistemaF.VerificarUsuarioSenha(pUsuario, pSenha: String): Boolean;
begin
  with DmConexaoF.SQLConnection, DmConexaoF.dmCdsConsulta do
  begin
    if not Connected then
       Connected := True;
    Close;
    CommandText :=
      ' SELECT IDUSUARIO '
     +'   FROM USUARIO '
     +'  WHERE IDSITUACAOREGISTRO = 1 '
     +'    AND UPPER(LOGIN) = '+AnsiUpperCase(QuotedStr(pUsuario))
     +'    AND UPPER(SENHA) = '+AnsiUpperCase(QuotedStr(pSenha))
    ;
    Open;
    DmConexaoF.vUserLogIn_IdUsuario := FieldByName('IDUSUARIO').AsInteger;
//    DmConexaoF.carregaPermissoesUsuarios(FieldByName('IDPERFIL').AsInteger);
    Result := (RecordCount > 0);
  end;
end;

Initialization
  RegisterClass(TLoginSistemaF);

end.
