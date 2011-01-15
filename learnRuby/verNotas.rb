puts "Informe as notas"

i = 0
vetor = Array.new(6)

6.times do

	puts "Informe a " + (i+1).to_s + " nota"
	vetor[i] = gets.to_i
	i += 1
end

i = 0

vetor.sort.each do |p|

	vetor[i] = p
	i += 1 
end

somaNotas = vetor[1] + vetor[2] + vetor[3] + vetor[4]

puts somaNotas

	  
