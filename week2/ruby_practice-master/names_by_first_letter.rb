# Create a hash which groups names by their first letter.
# The keys are the first letter, the values are arrays of names.
def names_by_first_letter(array_of_names_input)
    array_of_names_input.group_by { |name| name[0,1] }
end
# Driver code
p names_by_first_letter(["Adam", "Charlie", "Alex"]) # should be {"A" => ["Adam", "Alex"], "C" => ["Charlie"]}
p names_by_first_letter(["Adam", "Bobby"]) # should be {"A" => ["Adam"], "B" => ["Bobby"]}
p names_by_first_letter(["Adam", "Charlie", "alex"]) # should be {"A" => ["Adam"], "a" => ["alex"], "C" => ["Charlie"]}