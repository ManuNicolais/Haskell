--Definir una función que reciba una lista como parámetro y devuelta true si la lista tiene valores repetidos y false en caso contrario

--Ejemplo:
--duplicados [1,2,3,4] -> false
--duplicados [1,2,3,2] -> true 

--duplicados :: [a] -> Bool
--duplicados []     = False
--duplicados (x:xs) = (x `elem` xs) || duplicados xs 
-- como funciona: si el primer elemento esta en el resto de la lista, devuelve True
-- si no, sigue buscando en el resto de la lista

-- Otra forma (mejor) usando filter y recursión
eliminarRepetidos :: [Int] -> [Int] 
eliminarRepetidos [] = []  
eliminarRepetidos (x:xs) = x : eliminarRepetidos (filter (/= x) xs)  

compararListas :: [Int] -> [Int] -> Bool  
compararListas xs ys = xs /= ys 

elimDuplicados :: [Int] -> Bool  
elimDuplicados x = compararListas x (eliminarRepetidos x) 

main :: IO ()
main = do
--    print (duplicados [1,2,3,4])
--    print (duplicados [1,2,3,2])

    print(elimDuplicados [1,2,3,4]) 
    print(elimDuplicados [1,2,3,2]) 


