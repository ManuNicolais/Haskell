-- Crea una función que indique si un número es positivo, negativo o cero, devolviendo una cadena con la descripción.

verificarSigno :: (Ord a, Num a) => a -> String
verificarSigno n
  | n > 0     = "Es positivo"
  | n < 0     = "Es negativo"
  | otherwise = "Es cero"

main :: IO ()
main = do
  print("Probando con 10: " ++ verificarSigno 10)
  print("Probando con -5: " ++ verificarSigno (-5))
  print("Probando con 0: " ++ verificarSigno 0)
