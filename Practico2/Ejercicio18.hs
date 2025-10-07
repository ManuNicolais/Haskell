-- Dada una lista de cadenas, convertir cada una a minúsculas, concatenarlas en una sola cadena, agrupar las letras consecutivas iguales y devolver la lista de grupos.

-- Ejemplo:
-- agruparMinusculas ["HOLA","aa","MUNDO"]
-- Resultado -> ["h","o","l","aa","m","u","n","d","o"]
-- diapositiva 74

import Data.Char (toLower)
import Data.List (group)

agruparMinusculas :: [String] -> [String]
agruparMinusculas xs = group (map toLower (concat xs))

main :: IO ()
main = do
    print (agruparMinusculas ["HOLA","aa","MUNDO","BB","cc","C"])
