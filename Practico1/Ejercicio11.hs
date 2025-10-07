-- Dada una nota entre 0 y 10, devuelve una descripción como "Reprobado", "Aprobado", "Excelente", menor a 4 es Reprobado, mayor igual a 4 aprobado y 10 excelente.

clasificarNotas :: Integer -> String
clasificarNotas nota
    | nota >= 10 = "Excelente"
    | nota >= 4 = "Aprobado"
    | otherwise = "Reprobado"
    
main :: IO ()
main =  do
putStr "La nota es "
print(clasificarNotas (10))
