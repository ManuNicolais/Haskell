-- Filtra los números pares de una lista (con filter) y calcula el producto usando foldr.

--Ejemplo:
--productoPares [1,2,3,4,5,6]  
-- Resultado: 48

productoPares :: (Integral a, Num a) => [a] -> a
productoPares xs = foldr (*) 1 (filter even xs)
--- filter even xs filtra los números pares de la lista
--- foldr (*) 1 calcula el producto de los elementos de la lista resultante, comenzando con un acumulador inicial de 1

main :: IO ()
main = do
    print (productoPares [1,2,3,4,5,6]) 
