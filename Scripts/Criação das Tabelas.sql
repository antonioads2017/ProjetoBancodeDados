--Tabela Cliente

CREATE TABLE Cliente (
	Matricula VARCHAR(10),
	CPF VARCHAR(20) UNIQUE NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Cidade VARCHAR(50) NOT NULL,
	Bairro VARCHAR(50) NOT NULL,
	Rua VARCHAR(100) NOT NULL,
	Telefone VARCHAR(20) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	DataCadastro DATE NOT NULL,
	CONSTRAINT Cliente_PK PRIMARY KEY (Matricula)
);

--Tabela Funcionario

CREATE TABLE Funcionario(
	Matricula VARCHAR(10),
	CPF VARCHAR(20) UNIQUE NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Cidade VARCHAR(50) NOT NULL,
	Bairro VARCHAR(50) NOT NULL,
	Rua VARCHAR(100) NOT NULL,
	Telefone VARCHAR(20) NOT NULL,
	Salario FLOAT(2) NOT NULL,
	DataNascimento DATE NOT NULL,
	RG VARCHAR(20) NOT NULL UNIQUE,
	DataDeAdmissao DATE NOT NULL,
	Setor VARCHAR(30) NOT NULL,
	Supervisor VARCHAR(10),
	CONSTRAINT Funcionario_PK PRIMARY KEY (Matricula),
	CONSTRAINT Funcionario_Sup_FK FOREIGN KEY (Supervisor)
	REFERENCES Funcionario (Matricula),
	CONSTRAINT SalPositivo CHECK (Salario>0)
);

--Tabela ServicoTecnico

CREATE TABLE Servico_Tecnico(
	Protocolo INT,
	Prazo DATE NOT NULL,
	Feedback VARCHAR(100),
	DataInicio DATE NOT NULL,
	DataFinal DATE,
	ValorTotal FLOAT(2) NOT NULL,
	Cliente VARCHAR(10),
	CONSTRAINT ServicoTecnico_PK PRIMARY KEY (Protocolo),
	CONSTRAINT Cliente_ServicoTecnico_FK FOREIGN KEY (Cliente)
	REFERENCES Cliente(Matricula),
	CONSTRAINT ServicoTecnico_Positivos 
CHECK(Protocolo>0 AND ValorTotal>0)
);

--Tabela Fornecedor

CREATE TABLE Fornecedor(
	CNPJ VARCHAR(20),
	Telefone VARCHAR(20) NOT NULL,
	NomeFantasia VARCHAR(50) NOT NULL,
	CEP VARCHAR(10) NOT NULL,
	Cidade VARCHAR(50) NOT NULL,
	Bairro VARCHAR(50) NOT NULL,
	Rua VARCHAR(100) NOT NULL,
	CONSTRAINT Fornecedor_PK PRIMARY KEY (CNPJ)
);

--Tabela Produto

CREATE TABLE Produto(
	CodProduto SERIAL,
	Nome VARCHAR(100) NOT NULL,
	Descricao VARCHAR(200) NOT NULL,
	PrecoUnitario FLOAT(2) NOT NULL,
	Quantidade INT NOT NULL,
	Fornecedor VARCHAR(20),
	CONSTRAINT Produto_PK PRIMARY KEY (CodProduto),
	CONSTRAINT Fornecedor_Produto_FK FOREIGN KEY (Fornecedor)
	REFERENCES Fornecedor(CNPJ),
	CONSTRAINT Produtos_Positivos
	CHECK (CodProduto>0 AND PrecoUnitario>0 AND Quantidade>0)
);

--Tabela Produto_Venda

CREATE TABLE Produto_Venda(
	CodProduto SERIAL,
	CodBarras VARCHAR(25) UNIQUE NOT NULL,
	CONSTRAINT Produto_Cod_Venda_FK FOREIGN KEY (CodProduto)
	REFERENCES Produto(CodProduto),
	CONSTRAINT Produto_Venda_PK PRIMARY KEY(CodProduto)
);

--Tabela ComponenteEletronico

CREATE TABLE Componente_Eletronico(
	CodProduto SERIAL,
	NumSerie VARCHAR(20) UNIQUE NOT NULL,
	Tipo VARCHAR(30) NOT NULL,
	Especificacao VARCHAR(50) NOT NULL,
	CONSTRAINT Componente_Cod_FK FOREIGN KEY(CodProduto)
	REFERENCES Produto(CodProduto),
	CONSTRAINT Componente_PK PRIMARY KEY (CodProduto)
);

