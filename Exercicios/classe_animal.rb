animais = ["Gato", "Cachorro", "Lobo", "Vaca"]

class Animal
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end

  def comunicar
    puts "Olá, sou a classe mãe Animal"
  end
end

class Gato < Animal
  def comunicar
    puts "Miau Miau"
  end
end

class Cachorro < Animal
  def comunicar
    puts "Au Au"
  end
end

class Lobo < Animal
  def comunicar
    puts "Auuuuuuu"
  end
end

class Vaca < Animal
  def comunicar
    puts "Muuuuuuu"
  end
end

puts "-----------Lista de animais-----------"
puts animais
puts "Escolha um dos animais acima: "
escolha = gets.chomp.strip.capitalize

if escolha == animais[0] 
  gato = Gato.new("Gato")
  puts gato.comunicar
elsif escolha == animais[1] 
  cahorro = Cachorro.new("Cachorro")
  puts cahorro.comunicar
elsif escolha == animais[2] 
  lobo = Lobo.new("Lobo")
  puts lobo.comunicar
elsif escolha == animais[3] 
  vaca = Vaca.new("Vaca")
  puts vaca.comunicar
else
  puts "Animal não encontrado"
end