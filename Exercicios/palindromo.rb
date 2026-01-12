# Um palindromo é uma palavra ou frase, que você pode ler de trás para frente ou de frente para trás e ser a mesma coisa. "OVO" => "OVO".

puts "Digite uma palavra ou frase e veja se ela é um palíndromo: "
palavra = gets.chomp.downcase # Ignora maiuscula e faz delas minusculas
invertida = palavra.reverse

#PASSEDDDDD
if palavra == invertida
  puts "Esta palvra '#{palavra}' é uma palíndromo!"
else
  puts "Esta oalavra '#{palavra}' não é um palíndromo!"
end