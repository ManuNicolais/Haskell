-- Escribe una función que tome dos valores y devuelva una tupla con los valores intercambiados.

intercambiar :: (a, b) -> (b, a)
intercambiar (x, y) = (y, x)

main :: IO ()
main =  do
  putStr "La tupla intercambiada es: "
  print(intercambiar (25, "Hola"))
