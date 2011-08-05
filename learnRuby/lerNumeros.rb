puts "Informe a quantidade de números que deseja informar"
totalNumeros = gets.to_i
vetor = Array.new(totalNumeros) 
i = 0

vetor.each do |v|

	puts "Digite os números"
	vetor[i] = gets.to_i
	i += 1
end



vetor.sort.each do |v|

	puts v
end
