program phMed;

uses
  ExceptionLog,
  Forms,
  Midas,
  MidasLib,
  SysUtils,
  Windows,
  IdSSL,
  IdSSLOpenSSL,
  IdSSLOpenSSLHeaders,
  IdSMTP,
  IdMessage,
  XMenuU in 'FrameWork\XMenuU.pas' {XMenuF},
  XMensagemU in 'FrameWork\XMensagemU.pas' {XMensagemF},
  XTelaCadastroU in 'FrameWork\XTelaCadastroU.pas' {XTelaCadastroF},
  XTelaRelatorioU in 'FrameWork\XTelaRelatorioU.pas' {XTelaRelatorioF},
  XDmU in 'FrameWork\XDmU.pas' {XDmF: TDataModule},
  XLibGenericoU in 'FrameWork\XLibGenericoU.pas',
  DmConexaoU in 'DmConexaoU.pas' {DmConexaoF: TDataModule},
  MenuPrincipalU in 'MenuPrincipalU.pas' {MenuPrincipalF},
  XTelaLoginU in 'FrameWork\XTelaLoginU.pas' {XTelaLoginF},
  Controls,
  Winsock {LoginSistemaF},
  LibRotinasSistemaU in 'LibRotinasSistemaU.pas',
  LibRotinasAtualizacaoU in 'LibRotinasAtualizacaoU.pas',
  DmRelatorioU in 'DmRelatorioU.pas' {DmRelatorioF: TDataModule},
  DmCadastroU in 'DmCadastroU.pas' {DmCadastroF: TDataModule},
  CadCidadeU in 'CadCidadeU.pas' {CadCidadeF},
  XLibMessages in 'FrameWork\XLibMessages.pas',
  CadUsuarioU in 'CadUsuarioU.pas' {CadUsuarioF},
  XPesquisaPadraoU in 'FrameWork\XPesquisaPadraoU.pas' {XPesquisaPadrao},
  PesqCidadeU in 'PesqCidadeU.pas' {PesqCidadeF},
  PesqUsuarioU in 'PesqUsuarioU.pas' {PesqUsuarioF},
  XTelaRotinaU in 'FrameWork\XTelaRotinaU.pas' {XTelaRotinaF},
  DmRotinaU in 'DmRotinaU.pas' {DmRotinaF: TDataModule},
  XTelaConsultaU in 'FrameWork\XTelaConsultaU.pas' {XTelaConsultaF},
  LoginSistemaU in 'LoginSistemaU.pas',
  CadPacienteU in 'CadPacienteU.pas' {CadPacienteF},
  PesqPacienteU in 'PesqPacienteU.pas' {PesqPacienteF},
  CadDoutorU in 'CadDoutorU.pas' {CadDoutorF},
  PesqDoutorU in 'PesqDoutorU.pas' {PesqDoutorF},
  CadConvenioU in 'CadConvenioU.pas' {CadConvenioF},
  PesqConvenioU in 'PesqConvenioU.pas' {PesqConvenioF},
  CadExameU in 'CadExameU.pas' {CadExameF},
  PesqExameU in 'PesqExameU.pas' {PesqExameF},
  CadMedicamentoQuantidadeU in 'CadMedicamentoQuantidadeU.pas' {CadMedicamentoQuantidadeF},
  PesqMedicamentoQuantidadeU in 'PesqMedicamentoQuantidadeU.pas' {PesqMedicamentoQuantidadeF},
  CadMedicamentoU in 'CadMedicamentoU.pas' {CadMedicamentoF},
  PesqMedicamentoU in 'PesqMedicamentoU.pas' {PesqMedicamentoF},
  CadMedicamentoUsoU in 'CadMedicamentoUsoU.pas' {CadMedicamentoUsoF},
  PesqMedicamentoUsoU in 'PesqMedicamentoUsoU.pas' {PesqMedicamentoUsoF},
  CadSecretariaU in 'CadSecretariaU.pas' {CadSecretariaF},
  PesqSecretariaU in 'PesqSecretariaU.pas' {PesqSecretariaF},
  XTelaOperacaoU in 'FrameWork\XTelaOperacaoU.pas' {XTelaOperacaoF},
  XTelaShowModalU in 'FrameWork\XTelaShowModalU.pas' {XTelaShowModalF},
  OpeAgendaConsultaU in 'OpeAgendaConsultaU.pas' {OpeAgendaConsultaF},
  cxGridStrs in 'C:\Users\PedroHenrique\Documents\DevExpress VCL\ExpressQuantumGrid 6\Sources\cxGridStrs.pas',
  XLibTypesClient in 'FrameWork\XLibTypesClient.pas',
  SmdAgendaU in 'SmdAgendaU.pas' {SmdAgendaF},
  SmdEvolucaoClinicaU in 'SmdEvolucaoClinicaU.pas' {SmdEvolucaoClinicaF},
  SmdReceituarioU in 'SmdReceituarioU.pas' {SmdReceituarioF},
  SmdSolicitacaoExameU in 'SmdSolicitacaoExameU.pas' {SmdSolicitacaoExameF},
  SmdAtestadoMedicoU in 'SmdAtestadoMedicoU.pas' {SmdAtestadoMedicoF},
  SmdPrescicaoOculosU in 'SmdPrescicaoOculosU.pas' {SmdPrescicaoOculosF},
  SmdLaudoOftalmoU in 'SmdLaudoOftalmoU.pas' {SmdLaudoOftalmoF},
  CadClinicaU in 'CadClinicaU.pas' {CadClinicaF},
  OpeFichaPacienteU in 'OpeFichaPacienteU.pas' {OpeFichaPacienteF},
  OpeAgendaDeCompromissoU in 'OpeAgendaDeCompromissoU.pas' {OpeAgendaDeCompromissoF},
  ConsAgendaTelefonicaU in 'ConsAgendaTelefonicaU.pas' {ConsAgendaTelefonicaF},
  SmdReceituarioPosologiaU in 'SmdReceituarioPosologiaU.pas' {SmdReceituarioPosologiaF},
  SmdFotoPacienteU in 'SmdFotoPacienteU.pas' {SmdFotoPacienteF},
  RelAgendaConsultaPorPeriodoU in 'RelAgendaConsultaPorPeriodoU.pas' {RelAgendaConsultaPorPeriodoF},
  RelPacienteSexoGraficoU in 'RelPacienteSexoGraficoU.pas' {RelPacienteSexoGraficoF},
  RelFichaPacienteU in 'RelFichaPacienteU.pas' {RelFichaPacienteF},
  OpeEnvioEmailAniversarianteU in 'OpeEnvioEmailAniversarianteU.pas' {OpeEnvioEmailAniversarianteF},
  SmdMedicamentoU in 'SmdMedicamentoU.pas' {SmdMedicamentoF},
  SmdPrePacienteU in 'SmdPrePacienteU.pas' {SmdPrePacienteF},
  SmdExameU in 'SmdExameU.pas' {SmdExameF},
  OpeCorrigePacienteDuplicadoU in 'OpeCorrigePacienteDuplicadoU.pas' {OpeCorrigePacienteDuplicadoF},
  SmdValidadorPacienteDuplicadoU in 'SmdValidadorPacienteDuplicadoU.pas' {SmdValidadorPacienteDuplicadoF},
  RelAgendaConsultaU in 'RelAgendaConsultaU.pas' {RelAgendaConsultaF},
  ConsAgendamentoDoPacienteU in 'ConsAgendamentoDoPacienteU.pas' {ConsAgendamentoDoPacienteF},
  ConsAgendamentoDoPacientePesquisaPacienteU in 'ConsAgendamentoDoPacientePesquisaPacienteU.pas' {ConsAgendamentoDoPacientePesquisaPacienteF};

