CREATE INDEX IndiceCliente ON Cliente(Matricula);
CREATE INDEX IndiceFuncionario ON Funcionario(Matricula);
CREATE INDEX IndiceServicoTecnico ON Servico_Tecnico(Protocolo);
CREATE INDEX IndiceFornecedor ON Fornecedor(CNPJ);
CREATE INDEX IndiceProduto ON Produto(CodProduto);
CREATE INDEX IndiceProdutoVenda ON Produto_Venda(CodProduto);
CREATE INDEX IndiceComponenteEletronico ON Componente_Eletronico(CodProduto);
CREATE INDEX IndiceVenda ON Venda(Codigo);
CREATE INDEX IndiceCartao ON CartaoDeCredito(Numero);
CREATE INDEX IndicePagacomCheque ON PagaComCheque(Cliente,CodVenda);
CREATE INDEX IndiceEncarregado ON Encarregado(Protocolo,Funcionario);
CREATE INDEX IndicePagacomCartao ON PagaComCartao(NumCartao,CodVenda);
CREATE INDEX IndiceVendaProduto ON Venda_Produto(CodVenda,CodProduto);
CREATE INDEX IndiceComponenteUsado ON Componente_Usado(Protocolo,CodProduto);
