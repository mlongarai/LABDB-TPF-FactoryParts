--Tables: 8
--Tuplas: 20 para cada tabela
--Filial, Vendedores, Clientes, Pedidos, Vendas, Produtos, Pecas e Montagem

INSERT INTO FILIAL (IDD,CNPJ_Filial,Cidade,uf,regiao) VALUES (1,'456321','Porto Alegre','RS','Sul');

INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,CPF,Endereco) VALUES (1,1,'João','99991111','Rua um, 01');

INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade) VALUES (1,'Soneca','7777777','Rua do soneca, 01','Sao Paulo');

INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,valorPedido,dataPedido,dataEntrega) VALUES (1,1,1,900.00,DATE '2017-03-01',DATE '2017-02-03');

INSERT INTO VENDAS(IDD,idPedido,dataVenda,ownerVenda,valorVenda) VALUES (1,1,DATE '2017-06-05','João',900.00);

INSERT INTO PRODUTOS(IDD,nomeProduto,custoProduto,precoProduto,qtdProduto) VALUES (1,'SmartPhone Samsung',0,0,4);

INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (1,'Display 5" LCD Samsung',10,DATE '2017-02-03',100);

INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,qtdProduto) VALUES (1,1,1,1,12.00,30);


/*
INSERT INTO FILIAL (IDD,CNPJ_Filial,Cidade,uf,regiao) VALUES (1,'456321','Porto Alegre','RS','Sul');
INSERT INTO FILIAL (IDD,CNPJ_Filial,Cidade,uf,regiao) VALUES (2,'546123','Rio de Janeiro','RJ','Norte');
INSERT INTO FILIAL (IDD,CNPJ_Filial,Cidade,uf,regiao) VALUES (3,'654331','Belo Horizonte','MG','Norte');
INSERT INTO FILIAL (IDD,CNPJ_Filial,Cidade,uf,regiao) VALUES (4,'654555','Curitiba','PR','Sul');
INSERT INTO FILIAL (IDD,CNPJ_Filial,Cidade,uf,regiao) VALUES (5,'654876','Joinville','SC','Sul');

INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,CPF,Endereco) VALUES (1,1,'João','99991111','Rua um, 01');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,CPF,Endereco) VALUES (2,2,'Maria','88882222','Rua dois, 02');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,CPF,Endereco) VALUES (3,3,'José','77773333','Rua tres, 03');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,CPF,Endereco) VALUES (4,4,'Pedro','66664444','Rua quatro, 04');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,CPF,Endereco) VALUES (5,5,'Paulo','55555555','Rua cinco, 05');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,CPF,Endereco) VALUES (6,6,'Amélia','00000000','Rua seis, 06');

INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade) VALUES (1,'Soneca','7777777','Rua do soneca, 01','Sao Paulo');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade) VALUES (2,'Dengoso','6666666','Rua do Dengoso, 02','Porto Alegre');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade) VALUES (3,'Feliz','5555555','Rua do Feliz, 03','Belo Horizonte');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade) VALUES (4,'Atchim','4444444','Rua do Atchim, 04','Curitiba');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade) VALUES (5,'Mestre','3333333','Rua do Mestre, 05','Joinville');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade) VALUES (6,'Zangado','2222222','Rua do Zangado, 06','Sao Paulo');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade) VALUES (7,'Dunga','1111111','Rua do Dunga, 07','Porto Alegre');

INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,valorPedido,dataPedido,dataEntrega) VALUES (1,1,1,900.00,DATE '2017-03-01',DATE '2017-02-03');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,valorPedido,dataPedido,dataEntrega) VALUES (2,2,3,350.00,'2017-03-30 00:00:00','2017-04-02');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,valorPedido,dataPedido,dataEntrega) VALUES (3,2,1,100.00,'2017-04-28 00:00:00','2017-04-30');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,valorPedido,dataPedido,dataEntrega) VALUES (4,4,3,150.00,'2017-05-30 00:00:00','2017-06-01');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,valorPedido,dataPedido,dataEntrega) VALUES (5,5,5,200.00,'2017-03-29 00:00:00','2017-03-30');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,valorPedido,dataPedido,dataEntrega) VALUES (6,4,4,180.00,'2017-02-15 00:00:00','2017-02-17');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,valorPedido,dataPedido,dataEntrega) VALUES (7,3,6,500.00,'2017-06-01 00:00:00','2017-06-05');

INSERT INTO VENDAS(IDD,idPedido,dataVenda,ownerVenda,valorVenda) VALUES (1,3,'2017-06-05','João',900.00);
INSERT INTO VENDAS(IDD,idPedido,dataVenda,ownerVenda,valorVenda) VALUES (1,3,'2017-06-05','Maria',350.00);
INSERT INTO VENDAS(IDD,idPedido,dataVenda,ownerVenda,valorVenda) VALUES (1,3,'2017-06-05','Maria',100.00);
INSERT INTO VENDAS(IDD,idPedido,dataVenda,ownerVenda,valorVenda) VALUES (1,3,'2017-06-05','Pedro',150.00);
INSERT INTO VENDAS(IDD,idPedido,dataVenda,ownerVenda,valorVenda) VALUES (1,3,'2017-06-05','Paulo',200.00);
INSERT INTO VENDAS(IDD,idPedido,dataVenda,ownerVenda,valorVenda) VALUES (1,3,'2017-06-05','Pedro',180.00);
INSERT INTO VENDAS(IDD,idPedido,dataVenda,ownerVenda,valorVenda) VALUES (1,3,'2017-06-05','José',500.00);

INSERT INTO PRODUTOS(IDD,nomeProduto,custoProduto,precoProduto,qtdProduto) VALUES (1,'SmartPhone Samsung',0,0,4);
INSERT INTO PRODUTOS(IDD,nomeProduto,custoProduto,precoProduto,qtdProduto) VALUES (2,'Tablet MOTOROLA',0,0,2);
INSERT INTO PRODUTOS(IDD,nomeProduto,custoProduto,precoProduto,qtdProduto) VALUES (3,'SmartPhone Iphone',0,0,3);
INSERT INTO PRODUTOS(IDD,nomeProduto,custoProduto,precoProduto,qtdProduto) VALUES (4,'SmartPhone Blackberry',0,0,3);
INSERT INTO PRODUTOS(IDD,nomeProduto,custoProduto,precoProduto,qtdProduto) VALUES (5,'SmartPhone Asus',0,0,3);

INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (1,'Display 5" LCD Samsung',10,'2017-02-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (2,'Display 7" LCD Samsung',10,'2017-02-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (3,'Display 8.5" LCD Samsung',10,'2017-02-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (4,'Display 10" LCD Samsung',10,'2017-02-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (5,'Display 11" LCD Samsung',10,'2017-02-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (6,'Display 5" LCD MOTOROLA',10,'2017-02-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (7,'Display 7" LCD MOTOROLA',10,'2017-02-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (8,'Display 8.5" LCD MOTOROLA',10,'2017-02-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (9,'Display 10" LCD MOTOROLA',10,'2017-02-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (10,'Display 11" LCD MOTOROLA',10,'2017-02-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (11,'Display 5" LCD Nokia',10,'2017-02-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (12,'Display 7" LCD Nokia',10,'2017-02-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (13,'Display 8.5" LCD Nokia',10,'2017-02-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (14,'Display 10" LCD Nokia',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (15,'Display 11" LCD Nokia',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (16,'Placa principal(circuito) Samsung',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (17,'Placa principal(circuito) MOTOROLA',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (18,'Placa principal(circuito) Nokia',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (19,'Bateria Samsung',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (20,'Bateria MOTOROLA',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (21,'Bateria Nokia',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (22,'TouchScreen 5" LCD Samsung',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (23,'TouchScreen 7" LCD Samsung',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (24,'TouchScreen 8.5" LCD Samsung',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (25,'TouchScreen 10" LCD Samsung',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (26,'TouchScreen 11" LCD Samsung',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (27,'TouchScreen 5" LCD MOTOROLA',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (28,'TouchScreen 7" LCD MOTOROLA',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (29,'TouchScreen 8.5" LCD MOTOROLA',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (30,'TouchScreen 10" LCD MOTOROLA',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (31,'TouchScreen 11" LCD MOTOROLA',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (32,'TouchScreen 5" LCD Nokia',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (33,'TouchScreen 7" LCD Nokia',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (34,'TouchScreen 8.5" LCD Nokia',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (35,'TouchScreen 10" LCD Nokia',10,'2017-03-03',100);
INSERT INTO PECAS(IDD,nomePeca,custoPeca,dataFabPeca,qtdPeca) VALUES (36,'TouchScreen 11" LCD Nokia',10,'2017-03-03',100);

INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (1,2,1,1000,12.00,30);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (2,5,1,2000,5.00,50);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (3,3,1,3000,50.00,100);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (4,2,1,4000,90.00,300);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (5,10,1,5000,50.00,400);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (6,11,1,6000,10.00,10);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (7,9,1,7000,10.00,20);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (8,5,1,8000,10.00,90);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (9,2,1,9000,10.00,80);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (10,1,1,1000,10.00,70);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (11,1,1,1100,10.00,250);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (12,1,1,1200,10.00,331);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (13,14,1,1300,10.00,412);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (14,12,1,1400,10.00,32);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (15,19,1,1500,10.00,35);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (16,13,1,1600,10.00,39);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (17,13,1,1700,10.00,31);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (18,19,1,1800,10.00,31);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (19,15,1,1900,10.00,34);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (20,15,1,2000,10.00,37);
INSERT INTO MONTAGEM(IDD,idPedido,idProduto,idPeca,valorProduto,quantidadeProduto) VALUES (21,15,1,2100,10.00,52);

*/