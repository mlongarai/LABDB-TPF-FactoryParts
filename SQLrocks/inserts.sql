--Tables: 8
--Filial, Vendedores, Clientes, Pedidos, Vendas, Produtos, Pecas, Montagem

/*
CREATE TABLE FILIAL(
	ID 			number 		PRIMARY KEY,
	cnpj_filial CHAR(11),
	cidade 		VARCHAR(50),
	uf     		CHAR(2)      NOT NULL,
	regiao 		CHAR(2)      NOT NULL
)

CREATE TABLE CLIENTES(
	ID 			number 		PRIMARY KEY,
	nomeCliente VARCHAR(50),
	cpf 		CHAR(11),
	endereco 	VARCHAR(50),
	cidade 		VARCHAR(50)
)

CREATE TABLE VENDEDORES(
	ID 			number 		PRIMARY KEY,
	idFilial 	INT 		REFERENCES FILIAL(ID),
	nomeVendedor VARCHAR(50),
	cpf 		CHAR(11),
	endereco 	VARCHAR(50)
)

CREATE TABLE PEDIDOS(
	ID 			number 		PRIMARY KEY,
	idVendedor 	INT 		REFERENCES VENDEDORES(ID),
	idCliente 	INT 		REFERENCES CLIENTES(ID),
	valorPedido int,
	dataPedido 	date,
	dataEntrega date
)

CREATE TABLE VENDAS(
	ID 			number 		PRIMARY KEY,
	idPedido 	INT 		REFERENCES PEDIDOS(ID),
	dataVenda 	date,
	owner 		VARCHAR(50),
	valorVenda 	int
)

CREATE TABLE PRODUTOS(
	ID 			number 		PRIMARY KEY,
	nomeProduto VARCHAR(50),
	custoProduto int,
	precoProduto int,
	qtdProduto 	INT 		CHECK(qtdProduto > 0)
)

CREATE TABLE PECAS(
	ID 			number 		PRIMARY KEY,
	nomePeca 	VARCHAR(50),
	custoPeca 	int,
	dataFabPeca date,
	qtdPeca 	INT 		CHECK (qtdPeca >0)
)

CREATE TABLE MONTAGEM(
	ID 			number 		PRIMARY KEY,
	idPedido 	INT 		REFERENCES PEDIDOS(ID),
	idProduto 	INT 		REFERENCES PRODUTOS(ID),
	idPeca 		INT 		REFERENCES PECAS(ID),
	valorProduto int,
	quantidadeProduto INT 	CHECK (quantidadeProduto > 0)
)

*/

INSERT INTO FILIAL (CNPJ_Filial,Cidade,uf,regiao) VALUES ('456321','Porto Alegre');
INSERT INTO FILIAL (CNPJ_Filial,Cidade,uf,regiao) VALUES ('546123','Rio de Janeiro');
INSERT INTO FILIAL (CNPJ_Filial,Cidade,uf,regiao) VALUES ('654331','Belo Horizonte');
INSERT INTO FILIAL (CNPJ_Filial,Cidade,uf,regiao) VALUES ('654555','Curitiba');
INSERT INTO FILIAL (CNPJ_Filial,Cidade,uf,regiao) VALUES ('654876','Joinville');

INSERT INTO VENDEDORES (idFilial,nomeVendedor,CPF,Endereco,cidade) VALUES (2,'João','99991111','Rua um, 01','Salvador');
INSERT INTO VENDEDORES (idFilial,nomeVendedor,CPF,Endereco,cidade) VALUES (1,'Maria','88882222','Rua dois, 02');
INSERT INTO VENDEDORES (idFilial,nomeVendedor,CPF,Endereco,cidade) VALUES (3,'José','77773333','Rua tres, 03');
INSERT INTO VENDEDORES (idFilial,nomeVendedor,CPF,Endereco,cidade) VALUES (2,'Pedro','66664444','Rua quatro, 04');
INSERT INTO VENDEDORES (idFilial,nomeVendedor,CPF,Endereco,cidade) VALUES (1,'Paulo','55555555','Rua cinco, 05');
INSERT INTO VENDEDORES (idFilial,nomeVendedor,CPF,Endereco,cidade) VALUES (3,'Amélia','00000000','Rua seis, 06');

