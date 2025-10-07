-- Escribir una función que reciba dos palabras y diga "Son iguales" o "Son diferentes".

compararPalabras :: String -> String -> String
compararPalabras p1 p2 = if p1 == p2
    then "Son iguales"
    else "Son diferentes"

main :: IO ()
main = do
    print ("'Casa' y 'Casa': " ++ compararPalabras "Casa" "Casa")
    print ("'Casa' y 'Auto': " ++ compararPalabras "Casa" "Auto")