--Tabela Venda

CREATE TABLE Venda(
	Codigo INT,
	Valor FLOAT(2) NOT NULL,
	TipoPagamento VARCHAR(20) NOT NULL,
	Data DATE NOT NULL,
	Funcionario VARCHAR(10) NOT NULL,
	CONSTRAINT Venda_PK PRIMARY KEY (Codigo),
	CONSTRAINT Venda_Func_FK FOREIGN KEY (Funcionario)
	REFERENCES Funcionario(Matricula),
	CONSTRAINT Venda_ValorPositivo CHECK (Valor>0)
);

--Tabela CartaoDeCredito

CREATE TABLE CartaoDeCredito(
	Numero VARCHAR(16),
	Nome VARCHAR(30) NOT NULL,
	DataVencimento VARCHAR(5) NOT NULL,
	Bandeira VARCHAR(20) NOT NULL,
	CodigoSeguranca VARCHAR(3) NOT NULL,
	CONSTRAINT CartaoDeCredito_PK PRIMARY KEY (Numero)
);

--Tabela PagaComCheque

CREATE TABLE PagaComCheque(
	Cliente Varchar(10),
	CodVenda INT,
	NumeroDoCheque VARCHAR(10) NOT NULL,
	Data DATE NOT NULL,
	CONSTRAINT PagaComCheque_Cliente_FK FOREIGN KEY (Cliente)
	REFERENCES Cliente(Matricula),
CONSTRAINT PagaComCheque_Venda_FK FOREIGN KEY (CodVenda)
	REFERENCES Venda(Codigo),
CONSTRTabela PagaComCheque
AINT PagaComCheque_PK PRIMARY KEY (Cliente, CodVenda)
);

--Tabela Encarregado 

CREATE TABLE Encarregado(
	Protocolo INT,
	Funcionario VARCHAR(10),
	CONSTRAINT Encarregado_Protocolo_FK FOREIGN KEY (Protocolo)
	REFERENCES ServicoTecnico(Protocolo),
CONSTRAINT Encarregado_Funcionario_FK FOREIGN KEY (Funcionario)
	REFERENCES Funcionario(Matricula),
	CONSTRAINT Encarregado_PK PRIMARY KEY (Protocolo, Funcionario)
);	

--Tabela PagaComCartao

CREATE TABLE PagaComCartao (
	NumCartao VARCHAR(16),
	CodVenda INT,
	NumParcelas INT NOT NULL,
CONSTRAINT PagaComCartao_NumCartao_FK FOREIGN KEY (NumCartao)
	REFERENCES CartaoDeCredito (Numero),
	CONSTRAINT PagaComCartao_Venda_FK FOREIGN KEY (CodVenda)
	REFERENCES Venda(Codigo),
CONSTRAINT PagaComCartao_PK PRIMARY KEY (NumCartao, CodVenda),
	CONSTRAINT NumParcelas_Positivo CHECK(NumParcelas > 0)
);

--Tabela VendaProduto 

CREATE TABLE Venda_Produto(
	CodVenda INT,
	CodProduto SERIAL,
	Preco FLOAT(2) NOT NULL,
	Quantidade INT NOT NULL,
CONSTRAINT CodVenda_Venda_Produto_FK FOREIGN KEY(CodVenda) REFERENCES Venda(Codigo),
CONSTRAINT CodProduto_Venda_Produto_FK FOREIGN
KEY (CodProduto) REFERENCES Produto(CodProduto),
CONSTRAINT Venda_Produto_PK PRIMARY KEY (CodVenda, CodProduto),
CONSTRAINT Venda_Produto_Positivos 
CHECK (Preco>0 AND Quantidade>0)
);

--Tabela ComponenteUsado

CREATE TABLE Componente_Usado(
	Protocolo INT,
	CodProduto SERIAL,
	Quantidade INT NOT NULL,
	Preco FLOAT(2) NOT NULL,
	CONSTRAINT Componente_Usado_Protocolo_FK 
	FOREIGN KEY (Protocolo) REFERENCES 
	Servico_Tecnico(Protocolo),
	CONSTRAINT Componente_Usado_CodProduto_FK
	FOREIGN KEY (CodProduto) REFERENCES
	Componente_Eletronico(CodProduto),
	CONSTRAINT Componente_Usado_PK 
PRIMARY KEY(Protocolo, CodProduto),
CONSTRAINT Componente_Usado_Positivos
CHECK (Quantidade>0 AND Preco>0)
);