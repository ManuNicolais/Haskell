--replicate
--Enunciado: Crear una lista que contenga un valor repetido n veces.

--replicate n x es la lista formado por n veces el elemento x
--replicate 5 2 --> [2,2,2,2,2]

repetirNVeces :: Int -> a -> [a]
repetirNVeces n x = replicate n x

main :: IO ()
main = do
    print (repetirNVeces 10 'A')