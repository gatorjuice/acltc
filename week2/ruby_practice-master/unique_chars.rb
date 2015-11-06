# Determine if a string is composed of all unique characters (case insensitive)
def unique_chars?(string_input)
    string_input.downcase.split('').uniq.length == string_input.downcase.split('').length ? true : false
end
# Driver code
p unique_chars?("wonderful") # should be true
p unique_chars?("hello") # should be false
p unique_chars?("helLo") # should be false