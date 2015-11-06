# ACLTC Exercise #7 - Pop Quiz
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
	if response.upcase === "Y" then 
		clearscreen
		puts "OK, let's go."
		mainquiz
	elsif response.upcase === "N" then 
		puts "See ya later."
		exit
	else 
		puts "Invalid Response, please start over."
		mainmenu			
	end	
end

def mainquiz
	#set vaiables for scoring
	totalquestions = 3
	correct = 0
	#q1
	q1answer = 1
	puts "Choose an answer to the questions" 
	puts "by typing the number to left of the"
	puts "chosen answer and pressing 'Return'"
	puts ""
	puts ""
	puts "Question 1:"
	puts "What is the capital of Montana?"
	puts "1 - Helena"
	puts "2 - Stafford"
	puts "3 - Justice"
	puts "4 - Buxton"
	q1guess = gets.chomp.to_i
	if q1guess === q1answer then
		correct = correct + 1
		lastq = "Correct!"
	else
		lastq = "Incorrect"
	end	
	clearscreen
	#q2
	q2answer = 4
	puts lastq
	puts "Question 2:"
	puts "How tall in feet is Denali (Mt. McKinley)?"
	puts "1 - 13,890'"
	puts "2 - 10,435'"
	puts "3 - 28,893'"
	puts "4 - 20,322'"
	q2guess = gets.chomp.to_i
	if q2guess === q2answer then
		correct = correct + 1
		lastq = "Correct!"
	else
		lastq = "Incorrect"
	end	
	clearscreen
	#q3
	q3answer = 3
	puts lastq
	puts "Question 3:"
	puts "How many sqaure miles is the area of Chicago?"
	puts "1 - 98 mi^2"
	puts "2 - 162 mi^2"
	puts "3 - 234 mi^2"
	puts "4 - 301 mi^2"
	q3guess = gets.chomp.to_i
	if q3guess === q3answer then
		correct = correct + 1
		lastq = "Correct!"
	else
		lastq = "Incorrect"
	end
	clearscreen
	puts lastq	
	puts "You got " + correct.to_s + " out of " + totalquestions.to_s + " questions right, " + @user + "."
	exit
end

clearscreen
mainmenu