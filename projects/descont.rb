puts "Digite aqui a porcentagem de desconto, e depois o valor do produto"

desc = gets.chomp.to_i
valor = gets.chomp.to_f
calc = (valor * desc) / 100

puts "#{desc}% de #{valor}R$ é igual há #{calc}"