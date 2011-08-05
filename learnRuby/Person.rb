require "Address.rb"
#classe pessoa
class Person

	attr_accessor :firstName, :lastName, :phone, :email, :address

	def initialize

	@firstName = @lastName = @phone = @email = ""
	@address = Address.new 
	
	end

	def fullNamePerson

		name = firstName  + " " + lastName

	end
	#método para imprimir as informações
	def to_s

		puts "Nome: " + fullNamePerson + "\n " + \
		     "Telefone: " + @phone + "\n" + \
		     "Email: " + @email + "\n"  
	end
		
end

