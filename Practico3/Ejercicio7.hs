-- Dada una lista, eliminar los elementos repetidos.

--Resultado esperado: [1,2,3,4,5]

sinRepetidos :: Eq a => [a] -> [a]
sinRepetidos []     = []
sinRepetidos (x:xs)
  | x `elem` xs = x : sinRepetidos (filter (/= x) xs)
  | otherwise   = x : sinRepetidos xs

-- Recursión sin usar filter
sinRepetidosRec :: Eq a => [a] -> [a]
sinRepetidosRec [] = []
sinRepetidosRec (x:xs)
  | x `elem` xs = sinRepetidosRec xs
  | otherwise   = x : sinRepetidosRec xs

-- Usando foldr
sinRepetidosFoldr :: Eq a => [a] -> [a]
sinRepetidosFoldr = foldr (\x acc -> if x `elem` acc then acc else x : acc) []


-- Otra forma usando filter y recursión
eliminarRepetidos :: [Int] -> [Int] 
eliminarRepetidos [] = []  
eliminarRepetidos (x:xs) = x : eliminarRepetidos (filter (/= x) xs) 

main :: IO ()
main = do
    print (sinRepetidos [1,2,3,2,1,4,5])
    print (sinRepetidosRec [1,2,3,2,1,4,5])
    print (sinRepetidosFoldr [1,2,3,2,1,4,5])
    print (eliminarRepetidos [1,2,3,2,1,4,5])
    
