module Falante
  def falar
    "Olá!!"
  end
end

class Pessoa
  include Falante
  attr_reader :nome
  def initialize(nome)
    @nome = nome
  end

  def falar
    super
    puts"Olá, tudo bem ? Meu nome é #{@nome}"
  end
end

class Cachorro
  include Falante
  attr_reader :nome
  def initialize(nome)
    @nome = nome
  end

  def falar
    super
    puts "Au Au! Me chamo #{nome}"
  end
end

puts "------------------"
p1 = Pessoa.new("João")
p1.falar
puts "------------------"
c1 = Cachorro.new("Dug")
c1.falar