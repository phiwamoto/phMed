unit migracaoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TmigracaoF = class(TForm)
    btnConexaoOLD: TButton;
    btnConexaoNEW: TButton;
    btnMigrarDadosCadastro: TButton;
    lblStatusConexaoOLD: TLabel;
    lblStatusConexaoNEW: TLabel;
    pbMigracao: TProgressBar;
    LblMigracaoIdentificacao: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure btnConexaoOLDClick(Sender: TObject);
    procedure btnConexaoNEWClick(Sender: TObject);
    procedure btnMigrarDadosCadastroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
    procedure listaStatusConexao;
    procedure atualizaMigracaoIdentificacao(const Texto: String);


    procedure migraConvenio;
    procedure migraCidade;
    procedure migraExame;
    procedure migraMedicamentoUso;
    procedure migraMedicamentoQuantidade;
    procedure migraMedicamento;
    procedure migraSecretaria;
    procedure migraDoutor;
    procedure migraClinica;
    procedure migraUsuario;
    procedure migraPaciente;
    procedure migraPacienteConvenio;
    procedure migraPacienteConsulta;
    procedure migraPacienteEvolucaoClinica;
    procedure migraPacienteReceituario;
    procedure migraPacienteReceituarioUso;


    procedure migraPacienteExame;
    procedure migraPacienteExameSolicitado;

    procedure migraPacienteLaudoMedico;
    procedure migraPacientePrescricaoLente;


    procedure migraAgenda;
  public
    { Public declarations }

  end;

var
  migracaoF: TmigracaoF;

implementation

uses dmNewU, dmOldU;

{$R *.dfm}

procedure TmigracaoF.FormCreate(Sender: TObject);
begin
  try
    DmNEW.SQLConnection.Close;
    DmOLD.SQLConnection.Close;
    listaStatusConexao;
  except
    on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end;
end;

procedure TmigracaoF.btnConexaoOLDClick(Sender: TObject);
begin
  DmOLD.SQLConnection.Close;
  DmOLD.SQLConnection.Params.Values['Database'] := ExtractFilePath( Application.ExeName ) + 'old.fdb';

  DmOLD.SQLConnection.Open;
  listaStatusConexao;
end;

procedure TmigracaoF.btnConexaoNEWClick(Sender: TObject);
begin
  DmNEW.SQLConnection.Close;
  DmNEW.SQLConnection.Params.Values['Database'] := ExtractFilePath( Application.ExeName ) + 'new.fdb';
  DmNEW.SQLConnection.Open;
  listaStatusConexao;
end;

procedure TmigracaoF.btnMigrarDadosCadastroClick(Sender: TObject);
begin
  migraConvenio;
  migraCidade;
  migraExame;
  migraMedicamentoUso;
  migraMedicamentoQuantidade;
  migraMedicamento;
  migraSecretaria;
  migraDoutor;
  migraClinica;
  migraUsuario;

  atualizaMigracaoIdentificacao('FIM DA MIGRAÇÃO DE DADOS - CADASTRO');
  ShowMessage('FIM DA MIGRAÇÃO DE DADOS - CADASTRO');
end;

procedure TmigracaoF.Button1Click(Sender: TObject);
begin
  migraPaciente;   // Fazer SQL para ver as duplicidades
  migraPacienteConvenio;  // Fazer SQL para a Data de Inclusao
  atualizaMigracaoIdentificacao('FIM DA MIGRAÇÃO DE DADOS - PACIENTE');
  ShowMessage('FIM DA MIGRAÇÃO DE DADOS - PACIENTE');
end;

procedure TmigracaoF.Button2Click(Sender: TObject);
begin
  migraAgenda;
  atualizaMigracaoIdentificacao('FIM DA MIGRAÇÃO DE DADOS - AGENDA');
  ShowMessage('FIM DA MIGRAÇÃO DE DADOS - AGENDA');
end;

procedure TmigracaoF.Button3Click(Sender: TObject);
begin
//  migraPacienteConsulta;
// ERRO  migraPacienteEvolucaoClinica;


 // migraPacienteReceituario;
  // migraPacienteReceituarioUso; ERRO

//  migraPacienteExame;
//  migraPacienteExameSolicitado;

  //migraPacienteLaudoMedico;
  migraPacientePrescricaoLente;
  {


  }

  atualizaMigracaoIdentificacao('FIM DA MIGRAÇÃO DE DADOS - HISTÓRICO');
  ShowMessage('FIM DA MIGRAÇÃO DE DADOS - HISTÓRICO');
end;

procedure TmigracaoF.migraConvenio;
begin
  atualizaMigracaoIdentificacao('Migração de <CONVENIO>');

  DmOLD.CdsConvenio.Close;
  DmOLD.CdsConvenio.Open;
  DmNEW.CdsConvenio.Close;
  DmNEW.CdsConvenio.Open;

  DmOLD.CdsConvenio.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsConvenio.RecordCount-1;
  while not DmOLD.CdsConvenio.Eof do
  begin
    DmNEW.CdsConvenio.Insert;
    DmNEW.CdsConvenioIDCONVENIO.AsString := DmOLD.CdsConvenioID_CONVENIO.AsString;
    DmNEW.CdsConvenioIDSITUACAOREGISTRO.AsString := '1';
    DmNEW.CdsConvenioDATAINCLUSAO.AsString := DmOLD.CdsConvenioDT_CADASTRO.AsString;
    DmNEW.CdsConvenioCONVENIO.AsString := DmOLD.CdsConvenioDS_CONVENIO.AsString;
    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsConvenio.Post;
    DmNEW.CdsConvenio.ApplyUpdates(0);
    DmOLD.CdsConvenio.Next;
  end;
end;

procedure TmigracaoF.migraCidade;
begin
  atualizaMigracaoIdentificacao('Migração de <CIDADE>');

  DmOLD.CdsCidade.Close;
  DmOLD.CdsCidade.Open;
  DmNEW.CdsCidade.Close;
  DmNEW.CdsCidade.Open;

  DmOLD.CdsCidade.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsCidade.RecordCount-1;
  while not DmOLD.CdsCidade.Eof do
  begin
    DmNEW.CdsCidade.Insert;
    DmNEW.CdsCidadeIDCIDADE.AsString := DmOLD.CdsCidadeID_CIDADE.AsString;
    DmNEW.CdsCidadeIDSITUACAOREGISTRO.AsString := '1';
    DmNEW.CdsCidadeDATAINCLUSAO.AsString := DmOLD.CdsCidadeDT_CADASTRO.AsString;
    DmNEW.CdsCidadeCIDADE.AsString := DmOLD.CdsCidadeDS_CIDADE.AsString;
    DmNEW.CdsCidadeUF.AsString := DmOLD.CdsCidadeDS_ESTADO.AsString;
    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsCidade.Post;
    DmNEW.CdsCidade.ApplyUpdates(0);
    DmOLD.CdsCidade.Next;
  end;
