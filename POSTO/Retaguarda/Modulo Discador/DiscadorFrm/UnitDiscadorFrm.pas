unit UnitDiscadorFrm;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 StdCtrls, ExtCtrls, ComCtrls, Inifiles, Variants, IBQuery, DB,
 IBCustomDataSet, IBSQL, Placemnt, Buttons;

type
 TDiscadorFrm = class(TForm)
   GroupBox1: TGroupBox;
   Label1: TLabel;
   ComboBox2: TComboBox;
   Memo1: TMemo;
   Label2: TLabel;
   SQLCallLog: TIBSQL;
   Check_Call_Prefix: TIBQuery;
   QryOperadora: TIBQuery;
   FormStorage1: TFormStorage;
   BitBtn2: TBitBtn;
   GroupBox2: TGroupBox;
   Button2: TButton;
   Button3: TButton;
   Button4: TButton;
   Button5: TButton;
   Button6: TButton;
   Button7: TButton;
   Button8: TButton;
   Button9: TButton;
   Button10: TButton;
   Button11: TButton;
   Button12: TButton;
   Button13: TButton;
   function ToDial(NTD: string): string;
   procedure FormCreate(Sender: TObject);
   procedure Button2Click(Sender: TObject);
   procedure Modemdial;
   procedure Button1Click(Sender: TObject);
   procedure FormDestroy(Sender: TObject);
   procedure ComboBox2KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure ComboBox2Enter(Sender: TObject);
   procedure ComboBox2Exit(Sender: TObject);
   procedure FormKeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure CallLog(Numero: string; CallStr: string; Manual: boolean;
     CodCli, CodCont, Prefixo_Bloqueado, CodCallSolicitante: integer);
   function CheckCallBlock(Numero: string): integer;
   function SetOperadora(NTD: string): string;

   procedure SelectSolicitante;
   procedure GetCodCallSolicitante(Sender: TObject);
   procedure CancelaSolicitante(Sender: TObject);

 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 DiscadorFrm: TDiscadorFrm;
 BufStr: string;                  //Config de discagem
 hCommFile: THandle;
 Status: longbool;
 NumberWritten: DWORD;

 CODCALLSOLICITANTE: integer;    //codigo do solicitante de chamada


implementation

uses  {Unit1,} UnitFuncoes, UnitDataM1, UnitFrmPrincipal, Unit5Cadastro,
 Unit2, UnitSelect;

{$R *.DFM}

function RemoveInvalid(what, where: string): string;
 // what is the string to be removed, where is the string to be removed from
 //Procedure to remove string from another
var
 tstr, res: string;
 x: integer;
begin
 tstr := where;
 x := 1;
 res := '';
 while x < length(tstr) + 1 do
  begin
   if copy(tstr, x, 1) <> what then
     res := res + copy(tstr, x, 1);
   x := x + 1;
  end;
 Result := res;
end;

function TDiscadorFrm.SetOperadora(NTD: string): string;
var
 pos_operadora: integer;
 NumArea, NumOperadora: string;
begin
 Result := NTD;
 pos_operadora := pos(uppercase('xx'), uppercase(NTD)); //posicao de 'XX'

 if pos_operadora <> 0 then
  begin
   //padrao será Embratel(21) se nao encontrar operadora
   Result := copy(NTD, 0,pos_operadora - 1) + '21' + Copy(NTD,
     pos_operadora + 2,length(NTD));

   QryOperadora.Prepare;
   QryOperadora.Open;

   //loop para checar operadora
   while not QryOperadora.EOF do
    begin
     NumArea := QryOperadora['NUMAREA'];            //codigo de localidade
     NumOperadora := QryOperadora['NUMOPERADORA'];  //codigo da operadora
     if pos(NumArea, NTD) = pos_operadora + 2 then
      begin
       Result := copy(NTD, 0,pos_operadora - 1) + NumOperadora + Copy(NTD,
         pos_operadora + 2,length(NTD));
       break;
      end;
     QryOperadora.Next;
    end;

   QryOperadora.Close;
  end;
end;

function TDiscadorFrm.ToDial(NTD: string): string;
var
 x: integer;
 tempstr: string;
