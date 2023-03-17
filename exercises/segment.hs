segment begin end list = take (end - begin + 1) (drop begin list)

-- Inicialmente usamos o drop para descartar os elementos do começo da lista, ou seja, de antes do segmento
-- Depois usamos o take para pegar os elementos restantes menos os elementos do final da lista, ou seja, de depois do segmento