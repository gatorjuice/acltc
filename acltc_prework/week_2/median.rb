# median by Jamie Gates

@numbers = []

def add_numbers
	input = gets.chomp
	if input.upcase == "DONE" then
		median
	else
		@numbers << input.to_i
		add
	end
end

def median
	if @numbers.length.odd? == true then
		@numbers = @numbers.sort!
		puts @numbers[@numbers.length/2]
	else
		@numbers = @numbers.sort!
		puts @numbers[@numbers.length/2 - 1] + @numbers[@numbers.length/2].to_f / 2
	end
end


add_numbers