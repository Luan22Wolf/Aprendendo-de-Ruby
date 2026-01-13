#puts "----------Calculo IMC----------"
#puts "Informe seu peso: "
#peso = gets.chomp.to_f
#puts ""
#puts "Informe sua altura: "
#altura = gets.chomp.to_f

def imc(peso, altura)
  imc = peso / (altura ** 2)
  return imc
end

pessoa = imc(70, 1.75)
puts "Seu IMC é de: #{pessoa.round(2)}"
#puts "Seu IMC é de: #{imc(peso, altura).round(2)