--Tables: 8
--Filial, Vendedores, Clientes, Pedidos, Vendas, Produtos, Pecas, Montagem

DROP TABLE FILIAL CASCADE CONSTRAINTS;
DROP TABLE CLIENTES CASCADE CONSTRAINTS;
DROP TABLE VENDEDORES CASCADE CONSTRAINTS;
DROP TABLE PEDIDOS CASCADE CONSTRAINTS;
DROP TABLE VENDAS CASCADE CONSTRAINTS;
DROP TABLE PRODUTOS CASCADE CONSTRAINTS;
DROP TABLE PECAS CASCADE CONSTRAINTS;
DROP TABLE MONTAGEM CASCADE CONSTRAINTS;

CREATE TABLE FILIAL(
	ID 			number 		PRIMARY KEY,
	cnpj_filial CHAR(11) UNIQUE,
	cidade 		VARCHAR(50),
	uf     		CHAR(2)      NOT NULL,
	regiao 		CHAR(2)      NOT NULL
);

CREATE TABLE CLIENTES(
	ID 			number 		PRIMARY KEY,
	nomeCliente VARCHAR(50),
	cpf 		CHAR(11) UNIQUE,
	endereco 	VARCHAR(50),
	cidade 		VARCHAR(50)
);

CREATE TABLE VENDAS(
	ID 			number 		PRIMARY KEY,
	idPedido 	INT 		REFERENCES PEDIDOS(ID),
	dataVenda 	date,
	owner 		VARCHAR(50),
	valorVenda 	INT
);

CREATE TABLE PEDIDOS(
	ID 			number 		PRIMARY KEY,
	idVendedor 	INT 		REFERENCES VENDEDORES(ID),
	idCliente 	INT 		REFERENCES CLIENTES(ID),
	valorPedido NUMBER(5,2),
	dataPedido 	date,
	dataEntrega date
);

CREATE TABLE VENDAS(
	ID 			number 		PRIMARY KEY,
	idPedido 	INT 		REFERENCES PEDIDOS(ID),
	dataVenda 	date,
	owner 		VARCHAR(50) REFERENCES VENDEDORES(nomeVendedor),
	valorVenda 	INT 		REFERENCES PEDIDOS(valorPedido)
);

CREATE TABLE PRODUTOS(
	ID 			number 		PRIMARY KEY,
	nomeProduto VARCHAR(50),
	custoProduto int,
	precoProduto int,
	qtdProduto 	INT 		CHECK(qtdProduto > 0)
);

CREATE TABLE PECAS(
	ID 			number 		PRIMARY KEY,
	nomePeca 	VARCHAR(50),
	custoPeca 	int,
	dataFabPeca date,
	qtdPeca 	INT 		CHECK (qtdPeca >0)
);

CREATE TABLE MONTAGEM(
	ID 			number 		PRIMARY KEY,
	idPedido 	INT 		REFERENCES PEDIDOS(ID),
	idProduto 	INT 		REFERENCES PRODUTOS(ID),
	idPeca 		INT 		REFERENCES PECAS(ID),
	valorProduto NUMBER(5,2),
	quantidadeProduto INT 	CHECK (quantidadeProduto > 0)
);