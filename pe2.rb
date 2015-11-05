n = 0
n2 = 1
numbers = []
until n >= 4000000 do
  numbers << n
  numbers << n2
  n = n2 + n
  n2 = n + n2
end
evens = []
numbers.each {|n| evens << n if n.even? }
puts evens.inject{|sum, x| sum + x }