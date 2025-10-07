-- Escribe una función que devuelva el último elemento de una lista NO USAR LAS FUNCIONES PREDEFINIDAS.
-- no usar last, head, tail, init, etc.

-- Consulta ejemplo: ultimo [1, 2, 3, 4] -- Resultado: 4

ultimo :: [a] -> a
ultimo []     = error "lista vacía"
ultimo [x]    = x
ultimo (_:xs) = ultimo xs
--como funciona: si la lista es vacia da error, si tiene un solo elemento devuelve ese elemento
--si tiene mas de un elemento, ignora el primero y sigue buscando en el resto de la lista


main :: IO ()
main = do
    print (ultimo [1,2,3,4])
    print (ultimo "Hola")
    --print (ultimo []) -- da error