def senha(num, especiais)
    caracteres = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
    caracteres += ['!', '@', '#', '$', '%', '&', '*'] if especiais == 'S'
  
    if num >= 5 && num <= 15
      senha_gerada = (1..num).map { caracteres.sample }.join
      puts "Sua senha gerada é: #{senha_gerada}"
    else
      puts "Número de caracteres inválido. Digite um número entre 5 e 15."
    end
  end
  
  puts "Digite quantos caracteres deverá ter sua senha (de 5 a 15):"
  carnum = gets.chomp.to_i
  
  puts "Caracteres especiais? (S para sim ou N para não)"
  sn = gets.chomp.upcase
  
  senha(carnum, sn)
  