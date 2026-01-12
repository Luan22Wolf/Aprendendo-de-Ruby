class ContaBancaria
  attr_accessor :saldo

  def initialize(saldo)
    @saldo = saldo
  end

  def depositar(valor)
    @saldo += valor
  end

  def sacar(valor)
    if valor <= @saldo
      @saldo -= valor
    else 
      puts "Saldo insulficiente!"
    end
  end

  def mostrar_saldo
    puts "Seu saldo atual é de: R$#{@saldo}"
  end
end

conta1 = ContaBancaria.new(1000)
#puts conta1.depositar(500)
#puts conta1.sacar(800)
puts conta1.mostrar_saldo