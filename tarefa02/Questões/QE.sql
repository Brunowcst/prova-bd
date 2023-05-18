-- Function

CREATE OR REPLACE FUNCTION verifica_atraso(projeto_id INT)
RETURNS INTEGER
LANGUAGE plpgsql
AS
$$
DECLARE
    data_fim_projeto DATE;
    data_conclusao_projeto DATE;
    atraso INTEGER;
BEGIN
    SELECT dataFim, dataConclusao INTO data_fim_projeto, data_conclusao_projeto
    FROM projeto
    WHERE codigo = projeto_id;
    
    IF data_conclusao_projeto IS NULL THEN
        atraso := data_fim_projeto - CURRENT_DATE;
    ELSE
        atraso :=  data_fim_projeto - data_conclusao_projeto;
    END IF;
    
    RETURN atraso;
END;
$$;

-- Exemplo de uso: 

SELECT verifica_atraso(p.codigo) --pode ser passado um id individual.
FROM projeto p

-- Retornará valores negativos indicando os dias de atraso e positivos indicando que ainda está no prazo.