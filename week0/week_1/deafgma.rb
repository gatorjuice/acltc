#deaf grandma
puts "THAT MAURY POVICH IS ONE GOOD CATCH!"

gma_input = gets.chomp

until gma_input == gma_input.upcase do
	puts "HUH?!?"
	gma_input = gets.chomp
end

puts "OH, NOT SINCE #{rand(1930..1950)}!"