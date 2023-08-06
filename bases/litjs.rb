require 'json'

arquivo = 'dados.json'
dados = JSON.parse(File.read(arquivo))

puts dados.inspect