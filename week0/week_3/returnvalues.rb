# Return Values by Jamie Gates

class FavoriteNumber

	def randnumber
		rand(100)
	end

	def times2
		randnumber * 2
	end

	def minus35
		times2 - 35
	end
	
end

number = FavoriteNumber.new

puts number.minus35