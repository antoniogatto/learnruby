#!/usr/bin/ruby1.8

#E.G Class Ruby

class Pessoa

	attr_reader :email
	attr_writer :email
	attr_accessor :nome

	#ruby permite atribuir um valor padrao para a variavel, caso ela nao seja fornecida na hora de criar o m√todo
	def initialize(nome,email="")
		@nome,@email = nome,email
	end

	def nome 
		@nome
	end

	def nome=(valor)
		@nome = valor
	end

	#metodo usado para tratar a chamada de um metodo inexistente na classe
	def method_missing(metodo, *args)
		
		puts "Nao foi encontrado o metodo #{metodo}. Os argumentos foram: " 
	args.each {|arg| puts arg }
	
	end

	#maneira de reabrir a propria classe para escrever todos os m√©todos localmente ali. Usando self, o metodo esta disponivel apenas para a Classe Pessoa e nao para as sua instancias
	class << self

		def metodo_da_classe
			"Sou um metodo da classe"
		end
	end

	def metodo_de_instancia
		"Sou um metodo de instancia"
	end

	private

	def metodo_private

		puts "Acessando um metodo privado"
	end
end

pessoa = Pessoa.new("Antonio") 

puts pessoa.nome

puts pessoa.metodo_da_classe

puts pessoa.metodo_de_instancia

puts pessoa.metodo_de_classe

puts pessoa.metodo_private

puts pessoa.send(:metodo_private)
