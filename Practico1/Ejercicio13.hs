-- Escribir una función que reciba un número entero y devuelva un texto que indique si es “Positivo”, “Negativo” o “Cero”.

clasificacion :: Integer -> String
clasificacion n
    | n > 0 = "Positivo"
    | n < 0 = "Negativo"
    | otherwise = "Cero"
    
main :: IO ()
main =  do
putStr "el numero es "
print(clasificacion (-100))
