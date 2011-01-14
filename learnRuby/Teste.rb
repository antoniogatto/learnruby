require "Address.rb"
require "Person.rb"
require "AddressBook.rb"

sandyAddress = Address.new
sandyAddress.street = "Arnaldo Busato, 467"
sandyAddress.city = "São José"
sandyAddress.state = "Paraná"
sandyAddress.zip = "83045-000"

sandy = Person.new
sandy.firstName = "Sandy"
sandy.lastName = "Junior"
sandy.phone = "(41) 3280-1486"
sandy.email = "sandy@hotmail.com"
sandy.address = sandyAddress

# testando os métodos to_s das classes
puts sandy.to_s
sandyAddress.to_s

addPerson = AddressBook.new
addPerson.add("Antonio")
addPerson.add("José")
addPerson.remove("Antonio")
