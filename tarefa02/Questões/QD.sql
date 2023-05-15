-- Function

CREATE OR REPLACE FUNCTION status_entrega(cod_atividade INT)
returns INT
language plpgsql
as
$$
DECLARE
	dias INT;
BEGIN
	SELECT dataFim - dataConclusao
	INTO dias
	FROM atividade
	WHERE codigo = cod_atividade;
	
	RETURN dias;
END;
$$;

-- Exemplo de uso: 

Select status_entrega(a.codigo)
From atividade a;

-- Retornará dias positivo se a atividade não estiver atrasada e negativo se o contrário.