{$R *.res}


var
  HprevHist : HWND;

begin
//  try
//
//    Application.Initialize;
//
//    HprevHist := FindWindow(Nil, PChar('phMed - Prontuário Médicos'));
//    if HprevHist <> 0 then begin
//      Application.MessageBox('Ambiente já aberto', 'Verifique',MB_OK);
//        ExitProcess(0);
//    end;
//
//    Application.Title := 'phMed - Prontuário Médicos';
//    Application.CreateForm(TDmConexaoF, DmConexaoF);
//    LoginSistemaF := TLoginSistemaF.Create(Application);
//    try
//      LoginSistemaF.ShowModal;
//      if LoginSistemaF.ModalResult = mrOk then
//      begin
//
//        Application.CreateForm(TMenuPrincipalF, MenuPrincipalF);
//        Application.Run;
//      end
//      else
//      if LoginSistemaF.ModalResult = mrCancel then
//      begin
//        ExitProcess(0);
//      end;
//    finally
//      LoginSistemaF.Release;
//      LoginSistemaF := nil;
//    end;
//  except
//    on E:Exception do
//    begin
//      raise Exception.Create('CHAMADA PRINCIPAL' + #13 +  E.message);
//    end;
//  end;






  Application.Initialize;
  HprevHist := FindWindow(Nil, PChar('Advogado Difícil - << phSistemas - Sistemas Personalizados (44) 8822-4989 >>'));
  if HprevHist <> 0 then begin
    Application.MessageBox('O sistema já está em execução!', 'Verifique', MB_OK);
    ExitProcess(0);
  end;
  Application.Title := 'phMed - Sistemas Personalizado (44) 8822-4989';
  Application.CreateForm(TDmConexaoF, DmConexaoF);
  Application.CreateForm(TDmCadastroF, DmCadastroF);
  Application.CreateForm(TDmRotinaF, DmRotinaF);
  Application.CreateForm(TDmRelatorioF, DmRelatorioF);
  Application.CreateForm(TMenuPrincipalF, MenuPrincipalF);
  Application.CreateForm(TConsAgendamentoDoPacientePesquisaPacienteF, ConsAgendamentoDoPacientePesquisaPacienteF);
  Application.Run;
end.








//var
//Instancia: THandle;
//begin
//Instancia:= CreateMutex(nil, false, 'InstanciaIniciada');
//if WaitForSingleObject(Instancia, 0) = wait_Timeout then
//begin
//Application.MessageBox('Atenção o programa já está aberto!.','Atenção',MB_ICONINFORMATION);;
//Exit;
//end;
//Application.Initialize;
//Application.CreateForm(TForm1, Form1);
//Application.Run;
//end.



//uses
//System, Windows,
//... // para abrir DPR vai menu do Delphi: Project / View Source
//E codifique como o exemplo abaixo
//
//var
//Instancia: THandle;
//begin
//Instancia:= CreateMutex(nil, false, 'InstanciaIniciada');
//if WaitForSingleObject(Instancia, 0) = wait_Timeout then
//begin Application.MessageBox('Atenção o programa já está aberto!.','Atenção',MB_ICONINFORMATION);; Exit;
//end;
//Application.Initialize; Application.CreateForm(TForm1, Form1); Application.Run;
//end.
