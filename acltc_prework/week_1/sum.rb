#Exercise 11 numbers sum

numbers = [5, 17, 2, 899, 101, 4, 66, 123, 98]
sum = 0
numbers.each do |x|
	sum = x + sum 
end
puts sum