puts "Digite um número: "
n = gets.chomp.to_i

if n > 10
  puts "Número alto"
elsif n < 10
  puts "Número baixo"
else
  puts "Acertou!!!!"
end