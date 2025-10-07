-- Dada una lista de enteros, eliminar los primeros elementos mientras sean impares, tomar el resto hasta que aparezca un número mayor que 10, y agrupar los consecutivos iguales.

-- Ejemplo:
-- procesarLista [1,3,5,4,4,6,6,12,6]
-- Resultado -> [[4,4],[6,6]]

import Data.List (group)

procesarLista :: [Int] -> [[Int]]
procesarLista xs =
    group (takeWhile (<= 10) (dropWhile odd xs))

main :: IO ()
main = do
    print (procesarLista [1,3,5,4,4,6,6,12,6])
