unit DmCadastroU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, FMTBcd, DB, SqlExpr, Provider, DBClient, TConnect,
  DBXInterbase, DBXFirebird, frxClass, frxDBSet, jpeg;

type
  TDmCadastroF = class(TDataModule)
    LocalConnection: TLocalConnection;
    DspPaciente: TDataSetProvider;
    QryPaciente: TSQLQuery;
    DspCidade: TDataSetProvider;
    QryCidade: TSQLQuery;
    QryCidadeIDCIDADE: TIntegerField;
    QryCidadeIDSITUACAOREGISTRO: TSmallintField;
    QryCidadeDATAINCLUSAO: TDateField;
    QryCidadeCIDADE: TStringField;
    QryCidadeUF: TStringField;
    QryCidadeSITUACAOREGISTRO: TStringField;
    DspUsuario: TDataSetProvider;
    QryUsuario: TSQLQuery;
    DspAgenda: TDataSetProvider;
    QryAgenda: TSQLQuery;
    QryAgendaIDAGENDACOMPROMISSO: TIntegerField;
    QryAgendaIDPESSOA: TLargeintField;
    QryAgendaIDSITUACAOAGENDACOMPROMISSO: TSmallintField;
    QryAgendaDATAINCLUSAO: TDateField;
    QryAgendaDATACOMPROMISSO: TDateField;
    QryAgendaHORACOMPROMISSO: TTimeField;
    QryAgendaTELEFONE: TStringField;
    QryAgendaASSUNTO: TStringField;
    QryAgendaNOME: TStringField;
    QryAgendaDESCRICAO: TStringField;
    QryAgendaNOMEFANTASIA: TStringField;
    QryAgendaCPFCNPJ: TStringField;
    QryAgendaIDTIPOPESSOA: TSmallintField;
    QryAgendaTELEFONE01: TStringField;
    QryAgendaSITUACAOAGENDA: TStringField;
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
    QryPacienteCIDADEUF: TStringField;
    QryPacienteSITUACAOREGISTRO: TStringField;
    QryPacienteIDADE: TIntegerField;
    DspExame: TDataSetProvider;
    QryExame: TSQLQuery;
    DspMedicamento: TDataSetProvider;
    QryMedicamento: TSQLQuery;
    DspMedicamentoUso: TDataSetProvider;
    QryMedicamentoUso: TSQLQuery;
    DspMedicamentoQtde: TDataSetProvider;
    QryMedicamentoQtde: TSQLQuery;
    QryExameIDEXAME: TIntegerField;
    QryExameIDSITUACAOREGISTRO: TSmallintField;
    QryExameDATAINCLUSAO: TDateField;
    QryExameDESCRICAO: TStringField;
    QryExameSITUACAOREGISTRO: TStringField;
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
    QryMedicamentoUsoIDMEDICAMENTOUSO: TIntegerField;
    QryMedicamentoUsoIDSITUACAOREGISTRO: TSmallintField;
    QryMedicamentoUsoDATAINCLUSAO: TDateField;
    QryMedicamentoUsoDESCRICAO: TStringField;
    QryMedicamentoUsoSITUACAOREGISTRO: TStringField;
    QryMedicamentoQtdeIDMEDICAMENTOQTDE: TIntegerField;
    QryMedicamentoQtdeIDSITUACAOREGISTRO: TSmallintField;
    QryMedicamentoQtdeDATAINCLUSAO: TDateField;
    QryMedicamentoQtdeDESCRICAO: TStringField;
    QryMedicamentoQtdeSITUACAOREGISTRO: TStringField;
    DspConvenio: TDataSetProvider;
    QryConvenio: TSQLQuery;
    QryConvenioIDCONVENIO: TIntegerField;
    QryConvenioIDSITUACAOREGISTRO: TSmallintField;
    QryConvenioDATAINCLUSAO: TDateField;
    QryConvenioCONVENIO: TStringField;
    QryConvenioSITUACAOREGISTRO: TStringField;
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
    DspDoutor: TDataSetProvider;
    QryDoutor: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    SQLQuery1: TSQLQuery;
    QryDoutorIDDOUTOR: TIntegerField;
    QryDoutorIDCIDADE: TIntegerField;
    QryDoutorIDUSUARIO: TIntegerField;
    QryDoutorIDSITUACAOREGISTRO: TSmallintField;
    QryDoutorDATAINCLUSAO: TDateField;
    QryDoutorNUMERO: TIntegerField;
    QryDoutorNOME: TStringField;
    QryDoutorENDERECO: TStringField;
    QryDoutorBAIRRO: TStringField;
    QryDoutorEMAIL: TStringField;
    QryDoutorCPF: TStringField;
    QryDoutorRG: TStringField;
    QryDoutorTELEFONE: TStringField;
    QryDoutorCELULAR: TStringField;
    QryDoutorCEP: TStringField;
    QryDoutorCRM: TStringField;
    QryDoutorINTERVALO: TIntegerField;
    QryDoutorHORAINICIALMANHA: TStringField;
    QryDoutorHORAFINALMANHA: TStringField;
    QryDoutorHORAINICIALTARDE: TStringField;
    QryDoutorHORAFINALTARDE: TStringField;
    QryDoutorCIDADEUF: TStringField;
    QryDoutorUSUARIOLOGIN: TStringField;
    QryDoutorSITUACAOREGISTRO: TStringField;
    DspSecretaria: TDataSetProvider;
    QrySecretaria: TSQLQuery;
    QrySecretariaIDSECRETARIA: TIntegerField;
    QrySecretariaIDCIDADE: TIntegerField;
    QrySecretariaIDUSUARIO: TIntegerField;
    QrySecretariaIDSITUACAOREGISTRO: TSmallintField;
    QrySecretariaDATAINCLUSAO: TDateField;
    QrySecretariaNUMERO: TIntegerField;
    QrySecretariaNOME: TStringField;
    QrySecretariaENDERECO: TStringField;
    QrySecretariaBAIRRO: TStringField;
    QrySecretariaEMAIL: TStringField;
    QrySecretariaCPF: TStringField;
    QrySecretariaRG: TStringField;
    QrySecretariaTELEFONE: TStringField;
    QrySecretariaCELULAR: TStringField;
    QrySecretariaCEP: TStringField;
    QrySecretariaCIDADEUF: TStringField;
    QrySecretariaUSUARIOLOGIN: TStringField;
    QrySecretariaSITUACAOREGISTRO: TStringField;
    DspClinica: TDataSetProvider;
    QryClinica: TSQLQuery;
    QryClinicaIDCLINICA: TIntegerField;
    QryClinicaIDCIDADE: TIntegerField;
    QryClinicaDATAINCLUSAO: TDateField;
    QryClinicaNUMERO: TIntegerField;
    QryClinicaCLINICA: TStringField;
    QryClinicaENDERECO: TStringField;
    QryClinicaBAIRRO: TStringField;
    QryClinicaSITECLINICA: TStringField;
    QryClinicaEMAILCLINICA: TStringField;
    QryClinicaTELEFONE1: TStringField;
    QryClinicaTELEFONE2: TStringField;
    QryClinicaCEP: TStringField;
    QryClinicaFOTOMENUPRINCIPAL: TBlobField;
    QryClinicaFOTORELATORIO: TBlobField;
    QryClinicaCIDADEUF: TStringField;
    QryClinicaSMTPPORTA: TIntegerField;
    QryClinicaSMTPSERVIDOR: TStringField;
    QryClinicaEMAILCLINICASENHA: TStringField;
    QryDoutorFOTODOUTOR: TBlobField;
    QrySecretariaFOTOSECRETARIA: TBlobField;
    QryUsuarioIDUSUARIO: TIntegerField;
    QryUsuarioIDPERFIL: TIntegerField;
    QryUsuarioIDSITUACAOREGISTRO: TSmallintField;
    QryUsuarioDATAINCLUSAO: TDateField;
    QryUsuarioLOGIN: TStringField;
    QryUsuarioSENHA: TStringField;
    QryUsuarioSITUACAOREGISTRO: TStringField;
    QryPacienteConvenioDATAINCLUSAO: TDateField;
    procedure DspClinicaBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure DspSecretariaBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DspDoutorBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    vIdAuxiliar: Integer;

    // Variaveis para programacao da fotos - gravar, alterar, excluir
    vDoutor_CaminhoOrigem: String;
    vDoutor_Foto: String;
    vDoutor_HaFoto: Boolean;

    vSecretaria_CaminhoOrigem: String;
    vSecretaria_Foto: String;
    vSecretaria_HaFoto: Boolean;

    vClinica_CaminhoOrigem: String;
    vClinica_Foto: String;
    vClinica_HaFoto: Boolean;

    vClinica_CaminhoOrigemMenu: String;
    vClinica_FotoMenu: String;
    vClinica_HaFotoMenu: Boolean;
  end;

