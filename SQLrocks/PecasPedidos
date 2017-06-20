create view PecasPedidos as
select ID_PEDIDO, montagem.idPeca ID_PECA, pecas.nomepeca NOME_PECA, pecas.custopeca CUSTO_PECA from ClientesPedidos as ClientesPedidos
join montagem on ClientesPedidos.id_pedido = montagem.idPedido join pecas
on montagem.idpeca = pecas.id
