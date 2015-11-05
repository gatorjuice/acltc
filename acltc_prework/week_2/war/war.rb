system("clear")
require_relative  "deck"
require_relative "card"

deck = Deck.new

Card.new("2", "Hearts", 1)
Card.new("3", "Hearts", 2)
Card.new("4", "Hearts", 3)
Card.new("5", "Hearts", 4)
Card.new("6", "Hearts", 5)
Card.new("7", "Hearts", 6)
Card.new("8", "Hearts", 7)
Card.new("9", "Hearts", 8)
Card.new("10", "Hearts", 9)
Card.new("Jack", "Hearts", 10)
Card.new("Queen", "Hearts", 11)
Card.new("King", "Hearts", 12)
Card.new("Ace", "Hearts", 13)
Card.new("2", "Spades", 1)
Card.new("3", "Spades", 2)
Card.new("4", "Spades", 3)
Card.new("5", "Spades", 4)
Card.new("6", "Spades", 5)
Card.new("7", "Spades", 6)
Card.new("8", "Spades", 7)
Card.new("9", "Spades", 8)
Card.new("10", "Spades", 9)
Card.new("Jack", "Spades", 10)
Card.new("Queen", "Spades", 11)
Card.new("King", "Spades", 12)
Card.new("Ace", "Spades", 13)
Card.new("2", "Diamonds", 1)
Card.new("3", "Diamonds", 2)
Card.new("4", "Diamonds", 3)
Card.new("5", "Diamonds", 4)
Card.new("6", "Diamonds", 5)
Card.new("7", "Diamonds", 6)
Card.new("8", "Diamonds", 7)
Card.new("9", "Diamonds", 8)
Card.new("10", "Diamonds", 9)
Card.new("Jack", "Diamonds", 10)
Card.new("Queen", "Diamonds", 11)
Card.new("King", "Diamonds", 12)
Card.new("Ace", "Diamonds", 13)
Card.new("2", "Clubs", 1)
Card.new("3", "Clubs", 2)
Card.new("4", "Clubs", 3)
Card.new("5", "Clubs", 4)
Card.new("6", "Clubs", 5)
Card.new("7", "Clubs", 6)
Card.new("8", "Clubs", 7)
Card.new("9", "Clubs", 8)
Card.new("10", "Clubs", 9)
Card.new("Jack", "Clubs", 10)
Card.new("Queen", "Clubs", 11)
Card.new("King", "Clubs", 12)
Card.new("Ace", "Clubs", 13)

p1deck = Deck.new
p2deck = Deck.new

deck.shuffle

until deck.cards_left == 0 
	card1 = deck.deal
	p1Card.new(card1.number, card1.suit, card1.value)
	card2 = deck.deal
	p2Card.new(card2.number, card2.suit, card2.value)
end

until p1deck.cards_left == 0 or p2deck.cards_left == 0 do
 	
	p1card = p1deck.deal
	p2card = p2deck.deal

	puts "player one played the #{p1card.number} of #{p1card.suit}"
	puts "player two played the #{p2card.number} of #{p2card.suit}"

	if p1card.value > p2card.value then
		p1Card.new(p1card.number, p1card.suit, p1card.value)
		p1Card.new(p2card.number, p2card.suit, p2card.value)
	elsif p2card.value > p1card.value then
		p2Card.new(p1card.number, p1card.suit, p1card.value)
		p2Card.new(p2card.number, p2card.suit, p2card.value)
	elsif p1card.value == p2card.value then
		puts "WAAAR!!!"
		p1warpile = [p1card, p1deck.deal, p1deck.deal]
		p1warpile.each {|card| puts "Player 1 plays #{card.number} of #{card.suit}"}
		p2warpile = [p2card, p2deck.deal, p2deck.deal]
		p2warpile.each {|card| puts "Player 2 plays #{card.number} of #{card.suit}"}
		
		if p1warpile[2].value > p2warpile[2].value then
			puts "player 1 wins the war"
			p1warpile.each {|card| p1Card.new(card.number, card.suit, card.value)}
			p2warpile.each {|card| p1Card.new(card.number, card.suit, card.value)}
		else
			puts "player 2 wins the war"
			p1warpile.each {|card| p2Card.new(card.number, card.suit, card.value)}
			p2warpile.each {|card| p2Card.new(card.number, card.suit, card.value)}
		end
		gets.chomp
	end

	puts "Player 1 Deck Size: #{p1deck.cards_left}"
	puts "Player 2 Deck Size: #{p2deck.cards_left}"
	gets.chomp
end

if p1deck.cards_left == 0
	puts "player 2 wins"
else
	puts "player 1 wins"
end

