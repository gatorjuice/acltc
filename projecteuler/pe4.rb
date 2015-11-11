array_products = []
(100..999).each do |n|
  (100..999).each { |i| array_products << n * i }
end
palindromes = []
array_products.each { |p| palindromes << p if p.to_s.reverse == p.to_s }
puts palindromes.max