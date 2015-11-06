# Instance Variables by Jamie Gates

class Person
	def initialize
		@person = {"name" => "", "age" => 0, "occupation" => "", "mood" => ""}
		name
		age
		occupation
		mood
		puts summary
	end
	def name
		puts "What is this person's name?"
		@person["name"] = gets.chomp
	end
	def age
		puts "How old are they?"
		@person["age"] = gets.chomp.to_i
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
		"#{@person["name"]} is a #{@person["age"].to_s} year old #{@person["occupation"]}. They are in a very #{@person["mood"]} mood tonight,"
	end
end


class Car
	def initialize
		puts "engines"
	end
end

class Clock
	def initialize
		puts Time.new 
	end
end

class Pizza
	def initialize
		puts "yummy"	
	end
end
person = Person.new
car = Car.new
watch = Clock.new
x = Pizza.new