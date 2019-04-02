unit OpeFichaPacienteU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaOperacaoU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  ActnList, ExtCtrls, ImgList, cxPC, StdCtrls, cxButtons, ComCtrls, cxContainer,
  cxEdit, cxCheckBox, cxDBEdit, cxDropDownEdit, cxButtonEdit, cxTextEdit,
  cxMaskEdit, cxCalendar, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox, DBClient, cxMemo, cxImage;

type
  TOpeFichaPacienteF = class(TXTelaOperacaoF)
    TsPrincipal: TcxTabSheet;
    TsConvenio: TcxTabSheet;
    TsEvolucaoClinica: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    GbPacienteEvolucaoClinica: TcxGroupBox;
    GridPacienteEvolucao: TcxGrid;
    GridPacienteEvolucaoDBTableView1: TcxGridDBTableView;
    GridPacienteEvolucaoLevel1: TcxGridLevel;
    PnlPacienteEvolucao: TPanel;
    LblEvolucaoClinica: TLabel;
    BtnSalvarEvolucao: TcxButton;
    BtnInlcuirEvolucao: TcxButton;
    BtnExcluirEvolucao: TcxButton;
    BtnCancelarEvolucao: TcxButton;
    BtnAlterarEvolucao: TcxButton;
    GbPacienteReceituario: TcxGroupBox;
    PnlPacienteReceituario: TPanel;
    EdNomePaciente: TcxTextEdit;
    EdCodigo: TcxButtonEdit;
    LblCodigo: TLabel;
    BtnConfirmar: TcxButton;
    DsPacienteConvenio: TDataSource;
    CdsPacienteConvenio: TClientDataSet;
    DsPaciente: TDataSource;
    CdsPaciente: TClientDataSet;
    CdsPacienteIDPACIENTE: TIntegerField;
    CdsPacienteIDCIDADE: TIntegerField;
    CdsPacienteIDSITUACAOREGISTRO: TSmallintField;
    CdsPacienteDATAINCLUSAO: TDateField;
    CdsPacienteDATANASCIMENTO: TDateField;
    CdsPacienteNUMERO: TIntegerField;
    CdsPacienteESTADOCIVIL: TStringField;
    CdsPacienteSEXO: TStringField;
    CdsPacienteOBSERVACAO: TStringField;
    CdsPacienteNOME: TStringField;
    CdsPacienteENDERECO: TStringField;
    CdsPacienteBAIRRO: TStringField;
    CdsPacienteEMAIL: TStringField;
    CdsPacienteCOMPLEMENTO: TStringField;
    CdsPacienteRG: TStringField;
    CdsPacienteCPF: TStringField;
    CdsPacienteTELEFONE1: TStringField;
    CdsPacienteTELEFONE2: TStringField;
    CdsPacienteCEP: TStringField;
    CdsPacienteIDADE: TIntegerField;
    CdsPacienteCIDADEUF: TStringField;
    CdsPacienteSITUACAOREGISTRO: TStringField;
    CdsPacienteQryPacienteConvenio: TDataSetField;
    LblDataInclusao: TLabel;
    LblDataNascimento: TLabel;
    LblNome: TLabel;
    LblCPF: TLabel;
    LblTelefone2: TLabel;
    LblTelefone1: TLabel;
    LblIdade: TLabel;
    Label33: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LblEstado: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    LblRG: TLabel;
    DbDataInclusao: TcxDBDateEdit;
    DbDataNascimento: TcxDBDateEdit;
    DbNome: TcxDBTextEdit;
    DbRG: TcxDBTextEdit;
    DbCPF: TcxDBTextEdit;
    DbTelefone2: TcxDBTextEdit;
    DbTelefone1: TcxDBTextEdit;
    DbIdade: TcxDBTextEdit;
    DbNomeCidade: TcxDBTextEdit;
    DbCodigoCidade: TcxDBButtonEdit;
    DbCEP: TcxDBTextEdit;
    DbEndereco: TcxDBTextEdit;
    DbEmail: TcxDBTextEdit;
    DbNumero: TcxDBTextEdit;
    DbBairro: TcxDBTextEdit;
    CbEstado: TcxDBComboBox;
    CbSexo: TcxDBComboBox;
    DbComplemento: TcxDBTextEdit;
    CbAtivo: TcxDBCheckBox;
    GbPacienteConvenio: TcxGroupBox;
    GridPacienteConvenio: TcxGrid;
    GridPacienteConvenioDBTableView1: TcxGridDBTableView;
    GridPacienteConvenioDBTableView1IDCONVENIO: TcxGridDBColumn;
    GridPacienteConvenioDBTableView1CONVENIO: TcxGridDBColumn;
    GridPacienteConvenioDBTableView1PRINCIPAL: TcxGridDBColumn;
    GridPacienteConvenioDBTableView1SITUACAOREGISTRO: TcxGridDBColumn;
    GridPacienteConvenioLevel1: TcxGridLevel;
    PnlPacienteConvenio: TPanel;
    LblConvenio: TLabel;
    BtnSalvarConvenio: TcxButton;
    BtnInlcuirConvenio: TcxButton;
    BtnExcluirConvenio: TcxButton;
    BtnCancelarConvenio: TcxButton;
    DbCodigoConvenio: TcxDBButtonEdit;
    DbDescricaoConvenio: TcxDBTextEdit;
    CbAtivoConvenio: TcxDBCheckBox;
    CbPrincipalConvenio: TcxDBCheckBox;
    BtnAlterarConvenio: TcxButton;
    AcaoConfirmar: TAction;
    DsPacienteEvolucaoClinica: TDataSource;
    CdsPacienteEvolucaoClinica: TClientDataSet;
    CdsPacienteQryPacienteEvolucaoClinica: TDataSetField;
    CdsPacienteEvolucaoClinicaIDPACIENTEEVOLUCAO: TIntegerField;
    CdsPacienteEvolucaoClinicaIDPACIENTE: TIntegerField;
    CdsPacienteEvolucaoClinicaIDDOUTOR: TIntegerField;
    CdsPacienteEvolucaoClinicaIDAGENDA: TIntegerField;
    CdsPacienteEvolucaoClinicaIDRASCUNHO: TSmallintField;
    CdsPacienteEvolucaoClinicaDATAINCLUSAO: TDateField;
    CdsPacienteEvolucaoClinicaHORAINCLUSAO: TTimeField;
    CdsPacienteEvolucaoClinicaEVOLUCAOCLINICA: TStringField;
    CdsPacienteEvolucaoClinicaPACIENTENOME: TStringField;
    CdsPacienteEvolucaoClinicaPACIENTERG: TStringField;
    CdsPacienteEvolucaoClinicaPACIENTECPF: TStringField;
    CdsPacienteEvolucaoClinicaPACIENTETELEFONE01: TStringField;
    CdsPacienteEvolucaoClinicaPACIENTETELEFONE02: TStringField;
    CdsPacienteEvolucaoClinicaPACIENTEDATANASCIMENTO: TDateField;
    CdsPacienteEvolucaoClinicaPACIENTEIDADE: TIntegerField;
    CdsPacienteEvolucaoClinicaPACIENTEEMAIL: TStringField;
    CdsPacienteEvolucaoClinicaPACIENTECIDADEUF: TStringField;
    CdsPacienteEvolucaoClinicaDOUTORNOME: TStringField;
    CdsPacienteEvolucaoClinicaDOUTORCRM: TStringField;
    CdsPacienteEvolucaoClinicaDOUTORCPF: TStringField;
    CdsPacienteEvolucaoClinicaDOUTORTELEFONE: TStringField;
    CdsPacienteEvolucaoClinicaDOUTORCELULAR: TStringField;
    GridPacienteEvolucaoDBTableView1DATAINCLUSAO: TcxGridDBColumn;
    GridPacienteEvolucaoDBTableView1HORAINCLUSAO: TcxGridDBColumn;
    GridPacienteEvolucaoDBTableView1EVOLUCAOCLINICA: TcxGridDBColumn;
    GridPacienteEvolucaoDBTableView1DOUTORNOME: TcxGridDBColumn;
    DbEvolucaoClinica: TcxDBMemo;
    GridPacienteReceituario: TcxGrid;
    GridPacienteReceituarioDBTableView1: TcxGridDBTableView;
    GridPacienteReceituarioLevel1: TcxGridLevel;
    PnlPacienteReceituarioPedido: TPanel;
    LblMedicamento: TLabel;
    BtnSalvarReceituarioPedido: TcxButton;
    BtnIncluirReceituarioPedido: TcxButton;
    BtnExcluirReceituarioPedido: TcxButton;
    BtnCancelarReceituarioPedido: TcxButton;
    DbCodigoMedicamento: TcxDBButtonEdit;
    DbDescricaoMedicamento: TcxDBTextEdit;
    BtnAlterarReceituarioPedido: TcxButton;
    DsPacienteReceituario: TDataSource;
    CdsPacienteReceituario: TClientDataSet;
    CdsPacienteQryPacienteReceituario: TDataSetField;
    CdsPacienteReceituarioIDPACIENTERECEITUARIO: TIntegerField;
    CdsPacienteReceituarioIDPACIENTE: TIntegerField;
    CdsPacienteReceituarioIDDOUTOR: TIntegerField;
    CdsPacienteReceituarioIDAGENDA: TIntegerField;
    CdsPacienteReceituarioDATAINCLUSAO: TDateField;
    CdsPacienteReceituarioHORAINCLUSAO: TTimeField;
    CdsPacienteReceituarioPACIENTENOME: TStringField;
    CdsPacienteReceituarioPACIENTERG: TStringField;
    CdsPacienteReceituarioPACIENTECPF: TStringField;
    CdsPacienteReceituarioPACIENTETELEFONE01: TStringField;
    CdsPacienteReceituarioPACIENTETELEFONE02: TStringField;
    CdsPacienteReceituarioPACIENTEDATANASCIMENTO: TDateField;
    CdsPacienteReceituarioPACIENTEIDADE: TIntegerField;
    CdsPacienteReceituarioPACIENTEEMAIL: TStringField;
    CdsPacienteReceituarioPACIENTECIDADEUF: TStringField;
    CdsPacienteReceituarioDOUTORNOME: TStringField;
    CdsPacienteReceituarioDOUTORCRM: TStringField;
    CdsPacienteReceituarioDOUTORCPF: TStringField;
    CdsPacienteReceituarioDOUTORTELEFONE: TStringField;
    CdsPacienteReceituarioDOUTORCELULAR: TStringField;
    CdsPacienteReceituarioQryPacienteReceituarioPedido: TDataSetField;
    DsPacienteReceituarioPedido: TDataSource;
    CdsPacienteReceituarioPedido: TClientDataSet;
    CdsPacienteReceituarioPedidoIDPACIENTERECEITUARIOUSO: TIntegerField;
    CdsPacienteReceituarioPedidoIDPACIENTERECEITUARIO: TIntegerField;
    CdsPacienteReceituarioPedidoIDPACIENTE: TIntegerField;
    CdsPacienteReceituarioPedidoIDMEDICAMENTO: TIntegerField;
    CdsPacienteReceituarioPedidoPOSOLOGIA: TStringField;
    CdsPacienteReceituarioPedidoMEDICAMENTO: TStringField;
    CdsPacienteReceituarioPedidoMEDICAMENTOUSO: TStringField;
    CdsPacienteReceituarioPedidoMEDICAMENTOQTDE: TStringField;
    GridPacienteReceituarioDBTableView1IDAGENDA: TcxGridDBColumn;
    GridPacienteReceituarioDBTableView1DATAINCLUSAO: TcxGridDBColumn;
    GridPacienteReceituarioDBTableView1HORAINCLUSAO: TcxGridDBColumn;
    GridPacienteReceituarioDBTableView1DOUTORNOME: TcxGridDBColumn;
    GridPacienteReceituarioDBTableView1DOUTORCRM: TcxGridDBColumn;
    GridPacienteReceituarioPedido: TcxGrid;
    GridPacienteReceituarioPedidoDBTableView1: TcxGridDBTableView;
    GridPacienteReceituarioPedidoLevel1: TcxGridLevel;
    GridPacienteReceituarioPedidoDBTableView1POSOLOGIA: TcxGridDBColumn;
    GridPacienteReceituarioPedidoDBTableView1MEDICAMENTO: TcxGridDBColumn;
    GridPacienteReceituarioPedidoDBTableView1MEDICAMENTOUSO: TcxGridDBColumn;
    GridPacienteReceituarioPedidoDBTableView1MEDICAMENTOQTDE: TcxGridDBColumn;
    DbDescricaoMedicamentoUso: TcxDBTextEdit;
    DbDescricaoMedicamentoQuantidade: TcxDBTextEdit;
    LblMedicamentoUso: TLabel;
    LblMedicamentoQuantidade: TLabel;
    DbMedicamentoPosologia: TcxDBTextEdit;
    LblMedicamentoPosologia: TLabel;
    CdsPacienteConvenioIDPACIENTECONVENIO: TIntegerField;
    CdsPacienteConvenioIDPACIENTE: TIntegerField;
    CdsPacienteConvenioIDCONVENIO: TIntegerField;
    CdsPacienteConvenioIDPRINCIPAL: TSmallintField;
    CdsPacienteConvenioIDSITUACAOREGISTRO: TSmallintField;
    CdsPacienteConvenioDATAINCLUSAO: TDateField;
    CdsPacienteConvenioCONVENIO: TStringField;
    CdsPacienteConvenioPRINCIPAL: TStringField;
    CdsPacienteConvenioSITUACAOREGISTRO: TStringField;
    GbPacienteExame: TcxGroupBox;
    Panel1: TPanel;
    GridPacienteExame: TcxGrid;
    GridPacienteExameDBTableView1: TcxGridDBTableView;
    GridPacienteExameLevel1: TcxGridLevel;
    Panel2: TPanel;
    Label1: TLabel;
    BtnSalvarExamePedido: TcxButton;
    BtnIncluirExamePedido: TcxButton;
    BtnExcluirExamePedido: TcxButton;
    BtnCancelarExamePedido: TcxButton;
    DbCodigoExame: TcxDBButtonEdit;
    DbDescricaoExame: TcxDBTextEdit;
    BtnAlterarExamePedido: TcxButton;
    GridPacienteExamePedido: TcxGrid;
    GridPacienteExamePedidoDBTableView1: TcxGridDBTableView;
    GridPacienteExamePedidoLevel1: TcxGridLevel;
    DsPacienteExame: TDataSource;
    CdsPacienteExame: TClientDataSet;
    DsPacienteExamePedido: TDataSource;
    CdsPacienteExamePedido: TClientDataSet;
    CdsPacienteQryPacienteExame: TDataSetField;
    CdsPacienteExameIDPACIENTEEXAME: TIntegerField;
    CdsPacienteExameIDPACIENTE: TIntegerField;
    CdsPacienteExameIDDOUTOR: TIntegerField;
    CdsPacienteExameIDAGENDA: TIntegerField;
    CdsPacienteExameDATAINCLUSAO: TDateField;
    CdsPacienteExameHORAINCLUSAO: TTimeField;
    CdsPacienteExamePACIENTENOME: TStringField;
    CdsPacienteExamePACIENTERG: TStringField;
    CdsPacienteExamePACIENTECPF: TStringField;
    CdsPacienteExamePACIENTETELEFONE01: TStringField;
    CdsPacienteExamePACIENTETELEFONE02: TStringField;
    CdsPacienteExamePACIENTEDATANASCIMENTO: TDateField;
    CdsPacienteExamePACIENTEIDADE: TIntegerField;
    CdsPacienteExamePACIENTEEMAIL: TStringField;
    CdsPacienteExamePACIENTECIDADEUF: TStringField;
    CdsPacienteExameDOUTORNOME: TStringField;
    CdsPacienteExameDOUTORCRM: TStringField;
    CdsPacienteExameDOUTORCPF: TStringField;
    CdsPacienteExameDOUTORTELEFONE: TStringField;
    CdsPacienteExameDOUTORCELULAR: TStringField;
    CdsPacienteExameQryPacienteExamePedido: TDataSetField;
    CdsPacienteExamePedidoIDPACIENTEEXAMESOLICITADO: TIntegerField;
    CdsPacienteExamePedidoIDPACIENTEEXAME: TIntegerField;
    CdsPacienteExamePedidoIDPACIENTE: TIntegerField;
    CdsPacienteExamePedidoIDEXAME: TIntegerField;
    CdsPacienteExamePedidoEXAMEDESCRICAO: TStringField;
    GridPacienteExamePedidoDBTableView1EXAMEDESCRICAO: TcxGridDBColumn;
    GridPacienteEvolucaoDBTableView1IDAGENDA: TcxGridDBColumn;
    GridPacienteReceituarioDBTableView1DOUTORTELEFONE: TcxGridDBColumn;
    GridPacienteReceituarioDBTableView1DOUTORCELULAR: TcxGridDBColumn;
    GridPacienteExameDBTableView1IDAGENDA: TcxGridDBColumn;
    GridPacienteExameDBTableView1DATAINCLUSAO: TcxGridDBColumn;
    GridPacienteExameDBTableView1HORAINCLUSAO: TcxGridDBColumn;
    GridPacienteExameDBTableView1DOUTORNOME: TcxGridDBColumn;
    GridPacienteExameDBTableView1DOUTORCRM: TcxGridDBColumn;
    GridPacienteExameDBTableView1DOUTORTELEFONE: TcxGridDBColumn;
    GridPacienteExameDBTableView1DOUTORCELULAR: TcxGridDBColumn;
    DsPacienteFoto: TDataSource;
    CdsPacienteFoto: TClientDataSet;
    CdsPacienteQryPacienteFoto: TDataSetField;
    CdsPacienteFotoIDPACIENTEFOTO: TIntegerField;
    CdsPacienteFotoIDPACIENTE: TIntegerField;
    CdsPacienteFotoIDDOUTOR: TIntegerField;
    CdsPacienteFotoIDAGENDA: TIntegerField;
    CdsPacienteFotoDATAINCLUSAO: TDateField;
    CdsPacienteFotoHORAINCLUSAO: TTimeField;
    CdsPacienteFotoPACIENTENOME: TStringField;
    CdsPacienteFotoPACIENTERG: TStringField;
    CdsPacienteFotoPACIENTECPF: TStringField;
    CdsPacienteFotoPACIENTETELEFONE01: TStringField;
    CdsPacienteFotoPACIENTETELEFONE02: TStringField;
    CdsPacienteFotoPACIENTEDATANASCIMENTO: TDateField;
    CdsPacienteFotoPACIENTEIDADE: TIntegerField;
    CdsPacienteFotoPACIENTEEMAIL: TStringField;
    CdsPacienteFotoPACIENTECIDADEUF: TStringField;
    CdsPacienteFotoDOUTORNOME: TStringField;
    CdsPacienteFotoDOUTORCRM: TStringField;
    CdsPacienteFotoDOUTORCPF: TStringField;
    CdsPacienteFotoDOUTORTELEFONE: TStringField;
    CdsPacienteFotoDOUTORCELULAR: TStringField;
    CdsPacienteFotoOSERVACAO: TStringField;
    CdsPacienteFotoQryPacienteFotoItem: TDataSetField;
    GbFotoPaciente: TcxGroupBox;
    Panel3: TPanel;
    GridPacinteFoto: TcxGrid;
    GridPacinteFotoDBTableView1: TcxGridDBTableView;
    GridPacinteFotoLevel1: TcxGridLevel;
    Panel4: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    GridPacinteFotoItem: TcxGrid;
    GridPacinteFotoItemDBTableView2: TcxGridDBTableView;
    GridPacinteFotoItemLevel2: TcxGridLevel;
    DsPacienteFotoItem: TDataSource;
    CdsPacienteFotoItem: TClientDataSet;
    CdsPacienteFotoItemIDPACIENTEFOTOITEM: TIntegerField;
    CdsPacienteFotoItemIDPACIENTEFOTO: TIntegerField;
    CdsPacienteFotoItemIDPACIENTE: TIntegerField;
    CdsPacienteFotoItemFOTODESCRICAO: TStringField;
    CdsPacienteFotoItemFOTOBINARIO: TBlobField;
    CdsPacienteFotoItemOBSERVACAO: TStringField;
    CdsPacienteFotoItemPACIENTENOME: TStringField;
    CdsPacienteFotoItemDIRETORIOORIGEM: TStringField;
    CdsPacienteFotoItemDATAAGENDA: TDateField;
    GridPacinteFotoDBTableView1IDAGENDA: TcxGridDBColumn;
    GridPacinteFotoDBTableView1DATAINCLUSAO: TcxGridDBColumn;
    GridPacinteFotoDBTableView1HORAINCLUSAO: TcxGridDBColumn;
    GridPacinteFotoDBTableView1DOUTORNOME: TcxGridDBColumn;
    GridPacinteFotoDBTableView1DOUTORCRM: TcxGridDBColumn;
    GridPacinteFotoDBTableView1DOUTORTELEFONE: TcxGridDBColumn;
    GridPacinteFotoDBTableView1DOUTORCELULAR: TcxGridDBColumn;
    GridPacinteFotoItemDBTableView2FOTODESCRICAO: TcxGridDBColumn;
    GridPacinteFotoItemDBTableView2FOTOBINARIO: TcxGridDBColumn;
    GridPacinteFotoItemDBTableView2OBSERVACAO: TcxGridDBColumn;
    GbImagem: TGroupBox;
    DbFotoDoutor: TcxDBImage;
    procedure DbCodigoCidadeExit(Sender: TObject);
    procedure DbCodigoCidadePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure AcaoConfirmarExecute(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
    procedure DbDataNascimentoExit(Sender: TObject);
    procedure BtnInlcuirConvenioClick(Sender: TObject);
    procedure BtnAlterarConvenioClick(Sender: TObject);
    procedure BtnSalvarConvenioClick(Sender: TObject);
    procedure BtnCancelarConvenioClick(Sender: TObject);
    procedure BtnExcluirConvenioClick(Sender: TObject);
    procedure DbCodigoConvenioExit(Sender: TObject);
    procedure DbCodigoConvenioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CbPrincipalConvenioClick(Sender: TObject);
    procedure CbAtivoConvenioClick(Sender: TObject);
    procedure CdsPacienteConvenioAfterInsert(DataSet: TDataSet);
    procedure BtnInlcuirEvolucaoClick(Sender: TObject);
    procedure BtnAlterarEvolucaoClick(Sender: TObject);
    procedure BtnSalvarEvolucaoClick(Sender: TObject);
    procedure BtnCancelarEvolucaoClick(Sender: TObject);
    procedure BtnExcluirEvolucaoClick(Sender: TObject);
    procedure BtnIncluirReceituarioPedidoClick(Sender: TObject);
    procedure BtnIncluirExamePedidoClick(Sender: TObject);
    procedure BtnAlterarReceituarioPedidoClick(Sender: TObject);
    procedure BtnAlterarExamePedidoClick(Sender: TObject);
    procedure BtnSalvarReceituarioPedidoClick(Sender: TObject);
    procedure BtnSalvarExamePedidoClick(Sender: TObject);
    procedure BtnCancelarReceituarioPedidoClick(Sender: TObject);
    procedure BtnCancelarExamePedidoClick(Sender: TObject);
    procedure BtnExcluirReceituarioPedidoClick(Sender: TObject);
    procedure BtnExcluirExamePedidoClick(Sender: TObject);
    procedure DbCodigoMedicamentoExit(Sender: TObject);
    procedure DbCodigoExameExit(Sender: TObject);
    procedure DbCodigoMedicamentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DbCodigoExamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);

  private
    { Private declarations }

    procedure controleBotoes;
    procedure controleComponentePessoaConvenio;
    procedure controleComponentePessoaEvolucao;
    procedure controleComponentePessoaReceituario;
    procedure controleComponentePessoaExame;

    procedure ajutarAbasIniciais;
    procedure clearData;

    function dataIdade(const DataNascimento: String): Integer;

  public
    { Public declarations }

  end;

