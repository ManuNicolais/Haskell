--ELEM
--Enunciado: Verificar si un número está presente en una lista.

--elem x ys - verifica si x pertenece a ys
contieneNumero :: Int -> [Int] -> Bool
contieneNumero n xs = elem n xs

main :: IO ()
main = do
    print(contieneNumero 3 [1,2,3,4])