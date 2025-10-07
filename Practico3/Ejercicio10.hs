-- Redefinir la funcion Init de tal forma que Init´ xs es la lista xs sin el ultimo element

-- Ejemplo: Init´ [1,2,3,4] -> [1,2,3]
-- init es una funcion predefinida de Haskell que devuelve todos los elementos de una lista excepto el último.

miInit :: [a] -> [a]
miInit []     = error "lista vacía"
miInit [_]    = []
miInit (x:xs) = x : miInit xs

-- otra forma de hacerlo
init' :: [a] -> [a] 
init' [] = error "No se puede" 
init' [x] = [] 
init' (x:xs) = x : init' xs 

main :: IO ()
main = do
    print (miInit [1,2,3,4])
    print (miInit "Hola")
    --print (miInit []) -- da error

    print (init' [1,2,3,4])
    print (init' "Hola")