# Instance Variables by Jamie Gates

class Person

	def new
		@person = {
			"name" => "Unknown",
			"age" => "Unknown",
			"occupation" => "Unknown",
			"mood" => "Unknown"
		}
	end

	def name
		puts "What is this person's name?"
		@person["name"] = gets.chomp
	end

	def age
		puts "How old are they?"
		@person["age"] = gets.chomp
	end

	def occupation
		puts "What do they do for a living?"
		@person["occupation"] = gets.chomp
	end

	def mood
		puts "How are they feeling today?"
		@person["mood"] = gets.chomp
	end

	def summary
		return "#{@person["name"]} is a #{@person["age"]} year old #{@person["occupation"]}. They are in a very #{@person["mood"]} mood tonight,"
	end

end

person = Person.new

person.new
person.name
person.age
person.occupation
person.mood
puts person.summary