package com.pucrs;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Class that has all methods to interact with factory table.
 */
public class Factory {

    public static void selectCidadesSul(Connection connection) throws SQLException {
        String sql = "SELECT * " + "FROM FILIAL " + "WHERE regiao " + "LIKE 'SUL' " + "ORDER BY regiao ASC";

        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);

        System.out.println("--------------------------------------------------------\n");
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

        System.out.println("--------------------------------------------------------\n");

        while (rs.next()) {
            count  = rs.getInt(1);
            System.out.println("Quantidade de Filiais: " + count);
        }
        System.out.println("\n");
        System.out.println("--------------------------------------------------------\n");
        statement.close();
        rs.close();
    }

}
