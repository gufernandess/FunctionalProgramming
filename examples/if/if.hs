doubleSmallNumber number = if number < 100
                            then number * 2
                            else number

-- Perceba que o else é obrigatório, e que o then é opcional.

doubleSmallNumber' number = (if number < 100 then number * 2 else number) + 1

-- O apóstrofo no final do nome da função é uma convenção para indicar que a função é uma variação de outra.