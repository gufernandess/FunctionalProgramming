5 * -3 -- Wrong

5 * (-3) -- Correct -> Parentheses are required in negative numbers

5 + 4.0 -- Turns 9.0, because 4.0 is a floating point number and GHCI makes the inference type

succ 8 -- 9, because succ is the successor function

min 9 10 -- 9, because min is the minimum function

max 100 101 -- 101, because max is the maximum function

div 92 10 != 92/10 -- The first one is 9, because div is the division function, and the second one is 9.2, because / is the floating point division