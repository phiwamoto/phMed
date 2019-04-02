unit PesqPessoaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPesquisaPadraoU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, DBClient, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  cxButtons, ExtCtrls, cxButtonEdit, XLibGenericoU, cxTextEdit, cxContainer,
  cxMaskEdit, cxDropDownEdit;

type
  TPesqPessoaF = class(TXPesquisaPadrao)
    CdsPesquisaIDPESSOA: TLargeintField;
    CdsPesquisaIDCIDADE: TIntegerField;
    CdsPesquisaIDTIPOPESSOA: TSmallintField;
    CdsPesquisaIDSITUACAOREGISTRO: TSmallintField;
    CdsPesquisaDATAINCLUSAO: TDateField;
    CdsPesquisaCEP: TStringField;
    CdsPesquisaTELEFONE01: TStringField;
    CdsPesquisaTELEFONE02: TStringField;
    CdsPesquisaCPFCNPJ: TStringField;
    CdsPesquisaRGIE: TStringField;
    CdsPesquisaBAIRRO: TStringField;
    CdsPesquisaNOMEFANTASIA: TStringField;
    CdsPesquisaRAZAOSOCIAL: TStringField;
    CdsPesquisaENDERECO: TStringField;
    CdsPesquisaEMAIL: TStringField;
    CdsPesquisaCOMPLEMENTO: TStringField;
    CdsPesquisaOBERVACAO: TStringField;
    CdsPesquisaCIDADE: TStringField;
    CdsPesquisaTIPOPESSOA: TStringField;
    CdsPesquisaSITUACAOREGISTRO: TStringField;
    GridPesquisaDBTableView1DATAINCLUSAO: TcxGridDBColumn;
    GridPesquisaDBTableView1TELEFONE01: TcxGridDBColumn;
    GridPesquisaDBTableView1TELEFONE02: TcxGridDBColumn;
    GridPesquisaDBTableView1CPFCNPJ: TcxGridDBColumn;
    GridPesquisaDBTableView1NOMEFANTASIA: TcxGridDBColumn;
    GridPesquisaDBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    GridPesquisaDBTableView1CIDADE: TcxGridDBColumn;
    GridPesquisaDBTableView1TIPOPESSOA: TcxGridDBColumn;
    GridPesquisaDBTableView1SITUACAOREGISTRO: TcxGridDBColumn;
    EdtNomeNomeFantasia: TcxTextEdit;
    Label1: TLabel;
    EdtTelefones: TcxTextEdit;
    Label2: TLabel;
    EdtCidadeUF: TcxTextEdit;
    Label3: TLabel;
    CbTipoPessoa: TcxComboBox;
    Label4: TLabel;
    BtnLimpar: TcxButton;
    procedure CdsPesquisaAfterScroll(DataSet: TDataSet);
    procedure EdtNomeNomeFantasiaPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtTelefonesPropertiesChange(Sender: TObject);
    procedure EdtCidadeUFPropertiesChange(Sender: TObject);
    procedure CbTipoPessoaPropertiesChange(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    class function executaPesquisaPessoa01(pId: TcxButtonEdit): Boolean;
    class function executaPesquisaPessoa02(pCds: TClientDataSet): Boolean;
    class function executaPesquisaPessoa03(pCds: TClientDataSet; pCpfCnpj: String): Boolean;

    class function executaPesquisaPessoaProcesso01(pCds: TClientDataSet): Boolean;
    class function executaPesquisaPessoaProcesso02(pCds: TClientDataSet; pCpfCnpj: String): Boolean;

    class function executaPesquisaPessoaAgendaCompromisso01(pCds: TClientDataSet): Boolean;
    class function executaPesquisaPessoaAgendaCompromisso02(pCds: TClientDataSet; pCpfCnpj: String): Boolean;

    class function executaPesquisaRelatorio01(pId: TcxButtonEdit; pNomeFantasia: TcxTextEdit): Boolean;
    class function executaPesquisaRelatorio02(pId: TcxButtonEdit; pNomeFantasia: TcxTextEdit): Boolean;

    function validarCpfCnpj(pNum: String): Boolean;
    function geraIdPessoa(pCpfCnpj: String): Int64;

    procedure executarFiltro;
  end;

var
  PesqPessoaF: TPesqPessoaF;

implementation

{$R *.dfm}

procedure TPesqPessoaF.CbTipoPessoaPropertiesChange(Sender: TObject);
begin
  inherited;
  if CbTipoPessoa.Focused then
    Self.executarFiltro;
end;

procedure TPesqPessoaF.CdsPesquisaAfterScroll(DataSet: TDataSet);
begin
  inherited;
//  CPF   = 999\.999\.999\-99;0;_
//  CNPJ  = 999\.999\.999/9999\-99;0;_
//  FONE  = !\(99\)9999-9999;0;_
//  CEP   = 99999\-999;0;_

  if CdsPesquisa.Active then
  begin
    if CdsPesquisaIDTIPOPESSOA.AsInteger = 1 then
      CdsPesquisaCPFCNPJ.EditMask := '999\.999\.999\-99;0;_'
    else
    if CdsPesquisaIDTIPOPESSOA.AsInteger = 2 then
      CdsPesquisaCPFCNPJ.EditMask := '999\.999\.999/9999\-9;0;_';
  end;
end;

procedure TPesqPessoaF.BtnLimparClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  // Inicializando componentes filtros
  EdtNomeNomeFantasia.Clear;
  EdtTelefones.Clear;
  EdtCidadeUF.Clear;
  CbTipoPessoa.ItemIndex := 0;

  // Retirando os agrupamentos e voltando as colunas ao normal
  GridPesquisaDBTableView1.Controller.ClearGrouping;
  for I := 0 to GridPesquisaDBTableView1.ColumnCount - 1 do
  begin
    // Limpando a ordenação de cada coluna se possuir, voltando a original, NONE
    GridPesquisaDBTableView1.Columns[i].SortOrder := soNone;
    // Limpando o filtro de cada coluna, apagando as seleções
    GridPesquisaDBTableView1.Columns[i].Filtered  := False;
  end;

  executarFiltro;
end;

procedure TPesqPessoaF.EdtCidadeUFPropertiesChange(Sender: TObject);
begin
  inherited;
  if EdtCidadeUF.Focused then
    Self.executarFiltro;
end;

procedure TPesqPessoaF.EdtNomeNomeFantasiaPropertiesChange(Sender: TObject);
begin
  inherited;
  if EdtNomeNomeFantasia.Focused then
    Self.executarFiltro;
end;

procedure TPesqPessoaF.EdtTelefonesPropertiesChange(Sender: TObject);
begin
  inherited;
  if EdtTelefones.Focused then
    Self.executarFiltro;

end;

class function TPesqPessoaF.executaPesquisaPessoa01(pId: TcxButtonEdit): Boolean;
//var
//  Formulario: TXTelaCadastroFilhaF;
begin
  Result := False;
  PesqPessoaF := TPesqPessoaF.Create(nil);
  try
    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.CdsPesquisa.Open;
    PesqPessoaF.ShowModal;
    if PesqPessoaF.ModalResult = mrOk then
    begin
      pId.Text := PesqPessoaF.CdsPesquisaCPFCNPJ.AsString;
      Result := True;
    end;
  finally
    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.Release;
    PesqPessoaF := nil;
  end;
end;

class function TPesqPessoaF.executaPesquisaPessoa02(pCds: TClientDataSet): Boolean;
begin
  Result := False;
  PesqPessoaF := TPesqPessoaF.Create(nil);
  try
    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.CdsPesquisa.Open;
    PesqPessoaF.ShowModal;
    if PesqPessoaF.ModalResult = mrOk then
    begin
      pCds.FieldByName('IDPESSOA').AsString     := PesqPessoaF.CdsPesquisaIDPESSOA.AsString;
      pCds.FieldByName('NOMEFANTASIA').AsString := PesqPessoaF.CdsPesquisaNOMEFANTASIA.AsString;
      pCds.FieldByName('CPFCNPJ').AsString      := PesqPessoaF.CdsPesquisaCPFCNPJ.AsString;
      Result := True;
    end;
  finally
    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.Release;
    PesqPessoaF := nil;
  end;
end;

class function TPesqPessoaF.executaPesquisaPessoa03(pCds: TClientDataSet; pCpfCnpj: String): Boolean;
var
  IdPessoa: Int64;
begin
  Result := False;
  PesqPessoaF := TPesqPessoaF.Create(nil);
  try
    IdPessoa := PesqPessoaF.geraIdPessoa(pCpfCnpj);

    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.CdsPesquisa.CommandText :=
       ' SELECT PES.* '
      +'       ,(CID.CIDADE || '' - '' ||CID.UF) AS CIDADE '
      +'       ,TPE.DESCRICAO AS TIPOPESSOA '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM PESSOA PES '
      +'        JOIN TIPOPESSOA TPE ON (TPE.IDTIPOPESSOA = PES.IDTIPOPESSOA) '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PES.IDSITUACAOREGISTRO) '
      +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PES.IDCIDADE) '
      +'  WHERE 1 = 1 '
      +'    AND PES.IDPESSOA = '+IntToStr(IdPessoa);
      ;
    PesqPessoaF.CdsPesquisa.Open;

    if not PesqPessoaF.CdsPesquisa.IsEmpty then
    begin
      pCds.FieldByName('IDPESSOA').AsString     := PesqPessoaF.CdsPesquisaIDPESSOA.AsString;
      pCds.FieldByName('NOMEFANTASIA').AsString := PesqPessoaF.CdsPesquisaNOMEFANTASIA.AsString;
      pCds.FieldByName('CPFCNPJ').AsString      := PesqPessoaF.CdsPesquisaCPFCNPJ.AsString;

