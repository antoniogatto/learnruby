#!/usr/bin/ruby
soma = 0
j = 11

def modulo11(digito,soma)
	
	valor = (soma/11) * 11

	resultado = soma - valor

 	if digito == 1 
	
		if resultado  == 0 || resultado == 1
 
			resultado  = 0
	
		end


	else 

		
		if resultado  == 0 || resultado == 1
 
			resultado  = 0
	
		else

			resultado = 11 - resultado	

		end
	
	end


	return resultado

end

puts "digite o CPF"
cpf = gets.chomp

temp =  cpf.split(//)


temp.length.times do |i|

	if i < 9
	
		soma += ((i+1) * (temp[i].to_i))

	end

end

n1 = modulo11(1,soma)

soma = n1 * 2

temp.length.times do |i|

	if i < 9 

		soma += (j * (temp[i].to_i)) 	
		j -= 1
	end

end
 		
n2 = modulo11(2,soma)

if temp[9].to_i == n1 && temp[10].to_i == n2

	puts "O cpf " + cpf + " é valido"

else

	puts "Cpf inválido"

end

