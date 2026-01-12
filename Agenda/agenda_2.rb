require 'date'

dia_semana = ["Domingo","Segunda","Terça","Quarta","Quinta","Sexta","Sábado"]
dia_atual = dia_semana[Date.today.wday]

case dia_atual
when "Segunda"
  puts "Começar a trabalhar"
when "Terça"
  puts "Terapia do Daniel"
when "Domingo"
  puts "Dia de estudar"
end