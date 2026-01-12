require_relative "modulos"

operacoes = ["Soma", "Subtração", "Multiplicacao", "Divisão"]

class Calculadora
  include Soma
  include Subtracao
  include Multiplicacao
  include Divisao
end

puts "----------------------"
puts operacoes
puts "Escolha uma das operações acima: "
escolha = gets.chomp.strip.capitalize

objeto = Calculadora.new

puts "Digite os valores separados por espaço:"
numeros = gets.chomp.split.map(&:to_i)

if escolha == operacoes[0]
  puts objeto.soma(*numeros)
elsif escolha == operacoes[1]
  puts objeto.sub(*numeros)
elsif escolha == operacoes[2]
  puts objeto.mult(*numeros)
elsif escolha == operacoes[3]
  puts objeto.div(*numeros)
else
  puts "operador não encontrado"
end
