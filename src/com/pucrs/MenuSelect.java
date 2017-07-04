package com.pucrs;

public class MenuSelect {

    /*
    public static void select() {

        int op;
        do {
            op = Integer.parseInt(JOptionPane.showInputDialog("Menu de consultas"
                    +   "\n1 - Consultas Básicas (DISTINCT, ORDER BY, COUNT(*), LIKE, IN, DATE)"
                    +   "\n2 - Consultas envolvendo Joins"
                    +   "\n3 - Consultas envolvendo GROUP BY, HAVING e funções de agregação"
                    +   "\n4 - Consultas envolvendo Sub-consultas"
                    +   "\n5 - Sair"));

            switch (op) {
                case 1:
                    Metodos.exibeCadastro(cadastro);
                    break;
                case 2:
                    // entrada dos dados
                    Cliente c11 = new Cliente();
                    c11.setNome(JOptionPane.showInputDialog("Nome do Cliente"));
                    c11.setCpf(JOptionPane.showInputDialog("CPF do Cliente:"));
                    c11.setSexo(JOptionPane.showInputDialog("Sexo do Cliente"));
                    c11.setIdade(Integer.parseInt(JOptionPane.showInputDialog("Idade do Cliente:")));
                    int op2;
                    do {
                        op2 = Integer.parseInt(
                                JOptionPane.showInputDialog("Cliente é Sócio?" + "\n1 - Sim" + "\n2 - Não" + "\n3 - Sair"));

                        switch (op2) {
                            case 1:
                                c11.setSocio("1");
                                break;
                            case 2:
                                c11.setSocio("0");
                                break;
                            case 3:
                                Metodos.exibeCadastro(cadastro);
                                break;

                        }
                    } while (op2 < 1 || op2 > 3);
                    // adicionando a lista
                    cadastro.add(c11);

                    // mostra a nova lista

                    Metodos.setSocio(cadastro);
                    LogClientes.armazenar(cadastro);
                    Metodos.exibeCadastro(cadastro);
                    MenuSelect.select(cadastro);
                    break;

                case 3:
                    String cpfBuscado = JOptionPane.showInputDialog("Informe o CPF do cliente para busca:");

                    Cliente clienteBuscado = Metodos.buscarClientes(cpfBuscado, cadastro);
                    if (clienteBuscado != null)
                        JOptionPane.showMessageDialog(null,
                                "Resultado da busca:" + "\n................................" + "\n"
                                        + clienteBuscado.getNome() + "\nCPF:" + clienteBuscado.getCpf() + "\nIdade: "
                                        + clienteBuscado.getIdade() + "\nSexo: " + clienteBuscado.getSexo()
                                        // + "\nSocio: " + .clienteBuscado.socio()
                                        + "\n................................");
                    else
                        JOptionPane.showMessageDialog(null, "Cliente não encontrado!");
                    MenuSelect.select(cadastro);
                    break;

                case 4:
                    String cpfRemovido = JOptionPane.showInputDialog("Informe o CPF do cliente a ser removido:");

                    Cliente clienteRemovido = Metodos.buscarClientes(cpfRemovido, cadastro);
                    if (clienteRemovido != null)
                        cadastro.remove(clienteRemovido);
                    else
                        JOptionPane.showMessageDialog(null, "Cliente não encontrado!");
                    Metodos.exibeCadastro(cadastro); // lista após remoção
                    break;

                case 5:
                    Metodos.exibeInfo(cadastro);
                    break;
                case 6:
                    JOptionPane.showMessageDialog(null, "Saindo do programa...");
                    System.exit(0);
                    break;
                default:
                    JOptionPane.showMessageDialog(null, "Opção errada, tente denovo!");
                    break;
            } // fim do switch
        } while (op != 5);
        MenuSelect.select();
    }
    */
}