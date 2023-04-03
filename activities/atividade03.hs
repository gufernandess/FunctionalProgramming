-- IDENTIFICAÇÃO
matricula = "521430" -- coloque a matricula aqui entre as asspas

-- Nome
nome = "Gustavo Fernandes de Barros" -- coloque seu nome aqui entre aspas

-- ATIVIDADE 3

-- Remove espaços existentes no início
-- e final de uma strings dada.

strip :: [Char] -> [Char]
strip xs
  | head xs /= ' ' && last xs /= ' ' = xs
  | head xs == ' ' = strip (tail xs)
  | last xs == ' ' = reverse (strip (tail (reverse xs)))
  | otherwise = xs

-- Separa a primeira palavra do restante
-- de uma string (Palavras são substeings 
-- separadas por espaços). Exemplo,

-- >> popWord "casa  de tijolos"
-- ["casa", "de tijolos"]'
-- >>

popWord :: [Char] -> ([Char], [Char])
popWord [] = ([], [])
popWord xs = (strip (takeWhile (' ' /=) (strip xs)), strip (dropWhile (' ' /=) (strip xs))) -- implemente aqui


-- Processa uma string e retorna 
-- a lista de suas palavras. OBS: 
-- palavras não devem ter espaços 
-- extemos e nem serem vazias. Exemplo,

-- >> splitStr " The   fox jumped  "
-- ["The", "fox", "jumped"]

splitStr :: [Char] -> [ [Char] ]
splitStr [] = []
splitStr xs = strip (fst (popWord (strip xs))) : splitStr (dropWhile (' ' /=) (strip xs)) -- implemente aqui