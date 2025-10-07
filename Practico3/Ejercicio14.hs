-- Escribe una función que duplique los números pares en una lista.

-- Consulta ejemplo: duplicarPares [1, 2, 3, 4] -- Resultado: [1, 2, 2, 3, 4, 4]

--duplicarPares :: [Int] -> [Int]
--duplicarPares [] = []
--duplicarPares (x:xs)
--  | even x    = x : x : duplicarPares xs -- si es par lo duplica
--  | otherwise = x : duplicarPares xs     -- si es impar lo deja igual

-- usando mod
--duplicarPares :: [Int] -> [Int]
--duplicarPares [] = []
--duplicarPares (x:xs)
--  | x `mod` 2 == 0 = x : x : duplicarPares xs -- si es par lo duplica
--  | otherwise      = x : duplicarPares xs     -- si es impar lo deja igual

-- otra forma de hacerlo con concatMap
duplicarPares :: [Int] -> [Int] 
duplicarPares l = concatMap (\n -> if n `mod` 2 == 0 then [n,n] else [n]) l 

main :: IO ()
main = do
    print (duplicarPares [1,2,3,4])