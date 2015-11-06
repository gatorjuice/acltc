# fortune teller by Jamie Gates

fortunes = [
	"You will have great success in a future business arrangement",
	"It's slightly unclear to me, but I see a large sum of money coming your way.",
	"I have to use the bathroom, give me a minute."
]

puts "In order to tell you your fortune, I need to know your favorite number.\nWhat is it?"

favoriteNumber = gets.chomp.to_i

if favoriteNumber <= 50 then
	puts fortunes[0]
elsif favoriteNumber.between?(51, 100) then
	puts fortunes[1] 
else
	puts fortunes[2] 
end