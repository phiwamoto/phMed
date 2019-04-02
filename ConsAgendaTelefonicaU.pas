unit ConsAgendaTelefonicaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaConsultaU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, DB, DBClient, ImgList, ActnList, StdCtrls, cxButtons, ExtCtrls,
  cxControls, cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxContainer, cxTextEdit, ComCtrls;

type
  TConsAgendaTelefonicaF = class(TXTelaConsultaF)
    CdsConsultaTIPO: TStringField;
    CdsConsultaNOME: TStringField;
    CdsConsultaTELEFONE01: TStringField;
    CdsConsultaTELEFONE02: TStringField;
    CdsConsultaCIDADEUF: TStringField;
    CdsConsultaSITUACAOREGISTRO: TStringField;
    GridConsulta: TcxGrid;
    GridConsultaDBTableView1: TcxGridDBTableView;
    GridConsultaLevel1: TcxGridLevel;
    GridConsultaDBTableView1TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1NOME: TcxGridDBColumn;
    GridConsultaDBTableView1TELEFONE01: TcxGridDBColumn;
    GridConsultaDBTableView1TELEFONE02: TcxGridDBColumn;
    GridConsultaDBTableView1CIDADEUF: TcxGridDBColumn;
    GridConsultaDBTableView1SITUACAOREGISTRO: TcxGridDBColumn;
    BtnLimpar: TcxButton;
    EdtNome: TcxTextEdit;
    LblNome: TLabel;
    procedure BtnLimparClick(Sender: TObject);
    procedure EdtNomePropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure executarFiltro;

  end;

var
  ConsAgendaTelefonicaF: TConsAgendaTelefonicaF;

implementation

uses XLibGenericoU;

{$R *.dfm}

procedure TConsAgendaTelefonicaF.BtnLimparClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  // Inicializando componentes filtros
  EdtNome.Clear;

  // Retirando os agrupamentos e voltando as colunas ao normal
  GridConsultaDBTableView1.Controller.ClearGrouping;
  for I := 0 to GridConsultaDBTableView1.ColumnCount - 1 do
  begin
    // Limpando a ordenação de cada coluna se possuir, voltando a original, NONE
    GridConsultaDBTableView1.Columns[i].SortOrder := soNone;
    // Limpando o filtro de cada coluna, apagando as seleções
    GridConsultaDBTableView1.Columns[i].Filtered  := False;
  end;

  Self.executarFiltro;
end;

procedure TConsAgendaTelefonicaF.EdtNomePropertiesChange(Sender: TObject);
begin
  inherited;
  if EdtNome.Focused then
    Self.executarFiltro;
end;

procedure TConsAgendaTelefonicaF.executarFiltro;
begin
  Self.CdsConsulta.Close;
  Self.CdsConsulta.CommandText :=
     ' SELECT * '
    +'   FROM ( SELECT ''Paciente'' AS TIPO '
    +'                ,PAC.NOME '
    +'                ,PAC.TELEFONE1 AS TELEFONE01 '
    +'                ,PAC.TELEFONE2 AS TELEFONE02 '
    +'                ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
    +'                ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'            FROM PACIENTE PAC '
    +'                 LEFT JOIN CIDADE CID ON (CID.IDCIDADE = PAC.IDCIDADE) '
    +'                 JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = PAC.IDSITUACAOREGISTRO) '
    +'           WHERE 1 = 1 '
    +' '
    +'           UNION ALL '
    +' '
    +'          SELECT ''Doutor'' AS TIPO '
    +'                ,DOU.NOME '
    +'                ,DOU.TELEFONE AS TELEFONE01 '
    +'                ,DOU.CELULAR AS TELEFONE02 '
    +'                ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
    +'                ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'           FROM DOUTOR DOU '
    +'                LEFT JOIN CIDADE CID ON (CID.IDCIDADE = DOU.IDCIDADE) '
    +'                JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = DOU.IDSITUACAOREGISTRO) '
    +'          WHERE 1 = 1 '
    +' '
    +'          UNION ALL '
    +' '
    +'         SELECT ''Secretária'' AS TIPO '
    +'               ,SEC.NOME '
    +'               ,SEC.TELEFONE AS TELEFONE01 '
    +'               ,SEC.CELULAR AS TELEFONE02 '
    +'               ,(CID.CIDADE || '' - '' || CID.UF) AS CIDADEUF '
    +'               ,SRE.DESCRICAO AS SITUACAOREGISTRO '
    +'          FROM SECRETARIA SEC '
    +'               LEFT JOIN CIDADE CID ON (CID.IDCIDADE = SEC.IDCIDADE) '
    +'               JOIN SITUACAOREGISTRO SRE ON (SRE.IDSITUACAOREGISTRO = SEC.IDSITUACAOREGISTRO) '
    +'         WHERE 1 = 1 '
    +'        ) TBL '
    +'  WHERE 1 = 1 '
   ;

  if Trim(EdtNome.Text) <> EmptyStr then
  begin
    Self.CdsConsulta.CommandText :=
      Self.CdsConsulta.CommandText + ' AND TBL.NOME LIKE ''%'+EdtNome.Text+'%'' ';
  end;

  Self.CdsConsulta.CommandText :=
    Self.CdsConsulta.CommandText + ' ORDER BY TBL.NOME, TBL.TELEFONE01, TBL.TELEFONE02, TBL.CIDADEUF ';

  Self.CdsConsulta.Open;
end;

procedure TConsAgendaTelefonicaF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  ConsAgendaTelefonicaF.Release;
  ConsAgendaTelefonicaF := nil;
end;

procedure TConsAgendaTelefonicaF.FormCreate(Sender: TObject);
begin
  inherited;
  Self.executarFiltro;
end;

procedure TConsAgendaTelefonicaF.FormShow(Sender: TObject);
begin
  inherited;
  TRotinaGenerica.tentaFocar(EdtNome);
end;

Initialization
  RegisterClass(TConsAgendaTelefonicaF);

end.