end;

procedure TmigracaoF.migraExame;
begin
  atualizaMigracaoIdentificacao('Migração de <EXAME>');

  DmOLD.CdsExame.Close;
  DmOLD.CdsExame.Open;
  DmNEW.CdsExame.Close;
  DmNEW.CdsExame.Open;

  DmOLD.CdsExame.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsExame.RecordCount-1;
  while not DmOLD.CdsExame.Eof do
  begin
    DmNEW.CdsExame.Insert;
    DmNEW.CdsExameIDEXAME.AsString := DmOLD.CdsExameID_EXAME.AsString;
    DmNEW.CdsExameIDSITUACAOREGISTRO.AsString := '1';
    DmNEW.CdsExameDATAINCLUSAO.AsString := DmOLD.CdsExameDT_CADASTRO.AsString;
    DmNEW.CdsExameDESCRICAO.AsString := DmOLD.CdsExameDS_DESCRICAO.AsString;
    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsExame.Post;
    DmNEW.CdsExame.ApplyUpdates(0);
    DmOLD.CdsExame.Next;
  end;

end;

procedure TmigracaoF.migraMedicamentoUso;
begin

  atualizaMigracaoIdentificacao('Migração de <MEDICAMENTO USO>');

  DmOLD.CdsMedicamentoUso.Close;
  DmOLD.CdsMedicamentoUso.Open;
  DmNEW.CdsMedicamentoUso.Close;
  DmNEW.CdsMedicamentoUso.Open;

  DmOLD.CdsMedicamentoUso.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsMedicamentoUso.RecordCount-1;
  while not DmOLD.CdsMedicamentoUso.Eof do
  begin
    DmNEW.CdsMedicamentoUso.Insert;
    DmNEW.CdsMedicamentoUsoIDMEDICAMENTOUSO.AsString := DmOLD.CdsMedicamentoUsoID_MEDICAMENTO_USO.AsString;
    DmNEW.CdsMedicamentoUsoIDSITUACAOREGISTRO.AsString := '1';
    DmNEW.CdsMedicamentoUsoDATAINCLUSAO.AsString := DmOLD.CdsMedicamentoUsoDT_CADASTRO.AsString;
    DmNEW.CdsMedicamentoUsoDESCRICAO.AsString := DmOLD.CdsMedicamentoUsoDS_DESCRICAO.AsString;
    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsMedicamentoUso.Post;
    DmNEW.CdsMedicamentoUso.ApplyUpdates(0);
    DmOLD.CdsMedicamentoUso.Next;
  end;

end;

procedure TmigracaoF.migraMedicamentoQuantidade;
begin
  atualizaMigracaoIdentificacao('Migração de <MEDICAMENTO QUANTIDADE>');

  DmOLD.CdsMedicamentoQuantidade.Close;
  DmOLD.CdsMedicamentoQuantidade.Open;
  DmNEW.CdsMedicamentoQuantidade.Close;
  DmNEW.CdsMedicamentoQuantidade.Open;

  DmOLD.CdsMedicamentoQuantidade.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsMedicamentoQuantidade.RecordCount-1;
  while not DmOLD.CdsMedicamentoQuantidade.Eof do
  begin
    DmNEW.CdsMedicamentoQuantidade.Insert;
    DmNEW.CdsMedicamentoQuantidadeIDMEDICAMENTOQTDE.AsString := DmOLD.CdsMedicamentoQuantidadeID_MEDICAMENTO_QUANTIDADE.AsString;
    DmNEW.CdsMedicamentoQuantidadeIDSITUACAOREGISTRO.AsString := '1';
    DmNEW.CdsMedicamentoQuantidadeDATAINCLUSAO.AsString := DmOLD.CdsMedicamentoQuantidadeDT_CADASTRO.AsString;
    DmNEW.CdsMedicamentoQuantidadeDESCRICAO.AsString := DmOLD.CdsMedicamentoQuantidadeDS_DESCRICAO.AsString;
    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsMedicamentoQuantidade.Post;
    DmNEW.CdsMedicamentoQuantidade.ApplyUpdates(0);
    DmOLD.CdsMedicamentoQuantidade.Next;
  end;
end;

procedure TmigracaoF.migraMedicamento;
begin
  atualizaMigracaoIdentificacao('Migração de <MEDICAMENTO>');

  DmOLD.CdsMedicamento.Close;
  DmOLD.CdsMedicamento.Open;
  DmNEW.CdsMedicamento.Close;
  DmNEW.CdsMedicamento.Open;

  DmOLD.CdsMedicamento.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsMedicamento.RecordCount-1;
  while not DmOLD.CdsMedicamento.Eof do
  begin
    DmNEW.CdsMedicamento.Insert;
    DmNEW.CdsMedicamentoIDMEDICAMENTO.AsString := DmOLD.CdsMedicamentoID_MEDICAMENTO.AsString;
    DmNEW.CdsMedicamentoIDMEDICAMENTOQTDE.AsString := DmOLD.CdsMedicamentoID_MEDICAMENTO_QUANTIDADE.AsString;
    DmNEW.CdsMedicamentoIDMEDICAMENTOUSO.AsString := DmOLD.CdsMedicamentoID_MEDICAMENTO_USO.AsString;
    DmNEW.CdsMedicamentoDATAINCLUSAO.AsString := DmOLD.CdsMedicamentoDT_CADASTRO.AsString;
    DmNEW.CdsMedicamentoDESCRICAO.AsString := DmOLD.CdsMedicamentoDS_DESCRICAO.AsString;
    DmNEW.CdsMedicamentoPOSOLOGIA.AsString := DmOLD.CdsMedicamentoDS_POSOLOGIA.AsString;
    DmNEW.CdsMedicamentoIDSITUACAOREGISTRO.AsString := '1';
    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsMedicamento.Post;
    DmNEW.CdsMedicamento.ApplyUpdates(0);
    DmOLD.CdsMedicamento.Next;
  end;
end;

