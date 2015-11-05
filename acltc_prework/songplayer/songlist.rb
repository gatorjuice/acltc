class List
	
	attr_reader :list, :secs
	
	def initialize
		@list = []
	end

	def add_song(song)
		@list << song
	end

	def play
		@list.each do |song|
			puts "Now Playing:"
			puts "#{song.name} by #{song.artist}."
			puts "Duration: #{song.friendly_duration}"
			`say #{song.lyrics}`
		end
	end

	def shuffle
		randList = @list.shuffle
		randList.each do |song|
			puts "Now Playing:"
			puts "#{song.name} by #{song.artist}."
			puts "Duration: #{song.friendly_duration}"
			`say #{song.lyrics}`
		end
	end

	def duration
		@secs = 0
		@list.each do |song|
			@secs = @secs + song.duration
		end
		puts "This list is #{@secs/60} minutes and #{@secs%60} seconds long."
	end
end