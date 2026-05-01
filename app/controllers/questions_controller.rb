class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:question]
    if @question.end_with?("?")
      @answer= "Silly question, get dressed and go to work!"
    elsif @question.eql?("I am going to work right now!")
      @answer= ""
    elsif @question.end_with?("!")
      @answer= "I don't care, get dressed and go to work!"
    else
      @answer= "Hello Coach!"
    end
  end
end