//      if PesqPessoaF.CdsPesquisaIDTIPOPESSOA.AsInteger = 1 then
//        pCds.FieldByName('CPFCNPJ').EditMask := '999\.999\.999\-99;0;_'
//      else
//      if PesqPessoaF.CdsPesquisaIDTIPOPESSOA.AsInteger = 2 then
//        pCds.FieldByName('CPFCNPJ').EditMask := '999\.999\.999/9999\-9;0;_';

      Result := True;
    end
    else
    begin
      pCds.FieldByName('IDPESSOA').Clear;
      pCds.FieldByName('NOMEFANTASIA').Clear;
      pCds.FieldByName('CPFCNPJ').Clear;
    end;
  finally
    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.Release;
    PesqPessoaF := nil;
  end;
end;

class function TPesqPessoaF.executaPesquisaPessoaAgendaCompromisso01(pCds: TClientDataSet): Boolean;
begin
  Result := False;
  PesqPessoaF := TPesqPessoaF.Create(nil);
  try
    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.CdsPesquisa.Open;
    PesqPessoaF.ShowModal;
    if PesqPessoaF.ModalResult = mrOk then
    begin
      pCds.FieldByName('IDPESSOA').AsString     := PesqPessoaF.CdsPesquisaIDPESSOA.AsString;
      pCds.FieldByName('NOMEFANTASIA').AsString := PesqPessoaF.CdsPesquisaNOMEFANTASIA.AsString;
      pCds.FieldByName('CPFCNPJ').AsString      := PesqPessoaF.CdsPesquisaCPFCNPJ.AsString;
      pCds.FieldByName('TELEFONE01').AsString   := PesqPessoaF.CdsPesquisaTELEFONE01.AsString;
      pCds.FieldByName('NOME').AsString         := PesqPessoaF.CdsPesquisaNOMEFANTASIA.AsString;
      pCds.FieldByName('TELEFONE').AsString     := PesqPessoaF.CdsPesquisaTELEFONE01.AsString;
      Result := True;
    end;
  finally
    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.Release;
    PesqPessoaF := nil;
  end;
