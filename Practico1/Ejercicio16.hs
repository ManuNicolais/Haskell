-- Escribir una función que reciba el precio de un producto y el porcentaje de descuento. Si el descuento es mayor a 50%, devolver un mensaje “Descuento no permitido”. Si no, calcular el precio final.

precioFinal :: Float -> Float -> String
precioFinal precio descuento
    | descuento > 50 = "Descuento no permitido"
    | otherwise = show (precio * (1 - descuento / 100))

main :: IO ()
main = do
    putStr "Precio con 20% de descuento: "
    print (precioFinal 150.0 20.0)
    putStr "Precio con 60% de descuento: "
    print (precioFinal 150.0 60.0)
