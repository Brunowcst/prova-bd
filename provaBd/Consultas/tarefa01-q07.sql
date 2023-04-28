--QUESTÃO 07: Faça uma consulta que selecione o nome do departamento, o nome do gerente, e o número de funcionários de cada departamento. Deve aparecer os departamentos sem gerente e sem funcionários. Crie uma view para totalizar o número de funcionários em cada departamento e utilize-a na consulta.

--Seleciona a quantidade de funcionarios por departamento.
CREATE VIEW funcionarios_por_depto AS
SELECT cod_depto, COUNT(f.codigo) AS qtde_funcionarios
FROM funcionario f
GROUP BY cod_depto;


--Seleciona nome do departamento, o nome do gerente, e o número de funcionários de cada departamento. Mesmo que o depto não tenha gerentes ou funcionário eles irão ser mostrados.
SELECT d.descricao AS departamento, f.nome AS gerente, COALESCE(v.qtde_funcionarios, 0) AS num_funcionarios
FROM departamento d
LEFT JOIN funcionario f ON d.cod_gerente = f.codigo
LEFT JOIN funcionarios_por_depto v ON d.codigo = v.cod_depto;