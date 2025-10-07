-- Obtener todos los prefijos de una cadena y quedarte solo con los que tengan una longitud par.

-- Ejemplo:
-- prefijosPares "abcd" -> ["","ab","abcd"]

prefijosPares :: String -> [String]
prefijosPares xs = filter (\p -> even (length p)) (inits xs) -- inits es una función auxiliar que genera todos los prefijos de una lista
  where
    inits []     = [""] -- caso base: el prefijo de la lista vacía es la lista vacía
    inits (y:ys) = [""] ++ map (y:) (inits ys) -- prefijos de la lista con el primer elemento y los prefijos del resto

main :: IO ()
main = do
    print (prefijosPares "abcd")

