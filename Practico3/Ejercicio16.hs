-- Escribe una función que tome los primeros n elementos de una lista. NO USAR LAS FUNCIONES PREDEFINIDAS.

-- Consulta ejemplo: tomar 3 [1, 2, 3, 4, 5] -- Resultado: [1, 2, 3]

tomar :: Int -> [a] -> [a]
tomar 0 _      = []
tomar _ []     = []
tomar n (x:xs) = x : tomar (n-1) xs
-- Ejemplo: tomar 3 [1,2,3,4,5] == [1,2,3]

-- Usando foldl y acumulador
tomarFoldl :: Int -> [a] -> [a]
tomarFoldl n xs = reverse (fst (foldl (\(acc, i) x -> if i < n then (x:acc, i+1) else (acc, i)) ([], 0) xs))
--como funciona: el acumulador es una tupla (lista acumulada, contador)
--si el contador es menor que n, agrega el elemento actual a la lista acumulada y aumenta el contador
--si el contador es mayor o igual que n, no hace nada y sigue con el siguiente


main :: IO ()
main = do
    print (tomar 3 [1,2,3,4,5])
    print (tomarFoldl 3 [1,2,3,4,5])
