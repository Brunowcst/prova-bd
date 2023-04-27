--Inserir em departamentos
INSERT INTO departamento (descricao, cod_gerente) VALUES
('Vendas', null),
('Marketing', null),
('TI', null),
('RH', null),
('Contabilidade', null);

--INSERINDO GERENTES
INSERT INTO funcionario
(nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('Bruno', 'F', '1988-05-07', 2500.00, 1),
('David', 'M', '1980-01-25', 2500.00, 2),
('Renan', 'M', '1970-07-18', 2500.00, 3);

UPDATE departamento SET cod_gerente = 1 WHERE codigo = 5;
UPDATE departamento SET cod_gerente = 2 WHERE codigo = 4;
UPDATE departamento SET cod_gerente = 3 WHERE codigo = 3;

--INSERIR em funcionario
INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto) VALUES
('João', 'M', '1990-01-01', 3000.00, 1),
('Maria', 'F', '1995-05-10', 3500.00, 2),
('Pedro', 'M', '1985-12-25', 4000.00, 1),
('Ana', 'F', '1999-08-15', 2800.00, 3),
('Lucas', 'M', '1992-06-30', 3200.00, 2);

--INSERIR em projeto
INSERT INTO projeto (nome, descricao, cod_responsavel, cod_depto, data_inicio, data_fim) VALUES
('Projeto A', 'Descrição do Projeto A', 1, 3, '2022-01-01', '2022-12-31'),
('Projeto B', 'Descrição do Projeto B', 2, 2, '2022-03-01', '2022-08-31'),
('Projeto C', 'Descrição do Projeto C', 3, 1, '2022-06-01', '2022-11-30'),
('Projeto D', 'Descrição do Projeto D', 1, 1, '2022-02-01', '2022-10-31'),
('Projeto E', 'Descrição do Projeto E', 4, 4, '2022-04-01', '2022-07-31');


----INSERIR em atividade
INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
('Atividade A1', 'Descrição da Atividade A1', 1, '2022-01-01', '2022-03-31'),
('Atividade A2', 'Descrição da Atividade A2', 2, '2022-02-01', '2022-04-30'),
('Atividade B1', 'Descrição da Atividade B1', 3, '2022-03-01', '2022-06-30'),
('Atividade C1', 'Descrição da Atividade C1', 1, '2022-04-01', '2022-08-31'),
('Atividade D1', 'Descrição da Atividade D1', 4, '2022-05-01', '2022-07-31');

--Inserir em atividades_projetos
INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(1,1),
(1,2),
(2,3),
(3,4),
(4,1);