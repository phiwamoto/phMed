unit SmdAtestadoMedicoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaShowModalU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxGroupBox, cxRadioGroup, StdCtrls, ExtCtrls, Menus,
  cxButtons, cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxSpinEdit, cxTimeEdit, frxClass;

type
  TSmdAtestadoMedicoF = class(TXTelaShowModalF)
    BtnConfirmar: TcxButton;
    BtnCancelar: TcxButton;
    GbPacienteConvenio: TcxGroupBox;
    CbModeloPeriodoManha: TcxCheckBox;
    CbModeloPeriodoTarde: TcxCheckBox;
    CbModeloPeriodoDesejado: TcxCheckBox;
    PnlModeloPeriodoManha: TPanel;
    PnlModeloPeriodoTarde: TPanel;
    PnlModeloPeriodoDesejado: TPanel;
    LblModeloPeriodoManhaTexto01: TLabel;
    EdtlModeloPeriodoManhaHoraInicial: TcxTimeEdit;
    EdtlModeloPeriodoManhaHoraFinal: TcxTimeEdit;
    LblModeloPeriodoManhaTexto02: TLabel;
    LblModeloPeriodoTardeTexto01: TLabel;
    EdtlModeloPeriodoTardeHoraInicial: TcxTimeEdit;
    EdtlModeloPeriodoTardeHoraFinal: TcxTimeEdit;
    LblModeloPeriodoTardeTexto02: TLabel;
    LblModeloPeriodoDesejadoTexto01: TLabel;
    EdtlModeloPeriodoDesejadoHoraInicial: TcxTimeEdit;
    EdtlModeloPeriodoDesejadoHoraFinal: TcxTimeEdit;
    LblModeloPeriodoDesejadoTexto02: TLabel;
    frxRelatorioAtestadoInteira: TfrxReport;
    frxRelatorioAtestadoMeia: TfrxReport;
    frxRelatorioAtestadoTimbrado: TfrxReport;
    EdtlModeloPeriodoDesejadoDataInicial: TcxDateEdit;
    EdtlModeloPeriodoDesejadoDataFinal: TcxDateEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure CbModeloPeriodoManhaClick(Sender: TObject);
    procedure CbModeloPeriodoTardeClick(Sender: TObject);
    procedure CbModeloPeriodoDesejadoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }

    vIdPaciente, vIdDoutor, vIntervalo: Integer;
    vHorario: TDateTime;

    procedure modeloAtestadoMedico;
    procedure inicializarHorasEDatas;
    procedure preencherRelatorioDescricao(pFrxRelatorio: TfrxReport);
    procedure preencherRelatorioPaciente(const pIdPaciente: Integer; pFrxRelatorio: TfrxReport);
    procedure preencherRelatorioDoutor(const pIdDoutor: Integer; pFrxRelatorio: TfrxReport);

  public
    { Public declarations }
    class function chamaTela(const pIdPaciente, pIdDoutor, pIntervalo: Integer; const pHorario: TDateTime): Boolean;

  end;

var
  SmdAtestadoMedicoF: TSmdAtestadoMedicoF;

implementation

uses DmConexaoU, DmRelatorioU, XLibGenericoU, DmCadastroU, XDmU, DBClient,
  DateUtils;

{$R *.dfm}

{ TSmdAtestadoMedicoF }

procedure TSmdAtestadoMedicoF.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;
end;

procedure TSmdAtestadoMedicoF.BtnConfirmarClick(Sender: TObject);
begin
  inherited;
  DmRelatorioF.CdsCabecalhoRelatorio.Open;
  case TRotinaGenerica.MensagemTButtonPersonal(['Inteira', 'Meia', 'Timbrado']
                                               ,'Escolha o modelo de impressão?'
                                               ,'Modelo de Impressão'
                                               ,0
                                               ) of
    0: begin
      Self.preencherRelatorioDescricao(frxRelatorioAtestadoInteira);
      Self.preencherRelatorioPaciente(vIdPaciente, frxRelatorioAtestadoInteira);
      Self.preencherRelatorioDoutor(vIdDoutor, frxRelatorioAtestadoInteira);
      frxRelatorioAtestadoInteira.ShowReport(True);
    end;

    1: begin
      Self.preencherRelatorioDescricao(frxRelatorioAtestadoMeia);
      Self.preencherRelatorioPaciente(vIdPaciente, frxRelatorioAtestadoMeia);
      Self.preencherRelatorioDoutor(vIdDoutor, frxRelatorioAtestadoMeia);
      frxRelatorioAtestadoMeia.ShowReport(True);
    end;

    2: begin
      Self.preencherRelatorioDescricao(frxRelatorioAtestadoTimbrado);
      Self.preencherRelatorioPaciente(vIdPaciente, frxRelatorioAtestadoTimbrado);
      Self.preencherRelatorioDoutor(vIdDoutor, frxRelatorioAtestadoTimbrado);
      frxRelatorioAtestadoTimbrado.ShowReport(True);
    end;
  end; //Fim do Case
  DmRelatorioF.CdsCabecalhoRelatorio.Close;
  Self.ModalResult := mrOk;
end;