var
  OpeFichaPacienteF: TOpeFichaPacienteF;

implementation

uses PesqCidadeU, PesqPacienteU, XLibGenericoU, XLibMessages, PesqConvenioU,
  DmConexaoU, DmRotinaU, PesqExameU, PesqMedicamentoU;

{$R *.dfm}

procedure TOpeFichaPacienteF.AcaoConfirmarExecute(Sender: TObject);
begin
  inherited;
  if CdsPaciente.State in [dsInsert, dsEdit] then
  begin
    CdsPaciente.Post;
    CdsPaciente.ApplyUpdates(0);
    TRotinaGenerica.MensagemGeral(msgOpeFichaPac, MsgInformar, BtOk);
    Self.clearData;
    TRotinaGenerica.TentaFocar(EdCodigo);
  end;
  Self.controleBotoes;
end;

procedure TOpeFichaPacienteF.ajutarAbasIniciais;
begin
  PcTelaCadastro.ActivePage := TsPrincipal;
end;

procedure TOpeFichaPacienteF.BtnAlterarConvenioClick(Sender: TObject);
begin
  inherited;
  CdsPacienteConvenio.Edit;
  Self.controleComponentePessoaConvenio;
end;

procedure TOpeFichaPacienteF.BtnAlterarEvolucaoClick(Sender: TObject);
begin
  inherited;
  CdsPacienteEvolucaoClinica.Edit;
  Self.controleComponentePessoaEvolucao;
