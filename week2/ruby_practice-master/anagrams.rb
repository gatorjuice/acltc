# Determine if two strings are anagrams (case insensitive)
def anagrams?(first_word_input, second_word_input)
    first_word = first_word_input.downcase.split("").sort
    second_word = second_word_input.downcase.split("").sort
    first_word == second_word ? true : false
end

# Driver code
p anagrams?("cinema", "iceman") # should be true
p anagrams?("Cinema", "IceMan") # should be true
p anagrams?("baseball", "ballbass") # should be false