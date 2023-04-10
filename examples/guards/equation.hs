equation a b c
    | a == 0 = error "A equação não é do 2° grau."
    | delta >= 0 = (x1, x2)
    | otherwise = error "Delta negativo, portanto não há raízes reais." -- otherwise -> Para cobrir todo o domínio

    where delta = b*b - 4*a*c -- where -> Declara funções que serão usadas anteriormente
          x1 = (-b + sqrt delta) / (2*a)
          x2 = (-b - sqrt delta) / (2*a)

equation' a b c =
    let delta = b*b - 4*a*c
        x1 = (-b+sqrt delta)/(2*a)
        x2 = (-b-sqrt delta)/(2*a)

    in if a == 0 || delta < 0 then error "A equação não é de 2° grau ou não há raízes" else (x1, x2)