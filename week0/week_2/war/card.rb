class Card 

  attr_reader :number, :suit, :value

  def initialize(number, suit, value)
    @number = number
    @suit = suit
    @value = value
  end

end