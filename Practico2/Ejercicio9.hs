--takeWhile
--Enunciado: Tomar elementos de la lista mientras sean menores que 5.

--takeWhile p xs - toma los elementos iniciales de xs que cumplen p
--takeWhile (<5) [1,2,3,6,4,5,7] --> [1,2,3]

tomarMientrasMenorQue5 :: [Int] -> [Int]
tomarMientrasMenorQue5 xs = takeWhile (<5) xs

main :: IO ()
main = do
    print (tomarMientrasMenorQue5 [1,2,3,6,4,5,7])