unit PesqUsuarioU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPesquisaPadraoU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, DBClient, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  cxButtons, ExtCtrls, cxButtonEdit, cxContainer, cxTextEdit;

type
  TPesqUsuarioF = class(TXPesquisaPadrao)
    GridPesquisaDBTableView1IDUSUARIO: TcxGridDBColumn;
    GridPesquisaDBTableView1DATAINCLUSAO: TcxGridDBColumn;
    GridPesquisaDBTableView1LOGIN: TcxGridDBColumn;
    GridPesquisaDBTableView1SITUACAOREGISTRO: TcxGridDBColumn;
    CdsPesquisaIDUSUARIO: TIntegerField;
    CdsPesquisaIDPERFIL: TIntegerField;
    CdsPesquisaIDSITUACAOREGISTRO: TSmallintField;
    CdsPesquisaDATAINCLUSAO: TDateField;
    CdsPesquisaLOGIN: TStringField;
    CdsPesquisaSENHA: TStringField;
    CdsPesquisaSITUACAOREGISTRO: TStringField;
    EdtCodigoLogin: TcxTextEdit;
    LblCodigoLogin: TLabel;
    BtnLimpar: TcxButton;
    procedure BtnLimparClick(Sender: TObject);
    procedure EdtCodigoLoginPropertiesChange(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    class function executaPesquisaUsuario01(pId: TcxButtonEdit): Boolean;
    class function executaPesquisaUsuario02(pCds: TClientDataSet): Boolean;
    class function executaPesquisaUsuario03(pCds: TClientDataSet; pId: Integer): Boolean;

    procedure executarFiltro;
  end;

var
  PesqUsuarioF: TPesqUsuarioF;

implementation

{$R *.dfm}

{ TPesqUsuarioF }

procedure TPesqUsuarioF.BtnLimparClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  // Inicializando componentes filtros
  EdtCodigoLogin.Clear;

  // Retirando os agrupamentos e voltando as colunas ao normal
  GridPesquisaDBTableView1.Controller.ClearGrouping;
  for I := 0 to GridPesquisaDBTableView1.ColumnCount - 1 do
  begin
    // Limpando a ordenação de cada coluna se possuir, voltando a original, NONE
    GridPesquisaDBTableView1.Columns[i].SortOrder := soNone;
    // Limpando o filtro de cada coluna, apagando as seleções
    GridPesquisaDBTableView1.Columns[i].Filtered  := False;
  end;

  Self.executarFiltro;
end;

procedure TPesqUsuarioF.EdtCodigoLoginPropertiesChange(Sender: TObject);
begin
  inherited;
  if EdtCodigoLogin.Focused then
    Self.executarFiltro;
end;

class function TPesqUsuarioF.executaPesquisaUsuario01(pId: TcxButtonEdit): Boolean;
begin
  Result := False;
  PesqUsuarioF := TPesqUsuarioF.Create(nil);
  try
    PesqUsuarioF.CdsPesquisa.Close;
    PesqUsuarioF.CdsPesquisa.Open;
    PesqUsuarioF.ShowModal;
    if PesqUsuarioF.ModalResult = mrOk then
    begin
      pId.Text := PesqUsuarioF.CdsPesquisaIDUSUARIO.AsString;
      Result := True;
    end;
  finally
    PesqUsuarioF.CdsPesquisa.Close;
    PesqUsuarioF.Release;
    PesqUsuarioF := nil;
  end;
end;

class function TPesqUsuarioF.executaPesquisaUsuario02(pCds: TClientDataSet): Boolean;
begin
  Result := False;
  PesqUsuarioF := TPesqUsuarioF.Create(nil);
  try
    PesqUsuarioF.CdsPesquisa.Close;
    PesqUsuarioF.CdsPesquisa.Open;
    PesqUsuarioF.ShowModal;
    if PesqUsuarioF.ModalResult = mrOk then
    begin
      pCds.FieldByName('IDUSUARIO').AsString := PesqUsuarioF.CdsPesquisaIDUSUARIO.AsString;
      pCds.FieldByName('USUARIOLOGIN').AsString := PesqUsuarioF.CdsPesquisaLOGIN.AsString;
      Result := True;
    end;
  finally
    PesqUsuarioF.CdsPesquisa.Close;
    PesqUsuarioF.Release;
    PesqUsuarioF := nil;
  end;
end;

class function TPesqUsuarioF.executaPesquisaUsuario03(pCds: TClientDataSet; pId: Integer): Boolean;
begin
  Result := False;
  PesqUsuarioF := TPesqUsuarioF.Create(nil);
  try
    PesqUsuarioF.CdsPesquisa.Close;
    PesqUsuarioF.CdsPesquisa.CommandText :=
       ' SELECT USU.* '
      +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
      +'   FROM USUARIO USU '
      +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = USU.IDSITUACAOREGISTRO) '
      +'  WHERE 1 = 1 '
      +'    AND USU.IDUSUARIO > 0 '
      +'    AND USU.IDUSUARIO = '+IntToStr(pId);
      ;
    PesqUsuarioF.CdsPesquisa.Open;
    if not PesqUsuarioF.CdsPesquisa.IsEmpty then
    begin
      pCds.FieldByName('IDUSUARIO').AsString := PesqUsuarioF.CdsPesquisaIDUSUARIO.AsString;
      pCds.FieldByName('USUARIOLOGIN').AsString := PesqUsuarioF.CdsPesquisaLOGIN.AsString;
      Result := True;
    end
    else
    begin
      pCds.FieldByName('IDUSUARIO').Clear;
      pCds.FieldByName('USUARIOLOGIN').Clear;
    end;
  finally
    PesqUsuarioF.CdsPesquisa.Close;
    PesqUsuarioF.Release;
    PesqUsuarioF := nil;
  end;
end;

procedure TPesqUsuarioF.executarFiltro;
begin
  Self.CdsPesquisa.Close;
  Self.CdsPesquisa.CommandText :=
     ' SELECT USU.* '
    +'       ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'   FROM USUARIO USU '
    +'        JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = USU.IDSITUACAOREGISTRO) '
    +'  WHERE 1 = 1 '
    +'    AND USU.IDUSUARIO > 0 '
    ;

  if Trim(EdtCodigoLogin.Text) <> EmptyStr then
  begin
    Self.CdsPesquisa.CommandText :=
      Self.CdsPesquisa.CommandText + ' AND ( USU.IDUSUARIO LIKE ''%'+EdtCodigoLogin.Text+'%'' OR USU.LOGIN LIKE ''%'+EdtCodigoLogin.Text+'%'')';
  end;

  Self.CdsPesquisa.CommandText :=
    Self.CdsPesquisa.CommandText + ' ORDER BY USU.IDUSUARIO ';

  Self.CdsPesquisa.Open;
end;

end.
