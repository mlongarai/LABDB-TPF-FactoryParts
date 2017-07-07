package com.pucrs;

import java.sql.*;

/**
 * Class that has all methods to interact with factory table.
 */
public class Factory {

    public static void selectCidadesSul(Connection connection) throws SQLException {
        String sql = "SELECT * " + "FROM FILIAL " + "WHERE regiao " + "LIKE 'SUL' " + "ORDER BY regiao ASC";

        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("1. --------------------------------------------------------\n");
        System.out.println("Código\t" + "CNPJ\t\t" + "Cidade\t\t\t\t" + "UF\t" + "Região\t" + "\n");

        while (rs.next()) {
            int IDD = rs.getInt("IDD");
            String cnpj_filial = rs.getString("cnpj_filial");
            String cidade = rs.getString("cidade");
            String uf = rs.getString("uf");
            String regiao = rs.getString("regiao");
            System.out.print(
                    IDD + "\t\t" + cnpj_filial + "\t" + cidade + "\t\t" + uf + "\t" + regiao + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectQtdFilial(Connection connection) throws SQLException {
        String sql = "SELECT count(*) " + "FROM FILIAL";
        int count = 0;
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("2. --------------------------------------------------------\n");

        while (rs.next()) {
            count  = rs.getInt(1);
            System.out.print("Quantidade de Filiais: " + count);
        }
        System.out.println("\n");
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectPed3Filiais(Connection connection) throws SQLException {
        String sql = "SELECT idVendedor,valorPedido " + "FROM PEDIDOS " + "WHERE idFilial " + "IN (1, 2, 3) " + "ORDER BY valorPedido DESC";

        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("3. --------------------------------------------------------\n");
        System.out.println("idVendedor\t" + "valorPedido\t\t\n");

        while (rs.next()) {
            int idVendedor = rs.getInt("idVendedor");
            int valorPedido = rs.getInt("valorPedido");

            System.out.print(
                    idVendedor + "\t\t\t\t" + valorPedido + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectPedJaneiro(Connection connection) throws SQLException {
        String sql = "SELECT * FROM PEDIDOS where EXTRACT(MONTH from dataPedido) >= 1 AND EXTRACT(YEAR from dataPedido) = 2017 AND EXTRACT(MONTH from dataPedido) <= 3 AND EXTRACT(YEAR from dataPedido) = 2017 ORDER BY dataPedido ASC";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("4. --------------------------------------------------------\n");
        System.out.println("IDD\t" + "idVendedor\t\t" + "idCliente\t\t\t" + "idFilial\t" + "valorPedido\t\t" + "dataPedido\t\t" + "dataEntrega\t\t" + "\n");

        while (rs.next()) {
            int IDD = rs.getInt("IDD");
            int idVendedor = rs.getInt("idVendedor");
            int idCliente = rs.getInt("idCliente");
            int idFilial = rs.getInt("idFilial");
            int valorPedido = rs.getInt("valorPedido");
            Date dataPedido = rs.getDate("dataPedido");
            Date dataEntrega = rs.getDate("dataEntrega");
            System.out.print(
                    IDD + "\t\t" + idVendedor + "\t\t\t\t" + idCliente + "\t\t\t\t" + idFilial + "\t\t\t" + valorPedido + "\t\t\t\t" + dataPedido + "\t\t" + dataEntrega + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectPedJaneiro17(Connection connection) throws SQLException {
        String sql = "SELECT idVendedor, valorPedido, dataPedido FROM PEDIDOS WHERE EXTRACT(MONTH from dataPedido) = 1  ORDER BY valorPedido";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("5. --------------------------------------------------------\n");
        System.out.println("idVendedor\t" + "valorPedido\t\t" + "dataPedido\t\t" + "\n");

        while (rs.next()) {
            int idVendedor = rs.getInt("idVendedor");
            int valorPedido = rs.getInt("valorPedido");
            Date dataPedido = rs.getDate("dataPedido");
            System.out.print(
                    idVendedor + "\t\t\t" + valorPedido + "\t\t\t\t" + dataPedido+ "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }


    public static void selectCliPed(Connection connection) throws SQLException {
        String sql = "select nomeCliente NOME, cpf CPF, pedidos.IDD ID_PEDIDO, valorPedido VALOR from CLIENTES join PEDIDOS on clientes.IDD = pedidos.idCliente order by valorPedido";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("6. --------------------------------------------------------\n");
        System.out.println("NOME\t\t\t\t\t" + "CPF\t\t\t\t" + "ID_PEDIDO\t\t" + "VALOR\t" + "\n");

        while (rs.next()) {
            String NOME = rs.getString("NOME");
            String CPF = rs.getString("CPF");
            int ID_PEDIDO = rs.getInt("ID_PEDIDO");
            int VALOR = rs.getInt("VALOR");
            System.out.print(
                    NOME + "\t\t\t\t" + CPF + "\t\t\t" + ID_PEDIDO + "\t\t\t\t" + VALOR + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectPedMontagem(Connection connection) throws SQLException {
        String sql = "select montagem.idPedido ID_PEDIDO, montagem.idPeca ID_PECA from PEDIDOS join MONTAGEM on pedidos.IDD = montagem.idPedido";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("7. --------------------------------------------------------\n");
        System.out.println("ID_PEDIDO\t" + "ID_PECA\t\t\t\t" + "\n");

        while (rs.next()) {
            int ID_PEDIDO = rs.getInt("ID_PEDIDO");
            int ID_PECA = rs.getInt("ID_PECA");
            System.out.print(
                    ID_PEDIDO + "\t\t\t\t" + ID_PECA + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectProd3Tabelas(Connection connection) throws SQLException {
        String sql = "select produtos.nomeProduto NOME_PRODUTO, pecas.nomePeca NOME_PECA, pecas.custoPeca CUSTO_PECA, pedidos.IDD ID_PEDIDO, pedidos.dataEntrega DATA from CLIENTES join PEDIDOS on pedidos.idCliente = clientes.IDD join montagem on montagem.idPedido = pedidos.IDD join produtos on produtos.idPedido = pedidos.IDD join pecas on pecas.IDD = montagem.idPeca";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("8. --------------------------------------------------------\n");
        System.out.println("NOME_PRODUTO\t\t\t\t\t" + "NOME_PECA\t\t\t\t" + "CUSTO_PECA\t\t" + "ID_PEDIDO\t\t" + "DATA\t" + "\n");

        while (rs.next()) {
            String NOME_PRODUTO = rs.getString("NOME_PRODUTO");
            String NOME_PECA = rs.getString("NOME_PECA");
            int CUSTO_PECA = rs.getInt("CUSTO_PECA");
            int ID_PEDIDO = rs.getInt("ID_PEDIDO");
            Date DATA = rs.getDate("DATA");
            System.out.print(
                    NOME_PRODUTO + "\t\t\t" + NOME_PECA + "\t\t\t" + CUSTO_PECA + "\t\t\t\t" + ID_PEDIDO+ "\t\t\t\t" + DATA + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectRank(Connection connection) throws SQLException {
        String sql = "SELECT VEN.IDD ID_VENDEDOR, FIL.CIDADE CIDADE_FILIAL, SUM(PED.VALORPEDIDO) TOTAL_PEDIDOS\n" +
                "FROM PEDIDOS PED INNER JOIN VENDEDORES VEN\n" +
                "ON VEN.IDD = PED.IDVENDEDOR\n" +
                "INNER JOIN FILIAL FIL\n" +
                "ON VEN.IDFILIAL = FIL.IDD\n" +
                "GROUP BY VEN.IDD, FIL.CIDADE\n" +
                "ORDER BY SUM(PED.VALORPEDIDO) DESC";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("9. --------------------------------------------------------\n");
        System.out.println("ID_VENDEDOR\t\t\t\t" + "CIDADE_FILIAL\t\t\t\t" + "TOTAL_PEDIDOS\t\t" + "\n");

        while (rs.next()) {
            int ID_VENDEDOR = rs.getInt("ID_VENDEDOR");
            String CIDADE_FILIAL = rs.getString("CIDADE_FILIAL");
            int TOTAL_PEDIDOS = rs.getInt("TOTAL_PEDIDOS");
            System.out.print(
                    ID_VENDEDOR + "\t\t\t\t\t" + CIDADE_FILIAL + "\t\t\t" + TOTAL_PEDIDOS + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectCliData(Connection connection) throws SQLException {
        String sql = "SELECT CLI.NOMECLIENTE NOME_CLIENTE, PEC.NOMEPECA NOME_PECA, PED.DATAENTREGA DATA_ENTREGA\n" +
                "FROM PECAS PEC INNER JOIN MONTAGEM MON\n" +
                "ON PEC.IDD = MON.IDPECA\n" +
                "INNER JOIN PEDIDOS PED \n" +
                "ON PED.IDD = MON.IDPEDIDO\n" +
                "INNER JOIN CLIENTES CLI \n" +
                "ON CLI.IDD = PED.IDCLIENTE\n" +
                "ORDER BY PED.DATAENTREGA DESC";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("10. --------------------------------------------------------\n");
        System.out.println("NOME_CLIENTE\t\t\t\t\t" + "NOME_PECA\t\t\t\t" + "DATA_ENTREGA\t\t" + "\n");

        while (rs.next()) {
            String NOME_CLIENTE = rs.getString("NOME_CLIENTE");
            String NOME_PECA = rs.getString("NOME_PECA");
            Date DATA_ENTREGA = rs.getDate("DATA_ENTREGA");
            System.out.println(
                    NOME_CLIENTE + "\t\t\t" + NOME_PECA + "\t\t\t" + DATA_ENTREGA + "\n"
            );
        }
        System.out.print("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectValorProd(Connection connection) throws SQLException {
        String sql = "select nomeProduto NOME, sum(precoProduto*qtdProduto) Total from PRODUTOS group by nomeProduto order by sum(precoProduto*qtdProduto) DESC";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("11. --------------------------------------------------------\n");
        System.out.println("NOME\t\t\t\t\t\t\t" + "Total" + "\n");

        while (rs.next()) {
            String NOME = rs.getString("NOME");
            int Total = rs.getInt("Total");
            System.out.print(
                    NOME + "\t\t\t\t" + Total + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectValorMed(Connection connection) throws SQLException {
        String sql = "select filial.cidade Cidade, round(sum(mont.qtdProduto * valorPedido) / count(distinct ped.IDD),2) Valor_Medio from PEDIDOS ped inner join FILIAL filial on filial.IDD = ped.IDD inner join MONTAGEM mont on mont.IDD = ped.IDD group by filial.cidade order by round(sum(mont.qtdProduto * valorPedido) / count(distinct ped.IDD),2) DESC";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("12. --------------------------------------------------------\n");
        System.out.println("Cidade\t\t\t\t" + "Valor_Medio" + "\n");

        while (rs.next()) {
            String Cidade = rs.getString("Cidade");
            int Valor_Medio = rs.getInt("Valor_Medio");
            System.out.print(
                    Cidade + "\t\t\t" + Valor_Medio + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectValorFat(Connection connection) throws SQLException {
        String sql = "select ved.idPedido ID_PEDIDO, ved.idVendedor ID_VENDEDOR, round(avg(prod.qtdProduto*prod.precoProduto),2) Valor_Medio\n" +
                "from vendas ved \n" +
                "    inner join produtos prod on ved.IDD = prod.IDD\n" +
                "group by ved.idPedido, ved.idVendedor\n" +
                "order by avg(prod.qtdProduto*prod.precoProduto) DESC";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("13. --------------------------------------------------------\n");
        System.out.println("ID_PEDIDO\t" + "ID_VENDEDOR"+ "\t\t"+"Valor_Medio" + "\n");

        while (rs.next()) {
            int ID_PEDIDO = rs.getInt("ID_PEDIDO");
            int ID_VENDEDOR = rs.getInt("ID_VENDEDOR");
            int Valor_Medio = rs.getInt("Valor_Medio");
            System.out.print(
                    ID_PEDIDO + "\t\t\t" + ID_VENDEDOR + "\t\t\t\t" + Valor_Medio +"\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectFilCli(Connection connection) throws SQLException {
        String sql = "SELECT fil.cidade FILIAL, COUNT(*) Quantidade FROM FILIAL FIL INNER JOIN CLIENTES CLI ON FIL.IDD = cli.IDD GROUP BY fil.cidade HAVING COUNT(*) > 1";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("14. --------------------------------------------------------\n");
        System.out.println("FILIAL\t\t\t" + "Quantidade de CLientes"+ "\n");

        while (rs.next()) {
            String FILIAL = rs.getString("FILIAL");
            int Quantidade = rs.getInt("Quantidade");
            System.out.print(
                    FILIAL + "\t\t\t" + Quantidade + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectProdMedia(Connection connection) throws SQLException {
        String sql = "SELECT nomeProduto, COUNT(*) Quantidade FROM PRODUTOS GROUP BY nomeProduto HAVING avg(precoProduto) > 2";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("15. --------------------------------------------------------\n");
        System.out.println("PRODUTO\t\t\t\t\t" + "Quantidade Média"+ "\n");

        while (rs.next()) {
            String nomeProduto = rs.getString("nomeProduto");
            int Quantidade = rs.getInt("Quantidade");
            System.out.print(
                    nomeProduto + "\t\t\t\t\t" + Quantidade + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectProd100(Connection connection) throws SQLException {
        String sql = "SELECT nomeProduto NOME, precoProduto PRECO FROM PRODUTOS GROUP BY nomeProduto, precoProduto HAVING AVG(precoProduto) < (SELECT AVG(qtdProduto) FROM PRODUTOS WHERE qtdProduto > 100)";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("16. --------------------------------------------------------\n");
        System.out.println("NOME\t\t\t\t\t\t" + "PRECO"+ "\n");

        while (rs.next()) {
            String NOME = rs.getString("NOME");
            int PRECO = rs.getInt("PRECO");
            System.out.print(
                    NOME + "\t\t\t\t" + PRECO + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectProdMaiorMed(Connection connection) throws SQLException {
        String sql = "SELECT nomePeca, dataFabPeca FROM PECAS GROUP BY nomePeca, dataFabPeca HAVING AVG(custoPeca) > (SELECT AVG(custoPeca) FROM PECAS WHERE EXTRACT(YEAR from dataFabPeca) = 2017 )";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("17. --------------------------------------------------------\n");
        System.out.println("Nome\t\t\t\t\t" + "Data"+ "\n");

        while (rs.next()) {
            String nomePeca = rs.getString("nomePeca");
            Date dataFabPeca = rs.getDate("dataFabPeca");
            System.out.print(
                    nomePeca + "\t\t\t\t" + dataFabPeca + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectCliPed01(Connection connection) throws SQLException {
        String sql = "SELECT CLI.NOMECLIENTE NOME_CLIENTE, CLI.CIDADE CIDADE_CLIENTE, PED.IDD ID_PEDIDO, PED.VALORPEDIDO VALOR_PEDIDO\n" +
                "FROM CLIENTES CLI INNER JOIN PEDIDOS PED\n" +
                "ON PED.IDCLIENTE = CLI.IDD\n" +
                "WHERE PED.VALORPEDIDO > (  \n" +
                "  SELECT AVG(PED.VALORPEDIDO)\n" +
                "  FROM PEDIDOS PED INNER JOIN FILIAL FIL\n" +
                "  ON PED.IDFILIAL = FIL.IDD\n" +
                "  WHERE FIL.CIDADE = 'Porto Alegre'\n" +
                "  GROUP BY FIL.CIDADE )";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("18. --------------------------------------------------------\n");
        System.out.println("NOME_CLIENTE\t\t\t\t\t" + "CIDADE_CLIENTE\t\t\t"+"ID_PEDIDO\t\t\t\t\t" +"VALOR_PEDIDO\t\t\t\t\t" + "\n");

        while (rs.next()) {
            String NOME_CLIENTE = rs.getString("NOME_CLIENTE");
            String CIDADE_CLIENTE = rs.getString("CIDADE_CLIENTE");
            int ID_PEDIDO = rs.getInt("ID_PEDIDO");
            int VALOR_PEDIDO = rs.getInt("VALOR_PEDIDO");
            System.out.print(
                    NOME_CLIENTE + "\t\t\t\t" + CIDADE_CLIENTE + "\t\t\t\t" + ID_PEDIDO + "\t\t\t\t" + VALOR_PEDIDO + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectPedValorMenor01(Connection connection) throws SQLException {
        String sql = "SELECT IDD, VALORPEDIDO\n" +
                "FROM PEDIDOS\n" +
                "WHERE VALORPEDIDO < (\n" +
                "  SELECT MAX(VALORPEDIDO)\n" +
                "  FROM PEDIDOS\n" +
                "  WHERE EXTRACT(MONTH from DATAPEDIDO) = 11)\n" +
                "ORDER BY VALORPEDIDO";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("19. --------------------------------------------------------\n");
        System.out.println("NOME_CLIENTE\t\t" + "CIDADE_CLIENTE\t\t\t" + "\n");

        while (rs.next()) {
            int IDD = rs.getInt("IDD");
            int VALORPEDIDO = rs.getInt("VALORPEDIDO");
            System.out.print(
                    IDD + "\t\t\t\t\t" + VALORPEDIDO + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

    public static void selectModelRasp(Connection connection) throws SQLException {
        String sql = "SELECT PROD.nomeProduto\n" +
                "FROM PRODUTOS PROD INNER JOIN PECAS PEC\n" +
                "ON PROD.IDD = PEC.IDD\n" +
                "WHERE PEC.qtdPeca > 10 AND EXISTS\n" +
                "(SELECT *\n" +
                "FROM PRODUTOS PROD\n" +
                "WHERE PROD.nomeProduto LIKE 'Ras%')";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("20. --------------------------------------------------------\n");
        System.out.println("nomeProduto\t\t" + "\n");

        while (rs.next()) {
            String nomeProduto = rs.getString("nomeProduto");
            System.out.print(
                    nomeProduto + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

}
