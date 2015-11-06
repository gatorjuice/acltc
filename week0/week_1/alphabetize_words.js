puts "I can alphabetize words for you."
puts "Just press return when you are done entering words."

word = gets.chomp
words = []

until word == "" do
words << word
word = gets.chomp
end

puts "using sort method:"
puts words.sort
puts
puts "and without sort method:"
sortedWords = []

until words.length == 0 do
wrd = words.min
sortedWords << wrd
words.delete(wrd)
end

puts sortedWords

