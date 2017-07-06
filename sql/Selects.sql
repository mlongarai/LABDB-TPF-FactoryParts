/*
            * -- a. 5 consultas básicas envolvendo os comandos distinct,
            * order by, count(*), like, in e funções de manipulação de datas.
            */ -- 1 - Cidades da região SUL:
            
           SELECT *
           FROM FILIAL
           WHERE regiao LIKE 'SUL'
           ORDER BY regiao ASC;

-- 2 - Quantidade de filiais:

           SELECT count(*)
           FROM FILIAL;

-- 3 - Id do Vendendor e valor dos pedidos que foram feitos nas 3 filiais especificas:

           SELECT idVendedor,
                  valorPedido
           FROM PEDIDOS
           WHERE idFilial IN (1,
                              2,
                              3)
           ORDER BY valorPedido DESC;

-- 4 - Todos os pedidos realizados entre janeiro e  marco de 2017

           SELECT *
           FROM PEDIDOS
           WHERE EXTRACT(MONTH
                         FROM dataPedido) >= 1
             AND EXTRACT(YEAR
                         FROM dataPedido) = 2017
             AND EXTRACT(MONTH
                         FROM dataPedido) <= 3
             AND EXTRACT(YEAR
                         FROM dataPedido) = 2017
           ORDER BY dataPedido ASC;

-- 5 - Os valores de todos os pedidos realizados no mes de janeiro de 2017

           SELECT idVendedor,
                  valorPedido,
                  dataPedido
           FROM PEDIDOS
           WHERE EXTRACT(MONTH
                         FROM dataPedido) = 1
           ORDER BY valorPedido;

/*
            * -- b. 5 consultas das quais 2 envolvam junções entre duas
            * tabelas e 3 envolvam junções entre três ou mais tabelas.
            */ -- 1. Nome do cliente, cpf, id pedido, valor - 2 Tabelas

           SELECT nomeCliente NOME,
                  cpf CPF,
                  pedidos.IDD ID_PEDIDO,
                  valorPedido VALOR
           FROM CLIENTES
           JOIN PEDIDOS ON clientes.IDD = pedidos.idCliente
           ORDER BY valorPedido;

-- 2. ID pedido, ID peça - 2 Tabelas

           SELECT montagem.idPedido ID_PEDIDO,
                  montagem.idPeca ID_PECA
           FROM PEDIDOS
           JOIN MONTAGEM ON pedidos.IDD = montagem.idPedido;

-- 3. Nome produto, nome peça, custo peça, id pedido, data entrega do pedido. - 4 Tabelas.

           SELECT produtos.nomeProduto NOME_PRODUTO,
                  pecas.nomePeca NOME_PECA,
                  pecas.custoPeca CUSTO_PECA,
                  pedidos.IDD ID_PEDIDO,
                  pedidos.dataEntrega DATA
           FROM CLIENTES
           JOIN PEDIDOS ON pedidos.idCliente = clientes.IDD
           JOIN montagem ON montagem.idPedido = pedidos.IDD
           JOIN produtos ON produtos.idPedido = pedidos.IDD
           JOIN pecas ON pecas.IDD = montagem.idPeca 
-- 4 -
-- 5 -
 /*
            * -- c. 5 consultas envolvendo group by e having,
            * juntamente com funções de agregação.
            */ -- 1 - Qual o valor total de  cada  produto?

           SELECT nomeProduto NOME,
                  sum(precoProduto*qtdProduto) Total
           FROM PRODUTOS
           GROUP BY nomeProduto
           ORDER BY sum(precoProduto*qtdProduto) DESC;

-- 2 - Qual o valor médio dos pedidos por cidade(filial)?

           SELECT filial.cidade Cidade,
                  round(sum(mont.qtdProduto * valorPedido) / count(DISTINCT ped.IDD),2) Valor_Medio
           FROM PEDIDOS ped
           INNER JOIN FILIAL filial ON filial.IDD = ped.IDD
           INNER JOIN MONTAGEM mont ON mont.IDD = ped.IDD
           GROUP BY filial.cidade
           ORDER BY round(sum(mont.qtdProduto * valorPedido) / count(DISTINCT ped.IDD),2) DESC;

-- 3 - Qual  o valor médio faturado  com as  vendas  por pedido e vendedor?

           SELECT ved.idPedido ID_PEDIDO,
                  ved.idVendedor ID_VENDEDOR,
                  round(avg(prod.qtdProduto*prod.precoProduto),2) Valor_Medio
           FROM vendas ved
           INNER JOIN produtos prod ON ved.IDD = prod.IDD
           GROUP BY ved.idPedido,
                    ved.idVendedor
           ORDER BY avg(prod.qtdProduto*prod.precoProduto) DESC;

-- 4 - Filiais com mais de 2 clientes?

           SELECT FIL.cidade,
                  COUNT(*) Quantidade
           FROM FILIAL fil
           INNER JOIN CLIENTES cli ON fil.IDD = cli.IDD
           GROUP BY FIL.cidade
           HAVING COUNT(*) > 2;

-- 5 - Produtos com media de quantidade maior que 2?

           SELECT nomeProduto,
                  COUNT(*) Quantidade
           FROM PRODUTOS
           GROUP BY nomeProduto
           HAVING avg(precoProduto) > 2;

/*
            * -- d. 5 consultas envolvendo sub-consultas.
            */ -- 1 - Produtos com valor menor do que a média de 100 produtos em estoque?

           SELECT nomeProduto NOME,
                  precoProduto PRECO
           FROM PRODUTOS
           GROUP BY nomeProduto,
                    precoProduto
           HAVING AVG(precoProduto) <
             (SELECT AVG(qtdProduto)
              FROM PRODUTOS
              WHERE qtdProduto > 100);

-- 2 - Pecas que tiveram a sua media maior que a media de pecas de 2017?

           SELECT nomePeca,
                  dataFabPeca
           FROM PECAS
           GROUP BY nomePeca,
                    dataFabPeca
           HAVING AVG(custoPeca) >
             (SELECT AVG(custoPeca)
              FROM PECAS
              WHERE EXTRACT(YEAR
                            FROM dataFabPeca) = 2017 );

-- 3 -
-- 4 -
-- 5 -
