--group
--Enunciado: Agrupar elementos consecutivos iguales.

--group xs - agrupa los elementos consecutivos iguales de xs en sublistas
--group "aaabbbcca" --> ["aaa","bbb","cc","a"]
import Data.List (group)
agruparConsecutivos :: Eq a => [a] -> [[a]]
agruparConsecutivos xs = group xs

main :: IO ()
main = do
    print (agruparConsecutivos "ppeepeppeeeppp")

