require "Person.rb"
# classe endereços
class Address

	attr_accessor :street, :city, :state, :zip

	def initialize

		@street = @city = @state =  @zip = ""

	end

	def to_s
		puts "Rua: " + @street + "\n" + \
		     "Cidade: " + @city + "\n" + \
		     "Estado: " + @state + "\n" + \
		     "CEP: " + @zip + "\n"

	end							
		
end			
