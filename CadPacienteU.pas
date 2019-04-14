unit CadPacienteU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaCadastroU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, ImgList, ActnList, ExtCtrls, StdCtrls, cxButtons,
  cxPC, ComCtrls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxCheckBox, cxDBEdit, cxDropDownEdit, cxCalendar, DB, DBClient, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxGroupBox;

type
  TCadPacienteF = class(TXTelaCadastroF)
    TsPrincipal: TcxTabSheet;
    TsConvenio: TcxTabSheet;
    EdCodigo: TcxButtonEdit;
    LblCodigo: TLabel;
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
    LblRG: TLabel;
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
    CdsPacienteCIDADEUF: TStringField;
    CdsPacienteSITUACAOREGISTRO: TStringField;
    CdsPacienteIDADE: TIntegerField;
    GbPacienteConvenio: TcxGroupBox;
    GridPacienteConvenio: TcxGrid;
    GridPacienteConvenioDBTableView1: TcxGridDBTableView;
    GridPacienteConvenioLevel1: TcxGridLevel;
    PnlPacienteConvenio: TPanel;
    LblConvenio: TLabel;
    BtnSalvarConvenio: TcxButton;
    BtnInlcuirConvenio: TcxButton;
    BtnExcluirConvenio: TcxButton;
    BtnCancelarConvenio: TcxButton;
    DbCodigoConvenio: TcxDBButtonEdit;
    DbDescricaoConvenio: TcxDBTextEdit;
    DsPacienteConvenio: TDataSource;
    CdsPacienteConvenio: TClientDataSet;
    CdsPacienteQryPacienteConvenio: TDataSetField;
    CdsPacienteConvenioIDPACIENTECONVENIO: TIntegerField;
    CdsPacienteConvenioIDPACIENTE: TIntegerField;
    CdsPacienteConvenioIDCONVENIO: TIntegerField;
    CdsPacienteConvenioIDPRINCIPAL: TSmallintField;
    CdsPacienteConvenioIDSITUACAOREGISTRO: TSmallintField;
    CdsPacienteConvenioCONVENIO: TStringField;
    CdsPacienteConvenioPRINCIPAL: TStringField;
    CdsPacienteConvenioSITUACAOREGISTRO: TStringField;
    GridPacienteConvenioDBTableView1IDCONVENIO: TcxGridDBColumn;
    GridPacienteConvenioDBTableView1CONVENIO: TcxGridDBColumn;
    GridPacienteConvenioDBTableView1PRINCIPAL: TcxGridDBColumn;
    GridPacienteConvenioDBTableView1SITUACAOREGISTRO: TcxGridDBColumn;
    CbAtivoConvenio: TcxDBCheckBox;
    CbPrincipalConvenio: TcxDBCheckBox;
    BtnAlterarConvenio: TcxButton;
    CdsPacienteConvenioDATAINCLUSAO: TDateField;
    DbIndicacao: TcxDBTextEdit;
    LblIndicacao: TLabel;
    CdsPacienteINDICACAO: TStringField;
    procedure AcaoIncluirExecute(Sender: TObject);
    procedure CdsPacienteAfterInsert(DataSet: TDataSet);
    procedure AcaoAlterarExecute(Sender: TObject);
    procedure AcaoExcluirExecute(Sender: TObject);
    procedure AcaoConsultarExecute(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DbCodigoCidadeExit(Sender: TObject);
    procedure DbCodigoCidadePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CdsPacienteConvenioAfterInsert(DataSet: TDataSet);
    procedure BtnInlcuirConvenioClick(Sender: TObject);
    procedure BtnAlterarConvenioClick(Sender: TObject);
    procedure BtnSalvarConvenioClick(Sender: TObject);
    procedure BtnCancelarConvenioClick(Sender: TObject);
    procedure BtnExcluirConvenioClick(Sender: TObject);
    procedure DbCodigoConvenioPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DbCodigoConvenioExit(Sender: TObject);
    procedure DbDataNascimentoExit(Sender: TObject);
    procedure CbPrincipalConvenioClick(Sender: TObject);
    procedure CbAtivoConvenioClick(Sender: TObject);

  private
    { Private declarations }
    procedure controleComponentePessoaConvenio;
    function dataIdade(const DataNascimento: String): Integer;
    procedure setarPacienteConvenioPrincipal(const pCdsConvenio: TClientDataSet);


  public
    { Public declarations }
    procedure clearData; override;
    procedure ControleBotoes; override;
    function validarAntesConfirmacao: Boolean; override;

  end;

var
  CadPacienteF: TCadPacienteF;

implementation

uses XLibGenericoU, DmConexaoU, XLibMessages, PesqCidadeU, PesqPacienteU,
  PesqConvenioU, LibRotinasSistemaU, SmdValidadorPacienteDuplicadoU;

{$R *.dfm}

procedure TCadPacienteF.AcaoAlterarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadPacienteF.AcaoConsultarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadPacienteF.AcaoExcluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  TRotinaGenerica.TentaFocar(EdCodigo);
end;

procedure TCadPacienteF.AcaoIncluirExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;

  // INCLUIR
  if Self.getOperacaoTela = opIncluir then
  begin
    CdsPaciente.Close;
    CdsPaciente.Open;
    CdsPaciente.Insert;
    SetaComponentes(dsInsert);
    EdCodigo.Enabled := False;
  end;
  ControleBotoes;
  TRotinaGenerica.TentaFocar(DbNome);
end;

procedure TCadPacienteF.BtnAlterarConvenioClick(Sender: TObject);
begin
  inherited;
  CdsPacienteConvenio.Edit;
  Self.controleComponentePessoaConvenio;
end;

procedure TCadPacienteF.BtnCancelarConvenioClick(Sender: TObject);
begin
  inherited;
  CdsPacienteConvenio.Cancel;
  Self.controleComponentePessoaConvenio;
end;

procedure TCadPacienteF.BtnExcluirConvenioClick(Sender: TObject);
begin
  inherited;
  CdsPacienteConvenio.Delete;
  Self.controleComponentePessoaConvenio;
end;

procedure TCadPacienteF.BtnInlcuirConvenioClick(Sender: TObject);
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

procedure TCadPacienteF.setarPacienteConvenioPrincipal(const pCdsConvenio: TClientDataSet);
var
  IdConvenio: Integer;
begin
  pCdsConvenio.DisableControls;
  if pCdsConvenio.FieldByName('IDPRINCIPAL').AsInteger = 1 then
  begin
    IdConvenio := pCdsConvenio.FieldByName('IDCONVENIO').AsInteger;
    pCdsConvenio.First;
    while not pCdsConvenio.Eof do
    begin
      pCdsConvenio.Edit;
      if IdConvenio = pCdsConvenio.FieldByName('IDCONVENIO').AsInteger then
      begin
        pCdsConvenio.FieldByName('IDPRINCIPAL').AsInteger := 1;
        pCdsConvenio.FieldByName('PRINCIPAL').AsString    := 'Sim';
      end
      else
      begin
        pCdsConvenio.FieldByName('IDPRINCIPAL').AsInteger := 0;
        pCdsConvenio.FieldByName('PRINCIPAL').AsString    := 'Não';
      end;
      pCdsConvenio.Post;
      pCdsConvenio.Next;
    end;
  end;
  pCdsConvenio.EnableControls;
end;

procedure TCadPacienteF.BtnSalvarConvenioClick(Sender: TObject);
begin
  inherited;
//  if CdsPacienteConvenio.Locate('IDCONVENIO', CdsPacienteConvenio.FieldByName('IDCONVENIO').AsInteger, []) then
//  begin
//    TRotinaGenerica.MensagemGeral('Convênio já cadastrado', MsgInformar, BtOk);
//  end
//  else
//  begin
    CdsPacienteConvenio.Post;
    setarPacienteConvenioPrincipal(CdsPacienteConvenio);
    Self.controleComponentePessoaConvenio;
//  end;
end;

procedure TCadPacienteF.CbAtivoConvenioClick(Sender: TObject);
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

procedure TCadPacienteF.CbPrincipalConvenioClick(Sender: TObject);
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

procedure TCadPacienteF.CdsPacienteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsPaciente.FieldByName('IDPACIENTE').AsInteger         := DmConexaoF.Proximo('PACIENTE', 'IDPACIENTE');
  CdsPaciente.FieldByName('DATAINCLUSAO').AsDateTime      := Date;
  CdsPaciente.FieldByName('DATANASCIMENTO').AsDateTime    := 2;
  CdsPaciente.FieldByName('CPF').AsString                 := EmptyStr;
  CdsPaciente.FieldByName('TELEFONE1').AsString           := EmptyStr;
  CdsPaciente.FieldByName('TELEFONE2').AsString           := EmptyStr;
  CdsPaciente.FieldByName('CEP').AsString                 := EmptyStr;
  CdsPaciente.FieldByName('ESTADOCIVIL').AsString         := 'Não Informado';
  CdsPaciente.FieldByName('SEXO').AsString                := 'Não Informado';
  CdsPaciente.FieldByName('IDSITUACAOREGISTRO').AsInteger := 1;
  CdsPaciente.FieldByName('IDADE').AsInteger              := Self.dataIdade(CdsPaciente.FieldByName('DATANASCIMENTO').AsString)
  //OrdenaAbas;
end;

procedure TCadPacienteF.CdsPacienteConvenioAfterInsert(DataSet: TDataSet);
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

procedure TCadPacienteF.clearData;
begin
  inherited;
  // Limpando Cds
  Self.CdsPaciente.Close;
  Self.CdsPaciente.CommandText :=
     ' SELECT PAC.* '
    +'       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) AS IDADE '
    +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM PACIENTE PAC '
    +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PAC.IDCIDADE) '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PAC.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = -1 '
    ;
  Self.CdsPaciente.Open;

  Self.SetaComponentes(dsBrowse);

  EdCodigo.Clear;
  EdCodigo.Enabled := True;

  PcTelaCadastro.ActivePage := TsPrincipal;
