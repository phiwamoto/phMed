unit XMenuU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxRibbonForm, ComCtrls, ToolWin, dxSkinsCore, dxSkinsdxBarPainter,
  dxSkinsDefaultPainters, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsdxRibbonPainter, dxStatusBar, dxRibbonStatusBar,
  dxRibbon, ExtCtrls, ImgList, AppEvnts, dxBar, cxClasses, Menus,
  StdCtrls, cxButtons;

type
  TXMenuF = class(TdxRibbonForm)
    dxBarManager: TdxBarManager;
    dxBarApplicationMenu: TdxBarApplicationMenu;
    Timer: TTimer;
    CoolBar1: TCoolBar;
    tbForms: TToolBar;
    dxRibbon: TdxRibbon;
    dxRibbonStatusBar: TdxRibbonStatusBar;
    Sistema_Sair: TdxBarLargeButton;
    procedure TimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

  private
    { Private declarations }
    procedure posicionarFormulario(const pForm: TForm);


  public
    { Public declarations }

    procedure printScreeTela;
    procedure AEPrincMessage(var Msg: tagMSG; var Handled: Boolean);

    procedure barraClick(Sender: TObject);
    procedure ativaBotaBarra(Sender: TObject);

    procedure criaForm(const FormClasse: TFormClass; var NewForm: TObject; const WindowsState: TWindowState = wsNormal);
    procedure criaBotaoJanela(const pFormulario: TForm);





    function FecharTodasTelas: Boolean;


  end;

var
  XMenuF: TXMenuF;

implementation

uses
  jpeg, ClipBrd, XLibGenericoU;

{$R *.dfm}

{ TXMenuF }

procedure TXMenuF.posicionarFormulario(const pForm: TForm);
begin
  // Form.Left := (GetSystemMetrics(SM_CXSCREEN) - Form.Width) div 2;
  // Form.Top  := (GetSystemMetrics(SM_CYSCREEN) - Form.Height) div 2;
  // 30 = Tamanho do CoolBar      130 - Tamanha do Ribbon

   // pForm.Top := ((GetSystemMetrics(SM_CYSCREEN) - (pForm.Height + 20 + 10 ) ) div 2);

   // CORRETO
   // pForm.Top := ((GetSystemMetrics(SM_CYSCREEN) - (pForm.Height + 20 + 120 ) ) div 2);
end;

procedure TXMenuF.AEPrincMessage(var Msg: tagMSG; var Handled: Boolean);
var
  i: SmallInt;
begin
  if Msg.message = WM_MOUSEWHEEL then
  begin
    Msg.message := WM_KEYDOWN;
    Msg.lParam := 0;
    i := HiWord(Msg.wParam);
    if i > 0 then
      Msg.wParam := VK_UP
    else
      Msg.wParam := VK_DOWN;

    Handled := False;
  end
  else
  if (Msg.wParam = VK_SNAPSHOT) and (Msg.lParam and KF_UP <> KF_UP) then
  begin
    PrintScreeTela;
    Handled := False;
  end;
end;

procedure TXMenuF.ativaBotaBarra(Sender: TObject);
var
  nomeBotao: String;
  i: Integer;
begin
  nomeBotao := TForm(Sender).Name;

  for i := 0 to tbForms.ControlCount-1 do
  begin
    if (tbForms.Controls[i].ClassType = TcxButton) then //and (TcxButton(tbForms.Controls[i]).Colors.NormalText <> clRed) then begin
    begin
      if (tbForms.Controls[i].Name = nomeBotao ) then
      begin
        TcxButton(tbForms.Controls[i]).Colors.Normal     := clBlack;
        TcxButton(tbForms.Controls[i]).Colors.NormalText := clWhite;
      end
      else
      begin
        TcxButton(tbForms.Controls[i]).Colors.Normal     := clWhite;
        TcxButton(tbForms.Controls[i]).Colors.NormalText := clRed;
      end;
    end;
  end;
