-- https://onecompiler.com/haskell/458rzutak

data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) = nome ++ " - R$ " ++ show preco

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Equilibrado"
  | otherwise        = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido comLeite (Cafe _ preco _) =
  if comLeite
    then preco + 2.0
    else preco

main :: IO ()
main = do
  let c1 = Cafe "Expresso" 5.0 9
  let c2 = Cafe "Coado da Casa" 3.0 6
  let c3 = Cafe "Descafeinado" 4.0 2
  
  putStrLn "--- Cafes do Dia ---"
  putStrLn (descrever c1 ++ " (" ++ forca c1 ++ ")")
  putStrLn (descrever c2 ++ " (" ++ forca c2 ++ ")")
  putStrLn (descrever c3 ++ " (" ++ forca c3 ++ ")")
  
  putStrLn "\n--- Precos (Expresso) ---"
  putStrLn "Com leite:"
  print (precoDoPedido True c1)
  putStrLn "Sem leite:"
  print (precoDoPedido False c1)