var
  DmCadastroF: TDmCadastroF;

implementation

uses DmConexaoU, LibRotinasSistemaU;

{$R *.dfm}

procedure TDmCadastroF.DspClinicaBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  Applied := False;

  // Se esta inserindo -
  if (UpdateKind = ukInsert) and (UpperCase(SourceDS.Name) = 'QRYCLINICA') then
  begin
    // Logo Relatorio
    if ((vClinica_CaminhoOrigem <> '') and (vClinica_Foto <> '')) then
    begin
      CopyFile( PChar( vClinica_CaminhoOrigem )
               ,PChar( TDiretorio.SistemaImagemClinica + vClinica_Foto )
               ,False);
    end;

    // Logo Menu Principal
    if ((vClinica_CaminhoOrigemMenu <> '') and (vClinica_FotoMenu <> '')) then
    begin
      CopyFile( PChar( vClinica_CaminhoOrigemMenu )
               ,PChar( TDiretorio.SistemaImagemClinica + vClinica_FotoMenu )
               ,False);
    end;


  end;
  if (UpdateKind = ukModify) and (UpperCase(SourceDS.Name) = 'QRYCLINICA') then
  begin
    // Logo Relatorio
    if vClinica_HaFoto then
    begin
      if ((vClinica_CaminhoOrigem <> '') and (vClinica_Foto <> '')) then
      begin
        DeleteFile( PChar(TDiretorio.SistemaImagemClinica + vClinica_Foto) );

        CopyFile( PChar( vClinica_CaminhoOrigem )
                 ,PChar( TDiretorio.SistemaImagemClinica + vClinica_Foto )
                 ,False);
      end;
    end
    else
    begin
      if vClinica_Foto <> '' then
        DeleteFile( PChar(TDiretorio.SistemaImagemClinica + vClinica_Foto) );
    end;

    // Logo Menu Principal
    if vClinica_HaFotoMenu then
    begin
      if ((vClinica_CaminhoOrigemMenu <> '') and (vClinica_FotoMenu <> '')) then
      begin
        DeleteFile( PChar(TDiretorio.SistemaImagemClinica + vClinica_FotoMenu) );

        CopyFile( PChar( vClinica_CaminhoOrigemMenu )
                 ,PChar( TDiretorio.SistemaImagemClinica + vClinica_FotoMenu )
                 ,False);
      end;
    end
    else
    begin
      if vClinica_FotoMenu <> '' then
        DeleteFile( PChar(TDiretorio.SistemaImagemClinica + vClinica_FotoMenu) );
    end;

  end;
  if (UpdateKind = ukDelete) and (UpperCase(SourceDS.Name) = 'QRYCLINICA') then
  begin
    // Logo Relatorio
    DeleteFile( PChar(TDiretorio.SistemaImagemClinica + vClinica_Foto) );

    // Logo Menu Principal
    DeleteFile( PChar(TDiretorio.SistemaImagemClinica + vClinica_FotoMenu) );
  end;
