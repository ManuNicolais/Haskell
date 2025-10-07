-- Transformar una lista en otra donde cada elemento aparezca dos veces.

--Resultado esperado: [1,1,2,2,3,3]

-- Usando recursión
duplicarElementos :: [a] -> [a]
duplicarElementos []     = []
duplicarElementos (x:xs) = x : x : duplicarElementos xs

-- Usando concatMap
duplicarElementosConcatMap :: [a] -> [a]
duplicarElementosConcatMap xs = concatMap (\x -> [x, x]) xs

-- Usando foldr
duplicarElementosFoldr :: [a] -> [a]
duplicarElementosFoldr = foldr (\x acc -> x : x : acc) []

-- Usando list comprehension (medio al pepe pq no me acuerdo de verlo)
duplicarElementosLC :: [a] -> [a]
duplicarElementosLC xs = [y | x <- xs, y <- [x, x]]

--otra forma (más clara)
repetirElementos :: [Int] -> [[Int]] 
repetirElementos x = map (replicate 2) x 

unirListas :: [[Int]] -> [Int] 
unirListas x = concat x 


main :: IO ()
main = do
--    print (duplicarElementos [1,2,3])
--    print (duplicarElementosConcatMap [1,2,3])
--    print (duplicarElementosFoldr [1,2,3])
--    print (duplicarElementosLC [1,2,3])
    print(unirListas(repetirElementos [1,2,3])) 


