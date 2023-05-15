-- Function

CREATE OR REPLACE FUNCTION idade_maior_media_depto()
RETURNS TABLE (codigo INTEGER, nome CHARACTER VARYING, idade INT)
LANGUAGE plpgsql
AS
$$
BEGIN
	RETURN QUERY 
	SELECT f.codigo, f.nome, idadefuncionario(f.dataNasc)
	FROM funcionario f
	WHERE
		idadefuncionario(f.dataNasc) > mediaidadepordepto(f.depto);
END;
$$;

-- Exemplo de uso: 

Select idade_maior_media_depto();

-- Retornará código, nome e idade dos funcionário que possuem idade maior que a média dos deptos.