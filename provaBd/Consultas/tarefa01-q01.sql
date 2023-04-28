-- QUESTÃO 01: Faça uma consulta que selecione o nome dos funcionários que recebem salários superiores aos salários pagos no departamento 2.

--Podemos resolver de duas formas:
--1- Comparando os salários dos funcionários com o menor salario do depto 2, se algum salario for menor que o minimo do depto 2, não é maior que nenhum outro deste depto.

CREATE VIEW salarioMinDepto2 AS
SELECT MIN(salario) AS salarioMin
FROM funcionario
WHERE cod_depto = 2;

SELECT f.nome
FROM funcionario f
WHERE f.salario > (SELECT salarioMin FROM salarioMinDepto2);

-- 2 Comparando com todos os salarios do depto 2. 

CREATE VIEW salariosDepto2 AS
SELECT f.salario
FROM funcionario f
WHERE f.cod_depto = 2;

SELECT f.nome
FROM funcionario f
WHERE f.salario > ANY (SELECT salario FROM salariosDepto2);

--Ambas as consultas resultam no mesmo resultado!