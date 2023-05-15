-- Function

CREATE OR REPLACE FUNCTION MediaidadePorDepto(cod_depto INT)
returns int
language plpgsql
as
$$
DECLARE
	media FLOAT;
BEGIN
	SELECT AVG(date_part('year', age(f.dataNasc)))
	INTO media
	FROM funcionario f
	WHERE f.depto = cod_depto;
	
	RETURN media;
END;
$$;

-- Exemplo de uso: 

Select d.descricao, MediaIdadePorDepto(d.codigo)
From departamento d;

-- Retornará descrição e média de idade por departamento.