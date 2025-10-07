-- Crear una función que reciba la edad de una persona y devuelva:
--"Niño" si tiene menos de 13 años, "Adolescente" si tiene entre 13 y 17, "Adulto" si tiene 18 o más

clasificacion :: Integer -> String
clasificacion edad
    | edad < 13 = "Niño"
    | edad <= 17 = "Adolescente"
    | otherwise = "Adulto"

main :: IO ()
main = do
    putStr "La persona es: "
    print (clasificacion 15)
