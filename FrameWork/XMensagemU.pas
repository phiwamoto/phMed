unit XMensagemU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, ActnList, ImgList;

type
  TXMensagemF = class(TForm)
    ActionList: TActionList;
    ActionSNCSim: TAction;
    ActionSNCNao: TAction;
    ActionSNCCancelar: TAction;
    ActionOk: TAction;
    ActionCCConfirmar: TAction;
    ActionCCCancelar: TAction;
    ActionSNSim: TAction;
    ActionSNNao: TAction;
    ImageList16: TcxImageList;
    pnlTop: TPanel;
    PnlLeft: TPanel;
    PnlRight: TPanel;
    PnlBotton: TPanel;
    PnlFundo: TPanel;
    PnlMensagem: TPanel;
    ImgValidacao: TImage;
    ImgConfirmar: TImage;
    ImgContinuar: TImage;
    ImgErro: TImage;
    ImgInformacao: TImage;
    ImgProibido: TImage;
    LbMsg: TLabel;
    LbTitulo: TLabel;
    PnlBotao: TPanel;
    PCC: TPanel;
    BtCCCancelar: TcxButton;
    BtCCConfirmar: TcxButton;
    POK: TPanel;
    BtnOk: TcxButton;
    PSNC: TPanel;
    BtnSNCCancelar: TcxButton;
    BtnSNCNao: TcxButton;
    BtnSNCSim: TcxButton;
    PSN: TPanel;
    BtSNNao: TcxButton;
    BtSNSim: TcxButton;
    PnlCaption: TPanel;
    LblPesquisa: TLabel;
    PnlLinhaDivisor: TPanel;
    procedure ActionSNCSimExecute(Sender: TObject);
    procedure ActionSNCNaoExecute(Sender: TObject);
    procedure ActionSNCCancelarExecute(Sender: TObject);
    procedure ActionOkExecute(Sender: TObject);
    procedure ActionCCConfirmarExecute(Sender: TObject);
    procedure ActionCCCancelarExecute(Sender: TObject);
    procedure ActionSNSimExecute(Sender: TObject);
    procedure ActionSNNaoExecute(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    Resultado: String;

  end;

var
  XMensagemF: TXMensagemF;

implementation


{$R *.dfm}

procedure TXMensagemF.ActionCCCancelarExecute(Sender: TObject);
begin
  Resultado := 'Cancelar';
  Close;
end;

procedure TXMensagemF.ActionCCConfirmarExecute(Sender: TObject);
begin
  Resultado := 'Confirmar';
  Close;
end;

procedure TXMensagemF.ActionOkExecute(Sender: TObject);
begin
  Resultado := 'Ok';
  Close;
end;

procedure TXMensagemF.ActionSNCCancelarExecute(Sender: TObject);
begin
  Resultado := 'Cancelar';
  Close;
end;

procedure TXMensagemF.ActionSNCNaoExecute(Sender: TObject);
begin
  Resultado := 'Não';
  Close;
end;

procedure TXMensagemF.ActionSNCSimExecute(Sender: TObject);
begin
  Resultado := 'Sim';
  Close;
end;

procedure TXMensagemF.ActionSNNaoExecute(Sender: TObject);
begin
  Resultado := 'Não';
  Close;
end;

procedure TXMensagemF.ActionSNSimExecute(Sender: TObject);
begin
  Resultado := 'Sim';
  Close;
end;

end.
