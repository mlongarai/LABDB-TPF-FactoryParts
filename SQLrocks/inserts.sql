--Tuplas: 20 para cada tabela
--Filial, Vendedores, Clientes, Pedidos, Vendas, Produtos, Pecas e Montagem

-- INSERTS TABELA FILIAL
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('1',  '23154698748', 'Porto Alegre', 		'RS', 'SUL');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('2',  '68423156486', 'Porto Alegre',		'RS', 'SUL');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('3',  '24864665149', 'Porto Alegre',		'RS', 'SUL');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('4',  '53165146848', 'Porto Alegre', 		'RS', 'SUL');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('5',  '56165154865', 'Porto Alegre', 		'RS', 'SUL');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('6',  '18645145615', 'Sao Leopoldo', 		'RS', 'SUL');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('7',  '23186484666', 'Novo Hamburgo', 	'RS', 'SUL');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('8',  '16814848848', 'Novo Hamburgo', 	'RS', 'SUL');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('9',  '98415681656', 'Cachoeirinha', 		'RS', 'SUL');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('10', '56185158894', 'Capao da Canoa',	'RS', 'SUL');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('11', '18994561656', 'Florianopolis', 	'SC', 'SUL');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('12', '98784513212', 'Criciuma', 			'SC', 'SUL');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('13', '86489465141', 'Curtibia', 			'PR', 'SUL');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('14', '53156484899', 'Cascavel', 			'PR', 'SUL');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('15', '21368484846', 'Sao Paulo', 		'SP', 'SUDESTE');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('16', '89789702314', 'Rio de Janeiro', 	'RJ', 'SUDESTE');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('17', '86464531313', 'Recife', 			'PE', 'NORDESTE');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('18', '54616546531', 'Manaus', 			'AM', 'NORTE');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('19', '56464564456', 'Teresina', 			'PI', 'NORDESTE');
INSERT INTO FILIAL (IDD,cnpj_filial,cidade,uf,regiao) VALUES ('20', '18984215645', 'Cuiaba', 			'MT', 'CENTROOESTE');

--INSERTS TABELA CLIENTES
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('1', 'Pedro',      '56489132189', 'Rua Batata', 	'Sao Paulo', 	'M');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('2', 'Joao',       '51189489489', 'Av Endereco',	'Piaui', 		'M');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('3', 'Maria',      '15648948644', 'Rua Bento', 		'Teresina', 'F');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('4', 'Tiago',      '36418648948', 'Travessa Treze', 'Manaus', 'M');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('5', 'Joaquim',    '16898189161', 'Rua Professor', 	'Rio de Janeiro', 'M');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('6', 'Natalia',    '65141651561', 'Av Batata', 		'Cachoeirinha', 'F');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('7', 'Joana',      '84846545131', 'Rua Teste', 		'Porto Alegre', 'F');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('8', 'Lucas',      '65484532458', 'Av Risco', 		'Porto Alegre', 'M');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('9', 'Marcelo',    '15648648489', 'Rua Adalberto', 	'Rio de Janeiro', 'M');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('10', 'Leonardo',  '23145648648', 'Rua Trinca', 	'Rio de Janeiro', 'M');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('11', 'Adriene',   '21186874687', 'Av Otaviano', 	'Capao da Canoa', 'F');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('12', 'Mariana',   '56486432154', 'Rua Jesse', 		'Recife', 'F');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('13', 'Carolina',  '23184896465', 'Rua James', 		'Recife', 'F');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('14', 'Henrique',  '25544654564', 'Av Pikachu', 	'Recife', 'M');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('15', 'Guilherme', '56468646543', 'Rua Digimon', 	'Cuaiaba', 'M');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('16', 'Murilo',    '31446848946', 'Rua Digitais', 	'Cascavel', 'M');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('17', 'Matheus',   '14564564656', 'Av Domingao', 	'Novo Hamburgo', 'M');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('18', 'Ricardo',   '36464131231', 'Rua Caldeirao', 	'Florianopolis', 'M');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('19', 'Silvia',    '54848645116', 'Rua Cenoura', 	'Cascavel', 'F');
INSERT INTO CLIENTES (IDD,nomeCliente,cpf,endereco,cidade,sexo) VALUES ('20', 'Renata',    '54156467455', 'Av Desenrolo', 	'Cascavel', 'F');

