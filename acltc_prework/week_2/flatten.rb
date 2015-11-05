# Flatten by Jamie Gates

array = [["a", "b", "z"], ["c", "d"], ["e", "f"], ["g", "h", "i", "j"]]

newArray = []

array.each do |ittyBittyArray|
	ittyBittyArray.each do |letter|
		newArray << letter
	end
end

p newArray