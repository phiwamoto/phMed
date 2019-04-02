unit dmOldU;

interface

uses
  SysUtils, Classes, WideStrings, DBXFirebird, DB, SqlExpr, FMTBcd, Provider,
  DBClient;

type
  TDmOLD = class(TDataModule)
    SQLConnection: TSQLConnection;
    CdsPaciente: TClientDataSet;
    DspPaciente: TDataSetProvider;
    QryPaciente: TSQLQuery;
    ClientDataSet2: TClientDataSet;
    DataSetProvider2: TDataSetProvider;
    SQLQuery2: TSQLQuery;
    QryPacienteID_PACIENTE: TIntegerField;
    QryPacienteID_CIDADE: TIntegerField;
    QryPacienteDT_CADASTRO: TDateField;
    QryPacienteDT_NASCIMENTO: TDateField;
    QryPacienteNR_NUMERO: TIntegerField;
    QryPacienteTP_ESTADOCIVIL: TStringField;
    QryPacienteTP_SEXO: TStringField;
    QryPacienteDS_OBSERVACAO: TStringField;
    QryPacienteDS_NOME: TStringField;
    QryPacienteDS_ENDERECO: TStringField;
    QryPacienteDS_BAIRRO: TStringField;
    QryPacienteDS_EMAIL: TStringField;
    QryPacienteDS_COMPLEMENTO: TStringField;
    QryPacienteDS_RG: TStringField;
    QryPacienteDS_CPF: TStringField;
    QryPacienteDS_TELEFONE1: TStringField;
    QryPacienteDS_TELEFONE2: TStringField;
    QryPacienteDS_CEP: TStringField;
    QryPacienteBO_ATIVO: TStringField;
    CdsPacienteID_PACIENTE: TIntegerField;
    CdsPacienteID_CIDADE: TIntegerField;
    CdsPacienteDT_CADASTRO: TDateField;
    CdsPacienteDT_NASCIMENTO: TDateField;
    CdsPacienteNR_NUMERO: TIntegerField;
    CdsPacienteTP_ESTADOCIVIL: TStringField;
    CdsPacienteTP_SEXO: TStringField;
    CdsPacienteDS_OBSERVACAO: TStringField;
    CdsPacienteDS_NOME: TStringField;
    CdsPacienteDS_ENDERECO: TStringField;
    CdsPacienteDS_BAIRRO: TStringField;
    CdsPacienteDS_EMAIL: TStringField;
    CdsPacienteDS_COMPLEMENTO: TStringField;
    CdsPacienteDS_RG: TStringField;
    CdsPacienteDS_CPF: TStringField;
    CdsPacienteDS_TELEFONE1: TStringField;
    CdsPacienteDS_TELEFONE2: TStringField;
    CdsPacienteDS_CEP: TStringField;
    CdsPacienteBO_ATIVO: TStringField;
    CdsCidade: TClientDataSet;
    DspCidade: TDataSetProvider;
    QryCidade: TSQLQuery;
    QryCidadeID_CIDADE: TIntegerField;
    QryCidadeDT_CADASTRO: TDateField;
    QryCidadeDS_CIDADE: TStringField;
    QryCidadeDS_ESTADO: TStringField;
    QryCidadeBO_ATIVO: TStringField;
    CdsCidadeID_CIDADE: TIntegerField;
    CdsCidadeDT_CADASTRO: TDateField;
    CdsCidadeDS_CIDADE: TStringField;
    CdsCidadeDS_ESTADO: TStringField;
    CdsCidadeBO_ATIVO: TStringField;
    CdsConvenio: TClientDataSet;
    DspConvenio: TDataSetProvider;
    QryConvenio: TSQLQuery;
    QryConvenioID_CONVENIO: TIntegerField;
    QryConvenioDT_CADASTRO: TDateField;
    QryConvenioDS_CONVENIO: TStringField;
    QryConvenioBO_ATIVO: TStringField;
    CdsConvenioID_CONVENIO: TIntegerField;
    CdsConvenioDT_CADASTRO: TDateField;
    CdsConvenioDS_CONVENIO: TStringField;
    CdsConvenioBO_ATIVO: TStringField;
    CdsExame: TClientDataSet;
    DspExame: TDataSetProvider;
    QryExame: TSQLQuery;
    QryExameID_EXAME: TIntegerField;
    QryExameDT_CADASTRO: TDateField;
    QryExameDS_DESCRICAO: TStringField;
    QryExameBO_ATIVO: TStringField;
    CdsExameID_EXAME: TIntegerField;
    CdsExameDT_CADASTRO: TDateField;
    CdsExameDS_DESCRICAO: TStringField;
    CdsExameBO_ATIVO: TStringField;
    CdsMedicamentoUso: TClientDataSet;
    DspMedicamentoUso: TDataSetProvider;
    QryMedicamentoUso: TSQLQuery;
    QryMedicamentoUsoID_MEDICAMENTO_USO: TIntegerField;
    QryMedicamentoUsoDT_CADASTRO: TDateField;
    QryMedicamentoUsoDS_DESCRICAO: TStringField;
    QryMedicamentoUsoBO_ATIVO: TStringField;
    CdsMedicamentoUsoID_MEDICAMENTO_USO: TIntegerField;
    CdsMedicamentoUsoDT_CADASTRO: TDateField;
    CdsMedicamentoUsoDS_DESCRICAO: TStringField;
    CdsMedicamentoUsoBO_ATIVO: TStringField;
    CdsMedicamentoQuantidade: TClientDataSet;
    DspMedicamentoQuantidade: TDataSetProvider;
    QryMedicamentoQuantidade: TSQLQuery;
    QryMedicamentoQuantidadeID_MEDICAMENTO_QUANTIDADE: TIntegerField;
    QryMedicamentoQuantidadeDT_CADASTRO: TDateField;
    QryMedicamentoQuantidadeDS_DESCRICAO: TStringField;
    QryMedicamentoQuantidadeBO_ATIVO: TStringField;
    CdsMedicamentoQuantidadeID_MEDICAMENTO_QUANTIDADE: TIntegerField;
    CdsMedicamentoQuantidadeDT_CADASTRO: TDateField;
    CdsMedicamentoQuantidadeDS_DESCRICAO: TStringField;
    CdsMedicamentoQuantidadeBO_ATIVO: TStringField;
    CdsMedicamento: TClientDataSet;
    DspMedicamento: TDataSetProvider;
    QryMedicamento: TSQLQuery;
    QryMedicamentoID_MEDICAMENTO: TIntegerField;
    QryMedicamentoID_MEDICAMENTO_QUANTIDADE: TIntegerField;
    QryMedicamentoID_MEDICAMENTO_USO: TIntegerField;
    QryMedicamentoDT_CADASTRO: TDateField;
    QryMedicamentoDS_DESCRICAO: TStringField;
    QryMedicamentoDS_POSOLOGIA: TStringField;
    QryMedicamentoBO_ATIVO: TStringField;
    CdsMedicamentoID_MEDICAMENTO: TIntegerField;
    CdsMedicamentoID_MEDICAMENTO_QUANTIDADE: TIntegerField;
    CdsMedicamentoID_MEDICAMENTO_USO: TIntegerField;
    CdsMedicamentoDT_CADASTRO: TDateField;
    CdsMedicamentoDS_DESCRICAO: TStringField;
    CdsMedicamentoDS_POSOLOGIA: TStringField;
    CdsMedicamentoBO_ATIVO: TStringField;
    CdsSecretaria: TClientDataSet;
    DspSecretaria: TDataSetProvider;
    QrySecretaria: TSQLQuery;
    QrySecretariaID_EQUIPE: TIntegerField;
    QrySecretariaID_CIDADE: TIntegerField;
    QrySecretariaDT_CADASTRO: TDateField;
    QrySecretariaNR_NUMERO: TIntegerField;
    QrySecretariaTP_EQUIPE: TStringField;
    QrySecretariaDS_NOME: TStringField;
    QrySecretariaDS_ENDERECO: TStringField;
    QrySecretariaDS_BAIRRO: TStringField;
    QrySecretariaDS_EMAIL: TStringField;
    QrySecretariaDS_FOTO: TStringField;
    QrySecretariaDS_CPF: TStringField;
    QrySecretariaDS_RG: TStringField;
    QrySecretariaDS_TELEFONE: TStringField;
    QrySecretariaDS_CELULAR: TStringField;
    QrySecretariaDS_CEP: TStringField;
    QrySecretariaDS_CRM: TStringField;
    QrySecretariaBO_ATIVO: TStringField;
    CdsSecretariaID_EQUIPE: TIntegerField;
    CdsSecretariaID_CIDADE: TIntegerField;
    CdsSecretariaDT_CADASTRO: TDateField;
    CdsSecretariaNR_NUMERO: TIntegerField;
    CdsSecretariaTP_EQUIPE: TStringField;
    CdsSecretariaDS_NOME: TStringField;
    CdsSecretariaDS_ENDERECO: TStringField;
    CdsSecretariaDS_BAIRRO: TStringField;
    CdsSecretariaDS_EMAIL: TStringField;
    CdsSecretariaDS_FOTO: TStringField;
    CdsSecretariaDS_CPF: TStringField;
    CdsSecretariaDS_RG: TStringField;
    CdsSecretariaDS_TELEFONE: TStringField;
    CdsSecretariaDS_CELULAR: TStringField;
    CdsSecretariaDS_CEP: TStringField;
    CdsSecretariaDS_CRM: TStringField;
    CdsSecretariaBO_ATIVO: TStringField;
    CdsDoutor: TClientDataSet;
    CdsDoutorID_EQUIPE: TIntegerField;
    CdsDoutorID_CIDADE: TIntegerField;
    CdsDoutorDT_CADASTRO: TDateField;
    CdsDoutorNR_NUMERO: TIntegerField;
    CdsDoutorTP_EQUIPE: TStringField;
    CdsDoutorDS_NOME: TStringField;
    CdsDoutorDS_ENDERECO: TStringField;
    CdsDoutorDS_BAIRRO: TStringField;
    CdsDoutorDS_EMAIL: TStringField;
    CdsDoutorDS_FOTO: TStringField;
    CdsDoutorDS_CPF: TStringField;
    CdsDoutorDS_RG: TStringField;
    CdsDoutorDS_TELEFONE: TStringField;
    CdsDoutorDS_CELULAR: TStringField;
    CdsDoutorDS_CEP: TStringField;
    CdsDoutorDS_CRM: TStringField;
    CdsDoutorBO_ATIVO: TStringField;
    DspDoutor: TDataSetProvider;
    QryDoutor: TSQLQuery;
    QryDoutorID_EQUIPE: TIntegerField;
    QryDoutorID_CIDADE: TIntegerField;
    QryDoutorDT_CADASTRO: TDateField;
    QryDoutorNR_NUMERO: TIntegerField;
    QryDoutorTP_EQUIPE: TStringField;
    QryDoutorDS_NOME: TStringField;
    QryDoutorDS_ENDERECO: TStringField;
    QryDoutorDS_BAIRRO: TStringField;
    QryDoutorDS_EMAIL: TStringField;
    QryDoutorDS_FOTO: TStringField;
    QryDoutorDS_CPF: TStringField;
    QryDoutorDS_RG: TStringField;
    QryDoutorDS_TELEFONE: TStringField;
    QryDoutorDS_CELULAR: TStringField;
    QryDoutorDS_CEP: TStringField;
    QryDoutorDS_CRM: TStringField;
    QryDoutorBO_ATIVO: TStringField;
    CdsClinica: TClientDataSet;
    DspClinica: TDataSetProvider;
    QryClinica: TSQLQuery;
    QryClinicaID_CLINICA: TIntegerField;
    QryClinicaID_CIDADE: TIntegerField;
    QryClinicaDT_CADASTRO: TDateField;
    QryClinicaNR_NUMERO: TIntegerField;
    QryClinicaNR_SALA: TIntegerField;
    QryClinicaNR_SMTPPORTA: TIntegerField;
    QryClinicaDS_CLINICA: TStringField;
    QryClinicaDS_ENDERECO: TStringField;
    QryClinicaDS_BAIRRO: TStringField;
    QryClinicaDS_EMAIL: TStringField;
    QryClinicaDS_SMTP: TStringField;
    QryClinicaDS_SITE: TStringField;
    QryClinicaDS_FOTO: TStringField;
    QryClinicaDS_FOTOGRANDE: TStringField;
    QryClinicaDS_TELEFONE: TStringField;
    QryClinicaDS_SENHAEMAIL: TStringField;
    QryClinicaDS_CEP: TStringField;
    CdsClinicaID_CLINICA: TIntegerField;
    CdsClinicaID_CIDADE: TIntegerField;
    CdsClinicaDT_CADASTRO: TDateField;
    CdsClinicaNR_NUMERO: TIntegerField;
    CdsClinicaNR_SALA: TIntegerField;
    CdsClinicaNR_SMTPPORTA: TIntegerField;
    CdsClinicaDS_CLINICA: TStringField;
    CdsClinicaDS_ENDERECO: TStringField;
    CdsClinicaDS_BAIRRO: TStringField;
    CdsClinicaDS_EMAIL: TStringField;
    CdsClinicaDS_SMTP: TStringField;
    CdsClinicaDS_SITE: TStringField;
    CdsClinicaDS_FOTO: TStringField;
    CdsClinicaDS_FOTOGRANDE: TStringField;
    CdsClinicaDS_TELEFONE: TStringField;
    CdsClinicaDS_SENHAEMAIL: TStringField;
    CdsClinicaDS_CEP: TStringField;
    CdsUsuario: TClientDataSet;
    DspUsuario: TDataSetProvider;
    QryUsuario: TSQLQuery;
    QryUsuarioID_USUARIO: TIntegerField;
    QryUsuarioID_PERFIL: TIntegerField;
    QryUsuarioID_EQUIPE: TIntegerField;
    QryUsuarioDT_CADASTRO: TDateField;
    QryUsuarioDS_LOGIN: TStringField;
    QryUsuarioDS_SENHA: TStringField;
    QryUsuarioBO_SISTEMA: TStringField;
    QryUsuarioBO_ATIVO: TStringField;
    CdsUsuarioID_USUARIO: TIntegerField;
    CdsUsuarioID_PERFIL: TIntegerField;
    CdsUsuarioID_EQUIPE: TIntegerField;
    CdsUsuarioDT_CADASTRO: TDateField;
    CdsUsuarioDS_LOGIN: TStringField;
    CdsUsuarioDS_SENHA: TStringField;
    CdsUsuarioBO_SISTEMA: TStringField;
    CdsUsuarioBO_ATIVO: TStringField;
    CdsPacienteConvenio: TClientDataSet;
    DspPacienteConvenio: TDataSetProvider;
    QryPacienteConvenio: TSQLQuery;
    QryPacienteConvenioID_PACIENTE_CONVENIO: TIntegerField;
    QryPacienteConvenioID_PACIENTE: TIntegerField;
    QryPacienteConvenioID_CONVENIO: TIntegerField;
    QryPacienteConvenioBO_PRINCIPAL: TStringField;
    QryPacienteConvenioBO_ATIVO: TStringField;
    CdsPacienteConvenioID_PACIENTE_CONVENIO: TIntegerField;
    CdsPacienteConvenioID_PACIENTE: TIntegerField;
    CdsPacienteConvenioID_CONVENIO: TIntegerField;
    CdsPacienteConvenioBO_PRINCIPAL: TStringField;
    CdsPacienteConvenioBO_ATIVO: TStringField;
    CdsPacienteConsulta: TClientDataSet;
    DspPacienteConsulta: TDataSetProvider;
    QryPacienteConsulta: TSQLQuery;
    QryPacienteConsultaID_PACIENTE_CONSULTA: TIntegerField;
    QryPacienteConsultaID_PACIENTE: TIntegerField;
    QryPacienteConsultaID_DOUTOR: TIntegerField;
    QryPacienteConsultaID_AGENDA: TIntegerField;
    QryPacienteConsultaDT_CONSULTA: TDateField;
    QryPacienteConsultaHR_CONSULTA: TTimeField;
    QryPacienteConsultaTP_STATUS: TStringField;
    CdsPacienteConsultaID_PACIENTE_CONSULTA: TIntegerField;
    CdsPacienteConsultaID_PACIENTE: TIntegerField;
    CdsPacienteConsultaID_DOUTOR: TIntegerField;
    CdsPacienteConsultaID_AGENDA: TIntegerField;
    CdsPacienteConsultaDT_CONSULTA: TDateField;
    CdsPacienteConsultaHR_CONSULTA: TTimeField;
    CdsPacienteConsultaTP_STATUS: TStringField;
    CdsPacienteEvolucao: TClientDataSet;
    DspPacienteEvolucao: TDataSetProvider;
    QryPacienteEvolucao: TSQLQuery;
    QryPacienteEvolucaoID_PACIENTE_EVOLUCAOCLINICA: TIntegerField;
    QryPacienteEvolucaoID_PACIENTE: TIntegerField;
    QryPacienteEvolucaoID_DOUTOR: TIntegerField;
    QryPacienteEvolucaoID_AGENDA: TIntegerField;
    QryPacienteEvolucaoDT_CADASTRO: TDateField;
    QryPacienteEvolucaoHR_CADASTRO: TTimeField;
    QryPacienteEvolucaoDS_EVOLUCAOCLINICA: TStringField;
    QryPacienteEvolucaoBO_RASCUNHO: TStringField;
    CdsPacienteEvolucaoID_PACIENTE_EVOLUCAOCLINICA: TIntegerField;
    CdsPacienteEvolucaoID_PACIENTE: TIntegerField;
    CdsPacienteEvolucaoID_DOUTOR: TIntegerField;
    CdsPacienteEvolucaoID_AGENDA: TIntegerField;
    CdsPacienteEvolucaoDT_CADASTRO: TDateField;
    CdsPacienteEvolucaoHR_CADASTRO: TTimeField;
    CdsPacienteEvolucaoDS_EVOLUCAOCLINICA: TStringField;
    CdsPacienteEvolucaoBO_RASCUNHO: TStringField;
    CdsPacienteReceituario: TClientDataSet;
    DspPacienteReceituario: TDataSetProvider;
    QryPacienteReceituario: TSQLQuery;
    CdsPacienteReceituarioUso: TClientDataSet;
    DspPacienteReceituarioUso: TDataSetProvider;
    QryPacienteReceituarioUso: TSQLQuery;
    QryPacienteReceituarioID_PACIENTE_RECEITUARIO: TIntegerField;
    QryPacienteReceituarioID_PACIENTE: TIntegerField;
    QryPacienteReceituarioID_DOUTOR: TIntegerField;
    QryPacienteReceituarioID_AGENDA: TIntegerField;
    QryPacienteReceituarioDT_CADASTRO: TDateField;
    QryPacienteReceituarioHR_CADASTRO: TTimeField;
    CdsPacienteReceituarioID_PACIENTE_RECEITUARIO: TIntegerField;
    CdsPacienteReceituarioID_PACIENTE: TIntegerField;
    CdsPacienteReceituarioID_DOUTOR: TIntegerField;
    CdsPacienteReceituarioID_AGENDA: TIntegerField;
    CdsPacienteReceituarioDT_CADASTRO: TDateField;
    CdsPacienteReceituarioHR_CADASTRO: TTimeField;
    QryPacienteReceituarioUsoID_PACIENTE_RECEITUARIO_USO: TIntegerField;
    QryPacienteReceituarioUsoID_PACIENTE_RECEITUARIO: TIntegerField;
    QryPacienteReceituarioUsoID_PACIENTE: TIntegerField;
    QryPacienteReceituarioUsoID_MEDICAMENTO: TIntegerField;
    CdsPacienteReceituarioUsoID_PACIENTE_RECEITUARIO_USO: TIntegerField;
    CdsPacienteReceituarioUsoID_PACIENTE_RECEITUARIO: TIntegerField;
    CdsPacienteReceituarioUsoID_PACIENTE: TIntegerField;
    CdsPacienteReceituarioUsoID_MEDICAMENTO: TIntegerField;
    CdsPacienteExame: TClientDataSet;
    DspPacienteExame: TDataSetProvider;
    QryPacienteExame: TSQLQuery;
    CdsPacienteExameSolicitado: TClientDataSet;
    DspPacienteExameSolicitado: TDataSetProvider;
    QryPacienteExameSolicitado: TSQLQuery;
    QryPacienteExameID_PACIENTE_EXAME: TIntegerField;
    QryPacienteExameID_PACIENTE: TIntegerField;
    QryPacienteExameID_DOUTOR: TIntegerField;
    QryPacienteExameID_AGENDA: TIntegerField;
    QryPacienteExameDT_CADASTRO: TDateField;
    QryPacienteExameHR_CADASTRO: TTimeField;
    QryPacienteExameSolicitadoID_PACIENTE_EXAME_SOLICITADO: TIntegerField;
    QryPacienteExameSolicitadoID_PACIENTE_EXAME: TIntegerField;
    QryPacienteExameSolicitadoID_PACIENTE: TIntegerField;
    QryPacienteExameSolicitadoID_EXAME: TIntegerField;
    CdsPacienteExameID_PACIENTE_EXAME: TIntegerField;
    CdsPacienteExameID_PACIENTE: TIntegerField;
    CdsPacienteExameID_DOUTOR: TIntegerField;
    CdsPacienteExameID_AGENDA: TIntegerField;
    CdsPacienteExameDT_CADASTRO: TDateField;
    CdsPacienteExameHR_CADASTRO: TTimeField;
    CdsPacienteExameSolicitadoID_PACIENTE_EXAME_SOLICITADO: TIntegerField;
    CdsPacienteExameSolicitadoID_PACIENTE_EXAME: TIntegerField;
    CdsPacienteExameSolicitadoID_PACIENTE: TIntegerField;
    CdsPacienteExameSolicitadoID_EXAME: TIntegerField;
    CdsPacienteLaudoMedico: TClientDataSet;
    DspPacienteLaudoMedico: TDataSetProvider;
    QryPacienteLaudoMedico: TSQLQuery;
    QryPacienteLaudoMedicoID_PACIENTE_LAUDOMEDICO: TIntegerField;
    QryPacienteLaudoMedicoID_PACIENTE: TIntegerField;
    QryPacienteLaudoMedicoDT_CADASTRO: TDateField;
    QryPacienteLaudoMedicoHR_CADASTRO: TTimeField;
    QryPacienteLaudoMedicoID_DOUTOR: TIntegerField;
    QryPacienteLaudoMedicoID_AGENDA: TIntegerField;
    QryPacienteLaudoMedicoDS_ACUIDADEOD_COMCORRECAO: TStringField;
    QryPacienteLaudoMedicoDS_ACUIDADEOE_COMCORRECAO: TStringField;
    QryPacienteLaudoMedicoDS_ACUIDADEOD_SEMCORRECAO: TStringField;
    QryPacienteLaudoMedicoDS_ACUIDADEOE_SEMCORRECAO: TStringField;
    QryPacienteLaudoMedicoDS_TONOMETRIAOD: TStringField;
    QryPacienteLaudoMedicoDS_TONOMETRIAOE: TStringField;
    QryPacienteLaudoMedicoDS_FUNDOSCOPIAOD: TStringField;
    QryPacienteLaudoMedicoDS_FUNDOSCOPIAOE: TStringField;
    QryPacienteLaudoMedicoBO_APTO: TStringField;
    CdsPacienteLaudoMedicoID_PACIENTE_LAUDOMEDICO: TIntegerField;
    CdsPacienteLaudoMedicoID_PACIENTE: TIntegerField;
    CdsPacienteLaudoMedicoDT_CADASTRO: TDateField;
    CdsPacienteLaudoMedicoHR_CADASTRO: TTimeField;
    CdsPacienteLaudoMedicoID_DOUTOR: TIntegerField;
    CdsPacienteLaudoMedicoID_AGENDA: TIntegerField;
    CdsPacienteLaudoMedicoDS_ACUIDADEOD_COMCORRECAO: TStringField;
    CdsPacienteLaudoMedicoDS_ACUIDADEOE_COMCORRECAO: TStringField;
    CdsPacienteLaudoMedicoDS_ACUIDADEOD_SEMCORRECAO: TStringField;
    CdsPacienteLaudoMedicoDS_ACUIDADEOE_SEMCORRECAO: TStringField;
    CdsPacienteLaudoMedicoDS_TONOMETRIAOD: TStringField;
    CdsPacienteLaudoMedicoDS_TONOMETRIAOE: TStringField;
    CdsPacienteLaudoMedicoDS_FUNDOSCOPIAOD: TStringField;
    CdsPacienteLaudoMedicoDS_FUNDOSCOPIAOE: TStringField;
    CdsPacienteLaudoMedicoBO_APTO: TStringField;
    CdsPacientePrescricaoLente: TClientDataSet;
    DspPacientePrescricaoLente: TDataSetProvider;
    QryPacientePrescricaoLente: TSQLQuery;
    QryPacientePrescricaoLenteID_PACIENTE_PRESCRICAOLENTE: TIntegerField;
    QryPacientePrescricaoLenteID_PACIENTE: TIntegerField;
    QryPacientePrescricaoLenteDT_CADASTRO: TDateField;
    QryPacientePrescricaoLenteID_DOUTOR: TIntegerField;
    QryPacientePrescricaoLenteDS_LONGE_OD_ESF: TStringField;
    QryPacientePrescricaoLenteDS_LONGE_OE_ESF: TStringField;
    QryPacientePrescricaoLenteDS_LONGE_OD_CIL: TStringField;
    QryPacientePrescricaoLenteDS_LONGE_OE_CIL: TStringField;
    QryPacientePrescricaoLenteDS_LONGE_OD_EIXO: TStringField;
    QryPacientePrescricaoLenteDS_LONGE_OE_EIXO: TStringField;
    QryPacientePrescricaoLenteDS_LONGE_OD_DP: TStringField;
    QryPacientePrescricaoLenteDS_LONGE_OE_DP: TStringField;
    QryPacientePrescricaoLenteDS_PERTO_OD_ESF: TStringField;
    QryPacientePrescricaoLenteDS_PERTO_OE_ESF: TStringField;
    QryPacientePrescricaoLenteDS_PERTO_OD_CIL: TStringField;
    QryPacientePrescricaoLenteDS_PERTO_OE_CIL: TStringField;
    QryPacientePrescricaoLenteDS_PERTO_OD_EIXO: TStringField;
    QryPacientePrescricaoLenteDS_PERTO_OE_EIXO: TStringField;
    QryPacientePrescricaoLenteDS_PERTO_OD_DP: TStringField;
    QryPacientePrescricaoLenteDS_PERTO_OE_DP: TStringField;
    QryPacientePrescricaoLenteDS_ADICAO: TStringField;
    QryPacientePrescricaoLenteID_AGENDA: TIntegerField;
    CdsPacientePrescricaoLenteID_PACIENTE_PRESCRICAOLENTE: TIntegerField;
    CdsPacientePrescricaoLenteID_PACIENTE: TIntegerField;
    CdsPacientePrescricaoLenteDT_CADASTRO: TDateField;
    CdsPacientePrescricaoLenteID_DOUTOR: TIntegerField;
    CdsPacientePrescricaoLenteDS_LONGE_OD_ESF: TStringField;
    CdsPacientePrescricaoLenteDS_LONGE_OE_ESF: TStringField;
    CdsPacientePrescricaoLenteDS_LONGE_OD_CIL: TStringField;
    CdsPacientePrescricaoLenteDS_LONGE_OE_CIL: TStringField;
    CdsPacientePrescricaoLenteDS_LONGE_OD_EIXO: TStringField;
    CdsPacientePrescricaoLenteDS_LONGE_OE_EIXO: TStringField;
    CdsPacientePrescricaoLenteDS_LONGE_OD_DP: TStringField;
    CdsPacientePrescricaoLenteDS_LONGE_OE_DP: TStringField;
    CdsPacientePrescricaoLenteDS_PERTO_OD_ESF: TStringField;
    CdsPacientePrescricaoLenteDS_PERTO_OE_ESF: TStringField;
    CdsPacientePrescricaoLenteDS_PERTO_OD_CIL: TStringField;
    CdsPacientePrescricaoLenteDS_PERTO_OE_CIL: TStringField;
    CdsPacientePrescricaoLenteDS_PERTO_OD_EIXO: TStringField;
    CdsPacientePrescricaoLenteDS_PERTO_OE_EIXO: TStringField;
    CdsPacientePrescricaoLenteDS_PERTO_OD_DP: TStringField;
    CdsPacientePrescricaoLenteDS_PERTO_OE_DP: TStringField;
    CdsPacientePrescricaoLenteDS_ADICAO: TStringField;
    CdsPacientePrescricaoLenteID_AGENDA: TIntegerField;
    CdsAgenda: TClientDataSet;
    DspAgenda: TDataSetProvider;
    QryAgenda: TSQLQuery;
    QryAgendaID_AGENDA: TIntegerField;
    QryAgendaID_DOUTOR: TIntegerField;
    QryAgendaID_PACIENTE: TIntegerField;
    QryAgendaID_CONVENIO: TIntegerField;
    QryAgendaMN_INTERVALO: TIntegerField;
    QryAgendaDT_AGENDA: TDateField;
    QryAgendaHR_AGENDA: TTimeField;
    QryAgendaHR_CHEGADA: TTimeField;
    QryAgendaHR_MANHAINICIAL: TTimeField;
    QryAgendaHR_MANHAFINAL: TTimeField;
    QryAgendaHR_TARDEINICIAL: TTimeField;
    QryAgendaHR_TARDEFINAL: TTimeField;
    QryAgendaTP_STATUS: TStringField;
    QryAgendaTP_MOTIVO: TStringField;
    QryAgendaDS_OBSERVACAO: TStringField;
    QryAgendaBO_URGENTE: TStringField;
    QryAgendaBO_ENCAIXE: TStringField;
    CdsAgendaID_AGENDA: TIntegerField;
    CdsAgendaID_DOUTOR: TIntegerField;
    CdsAgendaID_PACIENTE: TIntegerField;
    CdsAgendaID_CONVENIO: TIntegerField;
    CdsAgendaMN_INTERVALO: TIntegerField;
    CdsAgendaDT_AGENDA: TDateField;
    CdsAgendaHR_AGENDA: TTimeField;
    CdsAgendaHR_CHEGADA: TTimeField;
    CdsAgendaHR_MANHAINICIAL: TTimeField;
    CdsAgendaHR_MANHAFINAL: TTimeField;
    CdsAgendaHR_TARDEINICIAL: TTimeField;
    CdsAgendaHR_TARDEFINAL: TTimeField;
    CdsAgendaTP_STATUS: TStringField;
    CdsAgendaTP_MOTIVO: TStringField;
    CdsAgendaDS_OBSERVACAO: TStringField;
    CdsAgendaBO_URGENTE: TStringField;
    CdsAgendaBO_ENCAIXE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmOLD: TDmOLD;

implementation

{$R *.dfm}

end.