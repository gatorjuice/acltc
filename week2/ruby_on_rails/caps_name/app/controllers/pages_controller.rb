class PagesController < ApplicationController
  
  @@secret_number = rand(10)
  
  def home
    @name = params[:name].upcase
    if @name[0].downcase == "a"
      @message = "Hey, your name starts with an a"
    elsif @name[0].to_i >= 1 && @name[0].to_i <= 9
      @message = "thats not a name, name don't start with numbers...yet"
    end
  end

  def guessing
    @answer = @@secret_number
    @guessed_number = params[:number].to_i
    if @@secret_number == @guessed_number then
      @message = "you win!!!"
    end
  end

  def url_params
    @message = params[:id]
  end
end
