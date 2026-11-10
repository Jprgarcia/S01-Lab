-- https://onecompiler.com/haskell/458s24gwu

pesoMaximo :: Double
pesoMaximo = 15.0

data Encomenda = Encomenda
  { destinatario :: String
  , peso :: Double
  , frete :: Double
  }

descrever :: Encomenda -> String
descrever enc = "Para: " ++ destinatario enc ++ " | Peso: " ++ show (peso enc) ++ "kg | Frete: R$" ++ show (frete enc)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura lista = filter (\e -> peso e <= pesoMaximo) lista

totalDeFretes :: [Encomenda] -> Double
totalDeFretes lista = sum (map frete lista)

main :: IO ()
main = do
  let enc1 = Encomenda "Osono" 5.0 10.0
  let enc2 = Encomenda "Ursula" 20.0 50.0
  let enc3 = Encomenda "Tombo" 12.0 25.0
  let enc4 = Encomenda "Madame" 8.0 15.0
  
  let entregas = [enc1, enc2, enc3, enc4]
  
  putStrLn "--- Todas as Encomendas ---"
  mapM_ putStrLn (map descrever entregas)
  
  let permitidas = cabemNaVassoura entregas
  
  putStrLn "\n--- Cabem na Vassoura ---"
  mapM_ putStrLn (map descrever permitidas)
  
  putStrLn ("\nTotal arrecadado (fretes possiveis): R$" ++ show (totalDeFretes permitidas))
