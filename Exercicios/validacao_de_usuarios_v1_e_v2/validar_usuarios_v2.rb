class EmailInvalidoError < StandardError; end
class IdadeInvalidaError < StandardError; end

class Usuario
  attr_reader :nome, :email, :idade

  def initialize(nome, email, idade)
    @nome = nome
    @email = email
    @idade = idade
  end

  private

  def validar_email
    unless email.include?("@")
      raise EmailInvalidoError, "Email inválido: #{email}"
    end
  end

  def validar_idade
    if idade < 18
      raise IdadeInvalidaError, "Acesso negado: usuário menor de idade"
    end
  end 
end

puts "---------------------"
puts "Validação de usuário"
puts "---------------------"

begin
  user = Usuario.new("Ana Rodrigues", "ana.rodrigues@email.com", 17)
  puts "Usuário criado com sucesso!"
  puts "Bem-vinda, #{user.nome} 😊"
  puts #Qubra de linha
rescue EmailInvalidoError, IdadeInvalidaError => e
  puts "Erro ao criar usuário:"
  puts e.message
end
