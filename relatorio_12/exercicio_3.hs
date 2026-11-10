-- https://onecompiler.com/haskell/458s2gf2y

data Esboco = Esboco
  { titulo :: String
  , tecnica :: String
  , horas :: Int
  }

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente []    = "O caderno esta vazio."
esbocoMaisRecente (e:_) = titulo e ++ " (" ++ tecnica e ++ ")"

contarEsbocos :: [Esboco] -> Int
contarEsbocos []     = 0
contarEsbocos (_:xs) = 1 + contarEsbocos xs

horasDesenhando :: [Esboco] -> Int
horasDesenhando []     = 0
horasDesenhando (e:xs) = horas e + horasDesenhando xs

main :: IO ()
main = do
  let e1 = Esboco "Castelo Sombrio" "Nanquim" 5
  let e2 = Esboco "Ruinas" "Grafite" 3
  let e3 = Esboco "Criatura da Floresta" "Carvao" 4
  
  let caderno1 = [e1, e2, e3]
  
  putStrLn "--- Caderno Original ---"
  putStrLn ("Mais recente: " ++ esbocoMaisRecente caderno1)
  putStrLn ("Quantidade de esbocos: " ++ show (contarEsbocos caderno1))
  putStrLn ("Total de horas: " ++ show (horasDesenhando caderno1))
  
  putStrLn "\n--- Teste Caderno Vazio ---"
  putStrLn (esbocoMaisRecente [])

  let e4 = Esboco "Dragao Negro" "Aquarela" 6
  let caderno2 = e4 : caderno1
  
  putStrLn "\n--- Imutabilidade (Comparando Cadernos) ---"
  putStrLn ("Caderno 1 (Original) -> Recente: " ++ esbocoMaisRecente caderno1 ++ " | Quantidade: " ++ show (contarEsbocos caderno1))
  putStrLn ("Caderno 2 (Novo)     -> Recente: " ++ esbocoMaisRecente caderno2 ++ " | Quantidade: " ++ show (contarEsbocos caderno2))
