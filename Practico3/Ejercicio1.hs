-- Definir una función que elimine elementos repetidos de una lista.

-- Ejemplo
--main = print (eliminarDuplicados [1,2,3,2,1,4])

--Resultado esperado: [3,2,1,4]
--(se espera poder recorrer desde el final hasta el inicio eliminando los duplicados)

--- ALTERNATIVA 1: Usando foldr y reverse
eliminarDuplicados :: [Int]-> [Int]
eliminarDuplicados = foldr (\x acc -> if x `elem` acc then acc else x:acc) [] 

-- Alternativa usando funciones de Haskell
-- eliminarDuplicados xs = nub (reverse xs) -- no mantiene el orden original

--  import Data.List (group, nub) 

--  eliminarDuplicados :: [Int] -> [Int] 
--  eliminarDuplicados xs = reverse (nub (reverse xs)) 


main :: IO ()
main = do
    print (eliminarDuplicados [1,2,3,2,1,4])