create view ClientesPedidos
  as
    select clientes.id ID_CLIENTE, pedidos.id ID_PEDIDO, clientes.nomecliente NOME, clientes.cpf CPF, pedidos.valorpedido VALOR, pedidos.datapedido DATA, pedidos.dataentrega ENTREGA, clientes.posicaogeografica POS from clientes
    join pedidos
    on clientes.id = pedidos.idCliente
