require 'nokogiri'
require 'open-uri'
require 'nokogumbo'
require 'pry'

file  = File.open('mega.html', 'r')

doc = Nokogiri::HTML(file.read)

links = []
doc.css('tr').each_with_index do |tag, i|
  {
    numero: tag[],
    data: tag[],
    dez1: tag[],
    dez2: tag[],
    dez3: tag[],
    dez4: tag[],
    dez5: tag[],
    dez6: tag[],
    arrecadacao: tag[],
    quantidade_ganhadores: tag[],
    c: tag[],
    u: tag[],
    premio_sena: tag[],
    g5: tag[],
    premio_quina: tag[],
    g4: tag[],
    premio_quina: tag[],
    acumulado: tag[],
    valor_acumulador: tag[]
  }
end

