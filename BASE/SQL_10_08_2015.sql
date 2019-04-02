/******************************************************************************/
/*            Generated by IBExpert 2008.02.19 10/08/2015 22:13:01            */
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES NONE;

CREATE DATABASE 'D:\Projetos\Delphi\phMedNew\BASE.FDB'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 4096
DEFAULT CHARACTER SET NONE;



/******************************************************************************/
/*                                   Tables                                   */
/******************************************************************************/



CREATE TABLE AGENDA (
    IDAGENDA          INTEGER NOT NULL,
    IDDOUTOR          INTEGER NOT NULL,
    IDPACIENTE        INTEGER NOT NULL,
    IDCONVENIO        INTEGER,
    INTERVALO         INTEGER,
    IDENCAIXE         SMALLINT NOT NULL,
    IDURGENTE         SMALLINT NOT NULL,
    DATAINCLUSAO      DATE NOT NULL,
    DATAAGENDA        DATE NOT NULL,
    HORAAGENDA        TIME NOT NULL,
    HORACHEGADA       TIME,
    HORAMANHAINICIAL  TIME,
    HORAMANHAFINAL    TIME,
    HORATARDEINICIAL  TIME,
    HORATARDEFINAL    TIME,
    STATUS            VARCHAR(80) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    MOTIVO            VARCHAR(80) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    OBSERVACAO        VARCHAR(26000) CHARACTER SET WIN1252 COLLATE WIN_PTBR
);

CREATE TABLE BANCO (
    IDBANCO             INTEGER NOT NULL,
    IDSITUACAOREGISTRO  SMALLINT NOT NULL,
    DATAINCLUSAO        DATE NOT NULL,
    BANCO               VARCHAR(100) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR
);

CREATE TABLE CIDADE (
    IDCIDADE            INTEGER NOT NULL,
    IDSITUACAOREGISTRO  SMALLINT NOT NULL,
    DATAINCLUSAO        DATE NOT NULL,
    CIDADE              VARCHAR(50) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    UF                  VARCHAR(2) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR
);

CREATE TABLE CLINICA (
    IDCLINICA          INTEGER NOT NULL,
    IDCIDADE           INTEGER,
    DATAINCLUSAO       DATE NOT NULL,
    NUMERO             INTEGER,
    SMTPPORTA          INTEGER,
    CLINICA            VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    ENDERECO           VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    BAIRRO             VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    SITECLINICA        VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    EMAILCLINICA       VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    SMTPSERVIDOR       VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    EMAILCLINICASENHA  VARCHAR(20) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    TELEFONE1          VARCHAR(20) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    TELEFONE2          VARCHAR(20) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    CEP                VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    FOTOMENUPRINCIPAL  BLOB SUB_TYPE 0 SEGMENT SIZE 80,
    FOTORELATORIO      BLOB SUB_TYPE 0 SEGMENT SIZE 80
);

CREATE TABLE CONVENIO (
    IDCONVENIO          INTEGER NOT NULL,
    IDSITUACAOREGISTRO  SMALLINT NOT NULL,
    DATAINCLUSAO        DATE NOT NULL,
    CONVENIO            VARCHAR(100) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR
);

CREATE TABLE DOUTOR (
    IDDOUTOR            INTEGER NOT NULL,
    IDCIDADE            INTEGER,
    IDUSUARIO           INTEGER,
    IDSITUACAOREGISTRO  SMALLINT NOT NULL,
    DATAINCLUSAO        DATE NOT NULL,
    NUMERO              INTEGER,
    NOME                VARCHAR(100) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    ENDERECO            VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    BAIRRO              VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    EMAIL               VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    CPF                 VARCHAR(20) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    RG                  VARCHAR(20) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    TELEFONE            VARCHAR(20) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    CELULAR             VARCHAR(20) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    CEP                 VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    CRM                 VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    INTERVALO           INTEGER NOT NULL,
    HORAINICIALMANHA    VARCHAR(10) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    HORAFINALMANHA      VARCHAR(10) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    HORAINICIALTARDE    VARCHAR(10) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    HORAFINALTARDE      VARCHAR(10) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    FOTODOUTOR          BLOB SUB_TYPE 0 SEGMENT SIZE 80
);

CREATE TABLE EXAME (
    IDEXAME             INTEGER NOT NULL,
    IDSITUACAOREGISTRO  SMALLINT NOT NULL,
    DATAINCLUSAO        DATE NOT NULL,
    DESCRICAO           VARCHAR(100) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR
);

