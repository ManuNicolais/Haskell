-- Escribe una función que determine si un número es par.
par :: Int -> String
par x = if x `mod` 2 == 0  -- funcion mod devuelve el resto de la division
    then "es Par"
    else "es Impar"

main :: IO ()
main =  do
    print("el numeroes par? " ++ show(par 3))
