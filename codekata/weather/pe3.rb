# Prime factorization
prime_numbers = []
not_prime_numbers = []
(1...600851475143).each {|n| prime_numbers << n if n.prime? else not_prime_numbers << n }