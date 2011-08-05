#!/usr/bin/ruby1.8

#A classe pessoa herda da classe padrao do ruby, OpenStruct permitindo adicioanr os atributos em tempo de execucao

require 'ostruct'

class Pessoa < OpenStruct

end

pessoa = Pessoa.new :nome => 'Antonio'

pessoa.email = 'antonio@gmail.com'

puts pessoa.nome

puts pessoa.email
