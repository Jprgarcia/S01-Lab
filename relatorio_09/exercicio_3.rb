# https://onecompiler.com/ruby/456pjdwwc

class PhoneWave
  def enviar_dmail(mensagem)
    puts "Mensagem: '#{mensagem}' foi enviada com sucesso para o passado pelo PhoneWave!"
  end
end

class MembroDoLab
  attr_reader :numero, :nome

  def initialize(numero, nome)
    @numero = numero
    @nome = nome
  end
end

class LaboratorioDeGadgets
  def initialize
    @phonewave = PhoneWave.new
    @membros = []
  end

  def admitir(membro)
    @membros << membro
    puts "Membro do Lab 00#{membro.numero}: #{membro.nome} foi admitido(a)!"
  end

  def experimento(mensagem)
    puts "\n--- Iniciando Experimento ---"
    puts "Membros presentes:"
    @membros.each do |m|
      puts "[00#{m.numero}] #{m.nome}"
    end
    
    puts "Disparando o D-Mail..."
    @phonewave.enviar_dmail(mensagem)
  end
end

okabe = MembroDoLab.new(1, "Rintaro Okabe")
kurisu = MembroDoLab.new(4, "Kurisu Makise")

lab = LaboratorioDeGadgets.new
lab.admitir(okabe)
lab.admitir(kurisu)

lab.experimento("Não deixe a Makise Kurisu ir embora!")
