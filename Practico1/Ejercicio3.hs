-- escribe una función que reciba un número y devuelva su cuadrado

cuadrado :: Integer -> Integer
cuadrado x = x * x

main :: IO ()
main =  do
putStr "el cuadrado del numero ingresado es: "
print(cuadrado 10)
