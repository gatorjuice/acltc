# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!
system('clear')
class Card

  attr_reader :question, :correct_answer, :incorrect_answer1, :incorrect_answer2

  def initialize(question, answers)
    @question = question
    @correct_answer = answers[:ca]
    @incorrect_answer1 = answers[:ia1]
    @incorrect_answer2 = answers[:ia2]
    @correctly_answered = false
  end

  def correctly_answered
    @correctly_answered = !@correctly_answered
  end  
end

class Deck

  def initialize(trivia_data)
    @cards = []
    trivia_data.each do |question, answers|
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

deck = Deck.new(trivia_data)# deck is an instance of the Deck class
discard = {}
num_correct = 0
while deck.remaining_cards > 0
  puts "so far you have #{num_correct} questions right."
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  answers = [card.incorrect_answer1, card.incorrect_answer2, card.correct_answer].shuffle
  answers.each { |answer| puts answer }
  user_answer = gets.chomp
  if user_answer.downcase == card.correct_answer.downcase
    system('clear')
    puts "Correct!"
    num_correct += 1
    card.correctly_answered
  else
    system('clear')
    puts "Incorrect!"
    discard.merge!({card.question => {ca: card.correct_answer, ia1: card.incorrect_answer1, ia2: card.incorrect_answer2}
  })
  end

end

5.times do 
system('clear')
print "READY FOR A SECOND TRY   "
sleep(0.7)
system('clear')
print "READY FOR A SECOND TRY..."
sleep(0.7)
system('clear')
end

deck = Deck.new(discard)

while deck.remaining_cards > 0
  card = deck.draw_card
  puts card.question
  answers = [card.incorrect_answer1, card.incorrect_answer2, card.correct_answer].shuffle
  answers.each { |answer| puts answer }
  user_answer = gets.chomp
  if user_answer.downcase == card.correct_answer.downcase
    system('clear')
    puts "Correct!"
    num_correct += 1
    card.correctly_answered
  else
    system('clear')
    puts "Incorrect!"
  end
end

puts "Congratulations you got #{num_correct} question right!"