--Implementar una función que indique cuantos caracteres en mayúscula están contenidos en una frase dada, pueden usar la función isUpper 

--Por ejemplo:
--cant_mayuscula EstoEsUnaPrueba -> 4

import Data.Char (toUpper, isUpper)

cant_mayuscula  :: String -> Int
cant_mayuscula  s = foldl (\acc x -> if isUpper x then acc + 1 else acc) 0 s

main :: IO ()
main = do
    print (cant_mayuscula  "EstoEsUnaPrueba")