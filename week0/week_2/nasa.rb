puts "Begin Countdown..."
puts "How many seconds?"
seconds = gets.chomp.to_i
system('clear')
puts "T-MINUS"
until seconds == -1
	 #sleep(1) doesn't equal 1 second, why?
	puts seconds
	system "say", seconds.to_s
	sleep(0.4)
	seconds -= 1
end
puts "BLASTOFF!"
system "say", "blastoff"