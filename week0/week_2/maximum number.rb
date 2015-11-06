# maximum number by Jamie Gates

@numbers = []

def add
	input = gets.chomp
	if input.upcase == "DONE" then
		maximum
	else
		@numbers << input.to_i
		add
	end
end

# def maximum
# 	@numbers.each do |x|
# 		until @numbers.length == 1 do
# 			x = @numbers.min
# 			@numbers.delete(x)
# 		end
# 	end
# 	puts @numbers[0]
# end

def maximum
	max_value = @numbers.first
	@numbers.each do |n|
		if n > max_value then
			max_value = n 
		end
	end
	puts "the largest number was #{max_value}."
end


add

# i feel like this is the first problem that's given me
# a lot of pause. Is there a better way to write this
# that doesn't involve a until loop and that uses
# comparators instead of the min method?