INSERT INTO CLIENTES (nomeCliente,CPF,Endereco,posicaoGeografica) VALUES ('Soneca','7777777','Rua do soneca, 01',geography::Point(-30.0590095,-51.1757126,4326));
INSERT INTO CLIENTES (nomeCliente,CPF,Endereco,posicaoGeografica) VALUES ('Dengoso','6666666','Rua do Dengoso, 02',geography::Point(-30.0590095,-51.1757126,4326));
INSERT INTO CLIENTES (nomeCliente,CPF,Endereco,posicaoGeografica) VALUES ('Feliz','5555555','Rua do Feliz, 03',geography::Point(-30.0590095,-51.1757126,4326));
INSERT INTO CLIENTES (nomeCliente,CPF,Endereco,posicaoGeografica) VALUES ('Atchim','4444444','Rua do Atchim, 04',geography::Point(-30.0590095,-51.1757126,4326));
INSERT INTO CLIENTES (nomeCliente,CPF,Endereco,posicaoGeografica) VALUES ('Mestre','3333333','Rua do Mestre, 05',geography::Point(-30.0590095,-51.1757126,4326));
INSERT INTO CLIENTES (nomeCliente,CPF,Endereco,posicaoGeografica) VALUES ('Zangado','2222222','Rua do Zangado, 06',geography::Point(-30.0590095,-51.1757126,4326));
INSERT INTO CLIENTES (nomeCliente,CPF,Endereco,posicaoGeografica) VALUES ('Dunga','1111111','Rua do Dunga, 07',geography::Point(-30.0590095,-51.1757126,4326));

INSERT INTO PEDIDOS (idVendedor,idCliente,valorPedido,dataEntrega) VALUES (2,1,100,'2017-05-30 00:00:00');
INSERT INTO PEDIDOS (idVendedor,idCliente,valorPedido,dataEntrega) VALUES (2,1,700,'2017-06-02 00:00:00.000');
INSERT INTO PEDIDOS (idVendedor,idCliente,valorPedido,dataEntrega) VALUES (1,3,1100,'2017-08-20');
INSERT INTO PEDIDOS (idVendedor,idCliente,valorPedido,dataEntrega) VALUES (3,3,800,'2017-09-15');
INSERT INTO PEDIDOS (idVendedor,idCliente,valorPedido,dataEntrega) VALUES (3,3,800,'2017-03-10');

INSERT INTO VENDAS(idPedido,valorVenda) VALUES (1,300);
INSERT INTO VENDAS(idPedido,valorVenda) VALUES (3,700);
INSERT INTO VENDAS(idPedido,valorVenda) VALUES (1,200);
INSERT INTO VENDAS(idPedido,valorVenda) VALUES (3,900);
INSERT INTO VENDAS(idPedido,valorVenda) VALUES (1,450);

INSERT INTO PRODUTOS(nomeProduto,custoProduto,precoProduto,qtdProduto) VALUES ('SmartPhone Samsung',0,0,4);
INSERT INTO PRODUTOS(nomeProduto,custoProduto,precoProduto,qtdProduto) VALUES ('Tablet MOTOROLA',0,0,2);
INSERT INTO PRODUTOS(nomeProduto,custoProduto,precoProduto,qtdProduto) VALUES ('SmartPhone Iphone',0,0,3);
INSERT INTO PRODUTOS(nomeProduto,custoProduto,precoProduto,qtdProduto) VALUES ('SmartPhone Blackberry',0,0,3);
INSERT INTO PRODUTOS(nomeProduto,custoProduto,precoProduto,qtdProduto) VALUES ('SmartPhone Asus',0,0,3);

INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Display 5" LCD Samsung',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Display 7" LCD Samsung',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Display 8.5" LCD Samsung',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Display 10" LCD Samsung',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Display 11" LCD Samsung',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Display 5" LCD MOTOROLA',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Display 7" LCD MOTOROLA',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Display 8.5" LCD MOTOROLA',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Display 10" LCD MOTOROLA',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Display 11" LCD MOTOROLA',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Display 5" LCD Nokia',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Display 7" LCD Nokia',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Display 8.5" LCD Nokia',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Display 10" LCD Nokia',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Display 11" LCD Nokia',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Placa principal(circuito) Samsung',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Placa principal(circuito) MOTOROLA',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Placa principal(circuito) Nokia',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Bateria Samsung',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Bateria MOTOROLA',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('Bateria Nokia',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('TouchScreen 5" LCD Samsung',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('TouchScreen 7" LCD Samsung',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('TouchScreen 8.5" LCD Samsung',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('TouchScreen 10" LCD Samsung',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('TouchScreen 11" LCD Samsung',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('TouchScreen 5" LCD MOTOROLA',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('TouchScreen 7" LCD MOTOROLA',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('TouchScreen 8.5" LCD MOTOROLA',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('TouchScreen 10" LCD MOTOROLA',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('TouchScreen 11" LCD MOTOROLA',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('TouchScreen 5" LCD Nokia',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('TouchScreen 7" LCD Nokia',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('TouchScreen 8.5" LCD Nokia',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('TouchScreen 10" LCD Nokia',10,100);
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca) VALUES ('TouchScreen 11" LCD Nokia',10,100);

INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (2,1,3);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (2,2,3);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (2,3,3);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (2,1,2);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (2,2,2);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (2,3,2);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (2,1,1);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (2,2,1);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (2,3,1);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (3,1,3);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (3,2,3);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (3,3,3);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (3,1,2);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (3,2,2);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (3,3,2);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (3,1,1);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (3,2,1);
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca) VALUES (3,3,1);