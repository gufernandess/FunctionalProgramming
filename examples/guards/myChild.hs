myChild :: Int -> String -- Assinatura da função -> Para declarar os tipos de parâmetros de entrada e saída

myChild age
    | age < 0 = "error"
    | age < 1 = "baby"
    | age < 6 = "tiny"
    | age < 13 = "kid"
    | age < 17 = "teen"
    | otherwise = "adult"