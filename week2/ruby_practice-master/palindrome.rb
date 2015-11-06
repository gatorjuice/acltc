# Determine if a string is a palindrome (case insensitive)
def palindrome?(input_word)
    input_word.downcase == input_word.downcase.reverse ? true : false 
end
# Driver code
p palindrome?("kayak") # should be true
p palindrome?("KayAk") # should be true
p palindrome?("whamo") # should be false