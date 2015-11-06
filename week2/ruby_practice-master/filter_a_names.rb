# Filter an array of names to only contain names that start with the letter "A".
def filter_a_names(names_input_array)
    names_starting_with_a = []
    names_input_array.each { |name| names_starting_with_a << name if name[0] == "A" }
    names_starting_with_a
end
# Driver code
p filter_a_names(["Bob", "Charlie", "Angel"]) # should be ["Angel"]
p filter_a_names(["Bob", "Charlie", "Bangel"]) # should be []
p filter_a_names(["Adam", "Charlie", "Adam"]) # should be ["Adam", "Adam"]