procedure TmigracaoF.migraSecretaria;
begin
  atualizaMigracaoIdentificacao('Migração de <SECRETARIA>');

  DmOLD.CdsSecretaria.Close;
  DmOLD.CdsSecretaria.Open;
  DmNEW.CdsSecretaria.Close;
  DmNEW.CdsSecretaria.Open;

  DmOLD.CdsSecretaria.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsSecretaria.RecordCount-1;
  while not DmOLD.CdsSecretaria.Eof do
  begin
    DmNEW.CdsSecretaria.Insert;
    DmNEW.CdsSecretariaIDSECRETARIA.AsString := DmOLD.CdsSecretariaID_EQUIPE.AsString;
    DmNEW.CdsSecretariaIDCIDADE.AsString := DmOLD.CdsSecretariaID_CIDADE.AsString;
    DmNEW.CdsSecretariaIDSITUACAOREGISTRO.AsString := '1';
    DmNEW.CdsSecretariaDATAINCLUSAO.AsString := DmOLD.CdsSecretariaDT_CADASTRO.AsString;
    DmNEW.CdsSecretariaNUMERO.AsString := DmOLD.CdsSecretariaNR_NUMERO.AsString;
    DmNEW.CdsSecretariaNOME.AsString := DmOLD.CdsSecretariaDS_NOME.AsString;
    DmNEW.CdsSecretariaENDERECO.AsString := DmOLD.CdsSecretariaDS_ENDERECO.AsString;
    DmNEW.CdsSecretariaBAIRRO.AsString := DmOLD.CdsSecretariaDS_BAIRRO.AsString;
    DmNEW.CdsSecretariaEMAIL.AsString := DmOLD.CdsSecretariaDS_EMAIL.AsString;
    DmNEW.CdsSecretariaCPF.AsString := DmOLD.CdsSecretariaDS_CPF.AsString;
    DmNEW.CdsSecretariaRG.AsString := DmOLD.CdsSecretariaDS_RG.AsString;
    DmNEW.CdsSecretariaTELEFONE.AsString := DmOLD.CdsSecretariaDS_TELEFONE.AsString;
    DmNEW.CdsSecretariaCELULAR.AsString := DmOLD.CdsSecretariaDS_CELULAR.AsString;
    DmNEW.CdsSecretariaCEP.AsString := DmOLD.CdsSecretariaDS_CEP.AsString;
    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsSecretaria.Post;
    DmNEW.CdsSecretaria.ApplyUpdates(0);
    DmOLD.CdsSecretaria.Next;
  end;
end;

procedure TmigracaoF.migraDoutor;
begin
  atualizaMigracaoIdentificacao('Migração de <DOUTOR>');

  DmOLD.CdsDoutor.Close;
  DmOLD.CdsDoutor.Open;
  DmNEW.CdsDoutor.Close;
  DmNEW.CdsDoutor.Open;

  DmOLD.CdsDoutor.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsDoutor.RecordCount-1;
  while not DmOLD.CdsDoutor.Eof do
  begin
    DmNEW.CdsDoutor.Insert;
    DmNEW.CdsDoutorIDDOUTOR.AsString := DmOLD.CdsDoutorID_EQUIPE.AsString;
    DmNEW.CdsDoutorIDCIDADE.AsString := DmOLD.CdsDoutorID_CIDADE.AsString;
    DmNEW.CdsDoutorIDSITUACAOREGISTRO.AsString := '1';
    DmNEW.CdsDoutorDATAINCLUSAO.AsString := DmOLD.CdsDoutorDT_CADASTRO.AsString;
    DmNEW.CdsDoutorNUMERO.AsString := DmOLD.CdsDoutorNR_NUMERO.AsString;
    DmNEW.CdsDoutorCRM.AsString := DmOLD.CdsDoutorDS_CRM.AsString;
    DmNEW.CdsDoutorNOME.AsString := DmOLD.CdsDoutorDS_NOME.AsString;
    DmNEW.CdsDoutorENDERECO.AsString := DmOLD.CdsDoutorDS_ENDERECO.AsString;
    DmNEW.CdsDoutorBAIRRO.AsString := DmOLD.CdsDoutorDS_BAIRRO.AsString;
    DmNEW.CdsDoutorEMAIL.AsString := DmOLD.CdsDoutorDS_EMAIL.AsString;
    DmNEW.CdsDoutorCPF.AsString := DmOLD.CdsDoutorDS_CPF.AsString;
    DmNEW.CdsDoutorRG.AsString := DmOLD.CdsDoutorDS_RG.AsString;
    DmNEW.CdsDoutorTELEFONE.AsString := DmOLD.CdsDoutorDS_TELEFONE.AsString;
    DmNEW.CdsDoutorCELULAR.AsString := DmOLD.CdsDoutorDS_CELULAR.AsString;
    DmNEW.CdsDoutorCEP.AsString := DmOLD.CdsDoutorDS_CEP.AsString;

    DmNEW.CdsDoutorINTERVALO.AsString := '10';
    DmNEW.CdsDoutorHORAINICIALMANHA.AsString := '07:00';
    DmNEW.CdsDoutorHORAFINALMANHA.AsString   := '13:00';
    DmNEW.CdsDoutorHORAINICIALTARDE.AsString := '13:00';
    DmNEW.CdsDoutorHORAFINALTARDE.AsString   := '19:00';
    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsDoutor.Post;
    DmNEW.CdsDoutor.ApplyUpdates(0);
    DmOLD.CdsDoutor.Next;
  end;
end;

procedure TmigracaoF.migraClinica;
begin
  atualizaMigracaoIdentificacao('Migração de <CLINICA>');

  DmOLD.CdsClinica.Close;
  DmOLD.CdsClinica.Open;
  DmNEW.CdsClinica.Close;
  DmNEW.CdsClinica.Open;

  DmOLD.CdsClinica.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsClinica.RecordCount-1;
  while not DmOLD.CdsDoutor.Eof do
  begin
    DmNEW.CdsClinica.Insert;
    DmNEW.CdsClinicaIDCLINICA.AsString := DmOLD.CdsClinicaID_CLINICA.AsString;
    DmNEW.CdsClinicaIDCIDADE.AsString := DmOLD.CdsClinicaID_CIDADE.AsString;
    DmNEW.CdsClinicaDATAINCLUSAO.AsString := DmOLD.CdsClinicaDT_CADASTRO.AsString;
    DmNEW.CdsClinicaNUMERO.AsString := DmOLD.CdsClinicaNR_NUMERO.AsString;
    DmNEW.CdsClinicaSMTPPORTA.AsString := DmOLD.CdsClinicaNR_SMTPPORTA.AsString;
    DmNEW.CdsClinicaCLINICA.AsString := DmOLD.CdsClinicaDS_CLINICA.AsString;
    DmNEW.CdsClinicaENDERECO.AsString := DmOLD.CdsClinicaDS_ENDERECO.AsString;
    DmNEW.CdsClinicaBAIRRO.AsString := DmOLD.CdsClinicaDS_BAIRRO.AsString;
    DmNEW.CdsClinicaSITECLINICA.AsString := DmOLD.CdsClinicaDS_SITE.AsString;
    DmNEW.CdsClinicaEMAILCLINICA.AsString := DmOLD.CdsClinicaDS_EMAIL.AsString;
    DmNEW.CdsClinicaSMTPSERVIDOR.AsString := DmOLD.CdsClinicaDS_SMTP.AsString;
    DmNEW.CdsClinicaEMAILCLINICASENHA.AsString := DmOLD.CdsClinicaDS_SENHAEMAIL.AsString;
    DmNEW.CdsClinicaTELEFONE1.AsString := DmOLD.CdsClinicaDS_TELEFONE.AsString;
    DmNEW.CdsClinicaTELEFONE2.AsString := DmOLD.CdsClinicaDS_TELEFONE.AsString;
    DmNEW.CdsClinicaCEP.AsString := DmOLD.CdsClinicaDS_CEP.AsString;

    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsClinica.Post;
    DmNEW.CdsClinica.ApplyUpdates(0);
    DmOLD.CdsClinica.Next;
  end;
