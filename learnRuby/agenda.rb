# Melissa's address
melissa_addr = {
	"street" => "23 St George St.",  
	"city"   => "Silver Spring",
	"state"  => "MD",
	"zip"    => "20465"
}

# Sandy's address
sandy_addr = {
	"street" => "324 Campus Dr.",
	"city"   => "College Park",
	"state"  => "MD",
	"zip" 	 => "23659"
}

# Joe's address
joe_addr = {
	"street" => "43 Main St. W",
	"city"   => "Washington",
	"state"  => "DC",
	"zip"    => "29847"
}

# Joe
joe = {
	"first name" => "Joe",
	"last name"  => "Smith",
	"phone"	     => "(301) 345-9837",
	"address"    => joe_addr,
	"email"	     => "joe@hotmail.com"
}

# Melissa
melissa = {
	"first name" => "Melissa",
	"last name"  => "Adams",
	"phone"      => "(301) 364-8924",  
	"address"    => melissa_addr,
	"email"    =>  "melissa@hotmail.com"
}

# Sandy
sandy = {
	"first name" => "Sandy",
	"last name"  => "Koh",
	"phone"      => "(301) 354-2975",
	"address"    => sandy_addr,
	"email"	     => "sandy@hotmail.com"		
}

addressbook = [ melissa, joe, sandy ]

#ordenando a agenda por nome e sobrenome
addressbook.sort do |personA,personB|
	personA["first name"] <=> personB["first name"]
end

#imprimindo as informações

#tutorial

addressbook.each do |person|
	firstName = person['first name']
	lastName = person['last name']
	phone = person['phone']
	email = person['email']
	
	puts "Nome: " + firstName + " " + lastName
	puts "Telefone: " + phone
	puts "Email: " + email
	puts " "

	#address
	
	street = person["address"]["street"]
	city = person ["address"]["city"]
	state = person["address"]["state"]
	zip = person["address"]["zip"]

	puts "Rua:    " + street
	puts "Cidade: " + city
	puts "Estado: " + state
	puts "CEP:    " + zip
	puts " " 
end
