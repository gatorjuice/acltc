numbers_that_match = []
(1...1000).each { |n| numbers_that_match << n if n%3 == 0 or n%5 == 0 }
puts numbers_that_match.inject{|sum, x| sum + x }