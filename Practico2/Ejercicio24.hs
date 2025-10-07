-- De una lista de enteros, quedarte con los pares (filter), elevarlos al cuadrado (map), y luego reconstruir la lista con foldr.

-- Ejemplo:
-- cuadradosPares [1,2,3,4,5]  
-- Resultado: [4,16]

cuadradosPares :: (Integral a, Num a) => [a] -> [a]
cuadradosPares xs = foldr (:) [] (map (^2) (filter even xs))
--- filter even xs filtra los números pares de la lista
--- map (^2) eleva al cuadrado cada elemento de la lista resultante

main :: IO ()
main = do
    print (cuadradosPares [1,2,3,4,5]) 