end;

function TCadPacienteF.dataIdade(const DataNascimento: String): Integer;
begin
  try
    StrToDate(DataNascimento);
  except
    TRotinaGenerica.MensagemGeral('Data de nascimento inválida!', MsgErro, BtOk);
    Abort;
  end;
  Result := Trunc( ( Date - StrToDate(DataNascimento) ) / 365.25);
end;

procedure TCadPacienteF.ControleBotoes;
begin
  inherited;
  Self.controleComponentePessoaConvenio;
end;

procedure TCadPacienteF.controleComponentePessoaConvenio;
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

  DbDescricaoConvenio.Enabled  :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( CdsPacienteConvenio.State in [dsInsert, dsEdit] );

  CbPrincipalConvenio.Enabled  :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( CdsPacienteConvenio.State in [dsInsert, dsEdit] );

  CbAtivoConvenio.Enabled      :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( CdsPacienteConvenio.State in [dsInsert, dsEdit] );

  GridPacienteConvenio.Enabled :=     ( CdsPaciente.State in [dsInsert, dsEdit] )
                                  and ( not (CdsPacienteConvenio.State in [dsInsert, dsEdit]) );
end;

procedure TCadPacienteF.DbCodigoCidadeExit(Sender: TObject);
begin
  inherited;
  if CdsPaciente.State in [dsInsert, dsEdit] then
  begin
    TPesqCidadeF.executaPesquisaCidade03(CdsPaciente, StrToIntDef(DbCodigoCidade.Text, 0));
  end;
