unit XLibGenericoU;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, Menus,  ExtCtrls, dxCore, dbclient, Winsock, SqlExpr, ComCtrls,
     Grids, DBGrids, DBTables, DB, ImgList, StdCtrls, Mask, DBCtrls, TypInfo,
     frxClass, frxDBSet, frxDesgn, WinInet, jpeg, cxDBEdit,

    IdBaseComponent, IdComponent // Units Genéricas do Indy
 , IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL // Objeto SSL
 , IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP // Objeto SMTP
 , IdMessage // Objeto de Mensagem
 , IdAttachmentFile; // Objeto de Arquivos Anexos

//uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
//     Dialogs, Menus,  ExtCtrls, dxCore, DBClient, Winsock, SqlExpr, Grids,
//     DBGrids, DBTables, DB, ImgList, StdCtrls, Mask, DBCtrls, TypInfo, frxClass,
//     frxDBSet, frxDesgn, cxMemo, Provider, FMTBcd, IdBaseComponent, IdComponent,
//     IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
//     IdSMTPBase, IdSMTP, IdMessage, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
//     IdSSL, IdSSLOpenSSL, WinInet, jpeg, cxDBEdit, cxDropDownEdit;


type
  // Confirmacao, Validação
  TOperacaoTela = (opNeutro, opIncluir, opAlterar, opExcluir, opConsultar, opConfirmar, opCancelar, opBaixar);
  TTipoImagem = (MsgValidacao, MsgConfirmar, MsgInformar, MsgErro, MsgContinuar, MsgCuidado);
  TTipoBotao = (BtOk, BtSnc, BtCC, BtSN);


  TRotinaGenerica = class
  public
    class function getBuildInfo: string;
    class function getBuildInfo_Inteiro: integer;
    class function getBuildInfo_Mascara: string;
    class function getIP: String;
    class function executaSql(pCds: TClientDataSet; pSql: String; pExecutar: Boolean = False): Boolean;

    class function MensagemGeral(Texto: String; TpImagem: TTipoImagem; TpBotao: TTipoBotao): String;
    class function MensagemConfirmar(Texto: String): String;
    class function MensagemTButtonPersonal(Captions: array of string; const Msg: string; titulo :string = 'Confirmação'; CaptionDef: integer = 0): Integer;

    class procedure executarAquivo(pArquivo: String);
    class procedure confiruraComponente(pComponente: TComponent);
    class procedure registroVinculado(pMsg: String);
    class procedure tentaFocar(pControle: TWinControl);


    class function Proximo(pTabela, pCampo: String; pCondicao: String = ''): Integer;
    class function Generation(pStr: String): Integer;

    class function extrairAno(pDate: TDateTime): Integer;
    class function extrairMes(pDate: TDateTime): Integer;
    class function extrairDia(pDate: TDateTime): Integer;
    class function retornaDataExtenso(pData: TDateTime): String;


    class function DateToSql(pData: TDateTime): String;
    class function DateTimeToSql(pData: TDateTime): String;
    class function TimeToSql(pTime: TTime): String;
    class function StrToSql(pStr: String; pStrDefault: String = ''): String; Static;
    class function FloatToSql(pFloat: Real): String; Static;
    class function MoneyToSql(pFloat: Real): String; Static;
    class function IntToSql(pInt: Integer): String; Static;




    class function validarCPF(num: string): Boolean;
    class function validarCNPJ(num: string): Boolean;

    class function enviarEmail01(aHost : String; aPort : Integer; aLogin, aSenha,aListaEmail, aAssunto, aCorpo : String; aAuth, aAuthSSL : Boolean) : Boolean;

  end;

implementation

uses
  XMensagemU, ShellApi, XDmU, cxCheckBox, cxDropDownEdit, cxCalendar,
  cxButtonEdit, cxTextEdit, cxEdit, cxImage, cxCurrencyEdit, cxSpinEdit;


{ TRotinaGenerica }

class procedure TRotinaGenerica.confiruraComponente(pComponente: TComponent);
begin
  if (pComponente is TEdit) then
  begin
//      TEdit(pComponente[]).CharCase    := ecUpperCase;
    TEdit(pComponente).BevelInner  := bvLowered;
    TEdit(pComponente).BevelKind   := bkSoft;
    TEdit(pComponente).BorderStyle := bsNone;
    TEdit(pComponente).BevelOuter  := bvNone;
  end;
  if (pComponente is TDbEdit) then
  begin
