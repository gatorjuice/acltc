#Full Name assignment

system("clear")
puts "__________________"
puts "|                |"
puts "|    Jamie's     |"
puts "|  EXTRA FANCY   |"
puts "|  NAME PUTTER-  |"
puts "|   TOGETHERER   |"
puts "|________________|"
puts "Press enter to continue..."
gets.chomp
system("clear")
puts "Why don't you go ahead and type in your first name?"
puts "You don't gotta capitalize it er nuthin."
first_name = gets.chomp.to_s
puts "OK...I suppose that counts."
puts "Now give me your middle name"
mid_name = gets.chomp.to_s
if mid_name.length == 1 then
	puts "Worried about me figuring out your identity, huh?"
	puts "That's fine well work with the initial '"+ mid_name.capitalize + "'."
else
	puts "That's the worst middle name I've ever heard."
end
puts "Anyway, give me your last name, NOW!"
last_name = gets.chomp.to_s
puts "great, ready to do this business? (press enter)"
num_times = rand(1..1000)
i = num_times - 1
num_times.times do
	system('clear')
	puts "ANALYZING POSSIBLE COMBINATIONS FOR MOST FLATTERING..."
	puts i.to_s + " Combinations left to try"
	i -= 1
end

puts "OK Here it is:"
puts first_name.capitalize + " " + mid_name.capitalize + " " + last_name.capitalize 