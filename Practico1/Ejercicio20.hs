-- Escribir una función que reciba un caracter y diga "Es mayúscula" o "No es mayúscula".
-- (Funciones de Haskell que pueden usar: isUpper - isLower)
-- isUpper devuelve True si el caracter es mayuscula y False en caso contrario
-- isLower devuelve True si el caracter es minuscula y False en caso contrario

import Data.Char (isUpper)

verificarMayuscula :: Char -> String
verificarMayuscula c = if isUpper c
    then "Es mayuscula"
    else "No es mayuscula"

main :: IO ()
main = do
    print ("El caracter 'A' " ++ verificarMayuscula 'A')
    print ("El caracter 'a' " ++ verificarMayuscula 'a')