end;

class function TPesqPessoaF.executaPesquisaPessoaAgendaCompromisso02(pCds: TClientDataSet; pCpfCnpj: String): Boolean;
var
  IdPessoa: Int64;
begin
  Result := False;
  PesqPessoaF := TPesqPessoaF.Create(nil);
  try
    IdPessoa := PesqPessoaF.geraIdPessoa(pCpfCnpj);

    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.CdsPesquisa.CommandText :=
       ' SELECT PES.* '
      +'       ,(CID.CIDADE || '' - '' ||CID.UF) AS CIDADE '
      +'       ,TPE.DESCRICAO AS TIPOPESSOA '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM PESSOA PES '
      +'        JOIN TIPOPESSOA TPE ON (TPE.IDTIPOPESSOA = PES.IDTIPOPESSOA) '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PES.IDSITUACAOREGISTRO) '
      +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PES.IDCIDADE) '
      +'  WHERE 1 = 1 '
      +'    AND PES.IDPESSOA = '+IntToStr(IdPessoa);
      ;
    PesqPessoaF.CdsPesquisa.Open;

    if not PesqPessoaF.CdsPesquisa.IsEmpty then
    begin
      pCds.FieldByName('IDPESSOA').AsString     := PesqPessoaF.CdsPesquisaIDPESSOA.AsString;
      pCds.FieldByName('NOMEFANTASIA').AsString := PesqPessoaF.CdsPesquisaNOMEFANTASIA.AsString;
      pCds.FieldByName('CPFCNPJ').AsString      := PesqPessoaF.CdsPesquisaCPFCNPJ.AsString;
      pCds.FieldByName('TELEFONE01').AsString   := PesqPessoaF.CdsPesquisaTELEFONE01.AsString;
      pCds.FieldByName('NOME').AsString         := PesqPessoaF.CdsPesquisaNOMEFANTASIA.AsString;
      pCds.FieldByName('TELEFONE').AsString     := PesqPessoaF.CdsPesquisaTELEFONE01.AsString;
      Result := True;
    end
    else
    begin
      pCds.FieldByName('IDPESSOA').Clear;
      pCds.FieldByName('NOMEFANTASIA').Clear;
      pCds.FieldByName('CPFCNPJ').Clear;
      pCds.FieldByName('TELEFONE01').Clear;
      //pCds.FieldByName('NOME').Clear;
      //pCds.FieldByName('TELEFONE').Clear;
    end;
  finally
    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.Release;
    PesqPessoaF := nil;
  end;
