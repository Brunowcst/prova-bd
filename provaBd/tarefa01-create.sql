DROP TABLE IF EXISTS atividade CASCADE;
DROP TABLE IF EXISTS projeto CASCADE;
DROP TABLE IF EXISTS departamento CASCADE;
DROP TABLE IF EXISTS funcionario CASCADE;

CREATE TABLE funcionario (
	codigo serial PRIMARY KEY,
	nome VARCHAR(50),
	sexo CHAR(1),
	dt_nasc DATE,
	salario DECIMAL(10,2),
	cod_depto INT
);

CREATE TABLE departamento (
	codigo SERIAL PRIMARY KEY,
	descricao VARCHAR(100),
	cod_gerente INT,
	FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo) ON DELETE SET null ON UPDATE CASCADE
);

CREATE TABLE projeto (
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(50) unique,
	descricao VARCHAR(100),
	cod_responsavel INT,
	cod_depto INT,
	data_inicio DATE, 
	data_fim DATE,
	FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo) ON DELETE SET null ON UPDATE CASCADE,
	FOREIGN KEY (cod_depto) REFERENCES departamento(codigo) ON DELETE SET null ON UPDATE CASCADE
);
 
CREATE TABLE atividade (
	codigo SERIAL PRIMARY KEY,
  	nome VARCHAR(50),
	descricao VARCHAR(100),
  	cod_responsavel INT,
	data_inicio DATE, 
	data_fim DATE,
	FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo) ON DELETE SET null ON UPDATE CASCADE

);

create table atividade_projeto (
  cod_projeto INT NOT NULL,
  cod_atividade INT NOT NULL,
  PRIMARY KEY (cod_projeto, cod_atividade),
  FOREIGN KEY (cod_projeto) REFERENCES projeto(codigo),
  FOREIGN KEY (cod_atividade) REFERENCES  atividade(codigo)
);

ALTER TABLE funcionario
ADD CONSTRAINT FkFuncDeto
FOREIGN KEY (cod_depto) REFERENCES departamento(codigo) ON DELETE SET null ON UPDATE CASCADE;