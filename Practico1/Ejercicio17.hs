--Escribir una función que reciba una palabra y devuelva "Empieza con vocal" o "No empieza con vocal". 
--(funciones de Haskell que pueden usar elem y head -devuelve el primer caracter y elem compara un char con una cadena de caracteres)

empiezaConVocal :: String -> String
empiezaConVocal palabra
    | null palabra = "Palabra vacia"
    | elem (head palabra) "aeiouAEIOU" = "Empieza con vocal"
    | otherwise = "No empieza con vocal"

main :: IO ()
main = do
    print ("La palabra 'Auto' " ++ empiezaConVocal "Auto")
    print ("La palabra 'Moto' " ++ empiezaConVocal "Moto")
