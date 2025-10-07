-- Escribe una función que cuente cuántas veces aparece un elemento en una lista usando foldl.

-- Ejemplo de uso:
-- contar 'a' "banana"  -- Resultado: 3
-- foldl - funcion que toma 3 argumentos: una funcion binaria, un valor inicial (acumulador) y una lista.
--diapositiva 101
contar :: Eq a => a -> [a] -> Int
contar elem = foldl (\acc x -> if x == elem then acc + 1 else acc) 0 

main :: IO ()
main = do
    print (contar 'a' "banana")
