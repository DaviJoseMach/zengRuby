puts "Insira sua nota 1, 2 e por fim a 3"

n1 = gets.chomp.to_f
n2 = gets.chomp.to_f
n3 = gets.chomp.to_f
media = (n1 + n2 + n3)/3
media_arredondada = media.round(2)

puts "sua média é #{media_arredondada}"
