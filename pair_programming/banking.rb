system('clear')

class Person

  attr_accessor :person, :first_name, :last_name, :email, :acct_number

  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @acct_number = rand(9999999999).to_s.center(10, rand(9).to_s).to_i
  end

end

class People

  attr_reader :people

  def initialize
    @people = []
  end

  def add_person(person)
    @people << person
  end

  def show_all
    @people.each { |person| 
      puts person.first_name
      puts person.last_name
      puts person.email
      puts person.acct_number
    }
  end

end

group = People.new

5.times do
  print "FIRST NAME: "
  first_name = gets.chomp
  print "LAST NAME: "
  last_name = gets.chomp
  print "EMAIL: "
  email = gets.chomp
  group.add_person(Person.new(first_name, last_name, email))
end

group.show_all



# old way using procedural programming

# people = []
# 5.times {
#   puts "Enter the person's first name:"
#   first_name = gets.chomp
#   puts "Enter the person's last name:"
#   last_name = gets.chomp
#   puts "Enter the person's email:"
#   email = gets.chomp
#   until email.include?("@") && email[-4..-1] == ".com" && !email.include?(" ")
#     puts "#{email} is not a valid email address. Enter a valid email address:"
#     email = gets.chomp
#   end
#   person = Person.new(first_name, last_name, email)
#   puts "USER# #{acct_number} ADDED."
# }

# people.each { |person|
#   puts "FIRST NAME: #{person[:first_name]}"
#   puts "LAST NAME: #{person[:last_name]}"
#   puts "EMAIL: #{person[:email]}"
#   puts "ACCOUNT NUMBER: #{person[:acct_number]}"
# }

# puts "Enter an account number to look up:"
# account_lookup = gets.chomp.to_i
# person = people.select { |person| person[:acct_number] == account_lookup }

# puts "FIRST NAME: #{person[0][:first_name]}"
# puts "LAST NAME: #{person[0][:last_name]}"
# puts "EMAIL: #{person[0][:email]}"
# puts "ACCOUNT NUMBER: #{person[0][:acct_number]}"