--Função criada para retornar o lucro bruto das vendas realizadas por cada funcionário do estabelecimento

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
$$LANGUAGE PLPGSQL;			

--Função para retornar o total de gastos com componentes eletrônicos em um determinado periodo de tempo

CREATE OR REPLACE FUNCTION gastosComComponetes (DATE, DATE) RETURNS Componente_Usado.Preco%type
AS $$ 
	DECLARE
		inicio ALIAS FOR $1;
		fim ALIAS FOR $2;
		valorTotal Componente_Usado.Preco%type := 0;
		valorComponente Componente_Usado.Preco%type;
		curs REFCURSOR;
	BEGIN
		OPEN curs FOR 
		SELECT (quantidade*preco) AS valor 
		FROM ComponentesPorServiço 
		WHERE inicio<=Datafinal AND fim>=DataFinal;
		FETCH curs INTO valorComponente;
		WHILE FOUND LOOP
			valorTotal := valorTotal + valorComponente;
			FETCH curs INTO valorComponente;
		END LOOP;
		CLOSE curs;
		RETURN valorTotal;	
	END
$$LANGUAGE PLPGSQL	
