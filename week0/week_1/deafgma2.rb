#deaf grandma 2

def listen
	@gma_input = gets.chomp
	think
end

def think
	if @gma_input == "BYE" and @bye_counter < 2 then
		@bye_counter += 1
		speak
	elsif
		@gma_input == "BYE" and @bye_counter == 2 then
		puts "OK, BYE!!!"
		exit
	else
		@bye_counter = 0
		speak
	end 
end

def speak
	if @gma_input != @gma_input.upcase or @gma_input == "BYE" then
		puts "HUH?!? SPEAK UP SONNY!"
		listen
	else
		puts "OH, NOT SINCE #{rand(1930..1950)}!"
		listen
	end
end

puts "HAVE YOU SEEN THE TV GUIDE???"
@bye_counter = 0
listen
