--QUESTÃO 10: Faça uma consulta que selecione o nome do projeto, o nome do departamento do projeto, o nome do funcionário responsável pelo projeto, o nome do departamento do funcionário responsável.

SELECT p.nome AS nomeProjeto , d1.descricao AS descricaoProjeto, f.nome AS funcionario_responsavel_projeto, d2.descricao AS Departamento_responsavel
FROM projeto p
INNER JOIN departamento d1 ON p.cod_depto = d1.codigo
INNER JOIN funcionario f ON p.cod_responsavel = f.codigo
INNER JOIN departamento d2 ON f.cod_depto = d2.codigo;