end;

procedure TmigracaoF.migraUsuario;
begin
  atualizaMigracaoIdentificacao('Migração de <USUARIO>');

  DmOLD.CdsUsuario.Close;
  DmOLD.CdsUsuario.Open;
  DmNEW.CdsUsuario.Close;
  DmNEW.CdsUsuario.Open;

  DmOLD.CdsUsuario.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsUsuario.RecordCount-1;
  while not DmOLD.CdsUsuario.Eof do
  begin
    DmNEW.CdsUsuario.Insert;
    DmNEW.CdsUsuarioIDUSUARIO.AsString := DmOLD.CdsUsuarioID_USUARIO.AsString;
    DmNEW.CdsUsuarioIDSITUACAOREGISTRO.AsString := '1';
    DmNEW.CdsUsuarioDATAINCLUSAO.AsString := DmOLD.CdsUsuarioDT_CADASTRO.AsString;
    DmNEW.CdsUsuarioLOGIN.AsString := DmOLD.CdsUsuarioDS_LOGIN.AsString;
    DmNEW.CdsUsuarioSENHA.AsString := DmOLD.CdsUsuarioDS_SENHA.AsString;
    DmNEW.CdsUsuarioIDPERFIL.AsString := '1';

    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsUsuario.Post;
    DmNEW.CdsUsuario.ApplyUpdates(0);
    DmOLD.CdsUsuario.Next;
  end;
end;

procedure TmigracaoF.migraPaciente;
begin
  atualizaMigracaoIdentificacao('Migração de <PACIENTE>');

  DmOLD.CdsPaciente.Close;
  DmOLD.CdsPaciente.Open;
  DmNEW.CdsPaciente.Close;
  DmNEW.CdsPaciente.Open;

  DmOLD.CdsPaciente.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsPaciente.RecordCount-1;
  while not DmOLD.CdsPaciente.Eof do
  begin
    DmNEW.CdsPaciente.Insert;

    DmNEW.CdsPacienteIDPACIENTE.AsString := DmOLD.CdsPacienteID_PACIENTE.AsString;
    DmNEW.CdsPacienteIDCIDADE.AsString := DmOLD.CdsPacienteID_CIDADE.AsString;
    DmNEW.CdsPacienteDATAINCLUSAO.AsString := DmOLD.CdsPacienteDT_CADASTRO.AsString;
    DmNEW.CdsPacienteDATANASCIMENTO.AsString := DmOLD.CdsPacienteDT_NASCIMENTO.AsString;
    DmNEW.CdsPacienteNUMERO.AsString := DmOLD.CdsPacienteNR_NUMERO.AsString;
    DmNEW.CdsPacienteESTADOCIVIL.AsString := DmOLD.CdsPacienteTP_ESTADOCIVIL.AsString;
    DmNEW.CdsPacienteSEXO.AsString := DmOLD.CdsPacienteTP_SEXO.AsString;
    DmNEW.CdsPacienteOBSERVACAO.AsString := DmOLD.CdsPacienteDS_OBSERVACAO.AsString;
    DmNEW.CdsPacienteNOME.AsString := DmOLD.CdsPacienteDS_NOME.AsString;
    DmNEW.CdsPacienteENDERECO.AsString := DmOLD.CdsPacienteDS_ENDERECO.AsString;
    DmNEW.CdsPacienteBAIRRO.AsString := DmOLD.CdsPacienteDS_BAIRRO.AsString;
    DmNEW.CdsPacienteEMAIL.AsString := DmOLD.CdsPacienteDS_EMAIL.AsString;
    DmNEW.CdsPacienteCOMPLEMENTO.AsString := DmOLD.CdsPacienteDS_COMPLEMENTO.AsString;
    DmNEW.CdsPacienteRG.AsString := DmOLD.CdsPacienteDS_RG.AsString;
    DmNEW.CdsPacienteCPF.AsString := DmOLD.CdsPacienteDS_CPF.AsString;
    DmNEW.CdsPacienteTELEFONE1.AsString := DmOLD.CdsPacienteDS_TELEFONE1.AsString;
    DmNEW.CdsPacienteTELEFONE2.AsString := DmOLD.CdsPacienteDS_TELEFONE2.AsString;
    DmNEW.CdsPacienteCEP.AsString := DmOLD.CdsPacienteDS_CEP.AsString;
    DmNEW.CdsPacienteIDSITUACAOREGISTRO.AsString := '1';

    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsPaciente.Post;
    DmNEW.CdsPaciente.ApplyUpdates(0);
    DmOLD.CdsPaciente.Next;

  end;
end;

