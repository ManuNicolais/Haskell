-- Escribe una función que devuelva 0 si alguno de los dos números es 0; si no, devuelve su producto.

productoOCero :: Integer -> Integer -> Integer
productoOCero x y
  | x == 0 || y == 0 = 0
  | otherwise        = x * y

main :: IO ()
main =  do
  putStr "El producto entre 5 y 0 es: "
  print(productoOCero 5 0)
  putStr "El producto entre 5 y 3 es: "
  print(productoOCero 5 3)
