class Jogo
  PREMIACOES = {4=> :quadra, 5=> :quina, 6=> :sena}
  attr_accessor :aposta, :concurso

  def initialize(aposta, concurso)
    @aposta = aposta
    @concurso = concurso
    @dezenas_certas = []
    jogar()
  end

  def jogar
    @dezenas_certas = conferir()
  end


  def acertos
    @dezenas_certas.size
  end

  def conferir
    @concurso.dezenas_sorteadas & @aposta.dezenas
  end

  def premiacao
    PREMIACOES[acertos] if acertos > 3
  end


  def to_s
    "#{@aposta}    =>     #{@concurso}"
  end

end