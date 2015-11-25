require './concurso.rb'
require './jogo.rb'
require './aposta.rb'
#require 'pry'

resultados = File.open('resultados.txt', 'r')
jogos = []

aposta = Aposta.new([26, 51, 58, 5, 27, 3, 35, 53])

resultados.each_line do |line|
  numero, data, dez1, dez2, dez3, dez4, dez5, dez6 = line.split(' ')
  concurso = Concurso.new(numero, data, [dez1, dez2, dez3, dez4, dez5, dez6].map(&:to_i))
  jogos.push(Jogo.new(aposta, concurso))
end


puts "##  JOGO: #{aposta.dezenas.join(',')}  ## \n\n"
jogos.each do |jogo|
  if jogo.premiacao
    puts "Você fez uma #{jogo.premiacao.to_s.upcase}         (#{jogo.concurso})"
  end
end
