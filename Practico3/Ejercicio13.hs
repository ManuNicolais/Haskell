--Escribe una función que tome dos listas y devuelva una lista en la que los elementos de las listas originales estén alternados.

-- Consulta ejemplo: alternarListas [1, 2, 3] [4, 5, 6] -- Resultado: [1, 4, 2, 5, 3, 6]

alternarListas :: [a] -> [a] -> [a]
alternarListas [] ys         = ys
alternarListas xs []         = xs
alternarListas (x:xs) (y:ys) = x : y : alternarListas xs ys

main :: IO ()
main = do
    print (alternarListas [1,2,3] [4,5,6])
    print (alternarListas [1,2,3] [])
    print (alternarListas [] [4,5,6])