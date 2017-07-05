create function PedidosCliente(@valor money, @idcliente int)
returns table
as
return(
select * from ClientesPedidos 
where ClientesPedidos.id_cliente=@idcliente and ClientesPedidos.valor >= @valor
)
