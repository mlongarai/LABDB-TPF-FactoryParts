--Tables: 8
--Filial, Vendedores, Clientes, Pedidos, Vendas, Produtos, Pecas, Montagem

INSERT INTO FILIAL (ID,CNPJ_Filial,Cidade,uf,regiao) VALUES (1,'456321','Porto Alegre','RS','Sul');
INSERT INTO FILIAL (ID,CNPJ_Filial,Cidade,uf,regiao) VALUES (2,'546123','Rio de Janeiro','RJ','Norte');
INSERT INTO FILIAL (ID,CNPJ_Filial,Cidade,uf,regiao) VALUES (3,'654331','Belo Horizonte','MG','Norte');
INSERT INTO FILIAL (ID,CNPJ_Filial,Cidade,uf,regiao) VALUES (4,'654555','Curitiba','PR','Sul');
INSERT INTO FILIAL (ID,CNPJ_Filial,Cidade,uf,regiao) VALUES (5,'654876','Joinville','SC','Sul');

INSERT INTO VENDEDORES (ID,idFilial,nomeVendedor,CPF,Endereco) VALUES (1,1,'João','99991111','Rua um, 01');
INSERT INTO VENDEDORES (ID,idFilial,nomeVendedor,CPF,Endereco) VALUES (2,2,'Maria','88882222','Rua dois, 02');
INSERT INTO VENDEDORES (ID,idFilial,nomeVendedor,CPF,Endereco) VALUES (3,3,'José','77773333','Rua tres, 03');
INSERT INTO VENDEDORES (ID,idFilial,nomeVendedor,CPF,Endereco) VALUES (4,4,'Pedro','66664444','Rua quatro, 04');
INSERT INTO VENDEDORES (ID,idFilial,nomeVendedor,CPF,Endereco) VALUES (5,5,'Paulo','55555555','Rua cinco, 05');
INSERT INTO VENDEDORES (ID,idFilial,nomeVendedor,CPF,Endereco) VALUES (6,6,'Amélia','00000000','Rua seis, 06');

INSERT INTO CLIENTES (ID,nomeCliente,cpf,endereco,cidade) VALUES (1,'Soneca','7777777','Rua do soneca, 01','Sao Paulo');
INSERT INTO CLIENTES (ID,nomeCliente,cpf,endereco,cidade) VALUES (2,'Dengoso','6666666','Rua do Dengoso, 02','Porto Alegre');
INSERT INTO CLIENTES (ID,nomeCliente,cpf,endereco,cidade) VALUES (3,'Feliz','5555555','Rua do Feliz, 03','Belo Horizonte');
INSERT INTO CLIENTES (ID,nomeCliente,cpf,endereco,cidade) VALUES (4,'Atchim','4444444','Rua do Atchim, 04','Curitiba');
INSERT INTO CLIENTES (ID,nomeCliente,cpf,endereco,cidade) VALUES (5,'Mestre','3333333','Rua do Mestre, 05','Joinville');
INSERT INTO CLIENTES (ID,nomeCliente,cpf,endereco,cidade) VALUES (6,'Zangado','2222222','Rua do Zangado, 06','Sao Paulo');
INSERT INTO CLIENTES (ID,nomeCliente,cpf,endereco,cidade) VALUES (7,'Dunga','1111111','Rua do Dunga, 07','Porto Alegre');

INSERT INTO PEDIDOS (ID,idVendedor,idCliente,valorPedido,dataPedido,dataEntrega) VALUES (1,1,1,900.00,'2017-01-30 00:00:00','2017-02-03');
INSERT INTO PEDIDOS (ID,idVendedor,idCliente,valorPedido,dataPedido,dataEntrega) VALUES (2,2,3,350.00,'2017-03-30 00:00:00','2017-04-02');
INSERT INTO PEDIDOS (ID,idVendedor,idCliente,valorPedido,dataPedido,dataEntrega) VALUES (3,2,1,100.00,'2017-04-28 00:00:00','2017-04-30');
INSERT INTO PEDIDOS (ID,idVendedor,idCliente,valorPedido,dataPedido,dataEntrega) VALUES (4,4,3,150.00,'2017-05-30 00:00:00','2017-06-01');
INSERT INTO PEDIDOS (ID,idVendedor,idCliente,valorPedido,dataPedido,dataEntrega) VALUES (5,5,5,200.00,'2017-03-29 00:00:00','2017-03-30');
INSERT INTO PEDIDOS (ID,idVendedor,idCliente,valorPedido,dataPedido,dataEntrega) VALUES (6,4,4,180.00,'2017-02-15 00:00:00','2017-02-17');
INSERT INTO PEDIDOS (ID,idVendedor,idCliente,valorPedido,dataPedido,dataEntrega) VALUES (7,3,6,500.00,'2017-06-01 00:00:00','2017-06-05');

INSERT INTO VENDAS(ID,idPedido,dataVenda,owner,valorVenda) VALUES (1,3,'2017-06-05','João',900.00);
INSERT INTO VENDAS(ID,idPedido,dataVenda,owner,valorVenda) VALUES (1,3,'2017-06-05','Maria',350.00);
INSERT INTO VENDAS(ID,idPedido,dataVenda,owner,valorVenda) VALUES (1,3,'2017-06-05','Maria',100.00);
INSERT INTO VENDAS(ID,idPedido,dataVenda,owner,valorVenda) VALUES (1,3,'2017-06-05','Pedro',150.00);
INSERT INTO VENDAS(ID,idPedido,dataVenda,owner,valorVenda) VALUES (1,3,'2017-06-05','Paulo',200.00);
INSERT INTO VENDAS(ID,idPedido,dataVenda,owner,valorVenda) VALUES (1,3,'2017-06-05','Pedro',180.00);
INSERT INTO VENDAS(ID,idPedido,dataVenda,owner,valorVenda) VALUES (1,3,'2017-06-05','José',500.00);


--- REVISAR DAQUI PRA BAIXO!!!

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