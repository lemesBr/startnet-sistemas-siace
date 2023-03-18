program SAR_A;
{PUBDIST}

uses
  IWInitStandAlone,
  ServerController in 'ServerControler\ServerController.pas' {IWServerController: TDataModule},
  IWUnit1 in 'Tela_Principal\IWUnit1.pas' {formMain: TIWForm1},
  DatamoduleUnit in 'DataModule\DatamoduleUnit.pas' {DataModule1: TDataModule},
  UnitFuncoes in 'Funcoes_Diversas\UnitFuncoes.pas',
  Unit_Controle_Vendas in 'Controle_Vendas\Unit_Controle_Vendas.pas' {VendasListFrm: TIWAppForm},
  Unit_Controle_Abastecimentos in 'Controle_Abastecimentos\Unit_Controle_Abastecimentos.pas' {AbastecimentosListFrm: TIWAppForm};

{$R *.res}

begin
  IWRun(TFormMain, TIWServerController);
end.
