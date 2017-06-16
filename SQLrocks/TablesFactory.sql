--Tables: 8
--Filial, Vendedores, Clientes, Pedidos, Vendas, Produtos, Pecas, Montagem

CREATE TABLE FILIAL(
ID number PRIMARY KEY,
cnpj_filial CHAR(11) UNIQUE,
cidade VARCHAR(50)
);

CREATE TABLE VENDEDORES(
ID number PRIMARY KEY,
idFilial INT REFERENCES FILIAL(ID),
nomeVendedor VARCHAR(50),
cpf CHAR(11) UNIQUE,
endereco VARCHAR(50)
);

CREATE TABLE CLIENTES(
ID number PRIMARY KEY,
nomeCliente VARCHAR(50),
cpf CHAR(11),
endereco VARCHAR(50)
);

CREATE TABLE PEDIDOS(
ID number PRIMARY KEY,
idVendedor INT REFERENCES VENDEDORES(ID),
idCliente INT REFERENCES CLIENTES(ID),
valorPedido int,
dataPedido date,
dataEntrega date
);

CREATE TABLE VENDAS(
ID number PRIMARY KEY,
idPedido INT REFERENCES PEDIDOS(ID),
dataVenda date,
valorVenda int
);

CREATE TABLE PRODUTOS(
ID number PRIMARY KEY,
nomeProduto VARCHAR(50),
custoProduto int,
precoProduto int,
qtdProduto INT CHECK(qtdProduto > 0)
);

CREATE TABLE PECAS(
ID number PRIMARY KEY,
nomePeca VARCHAR(50),
custoPeca int,
qtdPeca INT CHECK (qtdPeca >0)
);

CREATE TABLE MONTAGEM(
ID number PRIMARY KEY,
idPedido INT REFERENCES PEDIDOS(ID),
idProduto INT REFERENCES PRODUTOS(ID),
idPeca INT REFERENCES PECAS(ID),
valorProduto int,
quantidadeProduto INT CHECK (quantidadeProduto > 0)
);

