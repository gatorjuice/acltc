# Find the common element between two arrays.
def common_element(array_input_1, array_input_2)
    array1 = array_input_1
    array2 = array_input_2
    common_elements = []
    array1.each { |item| common_elements << item if array2.include?(item) }
    common_elements
end
# Driver code
p common_element([2, 3, 2], [1, 9, 3]) # should be 3
p common_element(["a", "fs"], ["s", "f", "a"]) # should be "a"
p common_element([2, 1], [32, 21, 3]) # should be nil