# https://onecompiler.com/ruby/456pht7b4

class Instrumentista
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def interpretar(peca)
    raise NotImplementedError, "Esta classe base não sabe tocar a peça. Implemente o método nas classes filhas."
  end
end

class Solista < Instrumentista
  def interpretar(peca)
    puts "#{@nome} assume a melodia principal no #{@instrumento} tocando #{peca}!"
  end
end

class Acompanhador < Instrumentista
  def interpretar(peca)
    puts "#{@nome} fornece a base musical no #{@instrumento}, acompanhando o ritmo solista de #{peca}!"
  end
end

class Regente
  def initialize(nome)
    @nome = nome
    @orquestra = []
  end

  def convocar(instrumentista)
    @orquestra << instrumentista
  end

  def reger(peca)
    puts "\nO regente #{@nome} levanta a batuta e inicia a peça: #{peca}"
    @orquestra.each do |musico|
      musico.interpretar(peca)
    end
  end

  def escalacao
    @orquestra.map { |m| "[#{m.class}] #{m.nome}" }
  end
end

kaori = Solista.new("Kaori Miyazono", "Violino")
kousei = Acompanhador.new("Kousei Arima", "Piano")
hiroko = Regente.new("Hiroko Seto")

hiroko.convocar(kaori)
hiroko.convocar(kousei)

hiroko.reger("Introdução e Rondo Capriccioso - Saint-Saëns")

puts
hiroko.escalacao.each do |texto|
  puts texto
end
