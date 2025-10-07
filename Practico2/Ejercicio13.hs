-- Dada una lista de cadenas, eliminar las que empiecen con 'a' o 'A', y convertir el resto a mayúsculas.

-- Ejemplo:
-- procesarCadenas ["hola","adios","Auto","casa"] 
-- Resultado -> ["HOLA","CASA"]

-- diapositiva 70

import Data.Char (toUpper)

procesarCadenas :: [String] -> [String]
procesarCadenas xs = map (map toUpper) (filter (\w -> not (head w `elem` "aA")) xs)

main :: IO ()
main = do
    print (procesarCadenas ["hola","adios","Auto","casa"])