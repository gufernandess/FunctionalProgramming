5 * -3 -- Wrong

5 * (-3) -- Correct -> Parentheses are required in negative numbers

5 + 4.0 -- Turns 9.0, because 4.0 is a floating point number and GHCI makes the inference type

succ 8 -- 9, because succ is the successor function

min 9 10 -- 9, because min is the minimum function

max 100 101 -- 101, because max is the maximum function

div 92 10 != 92/10 -- The first one is 9, because div is the division function, and the second one is 9.2, because / is the floating point division

[x | mod x 2 /= 0, x <- [1..10]] -- [1,3,5,7,9], because x is the list [1..10], and mod x 2 /= 0 is the condition

newton x y = (x^2, 2*x*y, y^2) -- newton is a function that returns a tuple with the values of x^2, 2*x*y and y^2