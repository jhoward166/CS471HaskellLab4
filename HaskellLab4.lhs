> module HaskellLab4
>	where

> hLen :: (Num u, Eq t) => ([t]->u) -> [t] -> u
> hLen = (\f x -> if x == [] then 0 else 1 + (f ( tail x)))
> myLength ls = if ls == [] then 0 else 1 + myLength (tail ls)

Part B
Problem 1

1) hLen is not recursive. It never calls an instance of itself within it's definition. Also the definition for the function states "Type (Do NOT cut and paste) the following non-recursive definition in a Haskell file and load into hugs/ghci:" and I'm hoping you wouldn't lie to me.

2) hLen is a higher order function. Higher order functions take in a function as an argument, or output a function as their answer. hLen takes in a labda function as it's argument therefore its a HOF.

3a) 12
3b)	6

hLen has nothing to do specifically with the head or the sum functions. It runs the function on the list as if the first member was not in the list, then adds one to the answer.

Problem 2
	hLen myLength [4,5,6] = 3

Problem 3
	hLen myLength and myLength do the same thing, because myLength returns the length of the list, so if you drop an element from the list, then add 1 to the answer it should return the same as it normally would.

Part C

> factorial :: Integral a => a -> a
> factorial n = if n ==0 then 1 else n * (factorial (n - 1))

Problem 1
The type of hFact is:
hFact :: (Integer -> Integer) -> Integer -> Integer
A funtion that takes in an a function that takes in and returns an integer, that returns a function that takes in and returns an integer. 

> hFact = (\f x -> if x== 0 then 1 else x * (f ( x-1)))

Problem 2
hFact (^2) 4 = 36

Problem 3
hFact factorial 5 = 120
It does return the same thing as factorial 5.

Part D

> factorial' = hFact factorial'

Problem 1
factorial' has a type of
Interger->Integer
which means its a function that takes in and returns an integer

Problem 2

> fix f = f (fix f )

2a) fix takes in a function and returns the return value of that function
2b) The difference is that the first one:
fix f = f (fix f)
plugs the function returned by fix(f) into f
the second one:
fix f = f fix f
plugs the function fix into f, and then tries to pass f as an argument to the return value

Problem 3
a)720
b)720
c)720
d)720
