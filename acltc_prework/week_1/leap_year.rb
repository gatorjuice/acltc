# leap year

puts "Enter starting year:"
start_year = gets.chomp.to_i

until start_year >= 0 and start_year < 3000 do
	puts "Enter a valid year (0 to 3000):"
	start_year = gets.chomp.to_i
end

puts "Enter ending year:"
end_year = gets.chomp.to_i

until end_year <= 3000 and end_year > start_year do
	puts "Enter a valid year (#{start_year + 1} to 3000):"
	end_year = gets.chomp.to_i
end

year_span = end_year - start_year

years_in_span = []

year_span.times do
	years_in_span << start_year + 1
	start_year += 1
end

leap_years = []

years_in_span.each do |year|
	if year%4 == 0 and year%100 != 0 then
		leap_years << year
	elsif year%4 == 0 and year%400 == 0 then
		leap_years << year	
	end
end

puts leap_years