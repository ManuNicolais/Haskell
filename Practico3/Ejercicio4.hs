-- Definir una función que cuente la cantidad de elementos de una lista (sin usar length).
-- usar recursión o foldr

--Resultado esperado: 4

-- Usando foldr
contarElementos :: [a] -> Int
contarElementos = foldr (\_ acc -> acc + 1) 0 
--En foldr, la función recibe primero el elemento y luego el acumulador: \elemento acumulador ->

-- otra forma usando foldl
contar :: [Int] -> Int 
contar x = foldl (\acc _ -> if True then acc + 1 else acc) 0 x 
-- como funciona: el acumulador empieza en 0 y por cada elemento de la lista (representado por _)
-- le suma 1 al acumulador
--En foldl, la función recibe primero el acumulador y luego el elemento: \acumulador elemento ->


main :: IO ()
main = do
    --print (contarElementos [1,2,3,4])
    print (contar [1,2,3,4])