end;

procedure TDmCadastroF.DspDoutorBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  Applied := False;

  // Se esta inserindo -
  if (UpdateKind = ukInsert) and (UpperCase(SourceDS.Name) = 'QRYDOUTOR') then
  begin
    if ((vDoutor_CaminhoOrigem <> '') and (vDoutor_Foto <> '')) then
    begin
      CopyFile( PChar( vDoutor_CaminhoOrigem )
               ,PChar( TDiretorio.SistemaImagemDoutor + vDoutor_Foto )
               ,False);
      TRotinaSistema.ComprimirImagem(80, TDiretorio.SistemaImagemDoutor + vDoutor_Foto, TDiretorio.SistemaImagemDoutor + vDoutor_Foto);
    end;
  end;
  if (UpdateKind = ukModify) and (UpperCase(SourceDS.Name) = 'QRYDOUTOR') then
  begin
    if vDoutor_HaFoto then
    begin
      if ((vDoutor_CaminhoOrigem <> '') and (vDoutor_Foto <> '')) then
      begin
        DeleteFile( PChar(TDiretorio.SistemaImagemDoutor + vDoutor_Foto) );

        CopyFile( PChar( vDoutor_CaminhoOrigem )
                 ,PChar( TDiretorio.SistemaImagemDoutor + vDoutor_Foto )
                 ,False);
        TRotinaSistema.ComprimirImagem(80, TDiretorio.SistemaImagemDoutor + vDoutor_Foto, TDiretorio.SistemaImagemDoutor + vDoutor_Foto);
      end;
    end
    else
    begin
      if vDoutor_Foto <> '' then
        DeleteFile( PChar(TDiretorio.SistemaImagemDoutor + vDoutor_Foto) );
    end;
  end;
  if (UpdateKind = ukDelete) and (UpperCase(SourceDS.Name) = 'QRYDOUTOR') then
  begin
    DeleteFile( PChar(TDiretorio.SistemaImagemDoutor + vDoutor_Foto) );
  end;
