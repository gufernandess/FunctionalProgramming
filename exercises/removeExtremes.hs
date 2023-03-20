removeExtremes list = take (length list - 2) (tail list)

-- A ideia é remover os extremos da lista, então eu utilizo a função tail para remover o primeiro elemento
-- Visando remover o último elemento, eu utilizo o take para retornar todos os elementos da lista, menos o último

-- length list - 2 é a quantidade de elementos da lista atual, menos os dois extremos