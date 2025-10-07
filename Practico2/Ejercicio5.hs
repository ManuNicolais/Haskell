--map
--Enunciado: Elevar al cuadrado cada número de una lista.

--  map f xs - es la lista obtenida aplicando f a cada elemento de xs
elevarAlCuadrado :: [Int] -> [Int]
elevarAlCuadrado xs = map (^2) xs

main :: IO ()
main = do
    print (elevarAlCuadrado [1..10])