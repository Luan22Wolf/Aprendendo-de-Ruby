puts "Infome um número para ver a tabuada dele:"
num = gets.chomp.to_i

puts "Escolha um número de 10 a 100 para ser o limite da tabuada: "
limite = gets.chomp.to_i

contador = 1
while contador <= limite do
  resultado = num * contador 
  puts "#{num} x #{contador} = #{resultado}"
  contador += 1
end