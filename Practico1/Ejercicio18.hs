-- Escribir una función que reciba un nombre y diga "Nombre corto" si tiene menos de 5 letras o "Nombre largo" si tiene 5 o más.
-- (funcion de Haskell que pueden usar: length)
-- funcion length devuelve la longitud de una lista o cadena de caracteres

largoNombre :: String -> String
largoNombre nombre
    | length nombre < 5 = "Nombre corto"
    | otherwise = "Nombre largo"

main :: IO ()
main = do
    print ("'Juan' es un " ++ largoNombre "Juan")
    print ("'Micaela' es un " ++ largoNombre "Micaela")
