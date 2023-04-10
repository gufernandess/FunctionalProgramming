{- A série de colatz é uma conjectura onde, dado um número natural qualquer,
   A série sempre resultará em 1.

   Caso o número seja par, o mesmo é dividido por 2.
   Caso contrário, o mesmo será multiplicado por 3 e somado com 1.

   Assim, sucessivamente, até chegar a 1.
-}

colatz :: Int -> [Int]

colatz 1 = [1]
colatz n
    | p == 0 = n : colatz x -- Caso o número dado seja par
    | otherwise = n : colatz y -- Caso o número dado seja ímpar

    where p = mod n 2 -- O p é a "variável" na qual verificamos se n é par
          x = div n 2 -- x é a divisão de n por 2
          y = div (3*n + 1) 2 -- y é a operação realizada para os números ímpares
