#!/usr/bin/ruby1.8

#E.G modules

module MeusPatches

	def self.included(base)
		base.send(:extend, ClassMethods)
		puts "Module MeusPaches Incluso na classe #{base.name}"
	end

	def metodo_de_instancia

		"sou um metodo de instancia"

	end

	module ClassMethods
		def self.extended(base)
		puts"Module MeusPatches::ClassMethods extendido na classe #{base.name}"
		end

		def metodo_da_classe

			"sou um metodo da classe"
		end
	end
end

class Pessoa

end

Pessoa.send(:include, MeusPatches)

pessoa = Pessoa.new

pessoa.metodo_de_instancia

Pessoa.metodo_da_classe	