end;

procedure TOpeFichaPacienteF.BtnAlterarExamePedidoClick(Sender: TObject);
begin
  inherited;
  CdsPacienteExamePedido.Edit;
  Self.controleComponentePessoaExame;
end;

procedure TOpeFichaPacienteF.BtnAlterarReceituarioPedidoClick(Sender: TObject);
begin
  inherited;
  CdsPacienteReceituarioPedido.Edit;
  Self.controleComponentePessoaReceituario;
end;

procedure TOpeFichaPacienteF.BtnCancelarConvenioClick(Sender: TObject);
begin
  inherited;
  CdsPacienteConvenio.Cancel;
  Self.controleComponentePessoaConvenio;
end;

procedure TOpeFichaPacienteF.BtnCancelarEvolucaoClick(Sender: TObject);
begin
  inherited;
  CdsPacienteEvolucaoClinica.Cancel;
  Self.controleComponentePessoaEvolucao;
end;

procedure TOpeFichaPacienteF.BtnCancelarExamePedidoClick(Sender: TObject);
begin
  inherited;
  CdsPacienteExamePedido.Cancel;
  Self.controleComponentePessoaExame;
end;

procedure TOpeFichaPacienteF.BtnCancelarReceituarioPedidoClick(Sender: TObject);
begin
  inherited;
  CdsPacienteReceituarioPedido.Cancel;
  Self.controleComponentePessoaReceituario;