end;

class function TPesqPessoaF.executaPesquisaPessoaProcesso01(pCds: TClientDataSet): Boolean;
begin
  Result := False;
  PesqPessoaF := TPesqPessoaF.Create(nil);
  try
    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.CdsPesquisa.Open;
    PesqPessoaF.ShowModal;
    if PesqPessoaF.ModalResult = mrOk then
    begin
      pCds.FieldByName('IDPESSOA').AsString     := PesqPessoaF.CdsPesquisaIDPESSOA.AsString;
      pCds.FieldByName('NOMEFANTASIA').AsString := PesqPessoaF.CdsPesquisaNOMEFANTASIA.AsString;
      pCds.FieldByName('CPFCNPJ').AsString      := PesqPessoaF.CdsPesquisaCPFCNPJ.AsString;
      pCds.FieldByName('IDTIPOPESSOA').AsString := PesqPessoaF.CdsPesquisaIDTIPOPESSOA.AsString;
      pCds.FieldByName('TELEFONE01').AsString   := PesqPessoaF.CdsPesquisaTELEFONE01.AsString;
      pCds.FieldByName('TELEFONE02').AsString   := PesqPessoaF.CdsPesquisaTELEFONE02.AsString;
      Result := True;
    end;
  finally
    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.Release;
    PesqPessoaF := nil;
  end;
end;

class function TPesqPessoaF.executaPesquisaPessoaProcesso02(pCds: TClientDataSet; pCpfCnpj: String): Boolean;
var
  IdPessoa: Int64;
