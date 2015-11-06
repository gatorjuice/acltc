# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Card

  attr_reader :question, :correct_answer, :incorrect_answer1, :incorrect_answer2

  def initialize(question, answers)
    @question = question
    @correct_answer = answers[:ca]
    @incorrect_answer1 = answers[:ia1]
    @incorrect_answer2 = answers[:ia2]
  end

end

class Deck

  def initialize(trivia_data)
    @cards = []
    @trivia_data = trivia_data
    @trivia_data.each do |question, answers|
      @cards << Card.new(question, answers)
    end
    @cards.shuffle!
  end

  def draw_card
    @cards.shift
  end

  def remaining_cards
    @cards.length
  end

end

trivia_data = {
  "What is the capital of Illinois?" => {ca: "Springfield", ia1: "Chicago", ia2: "Bloomington"},
  "Which country is a continent?" => {ia1: "USA", ca: "Africa", ia2: "China"},
  "Which sport was an offical Olympic event?" => {ia1: "Checkers", ia2: "Hopscotch", ca: "Tug of war"} 
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  puts card.incorrect_answer1
  puts card.incorrect_answer2
  puts card.correct_answer
  user_answer = gets.chomp
  if user_answer.downcase == card.correct_answer.downcase
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end