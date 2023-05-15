-- Fuction

CREATE OR REPLACE FUNCTION idadeFuncionario(n date)
returns int
language plpgsql
as
$$
begin
	return date_part('YEAR', age(n));
end;
$$;

-- Exemplo de uso:

Select f.nome, idadeFuncionario(f.dataNasc)
From funcionario f;

-- Retornará nomes e idades dos funionários