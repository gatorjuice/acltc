sum_of_squares = 0
(1..100).each { |n| sum_of_squares = sum_of_squares + n**2 }
square_of_sum = 0
(1..100).each { |n| square_of_sum = square_of_sum + n }
square_of_sum = square_of_sum**2
puts square_of_sum - sum_of_squares