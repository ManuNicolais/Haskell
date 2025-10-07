-- Definir una función que tome dos listas xs ys  y verifica si las dos listas xs e ys son iguales, devuelve True si son iguales sino False.


listasIguales :: Eq a => [a] -> [a] -> Bool
listasIguales [] []         = True
listasIguales (x:xs) (y:ys) = (x == y) && listasIguales xs ys
listasIguales _ _           = False

-- Usando  (==)
listasIgualesEq :: [Int] -> [Int] -> Bool  
listasIgualesEq xs ys = xs == ys


main :: IO ()
main = do
--    print (listasIguales [1,2,3] [1,2,3])
--    print (listasIguales [1,2,3] [1,2,4])
--    print (listasIguales [1,2,3] [1,2])
--    print (listasIguales [] [])

    print (listasIgualesEq [1,2,3] [1,2,3])
    print (listasIgualesEq [1,2,3] [1,2,4])

