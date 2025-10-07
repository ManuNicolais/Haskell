-- Crea una función que sume tres números dados. 

sumaTres :: Integer -> Integer -> Integer -> Integer
sumaTres x y z = x + y + z

main :: IO ()
main =  do
  putStr "La suma de 10, 20 y 5 es: "
  print(sumaTres 10 20 5)
