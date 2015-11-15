class PagesController < ApplicationController
  @@random_number = rand(3)
  $views = 0

  def fortune
    list_of_fortunes = ["You will make a ton dat paper", "Damn, I'm glad I'm not you", "I'm unsure of what you're talking about"]
    @fortune = list_of_fortunes.sample
    @title = "Fortune"
  end

  def lottery
    @title = "Lottery"
    @numbers = []
    6.times do 
      @numbers << rand(60)
    end
  end

  def count_view
    $views += 1
    @title = "View Count"
  end

  def show_numbers
    
    @numbers.each { |n| n }

  end

  def number_game 


  end

  def number_guess
    @message = "you lost"
    if @@random_number == params[:guess].to_i
      @message = "you win"
    end
  end

end