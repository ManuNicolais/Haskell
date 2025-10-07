--Función que cuenta cuantas veces se repite el número 7 en la lista

--Por ejemplo:
--countSevens [1,7,2,7,7] -> 3

countSevens  :: Int -> [Int] -> Int
countSevens  elem = foldl (\acc x -> if x == elem then acc + 1 else acc) 0

main :: IO ()
main = do
    print (countSevens  7 [7,7,4,2,7])