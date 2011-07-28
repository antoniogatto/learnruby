class CPF

	#definindo variaveis
	cpf = ""
	
	def pega_cpf
		puts "digite o cpf sem os pontos"
		cpf = gets.chop
		#cpf.to_i
		
	end

	def valida_cpf_caracteres(cpf)
	
		if cpf.size != 11
			puts "Cpf invalido"
		end
	end

	def divisao_11(numero)

	   result = numero % 11	

	   if result < 2
		digito = 0
	   else
		digito = 11 -result		 	

	   end	
	end
	
end
	begin

	soma = 0;
	i = 10 
	j = 0
	digito1 = 0
	digito2 = 0
	valida  = CPF.new
	
	cpf = valida.pega_cpf

	valida.valida_cpf_caracteres(cpf)
	
	cpf_array = cpf.split(//)

	cpf_array.each {|x| x.to_i}
	
	while j < 9 
	
		soma += cpf_array[j].to_i * i
		i -= 1
		j +=1
 
	end	
	
	#cpf_array.each {|x| soma += x.to_i * i;p i -= 1; p "soma #{x}" }

	digito1 = valida.divisao_11(soma)	

	soma = 0	
	i=11
	j=0 

        while j < 10

		soma += cpf_array[j].to_i * i
		i -= 1
		j += 1
	end

	
        digito2 = valida.divisao_11(soma)	

	
	if((cpf_array[9].to_i == digito1) & (cpf_array[10].to_i == digito2))

		puts "Cpf valido"
	else
		puts "Cpf Invalido"
	end
	
	rescue NameError => e

		p "Erro: #{e}"
	end		 			
