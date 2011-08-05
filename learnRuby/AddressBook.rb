require 'Address.rb'
require 'Person.rb'

class AddressBook

	def initialize

		#Empty array
		@persons = []

	end


	def add(person)
	
		@persons = [person]
	 	@persons = @persons.sort { |a, b| organizar(a,b) }
		puts "Add Ok"
	end

	def remove(person)

		@persons.delete(person)
		puts "Remove Ok"
	end
	
	private
	def organizar(a,b)
	
		if a.firstName == b.firstName
			a.lastName <=> b.lastName
		else
			a.firstName <=> b.firstName
		
		end
	end

	public
	def each

		@persons.each { |p| yield p }

	end

	def eachAddress

		@persons.each {|p| yield p.address }  	
	end

end
	