CREATE TABLE LOGREPLICACAO (
    IDLOGREPLICACAO  BIGINT NOT NULL,
    IDUSARIO         INTEGER NOT NULL,
    DATAACAO         DATE NOT NULL,
    HORAACAO         TIME NOT NULL,
    ACAO             VARCHAR(100) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    TELA             VARCHAR(200) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    CLASSETELA       VARCHAR(200) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    DESCRICAO        VARCHAR(500) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR
);

CREATE TABLE MEDICAMENTO (
    IDMEDICAMENTO       INTEGER NOT NULL,
    IDMEDICAMENTOQTDE   INTEGER NOT NULL,
    IDMEDICAMENTOUSO    INTEGER NOT NULL,
    IDSITUACAOREGISTRO  SMALLINT NOT NULL,
    DATAINCLUSAO        DATE NOT NULL,
    DESCRICAO           VARCHAR(400) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    POSOLOGIA           VARCHAR(400) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR
);

CREATE TABLE MEDICAMENTOQTDE (
    IDMEDICAMENTOQTDE   INTEGER NOT NULL,
    IDSITUACAOREGISTRO  SMALLINT NOT NULL,
    DATAINCLUSAO        DATE NOT NULL,
    DESCRICAO           VARCHAR(100) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR
);

CREATE TABLE MEDICAMENTOUSO (
    IDMEDICAMENTOUSO    INTEGER NOT NULL,
    IDSITUACAOREGISTRO  SMALLINT NOT NULL,
    DATAINCLUSAO        DATE NOT NULL,
    DESCRICAO           VARCHAR(100) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR
);

CREATE TABLE PACIENTE (
    IDPACIENTE          INTEGER NOT NULL,
    IDCIDADE            INTEGER,
    IDSITUACAOREGISTRO  SMALLINT NOT NULL,
    DATAINCLUSAO        DATE,
    DATANASCIMENTO      DATE,
    NUMERO              INTEGER,
    ESTADOCIVIL         VARCHAR(50) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    SEXO                VARCHAR(16) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    OBSERVACAO          VARCHAR(26000) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    NOME                VARCHAR(100) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    ENDERECO            VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    BAIRRO              VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    EMAIL               VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    COMPLEMENTO         VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    RG                  VARCHAR(20) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    CPF                 VARCHAR(20) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    TELEFONE1           VARCHAR(20) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    TELEFONE2           VARCHAR(20) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    CEP                 VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR
);

CREATE TABLE PACIENTECONSULTA (
    IDPACIENTECONSULTA  INTEGER NOT NULL,
    IDPACIENTE          INTEGER NOT NULL,
    IDDOUTOR            INTEGER NOT NULL,
    IDAGENDA            INTEGER NOT NULL,
    DATAINCLUSAO        DATE NOT NULL,
    HORAINCLUSAO        TIME NOT NULL
);

CREATE TABLE PACIENTECONVENIO (
    IDPACIENTECONVENIO  INTEGER NOT NULL,
    IDPACIENTE          INTEGER NOT NULL,
    IDCONVENIO          INTEGER NOT NULL,
    IDPRINCIPAL         SMALLINT NOT NULL,
    IDSITUACAOREGISTRO  SMALLINT NOT NULL,
    DATAINCLUSAO        DATE NOT NULL
);

CREATE TABLE PACIENTEEVOLUCAO (
    IDPACIENTEEVOLUCAO  INTEGER NOT NULL,
    IDPACIENTE          INTEGER NOT NULL,
    IDDOUTOR            INTEGER NOT NULL,
    IDAGENDA            INTEGER NOT NULL,
    IDRASCUNHO          SMALLINT NOT NULL,
    DATAINCLUSAO        DATE NOT NULL,
    HORAINCLUSAO        TIME NOT NULL,
    EVOLUCAOCLINICA     VARCHAR(26000) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR
);

CREATE TABLE PACIENTEEXAME (
    IDPACIENTEEXAME  INTEGER NOT NULL,
    IDPACIENTE       INTEGER NOT NULL,
    IDDOUTOR         INTEGER NOT NULL,
    IDAGENDA         INTEGER NOT NULL,
    DATAINCLUSAO     DATE NOT NULL,
    HORAINCLUSAO     TIME NOT NULL
);

