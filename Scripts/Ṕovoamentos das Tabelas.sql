--Tabela Cliente

insert into cliente values('2222-1','299.323.319-02','Marcos','Marizópoles','Centro','João Vicente Almeida','878-799887','marcos123@hotmail.com','2018-01-22');
insert into cliente values('2222-2','442.460.189-70','Lucas','Sousa','Gato preto','José Vicente','371-367847','lucas_evangelista@gmail.com','2018-01-25');
insert into cliente values('2222-3','816.651.899-67','Maria','São João','São pedro','José Firmino','086-961550','maria_do_carmo@hotmail.com','2018-02-17');
insert into cliente values('2222-4','840.375.499-05','Ian','Itaporanga','Centro','Getulio Vargas','287-167145','ian_sommerville@gmail.com','2018-04-21');
insert into cliente values('2222-5','446.998.079-09','Lethicia','Cajazeiras','Jardin Oasis','José Dantas Nobres','595-722416','lethicia_c_novo_2019.1@gmail.com','2018-04-28');
insert into cliente values('2222-6','685.079.489-28','Luz','Bonito','Santo antonio','João Cambota','669-366521','luz_camera_acao@gmail.com','2018-06-02');
insert into cliente values('2222-7','305.279.219-98','Leanderson','Mauriti','Conjunto Barroso','Major José Francisco','244-051765','leanderson-17@gmail.com','2018-06-13');
insert into cliente values('2222-8','487.126.629-09','Eduardo','Disney','Tão Tão Distante','Rua dos Ogros','426-463015','duduzinho-pressao@gmail.com','2018-07-20');

--Tabela Funcionario

insert into funcionario values ('1111-1','595.025.809-66','Antonio','Conceição','São José','José Antonio Digoes','970-841603',3000,'1998-04-28','36.629.612-7','2017-05-22','Gerencia',null);
insert into funcionario values ('1111-2','599.191.339-06','Mailson','Triunfo','Centro','José Francisco','691-433348',3000,'1999-12-11','17.463.091-8','2017-05-22','Gerencia',null);
insert into funcionario values ('1111-3','417.208.739-68','Isleimar','Cajazeiras','Olimpo','Salão do Trono','449-646661',1800,'1979-02-25','27.042.558-5','2017-06-01','Contabilidade','1111-1');
insert into funcionario values ('1111-4','863.764.179-22','Saymon','João Pessoa','Condado','Vila dos Hobbits','314-498568',950,'1985-08-06','18.883.049-2','2017-12-05','Serviços Gerais','1111-1');
insert into funcionario values ('1111-5','390.642.409-06','Camila','Icó','Alto do Cruzeiro','Rua Cruzeiro','459-602036',2000,'1999-08-06','32.230.856-2','2017-06-05','Vendas','1111-2');
insert into funcionario values ('1111-6','297.181.439-47','James','Cajazeiras','Vila Nova','BR-400','712-787453',1200,'1999-08-10','22.531.004-1','2018-01-05','Vendas','1111-2');
insert into funcionario values ('1111-7','473.298.135-57','Jonas','Cajazeiras','Casas populares','Manuel Bandeira de melo','952-873214',1500,'1993-05-03','35.765.057-2','2018-01-06','Serviços técnicos','1111-1');
insert into funcionario values ('1111-8','532.177.378-31','Laires','Cajazeiras','Casas populares','Presidende João Pessoa','932-550381',1500,'1996-02-15','18.673.105-2','2018-01-06','Serviços técnicos','1111-1');

--Tabela ServicoTecnico

insert into Servico_Tecnico values (201801,'2018-01-29','ótimo atendimento','2018-01-22','2018-01-27',40,'2222-1');
insert into Servico_Tecnico values (201802,'2018-02-27','Bom','2018-02-10','2018-02-20',60,'2222-1');
insert into Servico_Tecnico values (201803,'2018-03-01',null,'2018-02-17','2018-02-25',30,'2222-2');
insert into Servico_Tecnico values (201804,'2018-03-20','Muito demorado e caro','2018-02-26','2018-03-20',250,'2222-2');
insert into Servico_Tecnico values (201805,'2018-03-29',null,'2018-03-15','2018-03-25',70,'2222-3');
insert into Servico_Tecnico values (201806,'2018-05-11',null,'2018-04-29','2018-05-07',100,'2222-4');
insert into Servico_Tecnico values (201807,'2018-06-03','Ótimos Resultados','2018-05-17','2018-05-28',170,'2222-4');
insert into Servico_Tecnico values (201808,'2018-06-10','Serviço bem feito','2018-05-26','2018-06-08',200,'2222-5');
insert into Servico_Tecnico values (201809,'2018-07-02','Ótimo tratamento dos clientes','2018-06-16','2018-06-27',45,'2222-7');
insert into Servico_Tecnico values (201810,'2018-07-25','Meu computador tá novinho','2018-07-13','2018-07-20',350,'2222-7');
insert into Servico_Tecnico values (201811,'2018-09-06','Não gostei','2018-08-19','2018-09-01',50,'2222-8');
insert into Servico_Tecnico values (201812,'2018-09-16',null,'2018-09-07',null,40,'2222-8');

