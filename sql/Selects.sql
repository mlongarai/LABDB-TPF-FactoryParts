-- a. 5 consultas básicas envolvendo os comandos distinct, order by, count(*), like, in e funções de manipulação de datas.

-- 1 - Cidades da região SUL: 
SELECT * FROM FILIAL WHERE regiao LIKE 'SUL' ORDER BY regiao ASC;
-- 2 - Quantidade de filiais:
SELECT count(*) FROM FILIAL;
-- 3 - Id do Vendendor e valor dos pedidos que foram feitos nas 3 filiais especificas: 
SELECT idVendedor,valorPedido FROM PEDIDOS where idFilial IN (1, 2, 3) ORDER BY valorPedido;
-- 4 - Todos os pedidos realizados entre janeiro e  marco de 2017
SELECT * FROM PEDIDOS where EXTRACT(MONTH from dataPedido) >= 1 AND EXTRACT(YEAR from dataPedido) = 2017 AND EXTRACT(MONTH from dataPedido) <= 3 AND EXTRACT(YEAR from dataPedido) = 2017 ORDER BY dataPedido ASC;
-- 5 - Os valores de todos os pedidos realizados no mes de janeiro de 2017
SELECT valorPedido FROM PEDIDOS WHERE EXTRACT(MONTH from dataPedido) = 1  ORDER BY valorPedido;

-- b. 5 consultas das quais 2 envolvam junções entre duas tabelas e 3 envolvam junções entre três ou mais tabelas.

-- 1. Nome do cliente, cpf, id pedido, valor - 2 Tabelas
select nomeCliente NOME, cpf CPF, pedidos.IDD ID_PEDIDO, valorPedido VALOR
from CLIENTES join PEDIDOS
on clientes.IDD = pedidos.idCliente
order by valorPedido

-- 2. ID pedido, ID peça - 2 Tabelas
select montagem.idPedido ID_PEDIDO, montagem.idPeca ID_PECA
from PEDIDOS join MONTAGEM
on pedidos.IDD = montagem.idPedido

-- 3. xxxxxxxxxxxxx 3 Tabelas
select pecas.nomePeca, produtos.nomeProduto, clientes.nomeCliente, pedidos.idCliente, pedidos.valorPedido, pedidos.dataEntrega
from CLIENTES join PEDIDOS 
on pedidos.idCliente = clientes.IDD
join montagem
on montage.idPedido = pedidos.IDD
-- 4 - 
-- 5 - 

-- c. 5 consultas envolvendo group by e having, juntamente com funções de agregação.

-- 1 -
-- 2 - 
-- 3 - 
-- 4 - 
-- 5 - 

-- d. 5 consultas envolvendo sub-consultas.

-- 1 -
-- 2 - 
-- 3 - 
-- 4 - 
-- 5 - 