end;

procedure TXMenuF.barraClick(Sender: TObject);
var
  FormClasse: TFormClass;
  Form: TForm;
begin
  if Sender.ClassType = TcxButton then
  begin
    if Assigned( TForm((Sender as TcxButton).Name) ) then
    begin
      FormClasse := TFormClass( FindClass( 'T' + (Sender as TcxButton).Name ) );
      Form := TForm( FindGlobalComponent( (Sender as TcxButton).Name ) );
      CriaForm(FormClasse, TObject( Form ));
    end
    else
      ShowMessage('NAO EXISTE');
  end;
end;

procedure TXMenuF.criaBotaoJanela(const pFormulario: TForm);
var
  abasBotao: TcxButton;
begin
  abasBotao := TcxButton.Create(pFormulario);
  try
    abasBotao.ParentFont := False;
    abasBotao.Font.Name  :=  'Arial';
    abasBotao.Font.Style := abasBotao.Font.Style + [fsBold];
    abasBotao.Font.Size  := 10;

    abasBotao.Parent  := tbForms;
    abasBotao.Caption := pFormulario.Caption;

    abasBotao.Top    := 1;
    abasBotao.Width  := Length(pFormulario.Caption)*8;
    abasBotao.Height := 40;

    abasBotao.Colors.Normal      := clBlack;
    abasBotao.Colors.NormalText  := clWhite;

    abasBotao.Colors.Default      := clBlack;
    abasBotao.Colors.DefaultText  := clWhite;

    abasBotao.Colors.Disabled     := clBlack;
    abasBotao.Colors.DisabledText := clGray;

    abasBotao.Colors.Hot          := clGray;
    abasBotao.Colors.HotText      := clWhite;

    abasBotao.Colors.Pressed      := clGray;
    abasBotao.Colors.PressedText  := clBlue;

    abasBotao.Name := pFormulario.Name;
    abasBotao.ShowHint := True;
    (abasBotao as TcxButton).OnClick := BarraClick;
  except
    FreeAndNil(abasBotao);
  end;
end;

procedure TXMenuF.criaForm(const FormClasse: TFormClass; var NewForm: TObject; const WindowsState: TWindowState = wsNormal);
begin
  try
    // WaitMouse; // Veja outra dica para funções de ponteiro do mouse.
    if ( (TForm(NewForm) = nil ) or ( not TForm(NewForm).HandleAllocated) ) then //and ( not(Assigned(TForm(NewForm))) )  Then begin
    begin
      NewForm := FormClasse.Create(XMenuF);
      CriaBotaoJanela(TForm(NewForm));
    end
    else
    begin
      if (TForm(NewForm).WindowState = WsMinimized) Then
        TForm(NewForm).WindowState := wsMaximized;
    end;
    TForm(NewForm).WindowState := WindowsState; // wsNormal;
    TForm(NewForm).Show;
    PosicionarFormulario(TForm(NewForm));
    AtivaBotaBarra(TForm(NewForm));

  Finally
    //ResetMouse;
    //TForm(NewForm).Release;
    //TForm(NewForm) := Nil;
  end;
end;

function TXMenuF.FecharTodasTelas: Boolean;
var
  i: Integer;
begin
 
(*
  Result := False;

  for i:= 0 to MDIChildCount-1 do
  begin

    if MDIChildren[i] is TXTelaCadF then
    begin
      TXTelaPaiF(MDIChildren[i]).FechandoTela := true;
    end;
  end; //for

  for i:= 0 to MDIChildCount-1 do begin

    if MDIChildren[i] is TXTelaCadF then begin
      TXTelaCadF(MDIChildren[i]).ActionSairTela.Execute;
    end
    else
      MDIChildren[i].close;


  end;

  if MDIChildCount = 0 then

  *)
    Result := True;

end;

procedure TXMenuF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if not(FecharTodasTelas) then
     Exit;
  CanClose := FecharTodasTelas;
