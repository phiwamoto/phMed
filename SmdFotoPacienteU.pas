unit SmdFotoPacienteU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaShowModalU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, DBCtrls, cxGroupBox, DB, DBClient,
  cxTextEdit, cxMemo, cxDBEdit, cxImage, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TSmdFotoPacienteF = class(TXTelaShowModalF)
    BtnCancelar: TcxButton;
    BtnConfirmar: TcxButton;
    GbInformacoesDoPaciente: TcxGroupBox;
    LblRG: TLabel;
    LblCPF: TLabel;
    LblTelefone1: TLabel;
    LblTelefone2: TLabel;
    LblPaciente: TLabel;
    DbNomePaciente: TDBText;
    DbtRG: TDBText;
    DbtCPF: TDBText;
    DbtTelefone1: TDBText;
    DbtTelefone2: TDBText;
    DbDataNascimento: TDBText;
    LblDataNascimento: TLabel;
    DbIdade: TDBText;
    LblIdade: TLabel;
    DbtEmail: TDBText;
    LblEmail: TLabel;
    DbPacienteCidadeUF: TDBText;
    LblPacienteCidadeUF: TLabel;
    DsAgendaFoto: TDataSource;
    CdsAgendaFoto: TClientDataSet;
    DsAgendaFotoItem: TDataSource;
    CdsAgendaFotoItem: TClientDataSet;
    CdsAgendaFotoIDPACIENTEFOTO: TIntegerField;
    CdsAgendaFotoIDPACIENTE: TIntegerField;
    CdsAgendaFotoIDDOUTOR: TIntegerField;
    CdsAgendaFotoIDAGENDA: TIntegerField;
    CdsAgendaFotoDATAINCLUSAO: TDateField;
    CdsAgendaFotoHORAINCLUSAO: TTimeField;
    CdsAgendaFotoPACIENTENOME: TStringField;
    CdsAgendaFotoPACIENTERG: TStringField;
    CdsAgendaFotoPACIENTECPF: TStringField;
    CdsAgendaFotoPACIENTETELEFONE01: TStringField;
    CdsAgendaFotoPACIENTETELEFONE02: TStringField;
    CdsAgendaFotoPACIENTEDATANASCIMENTO: TDateField;
    CdsAgendaFotoPACIENTEIDADE: TIntegerField;
    CdsAgendaFotoPACIENTEEMAIL: TStringField;
    CdsAgendaFotoPACIENTECIDADEUF: TStringField;
    CdsAgendaFotoDOUTORNOME: TStringField;
    CdsAgendaFotoDOUTORCRM: TStringField;
    CdsAgendaFotoDOUTORCPF: TStringField;
    CdsAgendaFotoDOUTORTELEFONE: TStringField;
    CdsAgendaFotoDOUTORCELULAR: TStringField;
    CdsAgendaFotoOSERVACAO: TStringField;
    CdsAgendaFotoItemIDPACIENTEFOTOITEM: TIntegerField;
    CdsAgendaFotoItemIDPACIENTEFOTO: TIntegerField;
    CdsAgendaFotoItemIDPACIENTE: TIntegerField;
    CdsAgendaFotoItemFOTODESCRICAO: TStringField;
    CdsAgendaFotoItemFOTOBINARIO: TBlobField;
    CdsAgendaFotoItemOBSERVACAO: TStringField;
    GbPacienteFoto: TcxGroupBox;
    PnlPacienteFotoBotao: TPanel;
    PnlPacienteFotoLista: TPanel;
    BtnIncluirFoto: TcxButton;
    BtnAlterarFoto: TcxButton;
    BtnSalvarFoto: TcxButton;
    BtnCancelarFoto: TcxButton;
    BtnExcluirFoto: TcxButton;
    DbObservaocao: TcxDBMemo;
    GridFotoItem: TcxGrid;
    GridFotoItemDBTableView1: TcxGridDBTableView;
    GridFotoItemLevel1: TcxGridLevel;
    GridFotoItemDBTableView1FOTODESCRICAO: TcxGridDBColumn;
    GridFotoItemDBTableView1FOTOBINARIO: TcxGridDBColumn;
    GridFotoItemDBTableView1OBSERVACAO: TcxGridDBColumn;
    DbPacienteFotos: TcxDBImage;
    LblFotoBinario: TLabel;
    LblObservacaoFoto: TLabel;
    CdsAgendaFotoItemPACIENTENOME: TStringField;
    CdsAgendaFotoItemDATAAGENDA: TDateField;
    CdsAgendaFotoItemDIRETORIOORIGEM: TStringField;
    procedure CdsAgendaFotoAfterInsert(DataSet: TDataSet);
    procedure CdsAgendaFotoItemAfterInsert(DataSet: TDataSet);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnIncluirFotoClick(Sender: TObject);
    procedure BtnAlterarFotoClick(Sender: TObject);
    procedure BtnSalvarFotoClick(Sender: TObject);
    procedure BtnCancelarFotoClick(Sender: TObject);
    procedure BtnExcluirFotoClick(Sender: TObject);

  private
    { Private declarations }
    vIdAgenda, vIdPaciente, vIdDoutor: Integer;
    vDataAgenda: TDateTime;

    procedure ControleBotoes;

  public
    { Public declarations }
    class function chamaTelaIncluir(const pIdAgenda, pIdPaciente, pIdDoutor: Integer; const pDataAgenda: TDateTime): Boolean;

    procedure buscarDadosDoutor(const pIdDoutor: Integer);
    procedure buscarDadosPaciente(const pIdPaciente: Integer);

  end;

