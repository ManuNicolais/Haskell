--repeat
--Enunciado: Crear una lista infinita repitiendo un valor.

--repeat x - repite el valor x
--  take 5 (repeat 2) --> [2,2,2,2,2]

repetirValor :: a -> [a]
repetirValor x = repeat x

main :: IO ()
main = do
    print (take 10 (repetirValor 7))