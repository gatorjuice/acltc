# Pig Latin by Jamie Gates

def main
puts "I'm your new pig latin generator\nGive me something to translate:"
phrase = gets.chomp.split(" ")
pigPhrase = []
phrase.each do |wrd|
	nwrd = wrd.slice!(0, 1)
	pigPhrase << "#{wrd}#{nwrd}ay "
end
p pigPhrase.join
main
end

main