--Tabela Fornecedor

insert into fornecedor values('12.071.513/0001-72','477-575034','TiggerComp','01135-000','São Paulo','Barra Funda','Rua Anhanguera');
insert into fornecedor values('91.207.172/0001-96','219-387245','Báu da Eletronica','07094-000','Guarulhos','Vila Hulda','Dr. Timóteo Penteado');
insert into fornecedor values('21.330.498/0001-20','331-542653','Kabum','13480-010','Limeira','Centro','Carlos Gomes');
insert into fornecedor values('89.173.992/0001-62','880-637231','Americanas-CZ','58900-000','Cajazeiras','Jardim Adalgiza 2','Cmte. Vital Rolim');
insert into fornecedor values('15.296.084/0001-20','747-675390','Pichau Info','89203-212','Joinville','Atiradores','Ottokar Doerffel');
insert into fornecedor values('35.013.186/0001-06','842-097363','Multicell','77405-100','Gurupi','Centro','Antônio Lisboa da Cruz');

--Tabela Produto

insert into Produto (Nome,Descricao,PrecoUnitario,Quantidade,Fornecedor) values('Xiaomi Gaming Keyboard','Teclado Xiaomi gamer com retroiluminação RGB',227.33,17,'89.173.992/0001-62');
insert into Produto (Nome,Descricao,PrecoUnitario,Quantidade,Fornecedor) values('Xiaomi Wireless Mouse','Mouse Xioami sem fio com designe econômico e confortável',68.56,25,'89.173.992/0001-62');
insert into Produto (Nome,Descricao,PrecoUnitario,Quantidade,Fornecedor) values('Roteador TP-LINK Wireless','dispositivo combinado de conexão de rede cabeada e wireless',61.50,10,'21.330.498/0001-20');
insert into Produto (Nome,Descricao,PrecoUnitario,Quantidade,Fornecedor) values('Placa de Vídeo VGA NVIDIA EVGA GEFORCE GTX 1050 TI','NVIDIA EVGA GEFORCE GTX 1050 TI Gaming 4GB GDDR5 - 04G-P4-6251-KR',899.90,5,'21.330.498/0001-20');
insert into Produto (Nome,Descricao,PrecoUnitario,Quantidade,Fornecedor) values('Monitor Gamer LED ASUS','VS248H Full HD retroiluminado por LEDs',882.30,10,'15.296.084/0001-20');
insert into Produto (Nome,Descricao,PrecoUnitario,Quantidade,Fornecedor) values('Headset Gamer Razer Kraken','som surround virtual imersivo',299.90,14,'15.296.084/0001-20');
insert into Produto (Nome,Descricao,PrecoUnitario,Quantidade,Fornecedor) values('RC 4580 SMD','Circuito Integrado SMD RC4580',2.09,200,'12.071.513/0001-72');
insert into Produto (Nome,Descricao,PrecoUnitario,Quantidade,Fornecedor) values('Resistor 1/4W 5% - 33K','Resistor de filme de carbono',0.11,400,'12.071.513/0001-72');
insert into Produto (Nome,Descricao,PrecoUnitario,Quantidade,Fornecedor) values('Relê 5V 10A','5 Terminais,1 Polo - 2 Posições',2.15,175,'91.207.172/0001-96');
insert into Produto (Nome,Descricao,PrecoUnitario,Quantidade,Fornecedor) values('4700uF X 100V Epcos','Capacitor Eletrolitico 4700uF 100V',24.89,60,'91.207.172/0001-96');
insert into Produto (Nome,Descricao,PrecoUnitario,Quantidade,Fornecedor) values('Poliester 4M5 250V ','Capacitor de Poliester 250V',2.97,80,'35.013.186/0001-06');
insert into Produto (Nome,Descricao,PrecoUnitario,Quantidade,Fornecedor) values('BAV99','Diodo BAV 99',0.22,300,'35.013.186/0001-06');

--Tabela Produto_Venda

insert into produto_venda values (1,'00000-21');
insert into produto_venda values (2,'00000-22');
insert into produto_venda values (3,'00000-23');
insert into produto_venda values (4,'00000-24');
insert into produto_venda values (5,'00000-25');
insert into produto_venda values (6,'00000-26');

--Tabela ComponenteEletronico

insert into componente_eletronico values (7,'121-A','CI','4580 SMD');
insert into componente_eletronico values (8,'122-B','Resistor', '33k 1/4w');
insert into componente_eletronico values (9,'123-C','Chaveador','5V 10A 6T');
insert into componente_eletronico values (10,'124-D','Capacitor','4700uF X 100V');
insert into componente_eletronico values (11,'125-E','Capacitor','4M5 250V');
insert into componente_eletronico values (12,'126-F','Diodo','BAV 99');

