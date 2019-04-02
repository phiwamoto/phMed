unit XLibMessages;

interface

uses SysUtils, Classes;

resourcestring

  // ---------------------------------------------------------------------------
  // -------------------  Mensagens Por Telas Genéricas  -----------------------
  // ---------------------------------------------------------------------------

  {TXTelaCadastroF}

  msgCadPdrInclusaoSucesso          = 'Inclusão com sucesso.';
  msgCadPdrAlteracaoSucesso         = 'Alteração com sucesso.';
  msgCadPdrExclusaoSucesso          = 'Exclusão com sucesso.';
  msgCadPdrRegistroNaoExiste        = 'Registro inexistente.';
  msgCadPdrRegistroExisteEmInclusao = 'Registro já existe, tela em modo de consulta.';
  msgCadPdrConfirmacaoErro          = 'A confirmação não pode ser efetuada.';


  {TXTelaRotinaF}

  msgRotPdrBaixaSucesso = 'Baixa com sucesso.';


  {TXTelaRelatorioF}

  msgRelPdrNaoPossuiDadosVisualizar = 'Não possui dados para listar.';



  // ---------------------------------------------------------------------------
  // -----------------  Mensagens Por Telas Específicas  -----------------------
  // ---------------------------------------------------------------------------

  {TCadCidadeF}

  msgCadCidadeInformarCidade = 'Informar a "Cidade".';
  msgCadCidadeInformarUF     = 'Informar a "UF".';


  {TCadConvenioF}

  msgCadConvenioInformarConvenio = 'Informar a "Convênio".';


  {TCadExameF}

  msgCadExameInformarDescricao = 'Informar a "Descrição".';


  {TCadMedicamentoQuantidadeF}

  msgCadMedQtdeInformarDescricao = 'Informar a "Descrição".';


  {TCadMedicamentoUsoF}

  msgCadMedUsoInformarDescricao = 'Informar a "Descrição".';


  {TCadMedicamentoF}

  msgCadMedtoInformarDescricao = 'Informar a "Descrição".';
  msgCadMedtoInformarMedQtde   = 'Informar a "Quantidade".';
  msgCadMedtoInformarMedUso    = 'Informar o "Uso".';


  {TCadPacienteF}

  msgCadPacienteInformarNome                    = 'Informar o "Nome".';
  msgCadPacienteInformarNomeAoInserirConvenio   = 'Informar o "Nome" antes de incluir um convênio.';
  msgCadPacienteNomeJaCadastradoDesejaContinuar = 'O "Nome" já consta cadastrado. Deseja continuar?';

  {TCadDoutorF}

  msgCadDoutorInformarNome                  = 'Informar o "Doutor" ou a "Doutora".';


  {TCadSecretariaF}



  {TOpeFichaPacienteF}
  msgOpeFichaPac = 'Paciente confirmado com sucesso.';


  {TXRelatorioF}
  msgRelatorioNaoPossuiInformacaoParaExibir = 'Não existe dados para serem visualizados.';





implementation

end.
