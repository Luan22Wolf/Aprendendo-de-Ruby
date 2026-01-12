class Funcionario
  attr_reader :nome, :salario

  def initialize(nome, salario)
    @nome = nome
    @salario = salario
  end

  def calcular_bonus
    @salario * 0.10
  end

  def mostrar_salario
    puts "Salário do funcionário #{@nome}: #{@salario}"
  end
end

class Gerente < Funcionario
  def calcular_bonus
    super(nome, salario)
    @salario * 0.20
  end

  def mostrar_salario
    puts "Salário Gerencia: #{@nome}  #{@salario}"
  end
end

funcionario = Funcionario.new("João", 3000)
gerente = Gerente.new("Maria", 5000)

puts gerente.mostrar_salario
puts funcionario.mostrar_salario
