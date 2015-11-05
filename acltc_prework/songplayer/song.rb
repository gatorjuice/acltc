class Song

	attr_reader :name, :artist, :duration, :lyrics

	def initialize(name, artist, duration, lyrics)
		@name = name
		@artist = artist
		@duration = duration
		@lyrics = lyrics
	end

	def play
		`say #{@lyrics}`
	end

	def friendly_duration
		"#{@duration/60} Minutes and #{@duration%60} Seconds"
	end

end