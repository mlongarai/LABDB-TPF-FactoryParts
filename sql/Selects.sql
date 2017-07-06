/*
            * -- a. 5 consultas básicas envolvendo os comandos distinct,
            * order by, count(*), like, in e funções de manipulação de datas.
            */

-- 1 - Cidades da região SUL: 
SELECT * FROM FILIAL WHERE regiao LIKE 'SUL' ORDER BY regiao ASC;
-- 2 - Quantidade de filiais:
SELECT count(*) FROM FILIAL;
-- 3 - Id do Vendendor e valor dos pedidos que foram feitos nas 3 filiais especificas: 
SELECT idVendedor,valorPedido FROM PEDIDOS where idFilial IN (1, 2, 3) ORDER BY valorPedido DESC;
-- 4 - Todos os pedidos realizados entre janeiro e  marco de 2017
SELECT * FROM PEDIDOS where EXTRACT(MONTH from dataPedido) >= 1 AND EXTRACT(YEAR from dataPedido) = 2017 AND EXTRACT(MONTH from dataPedido) <= 3 AND EXTRACT(YEAR from dataPedido) = 2017 ORDER BY dataPedido ASC;
-- 5 - Os valores de todos os pedidos realizados no mes de janeiro de 2017
SELECT idVendedor, valorPedido, dataPedido FROM PEDIDOS WHERE EXTRACT(MONTH from dataPedido) = 1  ORDER BY valorPedido;

/*
            * -- b. 5 consultas das quais 2 envolvam junções entre duas
            * tabelas e 3 envolvam junções entre três ou mais tabelas.
            */

-- 1. Nome do cliente, cpf, id pedido, valor - 2 Tabelas
select nomeCliente NOME, cpf CPF, pedidos.IDD ID_PEDIDO, valorPedido VALOR from CLIENTES join PEDIDOS on clientes.IDD = pedidos.idCliente order by valorPedido;

-- 2. ID pedido, ID peça - 2 Tabelas
select montagem.idPedido ID_PEDIDO, montagem.idPeca ID_PECA from PEDIDOS join MONTAGEM on pedidos.IDD = montagem.idPedido;

-- 3. Nome produto, nome peça, custo peça, id pedido, data entrega do pedido. - 3 Tabelas.
select produtos.nomeProduto NOME_PRODUTO, pecas.nomePeca NOME_PECA, pecas.custoPeca CUSTO_PECA, pedidos.IDD ID_PEDIDO, pedidos.dataEntrega DATA from CLIENTES join PEDIDOS on pedidos.idCliente = clientes.IDD join montagem on montagem.idPedido = pedidos.IDD join produtos on produtos.idPedido = pedidos.IDD join pecas on pecas.IDD = montagem.idPeca

-- 4 - Rank de vendedores: nome vendedor, cidade filial do vendedor, total pedidos do vendedor
SELECT VEN.IDD ID_VENDEDOR, FIL.CIDADE CIDADE_FILIAL, SUM(PED.VALORPEDIDO) TOTAL_PEDIDOS
FROM PEDIDOS PED INNER JOIN VENDEDORES VEN
ON VEN.IDD = PED.IDVENDEDOR
INNER JOIN FILIAL FIL
ON VEN.IDFILIAL = FIL.IDD
GROUP BY VEN.IDD, FIL.CIDADE
ORDER BY SUM(PED.VALORPEDIDO) DESC;

-- 5 - Nome cliente, noem peca, data entrega mais longe
SELECT CLI.NOMECLIENTE NOME_CLIENTE, PEC.NOMEPECA NOME_PECA, PED.DATAENTREGA DATA_ENTREGA
FROM PECAS PEC INNER JOIN MONTAGEM MON
ON PEC.IDD = MON.IDPECA
INNER JOIN PEDIDOS PED 
ON PED.IDD = MON.IDPEDIDO
INNER JOIN CLIENTES CLI 
ON CLI.IDD = PED.IDCLIENTE
ORDER BY PED.DATAENTREGA DESC;


