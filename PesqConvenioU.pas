unit PesqConvenioU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPesquisaPadraoU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, DBClient, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  cxButtons, ExtCtrls, cxContainer, cxTextEdit, cxButtonEdit;

type
  TPesqConvenioF = class(TXPesquisaPadrao)
    EdtConvenio: TcxTextEdit;
    LblConvenio: TLabel;
    BtnLimpar: TcxButton;
    CdsPesquisaIDCONVENIO: TIntegerField;
    CdsPesquisaIDSITUACAOREGISTRO: TSmallintField;
    CdsPesquisaDATAINCLUSAO: TDateField;
    CdsPesquisaCONVENIO: TStringField;
    CdsPesquisaSITUACAOREGISTRO: TStringField;
    GridPesquisaDBTableView1IDCONVENIO: TcxGridDBColumn;
    GridPesquisaDBTableView1CONVENIO: TcxGridDBColumn;
    GridPesquisaDBTableView1SITUACAOREGISTRO: TcxGridDBColumn;
    procedure EdtCidadePropertiesChange(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    class function executaPesquisaConvenio01(pId: TcxButtonEdit): Boolean;
    class function executaPesquisaConvenio02(pCds: TClientDataSet): Boolean;
    class function executaPesquisaConvenio03(pCds: TClientDataSet; pId: Integer): Boolean;

    procedure executarFiltro;

  end;

var
  PesqConvenioF: TPesqConvenioF;

implementation

{$R *.dfm}

{ TPesqConvenioF }

procedure TPesqConvenioF.EdtCidadePropertiesChange(Sender: TObject);
begin
  inherited;
  if EdtConvenio.Focused then
    Self.executarFiltro;
end;

class function TPesqConvenioF.executaPesquisaConvenio01(pId: TcxButtonEdit): Boolean;
begin
  Result := False;
  PesqConvenioF := TPesqConvenioF.Create(nil);
  try
    PesqConvenioF.CdsPesquisa.Close;
    PesqConvenioF.CdsPesquisa.Open;
    PesqConvenioF.ShowModal;
    if PesqConvenioF.ModalResult = mrOk then
    begin
      pId.Text := PesqConvenioF.CdsPesquisaIDCONVENIO.AsString;
      Result := True;
    end;
  finally
    PesqConvenioF.CdsPesquisa.Close;
    PesqConvenioF.Release;
    PesqConvenioF := nil;
  end;
end;

class function TPesqConvenioF.executaPesquisaConvenio02(pCds: TClientDataSet): Boolean;
begin
  Result := False;
  PesqConvenioF := TPesqConvenioF.Create(nil);
  try
    PesqConvenioF.CdsPesquisa.Close;
    PesqConvenioF.CdsPesquisa.Open;
    PesqConvenioF.ShowModal;
    if PesqConvenioF.ModalResult = mrOk then
    begin
      pCds.FieldByName('IDCONVENIO').AsString := PesqConvenioF.CdsPesquisaIDCONVENIO.AsString;
      pCds.FieldByName('CONVENIO').AsString := PesqConvenioF.CdsPesquisaCONVENIO.AsString;
      Result := True;
    end;
  finally
    PesqConvenioF.CdsPesquisa.Close;
    PesqConvenioF.Release;
    PesqConvenioF := nil;
  end;
end;

class function TPesqConvenioF.executaPesquisaConvenio03(pCds: TClientDataSet; pId: Integer): Boolean;
begin
  Result := False;
  PesqConvenioF := TPesqConvenioF.Create(nil);
  try
    PesqConvenioF.CdsPesquisa.Close;
    PesqConvenioF.CdsPesquisa.CommandText :=
       ' SELECT CON.* '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM CONVENIO CON '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = CON.IDSITUACAOREGISTRO) '
      +'   AND CON.IDCONVENIO = '+IntToStr(pId);
      ;
    PesqConvenioF.CdsPesquisa.Open;
    if not PesqConvenioF.CdsPesquisa.IsEmpty then
    begin
      pCds.FieldByName('IDCONVENIO').AsString := PesqConvenioF.CdsPesquisaIDCONVENIO.AsString;
      pCds.FieldByName('CONVENIO').AsString   := PesqConvenioF.CdsPesquisaCONVENIO.AsString;
      Result := True;
    end
    else
    begin
      pCds.FieldByName('IDCONVENIO').Clear;
      pCds.FieldByName('CONVENIO').Clear;
    end;
  finally
    PesqConvenioF.CdsPesquisa.Close;
    PesqConvenioF.Release;
    PesqConvenioF := nil;
  end;
end;

procedure TPesqConvenioF.executarFiltro;
begin

end;

end.
