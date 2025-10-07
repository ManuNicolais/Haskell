-- Crea una función que reciba dos números y devuelva el mayor.

mayor :: Integer -> Integer -> Integer
mayor x y = if x > y
    then x
    else y

main :: IO ()
main =  do
putStr "el mayor de los numeros ingresados es: "
print(mayor 30 25)
