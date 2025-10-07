-- Dada una lista de enteros, eleva cada número al cuadrado (con map) y luego calcula la suma usando foldl.

--Ejemplo:
--sumaCuadrados [1,2,3,4]  
-- Resultado: 30

sumaCuadrados :: Num a => [a] -> a
sumaCuadrados xs = foldl (+) 0 (map (^2) xs)

main :: IO ()
main = do
    print (sumaCuadrados [1,2,3,4]) 
