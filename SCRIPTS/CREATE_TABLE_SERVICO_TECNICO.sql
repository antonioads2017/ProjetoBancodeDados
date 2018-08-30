CREATE TABLE Servico_Tecnico(
	Protocolo VARCHAR(15) NOT NULL UNIQUE,
	Prazo INT NOT NULL,
	Feedback VARCHAR(100),
	DataInicio DATE NOT NULL,
	DataFinal DATE,
	ValorTotal FLOAT(2) NOT NULL,
	Cliente VARCHAR(10) NOT NULL,
	CONSTRAINT PK_Service PRIMARY KEY (Protocolo),
	CONSTRAINT FK_Cliente FOREIGN KEY (Cliente) REFERENCES Cliente(Matricula)
);