-- Redefinir la función last tal que last1 l es el último elemento de la lista l, NO USAR LA FUNCION LAST. 

--Por ejemplo: 
--last1 [1,2,3] -> 3

last1 :: [Int] -> Int
last1 [x] = x
last1 (x:xs) =  last1 xs 

main :: IO ()
main = do
    print(last1 [1,2,3]) 