var
  SmdFotoPacienteF: TSmdFotoPacienteF;

implementation

uses DmConexaoU, DmRotinaU, XLibGenericoU, ExtDlgs, ClipBrd;

{$R *.dfm}

procedure TSmdFotoPacienteF.BtnAlterarFotoClick(Sender: TObject);
Var
  ImagemFoto: TPicture;
  AbrirSelecaoImagem: TOpenPictureDialog;
begin
  CdsAgendaFotoItem.Edit;

  AbrirSelecaoImagem := TOpenPictureDialog.Create(nil);
  ImagemFoto         := TPicture.Create();
  try
    if AbrirSelecaoImagem.Execute then
    begin
      ImagemFoto.LoadFromFile(AbrirSelecaoImagem.FileName);
      Clipboard.Assign(ImagemFoto);
      DbPacienteFotos.PasteFromClipBoard;
      CdsAgendaFotoItem.FieldByName('FOTODESCRICAO').AsString := ExtractFileName(AbrirSelecaoImagem.FileName);
      CdsAgendaFotoItem.FieldByName('DIRETORIOORIGEM').AsString := AbrirSelecaoImagem.FileName;
    end;
  finally
    FreeAndNil(ImagemFoto);
    FreeAndNil(AbrirSelecaoImagem);
  end;
  Self.ControleBotoes;
end;

procedure TSmdFotoPacienteF.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;
end;

procedure TSmdFotoPacienteF.BtnCancelarFotoClick(Sender: TObject);
begin
  inherited;
  CdsAgendaFotoItem.Cancel;
  Self.ControleBotoes;
end;

procedure TSmdFotoPacienteF.BtnConfirmarClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TSmdFotoPacienteF.BtnExcluirFotoClick(Sender: TObject);
begin
  inherited;
  CdsAgendaFotoItem.Delete;
  Self.ControleBotoes;
end;

procedure TSmdFotoPacienteF.BtnIncluirFotoClick(Sender: TObject);
Var
  ImagemFoto: TPicture;
  AbrirSelecaoImagem: TOpenPictureDialog;
begin
  CdsAgendaFotoItem.Insert;

  AbrirSelecaoImagem := TOpenPictureDialog.Create(nil);
  ImagemFoto         := TPicture.Create();
  try
    if AbrirSelecaoImagem.Execute then
    begin
      ImagemFoto.LoadFromFile(AbrirSelecaoImagem.FileName);
      Clipboard.Assign(ImagemFoto);
      DbPacienteFotos.PasteFromClipBoard;
      CdsAgendaFotoItem.FieldByName('FOTODESCRICAO').AsString := ExtractFileName(AbrirSelecaoImagem.FileName);
      CdsAgendaFotoItem.FieldByName('DIRETORIOORIGEM').AsString := AbrirSelecaoImagem.FileName;
    end;
  finally
    FreeAndNil(ImagemFoto);
    FreeAndNil(AbrirSelecaoImagem);
  end;
  Self.ControleBotoes;
end;

procedure TSmdFotoPacienteF.BtnSalvarFotoClick(Sender: TObject);
begin
  inherited;
  CdsAgendaFotoItem.Post;
  Self.ControleBotoes;
end;

procedure TSmdFotoPacienteF.buscarDadosDoutor(const pIdDoutor: Integer);
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
      CdsAgendaFotoDOUTORNOME.AsString     := CdsDoutorTmp.FieldByName('NOME').AsString;
      CdsAgendaFotoDOUTORCRM.AsString      := CdsDoutorTmp.FieldByName('CRM').AsString;
      CdsAgendaFotoDOUTORCPF.AsString      := CdsDoutorTmp.FieldByName('CPF').AsString;
      CdsAgendaFotoDOUTORTELEFONE.AsString := CdsDoutorTmp.FieldByName('TELEFONE').AsString;
      CdsAgendaFotoDOUTORCELULAR.AsString  := CdsDoutorTmp.FieldByName('CELULAR').AsString;
    end;

  finally
    FreeAndNil(CdsDoutorTmp);
  end;
