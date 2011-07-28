
puts "Calculadora em Ruby"

i = 0
var = []

def pega_valor
	
	puts "Digite um valor"
	var1 = gets.to_i
end

begin

puts "1: Soma"
puts "2: Subtracao"
puts "3: Multiplicacao"
puts "4: Divisao"
puts "0: Sair"

puts "Informe o valor da operacao desejada"
operacao = gets.to_i


case operacao

	when 1
		puts "soma"
		
		2.times do
	    	    var << pega_valor()
		end
		
		result = var[0] + var[1]

		puts "Resultado => #{result}"
		
	when 2
		puts "Subtracao"

	
		2.times do
		    var << pega_valor()
		end

		result = var[0] - var[1]

		puts "Resultado => #{result}"		
	when 3	
		puts "Multiplicacao"
	
		2.times do
		    var << pega_valor()
		end

		result = var[0] * var[1]		

		puts "Resultado => #{result} "
	when 4 
 		puts "Divisao"
	
		2.times do
		    var << pega_valor()
		end

		result = var[0] / var[1]	

		puts  "Resultado => #{result} " 		

	end

		
end while operacao != 0 
