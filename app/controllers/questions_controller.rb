class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if @question.end_with? '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question.casecmp('i am going to work').zero?
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
