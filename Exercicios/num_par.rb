puts "Digite um número para verificar se ele é par: "
n = gets.chomp.to_i

# even? even? é um método da classe Integer em Ruby. Ele serve para verificar se um número é par.

if n.even?
  puts "Número par"
else 
  puts "Não é par"
end