CREATE TABLE PACIENTEEXAMESOLICITADO (
    IDPACIENTEEXAMESOLICITADO  INTEGER NOT NULL,
    IDPACIENTEEXAME            INTEGER NOT NULL,
    IDPACIENTE                 INTEGER NOT NULL,
    IDEXAME                    INTEGER NOT NULL
);

CREATE TABLE PACIENTEFOTO (
    IDPACIENTEFOTO  INTEGER NOT NULL,
    IDPACIENTE      INTEGER NOT NULL,
    IDDOUTOR        INTEGER NOT NULL,
    IDAGENDA        INTEGER NOT NULL,
    DATAINCLUSAO    DATE NOT NULL,
    HORAINCLUSAO    TIME NOT NULL,
    OSERVACAO       VARCHAR(25000) CHARACTER SET WIN1252 COLLATE WIN_PTBR
);

CREATE TABLE PACIENTEFOTOITEM (
    IDPACIENTEFOTOITEM  INTEGER NOT NULL,
    IDPACIENTEFOTO      INTEGER NOT NULL,
    IDPACIENTE          INTEGER NOT NULL,
    FOTODESCRICAO       VARCHAR(100) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    FOTOBINARIO         BLOB SUB_TYPE 0 SEGMENT SIZE 80 NOT NULL,
    OBSERVACAO          VARCHAR(26000) CHARACTER SET WIN1252 COLLATE WIN_PTBR
);

CREATE TABLE PACIENTELAUDOOFTALMO (
    IDPACIENTELAUDOOFTALMO  INTEGER NOT NULL,
    IDPACIENTE              INTEGER NOT NULL,
    IDDOUTOR                INTEGER NOT NULL,
    IDAGENDA                INTEGER NOT NULL,
    IDAPTO                  SMALLINT NOT NULL,
    DATAINCLUSAO            DATE NOT NULL,
    HORAINCLUSAO            TIME NOT NULL,
    ACUIDADEODCOMCORRECAO   VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    ACUIDADEOECOMCORRECAO   VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    ACUIDADEODSEMCORRECAO   VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    ACUIDADEOESEMCORRECAO   VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    TONOMETRIAOD            VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    TONOMETRIAOE            VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    FUNDOSCOPIAOD           VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    FUNDOSCOPIAOE           VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR
);

CREATE TABLE PACIENTEPRESCRICAOLENTE (
    IDPACIENTEPRESCRICAOLENTE  INTEGER NOT NULL,
    IDPACIENTE                 INTEGER NOT NULL,
    IDDOUTOR                   INTEGER NOT NULL,
    IDAGENDA                   INTEGER,
    DATAINCLUSAO               DATE NOT NULL,
    HORAINCLUSAO               TIME NOT NULL,
    LONGEODESF                 VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    LONGEOEESF                 VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    LONGEODCIL                 VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    LONGEOECIL                 VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    LONGEODEIXO                VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    LONGEOEEIXO                VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    LONGEODDP                  VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    LONGEOEDP                  VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    PERTOODESF                 VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    PERTOOEESF                 VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    PERTOODCIL                 VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    PERTOOECIL                 VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    PERTOODEIXO                VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    PERTOOEEIXO                VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    PERTOODDP                  VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    PERTOOEDP                  VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    ADICAO                     VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR
);

CREATE TABLE PACIENTERECEITUARIO (
    IDPACIENTERECEITUARIO  INTEGER NOT NULL,
    IDPACIENTE             INTEGER NOT NULL,
    IDDOUTOR               INTEGER NOT NULL,
    IDAGENDA               INTEGER NOT NULL,
    DATAINCLUSAO           DATE NOT NULL,
    HORAINCLUSAO           TIME NOT NULL
);

CREATE TABLE PACIENTERECEITUARIOUSO (
    IDPACIENTERECEITUARIOUSO  INTEGER NOT NULL,
    IDPACIENTERECEITUARIO     INTEGER NOT NULL,
    IDPACIENTE                INTEGER NOT NULL,
    IDMEDICAMENTO             INTEGER NOT NULL,
    POSOLOGIA                 VARCHAR(200) CHARACTER SET WIN1252 COLLATE WIN_PTBR
);

