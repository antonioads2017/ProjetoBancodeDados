CREATE TABLE Componente_Eletronico(
	NumeroSerie VARCHAR(15) NOT NULL UNIQUE,
	Tipo VARCHAR(20) NOT NULL,
	ValorUnitario FLOAT(2) NOT NULL,
	Funcao VARCHAR(30) NOT NULL,
	Especificacao VARCHAR(50) NOT NULL,
	CONSTRAINT PK_Componente PRIMARY KEY (NumeroSerie)
);