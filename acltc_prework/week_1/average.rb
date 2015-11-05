# average by Jamie Gates

@numbersToAverage = []

def add
	input = gets.chomp
	if input.upcase == "DONE" then
		average
	else
		@numbersToAverage << input.to_f
		add
	end
end

def average
	sum = @numbersToAverage.inject{|su,x| su + x }
	average = sum / @numbersToAverage.length
	puts "#{@numbersToAverage} averages out to #{average}"		
end

add