alter procedure AjustaPreco
@idproduto int, @percentual float
as
  update produtos
  set produtos.precoproduto = produtos.precoproduto *@percentual
  where produtos.id = @idproduto
  select * from produtos
  where produtos.id = @idproduto