procedure TmigracaoF.migraPacienteConvenio;
begin
  atualizaMigracaoIdentificacao('Migração de <PACIENTE CONVENIO>');

  DmOLD.CdsPacienteConvenio.Close;
  DmOLD.CdsPacienteConvenio.Open;
  DmNEW.CdsPacienteConvenio.Close;
  DmNEW.CdsPacienteConvenio.Open;

  DmOLD.CdsPacienteConvenio.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsPacienteConvenio.RecordCount-1;
  while not DmOLD.CdsPacienteConvenio.Eof do
  begin
    DmNEW.CdsPacienteConvenio.Insert;
    DmNEW.CdsPacienteConvenioIDPACIENTECONVENIO.AsString := DmOLD.CdsPacienteConvenioID_PACIENTE_CONVENIO.AsString;
    DmNEW.CdsPacienteConvenioIDSITUACAOREGISTRO.AsString := '1';
    DmNEW.CdsPacienteConvenioIDPACIENTE.AsString := DmOLD.CdsPacienteConvenioID_PACIENTE.AsString;
    DmNEW.CdsPacienteConvenioIDCONVENIO.AsString := DmOLD.CdsPacienteConvenioID_CONVENIO.AsString;

    if DmOLD.CdsPacienteConvenioBO_ATIVO.AsString = 'Sim' then
      DmNEW.CdsPacienteConvenioIDPRINCIPAL.AsString := '1'
    else
      DmNEW.CdsPacienteConvenioIDPRINCIPAL.AsString := '0';

    DmNEW.CdsPacienteConvenioDATAINCLUSAO.AsString := '01/01/1900';

    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsPacienteConvenio.Post;
    DmNEW.CdsPacienteConvenio.ApplyUpdates(0);
    DmOLD.CdsPacienteConvenio.Next;
  end;
end;

procedure TmigracaoF.migraAgenda;
var
  contador: Integer;
begin
  contador := 0;
  atualizaMigracaoIdentificacao('Migração de <AGENDA>');

  DmOLD.CdsAgenda.Close;
  DmOLD.CdsAgenda.Open;
  DmNEW.CdsAgenda.Close;
  DmNEW.CdsAgenda.Open;

  DmOLD.CdsAgenda.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsAgenda.RecordCount-1;
  while not DmOLD.CdsAgenda.Eof do
  begin
    atualizaMigracaoIdentificacao('Migração de <AGENDA>  - Registro ' + IntToStr(contador) + ' de ' + IntToStr(DmOLD.CdsAgenda.RecordCount-1));
    Inc(contador);
    if not DmNEW.CdsAgenda.Locate('IDAGENDA', DmOLD.CdsAgendaID_AGENDA.AsString, []) then
    begin

      DmNEW.CdsAgenda.Insert;
      DmNEW.CdsAgendaIDAGENDA.AsString := DmOLD.CdsAgendaID_AGENDA.AsString;
      DmNEW.CdsAgendaIDDOUTOR.AsString := DmOLD.CdsAgendaID_DOUTOR.AsString;
      DmNEW.CdsAgendaIDPACIENTE.AsString := DmOLD.CdsAgendaID_PACIENTE.AsString;
      DmNEW.CdsAgendaIDCONVENIO.AsString := DmOLD.CdsAgendaID_CONVENIO.AsString;

      DmNEW.CdsAgendaINTERVALO.AsString := DmOLD.CdsAgendaMN_INTERVALO.AsString;

      if DmOLD.CdsAgendaBO_ENCAIXE.AsString = 'Sim' then
        DmNEW.CdsAgendaIDENCAIXE.AsString := '1'
      else
        DmNEW.CdsAgendaIDENCAIXE.AsString := '0';

      if DmOLD.CdsAgendaBO_URGENTE.AsString = 'Sim' then
        DmNEW.CdsAgendaIDURGENTE.AsString := '1'
      else
        DmNEW.CdsAgendaIDURGENTE.AsString := '0';

      DmNEW.CdsAgendaDATAINCLUSAO.AsString := DmOLD.CdsAgendaDT_AGENDA.AsString;
      DmNEW.CdsAgendaDATAAGENDA.AsString := DmOLD.CdsAgendaDT_AGENDA.AsString;
      DmNEW.CdsAgendaHORAAGENDA.AsString := DmOLD.CdsAgendaHR_AGENDA.AsString;
      DmNEW.CdsAgendaHORACHEGADA.AsString := DmOLD.CdsAgendaHR_CHEGADA.AsString;
      DmNEW.CdsAgendaHORAMANHAINICIAL.AsString := DmOLD.CdsAgendaHR_MANHAINICIAL.AsString;
      DmNEW.CdsAgendaHORAMANHAFINAL.AsString := DmOLD.CdsAgendaHR_MANHAFINAL.AsString;
      DmNEW.CdsAgendaHORATARDEINICIAL.AsString := DmOLD.CdsAgendaHR_TARDEINICIAL.AsString;
      DmNEW.CdsAgendaHORATARDEFINAL.AsString := DmOLD.CdsAgendaHR_TARDEFINAL.AsString;
      DmNEW.CdsAgendaSTATUS.AsString := DmOLD.CdsAgendaTP_STATUS.AsString;
      DmNEW.CdsAgendaMOTIVO.AsString := DmOLD.CdsAgendaTP_MOTIVO.AsString;
      DmNEW.CdsAgendaOBSERVACAO.AsString := DmOLD.CdsAgendaDS_OBSERVACAO.AsString;

      DmNEW.CdsAgenda.Post;
      DmNEW.CdsAgenda.ApplyUpdates(0);
    end;
    pbMigracao.Position := pbMigracao.Position +1;
    DmOLD.CdsAgenda.Next;
  end;
end;

procedure TmigracaoF.migraPacienteConsulta;
begin
  atualizaMigracaoIdentificacao('Migração de <PACIENTE CONSULTA>');

  DmOLD.CdsPacienteConsulta.Close;
  DmOLD.CdsPacienteConsulta.Open;
  DmNEW.CdsPacienteConsulta.Close;
  DmNEW.CdsPacienteConsulta.Open;

  DmOLD.CdsPacienteConsulta.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsPacienteConsulta.RecordCount-1;
  while not DmOLD.CdsPacienteConsulta.Eof do
  begin
    DmNEW.CdsPacienteConsulta.Insert;
    DmNEW.CdsPacienteConsultaIDPACIENTECONSULTA.AsString := DmOLD.CdsPacienteConsultaID_PACIENTE_CONSULTA.AsString;
    DmNEW.CdsPacienteConsultaIDPACIENTE.AsString := DmOLD.CdsPacienteConsultaID_PACIENTE.AsString;
    DmNEW.CdsPacienteConsultaIDDOUTOR.AsString := DmOLD.CdsPacienteConsultaID_DOUTOR.AsString;
    DmNEW.CdsPacienteConsultaIDAGENDA.AsString := DmOLD.CdsPacienteConsultaID_AGENDA.AsString;
    DmNEW.CdsPacienteConsultaDATAINCLUSAO.AsString := DmOLD.CdsPacienteConsultaDT_CONSULTA.AsString;
    DmNEW.CdsPacienteConsultaHORAINCLUSAO.AsString := DmOLD.CdsPacienteConsultaHR_CONSULTA.AsString;

    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsPacienteConsulta.Post;
    DmNEW.CdsPacienteConsulta.ApplyUpdates(0);
    DmOLD.CdsPacienteConsulta.Next;
  end;
