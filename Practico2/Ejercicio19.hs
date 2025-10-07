-- Crea una función que, dado un número n, filtre los elementos mayores que n de una lista usando foldr.

-- Ejemplo de uso:
-- mayoresQue 5 [2,7,1,8,3,10]  -- Resultado: [7,8,10]

-- foldr - funcion que toma 3 argumentos: una funcion binaria, un valor inicial (acumulador) y una lista.
-- diapositiva 98

mayoresQue :: Ord a => a -> [a] -> [a]
mayoresQue n = foldr (\x acc -> if x > n then x : acc else acc) [] -- foldr recorre la lista y construye una nueva lista con los elementos que son mayores que n.

main :: IO ()
main = do
    print (mayoresQue 5 [2,7,1,8,3,10])
