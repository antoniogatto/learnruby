puts "digite 10 valores"
i = 0

vetor = Array.new(10)
10.times do

puts "digite o " + (i+1).to_s + " valor"
vetor[i] = gets.to_i
i += 1

end

menorNumero = vetor[0]
posicao = 0
i += 0


vetor.length.times do |i|

	if vetor[i] < menorNumero
	
		posicao = i + 1
		menorNumero = vetor[i]
	end
end

puts "Menor Número " + menorNumero.to_s
puts "Posição " + posicao.to_s	
			