end;

procedure TOpeFichaPacienteF.BtnExcluirConvenioClick(Sender: TObject);
begin
  inherited;
  CdsPacienteConvenio.Delete;
  Self.controleComponentePessoaConvenio;
end;

procedure TOpeFichaPacienteF.BtnExcluirEvolucaoClick(Sender: TObject);
begin
  inherited;
  CdsPacienteEvolucaoClinica.Delete;
  Self.controleComponentePessoaEvolucao;
end;

procedure TOpeFichaPacienteF.BtnExcluirExamePedidoClick(Sender: TObject);
begin
  inherited;
  CdsPacienteExamePedido.Delete;
  Self.controleComponentePessoaExame;
end;

procedure TOpeFichaPacienteF.BtnExcluirReceituarioPedidoClick(Sender: TObject);
begin
  inherited;
  CdsPacienteReceituarioPedido.Delete;
  Self.controleComponentePessoaReceituario;
end;

procedure TOpeFichaPacienteF.BtnIncluirExamePedidoClick(Sender: TObject);
begin
  inherited;
  if (Trim(CdsPaciente.FieldByName('NOME').AsString) = EmptyStr) or (CdsPaciente.FieldByName('NOME').IsNull) then
  begin
    TRotinaGenerica.MensagemGeral(msgCadPacienteInformarNomeAoInserirConvenio, MsgInformar, BtOk);
    PcTelaCadastro.ActivePage := TsPrincipal;
    TRotinaGenerica.TentaFocar(DbNome);
  end
  else
  begin
    CdsPacienteExamePedido.Insert;
    Self.controleComponentePessoaExame;
  end;
