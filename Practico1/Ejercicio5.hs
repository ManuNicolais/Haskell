-- Escribe una función que calcule el valor absoluto de un número.

valorabs :: Integer -> Integer
valorabs x = abs(x)

main :: IO ()
main =  do
putStr "el valor absoluto es "
print(valorabs (-3))
