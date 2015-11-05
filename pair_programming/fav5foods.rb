foods = []

5.times { puts "Tell me a favorite food of yours."
  foods << gets.chomp 
}

foods.each { |food| puts "#{foods.index(food)}. #{food}" }