#!/usr/bin/ruby1.8

quadrado = Proc.new {|x| x + 2}

puts quadrado.call 3
