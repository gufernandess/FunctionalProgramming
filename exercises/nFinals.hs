nFinals number list = drop (length list - number) list

-- Dado um valor numérico number, retorna uma lista com os últimos number elementos de uma lista
-- A ideia consiste em pegar o tamanho da lista e subtrair o número de elementos que queremos excluir
-- Assim, usamos o drop para excluir os elementos que não queremos