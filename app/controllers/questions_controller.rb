class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = ''
    @answer = 'Silly question, get dressed and go to work!' if @question.end_with?("?")
    @answer = 'Great!' if @question == 'I am going to work'
    @answer = 'I don\'t care, get dressed and go to work!'
  end
end
