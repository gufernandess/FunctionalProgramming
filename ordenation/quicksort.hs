{-
O quicksort é uma forma de ordenação de vetores por divisão e conquista e
de complexidade O(n * log n), que funciona dividindo o vetor em dois
vetores menores de forma recursiva, até que o vetor esteja ordenado.
-}

smallests :: (Ord a) => a -> [a] -> [a]

smallests _ [] = []
smallests x xs = [a | a <- xs, a <= x] -- Dada uma lista, retorna os elementos menores que um dado número dentro da lista

{-
Percebe-se a necessidade do uso do operador <= na função smallests, pois caso a lista possua números repetidos,
é necessário retornar os elementos repetidos na lista além do elemento usado como referência.
-}

biggests :: (Ord a) => a -> [a] -> [a]

biggests _ [] = []
biggests x xs = [a | a <- xs, a > x] -- Dada uma lista, retorna os elementos mmaiores que um dado número dentro da lista

quicksort :: (Ord a) => [a] -> [a]

quicksort [] = []
quicksort [a] = [a]
quicksort (x:xs) = small ++ [x] ++ bigger -- Concatena o elemento escolhido com seus menores e maiores elementos

    where small = quicksort (smallests x xs) -- Chama quicksort para os menores elementos de acordo com o número dado
          bigger = quicksort (biggests x xs) -- Chama quicksort para os maiores elementos de acordo com o número dado