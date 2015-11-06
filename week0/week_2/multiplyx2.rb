# multiply by 2 by Jamie Gates

i = 1
puts "using 'while'"
while i < 100000 do
	puts i
	i *= 2
	sleep(0.1)
end
puts "using 'until'"
i = 1

until i > 100000 do
	puts i
	i *= 2
	sleep(0.1)
end