end;

procedure TmigracaoF.migraPacienteEvolucaoClinica;
begin
  atualizaMigracaoIdentificacao('Migração de <PACIENTE EVOLUÇÃO>');

  DmOLD.CdsPacienteEvolucao.Close;
  DmOLD.CdsPacienteEvolucao.Open;
  DmNEW.CdsPacienteEvolucao.Close;
  DmNEW.CdsPacienteEvolucao.Open;

  DmOLD.CdsPacienteEvolucao.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsPacienteEvolucao.RecordCount-1;
  while not DmOLD.CdsPacienteEvolucao.Eof do
  begin
    DmNEW.CdsPacienteEvolucao.Insert;
    DmNEW.CdsPacienteEvolucaoIDPACIENTEEVOLUCAO.AsString := DmOLD.CdsPacienteEvolucaoID_PACIENTE_EVOLUCAOCLINICA.AsString;
    DmNEW.CdsPacienteEvolucaoIDPACIENTE.AsString := DmOLD.CdsPacienteEvolucaoID_PACIENTE.AsString;
    DmNEW.CdsPacienteEvolucaoIDDOUTOR.AsString := DmOLD.CdsPacienteEvolucaoID_DOUTOR.AsString;
    DmNEW.CdsPacienteEvolucaoIDAGENDA.AsString := DmOLD.CdsPacienteEvolucaoID_AGENDA.AsString;

    if DmOLD.CdsPacienteEvolucaoBO_RASCUNHO.AsString = 'Sim' then
      DmNEW.CdsPacienteEvolucaoIDRASCUNHO.AsString := '1'
    else
      DmNEW.CdsPacienteEvolucaoIDRASCUNHO.AsString := '0';

    DmNEW.CdsPacienteEvolucaoDATAINCLUSAO.AsString := DmOLD.CdsPacienteEvolucaoDT_CADASTRO.AsString;
    DmNEW.CdsPacienteEvolucaoHORAINCLUSAO.AsString := DmOLD.CdsPacienteEvolucaoHR_CADASTRO.AsString;
    DmNEW.CdsPacienteEvolucaoEVOLUCAOCLINICA.AsString := DmOLD.CdsPacienteEvolucaoDS_EVOLUCAOCLINICA.AsString;

    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsPacienteEvolucao.Post;
    DmNEW.CdsPacienteEvolucao.ApplyUpdates(0);
    DmOLD.CdsPacienteEvolucao.Next;
  end;
end;

procedure TmigracaoF.migraPacienteReceituario;
begin
  atualizaMigracaoIdentificacao('Migração de <PACIENTE RECEITUÁRIO>');

  DmOLD.CdsPacienteReceituario.Close;
  DmOLD.CdsPacienteReceituario.Open;
  DmNEW.CdsPacienteReceituario.Close;
  DmNEW.CdsPacienteReceituario.Open;

  DmOLD.CdsPacienteReceituario.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsPacienteReceituario.RecordCount-1;
  while not DmOLD.CdsPacienteReceituario.Eof do
  begin
    DmNEW.CdsPacienteReceituario.Insert;
    DmNEW.CdsPacienteReceituarioIDPACIENTERECEITUARIO.AsString := DmOLD.CdsPacienteReceituarioID_PACIENTE_RECEITUARIO.AsString;
    DmNEW.CdsPacienteReceituarioIDPACIENTE.AsString := DmOLD.CdsPacienteReceituarioID_PACIENTE.AsString;
    DmNEW.CdsPacienteReceituarioIDDOUTOR.AsString := DmOLD.CdsPacienteReceituarioID_DOUTOR.AsString;
    DmNEW.CdsPacienteReceituarioIDAGENDA.AsString := DmOLD.CdsPacienteReceituarioID_AGENDA.AsString;
    DmNEW.CdsPacienteReceituarioDATAINCLUSAO.AsString := DmOLD.CdsPacienteReceituarioDT_CADASTRO.AsString;
    DmNEW.CdsPacienteReceituarioHORAINCLUSAO.AsString := DmOLD.CdsPacienteReceituarioHR_CADASTRO.AsString;
    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsPacienteReceituario.Post;
    DmNEW.CdsPacienteReceituario.ApplyUpdates(0);
    DmOLD.CdsPacienteReceituario.Next;
  end;
end;

procedure TmigracaoF.migraPacienteReceituarioUso;
begin
  atualizaMigracaoIdentificacao('Migração de <PACIENTE RECEITUÁRIO USO>');

  DmOLD.CdsPacienteReceituarioUso.Close;
  DmOLD.CdsPacienteReceituarioUso.Open;
  DmNEW.CdsPacienteReceituarioUso.Close;
  DmNEW.CdsPacienteReceituarioUso.Open;

  DmOLD.CdsPacienteReceituarioUso.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsPacienteReceituarioUso.RecordCount-1;
  while not DmOLD.CdsPacienteReceituarioUso.Eof do
  begin
    DmNEW.CdsPacienteReceituarioUso.Insert;
    DmNEW.CdsPacienteReceituarioUsoIDPACIENTERECEITUARIOUSO.AsString := DmOLD.CdsPacienteReceituarioUsoID_PACIENTE_RECEITUARIO_USO.AsString;
    DmNEW.CdsPacienteReceituarioUsoIDPACIENTERECEITUARIO.AsString := DmOLD.CdsPacienteReceituarioUsoID_PACIENTE_RECEITUARIO.AsString;
    DmNEW.CdsPacienteReceituarioUsoIDPACIENTE.AsString := DmOLD.CdsPacienteReceituarioUsoID_MEDICAMENTO.AsString;
    DmNEW.CdsPacienteReceituarioUsoIDMEDICAMENTO.AsString := DmOLD.CdsPacienteReceituarioUsoID_MEDICAMENTO.AsString;
    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsPacienteReceituarioUso.Post;
    DmNEW.CdsPacienteReceituarioUso.ApplyUpdates(0);
    DmOLD.CdsPacienteReceituarioUso.Next;
  end;
end;

