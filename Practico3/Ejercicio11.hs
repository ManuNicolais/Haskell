-- Escribe una función contarVocales que tome una cadena de texto y devuelva el número de vocales (a, e, i, o, u) que contiene.

-- Ejemplo de uso:
-- contarVocales "Hola Mundo"
-- Resultado: 4

esVocal :: Char -> Bool
esVocal c = c `elem` "aeiouAEIOUáéíóúÁÉÍÓÚ"

contarVocales :: String -> Int
contarVocales = foldr (\c acc -> if esVocal c then acc+1 else acc) 0
-- Ejemplo: contarVocales "Hola Mundo" == 4

contar :: String -> Int 
contar x = foldl (\acc c -> if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' || c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U') then acc + 1 else acc) 0 x 

main :: IO ()
main = do
    print (contarVocales "Hola Mundo")  
    print (contarVocales "Haskell")     
    print (contarVocales "Programación") 

    print (contar "Hola Mundo")  
    print (contar "Haskell")
