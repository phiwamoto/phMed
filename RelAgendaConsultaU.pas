unit RelAgendaConsultaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaRelatorioU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, frxExportHTML, frxExportXLS, frxClass, frxExportPDF, ImgList, ActnList,
  StdCtrls, cxButtons, ExtCtrls, frxDBSet, DB, DBClient, frxChart, cxControls,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit;

type
  TRelAgendaConsultaF = class(TXTelaRelatorioF)
    DsAgenda: TDataSource;
    CdsAgenda: TClientDataSet;
    frxRelatorio: TfrxReport;
    frxCdsAgenda: TfrxDBDataset;
    CdsAgendaIDAGENDA: TIntegerField;
    CdsAgendaDATAAGENDA: TDateField;
    CdsAgendaHORAAGENDA: TTimeField;
    CdsAgendaSTATUS: TStringField;
    CdsAgendaMOTIVO: TStringField;
    CdsAgendaIDPACIENTE: TIntegerField;
    CdsAgendaPACIENTENOME: TStringField;
    CdsAgendaPACIENTECPF: TStringField;
    CdsAgendaPACIENTECIDADEUF: TStringField;
    CdsAgendaIDDOUTOR: TIntegerField;
    CdsAgendaDOUTORNOME: TStringField;
    CdsAgendaDOUTORCRM: TStringField;
    CdsAgendaDOUTORTELEFONE: TStringField;
    CdsAgendaDOUTORCELULAR: TStringField;
    CdsAgendaDOUTORCIDADEUF: TStringField;
    EdDataAgenda: TcxDateEdit;
    EdCodigoDoutor: TcxButtonEdit;
    CdsAgendaIDCONVENIO: TIntegerField;
    CdsAgendaCONVENIO: TStringField;
    CdsAgendaPACIENTETELEFONE01: TStringField;
    CdsAgendaPACIENTETELEFONE02: TStringField;
    LblDataAgenda: TLabel;
    EdNomeDoutor: TcxTextEdit;
    LblDoutor: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AcaoVisualisarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoDoutorExit(Sender: TObject);
    procedure EdCodigoDoutorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);

  private
    { Private declarations }

  public
    { Public declarations }


  end;

var
  RelAgendaConsultaF: TRelAgendaConsultaF;

implementation

uses XLibGenericoU, PesqDoutorU, XLibMessages;

{$R *.dfm}

procedure TRelAgendaConsultaF.AcaoVisualisarExecute(Sender: TObject);
begin
  inherited;
  CdsAgenda.Close;
  CdsAgenda.CommandText :=
     ' SELECT AGE.IDAGENDA '
    +'       ,AGE.DATAAGENDA '
    +'       ,AGE.HORAAGENDA '
    +'       ,AGE.STATUS '
    +'       ,AGE.MOTIVO '
    +'       ,AGE.IDCONVENIO '
    +'       ,CON.CONVENIO '
    +'       ,PAC.IDPACIENTE '
    +'       ,PAC.NOME AS PACIENTENOME '
    +'       ,PAC.CPF AS PACIENTECPF '
    +'       ,PAC.TELEFONE1 AS PACIENTETELEFONE01 '
    +'       ,PAC.TELEFONE2 AS PACIENTETELEFONE02 '
    +'       ,(CIDPAC.CIDADE || '' - '' || CIDPAC.UF) AS PACIENTECIDADEUF '
    +'       ,DOU.IDDOUTOR '
    +'       ,DOU.NOME AS DOUTORNOME '
    +'       ,DOU.CRM AS DOUTORCRM '
    +'       ,DOU.TELEFONE AS DOUTORTELEFONE '
    +'       ,DOU.CELULAR AS DOUTORCELULAR '
    +'       ,(CIDDOU.CIDADE || '' - '' || CIDDOU.UF) AS DOUTORCIDADEUF '
    +'   FROM AGENDA AGE '
    +'        JOIN PACIENTE PAC ON (PAC.IDPACIENTE = AGE.IDPACIENTE) '
    +'        LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.IDCIDADE) '
    +'        JOIN DOUTOR DOU ON (DOU.IDDOUTOR = AGE.IDDOUTOR) '
    +'        LEFT JOIN CIDADE CIDDOU ON (CIDDOU.IDCIDADE = DOU.IDCIDADE) '
    +'        LEFT JOIN CONVENIO CON ON (CON.IDCONVENIO = AGE.IDCONVENIO) '
    +' WHERE 1 = 1 '
   +'    AND AGE.DATAAGENDA = '+TRotinaGenerica.DateToSql(EdDataAgenda.Date);

  if StrToIntDef(EdCodigoDoutor.Text, 0) > 0 then
  begin
    CdsAgenda.CommandText :=
      CdsAgenda.CommandText + ' AND DOU.IDDOUTOR = '+TRotinaGenerica.StrToSql(EdCodigoDoutor.Text);
  end;

  CdsAgenda.CommandText :=
    CdsAgenda.CommandText + ' ORDER BY DOU.NOME, AGE.DATAAGENDA, AGE.HORAAGENDA ';
  CdsAgenda.Open;

  if not CdsAgenda.IsEmpty then
  begin
    frxRelatorio.PrepareReport;
    frxRelatorio.ShowReport;
  end
  else
    TRotinaGenerica.MensagemGeral(msgRelatorioNaoPossuiInformacaoParaExibir, MsgInformar, BtOk);
end;




procedure TRelAgendaConsultaF.EdCodigoDoutorExit(Sender: TObject);
begin
  inherited;
  TPesqDoutorF.executaPesquisaDoutorEditExit(EdCodigoDoutor, EdNomeDoutor);
end;

procedure TRelAgendaConsultaF.EdCodigoDoutorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqDoutorF.executaPesquisaDoutorEditButton(EdCodigoDoutor, EdNomeDoutor);
end;

procedure TRelAgendaConsultaF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  RelAgendaConsultaF.Release;
  RelAgendaConsultaF := nil;
end;

procedure TRelAgendaConsultaF.FormCreate(Sender: TObject);
begin
  inherited;
  EdDataAgenda.Date := Date;
end;

Initialization
  RegisterClass(TRelAgendaConsultaF);

end.
