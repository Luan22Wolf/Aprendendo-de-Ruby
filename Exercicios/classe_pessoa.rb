class Pessoa
  attr_reader :nome,:idade
  
  def initialize(nome,idade)
    @nome = nome
    @idade = idade
  end
  
  def mostrar_dados()
    puts "Nome: #{nome}"
    puts "Idade: #{idade}"
  end
end

pessoa1 = Pessoa.new("Luan",24)
puts pessoa1.mostrar_dados()
