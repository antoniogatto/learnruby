#!/usr/bin/ruby1.8

dic = {"car" => "carro", "table" => "mesa", "mouse" => "rato"}
teste = {"ball" => "bola"}
teste2 = {"car" => "automovel"}
puts dic.class

puts dic["car"]

puts dic["mouse"]

puts ".merge => Mescla os hash's sem destruir o original"
puts dic.merge!(teste)

puts ".merge! => Mescla os hashs e destroy a lista original"

puts "Mostrando somente as keys"
puts dic.keys

puts "Mostrando só os valors"
puts dic.values

puts "Mostrando a key a a chave junto"

dic.keys.each do |chave|
	puts "#{chave} => #{dic[chave]}"
end 

puts "pegando determinado valor"
puts dic.values_at("car","mouse")

puts "Mesclando hash's"
teste3 = dic.merge(teste2)
puts teste3

puts "Combinando hash"
dic.update(teste2)	
puts dic

puts "Invertendo o Hash"
puts dic.invert
