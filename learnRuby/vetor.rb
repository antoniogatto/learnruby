#verificar números pares e impares

vetor = [0,1,2,3,4,5]
par = 0 
impar = 0

vetor.each do |p|


	if p % 2 == 0
		par += 1
	else
        	impar += 1
	end
end

puts "Par: " + par.to_s
puts "Impar: " + impar.to_s
