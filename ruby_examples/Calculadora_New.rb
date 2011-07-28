
puts "Calculadora em Ruby"

#variaveis
i = 0
var = []

def pega_valor
	
	puts "Digite um valor"
	var1 = gets.to_i
end

def operacao(num1,num2,operador)
	result = num1 operador num2	
end	

begin 
	puts begin "1: Soma\n2: Subtracao\n3: Multiplicacao\n4: Divisao\n0: Sair\n\nInforme o valor da operacao desejada"; end
	operacao = gets.to_i

	
	2.times do
    	    var << pega_valor()
	end

	case operacao

	when 1
		puts "soma"
		result = operacao(var[0],var[1],a)
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
