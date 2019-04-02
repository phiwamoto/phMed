unit DmRotinaU;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient, TConnect,
  DmConexaoU;

type
  TDmRotinaF = class(TDataModule)
    LocalConnection: TLocalConnection;
    DspVirtualAgenda: TDataSetProvider;
    QryVirtualAgenda: TSQLQuery;
    QryVirtualAgendaIDVIRTUALAGENDA: TIntegerField;
    QryVirtualAgendaIDAGENDA: TIntegerField;
    QryVirtualAgendaIDPACIENTE: TIntegerField;
    QryVirtualAgendaIDDOUTOR: TIntegerField;
    QryVirtualAgendaIDCONVENIO: TIntegerField;
    QryVirtualAgendaDATAAGENDA: TDateField;
    QryVirtualAgendaHORAAGENDA: TTimeField;
    QryVirtualAgendaSTATUS: TStringField;
    QryVirtualAgendaSTATUSIMAGEM: TStringField;
    QryVirtualAgendaMOTIVO: TStringField;
    QryVirtualAgendaDOUTORNOME: TStringField;
    QryVirtualAgendaDOUTOREMAIL: TStringField;
    QryVirtualAgendaPACIENTENOME: TStringField;
    QryVirtualAgendaPACIENTETELEFONE01: TStringField;
    QryVirtualAgendaPACIENTETELEFONE02: TStringField;
    QryVirtualAgendaPACIENTERG: TStringField;
    QryVirtualAgendaPACIENTECPF: TStringField;
    QryVirtualAgendaPACIENTEIDADE: TIntegerField;
    QryVirtualAgendaDESCRICAOCONVENIO: TStringField;
    DataSetProvider1: TDataSetProvider;
    SQLQuery1: TSQLQuery;
    DspConsultaAgenda: TDataSetProvider;
    QryConsultaAgenda: TSQLQuery;
    DspAgenda: TDataSetProvider;
    QryAgenda: TSQLQuery;
    QryAgendaIDAGENDA: TIntegerField;
    QryAgendaIDDOUTOR: TIntegerField;
    QryAgendaIDPACIENTE: TIntegerField;
    QryAgendaIDCONVENIO: TIntegerField;
    QryAgendaINTERVALO: TIntegerField;
    QryAgendaIDENCAIXE: TSmallintField;
    QryAgendaIDURGENTE: TSmallintField;
    QryAgendaDATAINCLUSAO: TDateField;
    QryAgendaDATAAGENDA: TDateField;
    QryAgendaHORAAGENDA: TTimeField;
    QryAgendaHORACHEGADA: TTimeField;
    QryAgendaHORAMANHAINICIAL: TTimeField;
    QryAgendaHORAMANHAFINAL: TTimeField;
    QryAgendaHORATARDEINICIAL: TTimeField;
    QryAgendaHORATARDEFINAL: TTimeField;
    QryAgendaSTATUS: TStringField;
    QryAgendaMOTIVO: TStringField;
    QryAgendaOBSERVACAO: TStringField;
    QryAgendaDOUTORNOME: TStringField;
    QryAgendaDOUTORCRM: TStringField;
    QryAgendaDOUTORCPF: TStringField;
    QryAgendaDOUTORTELEFONE: TStringField;
    QryAgendaDOUTORCELULAR: TStringField;
    QryAgendaPACIENTENOME: TStringField;
    QryAgendaPACIENTERG: TStringField;
    QryAgendaPACIENTECPF: TStringField;
    QryAgendaPACIENTETELEFONE01: TStringField;
    QryAgendaPACIENTETELEFONE02: TStringField;
    QryAgendaPACIENTEEMAIL: TStringField;
    QryAgendaPACIENTEIDADE: TIntegerField;
    QryAgendaPACIENTECIDADEUF: TStringField;
    DspEvolucaoClinica: TDataSetProvider;
    QryEvolucaoClinica: TSQLQuery;
    DspAtestadoMedico: TDataSetProvider;
    QryAtestadoMedico: TSQLQuery;
    QryAtestadoMedicoATESTADO_QTDEDIA: TIntegerField;
    QryAtestadoMedicoATESTADO_HORARIO: TTimeField;
    QryAtestadoMedicoATESTADO_DESCRICAOINICIAL: TStringField;
    QryAtestadoMedicoATESTADO_DESCRICAO: TStringField;
    QryAtestadoMedicoPACIENTE_CODIGO: TIntegerField;
    QryAtestadoMedicoPACIENTE_NOME: TStringField;
    QryAtestadoMedicoDOUTOR_CODIGO: TIntegerField;
    QryAtestadoMedicoDOUTOR_NOME: TStringField;
    QryAtestadoMedicoDOUTOR_CRM: TStringField;
    DspPrescricaoOculos: TDataSetProvider;
    QryPrescricaoOculos: TSQLQuery;
    DspReceituario: TDataSetProvider;
    QryReceituario: TSQLQuery;
    DspLaudoOftalmo: TDataSetProvider;
    QryLaudoOftalmo: TSQLQuery;
    QryEvolucaoClinicaIDPACIENTEEVOLUCAO: TIntegerField;
    QryEvolucaoClinicaIDPACIENTE: TIntegerField;
    QryEvolucaoClinicaIDDOUTOR: TIntegerField;
    QryEvolucaoClinicaIDAGENDA: TIntegerField;
    QryEvolucaoClinicaIDRASCUNHO: TSmallintField;
    QryEvolucaoClinicaDATAINCLUSAO: TDateField;
    QryEvolucaoClinicaHORAINCLUSAO: TTimeField;
    QryEvolucaoClinicaEVOLUCAOCLINICA: TStringField;
    QryEvolucaoClinicaPACIENTENOME: TStringField;
    QryEvolucaoClinicaPACIENTERG: TStringField;
    QryEvolucaoClinicaPACIENTECPF: TStringField;
    QryEvolucaoClinicaPACIENTETELEFONE01: TStringField;
    QryEvolucaoClinicaPACIENTETELEFONE02: TStringField;
    QryEvolucaoClinicaPACIENTEDATANASCIMENTO: TDateField;
    QryEvolucaoClinicaPACIENTEIDADE: TIntegerField;
    QryEvolucaoClinicaPACIENTEEMAIL: TStringField;
    QryEvolucaoClinicaPACIENTECIDADEUF: TStringField;
    QryEvolucaoClinicaDOUTORNOME: TStringField;
    QryEvolucaoClinicaDOUTORCRM: TStringField;
    QryEvolucaoClinicaDOUTORCPF: TStringField;
    QryEvolucaoClinicaDOUTORTELEFONE: TStringField;
    QryEvolucaoClinicaDOUTORCELULAR: TStringField;
    DspSolicitacaoExame: TDataSetProvider;
    QrySolicitacaoExame: TSQLQuery;
    DataSetProvider2: TDataSetProvider;
    SQLQuery2: TSQLQuery;
    QryReceituarioPACIENTENOME: TStringField;
    QryReceituarioPACIENTERG: TStringField;
    QryReceituarioPACIENTECPF: TStringField;
    QryReceituarioPACIENTETELEFONE01: TStringField;
    QryReceituarioPACIENTETELEFONE02: TStringField;
    QryReceituarioPACIENTEDATANASCIMENTO: TDateField;
    QryReceituarioPACIENTEIDADE: TIntegerField;
    QryReceituarioPACIENTEEMAIL: TStringField;
    QryReceituarioPACIENTECIDADEUF: TStringField;
    QryReceituarioDOUTORNOME: TStringField;
    QryReceituarioDOUTORCRM: TStringField;
    QryReceituarioDOUTORCPF: TStringField;
    QryReceituarioDOUTORTELEFONE: TStringField;
    QryReceituarioDOUTORCELULAR: TStringField;
    QryReceituarioIDPACIENTERECEITUARIO: TIntegerField;
    QryReceituarioIDPACIENTE: TIntegerField;
    QryReceituarioIDDOUTOR: TIntegerField;
    QryReceituarioIDAGENDA: TIntegerField;
    QryReceituarioDATAINCLUSAO: TDateField;
    QryReceituarioHORAINCLUSAO: TTimeField;
    DspMedicamento: TDataSetProvider;
    QryMedicamento: TSQLQuery;
    QryMedicamentoIDMEDICAMENTO: TIntegerField;
    QryMedicamentoIDMEDICAMENTOQTDE: TIntegerField;
    QryMedicamentoIDMEDICAMENTOUSO: TIntegerField;
    QryMedicamentoIDSITUACAOREGISTRO: TSmallintField;
    QryMedicamentoDATAINCLUSAO: TDateField;
    QryMedicamentoDESCRICAO: TStringField;
    QryMedicamentoPOSOLOGIA: TStringField;
    QryMedicamentoMEDICAMENTOUSO: TStringField;
    QryMedicamentoMEDICAMENTOQTDE: TStringField;
    QryMedicamentoSITUACAOREGISTRO: TStringField;
    DspExame: TDataSetProvider;
    QryExame: TSQLQuery;
    QrySolicitacaoExameIDPACIENTEEXAME: TIntegerField;
    QrySolicitacaoExameIDPACIENTE: TIntegerField;
    QrySolicitacaoExameIDDOUTOR: TIntegerField;
    QrySolicitacaoExameIDAGENDA: TIntegerField;
    QrySolicitacaoExameDATAINCLUSAO: TDateField;
    QrySolicitacaoExameHORAINCLUSAO: TTimeField;
    QrySolicitacaoExamePACIENTENOME: TStringField;
    QrySolicitacaoExamePACIENTERG: TStringField;
    QrySolicitacaoExamePACIENTECPF: TStringField;
    QrySolicitacaoExamePACIENTETELEFONE01: TStringField;
    QrySolicitacaoExamePACIENTETELEFONE02: TStringField;
    QrySolicitacaoExamePACIENTEDATANASCIMENTO: TDateField;
    QrySolicitacaoExamePACIENTEIDADE: TIntegerField;
    QrySolicitacaoExamePACIENTEEMAIL: TStringField;
    QrySolicitacaoExamePACIENTECIDADEUF: TStringField;
    QrySolicitacaoExameDOUTORNOME: TStringField;
    QrySolicitacaoExameDOUTORCRM: TStringField;
    QrySolicitacaoExameDOUTORCPF: TStringField;
    QrySolicitacaoExameDOUTORTELEFONE: TStringField;
    QrySolicitacaoExameDOUTORCELULAR: TStringField;
    DspSolicitacaoExamePedido: TDataSetProvider;
    QrySolicitacaoExamePedido: TSQLQuery;
    QrySolicitacaoExamePedidoIDPACIENTEEXAMESOLICITADO: TIntegerField;
    QrySolicitacaoExamePedidoIDPACIENTEEXAME: TIntegerField;
    QrySolicitacaoExamePedidoIDPACIENTE: TIntegerField;
    QrySolicitacaoExamePedidoIDEXAME: TIntegerField;
    QrySolicitacaoExamePedidoEXAMEDESCRICAO: TStringField;
    DspReceituarioPedido: TDataSetProvider;
    QryReceituarioPedido: TSQLQuery;
    QryReceituarioPedidoIDPACIENTERECEITUARIOUSO: TIntegerField;
    QryReceituarioPedidoIDPACIENTERECEITUARIO: TIntegerField;
    QryReceituarioPedidoIDPACIENTE: TIntegerField;
    QryReceituarioPedidoIDMEDICAMENTO: TIntegerField;
    QryReceituarioPedidoMEDICAMENTOUSO: TStringField;
    QryReceituarioPedidoMEDICAMENTOQTDE: TStringField;
    QryReceituarioPedidoPOSOLOGIA: TStringField;
    QryReceituarioPedidoMEDICAMENTO: TStringField;
    DspPaciente: TDataSetProvider;
    QryPaciente: TSQLQuery;
    QryPacienteIDPACIENTE: TIntegerField;
    QryPacienteIDCIDADE: TIntegerField;
    QryPacienteIDSITUACAOREGISTRO: TSmallintField;
    QryPacienteDATAINCLUSAO: TDateField;
    QryPacienteDATANASCIMENTO: TDateField;
    QryPacienteNUMERO: TIntegerField;
    QryPacienteESTADOCIVIL: TStringField;
    QryPacienteSEXO: TStringField;
    QryPacienteOBSERVACAO: TStringField;
    QryPacienteNOME: TStringField;
    QryPacienteENDERECO: TStringField;
    QryPacienteBAIRRO: TStringField;
    QryPacienteEMAIL: TStringField;
    QryPacienteCOMPLEMENTO: TStringField;
    QryPacienteRG: TStringField;
    QryPacienteCPF: TStringField;
    QryPacienteTELEFONE1: TStringField;
    QryPacienteTELEFONE2: TStringField;
    QryPacienteCEP: TStringField;
    QryPacienteIDADE: TIntegerField;
    QryPacienteCIDADEUF: TStringField;
    QryPacienteSITUACAOREGISTRO: TStringField;
    DsQryPaciente: TDataSource;
    QryPacienteConvenio: TSQLQuery;
    QryPacienteConvenioIDPACIENTECONVENIO: TIntegerField;
    QryPacienteConvenioIDPACIENTE: TIntegerField;
    QryPacienteConvenioIDCONVENIO: TIntegerField;
    QryPacienteConvenioIDPRINCIPAL: TSmallintField;
    QryPacienteConvenioIDSITUACAOREGISTRO: TSmallintField;
    QryPacienteConvenioCONVENIO: TStringField;
    QryPacienteConvenioPRINCIPAL: TStringField;
    QryPacienteConvenioSITUACAOREGISTRO: TStringField;
    QryPacienteEvolucaoClinica: TSQLQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    SmallintField1: TSmallintField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    DateField2: TDateField;
    IntegerField5: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    QryVirtualAgendaINTERVALO: TIntegerField;
    QryPrescricaoOculosIDPACIENTEPRESCRICAOLENTE: TIntegerField;
    QryPrescricaoOculosIDPACIENTE: TIntegerField;
    QryPrescricaoOculosIDDOUTOR: TIntegerField;
    QryPrescricaoOculosIDAGENDA: TIntegerField;
    QryPrescricaoOculosDATAINCLUSAO: TDateField;
    QryPrescricaoOculosHORAINCLUSAO: TTimeField;
    QryPrescricaoOculosLONGEODESF: TStringField;
    QryPrescricaoOculosLONGEOEESF: TStringField;
    QryPrescricaoOculosLONGEODCIL: TStringField;
    QryPrescricaoOculosLONGEOECIL: TStringField;
    QryPrescricaoOculosLONGEODEIXO: TStringField;
    QryPrescricaoOculosLONGEOEEIXO: TStringField;
    QryPrescricaoOculosLONGEODDP: TStringField;
    QryPrescricaoOculosLONGEOEDP: TStringField;
    QryPrescricaoOculosPERTOODESF: TStringField;
    QryPrescricaoOculosPERTOOEESF: TStringField;
    QryPrescricaoOculosPERTOODCIL: TStringField;
    QryPrescricaoOculosPERTOOECIL: TStringField;
    QryPrescricaoOculosPERTOODEIXO: TStringField;
    QryPrescricaoOculosPERTOOEEIXO: TStringField;
    QryPrescricaoOculosPERTOODDP: TStringField;
    QryPrescricaoOculosPERTOOEDP: TStringField;
    QryPrescricaoOculosADICAO: TStringField;
    QryPrescricaoOculosDOUTORNOME: TStringField;
    QryPrescricaoOculosDOUTORCRM: TStringField;
    QryPrescricaoOculosDOUTORRG: TStringField;
    QryPrescricaoOculosDOUTORCPF: TStringField;
    QryPrescricaoOculosDOUTORTELEFONE: TStringField;
    QryPrescricaoOculosDOUTORCELULAR: TStringField;
    QryPrescricaoOculosPACIENTENOME: TStringField;
    QryPrescricaoOculosPACIENTERG: TStringField;
    QryPrescricaoOculosPACIENTECPF: TStringField;
    QryPrescricaoOculosPACIENTETELEFONE01: TStringField;
    QryPrescricaoOculosPACIENTETELEFONE02: TStringField;
    QryPrescricaoOculosPACIENTEDATANASCIMENTO: TDateField;
    QryPrescricaoOculosPACIENTEIDADE: TIntegerField;
    QryPrescricaoOculosPACIENTEEMAIL: TStringField;
    QryLaudoOftalmoIDPACIENTELAUDOOFTALMO: TIntegerField;
    QryLaudoOftalmoIDPACIENTE: TIntegerField;
    QryLaudoOftalmoIDDOUTOR: TIntegerField;
    QryLaudoOftalmoIDAGENDA: TIntegerField;
    QryLaudoOftalmoIDAPTO: TSmallintField;
    QryLaudoOftalmoDATAINCLUSAO: TDateField;
    QryLaudoOftalmoHORAINCLUSAO: TTimeField;
    QryLaudoOftalmoACUIDADEODCOMCORRECAO: TStringField;
    QryLaudoOftalmoACUIDADEOECOMCORRECAO: TStringField;
    QryLaudoOftalmoACUIDADEODSEMCORRECAO: TStringField;
    QryLaudoOftalmoACUIDADEOESEMCORRECAO: TStringField;
    QryLaudoOftalmoTONOMETRIAOD: TStringField;
    QryLaudoOftalmoTONOMETRIAOE: TStringField;
    QryLaudoOftalmoFUNDOSCOPIAOD: TStringField;
    QryLaudoOftalmoFUNDOSCOPIAOE: TStringField;
    QryLaudoOftalmoDOUTORNOME: TStringField;
    QryLaudoOftalmoDOUTORCRM: TStringField;
    QryLaudoOftalmoDOUTORRG: TStringField;
    QryLaudoOftalmoDOUTORCPF: TStringField;
    QryLaudoOftalmoDOUTORTELEFONE: TStringField;
    QryLaudoOftalmoDOUTORCELULAR: TStringField;
    QryLaudoOftalmoPACIENTENOME: TStringField;
    QryLaudoOftalmoPACIENTERG: TStringField;
    QryLaudoOftalmoPACIENTECPF: TStringField;
    QryLaudoOftalmoPACIENTETELEFONE01: TStringField;
    QryLaudoOftalmoPACIENTETELEFONE02: TStringField;
    QryLaudoOftalmoPACIENTEDATANASCIMENTO: TDateField;
    QryLaudoOftalmoPACIENTEIDADE: TIntegerField;
    QryLaudoOftalmoPACIENTEEMAIL: TStringField;
    QryPacienteConvenioDATAINCLUSAO: TDateField;
    QryPacienteReceituario: TSQLQuery;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    DateField3: TDateField;
    TimeField2: TTimeField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    DateField4: TDateField;
    IntegerField10: TIntegerField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    DsQryPacienteReceituario: TDataSource;
    QryPacienteReceituarioPedido: TSQLQuery;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    QryPacienteExame: TSQLQuery;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    DateField5: TDateField;
    TimeField3: TTimeField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    DateField6: TDateField;
    IntegerField19: TIntegerField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    DsQryPacienteExame: TDataSource;
    QryPacienteExamePedido: TSQLQuery;
    QryPacienteExamePedidoIDPACIENTEEXAMESOLICITADO: TIntegerField;
    QryPacienteExamePedidoIDPACIENTEEXAME: TIntegerField;
    QryPacienteExamePedidoIDPACIENTE: TIntegerField;
    QryPacienteExamePedidoIDEXAME: TIntegerField;
    QryPacienteExamePedidoEXAMEDESCRICAO: TStringField;
    DspAgendaFoto: TDataSetProvider;
    QryAgendaFoto: TSQLQuery;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    DateField7: TDateField;
    TimeField4: TTimeField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    StringField46: TStringField;
    DateField8: TDateField;
    IntegerField24: TIntegerField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    StringField50: TStringField;
    StringField51: TStringField;
    StringField52: TStringField;
    StringField53: TStringField;
    QryAgendaFotoIDPACIENTEFOTO: TIntegerField;
    QryAgendaFotoOSERVACAO: TStringField;
    DspAgendaFotoItem: TDataSetProvider;
    QryAgendaFotoItem: TSQLQuery;
    QryAgendaFotoItemIDPACIENTEFOTOITEM: TIntegerField;
    QryAgendaFotoItemIDPACIENTEFOTO: TIntegerField;
    QryAgendaFotoItemIDPACIENTE: TIntegerField;
    QryAgendaFotoItemFOTODESCRICAO: TStringField;
    QryAgendaFotoItemFOTOBINARIO: TBlobField;
    QryAgendaFotoItemOBSERVACAO: TStringField;
    QryAgendaFotoItemPACIENTENOME: TStringField;
    QryAgendaFotoItemDATAAGENDA: TDateField;
    QryAgendaFotoItemDIRETORIOORIGEM: TStringField;
    QryPacienteFoto: TSQLQuery;
    QryPacienteFotoIDPACIENTEFOTO: TIntegerField;
    QryPacienteFotoIDPACIENTE: TIntegerField;
    QryPacienteFotoIDDOUTOR: TIntegerField;
    QryPacienteFotoIDAGENDA: TIntegerField;
    QryPacienteFotoDATAINCLUSAO: TDateField;
    QryPacienteFotoHORAINCLUSAO: TTimeField;
    QryPacienteFotoPACIENTENOME: TStringField;
    QryPacienteFotoPACIENTERG: TStringField;
    QryPacienteFotoPACIENTECPF: TStringField;
    QryPacienteFotoPACIENTETELEFONE01: TStringField;
    QryPacienteFotoPACIENTETELEFONE02: TStringField;
    QryPacienteFotoPACIENTEDATANASCIMENTO: TDateField;
    QryPacienteFotoPACIENTEIDADE: TIntegerField;
    QryPacienteFotoPACIENTEEMAIL: TStringField;
    QryPacienteFotoPACIENTECIDADEUF: TStringField;
    QryPacienteFotoDOUTORNOME: TStringField;
    QryPacienteFotoDOUTORCRM: TStringField;
    QryPacienteFotoDOUTORCPF: TStringField;
    QryPacienteFotoDOUTORTELEFONE: TStringField;
    QryPacienteFotoDOUTORCELULAR: TStringField;
    QryPacienteFotoOSERVACAO: TStringField;
    DsQryPacienteFoto: TDataSource;
    QryPacienteFotoItem: TSQLQuery;
    QryPacienteFotoItemIDPACIENTEFOTOITEM: TIntegerField;
    QryPacienteFotoItemIDPACIENTEFOTO: TIntegerField;
    QryPacienteFotoItemIDPACIENTE: TIntegerField;
    QryPacienteFotoItemFOTODESCRICAO: TStringField;
    QryPacienteFotoItemFOTOBINARIO: TBlobField;
    QryPacienteFotoItemOBSERVACAO: TStringField;
    QryPacienteFotoItemPACIENTENOME: TStringField;
    QryPacienteFotoItemDIRETORIOORIGEM: TStringField;
    QryPacienteFotoItemDATAAGENDA: TDateField;
    QryAgendaCONVENIO: TStringField;
    QryExameIDEXAME: TIntegerField;
    QryExameIDSITUACAOREGISTRO: TSmallintField;
    QryExameDATAINCLUSAO: TDateField;
    QryExameDESCRICAO: TStringField;
    QryExameSITUACAOREGISTRO: TStringField;
    procedure DspAgendaFotoItemBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);

  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  DmRotinaF: TDmRotinaF;

