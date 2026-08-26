function contarOcorrencias(tabela, alvo)
    local contador = 0

    for i = 1, #tabela do
        if tabela[i] == alvo then
            contador = contador + 1
        end
    end
    
    return contador
end

-- preciso colocar esses "*" porque senão não roda o meu código aqui!
local N = io.read("*n")
local proximosN = {}

for i = 1, N do
    proximosN[i] = io.read("*n")
end

local X = io.read("*n")
local resultado = contarOcorrencias(proximosN, X)

print("O número " .. X .. " aparece " .. resultado .. " vez(es) na tabela.")

https://onecompiler.com/lua/44zd6q2w5
