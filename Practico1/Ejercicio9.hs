-- Crea una función que calcule el área de un triángulo dada su base y altura.

areaTriangulo :: Float -> Float -> Float
areaTriangulo base altura = (base * altura) / 2

main :: IO ()
main =  do
  putStr "El area del triangulo es: "
  print(areaTriangulo 10.5 2.0)
