require './concurso.rb'
require './jogo.rb'
require 'pry'

resultados = File.open('resultados.txt', 'r')

jogo = Jogo.new([26, 51, 58, 5, 27, 3, 35, 53])

resultados.each_line do |line|
  numero, data, dez1, dez2, dez3, dez4, dez5, dez6 = line.split(' ')
  concurso = Concurso.new(numero, data, [dez1, dez2, dez3, dez4, dez5, dez6].map(&:to_i))
  concurso.jogar(jogo)
end
