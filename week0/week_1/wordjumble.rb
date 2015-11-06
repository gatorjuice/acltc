#Excercise 10 word jumble

puts "what word would you like to break apart and shuffle?" 
words = gets.chomp.to_s.split("")
puts words.shuffle.join