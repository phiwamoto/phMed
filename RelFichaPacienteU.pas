unit RelFichaPacienteU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaRelatorioU, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, frxExportHTML, frxExportXLS, frxClass, frxExportPDF, ImgList, ActnList,
  StdCtrls, cxButtons, ExtCtrls;

type
  TRelFichaPacienteF = class(TXTelaRelatorioF)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelFichaPacienteF: TRelFichaPacienteF;

implementation

{$R *.dfm}

procedure TRelFichaPacienteF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  RelFichaPacienteF.Release;
  RelFichaPacienteF := nil;
end;

Initialization
  RegisterClass(TRelFichaPacienteF);

end.