end;

procedure TOpeFichaPacienteF.BtnIncluirReceituarioPedidoClick(Sender: TObject);
begin
  inherited;
  if (Trim(CdsPaciente.FieldByName('NOME').AsString) = EmptyStr) or (CdsPaciente.FieldByName('NOME').IsNull) then
  begin
    TRotinaGenerica.MensagemGeral(msgCadPacienteInformarNomeAoInserirConvenio, MsgInformar, BtOk);
    PcTelaCadastro.ActivePage := TsPrincipal;
    TRotinaGenerica.TentaFocar(DbNome);
  end
  else
  begin
    CdsPacienteReceituarioPedido.Insert;
    Self.controleComponentePessoaReceituario;
  end;
end;

procedure TOpeFichaPacienteF.BtnInlcuirConvenioClick(Sender: TObject);
begin
  inherited;
  if (Trim(CdsPaciente.FieldByName('NOME').AsString) = EmptyStr) or (CdsPaciente.FieldByName('NOME').IsNull) then
  begin
    TRotinaGenerica.MensagemGeral(msgCadPacienteInformarNomeAoInserirConvenio, MsgInformar, BtOk);
    PcTelaCadastro.ActivePage := TsPrincipal;
    TRotinaGenerica.TentaFocar(DbNome);
  end
  else
  begin
    CdsPacienteConvenio.Insert;
    Self.controleComponentePessoaConvenio;
  end;
