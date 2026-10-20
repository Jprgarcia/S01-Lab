# https://onecompiler.com/ruby/456phgkah

class CoquetelAfterlife
  attr_reader :nome

  def initialize(nome, preco_inicial)
    @nome = nome
    @_preco = preco_inicial
  end

  def preco
    @_preco
  end

  def preco=(novo_valor)
    if novo_valor >= 5 && novo_valor <= 200
      @_preco = novo_valor
    else
      puts "Preço inválido!"
    end
  end

  def ficha
    "Drink: #{@nome} | Preço: $#{@_preco}"
  end
end

class DrinkDeLenda < CoquetelAfterlife
  attr_reader :lenda

  def initialize(nome, preco_inicial, lenda)
    super(nome, preco_inicial)
    @lenda = lenda
  end

  def ficha
    "#{super} | Homenagem a: #{@lenda}"
  end
end

drink_comum = CoquetelAfterlife.new("NiCola Clássica", 15)
lenda1 = DrinkDeLenda.new("The David Martinez", 50, "David Martinez")
lenda2 = DrinkDeLenda.new("The Johnny Silverhand", 120, "Johnny Silverhand")

cardapio = [drink_comum, lenda1, lenda2]

puts "=== Cardápio do Afterlife ==="
cardapio.each do |drink|
  puts drink.ficha
end

puts "\n--- Alterando Preço ---"
lenda1.preco = 500 
lenda1.preco = 80   
puts lenda1.ficha
