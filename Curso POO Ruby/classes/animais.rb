class Animal
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end

  def comunicar
    puts "Olá, eu sou uma classe mãe ou super classe"
  end
end

class Cachorro < Animal
  attr_reader :raca

  def initialize(nome,raca)
    super(nome)
    @raca = raca
  end

  def comunicar
    puts "Bob: Au Au Au => Ola eu sou a classe filha "
  end
end

class Gato < Animal
  attr_reader :raca, :cor
  def initialize(nome,raca,cor)
    super(nome) # Chama o initialize da super classe (Animal) 
    @raca = raca
    @cor = cor
  end

  def comunicar
    puts "Fenix: Miau Miau Miau => Olá eu sou a classe filha também"
  end
end

bob = Cachorro.new("Bob","Podle")
puts bob.nome
puts bob.raca
puts bob.comunicar

puts "----------------------"

fenix = Gato.new("Fanix","Siamês","laranja")
puts fenix.nome
puts fenix.raca
puts fenix.cor
puts fenix.comunicar