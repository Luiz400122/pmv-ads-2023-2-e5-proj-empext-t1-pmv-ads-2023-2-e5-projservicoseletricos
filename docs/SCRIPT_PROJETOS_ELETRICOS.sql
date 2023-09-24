-- SCRIPT BD PROJETO SERVICOS ELETRICOS

-- Criação das tabelas
CREATE TABLE CLIENTES(
	ID_CLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(45) NOT NULL,
	TELEFONE VARCHAR(45),
	EMAIL VARCHAR(45) NOT NULL
);

CREATE TABLE SERVICOS(
	ID_SERVICOS INT PRIMARY KEY AUTO_INCREMENT,
	DESCRICAO VARCHAR(MAX)
);

CREATE TABLE ORCAMENTOS(
	ID_ORCAMENTO INT PRIMARY KEY AUTO_INCREMENT,
	VALOR FLOAT NOT NULL,
	DATA DATE NOT NULL
);

CREATE TABLE PRODUTOS(
	ID_PRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(45) NOT NULL,
	QUANTIDADE INT,
	PRECO DECIMAL NOT NULL
);

CREATE TABLE ADMIN(
	ID_ADMIN INT PRIMARY KEY AUTO_INCREMENT,
	NOME_ADMIN VARCHAR(100) NOT NULL,
	SENHA VARCHAR(1000) NOT NULL,
	EMAIL VARCHAR(45) NOT NULL
);

-- Criação das tabelas de relacionamento NxN
CREATE TABLE SERVICOS_ORCAMENTOS(
	ID_SERVICO INT,
	ID_ORCAMENTO INT,
	PRIMARY KEY(ID_SERVICO, ID_ORCAMENTO)
);

CREATE TABLE ORCAMENTOS_PRODUTOS(
	ID_ORCAMENTO INT,
	ID_PRODUTO INT,
	PRIMARY KEY(ID_ORCAMENTO, ID_PRODUTO)
);

-- Criação das chaves estrangeiras
ALTER TABLE SERVICOS_ORCAMENTOS
ADD CONSTRAINT FK_SERVICOS_ORCAMENTOS_SERVICOS
FOREIGN KEY (ID_SERVICO)
REFERENCES SERVICOS(ID_SERVICOS);

ALTER TABLE SERVICOS_ORCAMENTOS
ADD CONSTRAINT FK_SERVICOS_ORCAMENTOS_ORCAMENTOS
FOREIGN KEY(ID_ORCAMENTO)
REFERENCES ORCAMENTOS(ID_ORCAMENTO);

ALTER TABLE ORCAMENTOS_PRODUTOS
ADD CONSTRAINT FK_ORCAMENTOS_PRODUTOS_ORCAMENTOS
FOREIGN KEY(ID_ORCAMENTO)
REFERENCES ORCAMENTOS(ID_ORCAMENTO);

ALTER TABLE ORCAMENTOS_PRODUTOS
ADD CONSTRAINT FK_ORCAMENTOS_PRODUTOS_PRODUTOS
FOREIGN KEY(ID_PRODUTO)
REFERENCES PRODUTOS(ID_PRODUTO);