begin
  Result := False;
  PesqPessoaF := TPesqPessoaF.Create(nil);
  try
    IdPessoa := PesqPessoaF.geraIdPessoa(pCpfCnpj);

    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.CdsPesquisa.CommandText :=
       ' SELECT PES.* '
      +'       ,(CID.CIDADE || '' - '' ||CID.UF) AS CIDADE '
      +'       ,TPE.DESCRICAO AS TIPOPESSOA '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM PESSOA PES '
      +'        JOIN TIPOPESSOA TPE ON (TPE.IDTIPOPESSOA = PES.IDTIPOPESSOA) '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PES.IDSITUACAOREGISTRO) '
      +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PES.IDCIDADE) '
      +'  WHERE 1 = 1 '
      +'    AND PES.IDPESSOA = '+IntToStr(IdPessoa);
      ;
    PesqPessoaF.CdsPesquisa.Open;

    if not PesqPessoaF.CdsPesquisa.IsEmpty then
    begin
      pCds.FieldByName('IDPESSOA').AsString     := PesqPessoaF.CdsPesquisaIDPESSOA.AsString;
      pCds.FieldByName('NOMEFANTASIA').AsString := PesqPessoaF.CdsPesquisaNOMEFANTASIA.AsString;
      pCds.FieldByName('CPFCNPJ').AsString      := PesqPessoaF.CdsPesquisaCPFCNPJ.AsString;
      pCds.FieldByName('IDTIPOPESSOA').AsString := PesqPessoaF.CdsPesquisaIDTIPOPESSOA.AsString;
      pCds.FieldByName('TELEFONE01').AsString   := PesqPessoaF.CdsPesquisaTELEFONE01.AsString;
      pCds.FieldByName('TELEFONE02').AsString   := PesqPessoaF.CdsPesquisaTELEFONE02.AsString;
      Result := True;
    end
    else
    begin
      pCds.FieldByName('IDPESSOA').Clear;
      pCds.FieldByName('NOMEFANTASIA').Clear;
      pCds.FieldByName('CPFCNPJ').Clear;
      pCds.FieldByName('IDTIPOPESSOA').Clear;
      pCds.FieldByName('TELEFONE01').Clear;
      pCds.FieldByName('TELEFONE02').Clear;
    end;
  finally
    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.Release;
    PesqPessoaF := nil;
  end;
end;

class function TPesqPessoaF.executaPesquisaRelatorio01(pId: TcxButtonEdit; pNomeFantasia: TcxTextEdit): Boolean;
begin
  Result := False;
  PesqPessoaF := TPesqPessoaF.Create(nil);
  try
    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.CdsPesquisa.Open;
    PesqPessoaF.ShowModal;
    if PesqPessoaF.ModalResult = mrOk then
    begin
      pId.Text           := PesqPessoaF.CdsPesquisaCPFCNPJ.AsString;
      pNomeFantasia.Text := PesqPessoaF.CdsPesquisaNOMEFANTASIA.AsString;
      Result := True;
    end;
  finally
    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.Release;
    PesqPessoaF := nil;
  end;
end;

class function TPesqPessoaF.executaPesquisaRelatorio02(pId: TcxButtonEdit; pNomeFantasia: TcxTextEdit): Boolean;
var
  IdPessoa: Int64;
begin
  Result := False;

  PesqPessoaF := TPesqPessoaF.Create(nil);
  try
    IdPessoa := PesqPessoaF.geraIdPessoa(pid.Text);

    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.CdsPesquisa.CommandText :=
       ' SELECT PES.* '
      +'       ,(CID.CIDADE || '' - '' ||CID.UF) AS CIDADE '
      +'       ,TPE.DESCRICAO AS TIPOPESSOA '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM PESSOA PES '
      +'        JOIN TIPOPESSOA TPE ON (TPE.IDTIPOPESSOA = PES.IDTIPOPESSOA) '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PES.IDSITUACAOREGISTRO) '
      +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PES.IDCIDADE) '
      +'  WHERE 1 = 1 '
      +'    AND PES.IDPESSOA = '+IntToStr(IdPessoa);
      ;
    PesqPessoaF.CdsPesquisa.Open;

    if not PesqPessoaF.CdsPesquisa.IsEmpty then
    begin
      pId.Text           := PesqPessoaF.CdsPesquisaCPFCNPJ.AsString;
      pNomeFantasia.Text := PesqPessoaF.CdsPesquisaNOMEFANTASIA.AsString;
      Result := True;
    end
    else
    begin
      pId.Clear;
      pNomeFantasia.Clear;
    end;
  finally
    PesqPessoaF.CdsPesquisa.Close;
    PesqPessoaF.Release;
    PesqPessoaF := nil;
  end;