procedure TSmdAtestadoMedicoF.CbModeloPeriodoDesejadoClick(Sender: TObject);
begin
  inherited;
  Self.modeloAtestadoMedico;
end;

procedure TSmdAtestadoMedicoF.CbModeloPeriodoManhaClick(Sender: TObject);
begin
  inherited;
  Self.modeloAtestadoMedico;
end;

procedure TSmdAtestadoMedicoF.CbModeloPeriodoTardeClick(Sender: TObject);
begin
  inherited;
  Self.modeloAtestadoMedico;
end;

class function TSmdAtestadoMedicoF.chamaTela(const pIdPaciente, pIdDoutor, pIntervalo: Integer; const pHorario: TDateTime): Boolean;
begin
  Result := False;
  SmdAtestadoMedicoF := TSmdAtestadoMedicoF.Create(nil);
  try
    SmdAtestadoMedicoF.vIdPaciente := pIdPaciente;
    SmdAtestadoMedicoF.vIdDoutor   := pIdDoutor;
    SmdAtestadoMedicoF.vIntervalo  := pIntervalo;
    SmdAtestadoMedicoF.vHorario    := pHorario;

    //SmdAtestadoMedicoF.buscarDadosDoutor(SmdSolicitacaoExameF.vIdDoutor);
    //SmdAtestadoMedicoF.buscarDadosPaciente(SmdSolicitacaoExameF.vIdPaciente);


    SmdAtestadoMedicoF.ShowModal;
    if SmdAtestadoMedicoF.ModalResult = mrOk then
      Result := True
    else if SmdAtestadoMedicoF.ModalResult = mrCancel then
      Result := False;

  finally
    SmdAtestadoMedicoF.Release;
    SmdAtestadoMedicoF := nil;
  end;
end;

procedure TSmdAtestadoMedicoF.FormShow(Sender: TObject);
begin
  inherited;
  CbModeloPeriodoManha.Checked := True;
  TRotinaGenerica.tentaFocar(CbModeloPeriodoManha);
  Self.modeloAtestadoMedico;
  Self.inicializarHorasEDatas;
end;

procedure TSmdAtestadoMedicoF.inicializarHorasEDatas;
begin
  EdtlModeloPeriodoManhaHoraInicial.Time    := vHorario;
  EdtlModeloPeriodoManhaHoraFinal.Time      := IncMinute(vHorario, vIntervalo);

  EdtlModeloPeriodoTardeHoraInicial.Time    := vHorario;
  EdtlModeloPeriodoTardeHoraFinal.Time      := IncMinute(vHorario, vIntervalo);

  EdtlModeloPeriodoDesejadoHoraInicial.Time := vHorario;
  EdtlModeloPeriodoDesejadoHoraFinal.Time   := IncMinute(vHorario, vIntervalo);

  EdtlModeloPeriodoDesejadoDataInicial.Date := Date;
  EdtlModeloPeriodoDesejadoDataFinal.Date   := Date;
end;

procedure TSmdAtestadoMedicoF.modeloAtestadoMedico;
begin
  if (CbModeloPeriodoManha.Focused) and (CbModeloPeriodoManha.Checked) then
  begin
    PnlModeloPeriodoManha.Enabled    := True;
    PnlModeloPeriodoTarde.Enabled    := False;
    PnlModeloPeriodoDesejado.Enabled := False;

    PnlModeloPeriodoManha.Color    := clWhite;
    PnlModeloPeriodoTarde.Color    := clSilver;
    PnlModeloPeriodoDesejado.Color := clSilver;

    CbModeloPeriodoTarde.Checked    := False;
    CbModeloPeriodoDesejado.Checked := False;
  end else
  if (CbModeloPeriodoTarde.Focused) and (CbModeloPeriodoTarde.Checked) then
  begin
    PnlModeloPeriodoManha.Enabled    := False;
    PnlModeloPeriodoTarde.Enabled    := True;
    PnlModeloPeriodoDesejado.Enabled := False;

    PnlModeloPeriodoManha.Color    := clSilver;
    PnlModeloPeriodoTarde.Color    := clWhite;
    PnlModeloPeriodoDesejado.Color := clSilver;

    CbModeloPeriodoManha.Checked    := False;
    CbModeloPeriodoDesejado.Checked := False;
  end else
  if (CbModeloPeriodoDesejado.Focused) and (CbModeloPeriodoDesejado.Checked) then
  begin
    PnlModeloPeriodoManha.Enabled    := False;
    PnlModeloPeriodoTarde.Enabled    := False;
    PnlModeloPeriodoDesejado.Enabled := True;

    PnlModeloPeriodoManha.Color    := clSilver;
    PnlModeloPeriodoTarde.Color    := clSilver;
    PnlModeloPeriodoDesejado.Color := clWhite;

    CbModeloPeriodoManha.Checked := False;
    CbModeloPeriodoTarde.Checked := False;
  end;
end;

