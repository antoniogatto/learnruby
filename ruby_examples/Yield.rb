#!/usr/bin/ruby1.8

def teste(x)
	yield(x)
end

puts teste(2) {|f| f * f}

def teste2(d)

	if block_given?

		yield(d)
	else

		p "nao foi passada o bloco"
	end
end

puts teste(4) {|c| c + c}



