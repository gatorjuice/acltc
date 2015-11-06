puts "I can alphabetize words for you."
puts "Just press return when you are done entering words."

word = gets.chomp
words = []

until word == "" do
    words << word
    word = gets.chomp
end

temp = []
until words.length == 0 do
	temp << words.min
	words.delete(words.min)
end
words = temp
puts words