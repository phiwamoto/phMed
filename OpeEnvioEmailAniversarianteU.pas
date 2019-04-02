unit OpeEnvioEmailAniversarianteU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaOperacaoU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  ActnList, ExtCtrls, ImgList, cxPC, StdCtrls, cxButtons, ComCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBClient, cxCheckBox, DBCtrls,
  cxContainer, cxTextEdit, cxMemo, cxMaskEdit, cxButtonEdit;

type
  TOpeEnvioEmailAniversarianteF = class(TXTelaOperacaoF)
    BtnIncluir: TcxButton;
    AcaoEnviarEmail: TAction;
    DsAniversariante: TDataSource;
    CdsAniversariante: TClientDataSet;
    CdsAniversarianteIDPACIENTE: TIntegerField;
    CdsAniversarianteIDCIDADE: TIntegerField;
    CdsAniversarianteIDSITUACAOREGISTRO: TSmallintField;
    CdsAniversarianteDATAINCLUSAO: TDateField;
    CdsAniversarianteDATANASCIMENTO: TDateField;
    CdsAniversarianteNUMERO: TIntegerField;
    CdsAniversarianteESTADOCIVIL: TStringField;
    CdsAniversarianteSEXO: TStringField;
    CdsAniversarianteOBSERVACAO: TStringField;
    CdsAniversarianteNOME: TStringField;
    CdsAniversarianteENDERECO: TStringField;
    CdsAniversarianteBAIRRO: TStringField;
    CdsAniversarianteEMAIL: TStringField;
    CdsAniversarianteCOMPLEMENTO: TStringField;
    CdsAniversarianteRG: TStringField;
    CdsAniversarianteCPF: TStringField;
    CdsAniversarianteTELEFONE1: TStringField;
    CdsAniversarianteTELEFONE2: TStringField;
    CdsAniversarianteCEP: TStringField;
    CdsAniversarianteIDADE: TIntegerField;
    CdsAniversarianteCIDADEUF: TStringField;
    CdsAniversarianteSITUACAOREGISTRO: TStringField;
    CdsAniversarianteENVIAREMAIL: TIntegerField;
    TsPrincipal: TcxTabSheet;
    GridEnviarEmail: TcxGrid;
    GridEnviarEmailDBTableView1: TcxGridDBTableView;
    GridEnviarEmailDBTableView1IDPACIENTE: TcxGridDBColumn;
    GridEnviarEmailDBTableView1NOME: TcxGridDBColumn;
    GridEnviarEmailDBTableView1SEXO: TcxGridDBColumn;
    GridEnviarEmailDBTableView1DATANASCIMENTO: TcxGridDBColumn;
    GridEnviarEmailDBTableView1IDADE: TcxGridDBColumn;
    GridEnviarEmailDBTableView1CPF: TcxGridDBColumn;
    GridEnviarEmailDBTableView1TELEFONE1: TcxGridDBColumn;
    GridEnviarEmailDBTableView1CIDADEUF: TcxGridDBColumn;
    GridEnviarEmailDBTableView1ENVIAREMAIL: TcxGridDBColumn;
    GridEnviarEmailLevel1: TcxGridLevel;
    PnlEnviarEmail: TPanel;
    EdtAssunto: TcxTextEdit;
    LblAssunto: TLabel;
    LblMensagem: TLabel;
    EdtAnexo01: TcxButtonEdit;
    LblAnexos: TLabel;
    EdtAnexo02: TcxButtonEdit;
    EdtAnexo03: TcxButtonEdit;
    EdtMensagem: TcxMemo;
    BtnExcluirAnexo01: TcxButton;
    BtnExcluirAnexo02: TcxButton;
    BtnExcluirAnexo03: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AcaoEnviarEmailExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtAnexo01PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure EdtAnexo02PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure EdtAnexo03PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BtnExcluirAnexo01Click(Sender: TObject);
    procedure BtnExcluirAnexo02Click(Sender: TObject);
    procedure BtnExcluirAnexo03Click(Sender: TObject);
    procedure EdtMensagemEnter(Sender: TObject);
    procedure EdtMensagemExit(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  OpeEnvioEmailAniversarianteF: TOpeEnvioEmailAniversarianteF;

implementation

uses DmConexaoU, DmRotinaU, LibRotinasSistemaU, XLibGenericoU;

{$R *.dfm}

procedure TOpeEnvioEmailAniversarianteF.AcaoEnviarEmailExecute(Sender: TObject);
var
  ClinicaEmail, ClinicaSenha, ClinicaSmtp: String;
  ClinicaSmtpPorta: Integer;
  Anexos: TStringList;
begin
  inherited;
  CdsAniversariante.DisableControls;
  CdsAniversariante.First;
  Anexos := TStringList.Create;
  try
    if EdtAnexo01.Text <> EmptyStr then
      Anexos.Add(EdtAnexo01.Text);
    if EdtAnexo02.Text <> EmptyStr then
      Anexos.Add(EdtAnexo02.Text);
    if EdtAnexo03.Text <> EmptyStr then
      Anexos.Add(EdtAnexo03.Text);

    while not(CdsAniversariante.Eof) do
    begin
      if Boolean(CdsAniversariante.FieldByName('ENVIAREMAIL').AsInteger) then
      begin
        if TRotinaSistema.getEmailClinica(ClinicaEmail, ClinicaSenha, ClinicaSmtp, ClinicaSmtpPorta) then
        begin
          TRotinaSistema.EnviarEmailAnexo(
            CdsAniversariante.FieldByName('EMAIL').AsString
           ,EdtAssunto.Text
           ,EdtMensagem.Text
           ,ClinicaEmail
           ,ClinicaSenha
           ,ClinicaSmtp
           ,ClinicaSmtpPorta
           ,Anexos
          );
        end;
      end;
      CdsAniversariante.Next;
    end;
  finally
    FreeAndNil(Anexos);
  end;
  CdsAniversariante.EnableControls;

  EdtAssunto.Clear;
  EdtAnexo01.Clear;
  EdtAnexo02.Clear;
  EdtAnexo03.Clear;
  EdtMensagem.Clear;
end;

procedure TOpeEnvioEmailAniversarianteF.BtnExcluirAnexo01Click(
  Sender: TObject);
begin
  inherited;
  EdtAnexo01.Clear;
end;

procedure TOpeEnvioEmailAniversarianteF.BtnExcluirAnexo02Click(Sender: TObject);
begin
  inherited;
  EdtAnexo02.Clear;
end;

procedure TOpeEnvioEmailAniversarianteF.BtnExcluirAnexo03Click(Sender: TObject);
begin
  inherited;
  EdtAnexo03.Clear;
end;

procedure TOpeEnvioEmailAniversarianteF.EdtAnexo01PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  Arquivo: TOpenDialog;
begin
  inherited;
  Arquivo := TOpenDialog.Create(nil);
  try
    if Arquivo.Execute then
    begin
      EdtAnexo01.Text := Arquivo.FileName;
    end;
  finally
    FreeAndNil(Arquivo);
  end;
end;

procedure TOpeEnvioEmailAniversarianteF.EdtAnexo02PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  Arquivo: TOpenDialog;
begin
  inherited;
  Arquivo := TOpenDialog.Create(nil);
  try
    if Arquivo.Execute then
    begin
      EdtAnexo02.Text := Arquivo.FileName;
    end;
  finally
    FreeAndNil(Arquivo);
  end;
end;

procedure TOpeEnvioEmailAniversarianteF.EdtAnexo03PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  Arquivo: TOpenDialog;
begin
  inherited;
  Arquivo := TOpenDialog.Create(nil);
  try
    if Arquivo.Execute then
    begin
      EdtAnexo03.Text := Arquivo.FileName;
    end;
  finally
    FreeAndNil(Arquivo);
  end;
end;

procedure TOpeEnvioEmailAniversarianteF.EdtMensagemEnter(Sender: TObject);
begin
  inherited;
  Self.setNextValue(False);
end;

procedure TOpeEnvioEmailAniversarianteF.EdtMensagemExit(Sender: TObject);
begin
  inherited;
  Self.setNextValue(True);
end;

procedure TOpeEnvioEmailAniversarianteF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CdsAniversariante.Close;
  OpeEnvioEmailAniversarianteF.Release;
  OpeEnvioEmailAniversarianteF := nil;
end;

procedure TOpeEnvioEmailAniversarianteF.FormCreate(Sender: TObject);
begin
  inherited;
  CdsAniversariante.Close;
  CdsAniversariante.Open;
end;

procedure TOpeEnvioEmailAniversarianteF.FormShow(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.tentaFocar(EdtAssunto);
end;

Initialization
  RegisterClass(TOpeEnvioEmailAniversarianteF);

end.
