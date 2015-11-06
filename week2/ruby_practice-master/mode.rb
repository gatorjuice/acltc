# HARD: Find the mode (the most frequent integer) in an array of integers
def mode(array_of_input_numbers)
    frequency_of_numbers = Hash.new 0
    array_of_input_numbers.each { |number| frequency_of_numbers[number] += 1 }
    frequency_of_numbers.max_by { |k, v| v }
end
# Driver code
p mode([2, 4, 5, 2]) # should be 2
p mode([3, 4, 2, 4, 5, 2]) # should be [4, 2]
p mode([3, 4, 2, 1]) # should be [3, 4, 2, 1]
