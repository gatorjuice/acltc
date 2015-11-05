# Creating Methods by Jamie Gates

class Dog
	def speak
		puts "Woof!"
	end
	def walk
		puts "your dog enjoyed the walk."
	end
end

class Stein
	def fill
		@beerGlass = Array.new
		33.times do |oz|
			oz = "one ounce of beer"
			@beerGlass << oz
		end
		puts @beerGlass
	end
	def drink
		@beerGlass = ["empty glass"]
		puts @beerGlass
	end
end

class Trophy
	def polish
		puts "What a nice looking trophy."
	end
	def bragAbout
		puts "I got this for being a good bowler. It's no big deal."
	end
end

class Dream
	def wake
		puts "Time to wake up."
	end
	def sleep
		puts "uh oh"
	end
end

class Checking
	@@balance = 0
	def deposit
		@@balance += 1000
		puts @@balance
	end
	def withdrawl
		@@balance -= 1000
		puts @@balance
	end
	def balance
		puts @@balance
	end
end



hound = Dog.new

glass = Stein.new

prize = Trophy.new

nightmare = Dream.new

bank = Checking.new



puts hound.speak
puts hound.walk

puts glass.fill
puts glass.drink

puts prize.polish
puts prize.bragAbout

puts nightmare.wake
puts nightmare.sleep

puts bank.deposit
puts bank.withdrawl
puts bank.balance