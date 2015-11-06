# letters by Jamie Gates

letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]

letters.each_with_index do |letter, index|
	next if index.odd?
	puts letter
end