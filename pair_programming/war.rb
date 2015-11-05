class Card

  attr_reader :number, :suit, :value

  def initialize(number, suit, value)
    @number = number
    @suit = suit
    @value = value
  end

end

class Deck
  
  def initialize
    @deck = [
      Card.new("2", "Hearts", 1),
      Card.new("3", "Hearts", 2),
      Card.new("4", "Hearts", 3),
      Card.new("5", "Hearts", 4),
      Card.new("6", "Hearts", 5),
      Card.new("7", "Hearts", 6),
      Card.new("8", "Hearts", 7),
      Card.new("9", "Hearts", 8),
      Card.new("10", "Hearts", 9),
      Card.new("Jack", "Hearts", 10),
      Card.new("Queen", "Hearts", 11),
      Card.new("King", "Hearts", 12),
      Card.new("Ace", "Hearts", 13),
      Card.new("2", "Spades", 1),
      Card.new("3", "Spades", 2),
      Card.new("4", "Spades", 3),
      Card.new("5", "Spades", 4),
      Card.new("6", "Spades", 5),
      Card.new("7", "Spades", 6),
      Card.new("8", "Spades", 7),
      Card.new("9", "Spades", 8),
      Card.new("10", "Spades", 9),
      Card.new("Jack", "Spades", 10),
      Card.new("Queen", "Spades", 11),
      Card.new("King", "Spades", 12),
      Card.new("Ace", "Spades", 13),
      Card.new("2", "Diamonds", 1),
      Card.new("3", "Diamonds", 2),
      Card.new("4", "Diamonds", 3),
      Card.new("5", "Diamonds", 4),
      Card.new("6", "Diamonds", 5),
      Card.new("7", "Diamonds", 6),
      Card.new("8", "Diamonds", 7),
      Card.new("9", "Diamonds", 8),
      Card.new("10", "Diamonds", 9),
      Card.new("Jack", "Diamonds", 10),
      Card.new("Queen", "Diamonds", 11),
      Card.new("King", "Diamonds", 12),
      Card.new("Ace", "Diamonds", 13),
      Card.new("2", "Clubs", 1),
      Card.new("3", "Clubs", 2),
      Card.new("4", "Clubs", 3),
      Card.new("5", "Clubs", 4),
      Card.new("6", "Clubs", 5),
      Card.new("7", "Clubs", 6),
      Card.new("8", "Clubs", 7),
      Card.new("9", "Clubs", 8),
      Card.new("10", "Clubs", 9),
      Card.new("Jack", "Clubs", 10),
      Card.new("Queen", "Clubs", 11),
      Card.new("King", "Clubs", 12),
      Card.new("Ace", "Clubs", 13)
    ]
  end

  def mix
    @deck.shuffle!
  end

  def deal
    @deck.shift
  end

  def cards_left
    @deck.length
  end

end

class Pile
  
  def initialize
    @pile = []
  end

  def add_card(card)
    @pile << card
  end

  def play_card
    @card = @pile.shift
    @number = @card.number
    @suit = @card.suit
    @value = @card.value
    "plays the #{@number} of #{@suit}"
  end

end

full_deck = Deck.new
full_deck.mix
aplayer_deck = Pile.new
bplayer_deck = Pile.new
table = Pile.new

until full_deck.cards_left == 0 do
  aplayer_deck.add_card(full_deck.deal)
  bplayer_deck.add_card(full_deck.deal)
end

puts "player A plays the #{aplayer_deck.play_card}"
puts "player B plays the #{bplayer_deck.play_card}"