CREATE TABLE SECRETARIA (
    IDSECRETARIA        INTEGER NOT NULL,
    IDCIDADE            INTEGER,
    IDUSUARIO           INTEGER,
    IDSITUACAOREGISTRO  SMALLINT NOT NULL,
    DATAINCLUSAO        DATE NOT NULL,
    NUMERO              INTEGER,
    NOME                VARCHAR(100) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    ENDERECO            VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    BAIRRO              VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    EMAIL               VARCHAR(100) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    CPF                 VARCHAR(20) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    RG                  VARCHAR(20) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    TELEFONE            VARCHAR(20) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    CELULAR             VARCHAR(20) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    CEP                 VARCHAR(10) CHARACTER SET WIN1252 COLLATE WIN_PTBR,
    FOTOSECRETARIA      BLOB SUB_TYPE 0 SEGMENT SIZE 80
);

CREATE TABLE SITUACAOREGISTRO (
    IDSITUACAOREGISTRO  SMALLINT NOT NULL,
    DESCRICAO           VARCHAR(50) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR
);

CREATE TABLE USUARIO (
    IDUSUARIO           INTEGER NOT NULL,
    IDPERFIL            INTEGER NOT NULL,
    IDSITUACAOREGISTRO  SMALLINT NOT NULL,
    DATAINCLUSAO        DATE NOT NULL,
    LOGIN               VARCHAR(20) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR,
    SENHA               VARCHAR(20) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR
);

CREATE TABLE VALORNAOSIM (
    IDVALORNAOSIM  SMALLINT NOT NULL,
    DESCRICAO      VARCHAR(50) CHARACTER SET WIN1252 NOT NULL COLLATE WIN_PTBR
);

CREATE TABLE VIRTUALAGENDA (
    IDVIRTUALAGENDA  INTEGER NOT NULL,
    IDAGENDA         INTEGER,
    IDPACIENTE       INTEGER,
    IDDOUTOR         INTEGER,
    IDCONVENIO       INTEGER,
    DATAAGENDA       DATE,
    HORAAGENDA       TIME,
    STATUS           VARCHAR(50),
    STATUSIMAGEM     VARCHAR(50),
    MOTIVO           VARCHAR(50)
);



/******************************************************************************/
/*                                Primary Keys                                */
/******************************************************************************/

