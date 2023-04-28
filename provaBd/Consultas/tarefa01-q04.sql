--QUESTÃO 04: Faça uma consulta que selecione o nome, o salário e o departamento dos funcionários que não são gerentes, ordenando pelo Código do Departamento.

SELECT f.nome, f.salario, d.descricao
FROM funcionario f
JOIN departamento d ON f.cod_depto = d.codigo
WHERE f.codigo NOT IN (SELECT cod_gerente FROM departamento WHERE cod_gerente IS NOT NULL)
ORDER BY d.codigo;