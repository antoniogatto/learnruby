#!/usr/bin/ruby1.8

#declarando um Array

lista = [100,200,300,400]

puts lista.class

#operacoes com arrays

puts "soma: "
puts [1,3,5] + [2,4]

puts "Subtracao: "
puts [1,2,3,4,5] - [2,4] 

puts "Multiplicacao"
puts [1,2,3] * 3

puts "concat"
puts lista.concat([500,600])

puts "Shuffle para embaralhar"
puts lista.shuffle!

puts "Sort para ordenar"
puts lista.sort!

puts "lista com each"

lista.each do |x|
	puts x
end

lista.each{|x| p x}

puts "Obtendo o valor dos elementos"

puts "Obtendo pelo indice"
p lista.at(2)

puts "Obtendo pelo conteudo"
puts lista.include?(100)

puts "Obtendo uma faixa atraves de condicao"
lista.collect {|x| p x if x < 300}

puts "mostrando indice e conteudo"
lista.each_with_index {|x,y| p "#{y} => #{x}"}

puts "outra forma pelo indice"
puts lista.index(100)

puts lista[2]

puts lista

puts lista.first

puts lista.last

puts "desaninhando arrays"
puts lista2 = [2,4,[88,99,[11],],]

puts lista2.flatten!

puts "Eliminando Duplicacoes"
lista2= [2,3,4,2,3,4]
puts lista2.uniq!


