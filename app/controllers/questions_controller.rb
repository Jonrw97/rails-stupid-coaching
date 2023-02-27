class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question].downcase
    @answer = if @question == 'i am going to work'
                'Great!'
              elsif @question.chars[-1] == '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end

# case question
# when 'i am going to work'
#   'Great!'
# when question.chars[-1] == '?'
#   'Silly question, get dressed and go to work!'
# else
#   "I don't care, get dressed and go to work!"
# end