begin
 tempstr := '';
 for x := 0 to length(NTD) do
  begin
   if NTD[x] in ['x', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'] then
     tempstr := tempstr + NTD[x];
  end;
 NTD := tempstr;

 Result := SetOperadora(NTD);
 Combobox2.Text := Result;
end;

function TDiscadorFrm.CheckCallBlock(Numero: string): integer;
begin
 //Result é -1 se nenhum prefixo barrado
 Result := -1;

 //loop em prefixo validos (habilitados)
 with Check_Call_Prefix do
  begin
   sql.Clear;
   sql.add('SELECT PREFIXO FROM PREFIXOVALIDO');
   sql.add('WHERE (CODSETOR = :codsetor) AND (CODSETORUSER = :codsetoruser)');
   params.ParamByName('codsetor').AsInteger := CODSETOR;
   params.ParamByName('codsetoruser').AsInteger := CODSETORUSER;
   Prepare;
   Open;
  end;

 if Check_Call_Prefix.RecordCount > 0 then
  begin
   Result := -2;
   //loop para checar prefixo valido (habilitado)
   while not Check_Call_Prefix.EOF do
    begin
     if Pos(Check_Call_Prefix['PREFIXO'], Numero) = 1 then
      begin
       Result := -1;
       Break;
      end;
     Check_Call_Prefix.Next;
    end;
  end
 else
  begin
   //loop em prefixos bloqueados (inválidos)
   with Check_Call_Prefix do
    begin
     sql.Clear;
     sql.Add('SELECT PREFIXO FROM PREFIXOINVALIDO');
     sql.add('WHERE (CODSETOR = :codsetor) AND (CODSETORUSER = :codsetoruser)');
     params.ParamByName('codsetor').AsInteger := CODSETOR;
     params.ParamByName('codsetoruser').AsInteger := CODSETORUSER;
     Prepare;
     Open;
    end;

   //loop para checar prefixo bloqueado
   Result := -1;
   while not Check_Call_Prefix.EOF do
    begin
     if Pos(Check_Call_Prefix['PREFIXO'], Numero) = 1 then
      begin
       Result := StrToInt(Check_Call_Prefix['PREFIXO']); //retorna prefixo bloqueado
       Break;
      end;
     Check_Call_Prefix.Next;
    end;
  end;
end;

procedure TDiscadorFrm.Modemdial;
 //This Procedure is for Directly Access the modem
 //Was used before the XModem Component (working fine)
 //I Still want to know how to detect the RING state without any component! (Victory)
var
 s, Path: string;
 Porta: PChar;
 ArquivoIni: TiniFile;
 codcli, codcont, prefixo_bloqueado: integer;
 Manual: boolean;
begin
 Path := CreateDefaultIniFile;
 ArquivoIni := TIniFile.Create(Path);
 try
   if not ArquivoINI.ReadBool('Discador', 'ModemNaoInstalado', False) then
    begin
     //------ SELECAO DE SOLICITANTE DE CHAMADA ------
     CODCALLSOLICITANTE := -1;
     if ArquivoINI.ReadBool('Discador', 'CallSolicitante', False) then
      begin
       SelectSolicitante;               // caixa para selecao de solicitante da chamada
       if CODCALLSOLICITANTE = -2 then  // se chamada foi cancelada ...
         exit;                           // ... finaliza procedure ModemDial
      end;

     if hCommFile = INVALID_HANDLE_VALUE then
      begin
       logtofile('Discador - Não conectado ao modem, Conectando antes da discagem...', True);
       memo1.Lines.add('Não conectado ao modem.');
       memo1.Lines.add('Conectando antes da discagem...');
       Porta := PChar('COM' + IntToStr(ArquivoIni.ReadInteger('Discador', 'COM', 1)));
       hCommFile := CreateFile(Porta, GENERIC_WRITE,
         0, //not shared
         nil, //no security ??
         OPEN_EXISTING,
         FILE_ATTRIBUTE_NORMAL,
         0);//template
       if hCommFile = INVALID_HANDLE_VALUE then
        begin
         logtofile('Discador - Não foi possível conectar a porta especificada', True);
         memo1.Lines.add('Não foi possível conectar a porta especificada');
         memo1.Lines.add('Status: Desconectado');
        end
       else
        begin
         if ArquivoIni.ReadString('Discador', 'ModemStartString1', '') <> '' then
          begin
           Status := WriteFile(hCommFile, PChar(ArquivoIni.ReadString('Discador',
             'ModemStartString1', '') + #13#10)[0],
             Length(ArquivoIni.ReadString('Discador',
             'ModemStartString1', '')),
             NumberWritten, nil);
           //showmessage('string1 enviada');

           if ArquivoIni.ReadString('Discador', 'ModemStartString2', '') <> '' then
            begin
             Status := WriteFile(hCommFile, PChar(ArquivoIni.ReadString('Discador',
               'ModemStartString2', '') + #13#10)[0],
               Length(ArquivoIni.ReadString('Discador',
               'ModemStartString2', '')),
               NumberWritten, nil);
             //showmessage('string2 enviada');

             if ArquivoIni.ReadString('Discador', 'ModemStartString3', '') <> '' then
              begin
               Status := WriteFile(hCommFile,
                 PChar(ArquivoIni.ReadString('Discador', 'ModemStartString3', '') + #13#10)[0],
                 Length(ArquivoIni.ReadString('Discador',
                 'ModemStartString3', '')),
                 NumberWritten, nil);
               //showmessage('string3 enviada');
              end;
            end;
          end;
        end;
      end
     else
      begin
       //------- parametros para procedure CallLog ------
       if DiscadorFrm.FormState = [fsmodal] then
         Manual := True
       else
         Manual := False;

       if (Assigned(ClienteCadFrm)) and (not varisnull(DM1.dstcadastro['CODCLI'])) and
         (DiscadorFrm.FormState <> [fsmodal]) then
         codcli := DM1.dstcadastro['codcli']
       else
         codcli := 0;

       if (Assigned(ContatoCadFrm)) and (not varisnull(DM1.DstContato['CODCONT'])) and
         (DiscadorFrm.FormState <> [fsmodal]) then
         codcont := DM1.DstContato['CODCONT']
       else
         codcont := 0;

       s := ArquivoINI.readstring('Discador', 'LinhaExterna', ' ') + ToDial(combobox2.Text);
       //Create a string to send to modem
       if ArquivoIni.ReadBool('Discador', 'DiscagemTom', True) then
         //Choose Tone or Pulse
         s := 'ATDT' + s
       else
         s := 'ATDP' + s;

       prefixo_bloqueado := CheckCallBlock(combobox2.Text);
       if prefixo_bloqueado = -1 then
        begin
         NumberWritten := 0;

         Status := WriteFile(hCommFile, PChar(s + #13#10)[0],
           //Send phone number to modem
           Length(s),
           NumberWritten,
           nil);
         memo1.Lines.add(combobox2.Text);
         memo1.Lines.add('Aguardando atendimento...');

         //------ LOG DE CHAMADAS EFETUADAS ------
         CallLog(combobox2.Text, s, Manual, CodCli, CodCont, prefixo_bloqueado,
           CODCALLSOLICITANTE);

         sleep(5000);
         Application.messagebox('Retire o telefone do gancho'#13'Ou clique em OK para desligar.',
           'Atenção',
           mb_iconinformation + mb_OK);
         WriteFile(hCommFile, 'ATH'^M^J, 5,NumberWritten, nil);
         memo1.Clear;
        end
       else //if CheckCalBlock <> -1 (prefixo bloqueado)
        begin
         if prefixo_bloqueado <> -2 then
         //(-2 se está na lista de chamadas autorizadas/validas)
          begin
           logtofile('Discador - O Usuário atual não está autorizado a realizar este tipo de chamada.' +
             ' - Prefixo bloqueado: [ ' + IntToStr(prefixo_bloqueado) + ' ]' +
             ' - Número Discado:    [ ' + combobox2.Text + ' ]', True);
           Application.MessageBox(PChar('O Usuário atual não está autorizado a realizar'#13 +
             'este tipo de chamada.'#13#13 +
             ' - Prefixo bloqueado: [ ' +
             IntToStr(prefixo_bloqueado) + ' ]'#13 +
             ' - Número Discado:    [ ' + combobox2.Text + ' ]'),
             'PREFIXO BLOQUEADO', mb_iconExclamation + mb_OK);

           //------- LOG DE CHAMADAS BLOQUEADAS ------
           CallLog(combobox2.Text, s, Manual, CodCli, CodCont,
             prefixo_bloqueado, CODCALLSOLICITANTE);

           memo1.Lines.Add('Chamada Bloqueada:');
           memo1.Lines.Add(' - Prefixo Bloqueado: [ ' + IntToStr(prefixo_bloqueado) + ' ]');
           memo1.Lines.Add(' - Número Discado: [ ' + Combobox2.Text + ' ]');
          end
         else // se = -2
          begin
           logtofile('Discador - Este prefixo não está na lista de prefixos válidos para o Usuário Atual' +
             ' - Número Discado:    [ ' + combobox2.Text + ' ]', True);
           Application.MessageBox(PChar('Este prefixo não está na lista de prefixos'#13 +
             'válidos para o Usuário Atual'#13 +
             ' - Número Discado:    [ ' + combobox2.Text + ' ]'),
             'PREFIXO BLOQUEADO', mb_iconExclamation + mb_OK);
           //------- LOG DE CHAMADAS BLOQUEADAS ------
           CallLog(combobox2.Text, s, Manual, CodCli, CodCont,
             prefixo_bloqueado, CODCALLSOLICITANTE);

           memo1.Lines.Add('Chamada Bloqueada:');
           memo1.Lines.Add(' - Número Discado: [ ' + Combobox2.Text + ' ]');
          end;
        end;
      end;
    end
   else
    begin
     logtofile('Discador - Não foi realizada tentativa de discagem - Opção "modem não instalado" selecionada' +
       ' - Número Discado:    [ ' + combobox2.Text + ' ]', True);

     application.messagebox('Não foi realizada tentativa de discagem - Opção "modem não instalado" selecionada'
       + #13#13 +
       'Para utilizar o discador é preciso que o modem esteja instalado e configurado, verifique as configurações do ' +
       'Discador em:' + #13 +
       'Programa >Sistema >Configurações Gerais >Discador',
       'Atenção', mb_ok + mb_iconinformation);
    end;
 except
   logtofile('Discador - Falha ao tentar executar procedimento de discagem.' +
     'Verifique as configurações do modem e tente novamente...', True);
   application.messagebox('Falha ao tentar executar procedimentos de discagem.' + #13#10 +
     'Verifique as configurações do modem e tente novamente...',
     'Atenção', mb_ok + mb_iconerror);
   CloseHandle(hCommFile);      //Close communication port
  end;

 Arquivoini.Free;
end;

procedure TDiscadorFrm.SelectSolicitante;
begin
 screen.Cursor := crhourglass;

 Selectfrm.Caption := 'Selecione o solicitante da chamada';
 SelectFrm.DBGrid1.Columns.Items[0].FieldName := 'NOME';
 //seta procedure de acao para botao OK e SAIR de SelectFrm
 SelectFrm.SpeedButton1.OnClick := GetCodCallSolicitante;
 SelectFrm.SpeedButton6.OnClick := CancelaSolicitante;

 with SelectFrm.IBQuery1 do
  begin
   Close;
   UnPrepare;
   sql.Clear;
   sql.Add('SELECT CODCALLSOLICITANTE, NOME FROM CALLSOLICITANTE');
   sql.add('ORDER BY NOME');
   Prepare;
   Open;
  end;

 screen.Cursor := crdefault;

 SelectFrm.showmodal;
end;

//Procedure para botao OK de SelectFrm
procedure TDiscadorFrm.GetCodCallSolicitante(Sender: TObject);
begin
 screen.cursor := crhourglass;

 if (SelectFrm.IBQuery1.RecordCount <> 0) then
   CODCALLSOLICITANTE := SelectFrm.IBquery1['CODCALLSOLICITANTE'];

 SelectFrm.Close;
 screen.cursor := crdefault;
end;

//procedure para botao SAIR de SelectFrm
procedure TDiscadorFrm.CancelaSolicitante(Sender: TObject);
begin
 SelectFrm.Close;

 CODCALLSOLICITANTE := -2; //CANCELA CHAMADA COM SELECAO DE SOLICITANTE

 //volta a procedure padrao do botao sair da tela SelectFrm
 SelectFrm.SpeedButton6.OnClick := SelectFrm.SpeedButton6Click;
end;

procedure TDiscadorFrm.FormCreate(Sender: TObject);
var
 ArquivoIni: TiniFile;
 Porta: PChar;
 Path: string;
begin
 Path := CreateDefaultIniFile;
 ArquivoIni := TIniFile.Create(Path);
 try
   if not ArquivoINI.ReadBool('Discador', 'ModemNaoInstalado', False) then
    begin
     Porta := PChar('COM' + IntToStr(ArquivoIni.ReadInteger('Discador', 'COM', 1)));
     hCommFile := CreateFile(Porta, GENERIC_WRITE,
       0, //not shared
       nil, //no security ??
       OPEN_EXISTING,
       FILE_ATTRIBUTE_NORMAL,
       0);//template
     if hCommFile = INVALID_HANDLE_VALUE then
      begin
       logtofile('Discador - Não foi possível conectar a porta especificada', True);
       memo1.Lines.add('Não foi possível conectar a porta especificada');
       memo1.Lines.add('Status: Desconectado');
      end
     else
      begin
       if ArquivoIni.ReadString('Discador', 'ModemStartString1', '') <> '' then
        begin
         Status := WriteFile(hCommFile, PChar(ArquivoIni.ReadString('Discador',
           'ModemStartString1', '') + #13#10)[0],
           Length(ArquivoIni.ReadString('Discador',
           'ModemStartString1', '')),
           NumberWritten, nil);
         //showmessage('string1 enviada');

         if ArquivoIni.ReadString('Discador', 'ModemStartString2', '') <> '' then
          begin
           Status := WriteFile(hCommFile, PChar(ArquivoIni.ReadString('Discador',
             'ModemStartString2', '') + #13#10)[0],
             Length(ArquivoIni.ReadString('Discador',
             'ModemStartString2', '')),
             NumberWritten, nil);
           //showmessage('string2 enviada');

           if ArquivoIni.ReadString('Discador', 'ModemStartString3', '') <> '' then
            begin
             Status := WriteFile(hCommFile, PChar(ArquivoIni.ReadString('Discador',
               'ModemStartString3', '') + #13#10)[0],
               Length(ArquivoIni.ReadString('Discador',
               'ModemStartString3', '')),
               NumberWritten, nil);
             //showmessage('string3 enviada');
            end;
          end;
        end;
      end;
    end
   else
    begin
     memo1.Lines.add('Não foi realizada tentativa de conexão com a porta - MODEM não INSTALADO');
     memo1.Lines.add('Status: Desconectado');
    end;
 except
   logtofile('Discador - Falha ao tentar executar procedimento de discagem.' +
     'Verifique as configurações do modem e tente novamente...', True);
   application.messagebox('Falha ao tentar executar procedimentos de discagem.' + #13#10 +
     'Verifique as configurações do modem e tente novamente...',
     'Atenção', mb_ok + mb_iconerror);
   CloseHandle(hCommFile);      //Close communication portArquivoIni.free;
  end;

 Arquivoini.Free;
end;

procedure TDiscadorFrm.Button2Click(Sender: TObject);
begin
 combobox2.Text := combobox2.Text + TButton(Sender).Caption;
end;

procedure TDiscadorFrm.Button1Click(Sender: TObject);
begin
 cursor := crHourGlass;

 if combobox2.Text <> '' then
  begin
   if combobox2.Items.IndexOf(combobox2.Text) = -1 then
     combobox2.Items.Add(combobox2.Text);
   if combobox2.items.Count = 6 then
     combobox2.items.Delete(5);

   BitBtn2.Enabled := False;
   ModemDial;
   BitBtn2.Enabled := True;
  end;

 cursor := crDefault;
end;

procedure TDiscadorFrm.FormDestroy(Sender: TObject);
begin
 CloseHandle(hCommFile);      //Close communication port
end;

procedure TDiscadorFrm.ComboBox2KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   BitBtn2.click;
 if key = vk_escape then
   self.Close;
end;

procedure TDiscadorFrm.ComboBox2Enter(Sender: TObject);
begin
 combobox2.color := claqua;
end;

procedure TDiscadorFrm.ComboBox2Exit(Sender: TObject);
begin
 combobox2.color := clwindow;
end;

procedure TDiscadorFrm.FormKeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_escape then
   self.Close;

 if key = Vk_NumPad1 then
  begin
   button2.onclick := nil;
   button2.Perform(wm_lbuttondown, 0,0);
   sleep(200);
   button2.Perform(wm_lbuttonup, 0,0);
   button2.onclick := button2click;
   combobox2.SetFocus;
   combobox2.SelStart := length(combobox2.Text);
  end;

 if key = Vk_NumPad2 then
  begin
   button3.onclick := nil;
   button3.Perform(wm_lbuttondown, 0,0);
   sleep(200);
   button3.Perform(wm_lbuttonup, 0,0);
   button3.onclick := button2click;
   combobox2.SetFocus;
   combobox2.SelStart := length(combobox2.Text);
  end;

 if key = Vk_NumPad3 then
  begin
   button4.onclick := nil;
   button4.Perform(wm_lbuttondown, 0,0);
   sleep(200);
   button4.Perform(wm_lbuttonup, 0,0);
   button4.onclick := button2click;
   combobox2.SetFocus;
   combobox2.SelStart := length(combobox2.Text);
  end;

 if key = Vk_NumPad4 then
  begin
   button5.onclick := nil;
   button5.Perform(wm_lbuttondown, 0,0);
   sleep(200);
   button5.Perform(wm_lbuttonup, 0,0);
   button5.onclick := button2click;
   combobox2.SetFocus;
   combobox2.SelStart := length(combobox2.Text);
  end;

 if key = Vk_NumPad5 then
  begin
   button6.onclick := nil;
   button6.Perform(wm_lbuttondown, 0,0);
   sleep(200);
   button6.Perform(wm_lbuttonup, 0,0);
   button6.onclick := button2click;
   combobox2.SetFocus;
   combobox2.SelStart := length(combobox2.Text);
  end;

 if key = Vk_NumPad6 then
  begin
   button7.onclick := nil;
   button7.Perform(wm_lbuttondown, 0,0);
   sleep(200);
   button7.Perform(wm_lbuttonup, 0,0);
   button7.onclick := button2click;
   combobox2.SetFocus;
   combobox2.SelStart := length(combobox2.Text);
  end;

 if key = Vk_NumPad8 then
  begin
   button9.onclick := nil;
   button9.Perform(wm_lbuttondown, 0,0);
   sleep(200);
   button9.Perform(wm_lbuttonup, 0,0);
   button9.onclick := button2click;
   combobox2.SetFocus;
   combobox2.SelStart := length(combobox2.Text);
  end;

 if key = Vk_NumPad9 then
  begin
   button10.onclick := nil;
   button10.Perform(wm_lbuttondown, 0,0);
   sleep(200);
   button10.Perform(wm_lbuttonup, 0,0);
   button10.onclick := button2click;
   combobox2.SetFocus;
   combobox2.SelStart := length(combobox2.Text);
  end;

 if key = Vk_NumPad0 then
  begin
   button12.onclick := nil;
   button12.Perform(wm_lbuttondown, 0,0);
   sleep(200);
   button12.Perform(wm_lbuttonup, 0,0);
   button12.onclick := button2click;
   combobox2.SetFocus;
   combobox2.SelStart := length(combobox2.Text);
  end;
end;

procedure TDiscadorFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 combobox2.Clear;
 memo1.Clear;
end;

//--------------LOG DE LIGACOES EFETUADAS--------------------------------
procedure TDiscadorFrm.CallLog(Numero: string; CallStr: string;
 Manual: boolean; CodCli, CodCont, Prefixo_Bloqueado, CodCallSolicitante: integer);
begin
 with SQLCallLog do
  begin
   Close;
   sql.Clear;
   sql.Add(
     'INSERT INTO CALLLOG (NUMERO, CALLSTR, DATAHORASTART, CODSETOR,CODSETORUSER, CODCLI, CODCONT, DISCAGEMMANUAL, EFETUADA, PREFIXOBARRADO, CODCALLSOLICITANTE)');
   SQL.Add(
     'VALUES(:numero, :callstr, :datahorastart, :codsetor, :codsetoruser, :codcli, :codcont, :discagemmanual, :efetuada, :prefixobarrado, :codcallsolicitante)');
   ParamByName('numero').AsString := Numero;              // numero do telefone
   ParamByname('callstr').AsString := CallStr;            // string da chamada
   ParamByname('datahorastart').AsDateTime := now;
   // data e hora de inicio de chamada
   ParamByname('codsetor').AsInteger := CodSetor;
   // salva setor logado que originou chamada
   ParamByname('codsetoruser').AsInteger := CodSetorUSer;
   // salva usuario logado que originou chamada
   Parambyname('codcli').AsInteger := CodCli;             // salva codigo do cliente
   Parambyname('codcont').AsInteger := CodCont;           // salva codigo do contato
   parambyname('codcallsolicitante').AsInteger := CodCallSolicitante;

   if Manual then
     ParamByname('discagemmanual').AsInteger := 1          // salva discagem manual
   else
     ParamByname('discagemmanual').AsInteger := 0;         // salva discagem automatica

   if Prefixo_Bloqueado = -1 then                         //chamada efetuada
    begin
     ParamByname('efetuada').AsInteger := 1;
     ParamByname('prefixobarrado').AsVariant := null;
    end
   else
    begin
     ParamByname('efetuada').AsInteger := 0;              //chamada bloqueada
     if Prefixo_Bloqueado <> -2 then
       ParamByname('prefixobarrado').AsString := IntToStr(Prefixo_Bloqueado)
     else
       ParamByname('prefixobarrado').AsVariant := null;
    end;

   ExecQuery;
   Transaction.CommitRetaining;
  end;
end;

end.
