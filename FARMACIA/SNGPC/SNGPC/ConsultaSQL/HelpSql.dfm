object fHelpSql: TfHelpSql
  Left = 352
  Top = 83
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Help SQL'
  ClientHeight = 464
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 30
    Align = alTop
    Caption = 'FUN'#199#195'O B'#193'SICA DE SQL PARA CONSULTAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 434
    Width = 772
    Height = 30
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 636
      Top = 4
      Width = 131
      Height = 25
      Caption = '&Sair'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 30
    Width = 772
    Height = 404
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 770
      Height = 402
      Align = alClient
      Lines.Strings = (
        'Instru'#231#227'o SELECT'
        ''
        'Sintaxe'
        ''
        
          'SELECT [predicado { * | tabela.* | [tabela.]campo1 [AS alias1] [' +
          ', [tabela.]campo2 [AS alias2] [, ...]]}'
        'FROM express'#227'otabela [, ...] [IN bancodedadosexterno]'
        '[WHERE... ]'
        '[GROUP BY... ]'
        '[HAVING... ]'
        '[ORDER BY... ]'
        '[WITH OWNERACCESS OPTION]'
        ''
        'A instru'#231#227'o SELECT tem as partes abaixo:'
        'Parte'#9#9#9'Descri'#231#227'o'
        
          'predicado'#9#9'                Um dos seguintes predicados: ALL, DIS' +
          'TINCT, DISTINCTROW ou TOP. '
        
          '                                                Voc'#234' usa o predi' +
          'cado para restringir o n'#250'mero de registros que retornam. Se '
        
          '                                                nenhum for espec' +
          'ificado, o padr'#227'o ser'#225' ALL.'
        ''
        
          '*'#9#9#9'Especifica que todos os campos da tabela ou tabelas especifi' +
          'cadas s'#227'o '
        #9#9#9'selecionados.'
        ''
        
          'tabela'#9#9#9'O nome da tabela que cont'#233'm os campos dos quais os regi' +
          'stros s'#227'o '
        #9#9#9'selecionados.'
        ''
        
          'campo1, campo2'#9#9'Os nomes dos campos dos quais os dados ser'#227'o rec' +
          'uperados. Se voc'#234' incluir '
        
          '                                                mais de um campo' +
          ', eles ser'#227'o recuperados na ordem listada.'
        ''
        
          'alias1, alias2'#9#9'Os nomes que ser'#227'o usados como t'#237'tulos de coluna' +
          's em vez dos nomes '
        
          '                                                originais das co' +
          'lunas na tabela.'
        ''
        
          'express'#227'otabela'#9#9'O nome da tabela ou tabelas contendo os dados q' +
          'ue voc'#234' quer recuperar.'
        ''
        
          'bancodedadosexterno'#9'O Nome do banco de dados que cont'#233'm as tabel' +
          'as em express'#227'otabela se n'#227'o '
        
          '                                                estiver no banco' +
          ' de dados atual.'
        ''
        'Coment'#225'rios'
        ''
        
          #9'Para executar esta opera'#231#227'o, o programa principal de banco de d' +
          'ados procura a tabela ou tabelas especificadas, extrai as coluna' +
          's escolhidas, seleciona as linhas que satisfazem o crit'#233'rio e cl' +
          'assifica ou agrupa as linhas resultantes na ordem especificada. '
        ''
        #9'A instru'#231#227'o SELECT n'#227'o muda os dados no banco de dados. '
        ''
        
          #9'SELECT '#233' normalmente a primeira palavra em uma instru'#231#227'o SQL. A' +
          ' maior parte das instru'#231#245'es SQL s'#227'o instru'#231#245'es SELECT. '
        ''
        #9'A sintaxe m'#237'nima da instru'#231#227'o SELECT '#233':'
        'SELECT campos FROM tabela'
        ''
        
          #9'Voc'#234' pode usar um asterisco (*) para selecionar todos os campos' +
          ' na tabela. O exemplo abaixo seleciona todos os campos na tabela' +
          ' Funcion'#225'rios: '
        'SELECT * FROM Funcion'#225'rios;'
        ''
        
          #9'Se o nome de um campo estiver inclu'#237'do em mais de uma tabela na' +
          ' cl'#225'usula FROM, preceda-o com o nome da tabela e o operador . (p' +
          'onto). No exemplo abaixo, o campo Departamento est'#225' nas tabelas ' +
          'Funcion'#225'rios e Supervisores. A instru'#231#227'o SQL seleciona Departame' +
          'nto da tabela Funcion'#225'rios e NomeSupv da tabela Supervisores: '
        ''
        'SELECT Funcion'#225'rios.Departamento, Supervisores.NomeSupv'
        'FROM Funcion'#225'rios INNER JOIN Supervisores'
        'WHERE Funcion'#225'rios.Departamento = Supervisores.Departamento;'
        ''
        
          #9'Ao criar um objeto Recordset, o programa principal de banco de ' +
          'dados do Jet usa o nome do campo da tabela como o nome do objeto' +
          ' Field no objeto Recordset. Se voc'#234' quiser um nome de campo dife' +
          'rente ou um nome que n'#227'o esteja impl'#237'cito na express'#227'o usada par' +
          'a gerar o campo, use a palavra reservada AS. O exemplo abaixo us' +
          'a o t'#237'tulo Nasc para nomear o objeto Field retornado no objeto R' +
          'ecordset resultante: '
        ''
        'SELECT DataNasc AS Nasc FROM Funcion'#225'rios;'
        ''
        
          #9'Sempre que voc'#234' usar fun'#231#245'es aggregate ou consultas que retorne' +
          'm nomes de objetos Field amb'#237'guos ou duplicados, voc'#234' precisar'#225' ' +
          'usar a cl'#225'usula AS para fornecer um nome alternativo para o obje' +
          'to Field. O exemplo abaixo usa o t'#237'tulo Contagem para nomear o o' +
          'bjeto Field retornado no objeto Recordset resultante: '
        ''
        'SELECT COUNT(Funcion'#225'rioID) AS Contagem FROM Funcion'#225'rios;'
        ''
        
          #9'Voc'#234' pode usar outras cl'#225'usulas na instru'#231#227'o SELECT para restri' +
          'ngir e organizar posteriormente os seus dados retornados. '
        ''
        'Cl'#225'usula GROUP BY'
        ''
        
          #9'GROUP BY '#233' opcional. Valores de resumo s'#227'o omitidos se n'#227'o houv' +
          'er qualquer fun'#231#227'o aggregate SQL na instru'#231#227'o SELECT. Os valores' +
          ' Null nos campos GROUP BY s'#227'o agrupados e n'#227'o omitidos. No entan' +
          'to, os valores Null n'#227'o s'#227'o avaliados em qualquer fun'#231#227'o aggrega' +
          'te SQL. Use a cl'#225'usula WHERE para excluir linhas que voc'#234' n'#227'o qu' +
          'er agrupadas e use a cl'#225'usula HAVING para filtrar os registros a' +
          'p'#243's eles terem sido agrupados.'
        ''
        
          #9'A n'#227'o ser que contenha dados Memo ou OLE Object, um campo na li' +
          'sta de campos GROUP BY pode fazer refer'#234'ncia a qualquer campo em' +
          ' qualquer tabela listada na cl'#225'usula FROM. Mesmo que o campo n'#227'o' +
          ' esteja inclu'#237'do na instru'#231#227'o SELECT, fornecida a instru'#231#227'o SELE' +
          'CT, inclua pelo menos uma fun'#231#227'o SQL. O programa principal de ba' +
          'nco de dados do Jet n'#227'o pode agrupar campos Memo ou OLE Objects.' +
          ' '
        ''
        
          #9'Todos os campos na lista de campos SELECT devem ser inclu'#237'dos n' +
          'a cl'#225'usula GROUP BY ou inclu'#237'dos como argumentos em uma fun'#231#227'o a' +
          'ggregate SQL.'
        ''
        'Cl'#225'usula HAVING'
        ''
        
          #9'HAVING '#233' opcional. HAVING '#233' semelhante a WHERE, que determina q' +
          'uais registros s'#227'o selecionados. Depois que os registros s'#227'o agr' +
          'upados com GROUP BY, HAVING determina quais registros s'#227'o exibid' +
          'os:'
        ''
        'SELECT CategoriaID, Sum(UnidadesNoEstoque) FROM Produtos'
        'GROUP BY CategoriaID'
        'HAVING Sum(UnidadesNoEstoque) > 100 AND LIKE "BOS*";'
        ''
        
          #9'Uma cl'#225'usula HAVING pode conter at'#233' 40 express'#245'es vinculadas po' +
          'r operadores l'#243'gicos, como And ou Or.'
        ''
        'Cl'#225'usula ORDER BY'
        ''
        
          #9'ORDER BY '#233' opcional. Entretanto, se voc'#234' quiser exibir seus dad' +
          'os na ordem classificada, voc'#234' deve utilizar ORDER BY. O padr'#227'o ' +
          'ordem de classifica'#231#227'o '#233' ascendente (A a Z, 0 a 9). Os dois exem' +
          'plos abaixo classificam os nomes dos funcion'#225'rios pelo sobrenome' +
          '.'
        ''
        'SELECT Sobrenome, Nome FROM Funcion'#225'rios ORDER BY Sobrenome;'
        ''
        'SELECT Sobrenome, Nome FROM Funcion'#225'rios ORDER BY Sobrenome ASC;'
        ''
        
          #9'Para classificar em ordem descendente (Z a A, 9 a 0), adicione ' +
          'a palavra reservada DESC ao final de cada campo que voc'#234' quiser ' +
          'classificar em ordem descendente. O exemplo abaixo seleciona sal' +
          #225'rios e os classifica em ordem descendente'
        ''
        
          'SELECT Sobrenome, Sal'#225'rio FROM Funcion'#225'rios ORDER BY Sal'#225'rio DES' +
          'C, Sobrenome;'
        ''
        
          #9'Se voc'#234' especificar um campo que cont'#233'm dados Memo ou OLE Objec' +
          'ts na cl'#225'usula ORDER BY, um erro ocorrer'#225'. O programa principal ' +
          'de banco de dados do Jet n'#227'o classifica campos deste tipo.  ORDE' +
          'R BY '#233' normalmente o '#250'ltimo item em uma instru'#231#227'o SQL. '
        ''
        
          #9'Voc'#234' pode incluir campos adicionais na cl'#225'usula ORDER BY. Os re' +
          'gistros s'#227'o classificados primeiro pelo primeiro campo listado d' +
          'epois de ORDER BY. Os registros que tiverem valores iguais naque' +
          'le campo s'#227'o classificados pelo valor no segundo campo listado e' +
          ' assim por diante.'
        ''
        'Cl'#225'usula WITH OWNERACCESS OPTION'
        ''
        
          #9'A declara'#231#227'o WITH OWNERACCESS OPTION '#233' opcional. O exemplo abai' +
          'xo habilita o usu'#225'rio a ver as informa'#231#245'es de sal'#225'rio (mesmo que' +
          ' n'#227'o tenha outra permiss'#227'o para ver a tabela Folha de Pagamentos' +
          ') desde que o propriet'#225'rio da consulta tenha tal permiss'#227'o:'
        ''
        
          'SELECT Sobrenome, Nome, Sal'#225'rio FROM Funcion'#225'rios ORDER BY Sobre' +
          'nome'
        'WITH OWNERACCESS OPTION;'
        ''
        
          #9'Se, por outro lado, um usu'#225'rio for impedido de criar ou anexar ' +
          'a uma tabela, voc'#234' poder'#225' usar WITH OWNERACCESS OPTION para habi' +
          'lit'#225'-lo a executar uma consulta constru'#231#227'o de tabela ou consulta' +
          ' anexa'#231#227'o. Se voc'#234' quiser refor'#231'ar as configura'#231#245'es de seguran'#231'a' +
          ' do grupo de trabalho e as permiss'#245'es dos usu'#225'rios, n'#227'o inclua a' +
          ' declara'#231#227'o WITH OWNERACCESS OPTION. Esta op'#231#227'o exige que voc'#234' t' +
          'enha acesso ao arquivo System.mda associado ao banco de dados. '#201 +
          ' realmente '#250'til em implementa'#231#245'es de multiusu'#225'rios seguras.'
        ''
        'Exemplo da instru'#231#227'o SELECT, cl'#225'usula FROM'
        ''
        
          #9'Esse exemplo seleciona os campos "Sobrenome" e "Nome" de todos ' +
          'os registros da tabela "Funcion'#225'rios".'
        ''
        'SELECT Sobrenome, Nome FROM Funcion'#225'rios'
        ''
        
          #9'Esse exemplo seleciona todos os campos da tabela "Funcion'#225'rios"' +
          '.'
        ''
        'SELECT Funcion'#225'rios.* FROM Funcion'#225'rios;'
        ''
        
          #9'Esse exemplo conta o n'#250'mero de registros que t'#234'm uma entrada no' +
          ' campo "C'#243'digoPostal" e nomeia o campo retornado como "Tcp".'
        ''
        'SELECT Count(C'#243'digoPostal) AS Tcp FROM Clientes;'
        ''
        
          #9'Esse exemplo mostra qual seria o sal'#225'rio se cada funcion'#225'rio re' +
          'cebesse um aumento de 10 porcento. N'#227'o altera o valor original d' +
          'os sal'#225'rios.'
        ''
        
          'SELECT Sobrenome, Sal'#225'rio AS Atual, Sal'#225'rio * 1.1 AS Proposto FR' +
          'OM Funcion'#225'rios;'
        ''
        
          #9'Esse exemplo coloca o t'#237'tulo Nome no topo da coluna "Sobrenome"' +
          '. O t'#237'tulo Sal'#225'rio '#233' exibido no topo da coluna "Sal'#225'rio".'
        ''
        'SELECT Sobrenome AS Nome, Sal'#225'rio FROM Funcion'#225'rios;'
        ''
        
          #9'Esse exemplo mostra o n'#250'mero de funcion'#225'rios e os sal'#225'rios m'#233'di' +
          'o e m'#225'ximo.'
        ''
        
          'SELECT Count(*) AS [Total de Funcion'#225'rios], Avg(Sal'#225'rio) AS [Sal' +
          #225'rio M'#233'dio], Max(Sal'#225'rio) AS [Sal'#225'rio M'#225'ximo] FROM Funcion'#225'rios;'
        ''
        
          #9'Para cada registro, mostra Sobrenome e Sal'#225'rio no primeiro e '#250'l' +
          'timo campos. A seq'#252#234'ncia de caracteres "tem um sal'#225'rio de" '#233' ret' +
          'ornada como o campo do meio de cada registro.'
        ''
        
          'SELECT Sobrenome, '#39'tem um sal'#225'rio de'#39', Sal'#225'rio FROM Funcion'#225'rios' +
          ';'
        ''
        'Exemplo de cl'#225'usula GROUP BY'
        ''
        
          #9'Esse exemplo cria uma lista de nomes de departamentos '#250'nicos e ' +
          'o n'#250'mero de funcion'#225'rios em cada um destes departamentos.'
        ''
        
          'SELECT Departamento, Count([Departamento]) AS Tbc FROM Funcion'#225'r' +
          'ios '
        'GROUP BY Departamento;'
        ''
        
          #9'Para cada t'#237'tulo de fun'#231#227'o '#250'nico, calcula o n'#250'mero de funcion'#225'r' +
          'ios do departamento de Vendas que t'#234'm este t'#237'tulo.'
        ''
        'SELECT T'#237'tulo, Count(T'#237'tulo) AS Tbc FROM Funcion'#225'rios '
        'WHERE Departamento = '#39'Vendas'#39' GROUP BY T'#237'tulo;'
        ''
        
          #9'Esse exemplo calcula o n'#250'mero de itens em estoque para cada com' +
          'bina'#231#227'o de n'#250'mero e cor do item. '
        ''
        'SELECT Item, Sum(Unidades) AS Tbc FROM ItensEmEstoque '
        'GROUP BY Item, Cor;'
        ''
        'Exemplo de cl'#225'usula HAVING'
        ''
        
          #9'Esse exemplo seleciona os t'#237'tulos de cargos do departamento de ' +
          'Produ'#231#227'o atribu'#237'dos a mais de 50 funcion'#225'rios.'
        ''
        
          'SELECT T'#237'tulo, Count(T'#237'tulo) FROM Funcion'#225'rios WHERE Departament' +
          'o = '#39'Produ'#231#227'o'#39' '
        'GROUP BY T'#237'tulo HAVING Count(T'#237'tulo) > 50;'
        ''
        
          #9'Esse exemplo seleciona os departamentos que tenham mais de 100 ' +
          'funcion'#225'rios.'
        ''
        'SELECT Departamento, Count([Departamento]) FROM Funcion'#225'rios '
        'GROUP BY Departamento HAVING Count(Departamento) > 100;'
        ''
        'Exemplo de cl'#225'usula ORDER BY'
        ''
        
          #9'As instru'#231#245'es SQL mostradas abaixo usam a cl'#225'usula ORDER BY par' +
          'a classificar os registros em ordem alfab'#233'tica e depois por cate' +
          'goria.'
        ''
        
          #9'Esse exemplo ordena os registros pelo sobrenome, em ordem desce' +
          'ndente (Z-A).'
        ''
        
          'SELECT Sobrenome, Nome FROM Funcion'#225'rios ORDER BY Sobrenome DESC' +
          ';'
        ''
        
          #9'Esse exemplo ordena, primeiro, por categoria ID e depois por no' +
          'me do produto.'
        ''
        'SELECT CategoriaID, ProdutoNome, Pre'#231'oUnit FROM Produtos '
        'ORDER BY CategoriaID, NomeProduto;'
        ''
        'Subconsultas SQL'
        ''
        
          'Uma subconsulta '#233' uma instru'#231#227'o SELECT aninhada dentro de uma in' +
          'stru'#231#227'o SELECT, INSERT, DELETE ou UPDATE ou dentro de uma outra ' +
          'subconsulta. '
        ''
        'Sintaxe'
        ''
        
          #9'Voc'#234' pode usar tr'#234's formas de sintaxe para criar uma subconsult' +
          'a:'
        ''
        'compara'#231#227'o [ANY | ALL | SOME] (instru'#231#227'osql) '
        'express'#227'o [NOT] IN (instru'#231#227'osql)'
        ' [NOT] EXISTS (instru'#231#227'osql) '
        ''
        'Uma subconsulta tem as partes abaixo:'
        ''
        'Parte'#9#9'Descri'#231#227'o'
        
          'compara'#231#227'o'#9'Uma express'#227'o e um operador de compara'#231#227'o que compara' +
          ' a express'#227'o com o resultado '
        #9#9'da subconsulta.'
        
          'express'#227'o'#9'Uma express'#227'o para a qual o resultado definido da subc' +
          'onsulta '#233' procurado.'
        
          'instru'#231#227'osqlt'#9'Uma instru'#231#227'o SELECT de acordo com as mesmas regra' +
          's e formato de qualquer outra '
        #9#9'instru'#231#227'o SELECT. Ela deve estar entre par'#234'nteses.'
        ''
        'Coment'#225'rios'
        ''
        
          #9'Voc'#234' pode usar uma subconsulta em vez de uma express'#227'o na lista' +
          ' de campo de uma instru'#231#227'o SELECT ou em uma cl'#225'usula WHERE ou HA' +
          'VING. Em uma subconsulta, voc'#234' usa uma instru'#231#227'o SELECT para for' +
          'necer um conjunto de um ou mais valores espec'#237'ficos para avaliar' +
          ' as express'#245'es das cl'#225'usulas WHERE ou HAVING.'
        ''
        
          #9'Use o predicado ANY ou SOME, que s'#227'o sin'#244'nimos, para recuperar ' +
          'registros na consulta principal que satisfa'#231'am a compara'#231#227'o com ' +
          'quaisquer registros recuperados na subconsulta. O exemplo abaixo' +
          ' retorna todos os produtos cujo pre'#231'o unit'#225'rio '#233' maior que o pre' +
          #231'o de qualquer produto vendido com um desconto de 25 por cento o' +
          'u mais: '
        ''
        'SELECT * FROM Produtos WHERE Pre'#231'oUnit > ANY'
        '(SELECT Pre'#231'oUnit FROM PedidoDetalhes WHERE Desconto >= .25);'
        ''
        
          #9'Use o predicado ALL para recuperar apenas os registros na consu' +
          'lta principal que satisfa'#231'am a compara'#231#227'o com todos os registros' +
          ' recuperados na subconsulta. Se voc'#234' mudou ANY para ALL no exemp' +
          'lo acima, a consulta retornaria apenas os produtos cujo pre'#231'o un' +
          'it'#225'rio fosse maior que o de todos os produtos vendidos com um de' +
          'sconto de 25 por cento ou mais. Isto '#233' muito mais restritivo. '
        ''
        
          #9'Use o predicado IN para recuperar apenas os registros na consul' +
          'ta principal para os quais alguns registros na subconsulta cont'#234 +
          'm um valor igual. O exemplo abaixo retorna todos os produtos com' +
          ' um desconto de 25 por cento ou mais: '
        ''
        'SELECT * FROM Produtos WHERE ProdutoID IN'
        '(SELECT ProdutoID FROM PedidoDetalhes WHERE Desconto >= .25);'
        ''
        
          #9'De maneira contr'#225'ria, voc'#234' pode usar NOT IN para recuperar apen' +
          'as os registros na consulta principal para os quais n'#227'o existam ' +
          'registros com valores iguais na subconsulta. Utilize o predicado' +
          ' EXISTS (com a palavra reservada NOT opcionalmente) em compara'#231#245 +
          'es true/false para determinar se a subconsulta retorna algum reg' +
          'istro.'
        ''
        
          #9'Voc'#234' tamb'#233'm pode usar aliases de nomes de tabelas em uma subcon' +
          'sulta para fazer refer'#234'ncia a tabelas listadas em uma cl'#225'usula F' +
          'ROM fora da subconsulta. O exemplo abaixo retorna os nomes dos f' +
          'uncion'#225'rios cujos sal'#225'rios sejam iguais ou superiores '#224' m'#233'dia de' +
          ' sal'#225'rios de todos os funcion'#225'rios na mesma fun'#231#227'o. Para a tabel' +
          'a Funcion'#225'rios '#233' dada o alias "T1":'
        ''
        'SELECT Sobrenome, Nome, T'#237'tulo, Sal'#225'rio FROM Funcion'#225'rios AS T1'
        'WHERE Sal'#225'rio >= (SELECT Avg(Sal'#225'rio)'
        
          'FROM Funcion'#225'rios WHERE T1. T1.T'#237'tulo = Funcion'#225'rios.T'#237'tulo) Ord' +
          'er by Title;'
        ''
        
          #9'No exemplo acima, a palavra reservada AS '#233' opcional. Algumas su' +
          'bconsultas s'#227'o aceitas em consultas de tabela cruzada especialme' +
          'nte como predicados (as da cl'#225'usula WHERE). Subconsultas como sa' +
          #237'da (as da lista SELECT) n'#227'o s'#227'o aceitas em tabelas de refer'#234'nci' +
          'a cruzada.'
        ''
        'Exemplos de subconsultas SQL'
        ''
        
          #9'Esse exemplo lista o nome, t'#237'tulo e sal'#225'rio de todos os represe' +
          'ntantes de vendas cujos sal'#225'rios sejam superiores aos de todos o' +
          's gerentes e diretores.'
        ''
        'SELECT Sobrenome, Nome, T'#237'tulo, Sal'#225'rio FROM Funcion'#225'rios '
        'WHERE T'#237'tulo LIKE "*Repr Vendas*" AND Sal'#225'rio > ALL '
        
          '(SELECT Sal'#225'rio FROM Funcion'#225'rios WHERE (T'#237'tulo LIKE "*Gerente*"' +
          ') '
        'OR (T'#237'tulo LIKE "*Diretor*"));'
        ''
        
          #9'Esse exemplo lista o nome e pre'#231'o unit'#225'rio de todos os produtos' +
          ' cujo pre'#231'o unit'#225'rio seja igual ao do Licor de Cacau.'
        ''
        'SELECT NomeProduto, Pre'#231'oUnit FROM Produtos '
        'WHERE Pre'#231'oUnit = (SELECT Pre'#231'oUnit FROM [Produtos] '
        'WHERE NomeProduto = "Licor de Cacau");'
        ''
        
          #9'Esse exemplo lista a empresa e o contato de cada empresa de tod' +
          'os os clientes que fizeram pedidos no segundo trimestre de 1995.'
        ''
        
          'SELECT NomeContato, NomeEmpresa, ContatoT'#237'tulo, Fone FROM Client' +
          'es '
        'WHERE ClienteID IN (SELECT ClienteID FROM Pedidos '
        'WHERE DataPedido BETWEEN #1/04/95# AND #1/07/95#);'
        ''
        
          #9'Esse exemplo lista os funcion'#225'rios cujo sal'#225'rio seja maior que ' +
          'a m'#233'dia dos sal'#225'rios de todos os funcion'#225'rios.'
        ''
        'SELECT Sobrenome, Nome, T'#237'tulo, Sal'#225'rio FROM Funcion'#225'rios T1 '
        'WHERE Sal'#225'rio >= (SELECT AVG(Sal'#225'rio) FROM Funcion'#225'rios '
        'WHERE Funcion'#225'rios.T'#237'tulo = T1.T'#237'tulo) ORDER BY T'#237'tulo;'
        ''
        
          #9'Esse exemplo seleciona o nome de todos os funcion'#225'rios que tenh' +
          'am registrado pelo menos um pedido. Isto tamb'#233'm poderia ser feit' +
          'o com INNER JOIN.'
        ''
        'SELECT Nome, Sobrenome FROM Funcion'#225'rios AS E '
        'WHERE EXISTS (SELECT * FROM Pedidos AS O '
        'WHERE O.Funcion'#225'rioID = E.Funcion'#225'rioID);')
      ScrollBars = ssBoth
      TabOrder = 0
    end
  end
end