end;

procedure TOpeFichaPacienteF.BtnInlcuirEvolucaoClick(Sender: TObject);
begin
  inherited;
  if (Trim(CdsPaciente.FieldByName('NOME').AsString) = EmptyStr) or (CdsPaciente.FieldByName('NOME').IsNull) then
  begin
    TRotinaGenerica.MensagemGeral(msgCadPacienteInformarNomeAoInserirConvenio, MsgInformar, BtOk);
    PcTelaCadastro.ActivePage := TsPrincipal;
    TRotinaGenerica.TentaFocar(DbNome);
  end
  else
  begin
    CdsPacienteEvolucaoClinica.Insert;
    Self.controleComponentePessoaEvolucao;
  end;
end;

procedure TOpeFichaPacienteF.BtnSalvarConvenioClick(Sender: TObject);
begin
  inherited;
    CdsPacienteConvenio.Post;
    //setarPacienteConvenioPrincipal(CdsPacienteConvenio);
    Self.controleComponentePessoaConvenio;
end;

procedure TOpeFichaPacienteF.BtnSalvarEvolucaoClick(Sender: TObject);
begin
  inherited;
  CdsPacienteEvolucaoClinica.Post;
  Self.controleComponentePessoaEvolucao;
end;

procedure TOpeFichaPacienteF.BtnSalvarExamePedidoClick(Sender: TObject);
begin
  inherited;
  CdsPacienteExamePedido.Post;
  Self.controleComponentePessoaExame;
end;

procedure TOpeFichaPacienteF.BtnSalvarReceituarioPedidoClick(Sender: TObject);
begin
  inherited;
  CdsPacienteReceituarioPedido.Post;
  Self.controleComponentePessoaReceituario;
end;

procedure TOpeFichaPacienteF.CbAtivoConvenioClick(Sender: TObject);
begin
  inherited;
  if CdsPaciente.State in [dsInsert, dsEdit] then
  begin
    if CbAtivoConvenio.Checked then
      CdsPacienteConvenioSITUACAOREGISTRO.AsString := 'Ativo'
    else
      CdsPacienteConvenioSITUACAOREGISTRO.AsString := 'Inativo'
  end;
end;

procedure TOpeFichaPacienteF.CbPrincipalConvenioClick(Sender: TObject);
begin
  inherited;
  if CdsPaciente.State in [dsInsert, dsEdit] then
  begin
    if CbPrincipalConvenio.Checked then
      CdsPacienteConvenioPRINCIPAL.AsString := 'Sim'
    else
      CdsPacienteConvenioPRINCIPAL.AsString := 'Não'
  end;
end;

procedure TOpeFichaPacienteF.CdsPacienteConvenioAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsPacienteConvenio.FieldByName('IDPACIENTECONVENIO').AsInteger := DmConexaoF.ProximoFilha(CdsPacienteConvenio, 'IDPACIENTECONVENIO');
  CdsPacienteConvenio.FieldByName('IDPACIENTE').AsInteger         := CdsPaciente.FieldByName('IDPACIENTE').AsInteger;
  CdsPacienteConvenio.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsPacienteConvenio.FieldByName('IDSITUACAOREGISTRO').AsInteger := 1;
  CdsPacienteConvenio.FieldByName('SITUACAOREGISTRO').AsString    := 'Ativo';
  if CdsPacienteConvenio.RecordCount = 0 then
  begin
    CdsPacienteConvenio.FieldByName('IDPRINCIPAL').AsInteger := 1;
    CdsPacienteConvenio.FieldByName('PRINCIPAL').AsString    := 'Sim';
  end
  else
  begin
    CdsPacienteConvenio.FieldByName('IDPRINCIPAL').AsInteger := 0;
    CdsPacienteConvenio.FieldByName('PRINCIPAL').AsString    := 'Não';
  end;