end;

procedure TCadPacienteF.DbCodigoCidadePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqCidadeF.executaPesquisaCidade02(CdsPaciente);
end;

procedure TCadPacienteF.DbCodigoConvenioExit(Sender: TObject);
begin
  inherited;
  if CdsPaciente.State in [dsInsert, dsEdit] then
  begin
    TPesqConvenioF.executaPesquisaConvenio03(CdsPacienteConvenio, StrToIntDef(DbCodigoConvenio.Text, 0));
  end;
end;

procedure TCadPacienteF.DbCodigoConvenioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqConvenioF.executaPesquisaConvenio02(CdsPacienteConvenio);
end;

procedure TCadPacienteF.DbDataNascimentoExit(Sender: TObject);
begin
  inherited;
  if CdsPaciente.State in [dsInsert, dsEdit] then
  begin
    CdsPaciente.UpdateRecord;
    CdsPaciente.FieldByName('IDADE').AsInteger := Self.dataIdade(CdsPaciente.FieldByName('DATANASCIMENTO').AsString);
  end;
end;

procedure TCadPacienteF.EdCodigoExit(Sender: TObject);
var
  _SqlConsulta: String;
begin
  inherited;
  if Trim(EdCodigo.Text) <> EmptyStr then
  begin

    _SqlConsulta :=
       ' SELECT PAC.* '
      +'       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) AS IDADE '
      +'       ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM PACIENTE PAC '
      +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PAC.IDCIDADE) '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PAC.IDSITUACAOREGISTRO) '
      +'  WHERE 1 = 1 '
      ;

    // ALTERAR
    if Self.getOperacaoTela = opAlterar then
    begin
      CdsPaciente.Close;
      CdsPaciente.CommandText :=
        _SqlConsulta
       +' AND PAC.IDPACIENTE = '+QuotedStr(EdCodigo.Text);
      CdsPaciente.Open;
      if not(CdsPaciente.IsEmpty) then
      begin
        CdsPaciente.Edit;
        Self.SetaComponentes(dsEdit);
        EdCodigo.Enabled := False;
        TRotinaGenerica.TentaFocar(DbNome);
      end
      else
      begin
        TRotinaGenerica.MensagemGeral(msgCadPdrRegistroNaoExiste, MsgInformar, BtOk);
        Self.clearData;
        TRotinaGenerica.TentaFocar(EdCodigo);
      end;
      Self.ControleBotoes;
    end
    else

    // EXCLUIR / CONSULTAR
    if Self.getOperacaoTela in [opExcluir, opConsultar] then
    begin
      CdsPaciente.Close;
      CdsPaciente.CommandText :=
        _SqlConsulta
       +' AND PAC.IDPACIENTE = '+QuotedStr(EdCodigo.Text);
      CdsPaciente.Open;
      if not(CdsPaciente.IsEmpty) then
      begin
        Self.SetaComponentes(dsBrowse);
        EdCodigo.Enabled := False;
        TRotinaGenerica.TentaFocar(DbNome);
      end
      else
      begin
        TRotinaGenerica.MensagemGeral(msgCadPdrRegistroNaoExiste, MsgInformar, BtOk);
        Self.clearData;
        TRotinaGenerica.TentaFocar(EdCodigo);
      end;
      Self.ControleBotoes;
    end;
  end;
