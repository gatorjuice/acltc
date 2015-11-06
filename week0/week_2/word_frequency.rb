# word frequency by Jamie Gates

wordFrequency = {}

puts "enter 10 words, be sure to use duplicates."

10.times do |x|
	x = gets.chomp
	if wordFrequency.has_key?(x) then
		wordFrequency[x] += 1
	else
		wordFrequency[x] = 1
	end
end

puts "#{wordFrequency.max_by{|key, value| value}[0]} was the most common word"