end;

procedure TOpeFichaPacienteF.clearData;
begin
  CdsPacienteConvenio.Close;
  CdsPacienteEvolucaoClinica.Close;
  CdsPacienteReceituarioPedido.Close;
  CdsPacienteReceituario.Close;
  CdsPacienteExamePedido.Close;
  CdsPacienteExame.Close;

  CdsPaciente.Close;
  CdsPaciente.CommandText :=
     ' SELECT PAC.* '
    +'       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) AS IDADE '
    +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM PACIENTE PAC '
    +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PAC.IDCIDADE) '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PAC.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = -1 '
    ;
  Self.SetaComponentes(dsBrowse);
end;

procedure TOpeFichaPacienteF.controleBotoes;
begin
  AcaoConfirmar.Enabled := CdsPaciente.State in [dsInsert, dsEdit];

  Self.controleComponentePessoaConvenio;
  Self.controleComponentePessoaEvolucao;
  Self.controleComponentePessoaReceituario;
  Self.controleComponentePessoaExame;
end;

procedure TOpeFichaPacienteF.controleComponentePessoaConvenio;
begin
  BtnInlcuirConvenio.Enabled   :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( not (CdsPacienteConvenio.State in [dsInsert, dsEdit]) );

  BtnAlterarConvenio.Enabled   :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( not (CdsPacienteConvenio.State in [dsInsert, dsEdit]) )
                                  and ( not CdsPacienteConvenio.IsEmpty );

  BtnSalvarConvenio.Enabled    :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( CdsPacienteConvenio.State in [dsInsert, dsEdit] );

  BtnCancelarConvenio.Enabled  :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( CdsPacienteConvenio.State in [dsInsert, dsEdit] );

  BtnExcluirConvenio.Enabled   :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( not (CdsPacienteConvenio.State in [dsInsert, dsEdit]) )
                                  and ( not CdsPacienteConvenio.IsEmpty );

  DbCodigoConvenio.Enabled     :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( CdsPacienteConvenio.State in [dsInsert, dsEdit] );

  CbPrincipalConvenio.Enabled  :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( CdsPacienteConvenio.State in [dsInsert, dsEdit] );

  CbAtivoConvenio.Enabled      :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( CdsPacienteConvenio.State in [dsInsert, dsEdit] );

  GridPacienteConvenio.Enabled :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( not (CdsPacienteConvenio.State in [dsInsert, dsEdit]) );
end;

procedure TOpeFichaPacienteF.controleComponentePessoaEvolucao;
begin
  BtnInlcuirEvolucao.Enabled   :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( not (CdsPacienteEvolucaoClinica.State in [dsInsert, dsEdit]) );

  BtnAlterarEvolucao.Enabled   :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( not (CdsPacienteEvolucaoClinica.State in [dsInsert, dsEdit]) )
                                  and ( not CdsPacienteEvolucaoClinica.IsEmpty );

  BtnSalvarEvolucao.Enabled    :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( CdsPacienteEvolucaoClinica.State in [dsInsert, dsEdit] );

  BtnCancelarEvolucao.Enabled  :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( CdsPacienteEvolucaoClinica.State in [dsInsert, dsEdit] );

  BtnExcluirEvolucao.Enabled   :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( not (CdsPacienteEvolucaoClinica.State in [dsInsert, dsEdit]) )
                                  and ( not CdsPacienteEvolucaoClinica.IsEmpty );

  DbEvolucaoClinica.Enabled    :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( CdsPacienteEvolucaoClinica.State in [dsInsert, dsEdit] );

  GridPacienteEvolucao.Enabled :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( not (CdsPacienteEvolucaoClinica.State in [dsInsert, dsEdit]) );
end;

procedure TOpeFichaPacienteF.controleComponentePessoaExame;
begin
  BtnIncluirExamePedido.Enabled   :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                     and ( not (CdsPacienteExamePedido.State in [dsInsert, dsEdit]) );

  BtnAlterarExamePedido.Enabled   :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                     and ( not (CdsPacienteExamePedido.State in [dsInsert, dsEdit]) )
                                     and ( not CdsPacienteExamePedido.IsEmpty );

  BtnSalvarExamePedido.Enabled    :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                     and ( CdsPacienteExamePedido.State in [dsInsert, dsEdit] );

  BtnCancelarExamePedido.Enabled  :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                     and ( CdsPacienteExamePedido.State in [dsInsert, dsEdit] );

  BtnExcluirExamePedido.Enabled   :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                     and ( not (CdsPacienteExamePedido.State in [dsInsert, dsEdit]) )
                                     and ( not CdsPacienteExamePedido.IsEmpty );

  DbCodigoExame.Enabled           :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                     and ( CdsPacienteExamePedido.State in [dsInsert, dsEdit] );

  GridPacienteExamePedido.Enabled :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                     and ( not (CdsPacienteExamePedido.State in [dsInsert, dsEdit]) );
end;

