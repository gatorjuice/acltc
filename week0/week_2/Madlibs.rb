# Madlibs by Jump Potato

puts "Want to hear a hilarious and wacky madlib?\nOkay give me a NAME."
name = gets.chomp
puts "now, give me a NOUN."
noun1 = gets.chomp
puts "now, give me an ADJECTIVE."
adjective = gets.chomp
puts "now, give me a NOUN"
noun2 = gets.chomp
puts "now, give me a VERB"
verb = gets.chomp

puts "ok, here goes nothing..."
puts "#{name.capitalize} went to the store and bought a #{noun1}.\nThen, the #{adjective} #{noun2} yelled, \"Quick! Go #{verb} the police!\""