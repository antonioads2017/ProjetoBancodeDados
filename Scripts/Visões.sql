-- Visão para Nome, salário e setor dos funcionários que ganham mais

CREATE VIEW maioresSalarios AS(
	SELECT nome, salario, setor
	FROM Funcionario
	ORDER BY salario desc
);

--Visão para Matricula e nome dos clientes que solicitarem mais serviços técnicos

CREATE VIEW clientesFieis AS(
	SELECT C.matricula,C.nome,COUNT(ST.protocolo) as numero_de_serviços
	FROM Cliente C LEFT JOIN Servico_tecnico ST ON C.matricula=ST.cliente
	GROUP BY C.matricula, C.nome
	ORDER BY COUNT(ST.protocolo) DESC
);

--Visão para mostrar todos os produtos e seus respectivos fornecedores

CREATE VIEW produtoFornecedor AS(
	SELECT P.nome,f.nomefantasia as fornecedor
	FROM Produto P, Fornecedor f
	WHERE P.fornecedor=f.cnpj 
); 

--Visão Criada para mostrar todos as informações de todos os serviços tecnicos já fechados, incluindo os componentes eletrônicos utilizados para aquele serviço

CREATE VIEW ComponentesPorServiço AS(
	SELECT *
	FROM Servico_tecnico ST NATURAL JOIN Componente_Usado US
	WHERE ST.DataFinal IS NOT NULL
);

--Visão Criada para mostrar os dados de cada serviço tecnico junto do seu respectivo funcionário encarregado;

CREATE VIEW EncarregadoServico AS(
	SELECT protocolo, feedback, dataInicio, ValorTotal, Cliente, funcionario, nome
	FROM (Servico_tecnico NATURAL JOIN Encarregado) STE, Funcionario F
	WHERE STE.funcionario = F.Matricula 
);