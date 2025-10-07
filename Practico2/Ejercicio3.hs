--DROP
--Enunciado: Eliminar los primeros n elementos de una lista.

--drop n xs - borra los n primeros elementos de xs
eliminarPrimeros :: Int -> [a] -> [a]
eliminarPrimeros n xs = drop n xs

main :: IO ()
main = do
    print(eliminarPrimeros 3 [1..10])