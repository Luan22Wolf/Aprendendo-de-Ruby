class Livro
  attr_reader :nome, :ano, :preco

  def initialize(nome, ano, preco)
    @nome = nome
    @ano = ano
    @preco = dar_desconto(preco) #chamando o método privado, desconto de forma automática dentro da classe
  end

  def mostrar_info
    puts "Nome: #{@nome}, Ano: #{@ano}, Preço: R$#{@preco}"
  end

  private #Este método só poder ser chamdo dentro da classe!
  def dar_desconto(preco)
    if @ano < 2000
      preco *= 0.9
    else
      preco
    end
  end

end

l1 = Livro.new("O Senhor do Anéis", 2001, 39.90)
l1.mostrar_info