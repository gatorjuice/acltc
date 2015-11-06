# Division with remainder by Jamie Gates

puts "give me a number:"
dividend = gets.chomp.to_i

puts "give me a number smaller than the previous number:"
divisor = dividend + 1

until divisor <= dividend do
	divisor = gets.chomp.to_i
end

quotient = dividend / divisor
remainder = dividend % divisor

puts "#{quotient} R#{remainder}"