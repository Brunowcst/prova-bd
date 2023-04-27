--INSERIR em funcionario

INSERT INTO funcionario(nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('João', 'M', '1990-02-14', 5000.00, 1);

INSERT INTO funcionario( nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('Maria', 'F', '1988-09-23', 6500.00, 2);

INSERT INTO funcionario( nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('Pedro', 'M', '1995-06-10', 4500.00, 1);

INSERT INTO funcionario( nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('Ana', 'F', '1992-11-27', 5500.00, 3);

INSERT INTO funcionario( nome, sexo, dt_nasc, salario, cod_depto)
VALUES ('Lucas', 'M', '1991-04-05', 7000.00, 2);


--Inserir departamentos
INSERT INTO departamento( descricao, cod_gerente)
VALUES ('Vendas', 2);

INSERT INTO departamento( descricao, cod_gerente)
VALUES ('Desenvolvimento', 5);

INSERT INTO departamento( descricao, cod_gerente)
VALUES ('Financeiro', 4);

INSERT INTO departamento( descricao, cod_gerente)
VALUES ('Marketing', 3);

INSERT INTO departamento( descricao, cod_gerente)
VALUES ('RH', 1);

--INSERIR em projeto

INSERT INTO projeto(codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
VALUES (1, 'Projeto A', 'Desenvolvimento de um novo software', 2, 5, '2022-01-01', '2022-06-30');

INSERT INTO projeto(codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
VALUES (2, 'Projeto B', 'Implementação de uma nova estratégia de marketing', 4, 3, '2022-03-15', '2022-11-30');

INSERT INTO projeto(codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
VALUES (3, 'Projeto C', 'Análise de mercado e estudo de concorrência', 4, 2, '2022-05-01', '2022-09-30');

INSERT INTO projeto(codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
VALUES (4, 'Projeto D', 'Implantação de novo sistema de gerenciamento financeiro', 3, 4, '2022-06-01', '2022-12-31');

INSERT INTO projeto(codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
VALUES (5, 'Projeto E', 'Desenvolvimento de campanha publicitária', 4, 3, '2022-02-01', '2022-08-31');


----INSERIR em atividade

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim)
VALUES ('Atividade 1', 'criando atividade 1 ', 1, '2023-05-01', '2023-05-15');

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim)
VALUES ('Atividade 2', 'Criando atividade 2', 2, '2023-06-01', '2023-06-15');

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim)
VALUES ('Atividade 3', 'Criando atividade 3', 3, '2023-07-01', '2023-07-15');

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim)
VALUES ('Atividade 4', 'Criando atividade 4', 4, '2023-08-01', '2023-08-15');

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim)
VALUES ('Atividade 5', 'Criando atividade 5', 5, '2023-08-01', '2023-08-15');

--Inserir atividades_projetos
INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES (1, 1);
INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES (2, 2);
INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES (3, 3);
INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES (4, 4);
INSERT INTO atividade_projeto (cod_projeto, cod_atividade)
VALUES (5, 5);