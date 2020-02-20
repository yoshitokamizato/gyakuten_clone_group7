class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.save
    flash[:success] = "質問を追加しました。"
    redirect_to action: :index
  end

  private
    def question_params
      params.require(:question).permit(:title, :content)
    end

end
