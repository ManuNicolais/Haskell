-- Definir la función mitad tal que mitad x es la mitad de x. 

--Por ejemplo: 
--mitad 6 -> 3.0 
--mitad 5 -> 2.5

mitad x = x / 2

main :: IO ()
main = do
    print(mitad 6)
    print(mitad 5)