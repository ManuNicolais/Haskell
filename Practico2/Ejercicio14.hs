-- Dada una lista de caracteres, repetir cada uno 3 veces, y quedarse solo con los primeros 10 caracteres resultantes.

-- Ejemplo:
-- expandirTruncar "hola" -> "hhhoooolllaaa"

expandirTruncar :: String -> String
expandirTruncar xs = take 10 (concatMap (replicate 3) xs) 
-- take 10 para truncar a los primeros 10 caracteres
-- concatMap (replicate 3) para repetir cada caracter 3 veces y concatenar el resultado

main :: IO ()
main = do
    print (expandirTruncar "hola")
