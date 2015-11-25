class Jogo
  
  def initialize(aposta, concurso)
    @aposta = aposta
    @concurso = @concurso
    @dezenas_certas = []
  end

  def jogar
    @dezenas_certas = conferir
  end


  def acertos
    @dezenas_certas.size
  end

  def conferir
    @concurso.dezenas_sorteadas & @aposta.dezenas
  end



end