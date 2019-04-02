unit RelPacienteSexoGraficoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaRelatorioU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, frxExportHTML, frxExportXLS, frxClass, frxExportPDF, ImgList, ActnList,
  StdCtrls, cxButtons, ExtCtrls, DB, DBClient, frxDBSet, frxChart;

type
  TRelPacienteSexoGraficoF = class(TXTelaRelatorioF)
    DsPacienteSexo: TDataSource;
    CdsPacienteSexo: TClientDataSet;
    CdsPacienteSexoSEXO: TStringField;
    CdsPacienteSexoQUANTIDADE: TIntegerField;
    frxRelatorio: TfrxReport;
    frxCdsPacienteSexo: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AcaoVisualisarExecute(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  RelPacienteSexoGraficoF: TRelPacienteSexoGraficoF;

implementation

uses DmRelatorioU;

{$R *.dfm}

procedure TRelPacienteSexoGraficoF.AcaoVisualisarExecute(Sender: TObject);
begin
  inherited;
  CdsPacienteSexo.Close;
  CdsPacienteSexo.Open;
  frxRelatorio.PrepareReport;
  frxRelatorio.ShowReport;
end;

procedure TRelPacienteSexoGraficoF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  RelPacienteSexoGraficoF.Release;
  RelPacienteSexoGraficoF := nil;
end;

Initialization
  RegisterClass(TRelPacienteSexoGraficoF);

end.