/*
            * -- c. 5 consultas envolvendo group by e having,
            * juntamente com funções de agregação.
            */

-- 1 - Qual o valor total de  cada  produto?
select nomeProduto NOME, sum(precoProduto*qtdProduto) Total from PRODUTOS group by nomeProduto order by sum(precoProduto*qtdProduto) DESC;
-- 2 - Qual o valor médio dos pedidos por cidade(filial)?
select filial.cidade Cidade, round(sum(mont.qtdProduto * valorPedido) / count(distinct ped.IDD),2) Valor_Medio
from PEDIDOS ped 
        inner join FILIAL filial	  	on filial.IDD	 		= ped.IDD
        inner join MONTAGEM mont	  	on mont.IDD	 			= ped.IDD
group by filial.cidade
order by round(sum(mont.qtdProduto * valorPedido) / count(distinct ped.IDD),2) DESC;
-- 3 - Qual  o valor médio faturado  com as  vendas  por pedido e vendedor?
select ved.idPedido ID_PEDIDO, ved.idVendedor ID_VENDEDOR, round(avg(prod.qtdProduto*prod.precoProduto),2) Valor_Medio
from vendas ved 
    inner join produtos prod on ved.IDD = prod.IDD
group by ved.idPedido, ved.idVendedor
order by avg(prod.qtdProduto*prod.precoProduto) DESC;
-- 4 - Filiais com mais de 2 clientes?
SELECT FIL.cidade, COUNT(*) Quantidade FROM FILIAL fil INNER JOIN CLIENTES cli ON fil.IDD = cli.IDD GROUP BY FIL.cidade HAVING COUNT(*) > 2;
-- 5 - Produtos com media de quantidade maior que 2?
SELECT nomeProduto, COUNT(*) Quantidade FROM PRODUTOS GROUP BY nomeProduto HAVING avg(precoProduto) > 2;

/*
            * -- d. 5 consultas envolvendo sub-consultas.
            */

-- 1 - Produtos com valor menor do que a média de 100 produtos em estoque?
SELECT nomeProduto NOME, precoProduto PRECO FROM PRODUTOS GROUP BY nomeProduto, precoProduto HAVING AVG(precoProduto) < (SELECT AVG(qtdProduto) FROM PRODUTOS WHERE qtdProduto > 100);
-- 2 - Pecas que tiveram a sua media maior que a media de pecas de 2017?
SELECT nomePeca, dataFabPeca FROM PECAS GROUP BY nomePeca, dataFabPeca HAVING AVG(custoPeca) > (SELECT AVG(custoPeca) FROM PECAS WHERE EXTRACT(YEAR from dataFabPeca) = 2017 );
-- 3 - CLientes com pedidos maiores que a media dos pedidos das filiais de Porto Alegre
SELECT CLI.NOMECLIENTE NOME_CLIENTE, CLI.CIDADE CIDADE_CLIENTE, PED.IDD ID_PEDIDO, PED.VALORPEDIDO VALOR_PEDIDO
FROM CLIENTES CLI INNER JOIN PEDIDOS PED
ON PED.IDCLIENTE = CLI.IDD
WHERE PED.VALORPEDIDO > (  
  SELECT AVG(PED.VALORPEDIDO)
  FROM PEDIDOS PED INNER JOIN FILIAL FIL
  ON PED.IDFILIAL = FIL.IDD
  WHERE FIL.CIDADE = 'Porto Alegre'
  GROUP BY FIL.CIDADE );

-- 4 - Pedidos com valor menor que o maior pedido de novembro
SELECT IDD, VALORPEDIDO
FROM PEDIDOS
WHERE VALORPEDIDO < (
  SELECT MAX(VALORPEDIDO)
  FROM PEDIDOS
  WHERE EXTRACT(MONTH from DATAPEDIDO) = 11)
ORDER BY VALORPEDIDO;

-- 5 - 