end;

procedure TXMenuF.FormCreate(Sender: TObject);
begin
  dxRibbon.ShowTabGroups := False;
end;

procedure TXMenuF.printScreeTela;
var
  Bmp: TBitmap;
  Jpeg: TJPEGImage;
  Dia, Mes, Ano, Hora, Min, Seg, Mseg: Word;
  CaminhoCompleto: String;
begin
  try
    Bmp := TBitmap.Create;
    Clipboard.Clear;
    keybd_event(VK_SNAPSHOT, 0, 0, 0);
    Application.ProcessMessages;
    Bmp.LoadFromClipboardFormat(CF_BITMAP, Clipboard.GetAsHandle(CF_BITMAP), 0);
    Jpeg := TJPEGImage.Create;
    Jpeg.Assign(bmp);
    DecodeDate(now,ano,mes,dia);
    DecodeTime(now,hora,min,seg,mseg);
    caminhocompleto :=



      Screen.ActiveForm.Caption+'-'
      +FormatFloat('0000',ano) + FormatFloat('00',mes) + FormatFloat('00',dia)
      +'-' + FormatFloat('00',hora) + FormatFloat('00',min) + FormatFloat('00',seg) + '.jpg';

    //remover caracter invalidos
    caminhocompleto := StringReplace(caminhocompleto,'/','',[rfReplaceAll]);
    caminhocompleto := StringReplace(caminhocompleto,',','',[rfReplaceAll]);
    caminhocompleto := StringReplace(caminhocompleto,':','',[rfReplaceAll]);
    caminhocompleto := ExtractFilePath(Application.ExeName) + caminhocompleto;
    jpeg.SaveToFile( caminhocompleto );
    jpeg.Free;
    bmp.Free;

  except
    on e:exception do showmessage('Ocorreu o seguinte erro:'+e.message);
  end;
end;

procedure TXMenuF.TimerTimer(Sender: TObject);
begin
  dxRibbonStatusBar.Panels[0].Text := ' '+TRotinaGenerica.RetornaDataExtenso(Date)+'  - Relógio: '+TimeToStr(Time);
//  dxRibbonStatusBar.Panels[1].Text := ' Usuário: '+XDmConexaoF.Usuario_Login;
//  dxRibbonStatusBar.Panels[2].Text := ' Perfil';
//  dxRibbonStatusBar.Panels[3].Text := ' Ip';
//  dxRibbonStatusBar.Panels[4].Text := ' Versão: '+TAplicacao.GetBuildInfo;
end;

end.



