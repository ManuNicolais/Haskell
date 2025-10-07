-- Usa filter para quedarte solo con los positivos y luego cuenta cuántos hay con foldl.

-- Ejemplo:
-- contarPositivos [-3, -1, 0, 2, 5, 7]  
-- Resultado: 3

contarPositivos :: (Num b, Ord a, Num a) => [a] -> b
contarPositivos xs = foldl (\acc _ -> acc + 1) 0 (filter (>0) xs)

main :: IO ()
main = do
    print (contarPositivos [-3, -1, 0, 2, 5, 7]) 
