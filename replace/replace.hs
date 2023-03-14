replace list index variable = take index list ++ [variable] ++ drop (index + 1) list

-- replace -> Nome da variável

-- list -> Lista passada como parâmetro da função

-- index -> Posição do elemento a ser substituído

-- variable -> Elemento a ser substituído

-- Percebe-se que a estrutura do código se assemelha a uma função matemática, com nome e parâmetros que retornam um valor.

-- A ideia é substituir um determinado valor dentro de uma lista por outro valor
-- E a lógica é usar as funções take e drop para separar a lista em duas partes, uma antes do elemento a ser substituído e outra depois
-- Depois, é só concatenar as duas partes com o elemento a ser substituído no meio

