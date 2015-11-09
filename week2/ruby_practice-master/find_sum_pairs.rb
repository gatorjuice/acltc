# HARD: Find all the pairs in an array that sum up to a given number.
def find_sum_pairs(array_of_numbers_to_sum, add_up_to)
    array_of_pairs = []
    array_of_numbers_to_sum.each do |n|
        x = add_up_to - n
        if x + n == add_up_to && array_of_numbers_to_sum.include?(x) && n != x
           array_of_pairs << [x, n] 
        end
    end
    num_to_keep = array_of_pairs.length / 2
    num_to_delete = array_of_pairs.length - num_to_keep
    array_of_pairs.pop(num_to_delete).sort
end

# Driver code
p find_sum_pairs([0, 1, 2, 3, 4, 5], 8) # should be [[3, 5]]
p find_sum_pairs([0, 1, 2, 3, 4, 5], 4) # should be [[0, 4], [1, 3]]
p find_sum_pairs([0, 1, 2, 3, 4, 5], 0) # should be []