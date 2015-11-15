class PagesController < ApplicationController
  def home
    
  end

  def params_example
    @message = params[:message]
    @second_message = params[:second_message]
  end
end