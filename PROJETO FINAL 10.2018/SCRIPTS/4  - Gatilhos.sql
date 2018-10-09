--Gatilho para diminuir a quantidade de um produto em estoque sempre que uma venda do mesmo for efetuada

CREATE OR REPLACE FUNCTION atualizaEstoque() RETURNS TRIGGER
AS $$
	BEGIN
		UPDATE Produto SET quantidade=quantidade-NEW.quantidade WHERE codProduto=NEW.codProduto;
		RETURN NULL;	
	END
$$LANGUAGE PLPGSQL;

CREATE TRIGGER atualizarEstoqueProduto
AFTER INSERT ON Venda_Produto 
FOR EACH ROW 
	EXECUTE PROCEDURE atualizaEstoque();

--Gatilho para proporcionar um aumento de 3% no salario de um funcionario para cada 5 serviçoes tecnicos que ele realizar

CREATE OR REPLACE FUNCTION funcionarioExemplar() RETURNS TRIGGER
AS $$
	DECLARE
		numServicos INT :=0;
	BEGIN
		SELECT INTO numServicos COUNT(*)
		FROM encarregadoServico
		WHERE funcionario = NEW.funcionario
		GROUP BY funcionario;
		IF numServicos%5=0 THEN
			UPDATE Funcionario SET salario=salario*1.03 WHERE matricula=NEW.funcionario;
		END IF;
		RETURN NULL;  
	END
$$LANGUAGE PLPGSQL;

CREATE TRIGGER atualizaSalario
AFTER INSERT ON Encarregado
FOR EACH ROW
	EXECUTE PROCEDURE funcionarioExemplar();	
