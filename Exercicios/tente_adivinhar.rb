numero = rand(1.10)##gera um numero aleatorio
chances = 3

puts "Tente adivinhar qual número será sorteado entre 1 a 10. Você tem #{chances}, Insira seu palpite:"

while chances > 0 do
  palpite = gets.chomp.to_i
  if palpite == numero
    puts"Parabéns você acertou!"
    break #Interrompe o while(enquanto)
  else
    chances -= 1 #isso aqui é um "decremento"
    if chances == 0
      puts "Suas chances acabaram! o número era #{numero}"
    else
      puts "Poxa, você errou!, tente novamente: "
    end
  end
end
  