end;

procedure TSmdFotoPacienteF.buscarDadosPaciente(const pIdPaciente: Integer);
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
      CdsAgendaFotoPACIENTENOME.AsString           := CdsPacienteTmp.FieldByName('NOME').AsString;
      CdsAgendaFotoPACIENTERG.AsString             := CdsPacienteTmp.FieldByName('RG').AsString;
      CdsAgendaFotoPACIENTECPF.AsString            := CdsPacienteTmp.FieldByName('CPF').AsString;
      CdsAgendaFotoPACIENTETELEFONE01.AsString     := CdsPacienteTmp.FieldByName('TELEFONE1').AsString;
      CdsAgendaFotoPACIENTETELEFONE02.AsString     := CdsPacienteTmp.FieldByName('TELEFONE2').AsString;
      CdsAgendaFotoPACIENTEDATANASCIMENTO.AsString := CdsPacienteTmp.FieldByName('DATANASCIMENTO').AsString;
      CdsAgendaFotoPACIENTEIDADE.AsString          := CdsPacienteTmp.FieldByName('IDADE').AsString;
      CdsAgendaFotoPACIENTEEMAIL.AsString          := CdsPacienteTmp.FieldByName('EMAIL').AsString;
      CdsAgendaFotoPACIENTECIDADEUF.AsString       := CdsPacienteTmp.FieldByName('CIDADEUF').AsString;
    end;

  finally
    FreeAndNil(CdsPacienteTmp);
  end;
end;

procedure TSmdFotoPacienteF.CdsAgendaFotoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsAgendaFoto.FieldByName('IDPACIENTEFOTO').AsInteger := DmConexaoF.Proximo('PACIENTEFOTO', 'IDPACIENTEFOTO', ' IDPACIENTE = '+TRotinaGenerica.IntToSql(Self.vIdPaciente)+' ');
  CdsAgendaFoto.FieldByName('DATAINCLUSAO').AsDateTime  := Date;
  CdsAgendaFoto.FieldByName('HORAINCLUSAO').AsDateTime  := Time;
  CdsAgendaFoto.FieldByName('IDAGENDA').AsInteger       := Self.vIdAgenda;
  CdsAgendaFoto.FieldByName('IDDOUTOR').AsInteger       := Self.vIdDoutor;
  CdsAgendaFoto.FieldByName('IDPACIENTE').AsInteger     := Self.vIdPaciente;
end;

procedure TSmdFotoPacienteF.CdsAgendaFotoItemAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Self.CdsAgendaFotoItem.FieldByName('IDPACIENTEFOTOITEM').AsInteger := DmConexaoF.ProximoFilha(Self.CdsAgendaFotoItem, 'IDPACIENTEFOTOITEM');
  Self.CdsAgendaFotoItem.FieldByName('IDPACIENTEFOTO').AsInteger     := CdsAgendaFotoIDPACIENTEFOTO.AsInteger;
  Self.CdsAgendaFotoItem.FieldByName('IDPACIENTE').AsInteger         := Self.vIdPaciente;
  Self.CdsAgendaFotoItem.FieldByName('PACIENTENOME').AsString        := CdsAgendaFotoPACIENTENOME.AsString;
  Self.CdsAgendaFotoItem.FieldByName('DATAAGENDA').AsDateTime        := Self.vDataAgenda;
end;

