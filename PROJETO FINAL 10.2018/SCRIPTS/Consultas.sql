-- Consulta para recuperar os principais dados dos funcinários ordenado de forma que apareçam primeiro aquele que possuem um salario maior do que os outros

SELECT *
FROM maioresSalarios

-- Consulta para saber o nome, o email e o telefone do cliente do serviço técnico 201807

SELECT c.nome,c.email,c.telefone
FROM Cliente C, Servico_tecnico tc
WHERE c.matricula=tc.cliente AND tc.protocolo=201807

--Consulta para verficiar o lucro bruto de vendas entre 2018-01-01 até 2018-05-01

SELECT SUM(valor) as valor_bruto
FROM venda
WHERE data>='2018-01-01' AND data<='2018-05-01' 

--Consulta para verificar o lucro bruto de serviços técnicos entre 2018-03-01 até 2018-07-01

SELECT SUM(valortotal) as valor_bruto
FROM Servico_tecnico
WHERE datafinal>='2018-03-01' AND datafinal<='2018-07-01'

--Consulta para recuperar todos os serviços técnicos que ainda não foram finalizados e projetar o seu protocolo, data de início, nome do cliente e prazo

SELECT st.protocolo, st.datainicio, st.prazo, c.nome
FROM Servico_tecnico st, Cliente c
WHERE st.cliente=c.matricula AND datafinal IS NULL

--Consulta para recuperar as informações sobre quantos serviços técnicos cada cliente já solicitou, e seus dados mais relevates

SELECT *
FROM clientesFieis

--Consulta para recuperar o nome e a quantidade em estoque do produto de código de barras 00000-21

SELECT p.nome,p.quantidade 
FROM Produto_venda pv, Produto p
WHERE pv.codproduto=p.codproduto AND pv.codBarras='00000-21'

--Consulta para recuperae o nome e a quantidade em estoque do componente eletrônico de Número de série 123-C

SELECT p.nome,p.quantidade 
FROM Componente_eletronico ce, Produto p
WHERE ce.codproduto=p.codproduto AND ce.numSerie='123-C'

--Consulta para recuperar o Feedback de cada serviço técnico realizado pelo funcionário Laires

SELECT se.protocolo, se.feedback
FROM Servico_tecnico se, Funcionario f,Encarregado e
WHERE e.funcionario=f.matricula AND se.protocolo=e.protocolo AND f.nome='Laires'

--Consulta para recuperar a matricula e o nome todos os funcionários que não tem supervisor

SELECT matricula,nome
FROM Funcionario
WHERE supervisor IS NULL

--Consulta para recuperar o nome e o preço unitário de todos os produtos da marca Xiaomi e ordenar pelos menores valores

SELECT nome, precounitario
FROM Produto
WHERE nome LIKE 'Xiaomi%'
ORDER BY precounitario 

--Consulta para recuperar o nome de todos os clientes que solicitaram algum serviço técnico no mes 05 de 2018

SELECT c.nome, c.matricula
FROM Servico_tecnico se, Cliente c
WHERE se.cliente=c.matricula AND se.datainicio>='2018-05-01' AND se.datainicio<='2018-05-31'

--Consulta para recuperar o nome e email de todos os clientes que utilizam hotmail como email cadastrado e retornar em ordem alfabétia pelo nome

SELECT nome,email
FROM Cliente
WHERE email LIKE '%@hotmail.com'
ORDER BY nome 

--Consulta para recuperar a matricula e o nome de todos os funcionários que realizaram mais de 3 serviços técnicos

SELECT nome, salario
FROM Funcionario
WHERE matricula in
(SELECT e.funcionario
FROM Servico_tecnico st, Encarregado e
where st.protocolo=e.protocolo
GROUP BY e.funcionario
HAVING count(*)>3)

--Consulta para recuperar o nome de todos os funcionários cujo salário é menor que 2000 reais

SELECT nome
FROM Funcionario
WHERE matricula in
(SELECT matricula
FROM Funcionario
WHERE salario<2000
GROUP BY Salario, matricula)

--Consulta para recuperar o nome e o endereço dos funcionários que moram da cidade sede da loja, 'Cajazeiras'.

SELECT Nome, Bairro, Rua
FROM Funcionario
WHERE matricula in
(SELECT matricula
FROM Funcionario
GROUP BY Cidade,Matricula
HAVING Cidade = 'Cajazeiras')

--Consulta para recuperar o nome e a matricula de todos os empregados que trabalham no setor de vendas ou de serviços tecnicos 
(SELECT nome, matricula
FROM Funcionario
WHERE setor='Vendas'
UNION
SELECT nome, matricula
FROM Funcionario
WHERE setor='Serviços técnicos')

--Selecione a matricula e o nome de todos os clientes Cadastrados que soliciatam algum serviço técnico e que taḿbém fizeram alguma compra com cheque

SELECT matricula,nome
FROM Cliente
WHERE matricula in 
(SELECT cliente
FROM Servico_tecnico
INTERSECT
SELECT cliente
FROM PagaComCheque)

--Consulta para recuperar o codigo, nome e a descrição de todos os componentes eletronicos nunca utilizados em um serviço técnico

SELECT p.codproduto,p.nome, p.descricao
FROM Componente_Eletronico CE NATURAL JOIN Produto P 
WHERE NOT EXISTS
(SELECT *
FROM Componente_Usado UC
WHERE CE.codproduto=UC.codproduto)

--Consulta para recuperar o nome e código dos produtos que tiveram pelo menos 5 vendas contabilizadas

SELECT p.nome,p.codproduto
FROM Produto_venda pv NATURAL JOIN Produto p
WHERE EXISTS
(SELECT vp.codproduto
 FROM Venda_Produto vp
 GROUP BY vp.codproduto
 HAVING count(*)>=5 and p.codproduto=vp.codproduto
)
