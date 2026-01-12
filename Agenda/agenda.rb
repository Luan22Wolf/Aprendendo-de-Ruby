exercicios = ["Entregar de brinquedo","Falar uma frase","falar 5 palavras por dia","Ir ao banheiro sozinho","Fazer cocô no banheiro","Arrumar a cama"]

def linha
  "----------"
  ""
end

def menu
  "Menu da lista"
end

def Adicionar_exercicio(valor)
  adicao = exercicios.push
end

puts "Agenda para meu filho"
puts linha
puts menu
puts linha
puts "Escolha uma opção: "

puts """
        1-Ver lista
        2-Adicionar alguma tarefa
        3-Remover tarefa
        4-Sair
"""
opcao = gets.chomp

if opcao == "1"
  puts exercicios
end
