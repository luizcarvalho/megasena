class Concurso
  attr_accessor :dezenas_sorteadas
  PERCENTUAL_SENA = 35
  PERCENTUAL_QUINA = 19
  PERCENTUAL_QUADRA = 19

  def initialize(numero, data, dezenas_sorteadas)
    @numero = numero
    @data = data
    @dezenas_sorteadas = dezenas_sorteadas
  end

  def to_s
    "#{@dezenas_sorteadas.join(', ').ljust(25, ' ')}  #{@numero.ljust(5, ' ')}  #{@data}"
  end

end