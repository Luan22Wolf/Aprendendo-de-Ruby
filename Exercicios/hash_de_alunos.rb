notas_alunos = {"Maria": 4.4, "João": 5.7, "Carlos": 8.1, "Ana": 10, "Beatriz": 6.3}

nota_max = notas_alunos.values.max
nome_aluno = notas_alunos.key(nota_max)

puts "A maior nota da sala é de nome #{nome_aluno} com a nota #{nota_max}"