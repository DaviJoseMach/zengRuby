puts "Digite 1 para converter {Celsiu para Fr} ou 0 para {Fr para Celsiu}"
escolha = gets.chomp

if escolha == "1"
puts "Digite quantos celsius:"
num = gets.chomp.to_f
result = num * 9/5 + 32
puts "#{result}"

elsif escolha == "0" 
puts "Digite quantos FH:"
num1= gets.chomp.to_f 
result1 = (num1 - 32) * 5/9
puts "#{result1}"

else
puts  "TUDO ERRADO"
end