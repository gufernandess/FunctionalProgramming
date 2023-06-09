-- IDENTIFICAÇÃO
matricula = "521430" -- coloque a matricula aqui entre as asspas

-- Nome
nome = "Gustavo Fernandes de Barros" -- coloque seu nome aqui entre aspas

-- ATIVIDADE 2

-- Esta atuvidade visa construir uma 
-- função que determine os n primeitos números primos

-- Construa as funções a seguir,

-- determina os divisores de x excluindo o 1
divisores :: Int -> [Int]
divisores x = [y | y <- [2..x], mod x y == 0] -- mude aqui

-- Determina se um números x é ou não primo
eprimo :: Int -> Bool
eprimo x = length (divisores x) == 1 -- mude aqui

-- cria lista com n primeiros primos
primos :: Int -> [Int]
primos n = take n [x | x <- [1..], eprimo x] -- mude aqui