unit UnitSaidaNF;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 StdCtrls, Grids, DBGrids, Mask, ToolEdit, ExtCtrls, CurrEdit, ComCtrls,
 Buttons, RDprint, Variants, DateUtils, Inifiles;

type
 TSaidaNFfrm = class(TForm)
   ScrollBox1: TScrollBox;
   Label48: TLabel;
   Label49: TLabel;
   Label50: TLabel;
   GroupBox1: TGroupBox;
   Label10: TLabel;
   Label11: TLabel;
   Label12: TLabel;
   Label13: TLabel;
   Label14: TLabel;
   Label15: TLabel;
   Label16: TLabel;
   Label17: TLabel;
   Label18: TLabel;
   Edit6: TEdit;
   Edit7: TEdit;
   Edit8: TEdit;
   Edit9: TEdit;
   Edit10: TEdit;
   Edit11: TEdit;
   Edit12: TEdit;
   Edit14: TEdit;
   ComboBox4: TComboBox;
   GroupBox2: TGroupBox;
   Label1: TLabel;
   Label2: TLabel;
   Label3: TLabel;
   Label4: TLabel;
   Label5: TLabel;
   Label6: TLabel;
   Label7: TLabel;
   Label8: TLabel;
   Label9: TLabel;
   Edit15: TEdit;
   Edit18: TEdit;
   Edit21: TEdit;
   DateEdit1: TDateEdit;
   DateEdit2: TDateEdit;
   DateEdit3: TDateEdit;
   CurrencyEdit1: TCurrencyEdit;
   CurrencyEdit2: TCurrencyEdit;
   CurrencyEdit3: TCurrencyEdit;
   GroupBox3: TGroupBox;
   Label19: TLabel;
   Label20: TLabel;
   Label21: TLabel;
   Label22: TLabel;
   Label23: TLabel;
   Label24: TLabel;
   Label25: TLabel;
   Label26: TLabel;
   CurrencyEdit4: TCurrencyEdit;
   CurrencyEdit5: TCurrencyEdit;
   CurrencyEdit6: TCurrencyEdit;
   CurrencyEdit7: TCurrencyEdit;
   CurrencyEdit8: TCurrencyEdit;
   CurrencyEdit9: TCurrencyEdit;
   CurrencyEdit10: TCurrencyEdit;
   CurrencyEdit11: TCurrencyEdit;
   GroupBox5: TGroupBox;
   Label27: TLabel;
   Label28: TLabel;
   Label29: TLabel;
   Edit1: TEdit;
   Edit2: TEdit;
   Edit3: TEdit;
   DateEdit4: TDateEdit;
   DateEdit5: TDateEdit;
   DateTimePicker1: TDateTimePicker;
   GroupBox6: TGroupBox;
   DBGrid1: TDBGrid;
   Edit13: TEdit;
   Label51: TLabel;
   GroupBox4: TGroupBox;
   Label32: TLabel;
   Label33: TLabel;
   Label34: TLabel;
   Label35: TLabel;
   Label36: TLabel;
   Label37: TLabel;
   Label38: TLabel;
   Label39: TLabel;
   Label40: TLabel;
   Label41: TLabel;
   Label42: TLabel;
   Label43: TLabel;
   Label44: TLabel;
   Label45: TLabel;
   Label46: TLabel;
   Edit35: TEdit;
   Edit36: TEdit;
   Edit37: TEdit;
   Edit38: TEdit;
   Edit39: TEdit;
   Edit40: TEdit;
   Edit41: TEdit;
   Edit42: TEdit;
   Edit43: TEdit;
   Edit44: TEdit;
   Edit45: TEdit;
   Edit46: TEdit;
   ComboBox1: TComboBox;
   ComboBox2: TComboBox;
   ComboBox3: TComboBox;
   GroupBox7: TGroupBox;
   Memo1: TMemo;
   GroupBox8: TGroupBox;
   RadioButton1: TRadioButton;
   RadioButton2: TRadioButton;
   BitBtn1: TBitBtn;
   BitBtn2: TBitBtn;
   RDprint1: TRDprint;
   BitBtn3: TBitBtn;
   BitBtn4: TBitBtn;
   Label30: TLabel;
   CurrencyEdit12: TCurrencyEdit;
   procedure Edit1Enter(Sender: TObject);
   procedure Edit1Exit(Sender: TObject);
   procedure CurrencyEdit1Enter(Sender: TObject);
   procedure CurrencyEdit1Exit(Sender: TObject);
   procedure DateEdit1Enter(Sender: TObject);
   procedure DateEdit1Exit(Sender: TObject);
   procedure ComboBox4Enter(Sender: TObject);
   procedure ComboBox4Exit(Sender: TObject);
   procedure BitBtn1Click(Sender: TObject);
   procedure FormShow(Sender: TObject);
   procedure Edit2KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure Edit1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure CurrencyEdit1KeyPress(Sender: TObject; var Key: char);
   procedure BitBtn3Click(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 SaidaNFfrm: TSaidaNFfrm;

implementation

uses Unit13Venda, Unit4DataM2, Unit4DataM, Unit1;

{$R *.DFM}

procedure TSaidaNFfrm.Edit1Enter(Sender: TObject);
begin
 TEdit(Sender).color := claqua;
end;

procedure TSaidaNFfrm.Edit1Exit(Sender: TObject);
begin
 TEdit(Sender).color := clwindow;
end;

procedure TSaidaNFfrm.CurrencyEdit1Enter(Sender: TObject);
begin
 TCurrencyEdit(Sender).color := claqua;
end;

procedure TSaidaNFfrm.CurrencyEdit1Exit(Sender: TObject);
begin
 TCurrencyEdit(Sender).color := clwindow;
end;

procedure TSaidaNFfrm.DateEdit1Enter(Sender: TObject);
begin
 TDateEdit(Sender).color := claqua;
end;

procedure TSaidaNFfrm.DateEdit1Exit(Sender: TObject);
begin
 TDateEdit(Sender).color := clwindow;
end;

procedure TSaidaNFfrm.ComboBox4Enter(Sender: TObject);
begin
 TCombobox(Sender).color := claqua;
end;

procedure TSaidaNFfrm.ComboBox4Exit(Sender: TObject);
begin
 TCombobox(Sender).color := clwindow;
end;

procedure TSaidaNFfrm.BitBtn1Click(Sender: TObject);
var
 subtotal, total: currency;
 linha, x: integer;
 ArquivoIni: TIniFile;
begin
 NUMNota := NumNota + 1;

 if DataModule2.tblitem.RecordCount < 24 then
  begin
   if application.messagebox('Imprimir NOTA FISCAL?' + #13#13 +
     'Certifique-se de ter preenchido todos os campos corretamente.', 'Atenção',
     mb_yesno + mb_iconquestion) = idYes then
    begin
     total := 0;
     //------ Parametros para a NOTA FISCAL ------
     rdprint1.TamanhoQteLinhas := 110;
     // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas := 135;
     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao := s17cpp;
     // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := True;
     RDprint1.Abrir;

     //------ Cabecalho da Nota ------
     RDprint1.impf(06,121,formatfloat('000000', strtofloat(Edit13.Text)), [negrito]);
     //Nº da Nota

     if radiobutton1.Checked then
       RDprint1.imp(08,87,'[X]')   //                                           //Saída
     else
       RDprint1.imp(08,101,'[X]');  //                                          //Entrada

     RDprint1.imp(13,02,Edit1.Text);
     //Natureza da Operaçao
     RDprint1.imp(13,47,Edit2.Text);                                           //CFOP
     RDprint1.imp(13,57,Edit3.Text);
     //Insc.Est.S.T.

     //------ Destinatario / Remetente ------
     RDprint1.imp(16,02,Edit6.Text);
     //Nome/Razao Soc.
     RDprint1.imp(16,90,Edit7.Text);                                           //CNPJ/CPF
     if (DateEdit4.Text <> '  /  /  ') and (DateEdit4.Text <> '  /  /    ') then
       RDprint1.imp(16,127,formatdatetime('dd/mm/yyyy', DateEdit4.Date));
     //Data Emissao

     RDprint1.imp(18,02,Edit8.Text);                                           //Endereço
     RDprint1.imp(18,67,Edit9.Text);
     //Bairro/Distrito
     RDprint1.imp(18,105,Edit10.Text);                                         //Cep
     if (DateEdit5.Text <> '  /  /  ') and (DateEdit5.Text <> '  /  /    ') then
       RDprint1.imp(18,127,formatdatetime('dd/mm/yyyy', DateEdit5.Date));
     //Data Saida/Entrada

     RDprint1.imp(20,02,Edit11.Text);
     //Municipio
     RDprint1.imp(20,51,Edit12.Text);                                          //Fone/Fax
     RDprint1.imp(20,84,Combobox4.Text);                                       //UF
     RDprint1.imp(20,90,Edit14.Text);
     //Insc.Est.
     if (Timetostr(DateTimePicker1.Time) <> '  :  :  ') and
       (Timetostr(DateTimePicker1.Time) <> '00:00:00') then
       RDprint1.imp(20,127,Timetostr(DateTimePicker1.Time));
     //Hora Saida/Entrada

     //------ Fatura ------
     RDprint1.imp(24,02,Edit15.Text);                                           //Numero
     if (DateEdit1.Text <> '  /  /  ') and (DateEdit1.Text <> '  /  /    ') then
       RDprint1.imp(24,18,formatdatetime('dd/mm/yyyy', DateEdit1.Date));
     //Vencimento
     if currencyedit1.Value <> 0 then
       RDprint1.imp(24,45 - length(formatfloat('0.00', currencyedit1.Value)),
         formatfloat('0.00', currencyedit1.Value));        //Valor

     RDprint1.imp(24,50,Edit18.Text);                                           //Numero
     if (DateEdit2.Text <> '  /  /  ') and (DateEdit2.Text <> '  /  /    ') then
       RDprint1.imp(24,65,formatdatetime('dd/mm/yyyy', DateEdit2.Date));
     //Vencimento
     if currencyedit2.Value <> 0 then
       RDprint1.imp(24,91 - length(formatfloat('0.00', currencyedit2.Value)),
         formatfloat('0.00', currencyedit2.Value));        //Valor

     RDprint1.imp(24,95,Edit21.Text);                                           //Numero
     if (DateEdit3.Text <> '  /  /  ') and (DateEdit3.Text <> '  /  /    ') then
       RDprint1.imp(24,111,formatdatetime('dd/mm/yyyy', DateEdit3.Date));
     //Vencimento
     if currencyedit3.Value <> 0 then
       RDprint1.imp(24,137 - length(formatfloat('0.00', currencyedit3.Value)),
         formatfloat('0.00', currencyedit3.Value));                         //Valor

     //------ Dados do Produto ------
     linha := 28; // Linha inicial dos produtos...
     datamodule2.tblitem.First;
     for x := 1 to DataModule2.tblitem.RecordCount do
      begin
       RDprint1.imp(linha, 01,copy(DataModule2.tblitem['CodProd'], 1,10));
       //Codigo
       RDprint1.imp(linha, 14,copy(DataModule2.tblitem['Produto'], 1,60));
       //Descricao

       datamodule2.tblcadprod.Locate('RefProd', datamodule2.tblitem['codprod'], []);
       if not VarIsNull(datamodule2.tblcadprod['STri']) then
         RDprint1.imp(linha, 80,copy(datamodule2.tblcadprod['STri'], 1,3));
       //S.T.
       if not VarIsNull(datamodule2.tblcadprod['AprUndVenda']) then
         RDprint1.imp(linha, 85,copy(datamodule2.tblcadprod['AprUndVenda'], 1,3));
       //Unidade

       RDprint1.imp(linha, 98 - length(formatfloat('0.00', DataModule2.tblitem['Quant'])),
         formatfloat('0.00', DataModule2.tblitem['Quant']));
       //Quantidade
       RDprint1.imp(linha, 116 - length(formatfloat('0.00',
         DataModule2.tblitem['PrcVenda'])), formatfloat('0.00', DataModule2.tblitem['PrcVenda']));
       //Valor Unitario
       RDprint1.imp(linha, 137 - length(formatfloat('0.00',
         DataModule2.tblitem['SubTotal'])), formatfloat('0.00', DataModule2.tblitem['SubTotal']));
       //Valor Unitario

       inc(linha);
       datamodule2.tblitem.Next;
      end;
     //------ Desconto ------
     if currencyedit12.Value <> 0 then
       RDprint1.imp(52,116 - length('Desconto (-): ' + formatfloat('0.00',
         currencyedit12.Value)), 'Desconto (-): ' + formatfloat('0.00', currencyedit12.Value));
     //Base de Calc. ICMS

     //------ RodaPe da Nota ------
     //------ Calculo do Imposto ------
     if currencyedit8.Value <> 0 then
       RDprint1.imp(55,80 - length(formatfloat('0.00', currencyedit8.Value)),
         formatfloat('0.00', currencyedit8.Value));
     //Base de Calc. ICMS
     if currencyedit6.Value <> 0 then
       RDprint1.imp(55,108 - length(formatfloat('0.00', currencyedit6.Value)),
         formatfloat('0.00', currencyedit6.Value));                       //Valor ICMS
     if currencyedit4.Value <> 0 then
       RDprint1.imp(55,137 - length(formatfloat('0.00', currencyedit4.Value)),
         formatfloat('0.00', currencyedit4.Value));                       //Valor Total Prod.

     if currencyedit11.Value <> 0 then
       RDprint1.imp(57,26 - length(formatfloat('0.00', currencyedit11.Value)),
         formatfloat('0.00', currencyedit11.Value));                          //Frete
     if currencyedit10.Value <> 0 then
       RDprint1.imp(57,53 - length(formatfloat('0.00', currencyedit10.Value)),
         formatfloat('0.00', currencyedit10.Value));                          //Seguro
     if currencyedit5.Value <> 0 then
       RDprint1.imp(57,80 - length(formatfloat('0.00', currencyedit5.Value)),
         formatfloat('0.00', currencyedit5.Value));                          //Outras Despesas
     if currencyedit7.Value <> 0 then
       RDprint1.imp(57,108 - length(formatfloat('0.00', currencyedit7.Value)),
         formatfloat('0.00', currencyedit7.Value));                       //Valor IPI
     if currencyedit9.Value <> 0 then
       RDprint1.imp(57,137 - length(formatfloat('0.00', currencyedit9.Value)),
         formatfloat('0.00', currencyedit9.Value));                       //Valor Total Nota


     //------ Transportador / Volumes Transportados ------
     RDprint1.imp(60,02,Edit35.Text);
     //Nome/Rz. Social
     if combobox3.ItemIndex = 1 then
       RDprint1.imp(60,82,'[1]')                                                 //Frete por Conta
     else if combobox3.ItemIndex = 2 then
       RDprint1.imp(60,81,'[2]');
     RDprint1.imp(60,88,Edit37.Text);                                           //Placa
     RDprint1.imp(60,103,Combobox1.Text);                                       //UF
     RDprint1.imp(60,109,Edit38.Text);
     //CNPJ/CPF

     RDprint1.imp(62,02,Edit39.Text);
     //Endereco
     RDprint1.imp(62,68,Edit40.Text);
     //Municipio
     RDprint1.imp(62,103,Combobox2.Text);                                       //UF
     RDprint1.imp(62,109,Edit41.Text);
     //Ins. Est.

     RDprint1.imp(64,02,Edit42.Text);
     //Quantidade
     RDprint1.imp(64,25,Edit43.Text);                                           //Especie
     RDprint1.imp(64,51,Edit44.Text);                                           //Marca
     RDprint1.imp(64,71,Edit45.Text);                                           //Numero
     RDprint1.imp(64,95,Edit46.Text);
     //Peso Bruto
     RDprint1.imp(64,117,Edit36.Text);
     //Peso Liquido

     //------ Dados Adicionais ------
     linha := 67;
     for x := 0 to 8 do
      begin
       RDprint1.imp(linha, 02,memo1.Lines.Strings[x]);
       //Dados Adicionais
       inc(linha);
      end;

     RDprint1.impf(81,121,formatfloat('000000', strtofloat(Edit13.Text)), [negrito]);
     //Nº da Nota
     RDprint1.fechar;

     ArquivoIni := TIniFile.Create('tkconfig.ini');
     ArquivoIni.WriteInteger('NOTAFISCAL', 'NUMNOTA', NUMNOTA);
     Arquivoini.Free;

     frmNotaFiscal.onclose := nil;
     Self.Close;
    end;
  end
 else
   application.MessageBox('Pedido contém mais de 23 items, o que é o máximo suportado.' +
     #13 +
     'Volte à tela de vendas e realize pedidos com no máximo 23 items cada.',
     'Atenção', mb_iconerror + Mb_ok);
end;

procedure TSaidaNFfrm.FormShow(Sender: TObject);
begin
 //dateedit4.Date:=Now;
 //dateedit5.Date:=Now;
 //Datetimepicker1.Time:=Now;
 edit13.Text := IntToStr(NumNota);
 currencyedit4.Value := frmvenda.CurrencyEdit2.Value;
 currencyedit9.Value := frmvenda.CurrencyEdit2.Value;
 if frmvenda.CurrencyEdit6.Value > 0 then
   Currencyedit12.Value := frmvenda.CurrencyEdit6.Value; //Desconto


 if (not datamodule1.tblcadastro.BOF) and (label1.Caption <> 'Venda Avulso') then
  begin
   if not VarIsNull(datamodule1.tblcadastro['Nome']) then
     edit6.Text := datamodule1.tblcadastro['Nome'];
   if not VarIsNull(datamodule1.tblcadastro['Endereco']) then
     edit8.Text := datamodule1.tblcadastro['Endereco'];
   if not VarIsNull(datamodule1.tblcadastro['Bairro']) then
     edit9.Text := datamodule1.tblcadastro['Bairro'];
   if not VarIsNull(datamodule1.tblcadastro['Cep']) then
     edit10.Text := datamodule1.tblcadastro['Cep'];
   if not VarIsNull(datamodule1.tblcadastro['Cidade']) then
     edit11.Text := datamodule1.tblcadastro['Cidade'];
   if not VarIsNull(datamodule1.tblcadastro['UF']) then
     combobox4.ItemIndex := combobox4.Items.IndexOf(datamodule1.tblcadastro['UF']);
   if not VarIsNull(datamodule1.tblcadastro['IncEst/rg']) then
     edit14.Text := datamodule1.tblcadastro['IncEst/rg'];
   if not VarIsNull(datamodule1.tblcadastro['Cgc/Cpf']) then
     edit7.Text := datamodule1.tblcadastro['Cgc/Cpf'];
   if not VarIsNull(datamodule1.tblcadastro['teleFone']) then
     edit12.Text := datamodule1.tblcadastro['teleFone'];
  end;
end;

procedure TSaidaNFfrm.Edit2KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   Perform(wm_nextdlgctl, 0,0);
 if key = vk_escape then
   Perform(wm_nextdlgctl, 1,0);
end;

procedure TSaidaNFfrm.Edit1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_return then
   Perform(WM_nextdlgctl, 0,0);
 if key = vk_escape then
   self.Close; 
end;

procedure TSaidaNFfrm.CurrencyEdit1KeyPress(Sender: TObject;
 var Key: char);
begin
 if key = '.' then
   key := ',';
end;

procedure TSaidaNFfrm.BitBtn3Click(Sender: TObject);
begin
 self.Close;
end;

procedure TSaidaNFfrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 action := canone;
 if application.MessageBox('Tem certeza que deseja sair e cancelar a impressão da Nota Fiscal?',
   'Atenção', mb_iconquestion + mb_yesno) = idYes then
   action := cafree;
end;

end.
