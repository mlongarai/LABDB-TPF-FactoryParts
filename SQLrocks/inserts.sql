INSERT INTO FILIAL (CNPJ_Filial,Cidade)
VALUES
('456321','Porto Alegre'),
('546123','Rio de Janeiro'),
('654321','São Paulo')
GO
INSERT INTO VENDEDORES (idFilial,nomeVendedor,CPF,Endereco)
VALUES
(2,'João','99991111','Rua um, 01'),
(1,'Maria','88882222','Rua dois, 02'),
(3,'José','77773333','Rua tres, 03'),
(2,'Pedro','66664444','Rua quatro, 04'),
(1,'Paulo','55555555','Rua cinco, 05'),
(3,'Amélia','00000000','Rua seis, 06')
GO
INSERT INTO CLIENTES (nomeCliente,CPF,Endereco,posicaoGeografica)
VALUES
('Soneca','7777777','Rua do soneca, 01',geography::Point(-30.0590095,-51.1757126,4326)),
('Dengoso','6666666','Rua do Dengoso, 02',geography::Point(-30.0590095,-51.1757126,4326)),
('Feliz','5555555','Rua do Feliz, 03',geography::Point(-30.0590095,-51.1757126,4326)),
('Atchim','4444444','Rua do Atchim, 04',geography::Point(-30.0590095,-51.1757126,4326)),
('Mestre','3333333','Rua do Mestre, 05',geography::Point(-30.0590095,-51.1757126,4326)),
('Zangado','2222222','Rua do Zangado, 06',geography::Point(-30.0590095,-51.1757126,4326)),
('Dunga','1111111','Rua do Dunga, 07',geography::Point(-30.0590095,-51.1757126,4326))
GO
INSERT INTO PEDIDOS (idVendedor,idCliente,valorPedido,dataEntrega)
VALUES
(2,1,100,'2017-05-30 00:00:00'),
(2,1,700,'2017-06-02 00:00:00.000'),
(1,3,1100,'2017-08-20'),
(3,3,800,'2017-09-15')
GO
INSERT INTO VENDAS(idPedido,valorVenda)
VALUES
(1,300),
(3,700),
(1,200),
(3,900),
(1,450)
GO
INSERT INTO PRODUTOS(nomeProduto,custoProduto,precoProduto,qtdPruduto)
VALUES
('SmartPhone Samsung',0,0,4),
('Tablet MOTOROLA',0,0,2),
('SmartPhone Nokia',0,0,3)
GO
INSERT INTO PECAS(nomePeca,custoPeca,qtdPeca)
VALUES
('Display 5" LCD Samsung',10,100),
('Display 7" LCD Samsung',10,100),
('Display 8.5" LCD Samsung',10,100),
('Display 10" LCD Samsung',10,100),
('Display 11" LCD Samsung',10,100),
('Display 5" LCD MOTOROLA',10,100),
('Display 7" LCD MOTOROLA',10,100),
('Display 8.5" LCD MOTOROLA',10,100),
('Display 10" LCD MOTOROLA',10,100),
('Display 11" LCD MOTOROLA',10,100),
('Display 5" LCD Nokia',10,100),
('Display 7" LCD Nokia',10,100),
('Display 8.5" LCD Nokia',10,100),
('Display 10" LCD Nokia',10,100),
('Display 11" LCD Nokia',10,100),
('Placa principal(circuito) Samsung',10,100),
('Placa principal(circuito) MOTOROLA',10,100),
('Placa principal(circuito) Nokia',10,100),
('Bateria Samsung',10,100),
('Bateria MOTOROLA',10,100),
('Bateria Nokia',10,100),
('TouchScreen 5" LCD Samsung',10,100),
('TouchScreen 7" LCD Samsung',10,100),
('TouchScreen 8.5" LCD Samsung',10,100),
('TouchScreen 10" LCD Samsung',10,100),
('TouchScreen 11" LCD Samsung',10,100),
('TouchScreen 5" LCD MOTOROLA',10,100),
('TouchScreen 7" LCD MOTOROLA',10,100),
('TouchScreen 8.5" LCD MOTOROLA',10,100),
('TouchScreen 10" LCD MOTOROLA',10,100),
('TouchScreen 11" LCD MOTOROLA',10,100),
('TouchScreen 5" LCD Nokia',10,100),
('TouchScreen 7" LCD Nokia',10,100),
('TouchScreen 8.5" LCD Nokia',10,100),
('TouchScreen 10" LCD Nokia',10,100),
('TouchScreen 11" LCD Nokia',10,100)
GO
INSERT INTO MONTAGEM(idPedido,idProduto,idPeca)
VALUES
(2,1,3),
(2,2,3),
(2,3,3),
(2,1,2),
(2,2,2),
(2,3,2),
(2,1,1),
(2,2,1),
(2,3,1),
(3,1,3),
(3,2,3),
(3,3,3),
(3,1,2),
(3,2,2),
(3,3,2),
(3,1,1),
(3,2,1),
(3,3,1)
GO
