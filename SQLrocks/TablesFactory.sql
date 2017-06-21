--Tables: 8
--Tuplas: 20 para cada tabela
--Filial, Vendedores, Clientes, Pedidos, Vendas, Produtos, Pecas e Montagem

CREATE TABLE FILIAL(
	IDD 			    number 			  PRIMARY KEY NOT NULL,
	cnpj_filial 	CHAR(11) 		  UNIQUE      NOT NULL,
	cidade 			  VARCHAR(50)  	            NOT NULL,
	uf     			  CHAR(2)      	            NOT NULL,
	regiao 			  VARCHAR(50)               NOT NULL,
  CONSTRAINT ck_uf CHECK (uf in           ('AC','AL','AP','AM','BA','CE','DF','ES','GO','MA',
                                           'MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN',
                                           'RS','RO','RR','SC','SP','SE','TO')),
  CONSTRAINT ck_regiao CHECK (regiao in   ('SUL','SUDESTE','CENTROOESTE','NORDESTE','NORTE'))
);

--INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('1', '12345678965', 'teste', 'RS', 'SUL');

CREATE TABLE CLIENTES(
	IDD 			    number 			  PRIMARY KEY NOT NULL,
	nomeCliente 	VARCHAR(50) 	            NOT NULL,
	cpf 			    CHAR(11) 		  UNIQUE      NOT NULL,
	endereco 		  VARCHAR(50) 	            NOT NULL,
	cidade 			  VARCHAR(50) 	            NOT NULL,
  sexo          CHAR(1)                   NOT NULL,
  
  CONSTRAINT ck_sexocl CHECK (sexo in     ('M','F'))
);

--INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('1', 'Pedro', '12345698785', 'Endereco', 'Cidade', 'M');

CREATE TABLE VENDEDORES(
	IDD 			    number 			   PRIMARY KEY NOT NULL,
	idFilial 		  INT 			     REFERENCES FILIAL(IDD) NOT NULL,
	nomeVendedor 	VARCHAR(50) 	            NOT NULL,
	cpf 			    CHAR(11)       UNIQUE     NOT NULL,
	endereco 		  VARCHAR(50) 	            NOT NULL,
  sexo          CHAR(1)                   NOT NULL,
  
  CONSTRAINT ck_sexovn CHECK (SEXO in ('M','F'))
);

--INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('1', '1', 'Silvia', '63254698965', 'Endereco', 'F');
--DELETE FROM VENDEDORES WHERE IDD = 1;

CREATE TABLE PEDIDOS(
	IDD 			number 			PRIMARY KEY NOT NULL,	
  idVendedor 		INT 			REFERENCES VENDEDORES(IDD) NOT NULL,
	idCliente 		INT 			REFERENCES CLIENTES(IDD) NOT NULL,
  idFilial      INT       REFERENCES FILIAL(IDD)  NOT NULL,
	valorPedido 	NUMBER(5,2)  NOT NULL,
	dataPedido 		DATE 			NOT NULL,
	dataEntrega 	DATE 			NOT NULL,
  
  CONSTRAINT ck_datas CHECK (dataPedido < dataEntrega)
);
-- DROP TABLE PEDIDOS CASCADE CONSTRAINTS;
-- INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('1', '1', '1', '1', 500.00, DATE '2017-07-09', DATE '2017-07-23');

CREATE TABLE VENDAS(
	IDD 			    NUMBER 			  PRIMARY KEY NOT NULL,
	idPedido 		  INT 			    REFERENCES PEDIDOS(IDD) NOT NULL,
  idVendedor    INT           REFERENCES VENDEDORES(IDD) NULL,
  idCliente     INT           REFERENCES CLIENTES(IDD) NULL,
  dataVenda 		DATE 			    NOT NULL,
  
  CONSTRAINT ck_datavenda CHECK (dataVenda > DATE '2016-01-01')
);
-- DROP TABLE VENDAS CASCADE CONSTRAINTS;
-- idVendedor e idCliente devem ser importados de suas respectivas tabelas de acordo com o idPedido
-- INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('1', '1', DATE '2017-06-06','1','1');


-- ATE AQUI  ACHO QUE TA CERTO, AS TABELAS DE BAIXO NAO FAZEM MUITO SENTIDO JA QUE NAO REFERENCIAM COM NENHUMA DE CIMA, 
-- QUE JA SAO 5 QUE O PROFESSOR PEDIU
-----------------------------------------------------

CREATE TABLE PRODUTOS(
	IDD 			    number 			PRIMARY KEY NOT NULL,
	nomeProduto 	VARCHAR(50) 	NOT NULL,
	custoProduto 	NUMBER(5,2) 	NOT NULL,
	precoProduto 	NUMBER(5,2)		NOT NULL,
	qtdProduto 		INT 			CHECK(qtdProduto > 0) NOT NULL
);

-- INSERT INTO PRODUTOS (IDD, nomeProduto, custoProduto, precoProduto, qtdProduto) VALUES ('1', 'Produto', 100.00, 20.00, 3);

CREATE TABLE PECAS(
	IDD 			number 			PRIMARY KEY NOT NULL,
	nomePeca 		VARCHAR(50) UNIQUE	NOT NULL,
	custoPeca 		NUMBER(5,2) 			NOT NULL,
	dataFabPeca 	date 			NOT NULL,
	qtdPeca 		INT 			CHECK (qtdPeca >0) NOT NULL
);

-- INSERT INTO PECAS (IDD,nomePeca, custoPeca, dataFabPeca,qtdPeca) VALUES ('1', 'nomePeca', 100.00, DATE '2017-07-07', 3);

CREATE TABLE MONTAGEM(
	IDD 			number 			PRIMARY KEY NOT NULL,
	idPedido 		INT 			REFERENCES PEDIDOS(IDD) NOT NULL,
	idProduto 		INT 			REFERENCES PRODUTOS(IDD) NOT NULL,
	idPeca 			INT 			REFERENCES PECAS(IDD) NOT NULL,
	valorProduto 	NUMBER(5,2) 	NOT NULL,
	qtdProduto 		INT 			CHECK (qtdProduto > 0) NOT NULL
);

-- DROP TABLE FILIAL CASCADE CONSTRAINTS;
-- DROP TABLE CLIENTES CASCADE CONSTRAINTS;
-- DROP TABLE VENDEDORES CASCADE CONSTRAINTS;
-- DROP TABLE PEDIDOS CASCADE CONSTRAINTS;
-- DROP TABLE VENDAS CASCADE CONSTRAINTS;
-- DROP TABLE PRODUTOS CASCADE CONSTRAINTS;
-- DROP TABLE PECAS CASCADE CONSTRAINTS;
-- DROP TABLE MONTAGEM CASCADE CONSTRAINTS;
