unit CadEmpresaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XTelaCadastroU, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, ImgList, ActnList, ExtCtrls, StdCtrls, cxButtons,
  cxPC, ComCtrls, cxContainer, cxEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,
  cxTextEdit, DB, DBClient, DmCadastroU, DmConexaoU, PesqCidadeU, XLibGenericoU;

type
  TCadEmpresaF = class(TXTelaCadastroF)
    TsPrincipal: TcxTabSheet;
    LblNomeFantasia: TLabel;
    LblTelefone: TLabel;
    LblCidade: TLabel;
    LblCEP: TLabel;
    LblEndereco: TLabel;
    LblBairro: TLabel;
    DbNomeFantasia: TcxDBTextEdit;
    DbTelefone: TcxDBTextEdit;
    DbNomeCidade: TcxDBTextEdit;
    DbCodigoCidade: TcxDBButtonEdit;
    DbCEP: TcxDBTextEdit;
    DbEndereco: TcxDBTextEdit;
    DbBairro: TcxDBTextEdit;
    DsEmpresa: TDataSource;
    CdsEmpresa: TClientDataSet;
    CdsEmpresaIDEMPRESA: TSmallintField;
    CdsEmpresaIDCIDADE: TIntegerField;
    CdsEmpresaNOMEFANTASIA: TStringField;
    CdsEmpresaENDERECO: TStringField;
    CdsEmpresaBAIRRO: TStringField;
    CdsEmpresaTELEFONE: TStringField;
    CdsEmpresaCEP: TStringField;
    CdsEmpresaCIDADE: TStringField;
    procedure DbCodigoCidadeExit(Sender: TObject);
    procedure DbCodigoCidadePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure AcaoAlterarExecute(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure clearData; override;

  end;

var
  CadEmpresaF: TCadEmpresaF;

implementation

{$R *.dfm}

procedure TCadEmpresaF.AcaoAlterarExecute(Sender: TObject);
begin
  inherited;
  Self.clearData;
  CdsEmpresa.Edit;
  Self.SetaComponentes(dsEdit);
  Self.ControleBotoes;
  TSistema.TentaFocar(DbNomeFantasia);
end;

procedure TCadEmpresaF.clearData;
begin
  inherited;
  // Limpando Cds
  Self.CdsEmpresa.Close;
  Self.CdsEmpresa.CommandText :=
     ' SELECT emp.* '
    +'       ,(cid.cidade || '' - '' ||cid.uf) AS cidade '
    +'   FROM EMPRESA EMP '
    +'        LEFT JOIN cidade cid ON (cid.idcidade = emp.idcidade) '
    +'  WHERE 1 = 1 '
    ;

  Self.CdsEmpresa.Open;
  Self.SetaComponentes(dsBrowse);
end;

procedure TCadEmpresaF.DbCodigoCidadeExit(Sender: TObject);
begin
  inherited;
  if CdsEmpresa.State in [dsInsert, dsEdit] then
    TPesqCidadeF.executaPesquisaCidade03(CdsEmpresa, StrToIntDef(DbCodigoCidade.Text, 0));
end;

procedure TCadEmpresaF.DbCodigoCidadePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  TPesqCidadeF.executaPesquisaCidade02(CdsEmpresa);
end;

procedure TCadEmpresaF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CadEmpresaF.Release;
  CadEmpresaF := nil;
end;

procedure TCadEmpresaF.FormCreate(Sender: TObject);
begin
  Self.setCds(Self.CdsEmpresa);
  inherited;
  Self.clearData;

  if CdsEmpresa.IsEmpty then
  begin
    CdsEmpresa.Insert;
    CdsEmpresaIDEMPRESA.AsInteger := 1;
    CdsEmpresa.Post;
    CdsEmpresa.ApplyUpdates(0);
  end;
end;

Initialization
  RegisterClass(TCadEmpresaF);

end.
