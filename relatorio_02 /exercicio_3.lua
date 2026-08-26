function filtrarMaiores(tabela, limite)
    local Tabelanova = {}
    
    for i = 1, #tabela do
        if tabela[i] > limite then
            table.insert(Tabelanova, tabela[i])
        end
    end
    
    return Tabelanova
end

local N = io.read("*n")
local minhaTabela = {}

for i = 1, N do
    minhaTabela[i] = io.read("*n")
end

local K = io.read("*n")
local Tabelapronta = filtrarMaiores(minhaTabela, K)

print("--- Elementos maiores que " .. K .. " ---")

for i = 1, #Tabelapronta do
    print(Tabelapronta[i])
end

https://onecompiler.com/lua/44zd75udw
