class Usuario
  attr_reader :nome, :email, :idade

  def initialize(nome, email, idade)
    @nome = nome 
    @email = email 
    @idade = idade
  end

  def validar_email
    if email.include?("@") #include = verifica se tem o carectere dentro do valor passado
      true
    else
      puts "Email inválido!"
      false
    end
  end

  def verificar_idade
    if idade >= 18
      puts "Permitido acesso."
      true
    else
      puts "Acesso negado - menor de idade"
      false
    end
  end

  def validacoes
    if validar_email && verificar_idade
      puts "Usuário validade com sucesso!"
      puts "Bom ter você por aqui #{@nome}😊"
    else 
      puts "Acesso negado!"
    end
  end
end

puts "---------------------"
puts "Validação de usuário"
puts "---------------------"
puts "Seu nome, idade e email devem conter os seguintes valores para o acesso =>"
puts "Nome completo"
puts "Email: '.'  e  '@' "
puts "Idade maior que 18 anos✅"
puts ""

user = Usuario.new("Ana Silva", "ana.silva@email.com", 17)
puts user.validacoes