procedure TSmdAtestadoMedicoF.preencherRelatorioDescricao(pFrxRelatorio: TfrxReport);
begin
  if (CbModeloPeriodoManha.Checked) then
  begin
    TfrxMemoView( pFrxRelatorio.Pages[1].FindObject('mmDescricao') ).Text :=
      'Esteve em consulta hoje das '+ FormatDateTime('hh:mm', EdtlModeloPeriodoManhaHoraInicial.Time) +' as '+ FormatDateTime('hh:mm', EdtlModeloPeriodoManhaHoraFinal.Time)
     +'. Necessita afastar-se de suas ocupações para realizar exames Médicos no período da manhã por motivo de saúde.';
  end
  else
  if (CbModeloPeriodoTarde.Checked) then
  begin
    TfrxMemoView( pFrxRelatorio.Pages[1].FindObject('mmDescricao') ).Text :=
      'Esteve em consulta hoje das '+ FormatDateTime('hh:mm', EdtlModeloPeriodoTardeHoraInicial.Time) +' as '+ FormatDateTime('hh:mm', EdtlModeloPeriodoTardeHoraFinal.Time)
     +'. Necessita afastar-se de suas ocupações para realizar exames Médicos no período da tarde por motivo de saúde.';
  end
  else
  if (CbModeloPeriodoDesejado.Checked) then
  begin
    TfrxMemoView( pFrxRelatorio.Pages[1].FindObject('mmDescricao') ).Text :=
      'Esteve em consulta hoje das '+ FormatDateTime('hh:mm', EdtlModeloPeriodoDesejadoHoraInicial.Time) +' as '+ FormatDateTime('hh:mm', EdtlModeloPeriodoDesejadoHoraFinal.Time)
     +'. Necessita afastar-se de suas ocupações no período de '+ FormatDateTime('dd/mm/yyyy', EdtlModeloPeriodoDesejadoDataInicial.Date) +' à '+ FormatDateTime('dd/mm/yyyy', EdtlModeloPeriodoDesejadoDataFinal.Date) + ' por motivo de saúde.' ;
  end;
end;

procedure TSmdAtestadoMedicoF.preencherRelatorioDoutor(const pIdDoutor: Integer; pFrxRelatorio: TfrxReport);
var
  CdsDoutorTmp: TClientDataSet;
begin
  CdsDoutorTmp := TClientDataSet.Create(Nil);
  try
    CdsDoutorTmp.RemoteServer := DmConexaoF.LocalConnection;
    CdsDoutorTmp.ProviderName := 'dmDspConsulta';
    CdsDoutorTmp.Close;
    CdsDoutorTmp.CommandText := ' SELECT DOU.NOME '
                               +'       ,DOU.CRM '
                               +'       ,DOU.CPF '
                               +'       ,DOU.TELEFONE '
                               +'       ,DOU.CELULAR '
                               +'       ,DOU.EMAIL '
                               +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
                               +'   FROM DOUTOR DOU '
                               +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = DOU.IDCIDADE) '
                               +'  WHERE 1 = 1 '
                               +'    AND DOU.IDDOUTOR = '+TRotinaGenerica.IntToSql(pIdDoutor);
    CdsDoutorTmp.Open;
    if not(CdsDoutorTmp.IsEmpty) then
    begin
      TfrxMemoView( pFrxRelatorio.Pages[1].FindObject('mmDoutorNome') ).Text :=
        'Dr(a). ' + CdsDoutorTmp.FieldByName('NOME').AsString;

      TfrxMemoView( pFrxRelatorio.Pages[1].FindObject('mmDoutorCRM') ).Text :=
        'CRM: ' + CdsDoutorTmp.FieldByName('CRM').AsString;
    end;
  finally
    FreeAndNil(CdsDoutorTmp);
  end;
end;

procedure TSmdAtestadoMedicoF.preencherRelatorioPaciente(const pIdPaciente: Integer; pFrxRelatorio: TfrxReport);
var
  CdsPacienteTmp: TClientDataSet;
begin
  CdsPacienteTmp := TClientDataSet.Create(Nil);
  try
    CdsPacienteTmp.RemoteServer := DmConexaoF.LocalConnection;
    CdsPacienteTmp.ProviderName := 'dmDspConsulta';
    CdsPacienteTmp.Close;
    CdsPacienteTmp.CommandText := ' SELECT PAC.NOME '
                            +'       ,PAC.RG '
                            +'       ,PAC.CPF '
                            +'       ,PAC.TELEFONE1 '
                            +'       ,PAC.TELEFONE2 '
                            +'       ,PAC.DATANASCIMENTO '
                            +'       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) IDADE '
                            +'       ,PAC.EMAIL '
                            +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
                            +'   FROM PACIENTE PAC '
                            +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PAC.IDCIDADE) '
                            +'  WHERE 1 = 1 '
                            +'    AND PAC.IDPACIENTE = '+TRotinaGenerica.IntToSql(pIdPaciente);
    CdsPacienteTmp.Open;
    if not(CdsPacienteTmp.IsEmpty) then
    begin
      TfrxMemoView( pFrxRelatorio.Pages[1].FindObject('mmPacienteNome') ).Text :=
        ' ' + CdsPacienteTmp.FieldByName('NOME').AsString;
    end;

  finally
    FreeAndNil(CdsPacienteTmp);
  end;
end;

end.
