--FILTER
--Enunciado: Filtrar los números pares de una lista.
--filter p xs - es la lista de elementos de la lista xs que verifica el predicado p

numerosPares :: [Int] -> [Int]
numerosPares xs = filter even xs

-- Filtrar los números menores a un valor dado
numerosMenoresA :: Int -> [Int] -> [Int]
numerosMenoresA n xs = filter (< n) xs


main :: IO ()
main = do
    print (numerosPares [1..10])
    print (numerosMenoresA 5 [1..10])