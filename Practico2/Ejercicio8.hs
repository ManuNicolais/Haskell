--dropWhile
--Enunciado: Eliminar los elementos iniciales mientras sean menores que 5.

--dropWhile p xs - elimina los elementos iniciales de xs que cumplen p
--dropWhile (<5) [1,2,3,6,4,5,7] --> [6,4,5,7]

eliminarMientrasMenorQue3 :: [Int] -> [Int]
eliminarMientrasMenorQue3 xs = dropWhile (<5) xs

main :: IO ()
main = do
    print (eliminarMientrasMenorQue3 [1,2,3,6,4,5,7])
