puts "how many recipes can sam cook?"
recipes = gets.chomp.to_i
puts "can he make crepes? Please answer yes or no"
crepes = gets.chomp

languages = []
puts "Enter the languages Sally can speak. Hit enter when done."
language = " "
until language == "done"
  language = gets.chomp
  languages << language
end

num_languages = languages.length

if recipes > 10 and num_languages > 5
    puts "they should date"
elsif crepes == "yes" or languages.include?("french")
    puts "they should marry"
else 
    puts "they shouldn't date"
end



# if recipes > 10 && num_languages > 5
#   puts "They should date."
# elsif crepes == "yes" and languages.contains?("french")
#   puts "They should get married." 
# end