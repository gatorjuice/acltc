# ACLTC Exercise #7 - Pop Quiz

=begin
A way to do this would be as demonstrated here
by using an array to hold the questions, answer index, and possible answers
=end
# just trying out changes on test branch by adding more teext here
@questions = [
	["What is the capital of Montana?", 2, "1 - Helena", "2 - Stafford", "3 - Justice", "4 - Buxton"],
	["How tall in feet is Denali (Mt. McKinley)?", 5, "1 - 13,890'", "2 - 10,435'", "3 - 28,893'", "4 - 20,322'"],
	["How many sqaure miles is the area of Chicago?", 4, "1 - 98 mi^2", "2 - 162 mi^2", "3 - 301 mi^2", "4 - 234 mi^2"]
]

def clearscreen
	system("clear")
end

def mainmenu
	puts "Welcome to the Quiz"
	puts "what's your name"
	@user = gets.chomp.to_s
	clearscreen
	puts "OK, " + @user + ". Are you ready to start the quiz?"
	puts "enter Y for yes or N for no."
	response = gets.chomp
	if response.upcase == "Y" then 
		clearscreen
		puts "OK, let's go."
		mainquiz
	elsif response.upcase == "N" then 
		puts "See ya later."
		exit
	else 
		puts "Invalid Response, please start over."
		mainmenu			
	end	
end

def mainquiz
	num_of_questions = @questions.count
	correct_questions = 0
	@questions.each do |question|
		correct_answer = question[1]
		puts "#{question[0]}"
		puts ""
		puts "#{question[2]}"
		puts "#{question[3]}"
		puts "#{question[4]}"
		puts "#{question[5]}"
		answer = gets.chomp.to_i + 1
		if answer == question[1] then
			correct_questions += 1	
			last_answer = "Correct!!!"
		else
			last_answer = "Incorrect."
		end
		puts last_answer
		sleep(3)
		clearscreen

	end
	puts "You got #{correct_questions} out of #{num_of_questions} right!"
end

clearscreen
mainmenu