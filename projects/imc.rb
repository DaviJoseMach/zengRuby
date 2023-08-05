def calc(peso, altura)
imc = peso / (altura * altura)
if imc <= 18.5
    puts "Muito magro man"
    
elsif imc >= 18.5 && imc <= 25
    puts "Ta safe"
else
    puts "Esta gordo hein"
end
end

calc(67, 1.67)