--Tabela Venda

insert into Venda values (2018001,295.89,'A vista','2017-07-12','1111-5');
insert into Venda values (2018002,61.50,'Cheque','2017-08-30','1111-5');
insert into Venda values (2018003,1178.19,'Cartão de Crédito','2017-09-21','1111-5');
insert into Venda values (2018004,899.90,'Cartão de crédito','2017-11-15','1111-5');
insert into Venda values (2018005,299.90,'A vista','2017-12-03','1111-5');
insert into Venda values (2018006,361.4,'Cheque','2018-01-06','1111-6');
insert into Venda values (2018007,454.66,'Cheque','2018-01-25','1111-5');
insert into Venda values (2018008,137.12,'A vista','2018-03-12','1111-6');
insert into Venda values (2018009,1799.8,'Cheque','2018-03-09','1111-6');
insert into Venda values (20180010,61.50,'A vista','2018-04-15','1111-5');
insert into Venda values (20180011,299.90,'Cheque','2018-05-10','1111-6');
insert into Venda values (20180012,361.4,'Cheque','2018-05-28','1111-6');
insert into Venda values (20180013,882.30,'Cartão de Crédito','2018-06-11','1111-6');
insert into Venda values (20180014,123,'Cartão de Crédito','2018-06-20','1111-5');
insert into Venda values (20180015,599.8,'Cartão de Crédito','2018-08-17','1111-6');

--Tabela CartaoDeCredito

insert into cartaodecredito values ('4532295513581632','Andre','11/19','Visa','278');
insert into cartaodecredito values ('5301283639975389','Leticia','01/20','Mastercard','375');
insert into cartaodecredito values ('4988369192799655','Eduardo','07/19','Visa','169');
insert into cartaodecredito values ('5506436969440548','Maria','08/19','Mastercard','455');
insert into cartaodecredito values ('345824338818161','Marcos','01/20','American Express','979');

--Tabela PagaComCheque

insert into pagacomcheque values ('2222-4',2018002,'000451','2017-09-30');
insert into pagacomcheque values ('2222-6',2018006,'001511','2018-02-05');
insert into pagacomcheque values ('2222-2',2018007,'000601','2018-02-25');
insert into pagacomcheque values ('2222-4',2018009,'000453','2018-04-09');
insert into pagacomcheque values ('2222-1',20180012,'000899','2018-06-28');

--Tabela Encarregado 

insert into Encarregado values (201801,'1111-7');
insert into Encarregado values (201802,'1111-7');
insert into Encarregado values (201803,'1111-8');
insert into Encarregado values (201804,'1111-8');
insert into Encarregado values (201805,'1111-8');
insert into Encarregado values (201806,'1111-7');
insert into Encarregado values (201807,'1111-8');
insert into Encarregado values (201808,'1111-7');
insert into Encarregado values (201809,'1111-7');
insert into Encarregado values (201810,'1111-7');
insert into Encarregado values (201811,'1111-8');
insert into Encarregado values (201812,'1111-8');

--Tabela PagaComCartao

insert into PagaComCartao values ('4532295513581632',2018003,1);
insert into PagaComCartao values ('5301283639975389',2018004,2);
insert into PagaComCartao values ('4988369192799655',20180013,5);
insert into PagaComCartao values ('5506436969440548',20180014,2);
insert into PagaComCartao values ('345824338818161',20180015,6);

--Tabela VendaProduto 

insert into venda_produto values (2018001,1,227.33,1);
insert into venda_produto values (2018001,2,68.56,1);
insert into venda_produto values (2018002,3,61.50,1);
insert into venda_produto values (2018003,1,227.33,1);
insert into venda_produto values (2018003,2,68.56,1);
insert into venda_produto values (2018003,5,882.30,1);
insert into venda_produto values (2018004,4,899.90,1);
insert into venda_produto values (2018005,6,299.90,1);
insert into venda_produto values (2018006,3,61.50,1);
insert into venda_produto values (2018006,6,299.90,1);
insert into venda_produto values (2018007,1,454.66,2);
insert into venda_produto values (2018008,2,137.12,2);
insert into venda_produto values (2018009,4,1799.80,2);
insert into venda_produto values (20180010,3,61.50,1);
insert into venda_produto values (20180011,6,299.90,1);
insert into venda_produto values (20180012,6,299.90,1);
insert into venda_produto values (20180012,3,61.50,1);
insert into venda_produto values (20180013,5,882.30,1);
insert into venda_produto values (20180014,3,123.00,2);
insert into venda_produto values (20180015,6,599.80,2);

--Tabela ComponenteUsado

insert into componente_usado values (201805,12,0.88,4);
insert into componente_usado values (201807,10,49.78,2);
insert into componente_usado values (201802,11,2.97,1);
insert into componente_usado values (201808,8,0.99,9);
insert into componente_usado values (201810,10,49.78,2);
insert into componente_usado values (201810,9,4.30,2);