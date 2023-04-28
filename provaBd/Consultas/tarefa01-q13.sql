--Questão 13: Faça uma consulta que selecione o nome do projeto, data de início e fim do projeto, o nome da atividade do projeto, data de início e fim da atividade. Só devem ser exibidas as atividades que começarem antes da data de início do projeto ou que terminarem depois do final do projeto.

SELECT p.nome as nome_projeto, p.data_inicio as Projdata_inicio, p.data_fim as Projdata_fim,
a.nome as nome_atividade, a.data_inicio as inicio_atividade, a.data_fim as fim_atividade
FROM atividade a
INNER JOIN atividade_projeto ap ON ap.cod_atividade = a.codigo
INNER JOIN projeto p ON p.codigo = ap.cod_projeto
WHERE a.data_inicio < p.data_inicio OR a.data_fim > p.data_fim;