class function TSmdFotoPacienteF.chamaTelaIncluir(const pIdAgenda, pIdPaciente, pIdDoutor: Integer; const pDataAgenda: TDateTime): Boolean;
begin
  Result := False;
  SmdFotoPacienteF := TSmdFotoPacienteF.Create(nil);
  try
    SmdFotoPacienteF.vIdAgenda   := pIdAgenda;
    SmdFotoPacienteF.vIdPaciente := pIdPaciente;
    SmdFotoPacienteF.vIdDoutor   := pIdDoutor;
    SmdFotoPacienteF.vDataAgenda := pDataAgenda;

    SmdFotoPacienteF.CdsAgendaFoto.Close;
    SmdFotoPacienteF.CdsAgendaFoto.CommandText :=
       ' SELECT PFO.* '
      +'       ,PAC.NOME AS PACIENTENOME '
      +'       ,PAC.RG AS PACIENTERG '
      +'       ,PAC.CPF AS PACIENTECPF '
      +'       ,PAC.TELEFONE1 AS PACIENTETELEFONE01 '
      +'       ,PAC.TELEFONE2 AS PACIENTETELEFONE02 '
      +'       ,PAC.DATANASCIMENTO AS PACIENTEDATANASCIMENTO '
      +'       ,CAST(LEFT( (( (CURRENT_DATE - PAC.DATANASCIMENTO)-1 ) / 365.25), 3) AS INT) PACIENTEIDADE '
      +'       ,PAC.EMAIL AS PACIENTEEMAIL '
      +'       ,(CIDPAC.CIDADE || '' - '' || CIDPAC.UF) AS PACIENTECIDADEUF '
      +'       ,DOU.NOME AS DOUTORNOME '
      +'       ,DOU.CRM AS DOUTORCRM '
      +'       ,DOU.CPF AS DOUTORCPF '
      +'       ,DOU.TELEFONE AS DOUTORTELEFONE '
      +'       ,DOU.CELULAR AS DOUTORCELULAR '
      +'   FROM PACIENTEFOTO PFO '
      +'        JOIN PACIENTE PAC ON (PAC.IDPACIENTE = PFO.IDPACIENTE) '
      +'        LEFT JOIN CIDADE CIDPAC ON (CIDPAC.IDCIDADE = PAC.IDCIDADE) '
      +'        JOIN DOUTOR DOU ON (DOU.IDDOUTOR = PFO.IDDOUTOR) '
      +'  WHERE 1 = -1 '
      ;

    SmdFotoPacienteF.CdsAgendaFoto.Open;
    SmdFotoPacienteF.CdsAgendaFotoItem.Open;

    SmdFotoPacienteF.CdsAgendaFoto.Insert;

    SmdFotoPacienteF.buscarDadosDoutor(SmdFotoPacienteF.vIdDoutor);
    SmdFotoPacienteF.buscarDadosPaciente(SmdFotoPacienteF.vIdPaciente);

    SmdFotoPacienteF.ControleBotoes;
    SmdFotoPacienteF.ShowModal;
    if SmdFotoPacienteF.ModalResult = mrOk then
    begin
      SmdFotoPacienteF.CdsAgendaFoto.Post;
      SmdFotoPacienteF.CdsAgendaFoto.ApplyUpdates(0);
      SmdFotoPacienteF.CdsAgendaFotoItem.ApplyUpdates(0);
      Result := True;
    end
    else if SmdFotoPacienteF.ModalResult = mrCancel then
    begin
      SmdFotoPacienteF.CdsAgendaFoto.CancelUpdates;
      Result := False;
    end;

  finally
    SmdFotoPacienteF.CdsAgendaFotoItem.Close;
    SmdFotoPacienteF.CdsAgendaFoto.Close;
    SmdFotoPacienteF.Release;
    SmdFotoPacienteF := nil;
  end;
end;

procedure TSmdFotoPacienteF.ControleBotoes;
begin
  BtnIncluirFoto.Enabled :=     ( not (CdsAgendaFotoItem.State in [dsInsert, dsEdit]) )
                            and ( CdsAgendaFoto.State in [dsInsert, dsEdit] );

  BtnAlterarFoto.Enabled :=     ( not (CdsAgendaFotoItem.State in [dsInsert, dsEdit]) )
                            and ( not CdsAgendaFotoItem.IsEmpty )
                            and ( CdsAgendaFoto.State in [dsInsert, dsEdit] );

  BtnSalvarFoto.Enabled  :=     ( CdsAgendaFotoItem.State in [dsInsert, dsEdit] )
                            and ( CdsAgendaFoto.State in [dsInsert, dsEdit] );

  BtnCancelarFoto.Enabled    :=     ( CdsAgendaFotoItem.State in [dsInsert, dsEdit] )
                            and ( CdsAgendaFoto.State in [dsInsert, dsEdit] );

  BtnExcluirFoto.Enabled :=     ( CdsAgendaFotoItem.State in [dsInsert, dsEdit] )
                            and ( not CdsAgendaFotoItem.IsEmpty )
                            and ( CdsAgendaFoto.State in [dsInsert, dsEdit] );



  DbPacienteFotos.Enabled  :=     ( CdsAgendaFotoItem.State in [dsInsert, dsEdit] )
                              and ( CdsAgendaFoto.State in [dsInsert, dsEdit] );

  DbObservaocao.Enabled    :=     ( CdsAgendaFotoItem.State in [dsInsert, dsEdit] )
                              and ( CdsAgendaFoto.State in [dsInsert, dsEdit] );

  GridFotoItem.Enabled     :=     ( not (CdsAgendaFotoItem.State in [dsInsert, dsEdit]) )
                              and ( CdsAgendaFoto.State in [dsInsert, dsEdit] );
end;

end.
