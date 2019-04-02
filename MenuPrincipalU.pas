unit MenuPrincipalU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XMenuU, dxSkinsCore, dxSkinsdxBarPainter, dxSkinsDefaultPainters,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsdxRibbonPainter, dxStatusBar, dxRibbonStatusBar, dxRibbon, ExtCtrls,
  ImgList, AppEvnts, dxBar, cxClasses, ComCtrls, ToolWin, Menus, StdCtrls,
  cxButtons, DB, DBClient, Grids, DBGrids, jpeg, CadCidadeU, CadUsuarioU,
  cxContainer, cxEdit, cxImage, cxDBEdit, DBCtrls, ClipBrd;

type
  TMenuPrincipalF = class(TXMenuF)
    ImageList16: TcxImageList;
    ImageList32: TcxImageList;
    TabCadastro: TdxRibbonTab;
    TabRotina: TdxRibbonTab;
    TabConsulta: TdxRibbonTab;
    TabRelatorio: TdxRibbonTab;
    TabSistema: TdxRibbonTab;
    GrupoCadastro: TdxBar;
    GrupoAgendamento: TdxBar;
    GrupoConsulta: TdxBar;
    GrupoRelatorio: TdxBar;
    GrupoSistema: TdxBar;
    MnCadastroSecretaria: TdxBarLargeButton;
    MnCadastroPaciente: TdxBarLargeButton;
    MnCadBancoF: TdxBarLargeButton;
    MnCadDoutorF: TdxBarLargeButton;
    MnCadastroUsuario: TdxBarLargeButton;
    MnSistemaBackup: TdxBarLargeButton;
    MnSistemaRestore: TdxBarLargeButton;
    MnSistemaSobre: TdxBarLargeButton;
    MnCadSecretariaF: TdxBarLargeButton;
    MnCadConvenioF: TdxBarLargeButton;
    MnOpeAgendaF: TdxBarLargeButton;
    MnCadClinicaF: TdxBarLargeButton;
    MnOpeParametroSistemaF: TdxBarLargeButton;
    MnAgendamentoAgendaConsulta: TdxBarLargeButton;
    DsLogado: TDataSource;
    CdsLogado: TClientDataSet;
    MnAgendamentoFichaPaciente: TdxBarLargeButton;
    MnCadPerfilF: TdxBarLargeButton;
    BotaoAgrupadorMedicamento: TdxBarSubItem;
    MnCadMedicamentoF: TdxBarButton;
    MnAgendamentoAgendaCompromisso: TdxBarLargeButton;
    MnCadastroConvenio: TdxBarLargeButton;
    MnRotinaProcesso: TdxBarLargeButton;
    MnCadastroMedicamentoQuantidade: TdxBarLargeButton;
    MnCadastroMedicamento: TdxBarLargeButton;
    MnCadastroClinica: TdxBarLargeButton;
    MnCadastroDoutor: TdxBarLargeButton;
    MnCadastroCidade: TdxBarLargeButton;
    MnCadastroPerfilAcesso: TdxBarLargeButton;
    MnCadastroMedicamentoUso: TdxBarLargeButton;
    MnCadastroExame: TdxBarLargeButton;
    MnCadastroBanco: TdxBarLargeButton;
    MnRelatorioAgendaConsulta11: TdxBarLargeButton;
    MnConsultaAgendaTelefonica1: TdxBarLargeButton;
    Image1: TImage;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarLargeButton10: TdxBarLargeButton;
    MnCorrecaoPacienteDuplicidade: TdxBarLargeButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    MnRelatorioAgendaConsulta: TdxBarButton;
    MnRelatorioAgendaDeConsultaPorPeriodo: TdxBarButton;
    MnAgendamentoDoCliente: TdxBarLargeButton;
    procedure TimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MnCadastroPacienteClick(Sender: TObject);
    procedure MnCadastroConvenioClick(Sender: TObject);
    procedure MnCadastroUsuarioClick(Sender: TObject);
    procedure MnCadastroDoutorClick(Sender: TObject);
    procedure MnCadastroMedicamentoClick(Sender: TObject);
    procedure MnCadastroMedicamentoQuantidadeClick(Sender: TObject);
    procedure MnCadastroCidadeClick(Sender: TObject);
    procedure MnAgendamentoAgendaConsultaClick(Sender: TObject);
    procedure MnCadastroExameClick(Sender: TObject);
    procedure MnCadastroMedicamentoUsoClick(Sender: TObject);
    procedure MnCadastroSecretariaClick(Sender: TObject);
    procedure MnCadastroClinicaClick(Sender: TObject);
    procedure MnConsultaAgendaTelefonica1Click(Sender: TObject);
    procedure MnAgendamentoFichaPacienteClick(Sender: TObject);
    procedure dxBarLargeButton9Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure MnCorrecaoPacienteDuplicidadeClick(Sender: TObject);
    procedure MnRelatorioAgendaConsultaClick(Sender: TObject);
    procedure MnRelatorioAgendaDeConsultaPorPeriodoClick(Sender: TObject);
    procedure MnAgendamentoDoClienteClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure locateUserConnect(const pId_Usuario: Integer);
    procedure menuPermisao;
    procedure carregaLogoMenuCentral;

  end;

