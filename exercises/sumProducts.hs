sumProducts firstList secondList = sum (zipWith (*) firstList secondList)

-- A função zipWith aplica uma função a dois elementos de duas listas e retorna uma lista com os resultados
-- Assim só foi necessário somar os elementos da lista resultante