fibonacci number |
    number == 1 = 1 |
    number == 2 = 1 |
    number >= 3 =  fibonacci (number - 2) + fibonacci (number - 1) |
    otherwise = 0

fibonacciSeries quantity = take quantity [fibonacci number | number <- [1..]]