procedure TmigracaoF.migraPacienteExame;
begin
  atualizaMigracaoIdentificacao('Migração de <PACIENTE EXAME>');

  DmOLD.CdsPacienteExame.Close;
  DmOLD.CdsPacienteExame.Open;
  DmNEW.CdsPacienteExame.Close;
  DmNEW.CdsPacienteExame.Open;

  DmOLD.CdsPacienteExame.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsPacienteExame.RecordCount-1;
  while not DmOLD.CdsPacienteExame.Eof do
  begin
    DmNEW.CdsPacienteExame.Insert;
    DmNEW.CdsPacienteExameIDPACIENTEEXAME.AsString := DmOLD.CdsPacienteExameID_PACIENTE_EXAME.AsString;
    DmNEW.CdsPacienteExameIDPACIENTE.AsString := DmOLD.CdsPacienteExameID_PACIENTE.AsString;
    DmNEW.CdsPacienteExameIDDOUTOR.AsString := DmOLD.CdsPacienteExameID_DOUTOR.AsString;
    DmNEW.CdsPacienteExameIDAGENDA.AsString := DmOLD.CdsPacienteExameID_AGENDA.AsString;

    DmNEW.CdsPacienteExameDATAINCLUSAO.AsString := DmOLD.CdsPacienteExameDT_CADASTRO.AsString;
    DmNEW.CdsPacienteExameHORAINCLUSAO.AsString := DmOLD.CdsPacienteExameHR_CADASTRO.AsString;
    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsPacienteExame.Post;
    DmNEW.CdsPacienteExame.ApplyUpdates(0);
    DmOLD.CdsPacienteExame.Next;
  end;
end;

procedure TmigracaoF.migraPacienteExameSolicitado;
begin
  atualizaMigracaoIdentificacao('Migração de <PACIENTE EXAME SOLICITADO>');

  DmOLD.CdsPacienteExameSolicitado.Close;
  DmOLD.CdsPacienteExameSolicitado.Open;
  DmNEW.CdsPacienteExameSolicitado.Close;
  DmNEW.CdsPacienteExameSolicitado.Open;

  DmOLD.CdsPacienteExameSolicitado.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsPacienteExameSolicitado.RecordCount-1;
  while not DmOLD.CdsPacienteExameSolicitado.Eof do
  begin
    DmNEW.CdsPacienteExameSolicitado.Insert;
    DmNEW.CdsPacienteExameSolicitadoIDPACIENTEEXAMESOLICITADO.AsString := DmOLD.CdsPacienteExameSolicitadoID_PACIENTE_EXAME_SOLICITADO.AsString;
    DmNEW.CdsPacienteExameSolicitadoIDPACIENTEEXAME.AsString := DmOLD.CdsPacienteExameSolicitadoID_PACIENTE_EXAME.AsString;
    DmNEW.CdsPacienteExameSolicitadoIDPACIENTE.AsString := DmOLD.CdsPacienteExameSolicitadoID_PACIENTE.AsString;
    DmNEW.CdsPacienteExameSolicitadoIDEXAME.AsString := DmOLD.CdsPacienteExameSolicitadoID_EXAME.AsString;
    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsPacienteExameSolicitado.Post;
    DmNEW.CdsPacienteExameSolicitado.ApplyUpdates(0);
    DmOLD.CdsPacienteExameSolicitado.Next;
  end;
end;

procedure TmigracaoF.migraPacienteLaudoMedico;
begin
  atualizaMigracaoIdentificacao('Migração de <PACIENTE LAUDO OFTALMO>');

  DmOLD.CdsPacienteLaudoMedico.Close;
  DmOLD.CdsPacienteLaudoMedico.Open;
  DmNEW.CdsPacienteLaudoMedico.Close;
  DmNEW.CdsPacienteLaudoMedico.Open;

  DmOLD.CdsPacienteLaudoMedico.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsPacienteLaudoMedico.RecordCount-1;
  while not DmOLD.CdsPacienteLaudoMedico.Eof do
  begin
    DmNEW.CdsPacienteLaudoMedico.Insert;
    DmNEW.CdsPacienteLaudoMedicoIDPACIENTELAUDOOFTALMO.AsString := DmOLD.CdsPacienteLaudoMedicoID_PACIENTE_LAUDOMEDICO.AsString;
    DmNEW.CdsPacienteLaudoMedicoIDPACIENTE.AsString := DmOLD.CdsPacienteLaudoMedicoID_PACIENTE.AsString;
    DmNEW.CdsPacienteLaudoMedicoIDDOUTOR.AsString := DmOLD.CdsPacienteLaudoMedicoID_DOUTOR.AsString;
    DmNEW.CdsPacienteLaudoMedicoIDAGENDA.AsString := DmOLD.CdsPacienteLaudoMedicoID_AGENDA.AsString;

    if DmOLD.CdsPacienteLaudoMedicoBO_APTO.AsString = 'Sim' then
      DmNEW.CdsPacienteLaudoMedicoIDAPTO.AsString := '1'
    else
      DmNEW.CdsPacienteLaudoMedicoIDAPTO.AsString := '0';


    DmNEW.CdsPacienteLaudoMedicoDATAINCLUSAO.AsString := DmOLD.CdsPacienteLaudoMedicoDT_CADASTRO.AsString;
    DmNEW.CdsPacienteLaudoMedicoHORAINCLUSAO.AsString := DmOLD.CdsPacienteLaudoMedicoHR_CADASTRO.AsString;

    DmNEW.CdsPacienteLaudoMedicoACUIDADEODCOMCORRECAO.AsString := DmOLD.CdsPacienteLaudoMedicoDS_ACUIDADEOD_COMCORRECAO.AsString;
    DmNEW.CdsPacienteLaudoMedicoACUIDADEOECOMCORRECAO.AsString := DmOLD.CdsPacienteLaudoMedicoDS_ACUIDADEOE_COMCORRECAO.AsString;

    DmNEW.CdsPacienteLaudoMedicoACUIDADEODSEMCORRECAO.AsString := DmOLD.CdsPacienteLaudoMedicoDS_ACUIDADEOD_SEMCORRECAO.AsString;
    DmNEW.CdsPacienteLaudoMedicoACUIDADEOESEMCORRECAO.AsString := DmOLD.CdsPacienteLaudoMedicoDS_ACUIDADEOE_SEMCORRECAO.AsString;

    DmNEW.CdsPacienteLaudoMedicoTONOMETRIAOD.AsString := DmOLD.CdsPacienteLaudoMedicoDS_TONOMETRIAOD.AsString;
    DmNEW.CdsPacienteLaudoMedicoTONOMETRIAOE.AsString := DmOLD.CdsPacienteLaudoMedicoDS_TONOMETRIAOE.AsString;

    DmNEW.CdsPacienteLaudoMedicoFUNDOSCOPIAOD.AsString := DmOLD.CdsPacienteLaudoMedicoDS_FUNDOSCOPIAOD.AsString;
    DmNEW.CdsPacienteLaudoMedicoFUNDOSCOPIAOE.AsString := DmOLD.CdsPacienteLaudoMedicoDS_FUNDOSCOPIAOE.AsString;

    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsPacienteLaudoMedico.Post;
    DmNEW.CdsPacienteLaudoMedico.ApplyUpdates(0);
    DmOLD.CdsPacienteLaudoMedico.Next;
  end;
