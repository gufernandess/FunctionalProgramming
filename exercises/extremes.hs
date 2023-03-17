extremes number list = take number list ++ reverse (take number (reverse list))

-- Usamos o take para pegar os extremos do começo da lista e concatenamos um lista invertida, onde usamos o take para pegar os extremos do final da lista