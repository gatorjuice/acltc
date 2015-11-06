# Remove any duplicate letters from a string.
def remove_duplicate_letters(input_string)
    input_string.split("").select { |letter| input_string.count(letter) == 1 }.join
end
# Driver code
p remove_duplicate_letters("hello") # should be "heo"
p remove_duplicate_letters("this is a test") # should be "hae"
p remove_duplicate_letters("aabbcc") # should be ""