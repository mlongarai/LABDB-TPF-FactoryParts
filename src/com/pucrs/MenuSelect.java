package com.pucrs;

import javax.swing.*;
import java.sql.Connection;
import java.sql.SQLException;

public class MenuSelect {


    public static void select() throws SQLException {

        Connection conn = Database.getConnection();

        int op;
        do {
            op = Integer.parseInt(JOptionPane.showInputDialog("Menu de Consultas:\n"
                    +   "\n1 - Cidades da Regiao Sul"
                    +   "\n2 - Quantidade de Filiais"
                    +   "\n3 - Id do Vendendor e valor dos pedidos que foram feitos nas filiais (1, 2 e 3)"
                    +   "\n4 - Todos os pedidos realizados entre janeiro e  março de 2017"
                    +   "\n5 - Valores de todos os pedidos realizados no mês de janeiro de 2017"
                    +   "\n6 - Nome do cliente, cpf, id pedido e valor com 2 Tabelas"
                    +   "\n7 - ID pedido, ID peça com 2 Tabelas"
                    +   "\n8 - Nome do produto, peça, custo, id e data entrega do pedido com 3 Tabelas"
                    +   "\n9 - Rank de vendedores: nome vendedor, cidade filial do vendedor, total pedidos do vendedor"
                    +   "\n10 - Nome do cliente, nome peca, data entrega mais longe"
                    +   "\n11 - Valor total de  cada  produto"
                    +   "\n12 - Valor médio dos pedidos por cidade (Filial)"
                    +   "\n13 - Valor médio faturado  com as  vendas  por pedido e vendedor"
                    +   "\n14 - Filiais com mais de 2 clientes"
                    +   "\n15 - Produtos com media de quantidade maior que 2"
                    +   "\n16 - Produtos com valor menor do que a média de 100 produtos em estoque"
                    +   "\n17 - Peças que tiveram a sua média maior que a média de peças de 2017"
                    +   "\n18 - CLientes com pedidos maiores que a media dos pedidos das filiais de Porto Alegre"
                    +   "\n19 - Pedidos com valor menor que o maior pedido de novembro"
                    +   "\n20 - Retorna modelos de Raspberry com mais de 10 unidades"
                    +   "\n0 - Sair"));

            switch (op) {
                case 1:
                    Factory.selectCidadesSul(conn);
                    break;
                case 2:
                    Factory.selectQtdFilial(conn);
                    break;
                case 3:
                    Factory.selectPed3Filiais(conn);
                    break;
                case 4:
                    Factory.selectPedJaneiro(conn);
                    break;
                case 5:
                    Factory.selectPedJaneiro17(conn);
                    break;
                case 6:
                    Factory.selectCliPed(conn);
                    break;
                case 7:
                    Factory.selectPedMontagem(conn);
                    break;
                case 8:
                    Factory.selectProd3Tabelas(conn);
                    break;
                case 9:
                    Factory.selectRank(conn);
                    break;
                case 10:
                    Factory.selectCliData(conn);
                    break;
                case 11:
                    Factory.selectValorProd(conn);
                    break;
                case 12:
                    Factory.selectValorMed(conn);
                    break;
                case 13:
                    Factory.selectValorFat(conn);
                    break;
                case 14:
                    Factory.selectFilCli(conn);
                    break;
                case 15:
                    Factory.selectProdMedia(conn);
                    break;
                case 16:
                    Factory.selectProd100(conn);
                    break;
                case 17:
                    Factory.selectProdMaiorMed(conn);
                    break;
                case 18:
                    Factory.selectCliPed01(conn);
                    break;
                case 19:
                    Factory.selectPedValorMenor01(conn);
                    break;
                case 20:
                    Factory.selectModelRasp(conn);
                    break;
                case 0:
                    JOptionPane.showMessageDialog(null, "Saindo do programa...");
                    System.exit(0);
                    break;
                default:
                    JOptionPane.showMessageDialog(null, "Opção errada, tente de novo!");
                    break;
            } // fim do switch
        } while (op != 0);
        MenuSelect.select();
    }

}