procedure TOpeFichaPacienteF.controleComponentePessoaReceituario;
begin
  BtnIncluirReceituarioPedido.Enabled   :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                           and ( not (CdsPacienteReceituarioPedido.State in [dsInsert, dsEdit]) );

  BtnAlterarReceituarioPedido.Enabled   :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                           and ( not (CdsPacienteReceituarioPedido.State in [dsInsert, dsEdit]) )
                                           and ( not CdsPacienteReceituarioPedido.IsEmpty );

  BtnSalvarReceituarioPedido.Enabled    :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                           and ( CdsPacienteReceituarioPedido.State in [dsInsert, dsEdit] );

  BtnCancelarReceituarioPedido.Enabled  :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                           and ( CdsPacienteReceituarioPedido.State in [dsInsert, dsEdit] );

  BtnExcluirReceituarioPedido.Enabled   :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                           and ( not (CdsPacienteReceituarioPedido.State in [dsInsert, dsEdit]) )
                                           and ( not CdsPacienteReceituarioPedido.IsEmpty );

  DbCodigoMedicamento.Enabled           :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                           and ( CdsPacienteReceituarioPedido.State in [dsInsert, dsEdit] );

  DbMedicamentoPosologia.Enabled        :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                           and ( CdsPacienteReceituarioPedido.State in [dsInsert, dsEdit] );

  GridPacienteReceituarioPedido.Enabled :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                           and ( not (CdsPacienteReceituarioPedido.State in [dsInsert, dsEdit]) );
end;

function TOpeFichaPacienteF.dataIdade(const DataNascimento: String): Integer;
begin
  try
    StrToDate(DataNascimento);
  except
    TRotinaGenerica.MensagemGeral('Data de nascimento inválida!', MsgErro, BtOk);
    Abort;
  end;
  Result := Trunc( ( Date - StrToDate(DataNascimento) ) / 365.25);
end;

procedure TOpeFichaPacienteF.DbCodigoCidadeExit(Sender: TObject);
begin
  inherited;
  if CdsPaciente.State in [dsInsert, dsEdit] then
  begin
    TPesqCidadeF.executaPesquisaCidade03(CdsPaciente, StrToIntDef(DbCodigoCidade.Text, 0));
  end;
end;

procedure TOpeFichaPacienteF.DbCodigoCidadePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqCidadeF.executaPesquisaCidade02(CdsPaciente);
end;

procedure TOpeFichaPacienteF.DbCodigoConvenioExit(Sender: TObject);
begin
  inherited;
  if CdsPaciente.State in [dsInsert, dsEdit] then
  begin
    TPesqConvenioF.executaPesquisaConvenio03(CdsPacienteConvenio, StrToIntDef(DbCodigoConvenio.Text, 0));
  end;
end;

procedure TOpeFichaPacienteF.DbCodigoConvenioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqConvenioF.executaPesquisaConvenio02(CdsPacienteConvenio);
end;

procedure TOpeFichaPacienteF.DbCodigoExameExit(Sender: TObject);
begin
  inherited;
  if CdsPaciente.State in [dsInsert, dsEdit] then
  begin
    TPesqExameF.executaPesquisaExame03(CdsPacienteExamePedido, StrToIntDef(DbCodigoExame.Text, 0));
  end;
end;

procedure TOpeFichaPacienteF.DbCodigoExamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqExameF.executaPesquisaExame02(CdsPacienteExamePedido);
end;

procedure TOpeFichaPacienteF.DbCodigoMedicamentoExit(Sender: TObject);
begin
  inherited;
  if CdsPaciente.State in [dsInsert, dsEdit] then
  begin
    TPesqMedicamentoF.executaPesquisaMedicamento03(CdsPacienteReceituarioPedido, StrToIntDef(DbCodigoMedicamento.Text, 0));
  end;
end;

procedure TOpeFichaPacienteF.DbCodigoMedicamentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqMedicamentoF.executaPesquisaMedicamento02(CdsPacienteReceituarioPedido);
end;

procedure TOpeFichaPacienteF.DbDataNascimentoExit(Sender: TObject);
begin
  inherited;
  if CdsPaciente.State in [dsInsert, dsEdit] then
  begin
    CdsPaciente.UpdateRecord;
    CdsPaciente.FieldByName('IDADE').AsInteger := Self.dataIdade(CdsPaciente.FieldByName('DATANASCIMENTO').AsString);
  end;
end;

procedure TOpeFichaPacienteF.EdCodigoExit(Sender: TObject);
begin
  inherited;
  if TPesqPacienteF.executaPesquisaFichaPacienteEditExit(EdCodigo, EdNomePaciente) then
  begin
    CdsPaciente.Close;
    CdsPaciente.CommandText :=
       ' SELECT PAC.* '
      +'       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) AS IDADE '
      +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM PACIENTE PAC '
      +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PAC.IDCIDADE) '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PAC.IDSITUACAOREGISTRO) '
      +'  WHERE 1 = 1 '
       +' AND PAC.IDPACIENTE = '+  TRotinaGenerica.IntToSql(StrToIntDef(EdCodigo.Text, 0));
      ;
    Self.SetaComponentes(dsEdit);
    CdsPaciente.Open;
    CdsPaciente.Edit;
    Self.controleBotoes;
    Self.ajutarAbasIniciais;
    TRotinaGenerica.TentaFocar(DbNome);
  end;
end;

procedure TOpeFichaPacienteF.EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqPacienteF.executaPesquisaFichaPacienteEditButton(EdCodigo, EdNomePaciente);
end;

procedure TOpeFichaPacienteF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  OpeFichaPacienteF.Release;
  OpeFichaPacienteF := nil;
end;

procedure TOpeFichaPacienteF.FormCreate(Sender: TObject);
begin
  inherited;
  Self.controleBotoes;
  Self.ajutarAbasIniciais;
  Self.SetaComponentes(dsBrowse);

  EdCodigo.Enabled       := True;
  EdNomePaciente.Enabled := True;
end;

Initialization
  RegisterClass(TOpeFichaPacienteF);

end.