end;

procedure TCadPacienteF.EdCodigoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TPesqPacienteF.executaPesquisaPaciente01(EdCodigo);
end;

procedure TCadPacienteF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CadPacienteF.Release;
  CadPacienteF := nil;
end;

procedure TCadPacienteF.FormCreate(Sender: TObject);
begin
  Self.setCds(Self.CdsPaciente);
  inherited;
  Self.clearData;
end;

function TCadPacienteF.validarAntesConfirmacao: Boolean;
begin
  Result := inherited;
  if Self.getOperacaoTela in [opIncluir, opAlterar] then
  begin
    CdsPaciente.UpdateRecord;
    if (Trim(CdsPaciente.FieldByName('NOME').AsString) = EmptyStr) or (CdsPaciente.FieldByName('NOME').IsNull) then
    begin
      TRotinaGenerica.MensagemGeral(msgCadPacienteInformarNome, MsgInformar, BtOk);
      TRotinaGenerica.TentaFocar(DbNome);
      Result := False;
    end
    else if (Self.getOperacaoTela in [opIncluir]) and
      (TPessoa.nomeJaPossuiCadastro(CdsPaciente.FieldByName('NOME').AsString)) and
      (not TSmdValidadorPacienteDuplicadoF.valida(CdsPaciente.FieldByName('NOME').AsString))  then
    begin
      TRotinaGenerica.TentaFocar(DbNome);
      Result := False;
    end;
  end;
end;

Initialization
  RegisterClass(TCadPacienteF);

end.