ALTER TABLE AGENDA ADD CONSTRAINT PK_AGENDA PRIMARY KEY (IDAGENDA);
ALTER TABLE BANCO ADD CONSTRAINT PK_BANCO PRIMARY KEY (IDBANCO);
ALTER TABLE CIDADE ADD CONSTRAINT PK_CIDADE PRIMARY KEY (IDCIDADE);
ALTER TABLE CLINICA ADD CONSTRAINT PK_CLINICA PRIMARY KEY (IDCLINICA);
ALTER TABLE CONVENIO ADD CONSTRAINT PK_CONVENIO PRIMARY KEY (IDCONVENIO);
ALTER TABLE DOUTOR ADD CONSTRAINT PK_DOUTOR PRIMARY KEY (IDDOUTOR);
ALTER TABLE EXAME ADD CONSTRAINT PK_EXAME PRIMARY KEY (IDEXAME);
ALTER TABLE LOGREPLICACAO ADD CONSTRAINT PK_LOGREPLICACAO PRIMARY KEY (IDLOGREPLICACAO);
ALTER TABLE MEDICAMENTO ADD CONSTRAINT PK_MEDICAMENTO PRIMARY KEY (IDMEDICAMENTO);
ALTER TABLE MEDICAMENTOQTDE ADD CONSTRAINT PK_MEDICAMENTOQTDE PRIMARY KEY (IDMEDICAMENTOQTDE);
ALTER TABLE MEDICAMENTOUSO ADD CONSTRAINT PK_MEDICAMENTOUSO PRIMARY KEY (IDMEDICAMENTOUSO);
ALTER TABLE PACIENTE ADD CONSTRAINT PK_PACIENTE PRIMARY KEY (IDPACIENTE);
ALTER TABLE PACIENTECONSULTA ADD CONSTRAINT PK_PACIENTECONSULTA PRIMARY KEY (IDPACIENTECONSULTA, IDPACIENTE);
ALTER TABLE PACIENTECONVENIO ADD CONSTRAINT PK_PACIENTECONVENIO PRIMARY KEY (IDPACIENTECONVENIO, IDPACIENTE);
ALTER TABLE PACIENTEEVOLUCAO ADD CONSTRAINT PK_PACIENTEEVOLUCAO PRIMARY KEY (IDPACIENTEEVOLUCAO, IDPACIENTE);
ALTER TABLE PACIENTEEXAME ADD CONSTRAINT PK_PACIENTEEXAME PRIMARY KEY (IDPACIENTEEXAME, IDPACIENTE);
ALTER TABLE PACIENTEEXAMESOLICITADO ADD CONSTRAINT PK_PACIENTEEXAMESOLICITADO PRIMARY KEY (IDPACIENTEEXAMESOLICITADO, IDPACIENTEEXAME, IDPACIENTE);
ALTER TABLE PACIENTEFOTO ADD CONSTRAINT PK_PACIENTEFOTO PRIMARY KEY (IDPACIENTEFOTO, IDPACIENTE);
ALTER TABLE PACIENTEFOTOITEM ADD CONSTRAINT PK_PACIENTEFOTOITEM PRIMARY KEY (IDPACIENTEFOTOITEM, IDPACIENTEFOTO, IDPACIENTE);
ALTER TABLE PACIENTELAUDOOFTALMO ADD CONSTRAINT PK_PACIENTELAUDOOFTALMO PRIMARY KEY (IDPACIENTELAUDOOFTALMO, IDPACIENTE);
ALTER TABLE PACIENTEPRESCRICAOLENTE ADD CONSTRAINT PK_PACIENTEPRESCRICAOLENTE PRIMARY KEY (IDPACIENTEPRESCRICAOLENTE, IDPACIENTE);
ALTER TABLE PACIENTERECEITUARIO ADD CONSTRAINT PK_PACIENTERECEITUARIO PRIMARY KEY (IDPACIENTERECEITUARIO, IDPACIENTE);
ALTER TABLE PACIENTERECEITUARIOUSO ADD CONSTRAINT PK_PACIENTERECEITUARIOUSO PRIMARY KEY (IDPACIENTERECEITUARIOUSO, IDPACIENTERECEITUARIO, IDPACIENTE);
ALTER TABLE SECRETARIA ADD CONSTRAINT PK_SECRETARIA PRIMARY KEY (IDSECRETARIA);
ALTER TABLE SITUACAOREGISTRO ADD CONSTRAINT PK_SITUACAOREGISTRO PRIMARY KEY (IDSITUACAOREGISTRO);
ALTER TABLE USUARIO ADD CONSTRAINT PK_USUARIO PRIMARY KEY (IDUSUARIO);
ALTER TABLE VALORNAOSIM ADD CONSTRAINT PK_VALORNAOSIM PRIMARY KEY (IDVALORNAOSIM);
ALTER TABLE VIRTUALAGENDA ADD CONSTRAINT PK_VIRTUALAGENDA PRIMARY KEY (IDVIRTUALAGENDA);


/******************************************************************************/
/*                                Foreign Keys                                */
/******************************************************************************/

ALTER TABLE AGENDA ADD CONSTRAINT FK_AGENDA_CONVENIO FOREIGN KEY (IDCONVENIO) REFERENCES CONVENIO (IDCONVENIO);
ALTER TABLE AGENDA ADD CONSTRAINT FK_AGENDA_DOUTOR FOREIGN KEY (IDDOUTOR) REFERENCES DOUTOR (IDDOUTOR);
ALTER TABLE AGENDA ADD CONSTRAINT FK_AGENDA_PACIENTE FOREIGN KEY (IDPACIENTE) REFERENCES PACIENTE (IDPACIENTE);
ALTER TABLE AGENDA ADD CONSTRAINT FK_AGENDA_VALORNAOSIM_IDENCAIXE FOREIGN KEY (IDENCAIXE) REFERENCES VALORNAOSIM (IDVALORNAOSIM)
  USING INDEX FK_AGENDA_VALORNAOSIM;
