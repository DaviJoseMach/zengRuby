puts "Simulador de dado -> Escolha um numero de 0 a 6"
loop do
numero_aleatorio = rand(7)
chute = gets.chomp.to_i


if chute == numero_aleatorio
    puts "Voce acertou"    
    break
else
    puts "Não foi dessa vez o numero certo é #{numero_aleatorio}"
end
    end
