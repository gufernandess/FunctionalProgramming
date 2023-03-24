numbersList = [1,2,3,4,5]

-- Declaração de uma lista

numbersList ++ [6,7,8,9,10]

-- concatenação de listas

0:numbersList

-- inserção de um elemento no início da lista

numbersList !! 3

-- acessando um elemento da lista (especificamente o 3° elemento)

head numbersList

-- retorna o primeiro elemento da lista (a cabeça)

tail numbersList

-- retorna a cauda da lista (todos os elementos menos o primeiro)

last numbersList

-- retorna o último elemento da lista

init numbersList

-- retorna todos os elementos da lista menos o último

length numbersList

-- retorna o tamanho da lista

reverse numbersList

-- inverte a lista

take 3 numbersList

-- retorna, a partir do primeiro elemento, a quantidade de números especificada

drop 3 numbersList

-- retorna a lista, excluindo a quantidade de números especificada a partir do primeiro elemento

sum numbersList

-- soma todos os elementos da lista

product numbersList

-- multiplica todos os elementos da lista