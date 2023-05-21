-- Function

CREATE OR REPLACE FUNCTION qnt_atividades(codigo_funcionario INT, codigo_projeto INT)
RETURNS INT
LANGUAGE plpgsql
AS
$$
DECLARE
	quant INTEGER;
BEGIN
	SELECT COUNT(a.codigo)
	INTO quant
	FROM projeto p
		JOIN membro m ON p.equipe = m.codequipe
		JOIN atividade_membro am ON am.codmembro = m.codigo
		JOIN atividade a ON am.codatividade = a.codigo
	WHERE p.codigo = codigo_projeto AND m.codfuncionario = codigo_funcionario;
	RETURN quant;
END;
$$;

-- Exemplo de uso: 

SELECT qnt_atividades(4, 2)

-- Retornará quantidade de atividades do funcionário de código feitas no projeto de código 2.