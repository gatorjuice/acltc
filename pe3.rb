# Prime divisors

@prime = []

def is_prime(number)
  divisors = []
  (1..number).each { |n| divisors << n if number%n == 0 }
  if divisors.length == 2 || divisors.length == 1
    @prime << number
  end
end

puts "Find all the prime number between 1 and...?"

max_num = gets.chomp.to_i

(1..max_num).each { |n| is_prime(n) } 

p @prime