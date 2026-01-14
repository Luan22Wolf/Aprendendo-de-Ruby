# 1. Classe com validações

Criei uma ( class Usuario ) com atributos nome, email e idade.

    Criei no v1 uma lógica que funciona bem nos limites do que a questão pede, fiz assim:
        ● Classe Usuario ✅
        ● Uso do include(?) para conferir um valor ✅
        ● Usei corretamente o attr_reader ✅
        ● Usei validação de idade if <= 18 ✅
        ● Criei métodos separados para cada validação (email e idade) ✅

    Porém não sabia sobre excessões personalizadas. O código com exceções servem para tratar situações anormais (erros) que não deveriam acontecer durante o fluxo normal do programa.
    
#    Método que fiz para verificar idade:
    def verificar_idade
        if idade >= 18
            puts "Permitido acesso."
            true
        else
            puts "Acesso negado - menor de idade"
            false
        end
    end

    Aqui acontece o seguinte cenário: 
        ● O objeto é criado mesmo inválido
        ● Quem usa a classe precisa lembrar de válidar
        ● Erros podem ser ignorados sem perceber 😬

        user = Usuario.new("Ana", "emailerrado", 15) => OBJETO CRIADO
##### - Usuário inválido existe no sistema - Perigoso em sistemas reais!  

    Com as exceções, o código fica com uma cara mais escalável.
#   O que muda com exceção:

        def validar_idade!
            raise "Menor de idade" if idade < 18
        end

        ● O programa para imediatamente
        ● O erro não passa despercebido
        ● O objeto não é criado inválido

        Usuario.new("Ana", "emailerrado", 15)
##### - Erro lançado imediatamente, isso trás ao código :
#         ✔ Segurança
#         ✔ Clareza
#         ✔ Controle

#         " Se o sistema não pode continuar corretamente → use exceção, sempre "

    Deve-se usar exceções nos seguintes casos =>
        ●Dados inválidos
        ●Estado inconsistente
        ●Violação de regra de negócio
        ●Algo que não deveria acontecer

#        Exemplos => Usuário menor de idade, CPF inválido, Saldo negativo, Login inválido e outros.

#        Exemplos onde não usar => Controle normal de fluxo e Condições esperadas o tempo todo

#    - EXPLICAÇÃO RÁPIDA DE QUANDO USAR E NÃO USAR -

#            |    Sem exceção     |     Com exceção       |
#            | ------------------ | --------------------- |
#            | Retorna true/false | Interrompe execução   |
#            | Pode ser ignorado  | Não pode ser ignorado |
#            | Código frágil      | Código robusto        |
#            | Mais simples       | Mais profissional     |



- Classe Usuario com a exceção

# Dentro do meu método construtor:
class Usuario
    attr_reader :nome, :email, :idade

    def initialize(nome, email, idade)
        @nome = nome
        @email = email
        @idade = idade

        validar_email!
        validar_idade!
    end

- Valide que o email contém @

# Meu código: 
    def validar_email
    if email.include?("@") #include = verifica se tem o carectere dentro do valor passado
      true
    else
      puts "Email inválido!"
      false
    end
  end

# Código melhorado: 
    def validar_email!
     unless email.include?("@")
      raise EmailInvalidoError, "Email inválido: deve conter '@'"
     end
    end

- A idade deve ser maior ou igual a 18

# Meu código
    def verificar_idade
    if idade >= 18
      puts "Permitido acesso."
      true
    else
      puts "Acesso negado - menor de idade"
      false
    end
  end

# Código melhorado: 
    def validar_idade!
    if idade < 18
      raise IdadeInvalidaError, "Acesso negado: usuário menor de idade"
    end
  end

- Lance exceções personalizadas quando inválido

# Excessões personalizadas na v2:
    class EmailInvalidoError < StandardError; end
    class IdadeInvalidaError < StandardError; end

- Tratando exceções (erros)

# Valida se ocorre algum erro no código, então => trata o erro => O programa continua rodando => Pode mostrar mensagem amigável

    begin
        user = Usuario.new("Ana Silva", "ana.silva@email.com", 17)
        puts "Usuário criado com sucesso!"
        puts "Bem-vinda, #{user.nome} 😊"
    rescue EmailInvalidoError, IdadeInvalidaError => e
        puts "Erro ao criar usuário:"
        puts e.message
    end

#### Fluxo do begin e rescue
begin
  código
    ↓
   ok → continua
    ↓
 erro → rescue → tratamento

[Código sem as excessões =>](validar_usuarios_v1.rb)
[Código com as excessões =>](validar_usuario.v2.rb)
