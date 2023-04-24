-- ATIVIDADE 
atividade = 5

-- IDENTIFICAÇÃO
matricula = "521430" -- coloque a matricula aqui entre as asspas

-- Nome
nome = "Gustavo Fernandes de Barros" -- coloque seu nome aqui entre aspas

unique :: (Eq a) => [a] -> [a]
unique [] = []
unique (x:xs) = x : unique (filter (/=x) xs)

smallests :: (Char, Int) -> [(Char, Int)] -> [(Char, Int)]

smallests _ [] = []
smallests x xs = [a | a <- xs, snd a <= snd x]

biggests :: (Char, Int) -> [(Char, Int)] -> [(Char, Int)]

biggests _ [] = []
biggests x xs = [a | a <- xs, snd a > snd x]

-- 1

-- FUNÇÕES HASKELL A FAZER,

-- Construa função que 
-- receba uma string e 
-- retorne a lista das 
-- tuplas das frequencias dos
-- seus caracteres
freq :: [Char] -> [(Char, Int)]
freq s = unique [(x, length (filter (==x) s)) | x <- s]

-- Exemplos:

-- >> freq "abcdaadd"
-- [('a',3), ('b',1),('c',1),('d',3)]
-- >> freq "A casa"
-- [('A',1), ('a', 2), ('c',1), ('s', 1), (' ',1) ]

-- Se existir uma função em
-- Haskell que faça a mesma coisa, não use.

-- 2

-- Construa função que ordene
-- a lista de tuplas da questão
-- por valor de frequencia,

freqSort :: [(Char, Int)] -> [(Char, Int)]

freqSort [] = []
freqSort [a] = [a]
freqSort (x:xs) = small ++ [x] ++ bigger

    where small = freqSort (smallests x xs)
          bigger = freqSort (biggests x xs)

-- Exemplos,

-- >> s = freqSort (freq "aaaa22p")
-- [('p',1), ('2', 2), ('a', 4)]

-- Obs: Se existir uma função 
-- em Haskell que faça a mesma coisa, 
-- não use.