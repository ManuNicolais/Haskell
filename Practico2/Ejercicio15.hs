-- Crear una lista infinita que repita la secuencia [1,2,3], eliminar los números menores que 2, y tomar los primeros 8 elementos resultantes.

-- Ejemplo:
-- listaInfinitaFiltrada -> [2,3,2,3,2,3,2,3]
-- diapositiva 72

listaInfinitaFiltrada :: [Int]
listaInfinitaFiltrada = take 8 (filter (>= 2) (cycle [1,2,3]))

main :: IO ()
main = do
    print listaInfinitaFiltrada
