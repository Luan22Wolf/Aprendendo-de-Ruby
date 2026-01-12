numeros = []
puts "Digite 5 numeros: "

# Lembra esta estutura de repetição é útil nestes casos assim. Mas da pra fazer com outros tipos também caraa

#5.times do
#  numero = gets.chomp.to_i
#  numeros << numero
#end

c = 1
while c <= 5 do
  numero = gets.chomp.to_i
  numeros << numero
  c += 1
end

max = numeros.max
mini = numeros.min

sum = numeros.sum
media = sum / numeros.size.to_f
puts "Este é o maior numero: #{max}, este é o menor: #{mini} e esta é a média de todo o array: #{media}"