//unit XMenuU;
//
//interface
//
//uses
//  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
//  Dialogs, dxSkinsCore, dxSkinsdxBarPainter, dxSkinsDefaultPainters, cxGraphics,
//  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsdxRibbonPainter,
//  dxBar, dxRibbon, cxClasses, OleCtnrs, dxSkinsdxStatusBarPainter, dxStatusBar,
//
//  ExtCtrls, StdCtrls, dxRibbonForm, cxDropDownEdit, cxBarEditItem, cxContainer,
//  cxEdit, jpeg, cxImage, cxColorComboBox, cxCheckComboBox, cxShellComboBox,
//  cxFontNameComboBox, ImgList, Buttons, dxRibbonGallery, Grids, DBGrids, Menus,
//  cxButtons, ActnList, ClipBrd, AppEvnts, ShellApi, OleCtrls, dxRibbonStatusBar,
//  PhiDbComboBox, ComCtrls, ToolWin,
//
//  DB, DBClient, Mask, DBCtrls;
//
//
//type
//  //TXMenuSistemaF = class(TdxRibbonForm)
//  TXMenuF = class(TdxRibbonForm)
//    procedure FormCreate(Sender: TObject);
//    procedure TimerTimer(Sender: TObject);
//
//
//    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
//
//
//    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
//
//  private
//    { Private declarations }
//
//  public
//    { Public declarations }
//    Usuario_Codigo, Usuario_Login, Usuario_Senha: String;
//
//
//    Botao: TcxButton;
//    procedure BarraClick(Sender: TObject);
//
//    procedure CriaForm(FormClasse: TFormClass; var NewForm: TObject);
//
//    procedure CriaBotaoJanela(pFormulario: TForm);
//    procedure AtivaBotaBarra(Sender: TObject);
//
//    procedure PrintScreeTela;
//    procedure AEPrincMessage(var Msg: tagMSG; var Handled: Boolean);
//
//    function FecharTodasTelas: Boolean;
//  end;
//
//var
//  XMenuF: TXMenuF;
//
//implementation
//
//uses XLibGenericoU;
//
//
//{$R *.dfm}
//
//{ TXMenuSistemaF }
//
//procedure TXMenuF.CriaBotaoJanela(pFormulario: TForm);
//var
//  Botao: TcxButton;
//begin
//
//  Botao := TcxButton.Create(pFormulario);
//  try
//    Botao.ParentFont := false;
//    Botao.Font.Name :=  'Arial Narrow';
//    Botao.Font.Style := Botao.Font.Style+[fsBold];
//    Botao.Font.Size := 10;
//
//    Botao.Parent := tbForms;
//    Botao.Caption := pFormulario.Caption;
//
//    Botao.Top := 1;
//    Botao.Width := Length(pFormulario.Caption)*8;
//    Botao.Height := 40;
//
//    Botao.Colors.Default      := clWhite;
//    Botao.Colors.DefaultText  := clBlack;
//    Botao.Colors.Disabled     := clWhite;
//
//    Botao.Colors.DisabledText := clGray;
//    Botao.Colors.Hot          := clBlack;
//    Botao.Colors.HotText      := clWhite;
//
//    Botao.Colors.Normal       := clWhite;
//    Botao.Colors.NormalText   := clBlack;
//    Botao.Colors.Pressed      := clRed;
//
//    Botao.Colors.PressedText  := clBlack;
//
//
//
//    Botao.Name := pFormulario.Name;
//    Botao.ShowHint := true;
//    (Botao as TcxButton).OnClick := BarraClick;
//  except
//    FreeAndNil(Botao);
//  end;
//end;
//
//function TXMenuF.FecharTodasTelas: Boolean;
//var
//  i:integer;
//begin
////  result := false;
////
//////  for i:= 0 to MDIChildCount-1 do begin
//////
//////    if MDIChildren[i] is TXTelaCadF then begin
//////      TXTelaPaiF(MDIChildren[i]).FechandoTela := true;
//////    end;
//////  end; //for
////
////  for i:= 0 to MDIChildCount-1 do begin
////
//////    if MDIChildren[i] is TXTelaCadF then begin
//////      TXTelaCadF(MDIChildren[i]).ActionSairTela.Execute;
//////    end
//////    else
////      MDIChildren[i].close;
////
////
////  end;
////
////  if MDIChildCount = 0 then
////    result := true;
//
//end;
//
//procedure TXMenuF.CriaForm(FormClasse: TFormClass; var NewForm: TObject);
//begin
//     Try
//      // WaitMouse; // Veja outra dica para funções de ponteiro do mouse.
//       if ((TForm(NewForm) = Nil) Or (not TForm(NewForm).HandleAllocated)) then begin//and ( not(Assigned(TForm(NewForm))) )  Then begin
//          NewForm := FormClasse.Create(XMenuF);
//          CriaBotaoJanela(TForm(NewForm));
//
//       end
//       else
//          begin
//           if (TForm(NewForm).WindowState = WsMinimized) Then
//
//              TForm(NewForm).WindowState := wsNormal;
//
//           end;
//       TForm(NewForm).WindowState := wsNormal;
//
//       TForm(NewForm).Show;
//       AtivaBotaBarra(TForm(NewForm));
//     Finally
//       //ResetMouse;
//       //TForm(NewForm).Release;
//       //TForm(NewForm) := Nil;
//     end;
//
//end;
//
//
//
//procedure TXMenuF.BarraClick(Sender: TObject);
//var
//  FormClasse: TFormClass;
//  Form: TForm;
//begin
//  if Sender.ClassType = TcxButton then begin
//
//
//    if Assigned( TForm((Sender as TcxButton).Name) ) then begin
//
//      FormClasse := TFormClass( FindClass( 'T' + (Sender as TcxButton).Name ) );
//      Form := TForm( FindGlobalComponent( (Sender as TcxButton).Name ) );
//      CriaForm(FormClasse, TObject( Form ) );
//
////      if (Sender as TcxButton).Name = 'CadBancoF' then begin
////        CriaForm(FormClasse, TObject( CadBancoF )  );
////  //      AtivaBotaBarra(CadBancoF);
////      end;
////      if (Sender as TcxButton).Name = 'CadPacienteF' then begin
////        CriaForm(FormClasse, TObject( CadPacienteF )  );
//////        AtivaBotaBarra(CadPacienteF);
////      end;
////      if (Sender as TcxButton).Name = 'CadCidadeF' then begin
////        CriaForm(FormClasse, TObject( CadCidadeF )  );
////      end;
////      if (Sender as TcxButton).Name = 'CadMedicoF' then begin
////        CriaForm(FormClasse, TObject( CadMedicoF )  );
////      end;
////      if (Sender as TcxButton).Name = 'CadConvenioF' then begin
////        CriaForm(FormClasse, TObject( CadConvenioF )  );
////      end;
//
//
//
////        FormClasse := TFormClass( FindClass( 'T' + (Sender as TcxButton).Name ) );
//        //Form := TForm((Sender as TcxButton).Name);
////        if Assigned(TForm((Sender as TcxButton).Name)) then
////          CriaForm(FormClasse, TObject( Form )  );
//
////        showmessage('ClassName '+FormClasse.ClassName
////               +#13+'UnitName '+FormClasse.UnitName
////                   );
////
////        showmessage('Caption '+Form.Caption
////               +#13+'Name '+Form.Name
////               +#13+'GetNamePath '+Form.GetNamePath
////               +#13+'ToString '+Form.ToString
////                   );
//
////      ShowMessage('EXISTE');
////      CriaForm(
////                  TFormClass(
////                     FindClass( 'T'+(Sender as TcxButton).Name)
////                  )
////                 ,TObject(
////                     TForm( TFormClass( FindClass( 'T'+(Sender as TcxButton).Name ) ) )
////                  )
////               );
////      TForm((Sender as TcxButton).Name).Show;
//    end
//    else
//      ShowMessage('NAO EXISTE');
//  end;
//
// //  if Sender.ClassType = TMenuItem then
////    Acao((sender as TMenuItem).Name)
////  else
////  if Sender.ClassType = TBitBtn then
////    Acao((sender as TBitBtn).Name)
////  else
////  if Sender.ClassType = TSpeedButton then
////    Acao((sender as TSpeedButton).Name)
//end;
//
//
//
//procedure TXMenuF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
//begin
////  if not(FecharTodasTelas) then
////    Exit;
//  CanClose := FecharTodasTelas;
//end;
//
//procedure TXMenuF.FormCreate(Sender: TObject);
//begin
//  dxRibbon.ShowTabGroups := False;
//  dxRibbon.ColorSchemeName := 'Black';
//end;
//
//procedure TXMenuF.TimerTimer(Sender: TObject);
//begin
////  dxRibbonStatusBar.Panels[0].Text := ' '+TDateGen.RetornaDataExtenso(Date)+'  - Relógio: '+TimeToStr(Time);
////  // dxRibbonStatusBar.Panels[1].Text := ' Usuário: '+XDmConexaoF.Usuario_Login;
////  dxRibbonStatusBar.Panels[2].Text := ' Perfil';
////  dxRibbonStatusBar.Panels[3].Text := ' Ip';
////  dxRibbonStatusBar.Panels[4].Text := ' Versão: '+TAplicacao.GetBuildInfo;
//end;
//
//
//procedure TXMenuF.ApplicationEvents1Message(var Msg: tagMSG;
//  var Handled: Boolean);
//begin
//  AEPrincMessage(Msg, Handled);
//end;
//
//procedure TXMenuF.AtivaBotaBarra(Sender: TObject);
//var
//  aNameButton: String;
//  i: Integer;
//begin
//  aNameButton := TForm(Sender).Name;
//
//  for i := 0 to tbForms.ControlCount-1 do begin
//    if (tbForms.Controls[i].ClassType  = TcxButton) then begin//and (TcxButton(tbForms.Controls[i]).Colors.NormalText <> clRed) then begin
//      if (tbForms.Controls[i].Name = aNameButton ) then
//        TcxButton(tbForms.Controls[i]).Colors.NormalText := clBlue
//      else
//        TcxButton(tbForms.Controls[i]).Colors.NormalText := clBlack;
//      //TcxButton(tbForms.Controls[i]).Refresh;
//    end;
//  end;
//end;
//
//procedure TXMenuF.AEPrincMessage(var Msg: tagMSG; var Handled: Boolean);
//// Código para que o scroll do mouse funcione normalmente como um key down, key up
//var
//  i: SmallInt;
//begin
//  if Msg.message = WM_MOUSEWHEEL then begin
//    Msg.message := WM_KEYDOWN;
//    Msg.lParam := 0;
//    i := HiWord(Msg.wParam);
//    if i > 0 then
//      Msg.wParam := VK_UP
//    else
//      Msg.wParam := VK_DOWN;
//
//    Handled := False;
//  end
//  else
//  if (Msg.wParam = VK_SNAPSHOT) and (Msg.lParam and KF_UP <> KF_UP) then begin
//
//    PrintScreeTela;
//    Handled := False;
//  end;
//end;
//
//
//procedure TXMenuF.PrintScreeTela;
//var
//  Bmp: TBitmap;
//  Jpeg: TJPEGImage;
//  Dia, Mes, Ano, Hora, Min, Seg, Mseg: Word;
//  CaminhoCompleto: String;
//begin
//  try
//    Bmp := TBitmap.Create;
//    Clipboard.Clear;
//    keybd_event(VK_SNAPSHOT, 0, 0, 0);
//    Application.ProcessMessages;
//    Bmp.LoadFromClipboardFormat(CF_BITMAP, Clipboard.GetAsHandle(CF_BITMAP), 0);
//    Jpeg := TJPEGImage.Create;
//    Jpeg.Assign(bmp);
//    DecodeDate(now,ano,mes,dia);
//    DecodeTime(now,hora,min,seg,mseg);
//    caminhocompleto :=
//
//
//
//      Screen.ActiveForm.Caption+'-'
//      +FormatFloat('0000',ano) + FormatFloat('00',mes) + FormatFloat('00',dia)
//      +'-' + FormatFloat('00',hora) + FormatFloat('00',min) + FormatFloat('00',seg) + '.jpg';
//
//    //remover caracter invalidos
//    caminhocompleto := StringReplace(caminhocompleto,'/','',[rfReplaceAll]);
//    caminhocompleto := StringReplace(caminhocompleto,',','',[rfReplaceAll]);
//    caminhocompleto := StringReplace(caminhocompleto,':','',[rfReplaceAll]);
//    caminhocompleto := ExtractFilePath(Application.ExeName) + caminhocompleto;
//    jpeg.SaveToFile( caminhocompleto );
//    jpeg.Free;
//    bmp.Free;
//
//  except
//    on e:exception do showmessage('Ocorreu o seguinte erro:'+e.message);
//  end;
//end;
//
//end.
//
////    case cbStatus.ItemIndex of
////      1 : sql.Append(' AND (   contrato.tp_status = ''Aberto'' '
////                    +'      or contrato.tp_status = ''Administrado'' '
////                    +'      or contrato.tp_status = ''Rescisão'' '
////                    +'     ) ');
////      2 : sql.Append(' AND contrato.tp_status = ''Aberto'' ');
////      3 : sql.Append(' AND contrato.tp_status = ''Administrado'' ');
////      4 : sql.Append(' AND contrato.tp_status = ''Finalizado'' ');
////      5 : sql.Append(' AND contrato.tp_status = ''Rescisão'' ');
////    end;
//
//
////      case AnsiIndexStr(cbStatus.Text
////                        ,['Aberto'                   // 0
////                         ,'Andamento'                // 1
////                         ,'Ativo'                    // 2
////                         ,'Baixado'                  // 3
////                         ,'Cancelado'                // 4
////                         ,'Rescisão'                 // 5
////                         ]) of
////        // Aberto
////        0: begin
////          sqlPai.Append(' AND (CPA.TP_STATUS IN ("Aberto", "Lote") ) ');
////        end;
////
////        // Andamento
////        1: begin
////          sqlPai.Append(' AND (CPA.TP_STATUS = '+QuotedStr(cbStatus.Text)+' ) ');
////        end;
////
////        // Ativo
////        2: begin
////          sqlPai.Append(' AND (CPA.TP_STATUS IN ("Aberto", "Lote", "Andamento") ) ');
////        end;
////
////        // Baixado
////        3: begin
////          sqlPai.Append(' AND (CPA.TP_STATUS IN ("Baixado", "Lote Baixado") ) ');
////        end;
////
////        // Cancelado e Rescisao
////        4..5: begin
////          sqlPai.Append(' AND (CPA.TP_STATUS = '+QuotedStr(cbStatus.Text)+' ) ');
////        end;
////
////      end;
//
//
//
////procedure TXTelaPrincipalF.sbButtonActive(Sender: TObject);
////var
////  aNameButton:string;
////  i:integer;
////begin
////
////  aNameButton := 'sbMDI'+Tform(sender).Name;
////
////  for i := 0 to tbForms.ControlCount-1 do
////    if    (tbForms.Controls[i].ClassType  = TSpeedButton)
////      and (TSpeedButton(tbForms.Controls[i]).Font.Color <> clRed) then begin
////      if (tbForms.Controls[i].Name       = aNameButton ) then
////        TSpeedButton(tbForms.Controls[i]).Font.Color := clBlue
////      else
////        TSpeedButton(tbForms.Controls[i]).Font.Color := clBlack;
////    end;
////end;
//
//
//
////procedure TXTelaPrincipalF.CreateMDIChild(aMDIChild : string);
//////passar como parametro o nome do form CadPessoaF
////var
////  vClass: TPersistentClass;
////  vForm: TForm;
////begin
////  //qdo um MDIChild for criado enton sera automaticamente adicionado a esse menu
////  if not TSegSistema.VerificaExistePermissao(IntToStr(usuario.id),usuario.idPefil,aMDIChild,'Consultar') then begin
////    TMsgGen.MsgAviso('Este usuário não tem permissão para ver este formulário');
////    exit;
////  end;
////
////
////
////  vClass := GetClass('T' + aMDIChild);
////  if vClass <> nil then begin
////    vForm := TForm(FindGlobalComponent(aMDIChild));
////    if vForm = nil then begin
////      vForm := TFormClass(vClass).Create(self);
////      CriaBotaoChamaForm(vForm);
////      sbButtonActive(vForm);
////    end;
////    LockWindowUpdate(handle);
////    //ver ser vai criar as telas MDI maximizado ou não.
//////    vForm.WindowState := wsMaximized;
////    vForm.Show;
////    LockWindowUpdate(0);
////  end;
////end;
