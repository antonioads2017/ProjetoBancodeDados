--Função criada para retornar o lucro bruto das vendas de cada funcionário do estabelecimento

CREATE OR REPLACE FUNCTION LucroPorFuncionario (VARCHAR(10)) RETURNS Venda.valor%type
AS $$
	DECLARE
		mat ALIAS FOR $1;
		somaLucro Venda.Valor%type := 0;
		valorVenda Venda.Valor%type;
		curs REFCURSOR;
	BEGIN
		OPEN curs FOR SELECT valor FROM Venda WHERE funcionario=mat;
		FETCH curs INTO valorVenda;
		WHILE FOUND LOOP
			somaLucro := somaLucro + valorVenda;
			FETCH curs INTO valorVenda;
		END LOOP;
		CLOSE curs;
		RETURN somaLucro;
	END
$$LANGUAGE PLPGSQL			

--Função 