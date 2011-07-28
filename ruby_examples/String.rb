#!/usr/bin/ruby1.8

nome = "Antonio"
sobrenome = "Gatto"

puts nome + " " + sobrenome

puts "outra forma de concatenar"
puts "#{nome} #{sobrenome}"

texto = <<STR
  Eita, teste,
  de como escrever
  um texto
  com quebras de linhas
  no ruby
STR

puts texto

teste = "Antonio Gatto"
puts "Formatacao de strings"
puts teste

puts teste.swapcase

puts teste.upcase

puts teste.downcase

puts teste.capitalize

puts teste.split

puts teste.ljust(14,'=')

puts teste.rjust(14,'=')

puts teste.center(14,'=')

puts "Alterando conteudo de string"
teste = "Haha . Teste"
puts teste.scan(/./)

puts teste.chop

puts teste.gsub('.',"*")

puts teste.slice(2,5)

puts "calculando tamanho"
puts teste.length

puts "conta quantas vezes existe uma letra na palavra"
puts "Digite a palavra"
palavra = gets.chop

puts "Digite a letra a ser procurada"
letra = gets.chop

	def buscar_letra(palavra,letra)
		i = 0 
		palavra.each_char do |x|
			
			 if x == letra
				 i += 1
			end	
		end

		p i
	end

buscar_letra(palavra,letra)

#procura primeira occorencia da letra informada
puts "Digite a letra a ser procurada"
letra = gets.chop

	def buscar_registro(palavra,letra)

		i = 0 
		palavra.each_char do |x|

			if x == letra
				puts i + 1
				break
			end
			i += 1
		end
	end
		
buscar_registro(palavra,letra)

#troca de caracteres

puts "Digite o caracter q deseja substituir"
carac1 = gets.chop

puts "Digite o caracter q  vai substituir o primeiro"
carac2 = gets.chop

	def troca_caracteres(palavra,carac1,carac2)

		p palavra.gsub(carac1,carac2)
	end 

troca_caracteres(palavra,carac1,carac2)		

puts "Digite um caracter para remover da palavra #{palavra}"
carac = gets.chop

p palavra.delete(carac)

#procura uma palavra dentro da string q retorna -1,0,1

puts "teste jota".casecmp("cmp")

palavra = "testedesom"

p palavra.partition("de")

palavra = "teste,de,som"

p palavra.split(;)
