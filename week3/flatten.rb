# flatten 

@nested_arrays = []
@flattened_array = []

def flatten(input)
  input.each do |item|
    if item.class == Array
      flatten(item)
    else
      @flattened_array << item
    end
  end
  @flattened_array
end

p flatten([1, 2, 3, ["hush", ["horse", 6, "elephant"] , 7]])