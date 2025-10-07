-- Escribe una función que reciba tres números y devuelva su promedio. 

promedio :: Float -> Float -> Float -> Float
promedio x y z = (x + y + z) / 3

main :: IO ()
main =  do
putStr "El promedio es "
print(promedio 3 1 4)
