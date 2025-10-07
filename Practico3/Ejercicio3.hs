-- Definir una función que tome dos listas y las mezcle intercalando sus elementos.

-- Ejemplo
--main = print (intercalar [1,3,5] [2,4,6,8,10])

--Resultado esperado: [1,2,3,4,5,6,8,10]

-- Forma recursiva
--intercalar :: [a] -> [a] -> [a]
--intercalar [] ys         = ys --si una lista esta vacia 
--intercalar xs []         = xs
--intercalar (x:xs) (y:ys) = x : y : intercalar xs ys 

-- otra forma (ordenando la lista resultante)
import Data.List 
unirListas :: [[Int]] -> [Int]  
unirListas x = concat x  -- concatena las listas que estan dentro de otra lista

ordenar :: [Int] -> [Int] 
ordenar x = sort x  -- ordena la lista

intercalar :: [Int] -> [Int] -> [Int] 
intercalar x y = ordenar(unirListas [x,y]) 

main :: IO ()
main = do
    print( intercalar [1,3,5] [2,4,6,8,10])
--    print( intercalar [1,3,5] [])
--    print( intercalar [] [2,4,6,8,10])
--    print( intercalar [] [])
