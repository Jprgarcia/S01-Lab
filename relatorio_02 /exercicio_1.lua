function gerarTabelaPotencias(inicio, fim, base)
    for i = inicio, fim do
        local pot = base ^ i
        print(base .. " ^ " .. i .. " = " .. pot)
    end
end

local M = 2
local N = 5
local base1 = 3

gerarTabelaPotencias(M, N, base1)

https://onecompiler.com/lua/44zd5uzyf