ALTER TABLE AGENDA ADD CONSTRAINT FK_AGENDA_VALORNAOSIM_IDURGENTE FOREIGN KEY (IDURGENTE) REFERENCES VALORNAOSIM (IDVALORNAOSIM);
ALTER TABLE BANCO ADD CONSTRAINT FK_BANCO_SITUACAOREGISTRO FOREIGN KEY (IDSITUACAOREGISTRO) REFERENCES SITUACAOREGISTRO (IDSITUACAOREGISTRO);
ALTER TABLE CIDADE ADD CONSTRAINT FK_CIDADE_SITUACAOREGISTRO FOREIGN KEY (IDSITUACAOREGISTRO) REFERENCES SITUACAOREGISTRO (IDSITUACAOREGISTRO);
ALTER TABLE CLINICA ADD CONSTRAINT FK_CLINICA_CIDADE FOREIGN KEY (IDCIDADE) REFERENCES CIDADE (IDCIDADE);
ALTER TABLE CONVENIO ADD CONSTRAINT FK_CONVENIO_SITUACAOREGISTRO FOREIGN KEY (IDSITUACAOREGISTRO) REFERENCES SITUACAOREGISTRO (IDSITUACAOREGISTRO);
ALTER TABLE DOUTOR ADD CONSTRAINT FK_DOUTOR_CIDADE FOREIGN KEY (IDCIDADE) REFERENCES CIDADE (IDCIDADE);
ALTER TABLE DOUTOR ADD CONSTRAINT FK_DOUTOR_SITUACAOREGISTRO FOREIGN KEY (IDSITUACAOREGISTRO) REFERENCES SITUACAOREGISTRO (IDSITUACAOREGISTRO);
ALTER TABLE DOUTOR ADD CONSTRAINT FK_DOUTOR_USUARIO FOREIGN KEY (IDUSUARIO) REFERENCES USUARIO (IDUSUARIO);
ALTER TABLE EXAME ADD CONSTRAINT FK_EXAME_SITUACAOREGISTRO FOREIGN KEY (IDSITUACAOREGISTRO) REFERENCES SITUACAOREGISTRO (IDSITUACAOREGISTRO);
ALTER TABLE MEDICAMENTO ADD CONSTRAINT FK_MEDICAMENTO_MEDICAMENTOQTDE FOREIGN KEY (IDMEDICAMENTOQTDE) REFERENCES MEDICAMENTOQTDE (IDMEDICAMENTOQTDE);
ALTER TABLE MEDICAMENTO ADD CONSTRAINT FK_MEDICAMENTO_MEDICAMENTOUSO FOREIGN KEY (IDMEDICAMENTOUSO) REFERENCES MEDICAMENTOUSO (IDMEDICAMENTOUSO);
ALTER TABLE MEDICAMENTO ADD CONSTRAINT FK_MEDICAMENTO_SITUACAOREGISTRO FOREIGN KEY (IDSITUACAOREGISTRO) REFERENCES SITUACAOREGISTRO (IDSITUACAOREGISTRO);
ALTER TABLE MEDICAMENTOQTDE ADD CONSTRAINT FK_MEDICAMENTOQTDE_SITUACAOREGI FOREIGN KEY (IDSITUACAOREGISTRO) REFERENCES SITUACAOREGISTRO (IDSITUACAOREGISTRO);
ALTER TABLE MEDICAMENTOUSO ADD CONSTRAINT FK_MEDICAMENTOUSO_SITUACAOREGIS FOREIGN KEY (IDSITUACAOREGISTRO) REFERENCES SITUACAOREGISTRO (IDSITUACAOREGISTRO);
ALTER TABLE PACIENTE ADD CONSTRAINT FK_PACIENTE_CIDADE FOREIGN KEY (IDCIDADE) REFERENCES CIDADE (IDCIDADE);
ALTER TABLE PACIENTE ADD CONSTRAINT FK_PACIENTE_SITUACAOREGISTRO FOREIGN KEY (IDSITUACAOREGISTRO) REFERENCES SITUACAOREGISTRO (IDSITUACAOREGISTRO);
ALTER TABLE PACIENTECONSULTA ADD CONSTRAINT FK_PACIENTECONSULTA_AGENDA FOREIGN KEY (IDAGENDA) REFERENCES AGENDA (IDAGENDA);
ALTER TABLE PACIENTECONSULTA ADD CONSTRAINT FK_PACIENTECONSULTA_DOUTOR FOREIGN KEY (IDDOUTOR) REFERENCES DOUTOR (IDDOUTOR);
ALTER TABLE PACIENTECONVENIO ADD CONSTRAINT FK_PACIENTECONVENIO_CONVENIO FOREIGN KEY (IDCONVENIO) REFERENCES CONVENIO (IDCONVENIO);
ALTER TABLE PACIENTECONVENIO ADD CONSTRAINT FK_PACIENTECONVENIO_SITUACAOREG FOREIGN KEY (IDSITUACAOREGISTRO) REFERENCES SITUACAOREGISTRO (IDSITUACAOREGISTRO);
ALTER TABLE PACIENTECONVENIO ADD CONSTRAINT FK_PACIENTECONVENIO_VALORNAOSIM FOREIGN KEY (IDPRINCIPAL) REFERENCES VALORNAOSIM (IDVALORNAOSIM);
ALTER TABLE PACIENTEEVOLUCAO ADD CONSTRAINT FK_PACIENTEEVOLUCAO_AGENDA FOREIGN KEY (IDAGENDA) REFERENCES AGENDA (IDAGENDA);
ALTER TABLE PACIENTEEVOLUCAO ADD CONSTRAINT FK_PACIENTEEVOLUCAO_DOUTOR FOREIGN KEY (IDDOUTOR) REFERENCES DOUTOR (IDDOUTOR);
ALTER TABLE PACIENTEEVOLUCAO ADD CONSTRAINT FK_PACIENTEEVOLUCAO_VALORNAOSIM FOREIGN KEY (IDRASCUNHO) REFERENCES VALORNAOSIM (IDVALORNAOSIM);
ALTER TABLE PACIENTEEXAME ADD CONSTRAINT FK_PACIENTEEXAME_AGENDA FOREIGN KEY (IDAGENDA) REFERENCES AGENDA (IDAGENDA);
ALTER TABLE PACIENTEEXAME ADD CONSTRAINT FK_PACIENTEEXAME_DOUTOR FOREIGN KEY (IDDOUTOR) REFERENCES DOUTOR (IDDOUTOR);
ALTER TABLE PACIENTEEXAMESOLICITADO ADD CONSTRAINT FK_PACIENTEEXAMESOLICITADO_EXAM FOREIGN KEY (IDEXAME) REFERENCES EXAME (IDEXAME);
ALTER TABLE PACIENTEFOTO ADD CONSTRAINT FK_PACIENTEFOTO_AGENDA FOREIGN KEY (IDAGENDA) REFERENCES AGENDA (IDAGENDA);
ALTER TABLE PACIENTEFOTO ADD CONSTRAINT FK_PACIENTEFOTO_DOUTOR FOREIGN KEY (IDDOUTOR) REFERENCES DOUTOR (IDDOUTOR);
ALTER TABLE PACIENTELAUDOOFTALMO ADD CONSTRAINT FK_PACIENTELAUDOOFTALMO_AGENDA FOREIGN KEY (IDAGENDA) REFERENCES AGENDA (IDAGENDA);
ALTER TABLE PACIENTELAUDOOFTALMO ADD CONSTRAINT FK_PACIENTELAUDOOFTALMO_APTO FOREIGN KEY (IDAPTO) REFERENCES VALORNAOSIM (IDVALORNAOSIM);
ALTER TABLE PACIENTELAUDOOFTALMO ADD CONSTRAINT FK_PACIENTELAUDOOFTALMO_DOUTOR FOREIGN KEY (IDDOUTOR) REFERENCES DOUTOR (IDDOUTOR);
ALTER TABLE PACIENTEPRESCRICAOLENTE ADD CONSTRAINT FK_PACIENTEPRESCRICAOLENTE_AGEN FOREIGN KEY (IDAGENDA) REFERENCES AGENDA (IDAGENDA);
ALTER TABLE PACIENTEPRESCRICAOLENTE ADD CONSTRAINT FK_PACIENTEPRESCRICAOLENTE_DOUT FOREIGN KEY (IDDOUTOR) REFERENCES DOUTOR (IDDOUTOR);
ALTER TABLE PACIENTERECEITUARIO ADD CONSTRAINT FK_PACIENTERECEITUARIO_AGENDA FOREIGN KEY (IDAGENDA) REFERENCES AGENDA (IDAGENDA);
ALTER TABLE PACIENTERECEITUARIO ADD CONSTRAINT FK_PACIENTERECEITUARIO_DOUTOR FOREIGN KEY (IDDOUTOR) REFERENCES DOUTOR (IDDOUTOR);
ALTER TABLE PACIENTERECEITUARIOUSO ADD CONSTRAINT FK_PACIENTERECEITUARIOUSO_MEDIC FOREIGN KEY (IDMEDICAMENTO) REFERENCES MEDICAMENTO (IDMEDICAMENTO);
ALTER TABLE USUARIO ADD CONSTRAINT FK_USUARIO_SITUACAOREGISTRO FOREIGN KEY (IDSITUACAOREGISTRO) REFERENCES SITUACAOREGISTRO (IDSITUACAOREGISTRO);


/******************************************************************************/
/*                                   Roles                                    */
/******************************************************************************/

CREATE ROLE RDB$ADMIN;
