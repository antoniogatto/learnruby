
vetor = [0,1,2,3,4,5,6,7,8,9]
vetorInverso = []
i = 9
 
vetor.each do |v|

	vetorInverso[i] = v
	i -= 1
end

vetorInverso.each do |v2|

	puts v2

end
