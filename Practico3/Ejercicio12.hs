-- Escribe una función reemplazarVocales que tome una cadena de texto y reemplace todas las vocales con un símbolo dado.

-- Ejemplo de uso:
-- reemplazarVocales '*' "Hola Mundo"
-- Resultado: "H*l* M*nd*"

reemplazarVocales :: Char -> String -> String
reemplazarVocales s = map (\c -> if esVocal c then s else c)

esVocal :: Char -> Bool
esVocal c = c `elem` "aeiouAEIOUáéíóúÁÉÍÓÚ"

-- otra forma de hacerlo
reemplazarVocales2 :: Char -> String -> String  
reemplazarVocales2 c a = map (\x -> if (x == 'a' || x == 'e' || x == 'i' || x == 'o' || x == 'u' || x == 'A' || x == 'E' || x == 'I' || x == 'O' || x == 'U') then c else x) a 


main :: IO ()
main = do
    print (reemplazarVocales '*' "Hola Mundo")  
    print (reemplazarVocales '#' "Haskell")     
    print (reemplazarVocales '1' "Programacion")

    print (reemplazarVocales2 '*' "Hola Mundo")  
    print (reemplazarVocales2 '#' "Haskell")

