# Instance Variables 3 by Jamie Gates

class Person
	
	attr_reader :name, :age, :occupation, :mood
	
	def initialize(name, age, occupation, mood)
		@name = name
		@age = age
		@occupation = occupation
		@mood = mood
	end
	
	def change_name(name)
		@name = name
	end
	
	def change_age(age)
		@age = age
	end
	
	def change_occupation(occupation)
		@occupation = occupation
	end
	
	def change_mood(mood)
		@mood = mood
	end
	
end

def add_person
puts "CREATE-A-PERSON"
puts "give me the person's name:"
name = gets.chomp
puts "give me the person's age:"
age = gets.chomp
puts "give me the person's occupation:"
occupation = gets.chomp
puts "give me the person's mood:"
mood = gets.chomp

person = Person.new(name, age, occupation,mood)

puts "#{person.name} is a #{person.age} year old #{person.occupation} in a #{person.mood} mood."

person.change_name("Jason")
person.change_mood("bad")

puts "#{person.name} is a #{person.age} year old #{person.occupation} in a #{person.mood} mood."