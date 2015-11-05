class Deck

	attr_reader :deck, :top_card, :card
    
    def initialize
		@deck = []
	end

    def cards_left
        @deck.length
    end
    
    def shuffle
        @deck.shuffle!
    end
    
    def top_card
        @deck[0]
    end

    def deal
   		@card = @deck[0]
   		@deck.delete(@deck[0])
   		@card	
    end

    def cards_left
        @deck.length
    end
	
	def add_card(number, suit, value)
        @deck << Card.new(number, suit, value)
    end

end