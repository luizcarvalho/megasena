class Aposta
  
  @dezenas_disponiveis = (1..60).to_a
  attr_accessor :dezenas


  def initialize(dezenas = [])
    @dezenas = dezenas.empty? ? desenas_aleatorias : dezenas 
  end

  def dezenas_aleatorias
    @dezenas_disponiveis.sample(6)
  end

  def to_s
    @dezenas.join(', ')
  end

end