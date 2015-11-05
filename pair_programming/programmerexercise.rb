
#system('clear')


# person = { name: "Alejandra Jiminez", age: 34, occupation: "programmer", company: "Google" }

# puts "#{person[:name]} is a #{person[:age]} year old #{person[:occupation]} who works at #{person[:company]}"

class Person

  attr_accessor :name, :age, :occupation, :company

  def initialize(input)
    @name = input[:name] || "unknown"
    @age = input[:age] || "unknown"
    @occupation = input[:occupation] || "unknown"
    @company = input[:company] || "unknown"
  end

  def terminate_employment
    @occupation = "unemployed person"
    @company = "nowhere"
  end

end

person = Person.new age: 34, occupation: "programmer", company: "Google", name: "Alejandra Jiminez"

puts "#{person.name} is a #{person.age} year old #{person.occupation} who works at #{person.company}"

person.name = "James Gates"

person.occupation = "Broom Pusher"

puts "#{person.name} is a #{person.age} year old #{person.occupation} who works at #{person.company}"

person = Person.new({company: "Twitter", name: "Alejandra", age: 33})