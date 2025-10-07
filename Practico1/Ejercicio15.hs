--Escribir una función que reciba un número del 1 al 7 y devuelva el nombre del día. Para cualquier otro número, devolver "Día inválido".

nombreDia :: Int -> String
nombreDia 1 = "Lunes"
nombreDia 2 = "Martes"
nombreDia 3 = "Miercoles"
nombreDia 4 = "Jueves"
nombreDia 5 = "Viernes"
nombreDia 6 = "Sabado"
nombreDia 7 = "Domingo"
nombreDia _ = "Dia invalido"

main :: IO ()
main = do
  putStr "El dia 3 es: "
  print(nombreDia 3)
  putStr "El dia 9 es: "
  print(nombreDia 9)
