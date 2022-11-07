class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    @coach_response =  if params[:answer].upcase == "I am going to work right now!".upcase
      @coach_response = "Great!"
    elsif params[:answer].include?("?")
      @coach_response = "Silly question, get dressed and go to work!"
    else
      @coach_response = "I don't care, get dressed and go to work!"
    end
  end
end

  # def coach_answer_enhanced(answer)
    #   "I can feel your motivation" if answer == answer.upcase
    # end
