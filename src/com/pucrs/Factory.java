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
            System.out.println(
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
            System.out.println("Quantidade de Filiais: " + count);
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

            System.out.println(
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
            System.out.println(
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
            System.out.println(
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
            System.out.println(
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
            System.out.println(
                    ID_PEDIDO + "\t\t\t\t" + ID_PECA + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
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
            System.out.println(
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
            System.out.println(
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
            System.out.println(
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
            System.out.println(
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
            System.out.println(
                    nomeProduto + "\t\t\t\t\t" + Quantidade + "\n"
            );
        }
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }
}
