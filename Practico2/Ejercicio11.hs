--inits
--Enunciado: Generar todas las sublistas iniciales de una lista.

--inits xs - es la lista de todas las sublistas iniciales de xs
-- sublistasIniciales [1,2,3] -> [[],[1],[1,2],[1,2,3]]
import Data.List (inits)
sublistasIniciales :: [a] -> [[a]]
sublistasIniciales xs = inits xs

main :: IO ()
main = do
    print (sublistasIniciales "abcde")