end;

procedure TDmCadastroF.DspSecretariaBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  Applied := False;

  if (UpdateKind = ukInsert) and (UpperCase(SourceDS.Name) = 'QRYSECRETARIA') then
  begin
    if ((vSecretaria_CaminhoOrigem <> '') and (vSecretaria_Foto <> '')) then
    begin
      CopyFile( PChar( vSecretaria_CaminhoOrigem )
               ,PChar( TDiretorio.SistemaImagemSecretaria + vSecretaria_Foto )
               ,False);
      TRotinaSistema.ComprimirImagem(80, TDiretorio.SistemaImagemSecretaria + vSecretaria_Foto, TDiretorio.SistemaImagemSecretaria + vSecretaria_Foto);
    end;
  end;
  if (UpdateKind = ukModify) and (UpperCase(SourceDS.Name) = 'QRYSECRETARIA') then
  begin
    if vSecretaria_HaFoto then
    begin
      if ((vSecretaria_CaminhoOrigem <> '') and (vSecretaria_Foto <> '')) then
      begin
        DeleteFile( PChar(TDiretorio.SistemaImagemSecretaria + vSecretaria_Foto) );

        CopyFile( PChar( vSecretaria_CaminhoOrigem )
                 ,PChar( TDiretorio.SistemaImagemSecretaria + vSecretaria_Foto )
                 ,False);
        TRotinaSistema.ComprimirImagem(80, TDiretorio.SistemaImagemSecretaria + vSecretaria_Foto, TDiretorio.SistemaImagemSecretaria + vSecretaria_Foto);
      end;
    end
    else
    begin
      if vSecretaria_Foto <> '' then
        DeleteFile( PChar(TDiretorio.SistemaImagemSecretaria + vSecretaria_Foto) );
    end;
  end;
  if (UpdateKind = ukDelete) and (UpperCase(SourceDS.Name) = 'QRYSECRETARIA') then
  begin
    DeleteFile( PChar(TDiretorio.SistemaImagemSecretaria + vSecretaria_Foto) );
  end;
end;

end.









