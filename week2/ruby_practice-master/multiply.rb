# Write a method that multiplies two positive integers without using *
def multiply(x, y)
    sum = 0
    x.times { sum = sum + y }
    sum
end

# Driver code
p multiply(3, 4) # should be 12
p multiply(0, 2) # should be 0
p multiply(1, 9) # should be 9