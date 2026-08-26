function calcularMedia(a, b)
    return (a + b) / 2
end

function encontrarMaior(a, b)
    if a > b then
        return a
    else
        return b
    end
end

function calcularDiferencaAbsoluta(a, b)
    -- esse math.abs eu procurei e ela pega o valor absoluto
    return math.abs(a - b)
end

function analisarNumeros(n1, n2, operacao)
    if operacao == "media" then
        return calcularMedia(n1, n2)
    elseif operacao == "maior" then
        return encontrarMaior(n1, n2)
    elseif operacao == "diferenca" then
        return calcularDiferencaAbsoluta(n1, n2)
    else
        return "Operação inválida!"
    end
end

local num1 = tonumber(io.read())
local num2 = tonumber(io.read())
local op = io.read()
local resultado = analisarNumeros(num1, num2, op)

print("Resultado: " .. resultado)

https://onecompiler.com/lua/44zd83q2m
