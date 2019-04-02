unit XLibMessages;

interface

uses SysUtils, Classes;

resourcestring

  // ---------------------------------------------------------------------------
  // -------------------  Mensagens Por Telas Gen�ricas  -----------------------
  // ---------------------------------------------------------------------------

  {TXTelaCadastroF}

  msgCadPdrInclusaoSucesso          = 'Inclus�o com sucesso.';
  msgCadPdrAlteracaoSucesso         = 'Altera��o com sucesso.';
  msgCadPdrExclusaoSucesso          = 'Exclus�o com sucesso.';
  msgCadPdrRegistroNaoExiste        = 'Registro inexistente.';
  msgCadPdrRegistroExisteEmInclusao = 'Registro j� existe, tela em modo de consulta.';
  msgCadPdrConfirmacaoErro          = 'A confirma��o n�o pode ser efetuada.';


  {TXTelaRotinaF}

  msgRotPdrBaixaSucesso = 'Baixa com sucesso.';


  {TXTelaRelatorioF}

  msgRelPdrNaoPossuiDadosVisualizar = 'N�o possui dados para listar.';



  // ---------------------------------------------------------------------------
  // -----------------  Mensagens Por Telas Espec�ficas  -----------------------
  // ---------------------------------------------------------------------------

  {TCadCidadeF}

  msgCadCidadeInformarCidade = 'Informar a "Cidade".';
  msgCadCidadeInformarUF     = 'Informar a "UF".';


  {TCadConvenioF}

  msgCadConvenioInformarConvenio = 'Informar a "Conv�nio".';


  {TCadExameF}

  msgCadExameInformarDescricao = 'Informar a "Descri��o".';


  {TCadMedicamentoQuantidadeF}

  msgCadMedQtdeInformarDescricao = 'Informar a "Descri��o".';


  {TCadMedicamentoUsoF}

  msgCadMedUsoInformarDescricao = 'Informar a "Descri��o".';


  {TCadMedicamentoF}

  msgCadMedtoInformarDescricao = 'Informar a "Descri��o".';
  msgCadMedtoInformarMedQtde   = 'Informar a "Quantidade".';
  msgCadMedtoInformarMedUso    = 'Informar o "Uso".';


  {TCadPacienteF}

  msgCadPacienteInformarNome                    = 'Informar o "Nome".';
  msgCadPacienteInformarNomeAoInserirConvenio   = 'Informar o "Nome" antes de incluir um conv�nio.';
  msgCadPacienteNomeJaCadastradoDesejaContinuar = 'O "Nome" j� consta cadastrado. Deseja continuar?';

  {TCadDoutorF}

  msgCadDoutorInformarNome                  = 'Informar o "Doutor" ou a "Doutora".';


  {TCadSecretariaF}



  {TOpeFichaPacienteF}
  msgOpeFichaPac = 'Paciente confirmado com sucesso.';


  {TXRelatorioF}
  msgRelatorioNaoPossuiInformacaoParaExibir = 'N�o existe dados para serem visualizados.';





implementation

end.
