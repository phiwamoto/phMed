program MigracaoPhMED;

uses
  ExceptionLog,
  Forms,
  migracaoU in 'migracaoU.pas' {migracaoF},
  dmOldU in 'dmOldU.pas' {DmOLD: TDataModule},
  dmNewU in 'dmNewU.pas' {DmNEW: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmOLD, DmOLD);
  Application.CreateForm(TDmNEW, DmNEW);
  Application.CreateForm(TmigracaoF, migracaoF);
  Application.Run;
end.
