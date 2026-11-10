-- https://onecompiler.com/haskell/458s2qw6d

data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

data Atendimento = Atendimento
  { cliente :: String
  , servico :: String
  , valor :: Double
  , etapa :: Etapa
  }

descrever :: Atendimento -> String
descrever a = cliente a ++ " - " ++ servico a ++ " [" ++ show (etapa a) ++ "]"

concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado lista = sum (map valor (filter (\a -> etapa a == Concluido) lista))

main :: IO ()
main = do
  let a1 = Atendimento "Deus Rabanete" "Banho Termal" 500.0 NaFila
  let a2 = Atendimento "Espirito do Rio" "Banho de Ervas" 2000.0 NoBanho
  let a3 = Atendimento "Sem Rosto" "Banquete e Banho" 5000.0 NaFila
  
  let filaOriginal = [a1, a2, a3]
  
  let a1Pronto = concluir a1
  let a2Pronto = concluir a2

  let filaAtualizada = [a1Pronto, a2Pronto, a3]
  
  putStrLn "--- Fila Original ---"
  mapM_ putStrLn (map descrever filaOriginal)
  putStrLn ("Arrecadado: R$" ++ show (arrecadado filaOriginal))
  
  putStrLn "\n--- Fila Atualizada ---"
  mapM_ putStrLn (map descrever filaAtualizada)
  putStrLn ("Arrecadado: R$" ++ show (arrecadado filaAtualizada))