//      TDBEdit(pComponente).CharCase    := ecUpperCase;
    TDBEdit(pComponente).BevelInner  := bvLowered;
    TDBEdit(pComponente).BevelKind   := bkSoft;
    TDBEdit(pComponente).BorderStyle := bsNone;
    TDBEdit(pComponente).BevelOuter  := bvNone;
  end;
  if (pComponente is TDbMemo) then
  begin
    TDBmemo(pComponente).BevelInner  := bvLowered;
    TDBmemo(pComponente).BevelKind   := bkSoft;
    TDBmemo(pComponente).BorderStyle := bsNone;
    TDBmemo(pComponente).BevelOuter  := bvNone;
  end;

  // TextEdit
  if (pComponente is TcxTextEdit) then
  begin
    if not(TcxTextEdit(pComponente).Properties.ReadOnly) then
    begin
      TcxTextEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxTextEdit(pComponente).Style.BorderColor := clBlack;
      TcxTextEdit(pComponente).Style.Color       := clWhite;
      TcxTextEdit(pComponente).Style.TextColor   := clWindowText;

      TcxTextEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxTextEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxTextEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxTextEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxTextEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxTextEdit(pComponente).StyleFocused.BorderColor := clBlue;
      TcxTextEdit(pComponente).StyleFocused.Color       := $00DDFFDD;
      TcxTextEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxTextEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxTextEdit(pComponente).StyleHot.BorderColor := clRed;
      TcxTextEdit(pComponente).StyleHot.Color       := clWhite;
      TcxTextEdit(pComponente).StyleHot.TextColor   := clBlack;
    end else
    begin
      TcxTextEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxTextEdit(pComponente).Style.BorderColor := clBlack;
      TcxTextEdit(pComponente).Style.Color       := clSilver;
      TcxTextEdit(pComponente).Style.TextColor   := clBlack;

      TcxTextEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxTextEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxTextEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxTextEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxTextEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxTextEdit(pComponente).StyleFocused.BorderColor := clBlack;
      TcxTextEdit(pComponente).StyleFocused.Color       := clSilver;
      TcxTextEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxTextEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxTextEdit(pComponente).StyleHot.BorderColor := clBlack;
      TcxTextEdit(pComponente).StyleHot.Color       := clSilver;
      TcxTextEdit(pComponente).StyleHot.TextColor   := clBlack;
    end;
  end;

  // DBTextEdit
  if (pComponente is TcxDBTextEdit) then
  begin
    if not(TcxDBTextEdit(pComponente).Properties.ReadOnly) then
    begin
      TcxDBTextEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxDBTextEdit(pComponente).Style.BorderColor := clBlack;
      TcxDBTextEdit(pComponente).Style.Color       := clWhite;
      TcxDBTextEdit(pComponente).Style.TextColor   := clWindowText;

      TcxDBTextEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDBTextEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDBTextEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDBTextEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDBTextEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDBTextEdit(pComponente).StyleFocused.BorderColor := clBlue;
      TcxDBTextEdit(pComponente).StyleFocused.Color       := $00DDFFDD;
      TcxDBTextEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDBTextEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDBTextEdit(pComponente).StyleHot.BorderColor := clRed;
      TcxDBTextEdit(pComponente).StyleHot.Color       := clWhite;
      TcxDBTextEdit(pComponente).StyleHot.TextColor   := clBlack;
    end else
    begin
      TcxDBTextEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxDBTextEdit(pComponente).Style.BorderColor := clBlack;
      TcxDBTextEdit(pComponente).Style.Color       := clSilver;
      TcxDBTextEdit(pComponente).Style.TextColor   := clBlack;

      TcxDBTextEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDBTextEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDBTextEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDBTextEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDBTextEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDBTextEdit(pComponente).StyleFocused.BorderColor := clBlack;
      TcxDBTextEdit(pComponente).StyleFocused.Color       := clSilver;
      TcxDBTextEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDBTextEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDBTextEdit(pComponente).StyleHot.BorderColor := clBlack;
      TcxDBTextEdit(pComponente).StyleHot.Color       := clSilver;
      TcxDBTextEdit(pComponente).StyleHot.TextColor   := clBlack;
    end;
  end;

  // DBButtonEdit
  if (pComponente is TcxDBButtonEdit) then
  begin
    if not(TcxDBButtonEdit(pComponente).Properties.ReadOnly) then
    begin
      TcxDBButtonEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxDBButtonEdit(pComponente).Style.BorderColor := clBlack;
      TcxDBButtonEdit(pComponente).Style.Color       := clWhite;
      TcxDBButtonEdit(pComponente).Style.TextColor   := clWindowText;

      TcxDBButtonEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDBButtonEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDBButtonEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDBButtonEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDBButtonEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDBButtonEdit(pComponente).StyleFocused.BorderColor := clBlue;
      TcxDBButtonEdit(pComponente).StyleFocused.Color       := $00DDFFDD;
      TcxDBButtonEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDBButtonEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDBButtonEdit(pComponente).StyleHot.BorderColor := clRed;
      TcxDBButtonEdit(pComponente).StyleHot.Color       := clWhite;
      TcxDBButtonEdit(pComponente).StyleHot.TextColor   := clBlack;
    end else
    begin
      TcxDBButtonEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxDBButtonEdit(pComponente).Style.BorderColor := clBlack;
      TcxDBButtonEdit(pComponente).Style.Color       := clSilver;
      TcxDBButtonEdit(pComponente).Style.TextColor   := clBlack;

      TcxDBButtonEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDBButtonEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDBButtonEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDBButtonEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDBButtonEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDBButtonEdit(pComponente).StyleFocused.BorderColor := clBlack;
      TcxDBButtonEdit(pComponente).StyleFocused.Color       := clSilver;
      TcxDBButtonEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDBButtonEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDBButtonEdit(pComponente).StyleHot.BorderColor := clBlack;
      TcxDBButtonEdit(pComponente).StyleHot.Color       := clSilver;
      TcxDBButtonEdit(pComponente).StyleHot.TextColor   := clBlack;
    end;
  end;

  // DBButtonEdit
  if (pComponente is TcxButtonEdit) then
  begin
    if not(TcxButtonEdit(pComponente).Properties.ReadOnly) then
    begin
      TcxButtonEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxButtonEdit(pComponente).Style.BorderColor := clBlack;
      TcxButtonEdit(pComponente).Style.Color       := clWhite;
      TcxButtonEdit(pComponente).Style.TextColor   := clWindowText;

      TcxButtonEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxButtonEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxButtonEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxButtonEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxButtonEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxButtonEdit(pComponente).StyleFocused.BorderColor := clBlue;
      TcxButtonEdit(pComponente).StyleFocused.Color       := $00DDFFDD;
      TcxButtonEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxButtonEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxButtonEdit(pComponente).StyleHot.BorderColor := clRed;
      TcxButtonEdit(pComponente).StyleHot.Color       := clWhite;
      TcxButtonEdit(pComponente).StyleHot.TextColor   := clBlack;
    end else
    begin
      TcxButtonEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxButtonEdit(pComponente).Style.BorderColor := clBlack;
      TcxButtonEdit(pComponente).Style.Color       := clSilver;
      TcxButtonEdit(pComponente).Style.TextColor   := clBlack;

      TcxButtonEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxButtonEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxButtonEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxButtonEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxButtonEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxButtonEdit(pComponente).StyleFocused.BorderColor := clBlack;
      TcxButtonEdit(pComponente).StyleFocused.Color       := clSilver;
      TcxButtonEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxButtonEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxButtonEdit(pComponente).StyleHot.BorderColor := clBlack;
      TcxButtonEdit(pComponente).StyleHot.Color       := clSilver;
      TcxButtonEdit(pComponente).StyleHot.TextColor   := clBlack;
    end;
  end;

  // DateEdit
  if (pComponente is TcxDateEdit) then
  begin
    if not(TcxDateEdit(pComponente).Properties.ReadOnly) then
    begin
      TcxDateEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxDateEdit(pComponente).Style.BorderColor := clBlack;
      TcxDateEdit(pComponente).Style.Color       := clWhite;
      TcxDateEdit(pComponente).Style.TextColor   := clWindowText;

      TcxDateEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDateEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDateEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDateEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDateEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDateEdit(pComponente).StyleFocused.BorderColor := clBlue;
      TcxDateEdit(pComponente).StyleFocused.Color       := $00DDFFDD;
      TcxDateEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDateEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDateEdit(pComponente).StyleHot.BorderColor := clRed;
      TcxDateEdit(pComponente).StyleHot.Color       := clWhite;
      TcxDateEdit(pComponente).StyleHot.TextColor   := clBlack;
    end else
    begin
      TcxDateEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxDateEdit(pComponente).Style.BorderColor := clBlack;
      TcxDateEdit(pComponente).Style.Color       := clSilver;
      TcxDateEdit(pComponente).Style.TextColor   := clBlack;

      TcxDateEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDateEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDateEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDateEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDateEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDateEdit(pComponente).StyleFocused.BorderColor := clBlack;
      TcxDateEdit(pComponente).StyleFocused.Color       := clSilver;
      TcxDateEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDateEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDateEdit(pComponente).StyleHot.BorderColor := clBlack;
      TcxDateEdit(pComponente).StyleHot.Color       := clSilver;
      TcxDateEdit(pComponente).StyleHot.TextColor   := clBlack;
    end;
  end;

  // HoraEdit
  if (pComponente is TcxDbTimeEdit) then
  begin
    if not(TcxDbTimeEdit(pComponente).Properties.ReadOnly) then
    begin
      TcxDbTimeEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxDbTimeEdit(pComponente).Style.BorderColor := clBlack;
      TcxDbTimeEdit(pComponente).Style.Color       := clWhite;
      TcxDbTimeEdit(pComponente).Style.TextColor   := clWindowText;

      TcxDbTimeEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDbTimeEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDbTimeEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDbTimeEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDbTimeEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDbTimeEdit(pComponente).StyleFocused.BorderColor := clBlue;
      TcxDbTimeEdit(pComponente).StyleFocused.Color       := $00DDFFDD;
      TcxDbTimeEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDbTimeEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDbTimeEdit(pComponente).StyleHot.BorderColor := clRed;
      TcxDbTimeEdit(pComponente).StyleHot.Color       := clWhite;
      TcxDbTimeEdit(pComponente).StyleHot.TextColor   := clBlack;
    end else
    begin
      TcxDbTimeEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxDbTimeEdit(pComponente).Style.BorderColor := clBlack;
      TcxDbTimeEdit(pComponente).Style.Color       := clSilver;
      TcxDbTimeEdit(pComponente).Style.TextColor   := clBlack;

      TcxDbTimeEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDbTimeEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDbTimeEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDbTimeEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDbTimeEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDbTimeEdit(pComponente).StyleFocused.BorderColor := clBlack;
      TcxDbTimeEdit(pComponente).StyleFocused.Color       := clSilver;
      TcxDbTimeEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDbTimeEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDbTimeEdit(pComponente).StyleHot.BorderColor := clBlack;
      TcxDbTimeEdit(pComponente).StyleHot.Color       := clSilver;
      TcxDbTimeEdit(pComponente).StyleHot.TextColor   := clBlack;
    end;
  end;

  // DBDateEdit
  if (pComponente is TcxDBDateEdit) then
  begin
    if not(TcxDBDateEdit(pComponente).Properties.ReadOnly) then
    begin
      TcxDBDateEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxDBDateEdit(pComponente).Style.BorderColor := clBlack;
      TcxDBDateEdit(pComponente).Style.Color       := clWhite;
      TcxDBDateEdit(pComponente).Style.TextColor   := clWindowText;

      TcxDBDateEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDBDateEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDBDateEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDBDateEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDBDateEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDBDateEdit(pComponente).StyleFocused.BorderColor := clBlue;
      TcxDBDateEdit(pComponente).StyleFocused.Color       := $00DDFFDD;
      TcxDBDateEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDBDateEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDBDateEdit(pComponente).StyleHot.BorderColor := clRed;
      TcxDBDateEdit(pComponente).StyleHot.Color       := clWhite;
      TcxDBDateEdit(pComponente).StyleHot.TextColor   := clBlack;
    end else
    begin
      TcxDBDateEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxDBDateEdit(pComponente).Style.BorderColor := clBlack;
      TcxDBDateEdit(pComponente).Style.Color       := clSilver;
      TcxDBDateEdit(pComponente).Style.TextColor   := clBlack;

      TcxDBDateEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDBDateEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDBDateEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDBDateEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDBDateEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDBDateEdit(pComponente).StyleFocused.BorderColor := clBlack;
      TcxDBDateEdit(pComponente).StyleFocused.Color       := clSilver;
      TcxDBDateEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDBDateEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDBDateEdit(pComponente).StyleHot.BorderColor := clBlack;
      TcxDBDateEdit(pComponente).StyleHot.Color       := clSilver;
      TcxDBDateEdit(pComponente).StyleHot.TextColor   := clBlack;
    end;
  end;

  // ComboBox
  if (pComponente is TcxComboBox) then
  begin
    if not(TcxComboBox(pComponente).Properties.ReadOnly) then
    begin
      TcxComboBox(pComponente).Style.BorderStyle := ebsSingle;
      TcxComboBox(pComponente).Style.BorderColor := clBlack;
      TcxComboBox(pComponente).Style.Color       := clWhite;
      TcxComboBox(pComponente).Style.TextColor   := clWindowText;

      TcxComboBox(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxComboBox(pComponente).StyleDisabled.BorderColor := clGray;
      TcxComboBox(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxComboBox(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxComboBox(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxComboBox(pComponente).StyleFocused.BorderColor := clBlue;
      TcxComboBox(pComponente).StyleFocused.Color       := $00DDFFDD;
      TcxComboBox(pComponente).StyleFocused.TextColor   := clBlack;

      TcxComboBox(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxComboBox(pComponente).StyleHot.BorderColor := clRed;
      TcxComboBox(pComponente).StyleHot.Color       := clWhite;
      TcxComboBox(pComponente).StyleHot.TextColor   := clBlack;
    end else
    begin
      TcxComboBox(pComponente).Style.BorderStyle := ebsSingle;
      TcxComboBox(pComponente).Style.BorderColor := clBlack;
      TcxComboBox(pComponente).Style.Color       := clSilver;
      TcxComboBox(pComponente).Style.TextColor   := clBlack;

      TcxComboBox(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxComboBox(pComponente).StyleDisabled.BorderColor := clGray;
      TcxComboBox(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxComboBox(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxComboBox(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxComboBox(pComponente).StyleFocused.BorderColor := clBlack;
      TcxComboBox(pComponente).StyleFocused.Color       := clSilver;
      TcxComboBox(pComponente).StyleFocused.TextColor   := clBlack;

      TcxComboBox(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxComboBox(pComponente).StyleHot.BorderColor := clBlack;
      TcxComboBox(pComponente).StyleHot.Color       := clSilver;
      TcxComboBox(pComponente).StyleHot.TextColor   := clBlack;
    end;
  end;

  // DBComboBox
  if (pComponente is TcxDBComboBox) then
  begin
    if not(TcxDBComboBox(pComponente).Properties.ReadOnly) then
    begin
      TcxDBComboBox(pComponente).Style.BorderStyle := ebsSingle;
      TcxDBComboBox(pComponente).Style.BorderColor := clBlack;
      TcxDBComboBox(pComponente).Style.Color       := clWhite;
      TcxDBComboBox(pComponente).Style.TextColor   := clWindowText;

      TcxDBComboBox(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDBComboBox(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDBComboBox(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDBComboBox(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDBComboBox(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDBComboBox(pComponente).StyleFocused.BorderColor := clBlue;
      TcxDBComboBox(pComponente).StyleFocused.Color       := $00DDFFDD;
      TcxDBComboBox(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDBComboBox(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDBComboBox(pComponente).StyleHot.BorderColor := clRed;
      TcxDBComboBox(pComponente).StyleHot.Color       := clWhite;
      TcxDBComboBox(pComponente).StyleHot.TextColor   := clBlack;
    end else
    begin
      TcxDBComboBox(pComponente).Style.BorderStyle := ebsSingle;
      TcxDBComboBox(pComponente).Style.BorderColor := clBlack;
      TcxDBComboBox(pComponente).Style.Color       := clSilver;
      TcxDBComboBox(pComponente).Style.TextColor   := clBlack;

      TcxDBComboBox(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDBComboBox(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDBComboBox(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDBComboBox(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDBComboBox(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDBComboBox(pComponente).StyleFocused.BorderColor := clBlack;
      TcxDBComboBox(pComponente).StyleFocused.Color       := clSilver;
      TcxDBComboBox(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDBComboBox(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDBComboBox(pComponente).StyleHot.BorderColor := clBlack;
      TcxDBComboBox(pComponente).StyleHot.Color       := clSilver;
      TcxDBComboBox(pComponente).StyleHot.TextColor   := clBlack;
    end;
  end;

  // DBCheckBox
  if (pComponente is TcxCheckBox) then
  begin
    if not(TcxCheckBox(pComponente).Properties.ReadOnly) then
    begin
      TcxCheckBox(pComponente).Style.BorderStyle := ebsSingle;
      TcxCheckBox(pComponente).Style.BorderColor := clBlack;
      TcxCheckBox(pComponente).Style.Color       := clWhite;
      TcxCheckBox(pComponente).Style.TextColor   := clWindowText;

      TcxCheckBox(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxCheckBox(pComponente).StyleDisabled.BorderColor := clGray;
      TcxCheckBox(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxCheckBox(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxCheckBox(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxCheckBox(pComponente).StyleFocused.BorderColor := clBlue;
      TcxCheckBox(pComponente).StyleFocused.Color       := $00DDFFDD;
      TcxCheckBox(pComponente).StyleFocused.TextColor   := clBlack;

      TcxCheckBox(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxCheckBox(pComponente).StyleHot.BorderColor := clRed;
      TcxCheckBox(pComponente).StyleHot.Color       := clWhite;
      TcxCheckBox(pComponente).StyleHot.TextColor   := clBlack;
    end else
    begin
      TcxCheckBox(pComponente).Style.BorderStyle := ebsSingle;
      TcxCheckBox(pComponente).Style.BorderColor := clBlack;
      TcxCheckBox(pComponente).Style.Color       := clSilver;
      TcxCheckBox(pComponente).Style.TextColor   := clBlack;

      TcxCheckBox(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxCheckBox(pComponente).StyleDisabled.BorderColor := clGray;
      TcxCheckBox(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxCheckBox(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxCheckBox(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxCheckBox(pComponente).StyleFocused.BorderColor := clBlack;
      TcxCheckBox(pComponente).StyleFocused.Color       := clSilver;
      TcxCheckBox(pComponente).StyleFocused.TextColor   := clBlack;

      TcxCheckBox(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxCheckBox(pComponente).StyleHot.BorderColor := clBlack;
      TcxCheckBox(pComponente).StyleHot.Color       := clSilver;
      TcxCheckBox(pComponente).StyleHot.TextColor   := clBlack;
    end;
  end;

  // DBCheckBox
  if (pComponente is TcxDBCheckBox) then
  begin
    if not(TcxDBCheckBox(pComponente).Properties.ReadOnly) then
    begin
      TcxDBCheckBox(pComponente).Style.BorderStyle := ebsSingle;
      TcxDBCheckBox(pComponente).Style.BorderColor := clBlack;
      TcxDBCheckBox(pComponente).Style.Color       := clWhite;
      TcxDBCheckBox(pComponente).Style.TextColor   := clWindowText;

      TcxDBCheckBox(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDBCheckBox(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDBCheckBox(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDBCheckBox(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDBCheckBox(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDBCheckBox(pComponente).StyleFocused.BorderColor := clBlue;
      TcxDBCheckBox(pComponente).StyleFocused.Color       := $00DDFFDD;
      TcxDBCheckBox(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDBCheckBox(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDBCheckBox(pComponente).StyleHot.BorderColor := clRed;
      TcxDBCheckBox(pComponente).StyleHot.Color       := clWhite;
      TcxDBCheckBox(pComponente).StyleHot.TextColor   := clBlack;
    end else
    begin
      TcxDBCheckBox(pComponente).Style.BorderStyle := ebsSingle;
      TcxDBCheckBox(pComponente).Style.BorderColor := clBlack;
      TcxDBCheckBox(pComponente).Style.Color       := clSilver;
      TcxDBCheckBox(pComponente).Style.TextColor   := clBlack;

      TcxDBCheckBox(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDBCheckBox(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDBCheckBox(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDBCheckBox(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDBCheckBox(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDBCheckBox(pComponente).StyleFocused.BorderColor := clBlack;
      TcxDBCheckBox(pComponente).StyleFocused.Color       := clSilver;
      TcxDBCheckBox(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDBCheckBox(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDBCheckBox(pComponente).StyleHot.BorderColor := clBlack;
      TcxDBCheckBox(pComponente).StyleHot.Color       := clSilver;
      TcxDBCheckBox(pComponente).StyleHot.TextColor   := clBlack;
    end;
  end;


  // CxImage
  if (pComponente is TcxImage) then
  begin
    TcxImage(pComponente).Style.BorderStyle := ebsSingle;
    TcxImage(pComponente).Style.BorderColor := clBlack;
    TcxImage(pComponente).Style.Color       := clWhite;
    TcxImage(pComponente).Style.TextColor   := clWindowText;

    TcxImage(pComponente).StyleDisabled.BorderStyle := ebsSingle;
    TcxImage(pComponente).StyleDisabled.BorderColor := clGray;
    TcxImage(pComponente).StyleDisabled.Color       := $00E6E6E6;
    TcxImage(pComponente).StyleDisabled.TextColor   := $002E2E2E;

    TcxImage(pComponente).StyleFocused.BorderStyle := ebsSingle;
    TcxImage(pComponente).StyleFocused.BorderColor := clBlue;
    TcxImage(pComponente).StyleFocused.Color       := $00DDFFDD;
    TcxImage(pComponente).StyleFocused.TextColor   := clBlack;

    TcxImage(pComponente).StyleHot.BorderStyle := ebsSingle;
    TcxImage(pComponente).StyleHot.BorderColor := clRed;
    TcxImage(pComponente).StyleHot.Color       := clWhite;
    TcxImage(pComponente).StyleHot.TextColor   := clBlack;
  end;

  // CxDbImage
  if (pComponente is TcxDBImage) then
  begin
    TcxDBImage(pComponente).Style.BorderStyle := ebsSingle;
    TcxDBImage(pComponente).Style.BorderColor := clBlack;
    TcxDBImage(pComponente).Style.Color       := clWhite;
    TcxDBImage(pComponente).Style.TextColor   := clWindowText;

    TcxDBImage(pComponente).StyleDisabled.BorderStyle := ebsSingle;
    TcxDBImage(pComponente).StyleDisabled.BorderColor := clGray;
    TcxDBImage(pComponente).StyleDisabled.Color       := $00E6E6E6;
    TcxDBImage(pComponente).StyleDisabled.TextColor   := $002E2E2E;

    TcxDBImage(pComponente).StyleFocused.BorderStyle := ebsSingle;
    TcxDBImage(pComponente).StyleFocused.BorderColor := clBlue;
    TcxDBImage(pComponente).StyleFocused.Color       := $00DDFFDD;
    TcxDBImage(pComponente).StyleFocused.TextColor   := clBlack;

    TcxDBImage(pComponente).StyleHot.BorderStyle := ebsSingle;
    TcxDBImage(pComponente).StyleHot.BorderColor := clRed;
    TcxDBImage(pComponente).StyleHot.Color       := clWhite;
    TcxDBImage(pComponente).StyleHot.TextColor   := clBlack;
  end;


  // cxDBCurrencyEdit
  if (pComponente is TcxDBCurrencyEdit) then
  begin
    if not(TcxDBCurrencyEdit(pComponente).Properties.ReadOnly) then
    begin
      TcxDBCurrencyEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxDBCurrencyEdit(pComponente).Style.BorderColor := clBlack;
      TcxDBCurrencyEdit(pComponente).Style.Color       := clWhite;
      TcxDBCurrencyEdit(pComponente).Style.TextColor   := clWindowText;

      TcxDBCurrencyEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDBCurrencyEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDBCurrencyEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDBCurrencyEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDBCurrencyEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDBCurrencyEdit(pComponente).StyleFocused.BorderColor := clBlue;
      TcxDBCurrencyEdit(pComponente).StyleFocused.Color       := $00DDFFDD;
      TcxDBCurrencyEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDBCurrencyEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDBCurrencyEdit(pComponente).StyleHot.BorderColor := clRed;
      TcxDBCurrencyEdit(pComponente).StyleHot.Color       := clWhite;
      TcxDBCurrencyEdit(pComponente).StyleHot.TextColor   := clBlack;
    end else
    begin
      TcxDBCurrencyEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxDBCurrencyEdit(pComponente).Style.BorderColor := clBlack;
      TcxDBCurrencyEdit(pComponente).Style.Color       := clSilver;
      TcxDBCurrencyEdit(pComponente).Style.TextColor   := clBlack;

      TcxDBCurrencyEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDBCurrencyEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDBCurrencyEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDBCurrencyEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDBCurrencyEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDBCurrencyEdit(pComponente).StyleFocused.BorderColor := clBlack;
      TcxDBCurrencyEdit(pComponente).StyleFocused.Color       := clSilver;
      TcxDBCurrencyEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDBCurrencyEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDBCurrencyEdit(pComponente).StyleHot.BorderColor := clBlack;
      TcxDBCurrencyEdit(pComponente).StyleHot.Color       := clSilver;
      TcxDBCurrencyEdit(pComponente).StyleHot.TextColor   := clBlack;
    end;
  end;

  // cxCurrencyEdit
  if (pComponente is TcxCurrencyEdit) then
  begin
    if not(TcxCurrencyEdit(pComponente).Properties.ReadOnly) then
    begin
      TcxCurrencyEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxCurrencyEdit(pComponente).Style.BorderColor := clBlack;
      TcxCurrencyEdit(pComponente).Style.Color       := clWhite;
      TcxCurrencyEdit(pComponente).Style.TextColor   := clWindowText;

      TcxCurrencyEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxCurrencyEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxCurrencyEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxCurrencyEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxCurrencyEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxCurrencyEdit(pComponente).StyleFocused.BorderColor := clBlue;
      TcxCurrencyEdit(pComponente).StyleFocused.Color       := $00DDFFDD;
      TcxCurrencyEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxCurrencyEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxCurrencyEdit(pComponente).StyleHot.BorderColor := clRed;
      TcxCurrencyEdit(pComponente).StyleHot.Color       := clWhite;
      TcxCurrencyEdit(pComponente).StyleHot.TextColor   := clBlack;
    end else
    begin
      TcxCurrencyEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxCurrencyEdit(pComponente).Style.BorderColor := clBlack;
      TcxCurrencyEdit(pComponente).Style.Color       := clSilver;
      TcxCurrencyEdit(pComponente).Style.TextColor   := clBlack;

      TcxCurrencyEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxCurrencyEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxCurrencyEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxCurrencyEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxCurrencyEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxCurrencyEdit(pComponente).StyleFocused.BorderColor := clBlack;
      TcxCurrencyEdit(pComponente).StyleFocused.Color       := clSilver;
      TcxCurrencyEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxCurrencyEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxCurrencyEdit(pComponente).StyleHot.BorderColor := clBlack;
      TcxCurrencyEdit(pComponente).StyleHot.Color       := clSilver;
      TcxCurrencyEdit(pComponente).StyleHot.TextColor   := clBlack;
    end;
  end;

  // cxDBSpinEdit
  if (pComponente is TcxDBSpinEdit) then
  begin
    if not(TcxDBSpinEdit(pComponente).Properties.ReadOnly) then
    begin
      TcxDBSpinEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxDBSpinEdit(pComponente).Style.BorderColor := clBlack;
      TcxDBSpinEdit(pComponente).Style.Color       := clWhite;
      TcxDBSpinEdit(pComponente).Style.TextColor   := clWindowText;

      TcxDBSpinEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDBSpinEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDBSpinEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDBSpinEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDBSpinEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDBSpinEdit(pComponente).StyleFocused.BorderColor := clBlue;
      TcxDBSpinEdit(pComponente).StyleFocused.Color       := $00DDFFDD;
      TcxDBSpinEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDBSpinEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDBSpinEdit(pComponente).StyleHot.BorderColor := clRed;
      TcxDBSpinEdit(pComponente).StyleHot.Color       := clWhite;
      TcxDBSpinEdit(pComponente).StyleHot.TextColor   := clBlack;
    end else
    begin
      TcxDBSpinEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxDBSpinEdit(pComponente).Style.BorderColor := clBlack;
      TcxDBSpinEdit(pComponente).Style.Color       := clSilver;
      TcxDBSpinEdit(pComponente).Style.TextColor   := clBlack;

      TcxDBSpinEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxDBSpinEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxDBSpinEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxDBSpinEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxDBSpinEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxDBSpinEdit(pComponente).StyleFocused.BorderColor := clBlack;
      TcxDBSpinEdit(pComponente).StyleFocused.Color       := clSilver;
      TcxDBSpinEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxDBSpinEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxDBSpinEdit(pComponente).StyleHot.BorderColor := clBlack;
      TcxDBSpinEdit(pComponente).StyleHot.Color       := clSilver;
      TcxDBSpinEdit(pComponente).StyleHot.TextColor   := clBlack;
    end;
  end;

  // cxSpinEdit
  if (pComponente is TcxSpinEdit) then
  begin
    if not(TcxSpinEdit(pComponente).Properties.ReadOnly) then
    begin
      TcxSpinEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxSpinEdit(pComponente).Style.BorderColor := clBlack;
      TcxSpinEdit(pComponente).Style.Color       := clWhite;
      TcxSpinEdit(pComponente).Style.TextColor   := clWindowText;

      TcxSpinEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxSpinEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxSpinEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxSpinEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxSpinEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxSpinEdit(pComponente).StyleFocused.BorderColor := clBlue;
      TcxSpinEdit(pComponente).StyleFocused.Color       := $00DDFFDD;
      TcxSpinEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxSpinEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxSpinEdit(pComponente).StyleHot.BorderColor := clRed;
      TcxSpinEdit(pComponente).StyleHot.Color       := clWhite;
      TcxSpinEdit(pComponente).StyleHot.TextColor   := clBlack;
    end else
    begin
      TcxSpinEdit(pComponente).Style.BorderStyle := ebsSingle;
      TcxSpinEdit(pComponente).Style.BorderColor := clBlack;
      TcxSpinEdit(pComponente).Style.Color       := clSilver;
      TcxSpinEdit(pComponente).Style.TextColor   := clBlack;

      TcxSpinEdit(pComponente).StyleDisabled.BorderStyle := ebsSingle;
      TcxSpinEdit(pComponente).StyleDisabled.BorderColor := clGray;
      TcxSpinEdit(pComponente).StyleDisabled.Color       := $00E6E6E6;
      TcxSpinEdit(pComponente).StyleDisabled.TextColor   := $002E2E2E;

      TcxSpinEdit(pComponente).StyleFocused.BorderStyle := ebsSingle;
      TcxSpinEdit(pComponente).StyleFocused.BorderColor := clBlack;
      TcxSpinEdit(pComponente).StyleFocused.Color       := clSilver;
      TcxSpinEdit(pComponente).StyleFocused.TextColor   := clBlack;

      TcxSpinEdit(pComponente).StyleHot.BorderStyle := ebsSingle;
      TcxSpinEdit(pComponente).StyleHot.BorderColor := clBlack;
      TcxSpinEdit(pComponente).StyleHot.Color       := clSilver;
      TcxSpinEdit(pComponente).StyleHot.TextColor   := clBlack;
    end;
  end;

end;

class function TRotinaGenerica.DateTimeToSql(pData: TDateTime): String;
begin
  Result := '"'+(FormatDateTime('yyyy-mm-dd hh:nn:ss', pData))+'"';
end;

class function TRotinaGenerica.DateToSql(pData: TDateTime): String;
begin
  Result := QuotedStr(FormatDateTime('yyyy-mm-dd', pData));
end;

class function TRotinaGenerica.enviarEmail01(aHost: String; aPort: Integer; aLogin, aSenha, aListaEmail, aAssunto, aCorpo: String; aAuth, aAuthSSL: Boolean): Boolean;
var
  AuthSSL  : TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP   : TIdSMTP;
  IdMessage: TIdMessage;

const
  ArqTeste = 'c:\teste.txt';
begin
//  TRotinaGenerica.enviarEmail01('smtp.gmail.com', 465 , 'phiwamoto@gmail.com','pedro23011987','phiwamoto@gmail.com','Envio de email','CORPO DA MENSAGEM', True, True);
//  TRotinaGenerica.enviarEmail01('smtp.live.com', 25, 'phiwamoto@hotmail.com','pedro23011987','phiwamoto@hotmail.com','Envio de email','CORPO DA MENSAGEM', True, True);

  Result := False;
  IdSMTP    := TIdSMTP.Create(nil);
  IdMessage := TIdMessage.Create(nil);
  try
    IdSMTP.Host     := aHost;
    IdSMTP.Port     := aPort;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Username := aLogin;
    IdSMTP.Password := aSenha;

    if aAuthSSL then
    begin
      AuthSSL                   := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      IdSMTP.IOHandler          := AuthSSL;
      IdSMTP.UseTLS             := utUseRequireTLS;
      AuthSSL.SSLOptions.Method := sslvSSLv3;
      AuthSSL.SSLOptions.Mode   := sslmClient;
    end;

    if aAuth then
      IdSMTP.AuthType := satDefault
    else
      IdSMTP.AuthType := satNone;

    try
      IdSMTP.Connect;

  IdMessage.ContentType := 'text/html';
  IdMessage.Priority := mpHighest;
  IdMessage.Encoding := meMIME;
  IdMessage.Headers.Values['X-Library'] := '';
  IdMessage.Body.Clear;

    IdMessage.From.Address               := aLogin;
    IdMessage.Recipients.EMailAddresses  := aListaEmail;
    IdMessage.Subject                    := aAssunto;
//    IdMessage.Body.Text:=                'Data/Hora: ' + FormatDateTime('dd/MM/yyyy HH:mm:ss', Now) +
//                                         #13#10#13#10 +
//                                         aCorpo;

    IdMessage.Body.Text                  := aCorpo;


    IdMessage.Body.SaveToFile(ArqTeste);
    IdMessage.MessageParts.Clear; // Limpa os anexos da lista
    TIdAttachmentFile.Create(IdMessage.MessageParts, TFileName(ArqTeste)); // adiciona anexo na lista, pode ser utilizado com looping

    IdSMTP.Send(IdMessage);
    ShowMessage('E-Mail enviado com sucesso para: ' + aListaEmail);
    except
      on E: Exception do
      begin
        ShowMessage('Erro ao enviar E-Mail:'+#13#10 + e.Message);
        Exit;
      end;
    end;
  finally
    IdSMTP.Disconnect;
    FreeAndNil(IdSMTP);
    FreeAndNil(IdMessage);
    if AuthSSL <> nil then
      FreeAndNil(AuthSSL);
  end;
  Result:= True;
end;

class procedure TRotinaGenerica.executarAquivo(pArquivo: String);
begin
  if FileExists(pArquivo) then
    ShellExecute(Application.Handle, nil, PChar(pArquivo), nil, nil, SW_SHOWNORMAL)
  else
    ShowMessage('Este arquivo não existe.');
end;

class function TRotinaGenerica.executaSql(pCds: TClientDataSet; pSql: String; pExecutar: Boolean): Boolean;
begin
  Result := True;
  try
    if pCds.Active then
      pCds.Close;

    pCds.CommandText := pSql;
    if pExecutar then
    begin
      pCds.Execute;

      if pCds.Active then
        pCds.Close;
    end
    else
      pCds.Open;
  except
    Result := False;
  end;
end;

class function TRotinaGenerica.extrairAno(pDate: TDateTime): Integer;
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(pDate, Ano, Mes, Dia);
  Result := Ano;
end;

class function TRotinaGenerica.extrairDia(pDate: TDateTime): Integer;
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(pDate, Ano, Mes, Dia);
  Result := Dia;
end;

class function TRotinaGenerica.extrairMes(pDate: TDateTime): Integer;
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(pDate, Ano, Mes, Dia);
  Result := Mes;
end;

class function TRotinaGenerica.FloatToSql(pFloat: Real): String;
var
  Numero: String;
begin
  Numero := FloatToStr(pfloat);
  Numero := StringReplace(Numero, '.', '', [rfReplaceAll]);
  Numero := StringReplace(Numero, ',', '.', [rfReplaceAll]);
  Result := Numero;
end;

class function TRotinaGenerica.Generation(pStr: String): Integer;
begin
  XDmF.dmCdsGeraCodigo.CommandText := 'SELECT GEN_ID( ' + pStr  + ',1) RESULTADO FROM RDB$DATABASE ';
  XDmF.dmCdsGeraCodigo.Close;
  XDmF.dmCdsGeraCodigo.Open;
  Result := XDmF.dmCdsGeraCodigo.FieldByName('RESULTADO').AsInteger;
  XDmF.dmCdsGeraCodigo.Close;
end;

class function TRotinaGenerica.getBuildInfo: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
  V1, V2, V3, V4: Word;
  Prog: String;
begin
  Prog := Application.ExeName;
  VerInfoSize := GetFileVersionInfoSize(PChar(Prog), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(Prog), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    V1 := dwFileVersionMS shr 16;
    V2 := dwFileVersionMS and $FFFF;
    V3 := dwFileVersionLS shr 16;
    V4 := dwFileVersionLS and $FFFF;
  end;
  FreeMem(VerInfo, VerInfoSize);
  Result := FormatFloat('#0', V1) + '.' + FormatFloat('#0', V2) + '.' + FormatFloat('#0', V3) + '.' + FormatFloat('##0', V4);
end;

class function TRotinaGenerica.getBuildInfo_Inteiro: integer;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
  V1, V2, V3, V4: Word;
  Prog: string;
begin
  Prog := Application.ExeName;
  VerInfoSize := GetFileVersionInfoSize(PChar(Prog), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(Prog), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    V1 := dwFileVersionMS shr 16;
    V2 := dwFileVersionMS and $FFFF;
    V3 := dwFileVersionLS shr 16;
    V4 := dwFileVersionLS and $FFFF;
  end;
  FreeMem(VerInfo, VerInfoSize);
  Result := StrToInt(FormatFloat('0', V1) + FormatFloat('00', V2) + FormatFloat('00', V3) + FormatFloat('000', V4));
end;

class function TRotinaGenerica.getBuildInfo_Mascara: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
  V1, V2, V3, V4: Word;
  Prog: string;
begin
  Prog := Application.ExeName;
  VerInfoSize := GetFileVersionInfoSize(PChar(Prog), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(Prog), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    V1 := dwFileVersionMS shr 16;
    V2 := dwFileVersionMS and $FFFF;
    V3 := dwFileVersionLS shr 16;
    V4 := dwFileVersionLS and $FFFF;
  end;
  FreeMem(VerInfo, VerInfoSize);
  result := FormatFloat('0', V1) + '.' + FormatFloat('00', V2) + '.' + FormatFloat('00', V3) + '.' + FormatFloat('000', V4);
end;

class function TRotinaGenerica.getIP: String;
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  Name: AnsiString;
begin
  WSAStartup(2, WSAData);
  SetLength(Name, 255);
  Gethostname(PAnsiChar(Name), 255);
  SetLength(Name, StrLen(PAnsiChar(Name)));
  HostEnt := gethostbyname(PAnsiChar(Name));

  with HostEnt^ do
  begin
    Result := Format('%d.%d.%d.%d', [Byte(h_addr^[0]), Byte(h_addr^[1]), Byte(h_addr^[2]), Byte(h_addr^[3])] );
  end;
  WSACleanup;
end;

class function TRotinaGenerica.IntToSql(pInt: Integer): String;
var
  Numero: String;
begin
  Numero := FormatFloat('#0', pInt);
  Result := Numero;
end;

class function TRotinaGenerica.MensagemConfirmar(Texto: String): String;
begin
  Result := TRotinaGenerica.MensagemGeral(Texto, MsgConfirmar, BtSN);
end;

class function TRotinaGenerica.MensagemGeral(Texto: String; TpImagem: TTipoImagem; TpBotao: TTipoBotao): String;
begin
  try
    XMensagemF := TXMensagemF.Create(Application);
    XMensagemF.LbMsg.Caption := '   '+Texto;

    // Tipos de Imagens na Mensagem a Exibir no Sistema

    // Confirmação
    if TpImagem = MsgConfirmar then
    begin
      XMensagemF.ImgConfirmar.Visible := True;
      XMensagemF.LbTitulo.Caption := '         Confirmar';
    end
    else
    if TpImagem = MsgInformar then
    begin
      XMensagemF.ImgInformacao.Visible := True;
      XMensagemF.LbTitulo.Caption := '         Informar';
    end else
    if TpImagem = MsgErro then
    begin
      XMensagemF.ImgErro.Visible := True;
      XMensagemF.LbTitulo.Caption := '         Erro';
    end else
    if TpImagem = MsgContinuar then
    begin
      XMensagemF.ImgContinuar.Visible := True;
      XMensagemF.LbTitulo.Caption := '         Continuar';
    end else
    if TpImagem = MsgCuidado then
    begin
      XMensagemF.ImgProibido.Visible := True;
      XMensagemF.LbTitulo.Caption := '         Cuidado';
    end else
    if TpImagem = MsgValidacao then
    begin
      XMensagemF.ImgValidacao.Visible := True;
      XMensagemF.LbTitulo.Caption := '         Validar';
    end;

    //Tipos de Botoes na Mensagem TpImagem
    if TpBotao = BtOk then
      XMensagemF.POK.Visible := True
    else if TpBotao = BtSnc then
      XMensagemF.PSNC.Visible := True
    else if TpBotao = BtCC then
      XMensagemF.PCC.Visible := True
    else if TpBotao = BtSn then
      XMensagemF.PSn.Visible := True;

    XMensagemF.ShowModal;
    Result := XMensagemF.Resultado;
  finally
    XMensagemF.Free;
  end;
end;

class function TRotinaGenerica.MensagemTButtonPersonal(Captions: array of string; const Msg: string; titulo: string; CaptionDef: integer): Integer;
var
  aMsgDlg: TForm;
  i: Integer;
  dlgButton: TButton;
  CaptionIndex: Integer;
  Buttons : TMsgDlgButtons;
  DlgType: TMsgDlgType;
begin
  Buttons := [];
  for I := 0 to Length(Captions) - 1 do begin
    Buttons := Buttons + [TMsgDlgBtn(i)];
  end;

  DlgType := mtConfirmation;

  aMsgDlg := CreateMessageDialog(Msg, DlgType, Buttons, TMsgDlgBtn(CaptionDef));

  CaptionIndex := 0;
  { Faz um loop varrendo os objetos do dialogo }
  for i := 0 to pred(aMsgDlg.ComponentCount) do
  begin
    if (aMsgDlg.Components[i] is TButton) then
    begin
      { Apenas entra na condição se o objeto for um button }
      dlgButton := TButton(aMsgDlg.Components[i]);
      if CaptionIndex > High(Captions) then //Captura o Index dos captions dos buttons criado no array
         Break;
      dlgButton.Caption := Captions[CaptionIndex];
      Inc(CaptionIndex);
    end;
  end;
  aMsgDlg.Caption := titulo;
  Result := aMsgDlg.ShowModal;

  //para manter um padrão....
  //foi feito este case, pois se a resposta for o mbYes no qual o botão será valor 0
  //o result dele vem como 7, mas para utilizar isto fica meio confuso,
  //então agora a ordem dos caption vai ser a mesma ordem dos result.
  case result of
    mrYes      : result := 0;
    mrNo       : result := 1;
    mrOk       : result := 2;
    mrCancel   : result := 3;
    mrAbort    : result := 4;
    mrRetry    : result := 5;
    mrIgnore   : result := 6;
    mrAll      : result := 7;
    mrNoToAll  : result := 8;
    mrYesToAll : result := 9;
    mrNone     : result := 10;
  end;
end;

class function TRotinaGenerica.MoneyToSql(pFloat: Real): String;
var
  Numero: String;
begin
  Numero := FormatFloat('#0.00', pFloat);
  Numero := StringReplace(Numero, ',', '.', [rfReplaceAll]);
  Result := Numero;
end;

class function TRotinaGenerica.Proximo(pTabela, pCampo, pCondicao: String): Integer;
begin
  XDmF.dmCdsGeraCodigo.Close;
  XDmF.dmCdsGeraCodigo.CommandText := 'SELECT MAX('+ pCampo +') MAXIMO FROM ' + pTabela;
  if pCondicao <> '' then
    XDmF.dmCdsGeraCodigo.CommandText := XDmF.dmCdsGeraCodigo.CommandText + ' WHERE ' + pCondicao;
  XDmF.dmCdsGeraCodigo.Open;
  if (XDmF.dmCdsGeraCodigo.IsEmpty) or (XDmF.dmCdsGeraCodigo.FieldByName('MAXIMO').IsNull) then
    Result := 1
  else
    Result := XDmF.dmCdsGeraCodigo.FieldByName('MAXIMO').AsInteger + 1;
  XDmF.dmCdsGeraCodigo.Close;
end;

class procedure TRotinaGenerica.registroVinculado(pMsg: String);
var
  Mensagem                              : string;
  Pos1, Pos2                            : integer;
begin
  if Pos(UpperCase('is not a valid date'), UpperCase(pMsg)) <> 0 then
  begin
    Mensagem := 'Data inválida!';
  end
  else
  if Pos(UpperCase('must have a value'), UpperCase(pMsg)) <> 0 then
  begin
    Pos1 := Pos('''', pMsg);
    Mensagem := pMsg;
    Delete(Mensagem, Pos1, 1);
    Pos2 := Pos('''', Mensagem);
    Mensagem := Copy(pMsg, Pos1 + 1, Pos2 - Pos1);
    Mensagem := 'O campo ' + Mensagem + ' é de preenchimento obrigatório.';
  end
  else
  if Pos(UpperCase('key violation'), UpperCase(pMsg)) <> 0 then
  begin
    Mensagem := 'Houve violação de Chave.  Registro já incluido.';
    MessageDlg(Mensagem, mtInformation, [mbOk], 0);
  end
  else
  if Pos(UpperCase('Input value'), UpperCase(pMsg)) <> 0 then
    Mensagem := 'Campo preenchido com valor não válido. Proceda a correção.'
  else
  if Pos(UpperCase('is not a valid time'), UpperCase(pMsg)) <> 0 then
    Mensagem := 'Hora inválida, proceda a correção.'
  else
  if Pos(UpperCase('Erro ApplyUpdates'), UpperCase(pMsg)) <> 0 then
    Mensagem := 'Não foi possível salvar a modificação no banco de dados.'
  else
  if Pos(UpperCase('is not a valid float'), UpperCase(pMsg)) <> 0 then
  begin
    Pos1 := Pos('''', pMsg);
    Mensagem := pMsg;
    Delete(Mensagem, Pos1, 1);
    Pos2 := Pos('''', Mensagem);
    Mensagem := Copy(pMsg, Pos1 + 1, Pos2 - Pos1);
    Mensagem := 'O valor  ' + Mensagem + ' não é válido.';
  end
  else
  if Pos(UpperCase('field value required'), UpperCase(pMsg)) <> 0 then
  begin
    Pos1 := Pos('column ', pMsg) + 7;
    Pos2 := Pos(',', pMsg);
    Mensagem := Copy(pMsg, Pos1, Pos2 - Pos1);
    Mensagem := 'Campo ' + Mensagem + ' deve ser preenchido.';
  end
  else
  if Pos(UpperCase('FOREIGN KEY'), UpperCase(pMsg)) <> 0 then
    Mensagem := 'Operação não permitida, registro vinculado em outra tabela.';

  XMensagemF := TXMensagemF.Create(Application);
  XMensagemF.LbMsg.Caption := Mensagem;
  XMensagemF.ImgErro.Visible := True;
  XMensagemF.LbTitulo.Caption := '         Erro';
  XMensagemF.POK.Visible := True;
  XMensagemF.ShowModal;
  FreeAndNil(XMensagemF);
end;

class function TRotinaGenerica.retornaDataExtenso(pData: TDateTime): String;
var
  NrDia: Integer;
  DiaSemana: Array[1..7] of String;
  Meses: Array[1..12] of String;
  Dia, Mes, Ano: Word;
begin
  // Dias da Semana
  DiaSemana[1] := 'Domingo';
  DiaSemana[2] := 'Segunda-feira';
  DiaSemana[3] := 'Terça-feira';
  DiaSemana[4] := 'Quarta-feira';
  DiaSemana[5] := 'Quinta-feira';
  DiaSemana[6] := 'Sexta-feira';
  DiaSemana[7] := 'Sábado';

  // Meses do Ano
  Meses[1]  := 'Janeiro';
  Meses[2]  := 'Fevereiro';
  Meses[3]  := 'Março';
  Meses[4]  := 'Abril';
  Meses[5]  := 'Maio';
  Meses[6]  := 'Junho';
  Meses[7]  := 'Julho';
  Meses[8]  := 'Agosto';
  Meses[9]  := 'Setembro';
  Meses[10] := 'Outubro';
  Meses[11] := 'Novembro';
  Meses[12] := 'Dezembro';

  DecodeDate(pData, Ano, Mes, Dia);
  NrDia := DayOfWeek(Date);
  Result := DiaSemana[NrDia]+', '+IntToStr(Dia)+' de '+Meses[Mes]+' de '+IntToStr(Ano);
end;

class function TRotinaGenerica.StrToSql(pStr, pStrDefault: String): String;
begin
  Result := ''''+(pStr)+'''';
  if ( Result = '' ) or (Result = '''''' ) then
  begin
    if pStrDefault <> '' then
    begin
      Result := pStrDefault;
    end;
  end;
end;

class procedure TRotinaGenerica.tentaFocar(pControle: TWinControl);
begin
  if pControle.CanFocus then
    pControle.SetFocus;
end;

class function TRotinaGenerica.TimeToSql(pTime: TTime): String;
begin
  Result := QuotedStr(FormatDateTime('hh:nn:ss', pTime));
end;

class function TRotinaGenerica.validarCNPJ(num: string): Boolean;
var
  n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12: Integer;
  d1, d2: Integer;
  digitado, calculado: string;
begin
  n1  := StrToIntDef(num[1], 0);
  n2  := StrToIntDef(num[2], 0);
  n3  := StrToIntDef(num[3], 0);
  n4  := StrToIntDef(num[4], 0);
  n5  := StrToIntDef(num[5], 0);
  n6  := StrToIntDef(num[6], 0);
  n7  := StrToIntDef(num[7], 0);
  n8  := StrToIntDef(num[8], 0);
  n9  := StrToIntDef(num[9], 0);
  n10 := StrToIntDef(num[10], 0);
  n11 := StrToIntDef(num[11], 0);
  n12 := StrToIntDef(num[12], 0);
  d1 := n12*2 + n11*3 + n10*4 + n9*5 + n8*6 + n7*7 + n6*8 + n5*9 + n4*2 + n3*3 + n2*4 + n1*5;
  d1 := 11-(d1 mod 11);
  if d1 >= 10 then
    d1 := 0;
  d2 := d1*2 + n12*3 + n11*4 + n10*5 + n9*6 + n8*7 + n7*8 + n6*9 + n5*2 + n4*3 + n3*4 + n2*5 + n1*6;
  d2 := 11-(d2 mod 11);
  if d2 >= 10 then
    d2 := 0;
  calculado := IntToStr(d1) + IntToStr(d2);
  digitado := num[13] + num[14];
  if calculado = digitado then
    Result := True
  else
    Result := False;
end;

class function TRotinaGenerica.validarCPF(num: string): Boolean;
var
  n1, n2, n3, n4, n5, n6, n7, n8, n9: Integer;
  d1, d2: Integer;
  digitado, calculado: String;
begin
  n1 := StrToIntDef(num[1], 0);
  n2 := StrToIntDef(num[2], 0);
  n3 := StrToIntDef(num[3], 0);
  n4 := StrToIntDef(num[4], 0);
  n5 := StrToIntDef(num[5], 0);
  n6 := StrToIntDef(num[6], 0);
  n7 := StrToIntDef(num[7], 0);
  n8 := StrToIntDef(num[8], 0);
  n9 := StrToIntDef(num[9], 0);

  d1 := n9*2 + n8*3 + n7*4 + n6*5 + n5*6 + n4*7 + n3*8 + n2*9 + n1*10;
  d1 := 11-(d1 mod 11);
  if d1 >= 10 then
    d1 := 0;
  d2 := d1*2 + n9*3 + n8*4 + n7*5 + n6*6 + n5*7 + n4*8 + n3*9 + n2*10 + n1*11;
  d2 := 11-(d2 mod 11);
  if d2 >= 10 then
    d2 := 0;
  calculado := IntToStr(d1) + IntToStr(d2);
  digitado := num[10] + num[11];
  if calculado = digitado then
    Result := True
  else
    Result := False;
end;

end.
