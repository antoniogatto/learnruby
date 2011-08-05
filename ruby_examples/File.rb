#!/usr/bin/ruby1.8

#criando um arquivo
#File.new("teste.txt","w")

# abrindo um arquivo
File.open("teste.txt") do |f|
   f.each_line("linha") do |linha|
	puts linha
   end 
end

