-- Function

CREATE OR REPLACE FUNCTION porcentagem_atividades(codigo_funcionario INT, codigo_projeto INT)
RETURNS DECIMAL
LANGUAGE plpgsql
AS
$$
DECLARE
	porcentagem DECIMAL;
BEGIN
	SELECT
		ROUND(
			qnt_atividades(codigo_funcionario, codigo_projeto)::decimal/COUNT(ap.codatividade) * 100,
			2
		)
    INTO porcentagem
    FROM projeto p
		JOIN atividade_projeto ap ON ap.codprojeto = p.codigo
	WHERE p.codigo = codigo_projeto
	GROUP BY p.codigo;
	RETURN porcentagem;
END;
$$;

-- Exemplo de uso: 

SELECT porcentagem_atividades(4, 2);

-- Retornará a porcentagem da quantidade de atividades do funcionário de código 4 feitas no projeto de código 2.