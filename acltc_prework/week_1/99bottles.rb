#99 @Bottles

@bottles = 99

def check_bottles
	if @bottles == 1
		@bot = "bottle"
	else
		@bot = "bottles"
	end
end

check_bottles

until @bottles == 0 do
	check_bottles
	puts @bottles.to_s + " " + @bot + " of beer on the wall."
	puts @bottles.to_s + " " + @bot + " of beer."
	puts "take 1 down, pass it around"
	@bottles -= 1
	check_bottles
	puts @bottles.to_s + " " + @bot + " of beer on the wall."
	puts ""
end