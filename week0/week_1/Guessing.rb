puts "Welcome to the Number Guessing Game!"
puts "Guess a number between 1 and 100."
the_right_answer = rand(1..100)

guess_num = 0
10.times do
	guess = gets.chomp.to_i
	guess_num += 1
	if guess == the_right_answer
		puts "You won, in a mere " + guess_num.to_s + " tries."
		exit
	else
		if guess > the_right_answer then 
			puts "Nope. Too high. Guess another number."
		else
			puts "Nope. Too Low. Guess another number."
		end
	end
end
puts "Sorry, you uses up all your chances."