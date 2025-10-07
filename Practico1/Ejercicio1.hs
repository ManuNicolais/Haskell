-- Escribe una función que tome dos números y devuelva su suma.
suma :: Integer -> Integer -> Integer
suma x y = x + y

main :: IO ()
main =  do
    putStr "El resultado es: "
    print(suma 10 25)
