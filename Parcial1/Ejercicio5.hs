--Palíndromos Escribe una función que verifique si una cadena es un palíndromo (se lee igual de izquierda a derecha y de derecha a izquierda).

--Ejemplo: 
--isPalindrome oso -> TRUE
--isPalindrome casa -> FALSE

isPalindrome :: String -> String
isPalindrome x = reverse x 

main :: IO ()   
main = do
    print (isPalindrome "oso")
    print (isPalindrome "casa")