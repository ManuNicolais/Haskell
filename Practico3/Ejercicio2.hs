-- Definir una función que devuelva el último elemento de una lista.

-- Ejemplo
--main = print (miLast [10,20,30,40])

--Resultado esperado: 40

-- Usando la función last de Haskell
miLast ::[a] -> a
miLast xs = last xs

-- Otra forma de hacerlo (recursivamente)
testUltimo :: [Int] -> [Int]
testUltimo [x] = [x] 
testUltimo (x:xs) =  testUltimo xs 

--funcion que recorra lista y compruebe si es el ultimo elemento sin usar last
buscarUltimo ::[a] -> a
buscarUltimo [] = error "buscarUltimo: lista vacia"
buscarUltimo [x]    = x
buscarUltimo (_:xs) = buscarUltimo xs


main :: IO ()
main = do
    print(miLast [10,20,30,40])
    print(testUltimo [10,20,30,40]) 
    print(buscarUltimo [10,20,30,40,3])


