--concatMap
--Dada una lista de cadenas, duplicar cada carácter y unir todos los resultados en una sola cadena.
-- concatMap f xs - aplica la función f a los elementos de xs y concatena el resultado


duplicarCaracteres :: [String] -> String
duplicarCaracteres xs = concatMap (concatMap (\c -> [c, c])) xs

--concatMap (replicate 2) “abc” --> “aabbcc”
duplicarCaracteres2 :: [String] -> String
duplicarCaracteres2 xs = concatMap (concatMap (replicate 2)) xs


main :: IO ()
main = do
        putStrLn (duplicarCaracteres ["hola","adios"])
        putStrLn (duplicarCaracteres2 ["hola","adios"])