end;

procedure TPesqPessoaF.executarFiltro;
begin
  Self.CdsPesquisa.Close;
  Self.CdsPesquisa.CommandText :=
     ' SELECT PES.* '
    +'       ,(CID.CIDADE || '' - '' ||CID.UF) AS CIDADE '
    +'       ,TPE.DESCRICAO AS TIPOPESSOA '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM PESSOA PES '
    +'        JOIN TIPOPESSOA TPE ON (TPE.IDTIPOPESSOA = PES.IDTIPOPESSOA) '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PES.IDSITUACAOREGISTRO) '
    +'        LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PES.IDCIDADE) '
    +'  WHERE 1 = 1 '
    ;

  if Trim(EdtNomeNomeFantasia.Text) <> EmptyStr then
  begin
    Self.CdsPesquisa.CommandText :=
      Self.CdsPesquisa.CommandText + ' AND PES.NOMEFANTASIA LIKE ''%'+EdtNomeNomeFantasia.Text+'%'' ';
  end;

  if Trim(EdtTelefones.Text) <> EmptyStr then
  begin
    Self.CdsPesquisa.CommandText :=
      Self.CdsPesquisa.CommandText + ' AND ( PES.TELEFONE01 LIKE ''%'+EdtTelefones.Text+'%'' OR PES.TELEFONE02 LIKE ''%'+EdtTelefones.Text+'%'' ) ';
  end;

  if Trim(EdtCidadeUF.Text) <> EmptyStr then
  begin
    Self.CdsPesquisa.CommandText :=
      Self.CdsPesquisa.CommandText + ' AND ( CID.CIDADE LIKE ''%'+EdtCidadeUF.Text+'%'' OR CID.UF LIKE ''%'+EdtCidadeUF.Text+'%'' ) ';
  end;

  if CbTipoPessoa.Text <> 'Todos' then
  begin
    Self.CdsPesquisa.CommandText :=
      Self.CdsPesquisa.CommandText + ' AND ( TPE.DESCRICAO LIKE ''%'+CbTipoPessoa.Text+'%'' ) ';
  end;

  Self.CdsPesquisa.CommandText :=
    Self.CdsPesquisa.CommandText + ' ORDER BY PES.NOMEFANTASIA ';

  Self.CdsPesquisa.Open;
end;

procedure TPesqPessoaF.FormCreate(Sender: TObject);
begin
  inherited;
  Self.executarFiltro;
  GridPesquisaDBTableView1.ViewData.Expand(True);
  GridPesquisaDBTableView1.DataController.Groups.FullExpand;

end;

function TPesqPessoaF.validarCpfCnpj(pNum: String): Boolean;
begin
  if Length(pNum) = 11 then
    Result := TGenValidador.validarCPF(pNum)
  else if Length(pNum) = 14 then
    Result := TGenValidador.validarCNPJ(pNum)
  else
    Result := False;
end;

function TPesqPessoaF.geraIdPessoa(pCpfCnpj: String): Int64;
begin
  // Se CPF
  if Length(trim(pCpfCnpj)) = 11 then
    Result := StrToInt64('1000' + pCpfCnpj)
  else
  if Length(trim(pCpfCnpj)) = 14 then
    Result := StrToInt64('1' + pCpfCnpj)
  else
    Result := StrToInt64('1');
end;

end.
