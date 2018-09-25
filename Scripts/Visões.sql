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
	ORDER BY COUNT(ST.protocolo)
);

--Visão para mostrar todos os produtos e seus respectivos fornecedores

CREATE VIEW produtoFornecedor AS(
	SELECT P.nome,f.nomefantasia as fornecedor
	FROM Produto P, Fornecedor f
	WHERE P.fornecedor=f.cnpj 
); 

