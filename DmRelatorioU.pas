unit DmRelatorioU;

interface

uses
  SysUtils, Classes, DB, DBClient, FMTBcd, SqlExpr, Provider, frxClass, frxDBSet,
  TConnect;

type
  TDmRelatorioF = class(TDataModule)
    LocalConnection: TLocalConnection;
    DsCabecalhoRelatorio: TDataSource;
    CdsCabecalhoRelatorio: TClientDataSet;
    DspCabecalhoRelatorio: TDataSetProvider;
    QryCabecalhoRelatorio: TSQLQuery;
    frxCdsClinica: TfrxDBDataset;
    QryCabecalhoRelatorioIDCLINICA: TIntegerField;
    QryCabecalhoRelatorioIDCIDADE: TIntegerField;
    QryCabecalhoRelatorioDATAINCLUSAO: TDateField;
    QryCabecalhoRelatorioNUMERO: TIntegerField;
    QryCabecalhoRelatorioCLINICA: TStringField;
    QryCabecalhoRelatorioENDERECO: TStringField;
    QryCabecalhoRelatorioBAIRRO: TStringField;
    QryCabecalhoRelatorioSITECLINICA: TStringField;
    QryCabecalhoRelatorioEMAILCLINICA: TStringField;
    QryCabecalhoRelatorioTELEFONE1: TStringField;
    QryCabecalhoRelatorioTELEFONE2: TStringField;
    QryCabecalhoRelatorioCEP: TStringField;
    QryCabecalhoRelatorioFOTOMENUPRINCIPAL: TBlobField;
    QryCabecalhoRelatorioFOTORELATORIO: TBlobField;
    QryCabecalhoRelatorioCIDADEUF: TStringField;
    QryCabecalhoRelatorioSMTPPORTA: TIntegerField;
    QryCabecalhoRelatorioSMTPSERVIDOR: TStringField;
    QryCabecalhoRelatorioEMAILCLINICASENHA: TStringField;
    CdsCabecalhoRelatorioIDCLINICA: TIntegerField;
    CdsCabecalhoRelatorioIDCIDADE: TIntegerField;
    CdsCabecalhoRelatorioDATAINCLUSAO: TDateField;
    CdsCabecalhoRelatorioNUMERO: TIntegerField;
    CdsCabecalhoRelatorioCLINICA: TStringField;
    CdsCabecalhoRelatorioENDERECO: TStringField;
    CdsCabecalhoRelatorioBAIRRO: TStringField;
    CdsCabecalhoRelatorioSITECLINICA: TStringField;
    CdsCabecalhoRelatorioEMAILCLINICA: TStringField;
    CdsCabecalhoRelatorioTELEFONE1: TStringField;
    CdsCabecalhoRelatorioTELEFONE2: TStringField;
    CdsCabecalhoRelatorioCEP: TStringField;
    CdsCabecalhoRelatorioFOTOMENUPRINCIPAL: TBlobField;
    CdsCabecalhoRelatorioFOTORELATORIO: TBlobField;
    CdsCabecalhoRelatorioCIDADEUF: TStringField;
    CdsCabecalhoRelatorioSMTPPORTA: TIntegerField;
    CdsCabecalhoRelatorioSMTPSERVIDOR: TStringField;
    CdsCabecalhoRelatorioEMAILCLINICASENHA: TStringField;
    DspGenerico: TDataSetProvider;
    QryGenerico: TSQLQuery;
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  DmRelatorioF: TDmRelatorioF;

implementation

uses DmCadastroU, DmConexaoU;

{$R *.dfm}

end.






