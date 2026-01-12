class Aluno
  attr_accessor :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def mostrar_dados
    puts "Nome: #{self.nome}, Idade: #{self.idade}"
  end
end

a1 = Aluno.new("Luan", 24)
a1.mostrar_dados