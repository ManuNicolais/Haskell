--Dada una lista de números, eliminar los que sean menores que 3, agrupar los consecutivos iguales y mostrar solo los grupos que tengan más de un elemento.

-- Ejemplo:
-- gruposMayoresDe1 [1,3,3,4,4,4,2,5,5,1] 
-- Resultado -> [[3,3],[4,4,4],[5,5]]

import Data.List (group)
gruposMayoresDe1 :: [Int] -> [[Int]]
gruposMayoresDe1 xs =
    filter (\g -> length g > 1)   -- nos quedamos solo con los grupos de más de un elemento
    (group                        -- agrupamos consecutivos iguales
    (filter (>=3) xs))            -- filtramos los menores que 3

main :: IO ()
main = do
    print (gruposMayoresDe1 [1,3,3,4,4,4,2,5,5,1])