implementation

uses
  Windows, LibRotinasSistemaU;

{$R *.dfm}


procedure TDmRotinaF.DspAgendaFotoItemBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  Applied := False;

  // Se esta inserindo -
  if (UpdateKind = ukInsert) and (UpperCase(SourceDS.Name) = 'QRYAGENDAFOTOITEM') then
  begin
    //if ((vDoutor_CaminhoOrigem <> '') and (vDoutor_Foto <> '')) then
    begin
      if not(DirectoryExists(TDiretorio.Sistema +'PACIENTE_FOTOS\'+
                       DeltaDS.FieldByName('PACIENTENOME').AsString +'\'+
                       FormatDateTime('yyyymmdd', DeltaDS.FieldByName('DATAAGENDA').AsDateTime) +'\'+
                       'CHAVE'+DeltaDS.FieldByName('IDPACIENTEFOTO').AsString+'\')) then
        forceDirectories(TDiretorio.Sistema +'PACIENTE_FOTOS\'+
                       DeltaDS.FieldByName('PACIENTENOME').AsString +'\'+
                       FormatDateTime('yyyymmdd', DeltaDS.FieldByName('DATAAGENDA').AsDateTime) +'\'+
                       'CHAVE'+DeltaDS.FieldByName('IDPACIENTEFOTO').AsString+'\');
      

      CopyFile( PChar( DeltaDS.FieldByName('DIRETORIOORIGEM').AsString )
               ,PChar( TDiretorio.Sistema +'PACIENTE_FOTOS\'+
                       DeltaDS.FieldByName('PACIENTENOME').AsString +'\'+
                       FormatDateTime('yyyymmdd', DeltaDS.FieldByName('DATAAGENDA').AsDateTime) +'\'+
                       'CHAVE'+DeltaDS.FieldByName('IDPACIENTEFOTO').AsString +'\'+
                       DeltaDS.FieldByName('FOTODESCRICAO').AsString
                     )
               ,False);
      //TRotinaSistema.ComprimirImagem(80, TDiretorio.SistemaImagemDoutor + vDoutor_Foto, TDiretorio.SistemaImagemDoutor + vDoutor_Foto);
    end;
  end;
//  if (UpdateKind = ukModify) and (UpperCase(SourceDS.Name) = 'QRYAGENDAFOTOITEM') then
//  begin
//    if vDoutor_HaFoto then
//    begin
//      if ((vDoutor_CaminhoOrigem <> '') and (vDoutor_Foto <> '')) then
//      begin
//        DeleteFile( PChar(TDiretorio.SistemaImagemDoutor + vDoutor_Foto) );
//
//        CopyFile( PChar( vDoutor_CaminhoOrigem )
//                 ,PChar( TDiretorio.SistemaImagemDoutor + vDoutor_Foto )
//                 ,False);
//        TRotinaSistema.ComprimirImagem(80, TDiretorio.SistemaImagemDoutor + vDoutor_Foto, TDiretorio.SistemaImagemDoutor + vDoutor_Foto);
//      end;
//    end
//    else
//    begin
//      if vDoutor_Foto <> '' then
//        DeleteFile( PChar(TDiretorio.SistemaImagemDoutor + vDoutor_Foto) );
//    end;
//  end;
//  if (UpdateKind = ukDelete) and (UpperCase(SourceDS.Name) = 'QRYAGENDAFOTOITEM') then
//  begin
//    DeleteFile( PChar(TDiretorio.SistemaImagemDoutor + vDoutor_Foto) );
//  end;
end;

end.