end;

procedure TmigracaoF.migraPacientePrescricaoLente;
begin
  atualizaMigracaoIdentificacao('Migração de <PACIENTE PRESCRIÇÃO LENTE>');

  DmOLD.CdsPacientePrescricaoLente.Close;
  DmOLD.CdsPacientePrescricaoLente.Open;
  DmNEW.CdsPacientePrescricaoLente.Close;
  DmNEW.CdsPacientePrescricaoLente.Open;

  DmOLD.CdsPacientePrescricaoLente.First;
  pbMigracao.Min := 0;
  pbMigracao.Max := DmOLD.CdsPacientePrescricaoLente.RecordCount-1;
  while not DmOLD.CdsPacientePrescricaoLente.Eof do
  begin
    DmNEW.CdsPacientePrescricaoLente.Insert;
    DmNEW.CdsPacientePrescricaoLenteIDPACIENTEPRESCRICAOLENTE.AsString := DmOLD.CdsPacientePrescricaoLenteID_PACIENTE_PRESCRICAOLENTE.AsString;
    DmNEW.CdsPacientePrescricaoLenteIDPACIENTE.AsString := DmOLD.CdsPacientePrescricaoLenteID_PACIENTE.AsString;
    DmNEW.CdsPacientePrescricaoLenteIDDOUTOR.AsString := DmOLD.CdsPacientePrescricaoLenteID_DOUTOR.AsString;
    DmNEW.CdsPacientePrescricaoLenteIDAGENDA.AsString := DmOLD.CdsPacientePrescricaoLenteID_AGENDA.AsString;

    DmNEW.CdsPacientePrescricaoLenteDATAINCLUSAO.AsString := DmOLD.CdsPacientePrescricaoLenteDT_CADASTRO.AsString;
    DmNEW.CdsPacientePrescricaoLenteHORAINCLUSAO.AsString := '00:00:00';

    DmNEW.CdsPacientePrescricaoLenteLONGEODESF.AsString := DmOLD.CdsPacientePrescricaoLenteDS_LONGE_OD_ESF.AsString;
    DmNEW.CdsPacientePrescricaoLenteLONGEOEESF.AsString := DmOLD.CdsPacientePrescricaoLenteDS_LONGE_OE_ESF.AsString;

    DmNEW.CdsPacientePrescricaoLenteLONGEODCIL.AsString := DmOLD.CdsPacientePrescricaoLenteDS_LONGE_OD_CIL.AsString;
    DmNEW.CdsPacientePrescricaoLenteLONGEOECIL.AsString := DmOLD.CdsPacientePrescricaoLenteDS_LONGE_OE_CIL.AsString;

    DmNEW.CdsPacientePrescricaoLenteLONGEODEIXO.AsString := DmOLD.CdsPacientePrescricaoLenteDS_LONGE_OD_EIXO.AsString;
    DmNEW.CdsPacientePrescricaoLenteLONGEOEEIXO.AsString := DmOLD.CdsPacientePrescricaoLenteDS_LONGE_OE_EIXO.AsString;

    DmNEW.CdsPacientePrescricaoLenteLONGEODDP.AsString := DmOLD.CdsPacientePrescricaoLenteDS_LONGE_OD_DP.AsString;
    DmNEW.CdsPacientePrescricaoLenteLONGEOEDP.AsString := DmOLD.CdsPacientePrescricaoLenteDS_LONGE_OE_DP.AsString;


    DmNEW.CdsPacientePrescricaoLentePERTOODESF.AsString := DmOLD.CdsPacientePrescricaoLenteDS_PERTO_OD_ESF.AsString;
    DmNEW.CdsPacientePrescricaoLentePERTOOEESF.AsString := DmOLD.CdsPacientePrescricaoLenteDS_PERTO_OE_ESF.AsString;

    DmNEW.CdsPacientePrescricaoLentePERTOODCIL.AsString := DmOLD.CdsPacientePrescricaoLenteDS_PERTO_OD_CIL.AsString;
    DmNEW.CdsPacientePrescricaoLentePERTOOECIL.AsString := DmOLD.CdsPacientePrescricaoLenteDS_PERTO_OE_CIL.AsString;

    DmNEW.CdsPacientePrescricaoLentePERTOODEIXO.AsString := DmOLD.CdsPacientePrescricaoLenteDS_PERTO_OD_EIXO.AsString;
    DmNEW.CdsPacientePrescricaoLentePERTOOEEIXO.AsString := DmOLD.CdsPacientePrescricaoLenteDS_PERTO_OE_EIXO.AsString;

    DmNEW.CdsPacientePrescricaoLentePERTOODDP.AsString := DmOLD.CdsPacientePrescricaoLenteDS_PERTO_OD_DP.AsString;
    DmNEW.CdsPacientePrescricaoLentePERTOOEDP.AsString := DmOLD.CdsPacientePrescricaoLenteDS_PERTO_OE_DP.AsString;

    DmNEW.CdsPacientePrescricaoLenteADICAO.AsString := DmOLD.CdsPacientePrescricaoLenteDS_ADICAO.AsString;

    pbMigracao.Position := pbMigracao.Position +1;

    DmNEW.CdsPacientePrescricaoLente.Post;
    DmNEW.CdsPacientePrescricaoLente.ApplyUpdates(0);
    DmOLD.CdsPacientePrescricaoLente.Next;
  end;
end;

procedure TmigracaoF.listaStatusConexao;
begin
  if DmOLD.SQLConnection.Connected then
    lblStatusConexaoOLD.Caption := 'Base OLD - Conectado'
  else
    lblStatusConexaoOLD.Caption := 'Base OLD - Desconectado';

  if DmNEW.SQLConnection.Connected then
    lblStatusConexaoNEW.Caption := 'Base NEW - Conectado'
  else
    lblStatusConexaoNEW.Caption := 'Base NEW - Desconectado'
end;













procedure TmigracaoF.atualizaMigracaoIdentificacao(const Texto: string);
var
  MainHandle : THandle;

begin
//  LblMigracaoIdentificacao.Caption := Texto;
//  Application.ProcessMessages;


  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
    CloseHandle(MainHandle) ;
  except

  end;
  LblMigracaoIdentificacao.Caption := Texto;
  Application.ProcessMessages;
end;

end.
