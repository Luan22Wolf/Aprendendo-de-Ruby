module Multiplicacao
  def mult(*args)
        lista = [] #array vazio
        lista.push(*args)
        lista.inject(:*)
  end
end

module Soma
  def soma(*args)
        lista = []
        lista.push(*args)
        lista.inject(:+)
  end
end

module Subtracao
  def sub(*args)
    lista = []
    lista.push(*args)
    lista.inject(:-)
  end
end

module Divisao
  def div(*args)
    lista = []
    lista.push(*args)
    lista.inject(:/)
  end
end

