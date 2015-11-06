#Exercise 9 words array
system("clear")
puts "Welcome to the Words Array Builder"
words = []
4.times do
	puts "What word would like to add?"
	words << gets.chomp.to_s	
end
puts "Choose a number between 1 and 4"
response = gets.chomp.to_i
puts words[(response - 1)]