var
  MenuPrincipalF: TMenuPrincipalF;

implementation

uses
  // Data Module
  DmCadastroU, DmConexaoU, DmRelatorioU,

  // Login Sistema
  LoginSistemaU,

  // Lib e Funções
  XLibGenericoU, LibRotinasSistemaU,

  // Cadastro
  CadPacienteU, CadDoutorU, CadSecretariaU, CadConvenioU, CadExameU,
  CadMedicamentoU, CadMedicamentoQuantidadeU, CadMedicamentoUsoU,

  // Rotinas Operacionais
  OpeAgendaConsultaU, CadClinicaU, ConsAgendaTelefonicaU, OpeFichaPacienteU,
  RelAgendaConsultaU, RelFichaPacienteU, RelPacienteSexoGraficoU,
  OpeEnvioEmailAniversarianteU, OpeCorrigePacienteDuplicadoU,
  RelAgendaConsultaPorPeriodoU, ConsAgendamentoDoPacienteU;


{$R *.dfm}

procedure TMenuPrincipalF.MnCadastroPacienteClick(Sender: TObject);
begin
  inherited;
  Self.criaForm(TCadPacienteF, TObject(CadPacienteF));
end;

procedure TMenuPrincipalF.MnCadastroSecretariaClick(Sender: TObject);
begin
  inherited;
  Self.criaForm(TCadSecretariaF, TObject(CadSecretariaF));
end;

procedure TMenuPrincipalF.MnCadastroUsuarioClick(Sender: TObject);
begin
  inherited;
  Self.CriaForm(TCadUsuarioF, TObject(CadUsuarioF));
end;

procedure TMenuPrincipalF.MnConsultaAgendaTelefonica1Click(Sender: TObject);
begin
  inherited;
  Self.criaForm(TConsAgendaTelefonicaF, TObject(ConsAgendaTelefonicaF));
end;

procedure TMenuPrincipalF.MnAgendamentoAgendaConsultaClick(Sender: TObject);
begin
  inherited;
  Self.criaForm(TOpeAgendaConsultaF, TObject(OpeAgendaConsultaF));
end;

procedure TMenuPrincipalF.MnAgendamentoDoClienteClick(Sender: TObject);
begin
  inherited;
  criaForm(TConsAgendamentoDoPacienteF, TObject(ConsAgendamentoDoPacienteF));
end;

procedure TMenuPrincipalF.MnAgendamentoFichaPacienteClick(Sender: TObject);
begin
  inherited;
  Self.criaForm(TOpeFichaPacienteF, TObject(OpeFichaPacienteF));
end;

procedure TMenuPrincipalF.carregaLogoMenuCentral;
var
  Stm: TStream;
  Jpg: TJPEGImage;
begin
  DmConexaoF.dmCdsConsulta.Close;
  DmConexaoF.dmCdsConsulta.CommandText :=
     ' SELECT FOTOMENUPRINCIPAL '
    +'   FROM CLINICA '
    +'  WHERE 1 = 1 '
    ;
  DmConexaoF.dmCdsConsulta.Open;
  if not DmConexaoF.dmCdsConsulta.IsEmpty then
  begin
    with DmConexaoF.dmCdsConsulta do
    begin
      if TBlobField(FieldByName('FOTOMENUPRINCIPAL')).BlobSize > 0 then
      begin
        Stm := TMemoryStream.Create;
        Jpg := TJpegImage.Create;
        try
          TBlobField(FieldByName('FOTOMENUPRINCIPAL')).SaveToStream(Stm);
          Stm.Position := 0;
          Jpg.LoadFromStream( Stm );
          try
            Image1.Picture.Assign(Jpg);
          except
            Image1.Picture.Assign(nil);
          end;
        finally
          Stm.Free;
          Jpg.Free;
        end;
      end else
        Image1.Picture.Assign(nil);
    end;
  end;
end;

procedure TMenuPrincipalF.MnCadastroConvenioClick(Sender: TObject);
begin
  inherited;
  Self.CriaForm(TCadConvenioF, TObject(CadConvenioF));
end;

procedure TMenuPrincipalF.MnCadastroMedicamentoQuantidadeClick(Sender: TObject);
begin
  inherited;
  Self.CriaForm(TCadMedicamentoQuantidadeF, TObject(CadMedicamentoQuantidadeF));
end;

procedure TMenuPrincipalF.MnCadastroMedicamentoClick(Sender: TObject);
begin
  inherited;
  Self.criaForm(TCadMedicamentoF, TObject(CadMedicamentoF));
end;

procedure TMenuPrincipalF.MnCadastroCidadeClick(Sender: TObject);
begin
  inherited;
  Self.criaForm(TCadCidadeF, TObject(CadCidadeF));
