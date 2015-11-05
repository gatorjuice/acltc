require_relative "songlist"
require_relative "song"

song1 = Song.new("A guy and his horse", "Hank Business", 532, "Theyre once was a man who sold his horse. another who bought it from him.")
song2 = Song.new("a horse, a guy and some other people", "Hank Business Jr", 234, "horse and the other people. Always looking at my fine horse.")
song3 = Song.new("Where did my horse end up?", "Bank Husiness", 8765, "Just looking for my horse all the time. My truck is in the shop but my horse is feeling fine")

list = List.new
list.add_song(song1)
list.add_song(song2)
list.add_song(song3)

p song3.name
p song3.artist
p song3.duration
p song3.lyrics

song1.play

puts song2.friendly_duration

list.play

list.shuffle

puts list.duration