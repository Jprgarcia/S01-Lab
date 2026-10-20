# https://onecompiler.com/ruby/456pjqjv2

module Depoente
  def depor
    raise NotImplementedError, "#{self.class} deve implementar o método depor!"
  end
end

module Detivel
  def ser_detido
    puts "O suspeito #{nome} foi algemado e levado para interrogatorio pela Scotland Yard!"
  end
end

class Envolvido
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

class TestemunhaOcular < Envolvido
  include Depoente

  def depor
    puts "Testemunha #{nome}: 'Eu vi um homem misterioso correndo pelas docas tarde da noite!'"
  end
end

class SuspeitoDoCrime < Envolvido
  include Depoente
  include Detivel

  def depor
    puts "Suspeito #{nome}: 'Eu não tenho nada a ver com isso! Eu estava jogando cartas no pub a noite toda!'"
  end
end

class Investigacao
  def initialize(caso)
    @caso = caso
    @envolvidos = []
  end

  def registrar(envolvido)
    @envolvidos << envolvido
  end

  def ouvir_todos
    puts "=== Investigando o caso: #{@caso} ==="
    @envolvidos.each do |pessoa|
      pessoa.depor
    end
  end

  def acionar_scotland_yard
    puts "\n--- Ação da Policia ---"
    culpados = @envolvidos.select { |pessoa| pessoa.respond_to?(:ser_detido) }
    culpados.each do |criminoso|
      criminoso.ser_detido
    end
  end
end

testemunha = TestemunhaOcular.new("Sra. Hudson")
suspeito1 = SuspeitoDoCrime.new("Professor Moriarty")
suspeito2 = SuspeitoDoCrime.new("Lord Blackwood")

caso = Investigacao.new("O Misterio do Relogio Quebrado")

caso.registrar(testemunha)
caso.registrar(suspeito1)
caso.registrar(suspeito2)

caso.ouvir_todos
caso.acionar_scotland_yard
