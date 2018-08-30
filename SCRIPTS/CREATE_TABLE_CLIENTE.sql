﻿CREATE TABLE Cliente(
	Matricula VARCHAR(10) NOT NULL UNIQUE,
	CPF CHARACTER(10) NOT NULL UNIQUE,
	Nome VARCHAR(100) NOT NULL,
	Telefone INT NOT NULL,
	Cidade VARCHAR(50) NOT NULL,
	Bairro VARCHAR (20) NOT NULL,
	Rua VARCHAR(100) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	DataCadastro DATE NOT NULL,
	CONSTRAINT PK PRIMARY KEY (Matricula)
);