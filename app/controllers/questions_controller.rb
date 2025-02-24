class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:user] == "I am going to work"
      @answers = "Great"
    elsif params[:user].present? && params[:user].last == "?"
      @answers = "Silly question, get dressed and go to work!"
    else
      @answers = "I don't care, get dressed and go to work!"
    end
  end
end
