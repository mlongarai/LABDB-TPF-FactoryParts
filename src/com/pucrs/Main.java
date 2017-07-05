package com.pucrs;

import java.sql.Connection;
import java.sql.SQLException;

/***
 * Main program class.
 */
public class Main {

        public static void main(String[] args) throws SQLException {

            //Open the connection
            Connection conn = Database.getConnection();

            /*
            * -- a. 5 consultas básicas envolvendo os comandos distinct,
            * order by, count(*), like, in e funções de manipulação de datas.
            */

            // -- 1 - Cidades da região SUL:
            // SELECT * FROM FILIAL WHERE regiao LIKE 'SUL' ORDER BY regiao ASC;
            //Factory.selectCidadesSul(conn);

            //-- 2 - Quantidade de filiais:
            //SELECT count(*) FROM FILIAL;
            //Factory.selectQtdFilial(conn);

            //-- 3 - Id do Vendendor e valor dos pedidos que foram feitos nas 3 filiais especificas:
            //SELECT idVendedor,valorPedido FROM PEDIDOS where idFilial IN (1, 2, 3) ORDER BY valorPedido DSC;
            //Factory.selectPed3Filiais(conn);

            //-- 4 - Todos os pedidos realizados entre janeiro e  marco de 2017
            //SELECT * FROM PEDIDOS where EXTRACT(MONTH from dataPedido) >= 1 AND EXTRACT(YEAR from dataPedido) = 2017 AND EXTRACT(MONTH from dataPedido) <= 3 AND EXTRACT(YEAR from dataPedido) = 2017 ORDER BY dataPedido ASC;
            //Factory.selectPedJaneiro(conn);

            //-- 5 - Os valores de todos os pedidos realizados no mes de janeiro de 2017
            //SELECT idVendedor, valorPedido, dataPedido FROM PEDIDOS WHERE EXTRACT(MONTH from dataPedido) = 1  ORDER BY valorPedido;
            //Factory.selectPedJaneiro17(conn);


             /*
            * -- b. 5 consultas das quais 2 envolvam junções entre duas
            * tabelas e 3 envolvam junções entre três ou mais tabelas.
            */

            //-- 6 - Nome do cliente, cpf, id pedido, valor - 2 Tabelas
            //select nomeCliente NOME, cpf CPF, pedidos.IDD ID_PEDIDO, valorPedido VALOR from CLIENTES join PEDIDOS on clientes.IDD = pedidos.idCliente order by valorPedido;
            //Factory.selectCliPed(conn);

            //-- 7 - ID pedido, ID peça - 2 Tabelas
            //select montagem.idPedido ID_PEDIDO, montagem.idPeca ID_PECA from PEDIDOS join MONTAGEM on pedidos.IDD = montagem.idPedido;
            //Factory.selectPedMontagem(conn);

            //-- 8 -

            //-- 9 -

            //-- 10 -

             /*
            * -- c. 5 consultas envolvendo group by e having,
            * juntamente com funções de agregação.
            */

            //-- 11 - Qual o valor total de  cada  produto?
            //select nomeProduto NOME, sum(precoProduto*qtdProduto) Total from PRODUTOS group by nomeProduto order by sum(precoProduto*qtdProduto) DESC;
            //Factory.selectValorProd(conn);

            //-- 12 - Qual o valor médio dos pedidos por cidade(filial)?
            // select filial.cidade Cidade, round(sum(mont.qtdProduto * valorPedido) / count(distinct ped.IDD),2) "Valor Medio" from PEDIDOS ped inner join FILIAL filial on filial.IDD = ped.IDD inner join MONTAGEM mont on mont.IDD = ped.IDDgroup by filial.cidade order by round(sum(mont.qtdProduto * valorPedido) / count(distinct ped.IDD),2) DESC;
            //Factory.selectValorMed(conn);

            //-- 13 - Qual  o valor médio faturado  com as  vendas  por pedido e vendedor?
            // select ved.idPedido ID_PEDIDO, ved.idVendedor ID_VENDEDOR, round(avg(prod.qtdProduto*prod.precoProduto),2) Valor_Medio from vendas ved inner join produtos prod on ved.IDD = prod.IDD group by ved.idPedido, ved.idVendedor order by avg(prod.qtdProduto*prod.precoProduto) DESC;
            //Factory.selectValorFat(conn);

            //-- 14 -

            //-- 15 -

             /*
            * -- d. 5 consultas envolvendo sub-consultas.
            */

            //-- 16 -

            //-- 17 -

            //-- 18 -

            //-- 19 -

            //-- 20 -

            // Close the connection.
            conn.close();
        }

}
