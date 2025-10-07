-- Eliminar la primera aparición de un elemento en una lista, sin usar las funciones predefinidas de Haskell.
-- sin usar filter, foldr, foldl, etc.
-- usar recursión
--Resultado esperado: [1,2,4,3,5]

-- usando recursión
eliminarPrimera :: Int -> [Int] -> [Int] 
eliminarPrimera _ [] = []   
eliminarPrimera y (x:xs)  
    | x == y    = xs 
    | otherwise = x : eliminarPrimera y xs 

main :: IO ()
main = do
    print (eliminarPrimera 3 [1,2,3,4,3,5])

