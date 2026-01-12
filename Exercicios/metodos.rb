#def saudacao
#    puts "Qual seu nome ?"
#    nome = gets.chomp
#end
#puts "Olá #{saudacao}"

def soma
    puts "Escreva um número: "
    a = gets.chomp.to_i
    puts "Escreva outro: "
    b = gets.chomp.to_i
    c = a + b
    return c
end

resultado = soma

puts "A soma dos dois é #{resultado}"