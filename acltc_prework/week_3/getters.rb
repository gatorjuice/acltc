# Getters by Jamie Gates

class Person
	
	attr_reader :person
	
	def initialize
		@person = {"name" => "", "age" => 0, "occupation" => "", "mood" => ""}
		puts "What is this person's name?"
		@person["name"] = gets.chomp
		puts "How old are they?"
		@person["age"] = gets.chomp.to_i
		puts "What do they do for a living?"
		@person["occupation"] = gets.chomp
		puts "How are they feeling today?"
		@person["mood"] = gets.chomp
	end
	
end

person = Person.new

puts "which info would you like to get?"
puts 
puts "name"
puts "age"
puts "occupation"
puts "mood"

qry = gets.chomp

puts person.person[qry]