--INSERT TABELA VENDEDORES
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('1', '1', 'Silvia', 	'63254698965', 'Rua 1', 'F');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('2', '1', 'Pedro', 	'65454654654', 'Rua 2', 'M');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('3', '1', 'Marco', 	'13215645665', 'Rua 3', 'M');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('4', '2', 'Gabriel', 	'65415615688', 'Av 1', 'M');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('5', '2', 'Alberto', 	'56456456145', 'Av 2', 'M');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('6', '3', 'Matheus', 	'64563553785', 'Rua 4', 'M');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('7', '4', 'Mauricio',	'23423423566', 'Rua 5', 'M');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('8', '4', 'Fernanda', 	'44564574858', 'Av 3', 'F');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('9', '4', 'Monique', 	'23426867976', 'Av 4', 'F');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('10', '4', 'Antonio', 	'34534776978', 'Av 5', 'M');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('11', '4', 'Augusto', 	'34523527845', 'Rua 6', 'M');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('12', '5', 'Joao', 	'23452684845', 'Rua 7', 'M');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('13', '5', 'Gabriel', 	'25235475885', 'Av 6', 'M');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('14', '6', 'Henrique', '24355878906', 'Av 7', 'M');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('15', '7', 'Marcos', 	'69584753234', 'Rua 8', 'M');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('16', '8', 'Ricardo', 	'07056456235', 'Rua 9', 'M');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('17', '15', 'Silvia', 	'23469704636', 'Av 8', 'F');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('18', '16', 'Luciane', '23462464573', 'Av 9', 'F');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('19', '11', 'Renata', 	'12312354353', 'Rua 10', 'F');
INSERT INTO VENDEDORES (IDD,idFilial,nomeVendedor,cpf,endereco,sexo) VALUES ('20', '13', 'Jessica', '12314235346', 'Rua 11', 'F');

--INSERT TABELA PEDIDOS
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('1', '1', '1', '1', 376.00, DATE '2017-07-21', DATE '2017-07-23');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('2', '2', '2', '1', 973.00, DATE '2017-06-22', DATE '2017-06-25');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('3', '3', '3', '1', 125.00, DATE '2017-12-11', DATE '2017-12-12');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('4', '4', '4', '1', 237.00, DATE '2017-11-11', DATE '2017-11-13');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('5', '5', '5', '1', 134.00, DATE '2017-09-11', DATE '2017-09-19');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('6', '6', '6', '1', 234.00, DATE '2017-01-13', DATE '2017-01-21');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('7', '7', '7', '1', 456.00, DATE '2017-12-14', DATE '2017-12-20');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('8', '8', '8', '1', 500.00, DATE '2017-03-15', DATE '2017-03-29');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('9', '9', '9', '1', 768.00, DATE '2017-03-16', DATE '2017-03-22');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('10', '10', '10', '1', 123.00, DATE '2017-04-13', DATE '2017-04-14');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('11', '11', '11', '1', 235.00, DATE '2017-06-11', DATE '2017-06-15');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('12', '12', '12', '1', 253.00, DATE '2017-08-11', DATE '2017-08-12');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('13', '13', '13', '1', 234.00, DATE '2017-07-14', DATE '2017-07-19');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('14', '14', '14', '1', 895.00, DATE '2017-07-15', DATE '2017-07-17');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('15', '15', '15', '1', 546.00, DATE '2017-11-14', DATE '2017-11-21');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('16', '16', '16', '1', 568.00, DATE '2017-11-18', DATE '2017-11-28');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('17', '17', '17', '1', 675.00, DATE '2017-03-11', DATE '2017-03-12');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('18', '18', '18', '1', 234.00, DATE '2017-05-01', DATE '2017-05-03');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('19', '19', '19', '1', 175.00, DATE '2017-09-01', DATE '2017-09-08');
INSERT INTO PEDIDOS (IDD,idVendedor,idCliente,idFilial,valorPedido,dataPedido,dataEntrega) VALUES ('20', '20', '20', '1', 257.00, DATE '2017-10-07', DATE '2017-10-09');

--INSERT TABLE VENDAS
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('1', '1', DATE '2017-07-22','1','1');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('2', '2', DATE '2017-06-23','2','2');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('3', '3', DATE '2017-12-12','3','3');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('4', '4', DATE '2017-11-12','4','4');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('5', '5', DATE '2017-09-12','5','5');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('6', '6', DATE '2017-01-14','6','6');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('7', '7', DATE '2017-12-15','7','7');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('8', '8', DATE '2017-03-16','8','8');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('9', '9', DATE '2017-03-17','9','9');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('10', '10', DATE '2017-04-14','10','10');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('11', '11', DATE '2017-06-12','11','11');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('12', '12', DATE '2017-08-12','12','12');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('13', '13', DATE '2017-07-15','13','13');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('14', '14', DATE '2017-07-16','14','14');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('15', '15', DATE '2017-11-15','15','15');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('16', '16', DATE '2017-11-19','16','16');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('17', '17', DATE '2017-03-12','17','17');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('18', '18', DATE '2017-05-02','18','18');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('19', '19', DATE '2017-09-02','19','19');
INSERT INTO VENDAS (IDD,idPedido,dataVenda,idVendedor,idCliente) VALUES ('20', '20', DATE '2017-10-08','20','20');

--INSERT TABLE PRODUTOS
--INSERT TABLE PECAS
--INSERT TABLE MONTAGEM