end;

procedure TMenuPrincipalF.MnCadastroClinicaClick(Sender: TObject);
begin
  inherited;
  Self.criaForm(TCadClinicaF, TObject(CadClinicaF));
end;

procedure TMenuPrincipalF.MnCadastroDoutorClick(Sender: TObject);
begin
  inherited;
  Self.criaForm(TCadDoutorF, TObject(CadDoutorF));
end;

procedure TMenuPrincipalF.MnCadastroMedicamentoUsoClick(Sender: TObject);
begin
  inherited;
  Self.criaForm(TCadMedicamentoUsoF, TObject(CadMedicamentoUsoF));
end;

procedure TMenuPrincipalF.MnCadastroExameClick(Sender: TObject);
begin
  inherited;
  Self.criaForm(TCadExameF, TObject(CadExameF));
end;

procedure TMenuPrincipalF.dxBarButton9Click(Sender: TObject);
begin
  inherited;
  Self.criaForm(TRelPacienteSexoGraficoF, TObject(RelPacienteSexoGraficoF));
end;

procedure TMenuPrincipalF.dxBarLargeButton10Click(Sender: TObject);
begin
  inherited;
  Self.criaForm(TOpeEnvioEmailAniversarianteF, TObject(OpeEnvioEmailAniversarianteF));
end;

procedure TMenuPrincipalF.MnCorrecaoPacienteDuplicidadeClick(Sender: TObject);
begin
  inherited;
  Self.criaForm(TOpeCorrigePacienteDuplicadoF, TObject(OpeCorrigePacienteDuplicadoF));
end;

procedure TMenuPrincipalF.MnRelatorioAgendaConsultaClick(Sender: TObject);
begin
  inherited;
  Self.criaForm(TRelAgendaConsultaF, TObject(RelAgendaConsultaF));
end;

procedure TMenuPrincipalF.MnRelatorioAgendaDeConsultaPorPeriodoClick(
  Sender: TObject);
begin
  inherited;
  Self.criaForm(TRelAgendaConsultaPorPeriodoF, TObject(RelAgendaConsultaPorPeriodoF));
end;

procedure TMenuPrincipalF.dxBarLargeButton9Click(Sender: TObject);
begin
  inherited;
  Self.criaForm(TRelFichaPacienteF, TObject(RelFichaPacienteF));
end;

procedure TMenuPrincipalF.FormCreate(Sender: TObject);
begin
  inherited;
  try
    LoginSistemaF := TLoginSistemaF.Create(Application);
    try
      LoginSistemaF.ShowModal;
      if LoginSistemaF.ModalResult = mrOk then
      begin
        Self.locateUserConnect(DmConexaoF.vUserLogIn_IdUsuario);
        Self.carregaLogoMenuCentral;
      end
      else
      if LoginSistemaF.ModalResult = mrCancel then
      begin
        ExitProcess(0);
      end;
    finally
      LoginSistemaF.Release;
      LoginSistemaF := nil;
    end;

  except
    on e : Exception do
    begin
      raise Exception.Create('Erro: "TMenuPrincipalF.FormCreate".' + #13 +  E.message);
    end;
  end;
end;

procedure TMenuPrincipalF.FormShow(Sender: TObject);
begin
  inherited;
  Self.menuPermisao;
end;

procedure TMenuPrincipalF.locateUserConnect(const pId_Usuario: Integer);
begin
  Self.CdsLogado.Close;
  Self.CdsLogado.CommandText :=
      ' SELECT USU.IDUSUARIO '
     +'       ,USU.LOGIN '
     +'   FROM USUARIO USU '
     +'  WHERE 1 = 1 '
     +'    AND USU.IDUSUARIO = '+TRotinaGenerica.IntToSql(pId_Usuario)
     ;
  Self.CdsLogado.Open;
  DmConexaoF.vUserLogIn_IdUsuario := Self.CdsLogado.FieldByName('IDUSUARIO').AsInteger;
  DmConexaoF.vUserLogIn_DsUsuario := Self.CdsLogado.FieldByName('LOGIN').AsString;
end;

procedure TMenuPrincipalF.menuPermisao;
begin
end;

procedure TMenuPrincipalF.TimerTimer(Sender: TObject);
begin
  inherited;
  Self.dxRibbonStatusBar.Panels[1].Text := ' Usuário: ' +DmConexaoF.vUserLogIn_DsUsuario;
  Self.dxRibbonStatusBar.Panels[2].Text := ' Perfil: '  +DmConexaoF.vUserLogIn_DsPerfil;
  Self.dxRibbonStatusBar.Panels[3].Text := ' IP: '      +TRotinaGenerica.getIP;
  Self.dxRibbonStatusBar.Panels[4].Text := ' Versão: '  +TRotinaGenerica.getBuildInfo;
  Self.dxRibbonStatusBar.Panels[5].Text := ' Base: '    +DmConexaoF.vSistema_CaminhoBanco;
end;

end.
