# Method Arguments by Jamie Gates

class Calculator

	def double(number)
		number * 2
	end

	def add(number1, number2)
		number1 + number2
	end

	def multiply(number1, number2)
		number1 * number2
	end

	def subtract(number1, number2)
		number1 - number2
	end

	def divide(number1, number2)
		number1 / number2
	end

end

calc = Calculator.new

puts calc.double(gets.chomp.to_f)
puts calc.add(gets.chomp.to_f, gets.chomp.to_f)
puts calc.multiply(gets.chomp.to_f, gets.chomp.to_f)
puts calc.subtract(gets.chomp.to_f, gets.chomp.to_f)
puts calc.divide(gets.chomp.to_f, gets.chomp.to_f)


=begin

For the answer to number two the existing code is:

def print_message(message)
  puts message
end	

that would need to change to:

def print_message(purple_hippo)
	puts purple_hippo
end

it doesn't matter what variable you declare to hold the argument, it just needs to be consistent and we wouldn't
need to modify the way we call it, because Ruby is keeping all those variables in check for us.

=end