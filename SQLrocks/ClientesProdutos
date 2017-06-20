alter function ClientesProduto(@idproduto int)
returns table
as
return
(
  select ID_CLIENTE, NOME, CPF, montagem.idProduto ID_PRODUTO,produtos.nomeproduto NOME_PRODUTO, montagem.valorProduto VALOR_PRODUTO from ClientesPedidos
  join montagem on montagem.idpedido = CLientesPedidos.ID_PEDIDO
  join produtos on montagem.idproduto = produtos.id
  where montagem.idproduto = @idproduto
)
